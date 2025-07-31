// booth multiplier
`include "alu.v"
`include "counter.v"
`include "dff.v"
`include "pipo.v"
`include "shiftreg.v"

module datapath (
    input ldA,
    input ldQ,
    input ldM,
    input clrA,
    input clrQ,
    input clrff,
    input sftA,
    input sftQ,
    input addsub,
    input decr,
    input ldcnt,
    input [15:0] data_in,
    input clk,
    output q0,
    output qm1,
    output eqz
);
wire [15:0] A, M, Q, Z;
wire [4:0] count;
assign q0 = Q[0];
assign eqz = ~|count;

shiftreg AR (A, Z, Z[15], clk, ldA, clrA, sftA);
shiftreg QR (Q, data_in, A[0], clk, ldQ, clrQ, sftQ);
dff QM1 (qm1, Q[0], clk, clrff);
PIPO MR (M, data_in, clk, ldM);
ALU AS (Z, A, M, addsub);
counter CN (count, decr, ldcnt, clk);

endmodule