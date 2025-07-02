//datapath has datacomputing components as registers, alu
`include "add.v"
`include "counter.v"
`include "equaltoz.v"
`include "pipo1.v"
`include "pipo2.v"

module Multiply_datapath(
    output eqz,
    input LdA,
    input LdB,
    input LdP,
    input clrP,
    input decB,
    input clk,
    input [15:0] data_in    
);

wire [15:0] X,Y,Z, Bout, Bus;
assign Bus = data_in;

PIPO1 A (X,Bus,LdA,clk); // initializing X = A
PIPO2 P (Y,Z,LdP, clrP,clk); // P = 0, then sum results of Z
CNTR B (Bout,Bus,LdB,decB,clk); //  Bout = B, then -1 while looping in State3
ADD AD (Z,X,Y);
EQZ COMP (eqz,Bout);

endmodule