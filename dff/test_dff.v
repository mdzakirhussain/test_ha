`timescale 1ns/1ns
module test_dff;

reg clk,rst,d;
wire q;

dff dut(clk,rst,d,q);

initial begin
$dumpvars(1);
$dumpfile("wave.vcd");
end

initial
clk=0;

always
#5 clk=~clk;

initial
begin
rst=1; d=1;
@(posedge clk);

#1;
rst=0; d=0;
@(posedge clk);

#1;
rst=0; d=1;
@(posedge clk);

#1;
rst=0; d=0;
@(posedge clk);

#150;
$stop;
end;
endmodule
