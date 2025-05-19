library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity shift_left_two is
    port(ext_imm : in std_logic_vector(31 downto 0);
         sl2 : out std_logic_vector(31 downto 0)
         );
end shift_left_two;

architecture Behavioral of shift_left_two is
begin

    sl2 <= std_logic_vector(shift_left(unsigned(ext_imm), 2));

end Behavioral;
