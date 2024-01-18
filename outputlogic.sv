/*	Name:			  	Abul Hasan Shaik
	Partner Name: 	Patrick Kumba
	Class:		  	CSC 244
	Assign: 		  	Project 1
*/
module outputlogic(
  input logic A[3:0],         // 4-bit input signal 'A'
  output logic curstate[6:0],  // 7-bit current state for seven-segment display control
  output logic curchange[6:0], // 7-bit current change for seven-segment display control
  output logic far,            // Control signal 'far'
  output logic halfp           // Control signal 'halfp'
);

// Call the 'seven_seg' module to determine 'curstate'
seven_seg (.A(A), .S(curstate));

// Call the 'changesev' module to determine 'curchange', 'h' and 'f'
changesev (.A(A), .S(curchange), .h(halfp), .f(far));

endmodule