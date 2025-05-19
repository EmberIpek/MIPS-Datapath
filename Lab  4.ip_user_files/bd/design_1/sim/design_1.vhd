--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Sun Apr 13 20:02:09 2025
--Host        : Ember running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    ALUout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Carryout : out STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Overflow : out STD_LOGIC;
    PCOut : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Zero : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=31,numReposBlks=31,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=20,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_pc_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    NextAddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CurrAddr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_pc_0_0;
  component design_1_pcadder_0_0 is
  port (
    CurrAddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    NextAddr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_pcadder_0_0;
  component design_1_instmem_0_0 is
  port (
    addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_instmem_0_0;
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component design_1_xlslice_0_0;
  component design_1_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_xlslice_0_1;
  component design_1_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_xlslice_0_2;
  component design_1_xlslice_0_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_xlslice_0_3;
  component design_1_xlslice_0_4 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_xlslice_0_4;
  component design_1_xlslice_0_5 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlslice_0_5;
  component design_1_xlslice_0_6 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component design_1_xlslice_0_6;
  component design_1_sign_ext_0_0 is
  port (
    imm : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ext_imm : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_sign_ext_0_0;
  component design_1_RegDstMux_0_0 is
  port (
    Rt : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Rd : in STD_LOGIC_VECTOR ( 4 downto 0 );
    RegDst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    WriteReg : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_RegDstMux_0_0;
  component design_1_RegFile_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    write_en : in STD_LOGIC;
    read_reg1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    read_reg2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    write_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_data1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_data2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_RegFile_0_0;
  component design_1_control_0_0 is
  port (
    Opcode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    RegDst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ALUOp : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ALUSrc : out STD_LOGIC;
    RegWrite : out STD_LOGIC;
    MemtoReg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MemRead : out STD_LOGIC;
    MemWrite : out STD_LOGIC;
    Branch : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_control_0_0;
  component design_1_ALUSrcMux_0_0 is
  port (
    Read_Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Sign_ext : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUSrc : in STD_LOGIC;
    B : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_ALUSrcMux_0_0;
  component design_1_alu_control_0_0 is
  port (
    Funct : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ALUCntl : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ALUOp : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component design_1_alu_control_0_0;
  component design_1_alu_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Shamt : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ALUCntl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Zero : out STD_LOGIC;
    Overflow : out STD_LOGIC;
    Carryout : out STD_LOGIC;
    ALUout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_alu_0_0;
  component design_1_xlslice_0_7 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_xlslice_0_7;
  component design_1_DataMem_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWrite : in STD_LOGIC;
    MemRead : in STD_LOGIC;
    ReadData : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_DataMem_0_0;
  component design_1_WriteBackMux_0_0 is
  port (
    ALUOut : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemtoReg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PCAdder : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_WriteBackMux_0_0;
  component design_1_branch_logic_0_0 is
  port (
    Branch : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Zero : in STD_LOGIC;
    Branch_out : out STD_LOGIC
  );
  end component design_1_branch_logic_0_0;
  component design_1_shift_left_two_0_0 is
  port (
    ext_imm : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sl2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_shift_left_two_0_0;
  component design_1_branch_adder_0_0 is
  port (
    NextAddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sl2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BranchTarget : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_branch_adder_0_0;
  component design_1_BranchMux_0_0 is
  port (
    BranchTarget : in STD_LOGIC_VECTOR ( 31 downto 0 );
    NextAddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Branch_out : in STD_LOGIC;
    NextAddr_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_BranchMux_0_0;
  component design_1_shift_left_two_1_0 is
  port (
    ext_imm : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sl2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_shift_left_two_1_0;
  component design_1_xlslice_0_8 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 27 downto 0 )
  );
  end component design_1_xlslice_0_8;
  component design_1_xlslice_0_9 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_xlslice_0_9;
  component design_1_jumpLogic_0_0 is
  port (
    Opcode : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Funct : in STD_LOGIC_VECTOR ( 5 downto 0 );
    JumpSrc : out STD_LOGIC;
    JumpOut : out STD_LOGIC
  );
  end component design_1_jumpLogic_0_0;
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 27 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_xlconcat_0_0;
  component design_1_jumpOutMux_0_0 is
  port (
    jumpLogic : in STD_LOGIC;
    branchMux : in STD_LOGIC_VECTOR ( 31 downto 0 );
    jumpTarget : in STD_LOGIC_VECTOR ( 31 downto 0 );
    nextAddr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_jumpOutMux_0_0;
  component design_1_jmpSrcMux_0_0 is
  port (
    Rs : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    JumpSrc : in STD_LOGIC;
    JumpTarget : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_jmpSrcMux_0_0;
  signal ALUSrcMux_0_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Address_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BranchMux_0_NextAddr_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DataMem_0_ReadData : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Funct_Dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal Immediate_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Opcode_Dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal PCOut_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Rd_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal RegDstMux_0_WriteReg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal RegFile_0_read_data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RegFile_0_read_data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Rs_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Rt_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Shamt_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal WriteBackMux_0_Dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal alu_0_ALUout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal alu_0_Carryout : STD_LOGIC;
  signal alu_0_Overflow : STD_LOGIC;
  signal alu_0_Zero : STD_LOGIC;
  signal alu_control_0_ALUCntl : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal branch_adder_0_BranchTarget : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal branch_logic_0_Branch_out : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal control_0_ALUOp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal control_0_ALUSrc : STD_LOGIC;
  signal control_0_Branch : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_0_MemRead : STD_LOGIC;
  signal control_0_MemWrite : STD_LOGIC;
  signal control_0_MemtoReg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_0_RegDst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_0_RegWrite : STD_LOGIC;
  signal en_1 : STD_LOGIC;
  signal instmem_0_inst_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jmpSrcMux_0_JumpTarget : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal jumpLogic_0_JumpOut : STD_LOGIC;
  signal jumpLogic_0_JumpSrc : STD_LOGIC;
  signal jumpOutMux_0_nextAddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pcAdder_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pc_0_CurrAddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pcadder_0_NextAddr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rst_1 : STD_LOGIC;
  signal shift_left_two_0_sl2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal shift_left_two_1_sl2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sign_ext_0_ext_imm : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sl2_Dout : STD_LOGIC_VECTOR ( 27 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN design_1_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of en : signal is "xilinx.com:signal:clockenable:1.0 CE.EN CE";
  attribute X_INTERFACE_PARAMETER of en : signal is "XIL_INTERFACENAME CE.EN, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of Dout : signal is "xilinx.com:signal:data:1.0 DATA.DOUT DATA";
  attribute X_INTERFACE_PARAMETER of Dout : signal is "XIL_INTERFACENAME DATA.DOUT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of PCOut : signal is "xilinx.com:signal:data:1.0 DATA.PCOUT DATA";
  attribute X_INTERFACE_PARAMETER of PCOut : signal is "XIL_INTERFACENAME DATA.PCOUT, LAYERED_METADATA undef";
begin
  ALUout(31 downto 0) <= alu_0_ALUout(31 downto 0);
  Carryout <= alu_0_Carryout;
  Dout(31 downto 0) <= WriteBackMux_0_Dout(31 downto 0);
  Overflow <= alu_0_Overflow;
  PCOut(4 downto 0) <= PCOut_Dout(4 downto 0);
  Zero <= alu_0_Zero;
  clk_1 <= clk;
  en_1 <= en;
  rst_1 <= rst;
ALUSrcMux_0: component design_1_ALUSrcMux_0_0
     port map (
      ALUSrc => control_0_ALUSrc,
      B(31 downto 0) => ALUSrcMux_0_B(31 downto 0),
      Read_Data2(31 downto 0) => RegFile_0_read_data2(31 downto 0),
      Sign_ext(31 downto 0) => sign_ext_0_ext_imm(31 downto 0)
    );
Address: component design_1_xlconcat_0_0
     port map (
      In0(27 downto 0) => sl2_Dout(27 downto 0),
      In1(3 downto 0) => pcAdder_Dout(3 downto 0),
      dout(31 downto 0) => Address_dout(31 downto 0)
    );
BranchMux_0: component design_1_BranchMux_0_0
     port map (
      BranchTarget(31 downto 0) => branch_adder_0_BranchTarget(31 downto 0),
      Branch_out => branch_logic_0_Branch_out,
      NextAddr(31 downto 0) => pcadder_0_NextAddr(31 downto 0),
      NextAddr_out(31 downto 0) => BranchMux_0_NextAddr_out(31 downto 0)
    );
DataMem_0: component design_1_DataMem_0_0
     port map (
      MemRead => control_0_MemRead,
      MemWrite => control_0_MemWrite,
      ReadData(31 downto 0) => DataMem_0_ReadData(31 downto 0),
      WriteData(31 downto 0) => RegFile_0_read_data2(31 downto 0),
      addr(31 downto 0) => alu_0_ALUout(31 downto 0),
      clk => clk_1,
      en => en_1
    );
Funct: component design_1_xlslice_0_6
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(5 downto 0) => Funct_Dout(5 downto 0)
    );
Immediate: component design_1_xlslice_0_5
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(15 downto 0) => Immediate_Dout(15 downto 0)
    );
Opcode: component design_1_xlslice_0_0
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(5 downto 0) => Opcode_Dout(5 downto 0)
    );
pcout_RnM: component design_1_xlslice_0_7
     port map (
      Din(31 downto 0) => pc_0_CurrAddr(31 downto 0),
      Dout(4 downto 0) => PCOut_Dout(4 downto 0)
    );
Rd: component design_1_xlslice_0_3
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(4 downto 0) => Rd_Dout(4 downto 0)
    );
RegDstMux_0: component design_1_RegDstMux_0_0
     port map (
      Rd(4 downto 0) => Rd_Dout(4 downto 0),
      RegDst(1 downto 0) => control_0_RegDst(1 downto 0),
      Rt(4 downto 0) => Rt_Dout(4 downto 0),
      WriteReg(4 downto 0) => RegDstMux_0_WriteReg(4 downto 0)
    );
RegFile_0: component design_1_RegFile_0_0
     port map (
      clk => clk_1,
      en => en_1,
      read_data1(31 downto 0) => RegFile_0_read_data1(31 downto 0),
      read_data2(31 downto 0) => RegFile_0_read_data2(31 downto 0),
      read_reg1(4 downto 0) => Rs_Dout(4 downto 0),
      read_reg2(4 downto 0) => Rt_Dout(4 downto 0),
      write_data(31 downto 0) => WriteBackMux_0_Dout(31 downto 0),
      write_en => control_0_RegWrite,
      write_reg(4 downto 0) => RegDstMux_0_WriteReg(4 downto 0)
    );
Rs: component design_1_xlslice_0_1
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(4 downto 0) => Rs_Dout(4 downto 0)
    );
Rt: component design_1_xlslice_0_2
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(4 downto 0) => Rt_Dout(4 downto 0)
    );
Shamt: component design_1_xlslice_0_4
     port map (
      Din(31 downto 0) => instmem_0_inst_out(31 downto 0),
      Dout(4 downto 0) => Shamt_Dout(4 downto 0)
    );
WriteBackMux_0: component design_1_WriteBackMux_0_0
     port map (
      ALUOut(31 downto 0) => alu_0_ALUout(31 downto 0),
      Dout(31 downto 0) => WriteBackMux_0_Dout(31 downto 0),
      MemtoReg(1 downto 0) => control_0_MemtoReg(1 downto 0),
      PCAdder(31 downto 0) => pcadder_0_NextAddr(31 downto 0),
      ReadData(31 downto 0) => DataMem_0_ReadData(31 downto 0)
    );
alu_0: component design_1_alu_0_0
     port map (
      A(31 downto 0) => RegFile_0_read_data1(31 downto 0),
      ALUCntl(3 downto 0) => alu_control_0_ALUCntl(3 downto 0),
      ALUout(31 downto 0) => alu_0_ALUout(31 downto 0),
      B(31 downto 0) => ALUSrcMux_0_B(31 downto 0),
      Carryout => alu_0_Carryout,
      Overflow => alu_0_Overflow,
      Shamt(4 downto 0) => Shamt_Dout(4 downto 0),
      Zero => alu_0_Zero
    );
alu_control_0: component design_1_alu_control_0_0
     port map (
      ALUCntl(3 downto 0) => alu_control_0_ALUCntl(3 downto 0),
      ALUOp(2 downto 0) => control_0_ALUOp(2 downto 0),
      Funct(5 downto 0) => Funct_Dout(5 downto 0)
    );
branch_adder_0: component design_1_branch_adder_0_0
     port map (
      BranchTarget(31 downto 0) => branch_adder_0_BranchTarget(31 downto 0),
      NextAddr(31 downto 0) => pcadder_0_NextAddr(31 downto 0),
      sl2(31 downto 0) => shift_left_two_0_sl2(31 downto 0)
    );
branch_logic_0: component design_1_branch_logic_0_0
     port map (
      Branch(1 downto 0) => control_0_Branch(1 downto 0),
      Branch_out => branch_logic_0_Branch_out,
      Zero => alu_0_Zero
    );
control_0: component design_1_control_0_0
     port map (
      ALUOp(2 downto 0) => control_0_ALUOp(2 downto 0),
      ALUSrc => control_0_ALUSrc,
      Branch(1 downto 0) => control_0_Branch(1 downto 0),
      MemRead => control_0_MemRead,
      MemWrite => control_0_MemWrite,
      MemtoReg(1 downto 0) => control_0_MemtoReg(1 downto 0),
      Opcode(5 downto 0) => Opcode_Dout(5 downto 0),
      RegDst(1 downto 0) => control_0_RegDst(1 downto 0),
      RegWrite => control_0_RegWrite
    );
instmem_0: component design_1_instmem_0_0
     port map (
      addr(31 downto 0) => pc_0_CurrAddr(31 downto 0),
      inst_out(31 downto 0) => instmem_0_inst_out(31 downto 0)
    );
jmpSrcMux_0: component design_1_jmpSrcMux_0_0
     port map (
      Address(31 downto 0) => Address_dout(31 downto 0),
      JumpSrc => jumpLogic_0_JumpSrc,
      JumpTarget(31 downto 0) => jmpSrcMux_0_JumpTarget(31 downto 0),
      Rs(31 downto 0) => RegFile_0_read_data1(31 downto 0)
    );
jumpLogic_0: component design_1_jumpLogic_0_0
     port map (
      Funct(5 downto 0) => Funct_Dout(5 downto 0),
      JumpOut => jumpLogic_0_JumpOut,
      JumpSrc => jumpLogic_0_JumpSrc,
      Opcode(5 downto 0) => Opcode_Dout(5 downto 0)
    );
jumpOutMux_0: component design_1_jumpOutMux_0_0
     port map (
      branchMux(31 downto 0) => BranchMux_0_NextAddr_out(31 downto 0),
      jumpLogic => jumpLogic_0_JumpOut,
      jumpTarget(31 downto 0) => jmpSrcMux_0_JumpTarget(31 downto 0),
      nextAddr(31 downto 0) => jumpOutMux_0_nextAddr(31 downto 0)
    );
pcAdder: component design_1_xlslice_0_9
     port map (
      Din(31 downto 0) => pcadder_0_NextAddr(31 downto 0),
      Dout(3 downto 0) => pcAdder_Dout(3 downto 0)
    );
pc_0: component design_1_pc_0_0
     port map (
      CurrAddr(31 downto 0) => pc_0_CurrAddr(31 downto 0),
      NextAddr(31 downto 0) => jumpOutMux_0_nextAddr(31 downto 0),
      clk => clk_1,
      en => en_1,
      rst => rst_1
    );
pcadder_0: component design_1_pcadder_0_0
     port map (
      CurrAddr(31 downto 0) => pc_0_CurrAddr(31 downto 0),
      NextAddr(31 downto 0) => pcadder_0_NextAddr(31 downto 0)
    );
shift_left_two_0: component design_1_shift_left_two_0_0
     port map (
      ext_imm(31 downto 0) => sign_ext_0_ext_imm(31 downto 0),
      sl2(31 downto 0) => shift_left_two_0_sl2(31 downto 0)
    );
shift_left_two_1: component design_1_shift_left_two_1_0
     port map (
      ext_imm(31 downto 0) => instmem_0_inst_out(31 downto 0),
      sl2(31 downto 0) => shift_left_two_1_sl2(31 downto 0)
    );
sign_ext_0: component design_1_sign_ext_0_0
     port map (
      ext_imm(31 downto 0) => sign_ext_0_ext_imm(31 downto 0),
      imm(15 downto 0) => Immediate_Dout(15 downto 0)
    );
sl2: component design_1_xlslice_0_8
     port map (
      Din(31 downto 0) => shift_left_two_1_sl2(31 downto 0),
      Dout(27 downto 0) => sl2_Dout(27 downto 0)
    );
end STRUCTURE;
