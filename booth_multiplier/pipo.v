module PIPO (
    output reg [15:0] data_out,
    input [15:0] data_in,
    input clk,
    input load
);
always @(posedge clk)
   if(load) data_out <= data_in;

endmodule