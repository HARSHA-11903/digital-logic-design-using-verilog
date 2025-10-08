module comp_4(a,b,a_g,a_e,a_l);
input[3:0]a,b;
output reg a_g;
output reg a_e;
output reg a_l;



always@(a or b) begin
if(a>b) begin
a_g=1;
a_e=0;
a_l=0;
end

else if(a==b) begin
a_g=0;
a_e=1;
a_l=0;
end

else begin
a_g=0;
a_e=0;
a_l=1;
end
end
endmodule
