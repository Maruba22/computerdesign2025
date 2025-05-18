module adder #(parameter N = 4) (
     /*
Kambale MARUBA E. (1ICE -EN )
Bualuti BUKELE E. (1ICE -EE )
Nkishi DJENGA H. (1ICE -IN ) 
*/
    
    input  [N-1:0] A,
    input  [N-1:0] B,
    input         Cin,
    output [N-1:0] S,
    output        Cout
);
    assign {Cout, S} = A + B + Cin;
endmodule
