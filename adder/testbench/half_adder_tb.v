module half_adder_tb;
    reg A, B;
    wire Sum, Cout;

    half_adder uut(.A(A), .B(B), .Sum(Sum), .Cout(Cout));

    initial begin
        $display("A B | Sum Cout");
        A=0; B=0; #5 $display("%b %b |  %b   %b", A, B, Sum, Cout);
        A=0; B=1; #5 $display("%b %b |  %b   %b", A, B, Sum, Cout);
        A=1; B=0; #5 $display("%b %b |  %b   %b", A, B, Sum, Cout);
        A=1; B=1; #5 $display("%b %b |  %b   %b", A, B, Sum, Cout);
        $finish;
    end
endmodule
