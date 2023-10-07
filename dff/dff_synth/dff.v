module dff(clk,rst,d,q);

input clk,rst,d;
output reg q;

always@(posedge clk)
if(rst)
q<=0;
else
q<=d;

endmodule