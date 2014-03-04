`timescale 1ns / 100ps
`include "Source_code/dff_counter_asyn.v"
module dff_counter_asyn_tb;
	wire [7:0]seg_up, seg_down;
	reg Clk, resetN;
    
dff_counter_asyn dut(seg_up, seg_down, Clk, resetN);  

initial /*stimulus*/
  begin
    $dumpfile("Simulation/dff_counter_asyn_tb.vcd");
    $dumpvars;
		$monitor($time, " Clk=%b, resetN=%b -> seg_up=%7b, seg_down=%7b", Clk, resetN, seg_up, seg_down);
    resetN = 0;
    Clk = 0;
    
  end
  
initial
  begin
    #101 resetN = 1;
    #909 resetN = 0;
    #1000 $finish;
  end
  
  
always
  begin

    #20 Clk = ~Clk;
    
  end
endmodule
