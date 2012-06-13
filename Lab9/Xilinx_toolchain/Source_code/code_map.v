/* 模組名稱：code_map
   著作權宣告：copyright 2012 林博仁(pika1021@gmail.com)
   */
`timescale 1ns / 100ps

module code_map(next, present);
  input [3:0]present;
  output [3:0]next;

  assign next[3] = present[1] |
                  ~present[3] & ~present[1] & ~present[0];
  assign next[2] = present[3] & ~present[2] & ~present[1] |
                  ~present[3] & present[2];
  assign next[1] = present[1] & ~present[0] |
                  ~present[1] & ~present[3] & present[2] |
                  ~present[3] & ~present[1] & ~present[0];
  assign next[0] = present[3] & ~present[2] |
                  present[2] & ~present[1];
endmodule
