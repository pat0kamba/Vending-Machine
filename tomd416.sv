module tomatoes
(

	input  logic a0, a1, a2, a3,
	output t

);

logic y[8:0];

assign y[0]  =~a3 & ~a2 & ~a1 & ~a0;
assign y[1]  =~a3 & ~a2 & ~a1 &  a0;
assign y[2]  =~a3 & ~a2 &  a1 & ~a0;
assign y[3]  =~a3 & ~a2 &  a1 &  a0;
assign y[4]  =~a3 &  a2 & ~a1 & ~a0;
assign y[5]  = ~a3 &  a2 & ~a1 &  a0;
assign y[6]  = ~a3 &  a2 &  a1 & ~a0;
assign y[7]  = ~a3 &  a2 &  a1 &  a0;
assign y[8]  =  a3 & ~a2 & ~a1 & ~a0;

assign t = y[5] + y[6] + y[7] + y[8];



endmodule