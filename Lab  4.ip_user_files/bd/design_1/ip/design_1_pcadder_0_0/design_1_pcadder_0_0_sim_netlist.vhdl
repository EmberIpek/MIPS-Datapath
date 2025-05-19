-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Mar 31 22:47:31 2025
-- Host        : Ember running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/ember/Documents/ECE 445 Computer Organization/Labs/Lab  4/Lab
--               4.gen/sources_1/bd/design_1/ip/design_1_pcadder_0_0/design_1_pcadder_0_0_sim_netlist.vhdl}
-- Design      : design_1_pcadder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pcadder_0_0_pcadder is
  port (
    NextAddr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    CurrAddr : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pcadder_0_0_pcadder : entity is "pcadder";
end design_1_pcadder_0_0_pcadder;

architecture STRUCTURE of design_1_pcadder_0_0_pcadder is
  signal \NextAddr[13]_INST_0_n_0\ : STD_LOGIC;
  signal \NextAddr[13]_INST_0_n_1\ : STD_LOGIC;
  signal \NextAddr[13]_INST_0_n_2\ : STD_LOGIC;
  signal \NextAddr[13]_INST_0_n_3\ : STD_LOGIC;
  signal \NextAddr[17]_INST_0_n_0\ : STD_LOGIC;
  signal \NextAddr[17]_INST_0_n_1\ : STD_LOGIC;
  signal \NextAddr[17]_INST_0_n_2\ : STD_LOGIC;
  signal \NextAddr[17]_INST_0_n_3\ : STD_LOGIC;
  signal \NextAddr[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \NextAddr[1]_INST_0_n_0\ : STD_LOGIC;
  signal \NextAddr[1]_INST_0_n_1\ : STD_LOGIC;
  signal \NextAddr[1]_INST_0_n_2\ : STD_LOGIC;
  signal \NextAddr[1]_INST_0_n_3\ : STD_LOGIC;
  signal \NextAddr[21]_INST_0_n_0\ : STD_LOGIC;
  signal \NextAddr[21]_INST_0_n_1\ : STD_LOGIC;
  signal \NextAddr[21]_INST_0_n_2\ : STD_LOGIC;
  signal \NextAddr[21]_INST_0_n_3\ : STD_LOGIC;
  signal \NextAddr[25]_INST_0_n_0\ : STD_LOGIC;
  signal \NextAddr[25]_INST_0_n_1\ : STD_LOGIC;
  signal \NextAddr[25]_INST_0_n_2\ : STD_LOGIC;
  signal \NextAddr[25]_INST_0_n_3\ : STD_LOGIC;
  signal \NextAddr[29]_INST_0_n_2\ : STD_LOGIC;
  signal \NextAddr[29]_INST_0_n_3\ : STD_LOGIC;
  signal \NextAddr[5]_INST_0_n_0\ : STD_LOGIC;
  signal \NextAddr[5]_INST_0_n_1\ : STD_LOGIC;
  signal \NextAddr[5]_INST_0_n_2\ : STD_LOGIC;
  signal \NextAddr[5]_INST_0_n_3\ : STD_LOGIC;
  signal \NextAddr[9]_INST_0_n_0\ : STD_LOGIC;
  signal \NextAddr[9]_INST_0_n_1\ : STD_LOGIC;
  signal \NextAddr[9]_INST_0_n_2\ : STD_LOGIC;
  signal \NextAddr[9]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_NextAddr[29]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_NextAddr[29]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \NextAddr[13]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \NextAddr[17]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \NextAddr[1]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \NextAddr[21]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \NextAddr[25]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \NextAddr[29]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \NextAddr[5]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \NextAddr[9]_INST_0\ : label is 35;
begin
\NextAddr[13]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \NextAddr[9]_INST_0_n_0\,
      CO(3) => \NextAddr[13]_INST_0_n_0\,
      CO(2) => \NextAddr[13]_INST_0_n_1\,
      CO(1) => \NextAddr[13]_INST_0_n_2\,
      CO(0) => \NextAddr[13]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NextAddr(15 downto 12),
      S(3 downto 0) => CurrAddr(15 downto 12)
    );
\NextAddr[17]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \NextAddr[13]_INST_0_n_0\,
      CO(3) => \NextAddr[17]_INST_0_n_0\,
      CO(2) => \NextAddr[17]_INST_0_n_1\,
      CO(1) => \NextAddr[17]_INST_0_n_2\,
      CO(0) => \NextAddr[17]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NextAddr(19 downto 16),
      S(3 downto 0) => CurrAddr(19 downto 16)
    );
