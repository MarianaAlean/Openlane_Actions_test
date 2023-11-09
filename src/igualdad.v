//Comparador de igualdad

module igualdad(
	input [3:0] A,
	input [3:0] B,
	output F
	);

assign F = (A == B);

endmodule
