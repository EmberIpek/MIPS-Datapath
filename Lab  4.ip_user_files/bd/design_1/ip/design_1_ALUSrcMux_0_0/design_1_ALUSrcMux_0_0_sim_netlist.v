// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Mar 31 22:39:15 2025
// Host        : Ember running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/ember/Documents/ECE 445 Computer Organization/Labs/Lab
//               4/Lab  4.gen/sources_1/bd/design_1/ip/design_1_ALUSrcMux_0_0/design_1_ALUSrcMux_0_0_sim_netlist.v}
// Design      : design_1_ALUSrcMux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ALUSrcMux_0_0,ALUSrcMux,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ALUSrcMux,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_ALUSrcMux_0_0
   (Read_Data2,
    Sign_ext,
    ALUSrc,
    B);
  input [31:0]Read_Data2;
  input [31:0]Sign_ext;
  input ALUSrc;
  output [31:0]B;

  wire ALUSrc;
  wire [31:0]B;
  wire [31:0]Read_Data2;
  wire [31:0]Sign_ext;

  design_1_ALUSrcMux_0_0_ALUSrcMux U0
       (.ALUSrc(ALUSrc),
        .B(B),
        .Read_Data2(Read_Data2),
        .Sign_ext(Sign_ext));
endmodule

(* ORIG_REF_NAME = "ALUSrcMux" *) 
module design_1_ALUSrcMux_0_0_ALUSrcMux
   (B,
    Sign_ext,
    Read_Data2,
    ALUSrc);
  output [31:0]B;
  input [31:0]Sign_ext;
  input [31:0]Read_Data2;
  input ALUSrc;

  wire ALUSrc;
  wire [31:0]B;
  wire [31:0]Read_Data2;
  wire [31:0]Sign_ext;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[0]_INST_0 
       (.I0(Sign_ext[0]),
        .I1(Read_Data2[0]),
        .I2(ALUSrc),
        .O(B[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[10]_INST_0 
       (.I0(Sign_ext[10]),
        .I1(Read_Data2[10]),
        .I2(ALUSrc),
        .O(B[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[11]_INST_0 
       (.I0(Sign_ext[11]),
        .I1(Read_Data2[11]),
        .I2(ALUSrc),
        .O(B[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[12]_INST_0 
       (.I0(Sign_ext[12]),
        .I1(Read_Data2[12]),
        .I2(ALUSrc),
        .O(B[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[13]_INST_0 
       (.I0(Sign_ext[13]),
        .I1(Read_Data2[13]),
        .I2(ALUSrc),
        .O(B[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[14]_INST_0 
       (.I0(Sign_ext[14]),
        .I1(Read_Data2[14]),
        .I2(ALUSrc),
        .O(B[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[15]_INST_0 
       (.I0(Sign_ext[15]),
        .I1(Read_Data2[15]),
        .I2(ALUSrc),
        .O(B[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[16]_INST_0 
       (.I0(Sign_ext[16]),
        .I1(Read_Data2[16]),
        .I2(ALUSrc),
        .O(B[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[17]_INST_0 
       (.I0(Sign_ext[17]),
        .I1(Read_Data2[17]),
        .I2(ALUSrc),
        .O(B[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[18]_INST_0 
       (.I0(Sign_ext[18]),
        .I1(Read_Data2[18]),
        .I2(ALUSrc),
        .O(B[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[19]_INST_0 
       (.I0(Sign_ext[19]),
        .I1(Read_Data2[19]),
        .I2(ALUSrc),
        .O(B[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[1]_INST_0 
       (.I0(Sign_ext[1]),
        .I1(Read_Data2[1]),
        .I2(ALUSrc),
        .O(B[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[20]_INST_0 
       (.I0(Sign_ext[20]),
        .I1(Read_Data2[20]),
        .I2(ALUSrc),
        .O(B[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[21]_INST_0 
       (.I0(Sign_ext[21]),
        .I1(Read_Data2[21]),
        .I2(ALUSrc),
        .O(B[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[22]_INST_0 
       (.I0(Sign_ext[22]),
        .I1(Read_Data2[22]),
        .I2(ALUSrc),
        .O(B[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[23]_INST_0 
       (.I0(Sign_ext[23]),
        .I1(Read_Data2[23]),
        .I2(ALUSrc),
        .O(B[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[24]_INST_0 
       (.I0(Sign_ext[24]),
        .I1(Read_Data2[24]),
        .I2(ALUSrc),
        .O(B[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[25]_INST_0 
       (.I0(Sign_ext[25]),
        .I1(Read_Data2[25]),
        .I2(ALUSrc),
        .O(B[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[26]_INST_0 
       (.I0(Sign_ext[26]),
        .I1(Read_Data2[26]),
        .I2(ALUSrc),
        .O(B[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[27]_INST_0 
       (.I0(Sign_ext[27]),
        .I1(Read_Data2[27]),
        .I2(ALUSrc),
        .O(B[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[28]_INST_0 
       (.I0(Sign_ext[28]),
        .I1(Read_Data2[28]),
        .I2(ALUSrc),
        .O(B[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[29]_INST_0 
       (.I0(Sign_ext[29]),
        .I1(Read_Data2[29]),
        .I2(ALUSrc),
        .O(B[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[2]_INST_0 
       (.I0(Sign_ext[2]),
        .I1(Read_Data2[2]),
        .I2(ALUSrc),
        .O(B[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[30]_INST_0 
       (.I0(Sign_ext[30]),
        .I1(Read_Data2[30]),
        .I2(ALUSrc),
        .O(B[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[31]_INST_0 
       (.I0(Sign_ext[31]),
        .I1(Read_Data2[31]),
        .I2(ALUSrc),
        .O(B[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[3]_INST_0 
       (.I0(Sign_ext[3]),
        .I1(Read_Data2[3]),
        .I2(ALUSrc),
        .O(B[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[4]_INST_0 
       (.I0(Sign_ext[4]),
        .I1(Read_Data2[4]),
        .I2(ALUSrc),
        .O(B[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[5]_INST_0 
       (.I0(Sign_ext[5]),
        .I1(Read_Data2[5]),
        .I2(ALUSrc),
        .O(B[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[6]_INST_0 
       (.I0(Sign_ext[6]),
        .I1(Read_Data2[6]),
        .I2(ALUSrc),
        .O(B[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[7]_INST_0 
       (.I0(Sign_ext[7]),
        .I1(Read_Data2[7]),
        .I2(ALUSrc),
        .O(B[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[8]_INST_0 
       (.I0(Sign_ext[8]),
        .I1(Read_Data2[8]),
        .I2(ALUSrc),
        .O(B[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \B[9]_INST_0 
       (.I0(Sign_ext[9]),
        .I1(Read_Data2[9]),
        .I2(ALUSrc),
        .O(B[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
