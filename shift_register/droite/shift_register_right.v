// Décalage à droite : din arrive au bit le plus à gauche
module shift_register_right (
     /*
Kambale MARUBA E. (1ICE -EN )
Bualuti BUKELE E. (1ICE -EE )
Nkishi DJENGA H. (1ICE -IN ) 
*/
    
    input        clk,
    input        rst,
    input        enable,
    input        din,
    output [3:0] q
);
    reg [3:0] data;
    always @(posedge clk or posedge rst) begin
        if (rst)
            data <= 4'b0000;
        else if (enable)
            data <= {din, data[3:1]}; // Décalage à droite
    end
    assign q = data;
endmodule
