-- 32-bit 2-to-1 multiplexer. Selects whether Read Register 2
-- or the Sign-Extended Immediate value is used as the B operand of the ALU
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALUSrcMux is
    Port(Read_Data2 : in std_logic_vector(31 downto 0);
         Sign_ext : in std_logic_vector(31 downto 0);
         ALUSrc : in std_logic;
         B : out std_logic_vector(31 downto 0)
         );
end ALUSrcMux;

architecture Behavioral of ALUSrcMux is
begin
    with ALUSrc select
        B <= Read_Data2 when '0',
             Sign_Ext when others;
end Behavioral;
