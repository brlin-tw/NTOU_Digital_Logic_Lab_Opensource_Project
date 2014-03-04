/* 模組名稱：Top Module with 7-segment decoder
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps
`include "Source_code/fullAdder4bit/fullAdder4bit.v"
`include "Source_code/sevenSegmentDisplayDecoder/sevenSegmentDisplayDecoder.v"

module Top(Cout, Seg, add, aug, Cin);
  input Cin;
  input [3:0]add, aug;
  output Cout;
  output [7:0]Seg;
  wire [3:0]FAout;
  fullAdder4bit
    fa(Cout, FAout, add, aug, Cin);
  sevenSegmentDisplayDecoder
    sevendec(Seg, FAout);

endmodule
