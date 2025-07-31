module dff(
  output reg q,
    input d,
    input clk,
    input clr
);
always @(posedge clk)
  if(clr) q <= 0;
  else q <= d;

endmodule