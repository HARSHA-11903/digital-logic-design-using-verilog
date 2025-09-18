module ALU (
    input  [3:0] A,
    input  [3:0] B,
    input  [3:0] sel,
    output reg [8:0] result,
    output reg zero
);

always @(*) begin
    case (sel)
        4'b0000: result = A + B;                  // ADD
        4'b0001: result = A - B;                  // SUB
        4'b0010: result = A & B;                  // AND
        4'b0011: result = A | B;                  // OR
        4'b0100: result = A ^ B;                  // XOR
        4'b0101: result = ~A;                     // NOT
        4'b0110: result = A << 1;                 // Shift Left
        4'b0111: result = A >> 1;                 // Shift Right
        4'b1000: result = A * B;                  // Multiply
        4'b1001: result = (B != 0) ? A / B : 0;   // Divide
        4'b1010: result = (B != 0) ? A % B : 0;   // Modulo
        4'b1011: result = (A == B) ? 1 : 0;       // Equality
        default: result = 0;
    endcase

    zero = (result == 0);
end

endmodule

