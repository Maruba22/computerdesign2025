module pipelined_adder #(parameter N=8, STAGES=2) (
    input clk,
    input reset,
    input [N-1:0] A,
    input [N-1:0] B,
    input Cin,
    output reg [N-1:0] Sum,
    output reg Cout
);
   
    reg [N/2-1:0] sum_low;
    reg carry_mid;

     reg [N/2-1:0] sum_high;
    reg carry_out;

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            sum_low <= 0;
            carry_mid <= 0;
            sum_high <= 0;
            carry_out <= 0;
            Sum <= 0;
            Cout <= 0;
        end else begin
            {carry_mid, sum_low} <= A[N/2-1:0] + B[N/2-1:0] + Cin;
            {carry_out, sum_high} <= A[N-1:N/2] + B[N-1:N/2] + carry_mid;
            Sum <= {sum_high, sum_low};
            Cout <= carry_out;
        end
    end
endmodule
