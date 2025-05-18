`timescale 1ns/1ps

module adder_multi_tb;
 /*
Kambale MARUBA E. (1ICE -EN )
Bualuti BUKELE E. (1ICE -EE )
Nkishi DJENGA H. (1ICE -IN ) 
*/
    

    // N = 1
    reg [0:0] A1, B1; reg Cin1; wire [0:0] S1; wire Cout1;
    adder #(1) adder1 (.A(A1), .B(B1), .Cin(Cin1), .S(S1), .Cout(Cout1));

    // N = 2
    reg [1:0] A2, B2; reg Cin2; wire [1:0] S2; wire Cout2;
    adder #(2) adder2 (.A(A2), .B(B2), .Cin(Cin2), .S(S2), .Cout(Cout2));

    // N = 4
    reg [3:0] A4, B4; reg Cin4; wire [3:0] S4; wire Cout4;
    adder #(4) adder4 (.A(A4), .B(B4), .Cin(Cin4), .S(S4), .Cout(Cout4));

    // N = 6
    reg [5:0] A6, B6; reg Cin6; wire [5:0] S6; wire Cout6;
    adder #(6) adder6 (.A(A6), .B(B6), .Cin(Cin6), .S(S6), .Cout(Cout6));

    // N = 8
    reg [7:0] A8, B8; reg Cin8; wire [7:0] S8; wire Cout8;
    adder #(8) adder8 (.A(A8), .B(B8), .Cin(Cin8), .S(S8), .Cout(Cout8));

    // N = 16
    reg [15:0] A16, B16; reg Cin16; wire [15:0] S16; wire Cout16;
    adder #(16) adder16 (.A(A16), .B(B16), .Cin(Cin16), .S(S16), .Cout(Cout16));

    // N = 32
    reg [31:0] A32, B32; reg Cin32; wire [31:0] S32; wire Cout32;
    adder #(32) adder32 (.A(A32), .B(B32), .Cin(Cin32), .S(S32), .Cout(Cout32));

    // N = 64
    reg [63:0] A64, B64; reg Cin64; wire [63:0] S64; wire Cout64;
    adder #(64) adder64 (.A(A64), .B(B64), .Cin(Cin64), .S(S64), .Cout(Cout64));
 
    initial begin
        $display("\n--- TEST ADDER 1 BIT ---");
        A1 = 1'b0; B1 = 1'b1; Cin1 = 0; #5;
        $display("A=%b B=%b Cin=%b => S=%b Cout=%b", A1, B1, Cin1, S1, Cout1);

        A1 = 1'b1; B1 = 1'b1; Cin1 = 1; #5;
        $display("A=%b B=%b Cin=%b => S=%b Cout=%b", A1, B1, Cin1, S1, Cout1);

        $display("\n--- TEST ADDER 2 BITS ---");
        A2 = 2'd2; B2 = 2'd1; Cin2 = 1; #5;
        $display("A=%b B=%b Cin=%b => S=%b Cout=%b", A2, B2, Cin2, S2, Cout2);

        $display("\n--- TEST ADDER 4 BITS ---");
        A4 = 4'b1010; B4 = 4'b0101; Cin4 = 0; #5;
        $display("A=%b B=%b Cin=%b => S=%b Cout=%b", A4, B4, Cin4, S4, Cout4);

        $display("\n--- TEST ADDER 6 BITS ---");
        A6 = 6'd40; B6 = 6'd15; Cin6 = 1; #5;
        $display("A=%b B=%b Cin=%b => S=%b Cout=%b", A6, B6, Cin6, S6, Cout6);

        $display("\n--- TEST ADDER 8 BITS ---");
        A8 = 8'd120; B8 = 8'd130; Cin8 = 0; #5;
        $display("A=%d B=%d Cin=%b => S=%d Cout=%b", A8, B8, Cin8, S8, Cout8);

        $display("\n--- TEST ADDER 16 BITS ---");
        A16 = 16'h0FFF; B16 = 16'h0001; Cin16 = 1; #5;
        $display("A=%h B=%h Cin=%b => S=%h Cout=%b", A16, B16, Cin16, S16, Cout16);

        $display("\n--- TEST ADDER 32 BITS ---");
        A32 = 32'hFFFFFFFF; B32 = 32'h00000001; Cin32 = 0; #5;
        $display("A=%h B=%h Cin=%b => S=%h Cout=%b", A32, B32, Cin32, S32, Cout32);

        $display("\n--- TEST ADDER 64 BITS ---");
        A64 = 64'hFFFFFFFFFFFFFFFF; B64 = 64'h1; Cin64 = 1; #5;
        $display("A=%h B=%h Cin=%b => S=%h Cout=%b", A64, B64, Cin64, S64, Cout64);

        $finish;
    end

endmodule
