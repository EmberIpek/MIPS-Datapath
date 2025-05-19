--Author: Ember Ipek
--Date: 4/10/2025

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--2-to-1 multiplexer that selects between the Jump Target Address and RF[Rs]
--as the jump address.

entity jmpSrcMux is
    port(Rs: in std_logic_vector(31 downto 0);
         Address: in std_logic_vector(31 downto 0);
         JumpSrc: in std_logic;
         JumpTarget: out std_logic_vector(31 downto 0)
         );
end jmpSrcMux;

architecture Behavioral of jmpSrcMux is
begin
    JumpTarget <= Rs when (JumpSrc = '1') else Address;
end Behavioral;
