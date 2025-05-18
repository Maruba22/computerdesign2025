`timescale 1ns/1ps

module shift_register_left_tb;
 /*
Kambale MARUBA E. (1ICE -EN )
Bualuti BUKELE E. (1ICE -EE )
Nkishi DJENGA H. (1ICE -IN ) 
*/
    

    reg clk, rst, enable, din;
    wire [3:0] q;

    shift_register_left uut (
        .clk(clk), .rst(rst), .enable(enable), .din(din), .q(q)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $display("\n=== SHIFT REGISTER GAUCHE ===");

        rst = 1; enable = 0; din = 0; #10;
        rst = 0;

        enable = 1;
        din = 1; #10;
        din = 0; #10;
        din = 1; #10;
        din = 1; #10;

        enable = 0; #10;
        $finish;
    end

    initial begin
        $monitor("Time=%0t | din=%b | q=%b", $time, din, q);
    end

endmodule
