--Author: Ember Ipek
--Date: 4/10/2025

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--This unit is an expansion of the overall control unit which calculates whether to
--place the Jump target address in the PC based on the opcode field of the
--instruction.

entity jumpLogic is
    port(Opcode: in std_logic_vector(5 downto 0);
         Funct: in std_logic_vector(5 downto 0);
         JumpSrc: out std_logic;
         JumpOut: out std_logic
         );
end jumpLogic;

architecture Behavioral of jumpLogic is

begin
    --Because Jump Register is an R-type instruction, Jump Logic must check both the
    --opcode and funct fields. Jump Logic now also sets the select signal to choose
    --between the jump target address and RF[RS] as the jump address.
    JumpSrc <= '0' when (Opcode = "000010") else --j
               '0' when (Opcode = "000011") else --jal
               '1' when (Opcode = "000000" and Funct = "001000") else --jr
               '1';
    --'1' when (Opcode = "000000") else '0';
    
    JumpOut <= '1' when (Opcode = "000010") else --j
               '1' when (Opcode = "000011") else --jal
               '1' when (Opcode = "000000" and Funct = "001000") else --jr
               '0';
               
end Behavioral;
