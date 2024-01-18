/*	Name:			  	Abul Hasan Shaik
	Partner Name: 	Patrick Kumba
	Class:		  	CSC 244
	Assign: 		  	Project 1
*/
module d416(
  input logic a0, a1, a2, a3, // 4-bit input signals
  output logic y[8:0]        // 9-bit output signal for decoding
);

// Assign each 'y' output bit based on the values of the input signals
assign y[0] = ~a3 & ~a2 & ~a1 & ~a0;
assign y[1] = ~a3 & ~a2 & ~a1 & a0;
assign y[2] = ~a3 & ~a2 & a1 & ~a0;
assign y[3] = ~a3 & ~a2 & a1 & a0;
assign y[4] = ~a3 & a2 & ~a1 & ~a0;
assign y[5] = ~a3 & a2 & ~a1 & a0;
assign y[6] = ~a3 & a2 & a1 & ~a0;
assign y[7] = ~a3 & a2 & a1 & a0;
assign y[8] = a3 & ~a2 & ~a1 & ~a0;

endmodule