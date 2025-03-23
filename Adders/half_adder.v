module half_adder(a,b,s,cout);
input a,b;
output s, cout;

//assign s = a^b;
//assign cout = a&b;

xor G1 (s,a,b);
and G2 (cout,a,b);

endmodule