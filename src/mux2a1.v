//Mux 2 a 1

module mux2a1(
	input [3:0] A,
	input [3:0] B,
	input s0,
	output [3:0] F
	);

assign F = s0 ? B : A;

endmodule
