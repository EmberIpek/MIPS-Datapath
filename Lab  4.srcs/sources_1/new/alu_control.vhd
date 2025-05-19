----------------------------------------------------------------------------------
--this block is responsible for driving the ALUCntl signal
--depending on the Funct field of the instruction

--The ALU control unit needs to be expanded to generate the ALUCntl signals
--based on either the 6-bit funct field for R-type instructions or the 3-bit ALUOp
--signal from the control unit for I-type instructions.

--You should have an ALUOp value that indicates an R-type instruction. Use that
--ALUOp value to determine whether to use the funct field or ALUOp to output the
--ALUCntl signal to the ALU
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Funct: 6-bit input, funct field of the currently executing
--instruction and is used to selectively set ALUCntl
--ALUCntl: 4-bit output, control signal for the driving
--the ALU's operation and is dependent on current instruction's needs
entity alu_control is
    Port (Funct : in std_logic_vector(5 downto 0);
          ALUCntl : out std_logic_vector(3 downto 0);
          ALUOp : in std_logic_vector(2 downto 0)
          );
end alu_control;

--Funct field is used to select proper value of the ALUCntl output.
--This determines the operation the ALU will perform on operands.

architecture Behavioral of alu_control is
signal R_type : std_logic_vector(3 downto 0);
begin

with ALUOp select
    ALUCntl <= "0000" when "000", --andi
               "0001" when "001", --ori
               "0100" when "010", --addi, addiu, lw, sw
               "0101" when "011", --beq, bne
               "1000" when "100", --slti
               "1001" when "101", --sltiu
               R_Type when "111", --R-type instruction, use funct field
               "1111" when others;
               
with Funct select
        R_Type  <= "0000" when "100100",
                   "0001" when "100101",
                   "0010" when "100110",
                   "0011" when "100111",
                   "0100" when "100000",
                   "0100" when "100001",
                   "0101" when "100010",
                   "0101" when "100011",
                   "0110" when "000000",
                   "0111" when "000010",
                   "1000" when "101010",
                   "1001" when "101011",
                   "1111" when others;

end Behavioral;