\NextAddr[1]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NextAddr[1]_INST_0_n_0\,
      CO(2) => \NextAddr[1]_INST_0_n_1\,
      CO(1) => \NextAddr[1]_INST_0_n_2\,
      CO(0) => \NextAddr[1]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => CurrAddr(1),
      DI(0) => '0',
      O(3 downto 0) => NextAddr(3 downto 0),
      S(3 downto 2) => CurrAddr(3 downto 2),
      S(1) => \NextAddr[1]_INST_0_i_1_n_0\,
      S(0) => CurrAddr(0)
    );
\NextAddr[1]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CurrAddr(1),
      O => \NextAddr[1]_INST_0_i_1_n_0\
    );
\NextAddr[21]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \NextAddr[17]_INST_0_n_0\,
      CO(3) => \NextAddr[21]_INST_0_n_0\,
      CO(2) => \NextAddr[21]_INST_0_n_1\,
      CO(1) => \NextAddr[21]_INST_0_n_2\,
      CO(0) => \NextAddr[21]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NextAddr(23 downto 20),
      S(3 downto 0) => CurrAddr(23 downto 20)
    );
\NextAddr[25]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \NextAddr[21]_INST_0_n_0\,
      CO(3) => \NextAddr[25]_INST_0_n_0\,
      CO(2) => \NextAddr[25]_INST_0_n_1\,
      CO(1) => \NextAddr[25]_INST_0_n_2\,
      CO(0) => \NextAddr[25]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NextAddr(27 downto 24),
      S(3 downto 0) => CurrAddr(27 downto 24)
    );
\NextAddr[29]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \NextAddr[25]_INST_0_n_0\,
      CO(3 downto 2) => \NLW_NextAddr[29]_INST_0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \NextAddr[29]_INST_0_n_2\,
      CO(0) => \NextAddr[29]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_NextAddr[29]_INST_0_O_UNCONNECTED\(3),
      O(2 downto 0) => NextAddr(30 downto 28),
      S(3) => '0',
      S(2 downto 0) => CurrAddr(30 downto 28)
    );
\NextAddr[5]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \NextAddr[1]_INST_0_n_0\,
      CO(3) => \NextAddr[5]_INST_0_n_0\,
      CO(2) => \NextAddr[5]_INST_0_n_1\,
      CO(1) => \NextAddr[5]_INST_0_n_2\,
      CO(0) => \NextAddr[5]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NextAddr(7 downto 4),
      S(3 downto 0) => CurrAddr(7 downto 4)
    );
\NextAddr[9]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \NextAddr[5]_INST_0_n_0\,
      CO(3) => \NextAddr[9]_INST_0_n_0\,
      CO(2) => \NextAddr[9]_INST_0_n_1\,
      CO(1) => \NextAddr[9]_INST_0_n_2\,
      CO(0) => \NextAddr[9]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NextAddr(11 downto 8),
      S(3 downto 0) => CurrAddr(11 downto 8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pcadder_0_0 is
  port (
    CurrAddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    NextAddr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pcadder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pcadder_0_0 : entity is "design_1_pcadder_0_0,pcadder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_pcadder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_pcadder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_pcadder_0_0 : entity is "pcadder,Vivado 2023.2";
end design_1_pcadder_0_0;

architecture STRUCTURE of design_1_pcadder_0_0 is
  signal \^curraddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^nextaddr\ : STD_LOGIC_VECTOR ( 31 downto 1 );
begin
  NextAddr(31 downto 1) <= \^nextaddr\(31 downto 1);
  NextAddr(0) <= \^curraddr\(0);
  \^curraddr\(31 downto 0) <= CurrAddr(31 downto 0);
U0: entity work.design_1_pcadder_0_0_pcadder
     port map (
      CurrAddr(30 downto 0) => \^curraddr\(31 downto 1),
      NextAddr(30 downto 0) => \^nextaddr\(31 downto 1)
    );
end STRUCTURE;
