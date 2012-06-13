/* 模組名稱：dffSyncSid
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps
`include "Source_code/dFlipFlopPosClkNegRst/dFlipFlopPosClkNegRst.v"
`include "Source_code/code_map.v"

module dffSyncSid(next, Clk, ClrN);
  wire [3:0]present;
  input Clk, ClrN;
  output [3:0]next;

  code_map g0(present, next);
  dFlipFlopPosClkNegRst
    dff0(next[0], , present[0], Clk, ClrN),
    dff1(next[1], , present[1], Clk, ClrN),
    dff2(next[2], , present[2], Clk, ClrN),
    dff3(next[3], , present[3], Clk, ClrN);

endmodule
