module booth_test;

reg [15:0] data_in;
reg clk, start;
wire done;

datapath DP (ldA, ldQ, ldM, clrA, clrQ, clrff, sftA, sftQ, addsub, decr, ldcnt, data_in, clk, q0, qm1, eqz );
controller CON (ldA, clrA, sftA, ldQ, clrQ, sftQ, ldM, clrff, addsub, decr, ldcnt, done, start, clk, q0, qm1,eqz);

initial begin
 clk = 1'b0;
 #2 start = 1'b1;
 #500 $finish;
 end

always #5 clk = ~clk;

initial begin
 #12 data_in = 20;
 #16 data_in = -30;
 end

initial begin
  $monitor($time, " %b %b  %b", DP.A,DP.Q, done );
  $dumpfile("booth.vcd");
  $dumpvars(0,booth_test);
  end

endmodule
