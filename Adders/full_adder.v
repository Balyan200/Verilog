module full_adder(x,y,cin,sum,carry);
input x,y,cin;
output sum,carry;

wire w1,w2,w3;
half_adder HA1(.a(x),
            .b(y),
            .s(w1),
            .cout(w2));

half_adder HA2(.a(w1),
            .b(cin),
            .s(sum),
            .cout(w3));

or or1 (carry,w3,w2);

endmodule
