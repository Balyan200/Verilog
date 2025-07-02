// initializing B with multiplier and decrementing
module CNTR(
    output reg[15:0] dout,
    input [15:0] din,
    input ld,
    input dec,
    input clk
);
always @(posedge clk)
  if(ld) dout<=din;
  else if (dec) dout<=dout-1;
endmodule