module Frequency_divider(input in, output reg out);
	parameter N = 9;
	wire [$clog2(N)-1:0] q;
	reg q_ff;
	
	mod_n_counter #(.N(N)) m1(.clock(in), .out(q));
	
	always@(negedge in) begin
		q_ff <= q[2];
	end
	
	always@(q[2] or q_ff) begin
		#0 out <= q_ff | q[2];
	end
endmodule

module mod_n_counter #(parameter N = 9) (input clock, output reg [$clog2(N)-1:0] out);
	integer count = 0;
	initial out = -1;
	
	always@(posedge clock) begin
		if(count==N) begin
				out <= 0;
				count <= 1;
		end
		else begin
			out <= out + 1;
			count <= count +1;
		end
	end
endmodule