/* 模組名稱：SID counter
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps
`include "Source_code/threeBitDFFupCounterWasynClock/threeBitDFFupCounterWasynClock.v"
module count_sid(sid, clk, rstN);
  input clk, rstN;
  output [3:0]sid;
	wire [2:0]num;

	threeBitDFFupCounterWasynClock count(num, Clk, rstN);
	assign sid[3] = ~num[2] & ~num[1] & num[0] | ~num[2] & num[1] & num[0];
	assign sid[2] = ~num[2] & num[1] & num[0] | num[2] & ~num[1] & ~num[0], 
					sid[1] = num[2] & ~num[1] & num[0], 
					sid[0] = ~num[2] & num[0] | num[1] & ~num[2] | num[2] & ~num[0];

endmodule
