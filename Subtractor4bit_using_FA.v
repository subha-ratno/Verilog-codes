module Subtractor4bit_using_FA(input bin, [3:0]x,y, output bout,[3:0]d);
	wire [2:0]bw;
	FA f1(x[0],~y[0],1,d[0],bw[0]);
	FA f2(x[1],~y[1],bw[0],d[0],bw[1]);
	FA f3(x[2],~y[2],bw[1],d[0],bw[2]);
	FA f4(x[3],~y[3],bw[2],d[0],bout);
endmodule

module FA(input x,y,z, output reg s,c);
  always@(*)
  begin
    s = x^y^z;
    c = (x&y)|(y&z)|(z&x);
  end
endmodule
