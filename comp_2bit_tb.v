module comp_2bit_tb();
	reg [1:0]in1, in2;
	wire greater, lesser, equal;
	
	comp_2bit m1(.a(in1), .b(in2), .a_more(greater), .b_more(lesser), .ab_equal(equal));
	
	initial begin
		in1 = 2'b00;
		in2 = 2'b00;
		#10 in1 = 2'b01;
		#10 in2 = 2'b10;
		#10 in1 = 2'b10;
		#20 in1 = 2'b11;
	end
endmodule