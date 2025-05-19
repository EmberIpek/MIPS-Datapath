// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Mar 31 22:41:28 2025
// Host        : Ember running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/ember/Documents/ECE 445 Computer Organization/Labs/Lab
//               4/Lab  4.gen/sources_1/bd/design_1/ip/design_1_RegFile_0_0/design_1_RegFile_0_0_sim_netlist.v}
// Design      : design_1_RegFile_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_RegFile_0_0,RegFile,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "RegFile,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_RegFile_0_0
   (clk,
    en,
    write_en,
    read_reg1,
    read_reg2,
    write_reg,
    write_data,
    read_data1,
    read_data2);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0" *) input clk;
  input en;
  input write_en;
  input [4:0]read_reg1;
  input [4:0]read_reg2;
  input [4:0]write_reg;
  input [31:0]write_data;
  output [31:0]read_data1;
  output [31:0]read_data2;

  wire clk;
  wire en;
  wire [31:0]read_data1;
  wire [31:0]read_data2;
  wire [4:0]read_reg1;
  wire [4:0]read_reg2;
  wire [31:0]write_data;
  wire write_en;
  wire [4:0]write_reg;

  design_1_RegFile_0_0_RegFile U0
       (.clk(clk),
        .en(en),
        .read_data1(read_data1),
        .read_data2(read_data2),
        .read_reg1(read_reg1),
        .read_reg2(read_reg2),
        .write_data(write_data),
        .write_en(write_en),
        .write_reg(write_reg));
endmodule

