module fa1b(input a,b,cin,output s,cout);
  
  
  assign cout=((a^b)&cin)|(a&b);
  assign s=(a^b)^cin;
  
endmodule


