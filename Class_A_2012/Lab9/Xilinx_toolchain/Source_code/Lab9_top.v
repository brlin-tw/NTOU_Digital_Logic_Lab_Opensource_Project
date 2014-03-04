 /* 模組名稱：Lab9 top module
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps
`include "Source_code/dffSyncSid.v"
`include "Source_code/sevenSegmentDisplayDecoder/sevenSegmentDisplayDecoder.v"
module Lab9_top(seg, Clk, RstN);
  output [7:0]seg;
  input Clk, RstN;
  wire [3:0]out;

  dffSyncSid g1(out, Clk, RstN);
  sevenSegmentDisplayDecoder g2(seg, out);
endmodule
