module ripple_carry_adder_tb;
    parameter N=4;
    reg  [N-1:0] A, B;
    reg          Cin;
    wire [N-1:0] Sum;
    wire         Cout;

    ripple_carry_adder #(N) uut(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $display("A    B    Cin | Sum  Cout");
        A = 4'b0000; B = 4'b0000; Cin = 0; #10 $display("%b %b  %b  | %b   %b", A, B, Cin, Sum, Cout);
        A = 4'b0011; B = 4'b0101; Cin = 0; #10 $display("%b %b  %b  | %b   %b", A, B, Cin, Sum, Cout);
        A = 4'b1111; B = 4'b0001; Cin = 0; #10 $display("%b %b  %b  | %b   %b", A, B, Cin, Sum, Cout);
        A = 4'b1010; B = 4'b0101; Cin = 1; #10 $display("%b %b  %b  | %b   %b", A, B, Cin, Sum, Cout);
        $finish;
    end
endmodule
