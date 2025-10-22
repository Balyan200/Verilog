module MUX (
    output [15:0] out,
    input [15:0] in0,
    input [15:0] in1,
    input sel
);
assign out = sel ? in1 : in0;
endmodule