module shiftreg (
    output reg [15:0] data_out,
    input [15:0] data_in,
    input s_in,
    input clk,
    input ld,
    input clr,
    input sft
);
always @(posedge clk) begin
    if(clr) data_out <= 0;
    else if(ld)
       data_out <= data_in;
    else if(sft)
       data_out <= {s_in, data_out[15:1]};
    end

endmodule