module comp_1bit (input a, b, output reg a_b, ab, b_a);
	/*
	a_b -> a is greater than b
	ab -> a equals b
	b_a -> b is greater than a
	*/
	always@(*) begin
		if(a>b) begin
			a_b = 1;
			ab = 0;
			b_a = 0;
		end
		else if(a<b) begin
			a_b = 0;
			ab = 0;
			b_a = 1;
		end
		else begin
			a_b = 0;
			ab = 1;
			b_a = 0;
		end
	end
endmodule