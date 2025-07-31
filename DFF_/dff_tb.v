module dff_test;
reg clk, reset,set,d;
wire qbar,q;

//dff dut (d,clk,reset,set,q,qbar);
dffasyn dut (d,clk,reset,set,q,qbar);

initial begin
clk=1'b0;
 d=1'b0;
 reset =1'b1;
 set = 1'b1;
forever 
#5 clk = ~clk;
end

initial begin
$dumpfile("dff_tb.vcd");
$dumpvars(0,dff_test);

#3 d=1'b1;
#6 reset =1'b0;
#10 reset=1'b1; set = 1'b0;d=1'b0;
#10 set = 1'b1;
#5 d=1'b1;
end

initial #50 $finish;

endmodule