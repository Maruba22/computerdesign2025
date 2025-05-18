// Décalage à gauche : din arrive au bit le plus à droite
module shift_register_left (
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
            data <= {data[2:0], din}; // Décalage à gauche
    end
    assign q = data;
endmodule
