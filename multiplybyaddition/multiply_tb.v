module Multiply_test;
reg [15:0] data_in;
reg clk,start;
wire done;

Multiply_datapath DP(eqz,LdA,LdB,LdP,clrP,decB,clk,data_in);
controller CON(LdA,LdB,LdP,clrP,decB,done,clk,eqz,start);

initial 
 begin
 clk=1'b0;
 #3 start = 1'b1;
 #500 $finish;
end

always #5 clk =~clk;

initial begin
 #17 data_in = 16'd17;
 #10 data_in = 16'd5 ;
end

initial begin
 $monitor($time," %d %b ",DP.Y,done);
 $dumpfile("mul.vcd");
 $dumpvars(0,Multiply_test);
end
endmodule