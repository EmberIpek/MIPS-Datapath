library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--This combinational logic block is used to calculate whether to branch to the
--branch target address, based on the Zero system flag and the 2-bit Branch control
--signal.
entity branch_logic is
    port(Branch : in std_logic_vector(1 downto 0);
         Zero : in std_logic;
         Branch_out: out std_logic
         );
end branch_logic;

architecture Behavioral of branch_logic is
begin
    --"00" = beq, "01" = bne
    Branch_out <= '1' when (Zero = '1' and Branch = "00") --beq
                      else '1' when (Zero = '0' and Branch = "01") --bne
                      else '0';

end Behavioral;
