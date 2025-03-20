module converter(A,B,C,D,w,x,y,z);
input A,B,C,D;
output w,x,y,z;

/*direct method by adding 3 to binary
parameter add_value = 4'b0011;
assign {w,x,y,z} = {A,B,C,D} + 4'b0011;
*/
/* logical method
assign x = ~B&(C|D) | B&~(C|D);
assign w = B&(C|D) | A;
assign y = ~(C|D) | C&D;
assign z = ~D;
*/

wire w1,w2,w3,w4,w5,w6,w7;
not G1 (z,D);
or G2 (w1,C,D);
not G3 (w2,w1);
and G4 (w3,C,D);
and G5 (w4,w2,B);
not G6 (w5,B);
and G7 (w6,w1,w5);
and G8 (w7,w1,B);
or G9 (y,w2,w3);
or G10 (w,w7,A);
or G11 (x,w4,w6);

endmodule
