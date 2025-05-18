 
module decoder_2to4 (
    /*
Kambale MARUBA E. (1ICE -EN )
Bualuti BUKELE E. (1ICE -EE )
Nkishi DJENGA H. (1ICE -IN ) 
*/
    input  [1:0] in,
    output [3:0] out
);
    assign out = 4'b0001 << in;
endmodule
