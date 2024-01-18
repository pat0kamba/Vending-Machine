/*	Name:			  	Abul Hasan Shaik
	Partner Name: 	Patrick Kumba
	Class:		  	CSC 244
	Assign: 		  	Project 1
*/
module seven_seg(
  input logic A[3:0], // 4-bit input signal 'A'
  output logic S[6:0]  // 7-bit output signal 'S' for seven-segment display control
);

logic Y[8:0]; // 9-bit signal 'Y' for intermediate calculations

// Call a sub-module 'd416' with input 'A' and output 'Y'
d416 (.a0(A[0]), .a1(A[1]), .a2(A[2]), .a3(A[3]), .y(Y));

// Assign each 'S' output bit based on the values of 'Y'
assign S[0] = ~(Y[0] | Y[2] | Y[3] | Y[5] | Y[6] | Y[7] | Y[8]);
assign S[1] = ~(Y[0] | Y[1] | Y[2] | Y[3] | Y[4] | Y[7] | Y[8]);
assign S[2] = ~(Y[0] | Y[1] | Y[3] | Y[4] | Y[5] | Y[6] | Y[7] | Y[8]);
assign S[3] = ~(Y[0] | Y[2] | Y[3] | Y[5] | Y[6] | Y[8]);
assign S[4] = ~(Y[0] | Y[2] | Y[6] | Y[8]);
assign S[5] = ~(Y[0] | Y[4] | Y[5] | Y[6] | Y[8]);
assign S[6] = ~(Y[2] | Y[3] | Y[4] | Y[5] | Y[6] | Y[8]);

endmodule