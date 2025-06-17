`timescale 1ns/1ps

module pipelined_adder_tb;
    parameter N = 8;
    reg clk, reset;
    reg [N-1:0] A, B;
    reg Cin;
    wire [N-1:0] Sum;
    wire Cout;

    pipelined_adder #(N, 2) uut (
        .clk(clk),
        .reset(reset),
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Horloge
    initial clk = 0;
    always #5 clk = ~clk; // 100MHz

    // Fichier VCD pour GTKWave
    initial begin
        $dumpfile("pipelined_adder.vcd");
        $dumpvars(0, pipelined_adder_tb);
    end

    // Cas de test
    initial begin
        // Réinitialisation
        reset = 1;
        A = 0;
        B = 0;
        Cin = 0;
        #10;

        reset = 0;

        // Cas 1 : 10 + 20
        A = 8'd10;
        B = 8'd20;
        Cin = 0;
        #10;

        // Cas 2 : 255 + 1 avec retenue
        A = 8'd255;
        B = 8'd1;
        Cin = 1;
        #10;

        // Cas 3 : 128 + 128
        A = 8'd128;
        B = 8'd128;
        Cin = 0;
        #10;

        // Cas 4 : 100 + 55
        A = 8'd100;
        B = 8'd55;
        Cin = 0;
        #10;

        // Cas 5 : 127 + 1 + Cin
        A = 8'd127;
        B = 8'd1;
        Cin = 1;
        #10;

        // Délai pour que les données sortent
        #30;

        // Affichage final (console)
        $display("Dernier résultat : A = %d, B = %d, Cin = %b => Sum = %d, Cout = %b",
                 A, B, Cin, Sum, Cout);

        $finish;
    end
endmodule
