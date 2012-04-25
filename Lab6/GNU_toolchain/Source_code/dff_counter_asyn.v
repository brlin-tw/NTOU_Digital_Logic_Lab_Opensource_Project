/* 模組名稱：dff_counter_asyn
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps
`include "Source_code/fourBitDFFdownCounterWasynClock/fourBitDFFdownCounterWasynClock.v"
`include "Source_code/fourBitDFFupCounterWasynClock/fourBitDFFupCounterWasynClock.v"
`include "Source_code/sevenSegmentDisplayDecoder/sevenSegmentDisplayDecoder.v"
module dff_counter_asyn(seg_up, seg_down, Clk, resetN);
	input Clk, resetN;
	output [7:0] seg_up, seg_down;
	wire [3:0] count_up, count_down;

	fourBitDFFupCounterWasynClock dff_counter_4bit_up(count_up, Clk, resetN);
	fourBitDFFdownCounterWasynClock dff_counter_4bit_down(count_down, Clk, resetN);
	sevenSegmentDisplayDecoder up_display(seg_up, count_up), 
															down_display(seg_down, count_down);
															
endmodule
