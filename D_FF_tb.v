`timescale 1ns/1ps
module D_tb(input reg D, CLK, RSTN,
            output Q);
  integer i;
  D_FF d0(.d(D), .clk(CLK), .rstn(RSTN), .q(Q));
  always #5 CLK = ~CLK;
  $dumpfile("dump.vcd");
  $dumpvars(0, D_tb);
  for i
