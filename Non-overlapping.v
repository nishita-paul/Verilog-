//Non=overlapping

// Code your design here
// Code your design here
module seq_det(x,clk,reset,z);
  input x,clk,reset;
  output reg z;
  parameter S0=0,S1=1,S2=2,S3=3;
  reg [0:1] PS,NS;
  always @(posedge clk or posedge reset)
    if (reset)
      PS<=S0;
  else 
    PS<=NS;
  always @(PS,x)
    case(PS)
      S0:begin
        z=x?0:0;
        NS=x?S1:S0;
      end
      
      S1:begin
        z=x?0:0;
        NS=x?S2:S0;
      end
      
      S2:begin
        z=x?0:0;
        NS=x?S2:S3;
      end
      
      S3:begin
        z=x?0:1;
        NS=x?S0:S0;
      end
    endcase
endmodule
      


    
    