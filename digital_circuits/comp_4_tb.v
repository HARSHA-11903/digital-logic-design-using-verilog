`include "comp_4.v"
module tb;
reg[3:0]a,b;
wire a_g;
wire a_e;
wire a_l;
comp_4 dut(a,b,a_g,a_e,a_l);

initial begin
repeat(10) begin

{a,b}=$random;
#1;
$display("a=%b,b=%b,a_g=%b,a_e=%b,a_l=%b",a,b,a_g,a_e,a_l);

end
end
endmodule
