--32-bit 3-to-1 multiplexer. Selects whether ALUOut, Read Data or PCAdder
--is displayed to Dout and sent to the Write Data of the Register File,
--to be written to the destination register on the next rising clock edge

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity WriteBackMux is
    Port (ALUOut : in std_logic_vector(31 downto 0);
          ReadData : in std_logic_vector(31 downto 0);
          MemtoReg : in std_logic_vector(1 downto 0);
          PCAdder : in std_logic_vector(31 downto 0);
          Dout : out std_logic_vector(31 downto 0)
         );
end WriteBackMux;

architecture Behavioral of WriteBackMux is
begin
    --This 3-to-1 mux now selects between ALUOut, ReadData, and PCAdder as the
    --value to be written back to the register file.
    Dout <= ReadData when (MemtoReg = "01")
                     else ALUOut when (MemtoReg = "00")
                     else PCAdder;
end Behavioral;
