module adder4(A,B,Cin,S,Cout);
input [3:0] A,B;
input Cin;
output [3:0] S;
output Cout;

/* Carry look ahead adder
carry generate, g_i= a_i and b_i
carry propagate, p_i= a_i xor b_i
c_i+1 = g_i +c_i.p_i
*/
wire p0,g0,p1,g1,p2,g2,p3,g3;
wire c1,c2,c3;

assign p0 =A[0]^B[0], p1 =A[1]^B[1], p2 =A[2]^B[2], p3 =A[3]^B[3];
assign g0 = A[0]&B[0], g1 = A[1]&B[1], g2 = A[2]&B[2], g3 = A[3]&B[3];

assign c1=g0 | (p0&Cin),
c2 = g1 | (p1&g0) | (p1&p0&Cin),
c3 = g2 | (p2&g1) | (p2&p1&g0) | (p2&p1&p0&Cin),
Cout = g3| (p3&g2) | (p3&p2&g1) | (p3&p2&p1&g0) | (p3&p2&p1&p0&Cin);

assign S = {p3^c3,p2^c2,p1^c1,p0^Cin};
endmodule

