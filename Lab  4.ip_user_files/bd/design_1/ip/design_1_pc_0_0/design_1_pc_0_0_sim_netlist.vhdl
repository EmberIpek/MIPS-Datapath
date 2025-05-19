-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Mar 31 22:46:36 2025
-- Host        : Ember running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/ember/Documents/ECE 445 Computer Organization/Labs/Lab  4/Lab
--               4.gen/sources_1/bd/design_1/ip/design_1_pc_0_0/design_1_pc_0_0_sim_netlist.vhdl}
-- Design      : design_1_pc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pc_0_0_pc is
  port (
    CurrAddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    NextAddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pc_0_0_pc : entity is "pc";
end design_1_pc_0_0_pc;

architecture STRUCTURE of design_1_pc_0_0_pc is
begin
\addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(0),
      Q => CurrAddr(0),
      R => rst
    );
\addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(10),
      Q => CurrAddr(10),
      R => rst
    );
\addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(11),
      Q => CurrAddr(11),
      R => rst
    );
\addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(12),
      Q => CurrAddr(12),
      R => rst
    );
\addr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(13),
      Q => CurrAddr(13),
      R => rst
    );
\addr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(14),
      Q => CurrAddr(14),
      R => rst
    );
\addr_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(15),
      Q => CurrAddr(15),
      R => rst
    );
\addr_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(16),
      Q => CurrAddr(16),
      R => rst
    );
\addr_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(17),
      Q => CurrAddr(17),
      R => rst
    );
\addr_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(18),
      Q => CurrAddr(18),
      R => rst
    );
\addr_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(19),
      Q => CurrAddr(19),
      R => rst
    );
\addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(1),
      Q => CurrAddr(1),
      R => rst
    );
\addr_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(20),
      Q => CurrAddr(20),
      R => rst
    );
\addr_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(21),
      Q => CurrAddr(21),
      R => rst
    );
\addr_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(22),
      Q => CurrAddr(22),
      R => rst
    );
\addr_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(23),
      Q => CurrAddr(23),
      R => rst
    );
\addr_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(24),
      Q => CurrAddr(24),
      R => rst
    );
\addr_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(25),
      Q => CurrAddr(25),
      R => rst
    );
\addr_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(26),
      Q => CurrAddr(26),
      R => rst
    );
\addr_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(27),
      Q => CurrAddr(27),
      R => rst
    );
\addr_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(28),
      Q => CurrAddr(28),
      R => rst
    );
\addr_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(29),
      Q => CurrAddr(29),
      R => rst
    );
\addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(2),
      Q => CurrAddr(2),
      R => rst
    );
\addr_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(30),
      Q => CurrAddr(30),
      R => rst
    );
\addr_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(31),
      Q => CurrAddr(31),
      R => rst
    );
\addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(3),
      Q => CurrAddr(3),
      R => rst
    );
\addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(4),
      Q => CurrAddr(4),
      R => rst
    );
\addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(5),
      Q => CurrAddr(5),
      R => rst
    );
\addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(6),
      Q => CurrAddr(6),
      R => rst
    );
\addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(7),
      Q => CurrAddr(7),
      R => rst
    );
\addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(8),
      Q => CurrAddr(8),
      R => rst
    );
\addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => NextAddr(9),
      Q => CurrAddr(9),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pc_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    NextAddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CurrAddr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pc_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pc_0_0 : entity is "design_1_pc_0_0,pc,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_pc_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_pc_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_pc_0_0 : entity is "pc,Vivado 2023.2";
end design_1_pc_0_0;

architecture STRUCTURE of design_1_pc_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_pc_0_0_pc
     port map (
      CurrAddr(31 downto 0) => CurrAddr(31 downto 0),
      NextAddr(31 downto 0) => NextAddr(31 downto 0),
      clk => clk,
      en => en,
      rst => rst
    );
end STRUCTURE;
