library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pc is
    Port (clk : in std_logic;
          rst : in std_logic;
          en : in std_logic;
          NextAddr : in std_logic_vector(31 downto 0);
          CurrAddr : out std_logic_vector(31 downto 0)
          );
end pc;

architecture Behavioral of pc is

signal addr_reg : std_logic_vector(31 downto 0):= x"00000000";
begin
    
process(clk, en, rst)
    begin
        if(rising_edge(clk)) then
            if(rst = '1') then
                addr_reg <= x"00000000";
            elsif(en = '1') then
                addr_reg <= NextAddr;
            end if;
    end if;
end process;
CurrAddr <= addr_reg;

end Behavioral;
