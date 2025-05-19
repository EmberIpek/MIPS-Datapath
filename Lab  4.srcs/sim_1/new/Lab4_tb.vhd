library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Lab4_tb is

end Lab4_tb;

architecture Behavioral of Lab4_tb is
    -- rtypePart1_tb Testbench signals
    signal RST      : std_logic;
    signal EN       : std_logic;
    signal CLK      : std_logic;
	signal ALUout	: std_logic_vector(31 downto 0);
	signal Carryout : std_logic;
	signal Overflow	: std_logic;
	signal Zero     : std_logic;
    signal PCOut    : std_logic_vector(4 downto 0);
    signal Dout     : std_logic_vector(31 downto 0);
begin

----------------------------------------------------------------
-- INSTANTIATE YOUR BLOCK DESIGN WRAPPER HERE
---------------------------------------------------------------- 
design_1_i: entity work.design_1_wrapper
     port map (
      ALUout => ALUout,
      Carryout => Carryout,
      Overflow => Overflow,
      PCOut => PCOut,
      Zero => Zero,
      clk => clk,
      en => en,
      rst => rst,
      Dout => Dout
    );
---------------------------------------------------------------- 
-- DO NOT MODIFY BELOW THIS LINE       
----------------------------------------------------------------

	clock_process: process
	begin
		CLK <= '1';
		wait for 10 ns;
		CLK <= '0';
		wait for 10 ns;
	end process;
	
	EN <= '1';
	
	in_stimulus: process
	begin
		RST <= '1';
		wait for 20 ns;
		RST <= '0';
		wait for 2000 ns;
	end process;       
    
end Behavioral;
