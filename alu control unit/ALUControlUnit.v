module ALUControlUnit(value[6:0]Funct7,value[2:0]Funct3,value[1:0]ALUOp,output reg[3:0]ALUControlInput);
  always@(*)begin
    case(ALUOp)
      2'b00:ALUControlInput=4'b0010;
      2'b01:ALUControlInput=4'b0010;
      2'b10:begin
        if(Funct7==7'b0000000 && Funct3==3'b000)ALUControlInput=4'b0010;
        if(Funct7==7'b0100000 && Funct3==3'b000)ALUControlInput=4'b0110;
        if(Funct7==7'b0000000 && Funct3==3'b111)ALUControlInput=4'b0000;
        if(Funct7==7'b0000000 && Funct3==3'b110)ALUControlInput=4'b0001;
      end
      default:ALUControlInput=4'bxxxx;
    endcase
  end
endmodule
