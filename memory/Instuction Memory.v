module InstuctionMemory(input [63:0] Address, output reg [31:0]Instuction);
  
  reg [31:0] Memory[2047:0];
  
  always @(*)Instuction=Memory[Address];
  initial begin
    Memory[0]=32'h08490000;
    Memory[1]=32'h05555555;
endmodule
