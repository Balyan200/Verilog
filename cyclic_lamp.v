module cyclic_lamp(
    input clock,
    output reg[0:2] light   
);
parameter s0 = 0, s1 = 1, s2 =2;
parameter RED = 3'b100, GREEN = 3'b010, YELLOW = 3'b001;
reg [0:1] state;

always @ (posedge clock)
 case(state)
  s0:                // s0 means red
 begin
 state<=s1;
 end
 s1: begin            // s1 means green
 state <=s2;
 end
 s2: begin             // s2 means YELLOW
 state<=s0;
 end
 default:
 begin
 state<=s0;
 end
endcase

always @ (state)
 case(state)
 s0:                // s0 means red
 begin
 light = GREEN;
 end
 s1: begin            // s1 means green
 light = YELLOW;
 end
 s2: begin             // s2 means YELLOW
 light = RED;
 end
 default:
 begin
 light = RED;
 end
endcase
endmodule
