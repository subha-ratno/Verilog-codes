module pipeline_ex_tb;
	parameter N=5;
	reg [N-1:0] A,B,C,D;
	reg clk;
	wire [N-1:0] F;
	
	pipeline_ex #(.N(5)) M1(.A(A), .B(B), .C(C), .D(D), .clk(clk), .F(F));
	
	initial begin
		clk = 1'b0;
	end
	
	always #10 clk = ~clk;	//try reducing clk period and check for timing violations
	
	initial begin
		#5 A=3; B=5; C=2; D=1; //F=9
		#20 A=4; B=4; C=5; D=2;	//F=22
	end
	
endmodule
