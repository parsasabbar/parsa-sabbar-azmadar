module fa4b(input [3:0]a,b,input cin,output [3:0]s,output cout);
  wire [2:0]cmid;
  fa1b f40(a[0],b[0],cin,s[0],cmid[0]);
  fa1b f41(a[1],b[1],cmid[0],s[1],cmid[1]);
  fa1b f42(a[2],b[2],cmid[1],s[2],cmid[2]);
  fa1b f43(a[3],b[3],cmid[2],s[3],cout);
endmodule




