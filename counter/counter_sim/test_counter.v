`timescale 1ns/1ns
module test_counter;

reg clk,rst;
wire [3:0]q;

counter dut(clk,rst,q);

initial begin
$dumpvars(1);
$dumpfile("wave.vcd");
end

initial begin
clk=0;
rst=0;
#5 rst=1;
#4 rst=0;
end

always #5 clk=~clk;

initial
begin
$monitor($time,"clk=%b rst=%b q=%0d",clk,rst,q);
#300;
$stop;
end
endmodule

