library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--The control unit needs to be expanded to generate control signals based
--on the 6-bit opcode field of the instruction.
entity control is
    Port (Opcode : in std_logic_vector(5 downto 0);
    
          --RegDst is set when the instruction uses the Rd field as its destination register, and
          --it is cleared when the instruction uses the Rt field as its the destination register.
          RegDst : out std_logic_vector(1 downto 0);
          
          --ALUOp is a 3-bit signal that determines the ALU operation performed ie. the addi
          --and addiu instructions perform the add operation in the ALU. You will develop the scheme for ALUOp yourself.
          ALUOp : out std_logic_vector(2 downto 0);
          
          --ALUSrc is set when the instruction uses the sign-extended immediate value as its
          --B operand, and it is cleared when the instruction uses the value in the Rt register
          --as the B operand of the ALU
          ALUSrc : out std_logic;
          
          ----RegWrite: control signal that enables writing to 
          --Register File when the Opcode == '0'
          RegWrite : out std_logic;
          
          --MemtoReg selects whether the value to write back to the register file comes from
          --ALUOut or ReadData from the Data Memory
          MemtoReg : out std_logic_vector(1 downto 0);
          
          --MemRead is set when an instruction reads from Data Memory
          MemRead : out std_logic;
          
          --MemWrite is set when an instruction writes to Data Memory
          MemWrite : out std_logic;
          
          --Branch is a 2-bit signal with a different output for a Branch on Equal (beq), a
          --Branch on Not Equal (bne), and for all other non-branching instructions.
          Branch : out std_logic_vector(1 downto 0)
          );
end control;

architecture Behavioral of control is
begin
    --signal RegWrite should be low for as long as the Opcode is
    --store, high otherwise
    RegWrite <= '1' when (Opcode = "000011") else 
                '0' when (Opcode = "000100") else --beq
                '0' when (Opcode = "000101") else --bne
                '0' when (Opcode = "101000") else
                '0' when (Opcode = "111000") else 
                '0' when (Opcode = "101001") else 
                '0' when (Opcode = "101011") else 
                '1';
    
    --RegDst always Rd for R-type
    RegDst <= "11" when (Opcode = "000011") else  -- jal uses reg $ra
              "01" when (Opcode = "000000") else  -- R-type instructions
              "00";
    
    --B operand gets its value from Rt register when R-type
    ALUSrc <= '0' when (Opcode = "000000")
                  else '0' when (Opcode = "000100")
                  else '0' when (Opcode = "000101")
                  else '1';
    
    --Dout is ReadData field when load instructions
    MemtoReg <= "01" when (Opcode = "110000")
                    else "01" when (Opcode = "001111")
                    else "01" when (Opcode = "100011")
                    else "11" when (Opcode = "000011") --jal uses PCAdder field
                    else "00";
                                 
    --MemRead is 1 when load instructions
    MemRead <= '1' when (Opcode = "110000")
                   else '1' when (Opcode = "001111")
                   else '1' when (Opcode = "100011")
                   else '0';
    
    --MemWrite is 1 when store instructions
    MemWrite <= '1' when (Opcode = "101000")
                    else '1' when (Opcode = "111000")
                    else '1' when (Opcode = "101001")
                    else '1' when (Opcode = "101011")
                    else '0';
                                 
    --Ensure remaining control signals account for the opcodes of Branch on Equal
    --(beq) and Branch on Not Equal (bne) instructions.
    Branch <= "00" when (Opcode = "000100") --beq
                   else "01" when (Opcode = "000101") --bne
                   else "11";
    
    --I-type instructions use opcode
    with Opcode select
    ALUOp <= "000" when "001100", --andi
             "001" when "001101", --ori
             "010" when "001000", --addi
             "010" when "001001", --addiu
             "010" when "100011", --lw
             "010" when "101011", --sw
             "011" when "000100", --beq
             "011" when "000101", --bne
             "100" when "001010", --slti
             "101" when "001011", --sltiu
             "111" when others;   --indicates R-type

end Behavioral;
