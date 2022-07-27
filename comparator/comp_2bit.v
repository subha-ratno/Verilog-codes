module comp_2bit (input [1:0] a, b, output reg a_more, b_more, ab_equal);
	wire a_b, b_a, ab;
	comp_1bit m1(.a(a[0]), .b(b[0]), .a_b(a_b), .b_a(b_a), .ab(ab));
	
	always@(*) begin
		if(a[1]>b[1]) begin
			a_more = 1;
			b_more = 0;
			ab_equal = 0;
		end
		else if(a[1]<b[1]) begin
			a_more = 0;
			b_more = 1;
			ab_equal = 0;
		end
		else begin
			a_more = a_b;
			b_more = b_a;
			ab_equal = ab;
		end
	end
endmodule
