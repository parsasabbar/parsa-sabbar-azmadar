module fa16b(input [15:0]a,b,input cin,output [15:0]s,output cout);
  wire [2:0]cmid;
  fa4b f160(a[3:0],b[3:0],cin,s[3:0],cmid[0]);
  fa4b f161(a[7:4],b[7:4],cmid[0],s[7:4],cmid[1]);
  fa4b f162(a[11:8],b[11:8],cmid[1],s[11:8],cmid[2]);
  fa4b f163(a[15:12],b[15:12],cmid[2],s[15:12],cout);
endmodule





