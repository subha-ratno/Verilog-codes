module D_FF(input d, clk, rst,
            output reg q);
  always@(posedge clk)
    begin
      if(!rstn)
        q<=0;
      else
        q<=d;
    end
endmodule
