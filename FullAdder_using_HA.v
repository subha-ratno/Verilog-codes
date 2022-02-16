module FullAdder_using_HA(input a,b,c, output sum,carry);   //parent module
  wire t1,t2,k;
  HalfAdder h1(a,b,t1,t2);    //don't mess up the order of ports here
  HalfAdder h2(t1,c,sum,t3);    //don't mess up the order of ports here
  or(carry,t2,t3);
endmodule

module HalfAdder(input a,b, output s,c);    //child module
  assign s=a^b;
  assign c=a&b;
endmodule
