library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--The Branch Adder calculates the branch target address via the following formula:
--Branch Target Address = PCAdder + (Sign-Extended Immediate << 2)

entity branch_adder is
    Port(NextAddr : in std_logic_vector(31 downto 0);
         sl2 : in std_logic_vector(31 downto 0);
         BranchTarget : out std_logic_vector(31 downto 0)
        );
end branch_adder;

architecture Behavioral of branch_adder is
begin
    
    BranchTarget <= std_logic_vector(unsigned(NextAddr) + unsigned(sl2));

end Behavioral;
