/*	Name:			  	Abul Hasan Shaik
	Partner Name: 	Patrick Kumba
	Class:		  	CSC 244
	Assign: 		  	Project 1
*/
module encoder(
  input logic w[2:0],   // 3-bit input signal 'w'
  output logic outp[1:0] // 2-bit output signal 'outp'
);

// Assign 'outp[0]' based on input 'w[2]' and 'w[0]'
assign outp[0] = w[2] | w[0]; 

// Assign 'outp[1]' based on input 'w[2]' and 'w[1]'
assign outp[1] = w[2] | w[1];

endmodule
