module ripple_carry_adder #(parameter N = 4) (
    input  [N-1:0] A,
    input  [N-1:0] B,
    input          Cin,
    output [N-1:0] Sum,
    output         Cout
);
    wire [N:0] carry;
    assign carry[0] = Cin;

    genvar i;
    generate
        for (i=0; i < N; i=i+1) begin : full_adders
            full_adder fa (
                .A(A[i]),
                .B(B[i]),
                .Cin(carry[i]),
                .Sum(Sum[i]),
                .Cout(carry[i+1])
            );
        end
    endgenerate

    assign Cout = carry[N];
endmodule
