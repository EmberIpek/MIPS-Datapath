--5-bit 3-to-1 multiplexer. Selects between the Rt, Rd and $ra
--fields to use as the Write Register input of the Register File, which is the
--destination register.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RegDstMux is
    Port(Rt : in std_logic_vector(4 downto 0);
         Rd : in std_logic_vector(4 downto 0);
         RegDst : in std_logic_vector(1 downto 0);
         WriteReg : out std_logic_vector(4 downto 0)
         );
end RegDstMux;

architecture Behavioral of RegDstMux is
begin

    --This 3-to-1 mux now selects between the RD field, RT field, or Register 31 ($ra)
    --as the write register in the Register File.
    with RegDst select
        WriteReg <= Rt when "00",
                    Rd when "01",
                    "11111" when others;
end Behavioral;
