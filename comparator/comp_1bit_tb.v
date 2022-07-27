module comp_1bit_tb;
	reg in1, in2;
	wire greater, lesser, equal;
	
	comp_1bit m1(.a(in1), .b(in2), .a_b(greater), .ab(equal), .b_a(lesser));
	
	initial begin
		in1 = 0; in2 = 0;
		#10;
		in1 = 0; in2 = 1;
		#10;
		in1 = 1; in2 = 0;
		#10;
		in1 = 1; in2 = 1;
	end
endmodule
