 `timescale 1ns/1ns
 
 module Carry_Ripple_Adder_tb;
	
	reg [3:0] a;
	reg [3:0] b;
	reg c_in;
	reg clk;
	
	wire [3:0] y;
	wire c_out;
	
	Carry_Ripple_Adder dut (a, b, c_in, clk, y, c_out);
	
	initial begin
		a <= 4'b0000;
		b <= 4'b0000;
		c_in <= 1'b0;
		clk <= 0; 
	end
	
	always begin
		#5
		clk <= ~clk;
		a <= 4'b1111;
		b <= 4'b0000;
		c_in <= 1'b1;
	end
	
endmodule
	