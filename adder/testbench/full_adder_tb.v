module full_adder_tb;
    reg A, B, Cin;
    wire Sum, Cout;

    full_adder uut(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $display("A B Cin | Sum Cout");
        for (integer i=0; i<8; i=i+1) begin
            {A,B,Cin} = i;
            #5;
            $display("%b %b  %b  |  %b   %b", A, B, Cin, Sum, Cout);
        end
        $finish;
    end
endmodule
