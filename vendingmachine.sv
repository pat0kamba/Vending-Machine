/*	Name:			  	Abul Hasan Shaik
	Partner Name: 	Patrick Kumba
	Class:		  	CSC 244
	Assign: 		  	Project 1
*/
module vendingmachine(
  input logic coin[2:0], clk, clk50m, res, 
  output logic tt, s[6:0], c[6:0], outled[3:0],
  output logic HapCH, FarthCH
);

// Declaring local signals
logic encd[1:0]; // 2-bit signal to store encoded coin input
logic d[3:0];    // 4-bit signal to store D flip-flop outputs
logic d2[3:0];   // 4-bit signal for the next state

// Debounce clock and reset signals
logic clkde, resde;

// Debounce the clock signal 'clk'
debouncer clk_db( .A_noisy(clk), .CLK50M(clk50m), .A(clkde) );

// Debounce the reset signal 'res'
debouncer res_db( .A_noisy(res), .CLK50M(clk50m), .A(resde) );

// Encode the coin input 'coin' into 'encd'
encoder (.w(coin), .outp(encd));

// Call the 'statelogic' module to determine the next state
statelogic( .s(d2), .y(encd), .k(d));

// D flip-flops for each bit of 'd'
D_FF_neg zero (.D(d[0]), .CLKb(clkde), .RSTb(resde), .Q(d2[0]));
D_FF_neg one  (.D(d[1]), .CLKb(clkde), .RSTb(resde), .Q(d2[1]));
D_FF_neg two  (.D(d[2]), .CLKb(clkde), .RSTb(resde), .Q(d2[2]));
D_FF_neg three(.D(d[3]), .CLKb(clkde), .RSTb(resde), .Q(d2[3]));

// Determine the 'tt' signal using 'tomatoes' module
tomatoes(.a0(d2[0]), .a1(d2[1]), .a2(d2[2]), .a3(d2[3]), .t(tt));

// Determine the outputs and current state using 'outputlogic' module
outputlogic(.A(d2), .curstate(s), .curchange(c), .far(FarthCH), .halfp(HapCH));

// Assign 'outled' to 'd2' for the LED outputs
assign outled = d2;

endmodule