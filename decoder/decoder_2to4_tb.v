`timescale 1ns/1ps

module decoder_2to4_tb;
 /*
Kambale MARUBA E. (1ICE -EN )
Bualuti BUKELE E. (1ICE -EE )
Nkishi DJENGA H. (1ICE -IN ) 
*/
    

    reg  [1:0] in;
    wire [3:0] out;

    decoder_2to4 uut (
        .in(in),
        .out(out)
    );

    initial begin
        $display("\n=== TEST DECODER 2 TO 4 ===");

        in = 2'b00; #10;
        $display("in = %b => out = %b", in, out);
        if (out !== 4'b0001) $display("ERREUR");

        in = 2'b01; #10;
        $display("in = %b => out = %b", in, out);
        if (out !== 4'b0010) $display("ERREUR");

        in = 2'b10; #10;
        $display("in = %b => out = %b", in, out);
        if (out !== 4'b0100) $display("ERREUR");

        in = 2'b11; #10;
        $display("in = %b => out = %b", in, out);
        if (out !== 4'b1000) $display("ERREUR");

        $display(" -- FIN, REUSSITE --");
        $finish;
    end

endmodule
