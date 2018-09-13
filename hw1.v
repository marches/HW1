// (~A)*(~B)
module demorgan_1
	(
	input A, 
	input B, 
	output nA, 
	output nB,
	output nAandnB
	);

	wire nA;
	wire nB;
	not Ainv(nA, A);
	not Binv(nB, B);
	and andgate(nAandnB, nA, nB);

endmodule

// ~(A*B)
module demorgan_2
	(
	input A,
	input B,
	output AandB,
	output nAandB
	);

	wire AandB;
	wire nAandB;
	and andgate(AandB, A, B);
	not AandBinv(nAandB, AandB);

endmodule

// (~A)+(~B)
module demorgan_3
		(
	input A, 
	input B, 
	output nA, 
	output nB,
	output nAornB
	);

	wire nA;
	wire nB;
	not Ainv(nA, A);
	not Binv(nB, B);
	or orgate(nAornB, nA, nB);

endmodule

// ~(A+B)
module demorgan_4
	(
	input A,
	input B,
	output AorB,
	output nAorB
	);

	wire AorB;
	wire nAorB;
	or orgate(AorB, A, B);
	not AandBinv(nAorB, AorB);

endmodule
