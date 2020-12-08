module pc(input clk,input[1:0]  shift,input [63:0] pc1,output [63:0] pc2);
  wire [7:0]DIN,DOUT;
  assign DIN=shift[1]?{DOUT[6:0],1'b0}:shift[0]?{1'b0,DOUT[7:1]}:8'H00;//Shift[1]=1 => shift left ,Shift[0]=1 => shift right ,shift=00 ,DataOut=DataIn
  
  reg8b pcc0(clk,shift,DIN[0],pc1[7:0],pc2[7:0],DOUT[0]);
  reg8b pcc1(clk,shift,DIN[1],pc1[15:8],pc2[15:8],DOUT[1]);
  reg8b pcc2(clk,shift,DIN[2],pc1[23:16],pc2[23:16],DOUT[2]);
  reg8b pcc3(clk,shift,DIN[3],pc1[31:24],pc2[31:24],DOUT[3]);
  reg8b pcc4(clk,shift,DIN[4],pc1[39:32],pc2[39:32],DOUT[4]);
  reg8b pcc5(clk,shift,DIN[5],pc1[47:40],pc2[47:40],DOUT[5]);
  reg8b pcc6(clk,shift,DIN[6],pc1[55:48],pc2[55:48],DOUT[6]);
  reg8b pcc7(clk,shift,DIN[7],pc1[63:56],pc2[63:56],DOUT[7]);
endmodule
  




