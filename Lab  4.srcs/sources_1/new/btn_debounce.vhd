library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BTN_debounce is
    Port ( BTN 			  : in   std_logic_vector(4 downto 0);
           CLK 			  : in   std_logic;
           rst            : out std_logic;
           en             : out std_logic
           --toggle         : out std_logic
           --rx_input       : out std_logic 
           );
end BTN_debounce;


architecture Behavioral of BTN_debounce is

component debouncer
Generic(
        DEBNC_CLOCKS : integer;
        PORT_WIDTH : integer);
Port(
		SIGNAL_I : in std_logic_vector(4 downto 0);
		CLK_I : in std_logic;          
		SIGNAL_O : out std_logic_vector(4 downto 0)
		);
end component;

signal btnReg : std_logic_vector (4 downto 0) := "00000";
signal BTNU_Detect, BTNL_Detect, BTNR_Detect, BTND_Detect, BTNC_Detect : std_logic;
signal btnDeBnc : std_logic_vector(4 downto 0);

begin
--Debounces btn signals
Inst_btn_debounce: debouncer 
    generic map(
        DEBNC_CLOCKS => (2**16),
        PORT_WIDTH => 5)
    port map(
		SIGNAL_I => BTN,
		CLK_I => CLK,
		SIGNAL_O => btnDeBnc
	);

--Registers the debounced button signals, for edge detection.
btn_reg_process : process (CLK)
begin
	if (rising_edge(CLK)) then
		btnReg <= btnDeBnc;
	end if;
end process;

BTNU_Detect <= '1' when (btnReg(0)='0' and btnDeBnc(0)='1') else '0';
BTNL_Detect <= '1' when (btnReg(1)='0' and btnDeBnc(1)='1') else '0';
BTNR_Detect <= '1' when (btnReg(2)='0' and btnDeBnc(2)='1') else '0';
BTND_Detect <= '1' when (btnReg(3)='0' and btnDeBnc(3)='1') else '0';
BTNC_Detect <= '1' when (btnReg(4)='0' and btnDeBnc(4)='1') else '0';

--toggle  <= BTNU_Detect;
--rx_config <= BTNL_Detect;
en      <= BTNC_Detect;			
--turn_enable <= BTND_Detect;
rst     <= BTNR_Detect;



				 
end Behavioral;	
