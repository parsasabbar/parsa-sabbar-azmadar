module ALUtb;
  reg [63:0]value1,value2;
  reg[3:0]ALUControlvalue;
  wire [63:0]ALUResult;
  wire zero;
  ALU uut(value1,value2,ALUcontrolInput,ALUResult,zero);
  
  initial begin
    value1=85;
    value2=850000;
    ALUcontrolInput=4'b0010;
    #100 ALUcontrolInput=4'b0110;
    #100 ALUcontrolInput=4'b0000;
    #100 ALUcontrolInput=4'b0001;
    #100 ;
  end
endmodule
