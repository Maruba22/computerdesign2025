module pipelined_adder_tb;
    parameter N=8;
    reg clk, reset;
    reg [N-1:0] A, B;
    reg Cin;
    wire [N-1:0] Sum;
    wire Cout;

    pipelined_adder #(N, 2) uut(
        .clk(clk), .reset(reset), .A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 1; A=0; B=0; Cin=0; #10;
        reset = 0;

        A = 8'd10; B = 8'd20; Cin = 0; #10;
        A = 8'd255; B = 8'd1; Cin = 1; #10;
        A = 8'd128; B = 8'd128; Cin = 0; #10;

        #20; // délai supplémentaire pour propagation
        $display("Sum = %d, Cout = %b", Sum, Cout);
        $finish;
    end
endmodule
