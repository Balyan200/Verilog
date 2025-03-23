module adder4_test;
reg [3:0] A,B;
reg Cin;
wire Cout;
wire [3:0] S;

//for ripple carry adder
//adder4bit DUT (A,B,Cin,S,Cout); 
//for look ahead adder
adder4 DUT (A,B,Cin,S,Cout);
initial 
begin
$dumpfile("adder4_test.vcd");
$dumpvars(0,adder4_test);
$monitor($time,"A=%b, B=%b,Cin = %b, S=%b, Cout = %b", A,B,Cin,S,Cout );

#5 A=4'b1010; B=4'b0110; Cin=1'b1;
#5 A=4'b1111;
#5 Cin=1'b0;



end
endmodule