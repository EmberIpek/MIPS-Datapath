library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--32-bit 2-to-1 multiplexer. Select between the output of the PCAdder
--and the Branch Target Address values to be set in the PC on the next
--rising clock edge
entity BranchMux is
    Port(BranchTarget : in std_logic_vector(31 downto 0);
         NextAddr : in std_logic_vector(31 downto 0);
         Branch_out : in std_logic;
         NextAddr_out : out std_logic_vector(31 downto 0)
         );
end BranchMux;

architecture Behavioral of BranchMux is
begin

    NextAddr_out <= BranchTarget when (Branch_out = '1')
                    else NextAddr;

end Behavioral;
