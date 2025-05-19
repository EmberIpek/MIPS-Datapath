// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Mar 31 22:46:36 2025
// Host        : Ember running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/ember/Documents/ECE 445 Computer Organization/Labs/Lab
//               4/Lab  4.gen/sources_1/bd/design_1/ip/design_1_pc_0_0/design_1_pc_0_0_sim_netlist.v}
// Design      : design_1_pc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pc_0_0,pc,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pc,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_pc_0_0
   (clk,
    rst,
    en,
    NextAddr,
    CurrAddr);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input en;
  input [31:0]NextAddr;
  output [31:0]CurrAddr;

  wire [31:0]CurrAddr;
  wire [31:0]NextAddr;
  wire clk;
  wire en;
  wire rst;

  design_1_pc_0_0_pc U0
       (.CurrAddr(CurrAddr),
        .NextAddr(NextAddr),
        .clk(clk),
        .en(en),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "pc" *) 
module design_1_pc_0_0_pc
   (CurrAddr,
    rst,
    en,
    NextAddr,
    clk);
  output [31:0]CurrAddr;
  input rst;
  input en;
  input [31:0]NextAddr;
  input clk;

  wire [31:0]CurrAddr;
  wire [31:0]NextAddr;
  wire clk;
  wire en;
  wire rst;

  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[0] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[0]),
        .Q(CurrAddr[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[10] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[10]),
        .Q(CurrAddr[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[11] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[11]),
        .Q(CurrAddr[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[12] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[12]),
        .Q(CurrAddr[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[13] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[13]),
        .Q(CurrAddr[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[14] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[14]),
        .Q(CurrAddr[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[15] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[15]),
        .Q(CurrAddr[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[16] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[16]),
        .Q(CurrAddr[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[17] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[17]),
        .Q(CurrAddr[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[18] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[18]),
        .Q(CurrAddr[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[19] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[19]),
        .Q(CurrAddr[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[1] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[1]),
        .Q(CurrAddr[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[20] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[20]),
        .Q(CurrAddr[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[21] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[21]),
        .Q(CurrAddr[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[22] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[22]),
        .Q(CurrAddr[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[23] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[23]),
        .Q(CurrAddr[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[24] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[24]),
        .Q(CurrAddr[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[25] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[25]),
        .Q(CurrAddr[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[26] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[26]),
        .Q(CurrAddr[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[27] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[27]),
        .Q(CurrAddr[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[28] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[28]),
        .Q(CurrAddr[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[29] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[29]),
        .Q(CurrAddr[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[2] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[2]),
        .Q(CurrAddr[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[30] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[30]),
        .Q(CurrAddr[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[31] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[31]),
        .Q(CurrAddr[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[3] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[3]),
        .Q(CurrAddr[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[4] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[4]),
        .Q(CurrAddr[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[5] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[5]),
        .Q(CurrAddr[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[6] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[6]),
        .Q(CurrAddr[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[7] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[7]),
        .Q(CurrAddr[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[8] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[8]),
        .Q(CurrAddr[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_reg[9] 
       (.C(clk),
        .CE(en),
        .D(NextAddr[9]),
        .Q(CurrAddr[9]),
        .R(rst));
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
