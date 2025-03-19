module mux4to1(in,sel,out);
input [3:0] in;
input [1:0] sel;
output out;

/*simple behavioral
assign out = in[sel];*/

// structural from 3 2to1 mux
wire [1:0] w;
mux2to1 M1 (.in(in[1:0]),.sel(sel[0]),.out(w[0]));
mux2to1 M2 (.in(in[3:2]),.sel(sel[0]),.out(w[1]));
mux2to1 M3 (.in(w[1:0]),.sel(sel[1]),.out(out));
endmodule
