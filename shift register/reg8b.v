module reg8b(input clk,input[1:0]shift,input datain_s,input[7:0] regin,output[7:0]regout,output dataout_s);
  wire [7:0]DIN,DOUT;
  dff reg80(DIN[0],clk,DOUT[0]);
  dff reg81(DIN[1],clk,DOUT[1]);
  dff reg82(DIN[2],clk,DOUT[2]);
  dff reg83(DIN[3],clk,DOUT[3]);
  dff reg84(DIN[4],clk,DOUT[4]);
  dff reg85(DIN[5],clk,DOUT[5]);
  dff reg86(DIN[6],clk,DOUT[6]);
  dff reg87(DIN[7],clk,DOUT[7]);
  assign DIN=shift[1]?{DOUT[6:0],datain_s}:shift[0]?{datain_s,DOUT[7:1]}:regin;//Shift[1]=1 => shift left ,Shift[0]=1 => shift right ,shift=00 ,DataOut=DataIn
  assign regout=DOUT;
  assign dataout_s=shift[1]?DOUT[7]:shift[0]?DOUT[0]:DOUT[0];
endmodule


