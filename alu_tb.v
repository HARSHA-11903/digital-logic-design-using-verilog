`include "alu.v"
module tb_ALU;

reg  [7:0] A, B;
reg  [3:0] sel;
wire [15:0] result;
wire zero;

ALU uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .zero(zero)
);

initial begin
    $monitor("Time = %0t | sel = %b | A = %d | B = %d | Result = %d | Zero = %b", 
              $time, sel, A, B, result, zero);

    A = 4'd10; B = 4'd5;

    sel = 4'b0000; #10; // ADD
    sel = 4'b0001; #10; // SUB
    sel = 4'b0010; #10; // AND
    sel = 4'b0011; #10; // OR
    sel = 4'b0100; #10; // XOR
    sel = 4'b0101; #10; // NOT A
    sel = 4'b0110; #10; // SHL
    sel = 4'b0111; #10; // SHR
    sel = 4'b1000; #10; // MUL
    sel = 4'b1001; #10; // DIV
    sel = 4'b1010; #10; // MOD
    sel = 4'b1011; #10; // EQ

    $finish;
end

endmodule

