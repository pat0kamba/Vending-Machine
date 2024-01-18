/*	Name:			  	Abul Hasan Shaik
	Partner Name: 	Patrick Kumba
	Class:		  	CSC 244
	Assign: 		  	Project 1
*/
module D_FF_neg(
  input logic D, CLKb, RSTb,      // Inputs: Data, Clock, and Asynchronous Reset
  output logic Q, Qb             // Outputs: Output Q and Complementary Output Qb
);

// Define the behavior of the flip-flop using an always_ff block
always_ff @(negedge CLKb or negedge RSTb)
begin
  if (RSTb == 1'b0)
  begin
    // Asynchronous reset is active, set Q to 0 and Qb to 1
    Q <= 1'b0;
    Qb <= 1'b1;
  end
  else
  begin
    // Asynchronous reset is not active, update Q based on D and Qb
    Q <= D;
    Qb <= ~D;
  end
end

endmodule
