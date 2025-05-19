// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Mar 31 22:47:31 2025
// Host        : Ember running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/ember/Documents/ECE 445 Computer Organization/Labs/Lab
//               4/Lab  4.gen/sources_1/bd/design_1/ip/design_1_pcadder_0_0/design_1_pcadder_0_0_sim_netlist.v}
// Design      : design_1_pcadder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pcadder_0_0,pcadder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pcadder,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_pcadder_0_0
   (CurrAddr,
    NextAddr);
  input [31:0]CurrAddr;
  output [31:0]NextAddr;

  wire [31:0]CurrAddr;
  wire [31:1]\^NextAddr ;

  assign NextAddr[31:1] = \^NextAddr [31:1];
  assign NextAddr[0] = CurrAddr[0];
  design_1_pcadder_0_0_pcadder U0
       (.CurrAddr(CurrAddr[31:1]),
        .NextAddr(\^NextAddr ));
endmodule

(* ORIG_REF_NAME = "pcadder" *) 
module design_1_pcadder_0_0_pcadder
   (NextAddr,
    CurrAddr);
  output [30:0]NextAddr;
  input [30:0]CurrAddr;

  wire [30:0]CurrAddr;
  wire [30:0]NextAddr;
  wire \NextAddr[13]_INST_0_n_0 ;
  wire \NextAddr[13]_INST_0_n_1 ;
  wire \NextAddr[13]_INST_0_n_2 ;
  wire \NextAddr[13]_INST_0_n_3 ;
  wire \NextAddr[17]_INST_0_n_0 ;
  wire \NextAddr[17]_INST_0_n_1 ;
  wire \NextAddr[17]_INST_0_n_2 ;
  wire \NextAddr[17]_INST_0_n_3 ;
  wire \NextAddr[1]_INST_0_i_1_n_0 ;
  wire \NextAddr[1]_INST_0_n_0 ;
  wire \NextAddr[1]_INST_0_n_1 ;
  wire \NextAddr[1]_INST_0_n_2 ;
  wire \NextAddr[1]_INST_0_n_3 ;
  wire \NextAddr[21]_INST_0_n_0 ;
  wire \NextAddr[21]_INST_0_n_1 ;
  wire \NextAddr[21]_INST_0_n_2 ;
  wire \NextAddr[21]_INST_0_n_3 ;
  wire \NextAddr[25]_INST_0_n_0 ;
  wire \NextAddr[25]_INST_0_n_1 ;
  wire \NextAddr[25]_INST_0_n_2 ;
  wire \NextAddr[25]_INST_0_n_3 ;
  wire \NextAddr[29]_INST_0_n_2 ;
  wire \NextAddr[29]_INST_0_n_3 ;
  wire \NextAddr[5]_INST_0_n_0 ;
  wire \NextAddr[5]_INST_0_n_1 ;
  wire \NextAddr[5]_INST_0_n_2 ;
  wire \NextAddr[5]_INST_0_n_3 ;
  wire \NextAddr[9]_INST_0_n_0 ;
  wire \NextAddr[9]_INST_0_n_1 ;
  wire \NextAddr[9]_INST_0_n_2 ;
  wire \NextAddr[9]_INST_0_n_3 ;
  wire [3:2]\NLW_NextAddr[29]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_NextAddr[29]_INST_0_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \NextAddr[13]_INST_0 
       (.CI(\NextAddr[9]_INST_0_n_0 ),
        .CO({\NextAddr[13]_INST_0_n_0 ,\NextAddr[13]_INST_0_n_1 ,\NextAddr[13]_INST_0_n_2 ,\NextAddr[13]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NextAddr[15:12]),
        .S(CurrAddr[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \NextAddr[17]_INST_0 
       (.CI(\NextAddr[13]_INST_0_n_0 ),
        .CO({\NextAddr[17]_INST_0_n_0 ,\NextAddr[17]_INST_0_n_1 ,\NextAddr[17]_INST_0_n_2 ,\NextAddr[17]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NextAddr[19:16]),
        .S(CurrAddr[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \NextAddr[1]_INST_0 
       (.CI(1'b0),
        .CO({\NextAddr[1]_INST_0_n_0 ,\NextAddr[1]_INST_0_n_1 ,\NextAddr[1]_INST_0_n_2 ,\NextAddr[1]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,CurrAddr[1],1'b0}),
        .O(NextAddr[3:0]),
        .S({CurrAddr[3:2],\NextAddr[1]_INST_0_i_1_n_0 ,CurrAddr[0]}));
  LUT1 #(
    .INIT(2'h1)) 
    \NextAddr[1]_INST_0_i_1 
       (.I0(CurrAddr[1]),
        .O(\NextAddr[1]_INST_0_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \NextAddr[21]_INST_0 
       (.CI(\NextAddr[17]_INST_0_n_0 ),
        .CO({\NextAddr[21]_INST_0_n_0 ,\NextAddr[21]_INST_0_n_1 ,\NextAddr[21]_INST_0_n_2 ,\NextAddr[21]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NextAddr[23:20]),
        .S(CurrAddr[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \NextAddr[25]_INST_0 
       (.CI(\NextAddr[21]_INST_0_n_0 ),
        .CO({\NextAddr[25]_INST_0_n_0 ,\NextAddr[25]_INST_0_n_1 ,\NextAddr[25]_INST_0_n_2 ,\NextAddr[25]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NextAddr[27:24]),
        .S(CurrAddr[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \NextAddr[29]_INST_0 
       (.CI(\NextAddr[25]_INST_0_n_0 ),
        .CO({\NLW_NextAddr[29]_INST_0_CO_UNCONNECTED [3:2],\NextAddr[29]_INST_0_n_2 ,\NextAddr[29]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_NextAddr[29]_INST_0_O_UNCONNECTED [3],NextAddr[30:28]}),
        .S({1'b0,CurrAddr[30:28]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \NextAddr[5]_INST_0 
       (.CI(\NextAddr[1]_INST_0_n_0 ),
        .CO({\NextAddr[5]_INST_0_n_0 ,\NextAddr[5]_INST_0_n_1 ,\NextAddr[5]_INST_0_n_2 ,\NextAddr[5]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NextAddr[7:4]),
        .S(CurrAddr[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \NextAddr[9]_INST_0 
       (.CI(\NextAddr[5]_INST_0_n_0 ),
        .CO({\NextAddr[9]_INST_0_n_0 ,\NextAddr[9]_INST_0_n_1 ,\NextAddr[9]_INST_0_n_2 ,\NextAddr[9]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NextAddr[11:8]),
        .S(CurrAddr[11:8]));
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
