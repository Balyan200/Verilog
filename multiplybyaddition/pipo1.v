// initializing register A with multiplicand
module PIPO1(
    output reg[15:0] dout,
    input [15:0] din,
    input ld,
    input clk
);
always @(posedge clk)
    if(ld) dout<=din;
endmodule    