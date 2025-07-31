// d flip flop with asynchronous set and reset
module dffasyn(
    input d,
    input clk,
    input reset,
    input set,
    output reg q,
    output qbar
);
assign qbar = ~q;
//considers neg trigger of reset and set
always @(posedge clk or negedge reset or negedge set) 
begin
if (reset==0) q<=0;
else if (set==0) q<=1;
else q<=d;
end

endmodule