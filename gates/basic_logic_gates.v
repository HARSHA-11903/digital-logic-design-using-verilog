# all basic logic gates

// AND Gate
module and_gate(a, b, y);
  input a, b;
  output y;
  assign y = a & b;
endmodule

// OR Gate
module or_gate(a, b, y);
  input a, b;
  output y;
  assign y = a | b;
endmodule

// NOT Gate
module not_gate(a, y);
  input a;
  output y;
  assign y = ~a;
endmodule

// NAND Gate
module nand_gate(a, b, y);
  input a, b;
  output y;
  assign y = ~(a & b);
endmodule

// NOR Gate
module nor_gate(a, b, y);
  input a, b;
  output y;
  assign y = ~(a | b);
endmodule

// XOR Gate
module xor_gate(a, b, y);
  input a, b;
  output y;
  assign y = a ^ b;
endmodule

// XNOR Gate
module xnor_gate(a, b, y);
  input a, b;
  output y;
  assign y = ~(a ^ b);
endmodule

