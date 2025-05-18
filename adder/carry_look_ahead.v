module carry_lookahead_adder #(parameter N=4) (
    input  [N-1:0] A,
    input  [N-1:0] B,
    input          Cin,
    output [N-1:0] Sum,
    output         Cout
);
    wire [N-1:0] G, P;   
    wire [N:0] C;       

    assign G = A & B;        
    assign P = A ^ B;        
    assign C[0] = Cin;

    genvar i;
    generate
        for(i=0; i<N; i=i+1) begin : carry_calc
            assign C[i+1] = G[i] | (P[i] & C[i]);
        end
    endgenerate

    assign Sum = P ^ C[N-1:0];  
    assign Cout = C[N];
endmodule
