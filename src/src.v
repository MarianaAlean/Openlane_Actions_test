//Unidad Logico Aritmetica

module ALU(
	input [3:0] A,
	input [3:0] B,
	input [2:0] F,
	output [3:0] Y
	);

wire [3:0] w1,w2,w3,w4,w5,w6,w7,w10;
wire w8,w9;

Compuerta_and U0(
.A(A),
.B(w2),
.F(w5)
);

Compuerta_or U2(
.A(A),
.B(w2),
.F(w6)
);

Compuerta_not U1(
.A(B),
.F(w1)
);

sum_4bits U4(
	.A(A),
	.B(w4),
	.F(w7)
	);

sum_4bits U3(
	.A(w2),
	.B(4'b0001),
	.F(w3)
	);

mux2a1 M1(
	.A(B),//0
	.B(w1),//1
	.s0(F[2]),
	.F(w2)
	);

mux2a1 M2(
	.A(w2),//0
	.B(w3),//1
	.s0(F[2]),
	.F(w4)
	);

mux2a1 M3(
	.A({3'b000,w8}),//0
	.B({3'b000,w9}),//1
	.s0(F[2]),
	.F(w10)
	);

mux4a1 M4(
	.A(w5),//00
	.B(w6),//01
	.C(w7),//10
	.D(w10),//11
	.s0(F[0]),
	.s1(F[1]),
	.F(Y)
	);

mayor U6(
	.A(A),
	.B(B),
	.F(w9)
	);

igualdad U5(
	.A(A),
	.B(B),
	.F(w8)
	);

endmodule
