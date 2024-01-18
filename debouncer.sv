/*	Name:			  	Abul Hasan Shaik
	Partner Name: 	Patrick Kumba
	Class:		  	CSC 244
	Assign: 		  	Project 1
*/
module debouncer(
	input logic A_noisy,
	input logic CLK50M, 
	output logic A
);

	logic [15:0] COUNT;
	parameter [15:0] COMPARE = 50_000; //1 millisecond
	
	logic t_d, t_r, Anext;
	
	/*
	1 ms timer
	*/
	always_ff@(posedge CLK50M)
	begin
		if(t_r)
			COUNT <= 16'd0;
		else
			COUNT <= COUNT + 16'd1;
	end
	assign t_d = (COUNT >= COMPARE);
	
	//next-state logic 
	assign Anext = (A_noisy & t_d) | (A & ~t_d);
	
	//state
	always_ff@(posedge CLK50M)
		A <= Anext;
	
	//output logic 
	assign t_r = t_d | (~A & ~A_noisy) | (A & A_noisy);
	
endmodule
