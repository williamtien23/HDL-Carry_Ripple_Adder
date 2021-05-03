module Carry_Ripple_Adder (
 
	input wire [3:0] A,
	input wire [3:0] B,
	input wire Cin,
	input wire Clk,

	output reg [3:0] Y,
	output reg Cout
);
	 
	wire [3:0] carry_chain;
	
	assign carry_chain[0] = Cin;
	assign carry_chain[3:1] = (A[2:0] & B[2:0]) | (A[2:0] & carry_chain[2:0]) | (B[2:0] & carry_chain[2:0]);
	
	always @ (*) begin
		Y = A ^ B ^ carry_chain;
		Cout = (A[3] & B[3]) | (A[3] & carry_chain[3]) | (B[3] & carry_chain[3]);
	end
 
endmodule 

	
	