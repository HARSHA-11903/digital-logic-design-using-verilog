module tb;
reg a,b,c;
wire s,carry;
full_adder dut(a,b,c,s,carry);
initial begin 
repeat(5) begin
a=$random;
b=$random;
c=$random;
#1
$display("a=%b,b=%b,c=%b,s=%b,carry=%b",a,b,c,s,carry);
end
end
endmodule
