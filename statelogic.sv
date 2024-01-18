/*	Name:			  	Abul Hasan Shaik
	Partner Name: 	Patrick Kumba
	Class:		  	CSC 244
	Assign: 		  	Project 1
*/
/* Module Header */
module statelogic(
  input logic s[3:0],  // 4-bit input signal 's'
  input logic y[1:0],  // 2-bit input signal 'y'
  output logic k[3:0]  // 4-bit output signal 'k'
);

/* Assignments for k[0] */
assign k[0] = (
  (y[0] & ~y[1] & ~s[0] & ~s[1] & ~s[2] & ~s[3]) |  // Condition 1
  (~y[0] & ~y[1] & s[0] & ~s[2] & ~s[3]) |           // Condition 2
  (y[1] & s[0] & ~s[2] & ~s[3]) |                   // Condition 3
  (y[0] & ~y[1] & ~s[0] & s[1] & ~s[2] & ~s[3]) |    // Condition 4
  (y[0] & ~y[1] & ~s[1] & s[2] & ~s[3]) |           // Condition 5
  (y[0] & ~y[1] & s[0] & s[1] & s[2] & ~s[3]) |    // Condition 6
  (y[1] & ~s[0] & s[1] & s[2] & ~s[3]) |           // Condition 7
  (y[1] & ~s[0] & ~s[1] & ~s[2] & s[3])             // Condition 8
);

/* Assignments for k[1] */
assign k[1] = (
  (y[0] & ~y[1] & s[0] & ~s[1] & ~s[2] & ~s[3]) |   // Condition 9
  (~y[0] & y[1] & ~s[1] & ~s[2] & ~s[3]) |           // Condition 10
  (~y[0] & ~y[1] & s[1] & ~s[2] & ~s[3]) |           // Condition 11
  (~y[1] & ~s[0] & s[1] & ~s[2] & ~s[3]) |           // Condition 12
  (y[0] & ~s[0] & s[1] & ~s[2] & ~s[3]) |            // Condition 13
  (y[0] & y[1] & s[1] & ~s[2] & ~s[3]) |            // Condition 14
  (y[0] & ~y[1] & s[1] & s[2] & ~s[3]) |            // Condition 15
  (y[0] & s[0] & s[1] & s[2] & ~s[3]) |            // Condition 16
  (~y[0] & y[1] & ~s[1] & s[2] & ~s[3]) |           // Condition 17
  (~y[0] & y[1] & ~s[0] & s[1] & s[2] & ~s[3]) |    // Condition 18
  (y[0] & y[1] & ~s[0] & ~s[1] & ~s[2] & s[3])     // Condition 19
);

/* Assignments for k[2] */
assign k[2] = (
  (y[0] & y[1] & ~s[2] & ~s[3] & ~s[1]) |           // Condition 20
  (y[0] & s[0] & s[1] & ~s[2] & ~s[3]) |           // Condition 21
  (y[1] & s[1] & ~s[2] & ~s[3]) |                   // Condition 22
  (~y[1] & ~s[0] & ~s[1] & s[2] & ~s[3]) |           // Condition 23
  (~y[0] & ~s[0] & ~s[1] & s[2] & ~s[3]) |          // Condition 24
  (y[0] & y[1] & s[0] & s[2] & ~s[3]) |            // Condition 25
  (y[1] & s[0] & s[1] & s[2] & ~s[3]) |            // Condition 26
  (y[0] & y[1] & s[1] & s[2] & ~s[3]) |            // Condition 27
  (y[0] & ~s[0] & ~s[1] & ~s[2] & s[3]) |          // Condition 28
  (y[1] & ~s[0] & ~s[1] & ~s[2] & s[3])             // Condition 29
);

/* Assignments for k[3] */
assign k[3] = (
  (y[0] & y[1] & ~s[0] & ~s[1] & s[2] & ~s[3]) // Condition 30
);

/* End of the module */
endmodule