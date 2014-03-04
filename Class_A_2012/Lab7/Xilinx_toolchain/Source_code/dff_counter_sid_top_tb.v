//testbench範本
`timescale 1ns / 100ps

`include "Source_code/dff_counter_sid_top.v"

//時脈頻率
`define CLOCK_FREQ 10

module dff_counter_sid_top_tb();
  reg Clk, rst_n;
  wire [7:0]seg;

	//D.U.T. instantiation
	dff_counter_sid_top dff_sid_top(seg, Clk, rst_n);

	//初始化
  initial
    begin
      $dumpfile ("Simulation/dff_counter_sid_top_tb.vcd");
      $dumpvars;
			$monitor($time, " out=%7b, <=== clk=%b, rst_n=%b", seg, Clk, rst_n);
			Clk<=0;
			rst_n<=0;

			#15
			rst_n = 1;

			#160
			$finish;
    end

  /*時脈初始化*/
  always
	  begin
    #`CLOCK_FREQ Clk = ~Clk;
	  end

endmodule
