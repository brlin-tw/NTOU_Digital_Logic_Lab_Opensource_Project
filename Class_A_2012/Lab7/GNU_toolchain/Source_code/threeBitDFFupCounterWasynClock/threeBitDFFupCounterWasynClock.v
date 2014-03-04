//非同步clock之三位元D型正反器上數計數器
`ifndef THREEBITDFFUPCOUNTWASYNCLK_V
	`timescale 1ns / 100ps
	`include "Source_code/dFlipFlopNegClkNegRst/dFlipFlopNegClkNegRst.v"
	module threeBitDFFupCounterWasynClock(count, Clk, ClrN);
		output [2:0]count;
		input Clk, ClrN;
		wire w2, w1, w0;
		wire [2:0]dummy;
		
		dFlipFlopNegClkNegRst c0(w0, dummy[0], ~w0, Clk, ClrN), 
		c1(w1, dummy[1], ~w1, w0, ClrN), 
		c2(w2, dummy[2], ~w2, w1, ClrN);
		
		assign count[0] = w0, 
			count[1] = w1, 
			count[2] = w2;
		
	endmodule
`endif
