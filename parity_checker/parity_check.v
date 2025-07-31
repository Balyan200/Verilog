// check parity of binary sequence
module parity_check(
    input x,
    input clk,
    output reg z
);
reg even_odd;
parameter EVEN = 0, ODD =1;
always @(posedge clk)
   case (even_odd)
     EVEN: 
       even_odd <= x ? ODD:EVEN;   // set to odd if x is 1 and state previouslt even
     ODD:
        even_odd <= x ? EVEN: ODD;  // set to even if x is 1 and state previously odd
    default:
      even_odd <= EVEN;
 endcase
// output logic
always @(even_odd)
   case (even_odd)
      EVEN: z=0;
       ODD: z=1;
endcase

endmodule
