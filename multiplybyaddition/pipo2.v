// initializing register P to 0 if clear, otherwise loading with intermediate sum results
module PIPO2(
    output reg[15:0] dout,
    input [15:0] din,
    input ld,
    input clr,
    input clk
);
always @(posedge clk)
   if(clr) dout<=16'b0;
   else if (ld) dout<=din;
endmodule