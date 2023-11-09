//Mux 4 a 1

module mux4a1(
	input [3:0] A,
	input [3:0] B,
	input [3:0] C,
	input [3:0] D,
	input s0,
	input s1,
	output [3:0] F
	);

assign F = s1 ? (s0 ? D : C) : (s0 ? B : A);

endmodule
