// d flip flop with synchronous set and reset
module dff(
    input d,
    input clk,
    input reset,
    input set,
    output reg q,
    output qbar
);
assign qbar = ~q;
always @(posedge clk)
begin
if(reset==0) q<=1'b0;
else if(set==0) q<=1'b1;
else q<=d;
end
endmodule
