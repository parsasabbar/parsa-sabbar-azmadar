module ControlUnit(value [6:0]I,output reg ALUsource,MemoryToRegister,RegWrite,MemoryRead,MemoryWrite,Branch,output reg[1:0]ALUOp);
  always @(*)begin
    case(I)
      7'b0110011:{ALUsource,MemoryToRegister,RegWrite,MemoryRead,MemoryWrite,Branch,ALUOp}=8'b00100010;
      7'b0000011:{ALUsource,MemoryToRegister,RegWrite,MemoryRead,MemoryWrite,Branch,ALUOp}=8'b11110000;
      7'b0100011:{ALUsource,MemoryToRegister,RegWrite,MemoryRead,MemoryWrite,Branch,ALUOp}=8'b10001000;
      7'b1100011:{ALUsource,MemoryToRegister,RegWrite,MemoryRead,MemoryWrite,Branch,ALUOp}=8'b00000101;
      default:{ALUsource,MemoryToRegister,RegWrite,MemoryRead,MemoryWrite,Branch,ALUOp}=8'bxxxxxxxx;
    endcase
  end
endmodule
