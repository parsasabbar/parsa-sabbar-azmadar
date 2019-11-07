module fa64b(input [63:0]a,b,input cin,output [63:0]s,output cout);
  wire [2:0]cmid;
  fa16b f640(a[15:0],b[15:0],cin,s[15:0],cmid[0]);
  fa16b f641(a[31:16],b[31:16],cmid[0],s[31:16],cmid[1]);
  fa16b f642(a[47:32],b[47:32],cmid[1],s[47:32],cmid[2]);
  fa16b f643(a[63:48],b[63:48],cmid[2],s[63:48],cout);
endmodule





