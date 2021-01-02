module CUtb;
  reg [6:0]I;
  wire ALUsource,MemoryToRegister,RegWrite,MemoryRead,MemoryWrite,Branch;
  wire[1:0]ALUOp;
  ControlUnit uut(I,ALUsource,MemoryToRegister,RegWrite,MemoryRead,MemoryWrite,Branch,ALUOp);
  
  initial begin
    I=7'b0110011;
    #100 I=7'b0000011;
    #100 I=7'b0100011;
    #100 I=7'b1100011;
    #100 ;
  end
endmodule