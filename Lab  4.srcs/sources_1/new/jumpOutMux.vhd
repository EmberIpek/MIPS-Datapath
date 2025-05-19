--Author: Ember Ipek
--Date: 4/10/2025

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--32-bit 2-to-1 multiplexer for Jump, Branch, and PCAdder selection for the PC.
entity jumpOutMux is
    port(jumpLogic: in std_logic;
         branchMux: in std_logic_vector(31 downto 0);
         jumpTarget: in std_logic_vector(31 downto 0);
         nextAddr: out std_logic_vector(31 downto 0)
         );
end jumpOutMux;

architecture Behavioral of jumpOutMux is
begin
    nextAddr <= jumpTarget when (jumpLogic = '1') else branchMux;
end Behavioral;
