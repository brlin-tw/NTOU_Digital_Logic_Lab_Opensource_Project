/* 模組名稱：Lab7 top module
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps
`include "Source_code/count_sid.v"
`include "Source_code/sevenSegmentDisplayDecoder/sevenSegmentDisplayDecoder.v"

module dff_counter_sid_top(seg, clk, rst_n);
  input clk, rst_n;
  output [7:0]seg;
	wire [3:0]sid;

	count_sid countSid(sid, clk, rst_n);
	sevenSegmentDisplayDecoder display(seg,sid);
endmodule
