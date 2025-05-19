-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Mar 31 22:39:15 2025
-- Host        : Ember running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/ember/Documents/ECE 445 Computer Organization/Labs/Lab  4/Lab
--               4.gen/sources_1/bd/design_1/ip/design_1_ALUSrcMux_0_0/design_1_ALUSrcMux_0_0_sim_netlist.vhdl}
-- Design      : design_1_ALUSrcMux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALUSrcMux_0_0_ALUSrcMux is
  port (
    B : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Sign_ext : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Read_Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUSrc : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ALUSrcMux_0_0_ALUSrcMux : entity is "ALUSrcMux";
end design_1_ALUSrcMux_0_0_ALUSrcMux;

architecture STRUCTURE of design_1_ALUSrcMux_0_0_ALUSrcMux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \B[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \B[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \B[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \B[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \B[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \B[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \B[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \B[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \B[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \B[18]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \B[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \B[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \B[20]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \B[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \B[22]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \B[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \B[24]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \B[25]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \B[26]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \B[27]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \B[28]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \B[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \B[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \B[30]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \B[31]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \B[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \B[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \B[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \B[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \B[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \B[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \B[9]_INST_0\ : label is "soft_lutpair4";
begin
\B[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(0),
      I1 => Read_Data2(0),
      I2 => ALUSrc,
      O => B(0)
    );
\B[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(10),
      I1 => Read_Data2(10),
      I2 => ALUSrc,
      O => B(10)
    );
\B[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(11),
      I1 => Read_Data2(11),
      I2 => ALUSrc,
      O => B(11)
    );
\B[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(12),
      I1 => Read_Data2(12),
      I2 => ALUSrc,
      O => B(12)
    );
\B[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(13),
      I1 => Read_Data2(13),
      I2 => ALUSrc,
      O => B(13)
    );
\B[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(14),
      I1 => Read_Data2(14),
      I2 => ALUSrc,
      O => B(14)
    );
\B[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(15),
      I1 => Read_Data2(15),
      I2 => ALUSrc,
      O => B(15)
    );
\B[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(16),
      I1 => Read_Data2(16),
      I2 => ALUSrc,
      O => B(16)
    );
\B[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(17),
      I1 => Read_Data2(17),
      I2 => ALUSrc,
      O => B(17)
    );
\B[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(18),
      I1 => Read_Data2(18),
      I2 => ALUSrc,
      O => B(18)
    );
\B[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(19),
      I1 => Read_Data2(19),
      I2 => ALUSrc,
      O => B(19)
    );
\B[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(1),
      I1 => Read_Data2(1),
      I2 => ALUSrc,
      O => B(1)
    );
\B[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(20),
      I1 => Read_Data2(20),
      I2 => ALUSrc,
      O => B(20)
    );
\B[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(21),
      I1 => Read_Data2(21),
      I2 => ALUSrc,
      O => B(21)
    );
\B[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(22),
      I1 => Read_Data2(22),
      I2 => ALUSrc,
      O => B(22)
    );
\B[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(23),
      I1 => Read_Data2(23),
      I2 => ALUSrc,
      O => B(23)
    );
\B[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(24),
      I1 => Read_Data2(24),
      I2 => ALUSrc,
      O => B(24)
    );
\B[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(25),
      I1 => Read_Data2(25),
      I2 => ALUSrc,
      O => B(25)
    );
\B[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(26),
      I1 => Read_Data2(26),
      I2 => ALUSrc,
      O => B(26)
    );
\B[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(27),
      I1 => Read_Data2(27),
      I2 => ALUSrc,
      O => B(27)
    );
\B[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(28),
      I1 => Read_Data2(28),
      I2 => ALUSrc,
      O => B(28)
    );
\B[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(29),
      I1 => Read_Data2(29),
      I2 => ALUSrc,
      O => B(29)
    );
\B[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(2),
      I1 => Read_Data2(2),
      I2 => ALUSrc,
      O => B(2)
    );
\B[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(30),
      I1 => Read_Data2(30),
      I2 => ALUSrc,
      O => B(30)
    );
\B[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(31),
      I1 => Read_Data2(31),
      I2 => ALUSrc,
      O => B(31)
    );
\B[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(3),
      I1 => Read_Data2(3),
      I2 => ALUSrc,
      O => B(3)
    );
\B[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(4),
      I1 => Read_Data2(4),
      I2 => ALUSrc,
      O => B(4)
    );
\B[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(5),
      I1 => Read_Data2(5),
      I2 => ALUSrc,
      O => B(5)
    );
\B[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(6),
      I1 => Read_Data2(6),
      I2 => ALUSrc,
      O => B(6)
    );
\B[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(7),
      I1 => Read_Data2(7),
      I2 => ALUSrc,
      O => B(7)
    );
\B[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(8),
      I1 => Read_Data2(8),
      I2 => ALUSrc,
      O => B(8)
    );
\B[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Sign_ext(9),
      I1 => Read_Data2(9),
      I2 => ALUSrc,
      O => B(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ALUSrcMux_0_0 is
  port (
    Read_Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Sign_ext : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUSrc : in STD_LOGIC;
    B : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ALUSrcMux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ALUSrcMux_0_0 : entity is "design_1_ALUSrcMux_0_0,ALUSrcMux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_ALUSrcMux_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_ALUSrcMux_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_ALUSrcMux_0_0 : entity is "ALUSrcMux,Vivado 2023.2";
end design_1_ALUSrcMux_0_0;

architecture STRUCTURE of design_1_ALUSrcMux_0_0 is
begin
U0: entity work.design_1_ALUSrcMux_0_0_ALUSrcMux
     port map (
      ALUSrc => ALUSrc,
      B(31 downto 0) => B(31 downto 0),
      Read_Data2(31 downto 0) => Read_Data2(31 downto 0),
      Sign_ext(31 downto 0) => Sign_ext(31 downto 0)
    );
end STRUCTURE;
