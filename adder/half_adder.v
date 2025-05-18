module half_adder (
    input A,
    input B,
    output Sum,
    output Cout
);
    assign Sum = A ^ B;    // somme = A XOR B
    assign Cout = A & B;   // retenue = A AND B
endmodule
