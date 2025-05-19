library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--This unit takes the 16-bit Immediate Field of I-type instructions and sign-extends it to 32-bits
entity sign_ext is
    Port (imm : in std_logic_vector(15 downto 0);
          ext_imm : out std_logic_vector(31 downto 0)
          );
end sign_ext;

architecture Behavioral of sign_ext is
begin
    ext_imm <= x"0000" & imm when (imm(15) = '0') else x"FFFF" & imm;
end Behavioral;
