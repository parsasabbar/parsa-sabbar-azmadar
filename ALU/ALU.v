module ALU(input [63:0] value1,value2,input[3:0]ALUControlInput,output reg zero,output reg [63:0]ALUResult);
  
  always@(*)begin
    case (ALUControlInput)
      4'b0010:ALUResult= value1+value2;
      4'b0110:ALUResult= value1-value2;
      4'b0000:ALUResult= value1 & value2;
      4'b0001:ALUResult= value1 | value2;
      default:ALUResult=64'hxxxxxxxxxxxxxxxx;
    endcase
    if(ALUResult==0)zero=1;
    else zero=0;
  end
endmodule