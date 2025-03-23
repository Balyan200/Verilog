module adder4bit(A,B,Cin,S,Cout);
input [3:0] A,B;
input Cin;
output [3:0] S;
output Cout;
wire w1,w2,w3;

full_adder A0 (A[0],B[0],Cin,S[0],w1);
full_adder A1 (A[1],B[1],w1,S[1],w2);
full_adder A2 (A[2],B[2],w2,S[2],w3);
full_adder A3 (A[3],B[3],w3,S[3],Cout);

endmodule