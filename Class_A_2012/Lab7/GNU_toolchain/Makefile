#Makefile of a Lab7
  #author:Vdragon(pika1021@gmail.com)
  #this file is licensed under LGPL 3 or later
build:
	mkdir --parents Simulation
	iverilog -o Simulation/dff_counter_sid_top_tb.executable Source_code/dff_counter_sid_top_tb.v

simulate:
	Simulation/dff_counter_sid_top_tb.executable

wave:
	gtkwave Simulation/dff_counter_sid_top_tb.vcd &
	
#	iverilog -o Simulation/count_sid_tb.executable Source_code/count_sid_tb.v