(* ORIG_REF_NAME = "RegFile" *) 
module design_1_RegFile_0_0_RegFile
   (read_data1,
    read_data2,
    clk,
    write_data,
    write_reg,
    read_reg1,
    read_reg2,
    write_en,
    en);
  output [31:0]read_data1;
  output [31:0]read_data2;
  input clk;
  input [31:0]write_data;
  input [4:0]write_reg;
  input [4:0]read_reg1;
  input [4:0]read_reg2;
  input write_en;
  input en;

  wire clk;
  wire en;
  wire p_0_in;
  wire p_1_in;
  wire [31:0]read_data1;
  wire [31:0]read_data2;
  wire [4:0]read_reg1;
  wire [4:0]read_reg2;
  wire [31:0]write_data;
  wire write_en;
  wire [4:0]write_reg;
  wire [1:0]NLW_RAM_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_RAM_reg_r1_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_RAM_reg_r1_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_RAM_reg_r2_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_RAM_reg_r2_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r1_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0009393939390000),
    .INIT_B(64'h000A95403FEA0000),
    .INIT_C(64'h0005555540000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r1_0_31_0_5
       (.ADDRA(read_reg1),
        .ADDRB(read_reg1),
        .ADDRC(read_reg1),
        .ADDRD(write_reg),
        .DIA(write_data[1:0]),
        .DIB(write_data[3:2]),
        .DIC(write_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(read_data1[1:0]),
        .DOB(read_data1[3:2]),
        .DOC(read_data1[5:4]),
        .DOD(NLW_RAM_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r1_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r1_0_31_12_17
       (.ADDRA(read_reg1),
        .ADDRB(read_reg1),
        .ADDRC(read_reg1),
        .ADDRD(write_reg),
        .DIA(write_data[13:12]),
        .DIB(write_data[15:14]),
        .DIC(write_data[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(read_data1[13:12]),
        .DOB(read_data1[15:14]),
        .DOC(read_data1[17:16]),
        .DOD(NLW_RAM_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r1_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r1_0_31_18_23
       (.ADDRA(read_reg1),
        .ADDRB(read_reg1),
        .ADDRC(read_reg1),
        .ADDRD(write_reg),
        .DIA(write_data[19:18]),
        .DIB(write_data[21:20]),
        .DIC(write_data[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(read_data1[19:18]),
        .DOB(read_data1[21:20]),
        .DOC(read_data1[23:22]),
        .DOD(NLW_RAM_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r1_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r1_0_31_24_29
       (.ADDRA(read_reg1),
        .ADDRB(read_reg1),
        .ADDRC(read_reg1),
        .ADDRD(write_reg),
        .DIA(write_data[25:24]),
        .DIB(write_data[27:26]),
        .DIC(write_data[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(read_data1[25:24]),
        .DOB(read_data1[27:26]),
        .DOC(read_data1[29:28]),
        .DOD(NLW_RAM_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    RAM_reg_r1_0_31_30_31
       (.A0(write_reg[0]),
        .A1(write_reg[1]),
        .A2(write_reg[2]),
        .A3(write_reg[3]),
        .A4(write_reg[4]),
        .D(write_data[30]),
        .DPO(read_data1[30]),
        .DPRA0(read_reg1[0]),
        .DPRA1(read_reg1[1]),
        .DPRA2(read_reg1[2]),
        .DPRA3(read_reg1[3]),
        .DPRA4(read_reg1[4]),
        .SPO(NLW_RAM_reg_r1_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    RAM_reg_r1_0_31_30_31__0
       (.A0(write_reg[0]),
        .A1(write_reg[1]),
        .A2(write_reg[2]),
        .A3(write_reg[3]),
        .A4(write_reg[4]),
        .D(write_data[31]),
        .DPO(read_data1[31]),
        .DPRA0(read_reg1[0]),
        .DPRA1(read_reg1[1]),
        .DPRA2(read_reg1[2]),
        .DPRA3(read_reg1[3]),
        .DPRA4(read_reg1[4]),
        .SPO(NLW_RAM_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_r1_0_31_30_31_i_1
       (.I0(write_en),
        .I1(en),
        .I2(p_1_in),
        .O(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r1_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r1_0_31_6_11
       (.ADDRA(read_reg1),
        .ADDRB(read_reg1),
        .ADDRC(read_reg1),
        .ADDRD(write_reg),
        .DIA(write_data[7:6]),
        .DIB(write_data[9:8]),
        .DIC(write_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(read_data1[7:6]),
        .DOB(read_data1[9:8]),
        .DOC(read_data1[11:10]),
        .DOD(NLW_RAM_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r2_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0009393939390000),
    .INIT_B(64'h000A95403FEA0000),
    .INIT_C(64'h0005555540000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r2_0_31_0_5
       (.ADDRA(read_reg2),
        .ADDRB(read_reg2),
        .ADDRC(read_reg2),
        .ADDRD(write_reg),
        .DIA(write_data[1:0]),
        .DIB(write_data[3:2]),
        .DIC(write_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(read_data2[1:0]),
        .DOB(read_data2[3:2]),
        .DOC(read_data2[5:4]),
        .DOD(NLW_RAM_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r2_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r2_0_31_12_17
       (.ADDRA(read_reg2),
        .ADDRB(read_reg2),
        .ADDRC(read_reg2),
        .ADDRD(write_reg),
        .DIA(write_data[13:12]),
        .DIB(write_data[15:14]),
        .DIC(write_data[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(read_data2[13:12]),
        .DOB(read_data2[15:14]),
        .DOC(read_data2[17:16]),
        .DOD(NLW_RAM_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r2_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r2_0_31_18_23
       (.ADDRA(read_reg2),
        .ADDRB(read_reg2),
        .ADDRC(read_reg2),
        .ADDRD(write_reg),
        .DIA(write_data[19:18]),
        .DIB(write_data[21:20]),
        .DIC(write_data[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(read_data2[19:18]),
        .DOB(read_data2[21:20]),
        .DOC(read_data2[23:22]),
        .DOD(NLW_RAM_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r2_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r2_0_31_24_29
       (.ADDRA(read_reg2),
        .ADDRB(read_reg2),
        .ADDRC(read_reg2),
        .ADDRD(write_reg),
        .DIA(write_data[25:24]),
        .DIB(write_data[27:26]),
        .DIC(write_data[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(read_data2[25:24]),
        .DOB(read_data2[27:26]),
        .DOC(read_data2[29:28]),
        .DOD(NLW_RAM_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    RAM_reg_r2_0_31_30_31
       (.A0(write_reg[0]),
        .A1(write_reg[1]),
        .A2(write_reg[2]),
        .A3(write_reg[3]),
        .A4(write_reg[4]),
        .D(write_data[30]),
        .DPO(read_data2[30]),
        .DPRA0(read_reg2[0]),
        .DPRA1(read_reg2[1]),
        .DPRA2(read_reg2[2]),
        .DPRA3(read_reg2[3]),
        .DPRA4(read_reg2[4]),
        .SPO(NLW_RAM_reg_r2_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    RAM_reg_r2_0_31_30_31__0
       (.A0(write_reg[0]),
        .A1(write_reg[1]),
        .A2(write_reg[2]),
        .A3(write_reg[3]),
        .A4(write_reg[4]),
        .D(write_data[31]),
        .DPO(read_data2[31]),
        .DPRA0(read_reg2[0]),
        .DPRA1(read_reg2[1]),
        .DPRA2(read_reg2[2]),
        .DPRA3(read_reg2[3]),
        .DPRA4(read_reg2[4]),
        .SPO(NLW_RAM_reg_r2_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "U0/RAM_reg_r2_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_r2_0_31_6_11
       (.ADDRA(read_reg2),
        .ADDRB(read_reg2),
        .ADDRC(read_reg2),
        .ADDRD(write_reg),
        .DIA(write_data[7:6]),
        .DIB(write_data[9:8]),
        .DIC(write_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(read_data2[7:6]),
        .DOB(read_data2[9:8]),
        .DOC(read_data2[11:10]),
        .DOD(NLW_RAM_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    p_0_out
       (.I0(write_reg[3]),
        .I1(write_reg[1]),
        .I2(write_reg[0]),
        .I3(write_reg[4]),
        .I4(write_reg[2]),
        .O(p_1_in));
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
