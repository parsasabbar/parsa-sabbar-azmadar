module ALUCUtb;
  reg[6:0]Funct7;
  reg[2:0]Funct3;
  reg[1:0]ALUOp;
  wire[3:0]ALUControlInput;
  ALUControlUnit uut(Funct7,Funct3,ALUOp,ALUControlInput);
  
  initial begin
    ALUOp=2'b00;
    Funct7=7'bxxxxxxx;
    Funct3=3'bxxx;
    #100 ALUOp=2'b01;
    #100
    ALUOp=2'b10;
    Funct7=7'b0000000;
    Funct3=3'b000;
    #100 
    Funct7=7'b0100000;
    Funct3=3'b000;
    #100 
    Funct7=7'b0000000;
    Funct3=3'b111;
    #100 
    Funct7=7'b0000000;
    Funct3=3'b110;
    #100 ;
  end
endmodule
