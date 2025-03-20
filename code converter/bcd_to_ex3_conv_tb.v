`timescale 1ns/1ns

module converter_tb;
reg A,B,C,D;
wire w,x,y,z;
integer i;

converter DUT(A,B,C,D,w,x,y,z);

initial
begin
$dumpfile("bcd_to_ex3_conv_tb.vcd");
$dumpvars(0,converter_tb);

for(i=0;i<10;i=i+1)
begin
{A,B,C,D} = i;
#10;
end
end

initial
$monitor("Input A=%b, B=%b, C=%b, D=%b, Output w=%b, x=%b, y=%b, z=%b",A,B,C,D,w,x,y,z);
initial #100 $finish;

endmodule
