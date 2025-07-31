module counter (
    output reg[4:0] data_out,
    input decr,
    input ldcnt,
    input clk
);

always @(posedge clk)
  begin
    if(ldcnt)
      data_out <= 5'b10000;
    else if(decr)
      data_out <= data_out - 1;
    end

endmodule