module Adder4bit_using_FA(input cin, [3:0]a,b, output cout,[3:0]sum);   //always declare the single-bit ports before declaring the multi-bit ports
  wire [2:0]cw;
  FA f1(a[0],b[0],cin,sum[0],cw[0]);
  FA f2(a[1],b[1],cw[0],sum[1],cw[1]);
  FA f3(a[2],b[2],cw[1],sum[2],cw[2]);
  FA f4(a[3],b[3],cw[2],sum[3],cout);
endmodule

module FA(input x,y,z, output reg s,c);
  always@(*)
  begin
    s = x^y^z;
    c = (x&y)|(y&z)|(z&x);
  end
endmodule
