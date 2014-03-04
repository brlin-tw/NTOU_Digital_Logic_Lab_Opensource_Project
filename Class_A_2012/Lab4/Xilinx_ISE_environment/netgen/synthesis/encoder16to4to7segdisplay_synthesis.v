////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.87xd
//  \   \         Application: netgen
//  /   /         Filename: encoder16to4to7segdisplay_synthesis.v
// /___/   /\     Timestamp: Tue Apr 24 05:36:59 2012
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim encoder16to4to7segdisplay.ngc encoder16to4to7segdisplay_synthesis.v 
// Device	: xc3s250e-4-pq208
// Input file	: encoder16to4to7segdisplay.ngc
// Output file	: /home/Vdragon/Dropbox/Workspace/Programming/Verilog/My_projects/NTOU_Digital_Logic_Lab_Opensource_Project/Lab4/Xilinx_ISE_environment/netgen/synthesis/encoder16to4to7segdisplay_synthesis.v
// # of Modules	: 1
// Design Name	: encoder16to4to7segdisplay
// Xilinx        : /media/ezgo/opt/SSD/Xilinx/13.4/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module encoder16to4to7segdisplay (
display, in
);
  output [6 : 0] display;
  input [15 : 0] in;
  wire display_0_OBUF_11;
  wire display_1_OBUF_12;
  wire display_2_OBUF_13;
  wire display_3_OBUF_14;
  wire display_4_OBUF_15;
  wire display_5_OBUF_16;
  wire display_6_OBUF_17;
  wire \enc16to4/out_0_or00004_18 ;
  wire \enc16to4/out_0_or00009_19 ;
  wire \enc16to4/out_1_or00004_20 ;
  wire \enc16to4/out_1_or00009_21 ;
  wire \enc16to4/out_2_or00004_22 ;
  wire \enc16to4/out_2_or00009_23 ;
  wire \enc16to4/out_3_or00004_24 ;
  wire \enc16to4/out_3_or00009_25 ;
  wire in_10_IBUF_41;
  wire in_11_IBUF_42;
  wire in_12_IBUF_43;
  wire in_13_IBUF_44;
  wire in_14_IBUF_45;
  wire in_15_IBUF_46;
  wire in_1_IBUF_47;
  wire in_2_IBUF_48;
  wire in_3_IBUF_49;
  wire in_4_IBUF_50;
  wire in_5_IBUF_51;
  wire in_6_IBUF_52;
  wire in_7_IBUF_53;
  wire in_8_IBUF_54;
  wire in_9_IBUF_55;
  wire [3 : 0] code;
  LUT4 #(
    .INIT ( 16'hFD51 ))
  \sevendisplay/out_4_or00001  (
    .I0(code[0]),
    .I1(code[2]),
    .I2(code[1]),
    .I3(code[3]),
    .O(display_4_OBUF_15)
  );
  LUT4 #(
    .INIT ( 16'h76F7 ))
  \sevendisplay/out_2_or00001  (
    .I0(code[3]),
    .I1(code[2]),
    .I2(code[0]),
    .I3(code[1]),
    .O(display_2_OBUF_13)
  );
  LUT4 #(
    .INIT ( 16'hBEF6 ))
  \sevendisplay/out_6_or00001  (
    .I0(code[3]),
    .I1(code[2]),
    .I2(code[1]),
    .I3(code[0]),
    .O(display_6_OBUF_17)
  );
  LUT4 #(
    .INIT ( 16'hA6EF ))
  \sevendisplay/out_5_or00001  (
    .I0(code[3]),
    .I1(code[2]),
    .I2(code[1]),
    .I3(code[0]),
    .O(display_5_OBUF_16)
  );
  LUT4 #(
    .INIT ( 16'h497F ))
  \sevendisplay/out_1_or00001  (
    .I0(code[3]),
    .I1(code[0]),
    .I2(code[1]),
    .I3(code[2]),
    .O(display_1_OBUF_12)
  );
  LUT4 #(
    .INIT ( 16'hDF79 ))
  \sevendisplay/out_0_or00001  (
    .I0(code[0]),
    .I1(code[2]),
    .I2(code[3]),
    .I3(code[1]),
    .O(display_0_OBUF_11)
  );
  LUT4 #(
    .INIT ( 16'h7D6B ))
  \sevendisplay/out_3_or00001  (
    .I0(code[1]),
    .I1(code[0]),
    .I2(code[2]),
    .I3(code[3]),
    .O(display_3_OBUF_14)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \enc16to4/out_3_or00004  (
    .I0(in_10_IBUF_41),
    .I1(in_11_IBUF_42),
    .I2(in_12_IBUF_43),
    .I3(in_13_IBUF_44),
    .O(\enc16to4/out_3_or00004_24 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \enc16to4/out_3_or00009  (
    .I0(in_14_IBUF_45),
    .I1(in_15_IBUF_46),
    .I2(in_8_IBUF_54),
    .I3(in_9_IBUF_55),
    .O(\enc16to4/out_3_or00009_25 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \enc16to4/out_3_or000010  (
    .I0(\enc16to4/out_3_or00004_24 ),
    .I1(\enc16to4/out_3_or00009_25 ),
    .O(code[3])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \enc16to4/out_2_or00004  (
    .I0(in_6_IBUF_52),
    .I1(in_7_IBUF_53),
    .I2(in_12_IBUF_43),
    .I3(in_13_IBUF_44),
    .O(\enc16to4/out_2_or00004_22 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \enc16to4/out_2_or00009  (
    .I0(in_14_IBUF_45),
    .I1(in_15_IBUF_46),
    .I2(in_4_IBUF_50),
    .I3(in_5_IBUF_51),
    .O(\enc16to4/out_2_or00009_23 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \enc16to4/out_2_or000010  (
    .I0(\enc16to4/out_2_or00004_22 ),
    .I1(\enc16to4/out_2_or00009_23 ),
    .O(code[2])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \enc16to4/out_1_or00004  (
    .I0(in_6_IBUF_52),
    .I1(in_7_IBUF_53),
    .I2(in_10_IBUF_41),
    .I3(in_11_IBUF_42),
    .O(\enc16to4/out_1_or00004_20 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \enc16to4/out_1_or00009  (
    .I0(in_14_IBUF_45),
    .I1(in_15_IBUF_46),
    .I2(in_2_IBUF_48),
    .I3(in_3_IBUF_49),
    .O(\enc16to4/out_1_or00009_21 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \enc16to4/out_1_or000010  (
    .I0(\enc16to4/out_1_or00004_20 ),
    .I1(\enc16to4/out_1_or00009_21 ),
    .O(code[1])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \enc16to4/out_0_or00004  (
    .I0(in_5_IBUF_51),
    .I1(in_7_IBUF_53),
    .I2(in_9_IBUF_55),
    .I3(in_11_IBUF_42),
    .O(\enc16to4/out_0_or00004_18 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \enc16to4/out_0_or00009  (
    .I0(in_13_IBUF_44),
    .I1(in_15_IBUF_46),
    .I2(in_1_IBUF_47),
    .I3(in_3_IBUF_49),
    .O(\enc16to4/out_0_or00009_19 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \enc16to4/out_0_or000010  (
    .I0(\enc16to4/out_0_or00004_18 ),
    .I1(\enc16to4/out_0_or00009_19 ),
    .O(code[0])
  );
  IBUF   in_15_IBUF (
    .I(in[15]),
    .O(in_15_IBUF_46)
  );
  IBUF   in_14_IBUF (
    .I(in[14]),
    .O(in_14_IBUF_45)
  );
  IBUF   in_13_IBUF (
    .I(in[13]),
    .O(in_13_IBUF_44)
  );
  IBUF   in_12_IBUF (
    .I(in[12]),
    .O(in_12_IBUF_43)
  );
  IBUF   in_11_IBUF (
    .I(in[11]),
    .O(in_11_IBUF_42)
  );
  IBUF   in_10_IBUF (
    .I(in[10]),
    .O(in_10_IBUF_41)
  );
  IBUF   in_9_IBUF (
    .I(in[9]),
    .O(in_9_IBUF_55)
  );
  IBUF   in_8_IBUF (
    .I(in[8]),
    .O(in_8_IBUF_54)
  );
  IBUF   in_7_IBUF (
    .I(in[7]),
    .O(in_7_IBUF_53)
  );
  IBUF   in_6_IBUF (
    .I(in[6]),
    .O(in_6_IBUF_52)
  );
  IBUF   in_5_IBUF (
    .I(in[5]),
    .O(in_5_IBUF_51)
  );
  IBUF   in_4_IBUF (
    .I(in[4]),
    .O(in_4_IBUF_50)
  );
  IBUF   in_3_IBUF (
    .I(in[3]),
    .O(in_3_IBUF_49)
  );
  IBUF   in_2_IBUF (
    .I(in[2]),
    .O(in_2_IBUF_48)
  );
  IBUF   in_1_IBUF (
    .I(in[1]),
    .O(in_1_IBUF_47)
  );
  OBUF   display_6_OBUF (
    .I(display_6_OBUF_17),
    .O(display[6])
  );
  OBUF   display_5_OBUF (
    .I(display_5_OBUF_16),
    .O(display[5])
  );
  OBUF   display_4_OBUF (
    .I(display_4_OBUF_15),
    .O(display[4])
  );
  OBUF   display_3_OBUF (
    .I(display_3_OBUF_14),
    .O(display[3])
  );
  OBUF   display_2_OBUF (
    .I(display_2_OBUF_13),
    .O(display[2])
  );
  OBUF   display_1_OBUF (
    .I(display_1_OBUF_12),
    .O(display[1])
  );
  OBUF   display_0_OBUF (
    .I(display_0_OBUF_11),
    .O(display[0])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

