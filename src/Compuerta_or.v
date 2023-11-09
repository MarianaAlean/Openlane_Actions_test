//Compuerta OR

module Compuerta_or(
	input [3:0] A,
	input [3:0] B,
	output [3:0] F
	);

assign F = A | B;
endmodule
