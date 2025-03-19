module mux16to1(in,sel,out);
input [15:0] in;
input [3:0] sel;
output out;

/*simple behavioral
assign out=in[sel];*/

// structural from 5 4to1 mux
wire [4:0] w;
mux4to1 M0 (.in(in[3:0]),.sel(sel[1:0]),.out(w[0]));
mux4to1 M1 (.in(in[7:4]),.sel(sel[1:0]),.out(w[1]));
mux4to1 M2 (.in(in[11:8]),.sel(sel[1:0]),.out(w[2]));
mux4to1 M3 (.in(in[15:12]),.sel(sel[1:0]),.out(w[3]));
mux4to1 M4 (.in(w[3:0]),.sel(sel[3:2]),.out(out));

endmodule