// gcd computer
`include "pipo.v"
`include "compare.v"
`include "mux.v"
`include "subtractor.v"

module GCD_datapath(
    output gt,
    output lt,
    output eq,
    input ldA,
    input ldB,
    input sel1,
    input sel2,
    input sel_in,  // selects between input and intermediate subtractor result
    input [15:0] data_in,
    input clk
);
wire [15:0] Aout,Bout,X,Y,Bus, SubOut;

PIPO A (Aout, Bus, ldA, clk);
PIPO B (Bout, Bus, ldB, clk);
MUX MUX_in1 (X, Aout, Bout, sel1);
MUX MUX_in2 (Y, Aout, Bout, sel2);
MUX MUX_load (Bus, SubOut, data_in, sel_in);
SUB SB (SubOut, X, Y);
COMPARE COMP (lt, gt, eq, Aout, Bout);
endmodule
