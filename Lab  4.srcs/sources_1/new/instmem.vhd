library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.NUMERIC_STD.all;

entity instmem is
    Port ( addr : in  STD_LOGIC_VECTOR (31 downto 0);
           inst_out : out  STD_LOGIC_VECTOR (31 downto 0));
end instmem;

architecture Behavioral of instmem is

type Instruction_Memory is array (0 to 255) of std_logic_vector (7 downto 0);
    signal RAM: Instruction_Memory:=(
----            x"8C",x"08",x"00",x"08",
----            x"21",x"08",x"00",x"08",
----            x"AC",x"08",x"00",x"08",
----            x"00",x"00",x"00",x"00",
----            x"00",x"00",x"00",x"00",
----            x"00",x"00",x"00",x"00",

----            x"30",x"08",x"00",x"01",-- 0X00: 
----            x"34",x"08",x"00",x"01",-- 0X04: 
----            x"20",x"08",x"00",x"01",-- 0X08: 
----            x"24",x"08",x"00",x"03",-- 0X0C: 
----            x"28",x"08",x"FF",x"FF",-- 0X10: 
----            x"2C",x"08",x"FF",x"FF",-- 0X14: 

--            x"00",x"00",x"F8",x"20",
--            x"21",x"08",x"00",x"01",
----            x"8C",x"0A",x"00",x"08",
----            x"8C",x"0B",x"00",x"0C",
----            x"8C",x"0C",x"00",x"10",
----            x"8C",x"0D",x"00",x"14",
--            x"03",x"E0",x"00",x"08",
--            x"00",x"00",x"00",x"00",
            
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
            
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
            
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
            
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
            
            
----            x"21",x"08",x"00",x"01",-- 0X18: 
----            x"31",x"29",x"00",x"00",-- 0X1C: 
----            x"35",x"4A",x"00",x"07",-- 0X20: 
----            x"29",x"6B",x"00",x"09",-- 0X24: 
----            x"2D",x"8C",x"00",x"00",-- 0X28: 
----            x"01",x"A8",x"68",x"22",-- 0X2C: 
----            x"11",x"A0",x"00",x"01",-- 0X30:
----            x"15",x"A0",x"FF",x"F8",-- 0X34:
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
            
----            x"AC",x"08",x"00",x"00",-- 0X38: (empty location) 
----            x"AC",x"09",x"00",x"04",-- 0X3C: (empty location) 
----            x"AC",x"0A",x"00",x"08",-- 0X40: (empty location) 
----            x"AC",x"0B",x"00",x"0C",-- 0X44: (empty location) 
----            x"AC",x"0C",x"00",x"10",-- 0X48: (empty location) 
----            x"AC",x"0D",x"00",x"14",-- 0X4C: (empty location)
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",


            x"00",x"00",x"40",x"20",--add $t0, $zero, $zero
            x"00",x"00",x"48",x"20",--add $t1, $zero, $zero
            x"20",x"0A",x"00",x"02",--addi $t2, $zero, 2
            x"20",x"0B",x"00",x"14",--addi $t3, $zero, 20
            
            x"8D",x"04",x"00",x"00",--L1: lw$a0, 0($t0)
            x"8D",x"05",x"00",x"04",--lw $a1, 4($t0)
            x"0C",x"00",x"00",x"0D",--jal MULT
            x"AD",x"62",x"00",x"00",--sw $v0, 0($t3)
            
            x"21",x"08",x"00",x"08",--addi $t0, $t0, 8
            x"21",x"6B",x"00",x"04",--addi $t3, $t3, 4
            x"21",x"29",x"00",x"01",--addi $t1, $t1, 1
            x"15",x"2A",x"FF",x"F8",--bne $t1, $t2, L1
            
            x"08",x"00",x"00",x"13",--j DONE
            x"00",x"00",x"80",x"20",--MULT: add $s0, $zero, $zero
            x"00",x"42",x"10",x"22",--sub $v0, $v0, $v0
            x"00",x"44",x"10",x"20",--L2: add $v0, $v0, $a0
            
            x"22",x"10",x"00",x"01",--addi $s0, $s0, 1
            x"16",x"05",x"FF",x"FD",--bne $s0, $a1, L2
            x"03",x"E0",x"00",x"08",--jr $ra
            x"00",x"00",x"00",x"00",--Done: NOP
            
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
            
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
            
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
            
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
--            x"00",x"00",x"00",x"00",
            
            
            
            
            x"00",x"00",x"00",x"00",-- 0x50: (empty location)
            x"00",x"00",x"00",x"00",-- 0x54: (empty location)
            x"00",x"00",x"00",x"00",-- 0x58: (empty location)
            x"00",x"00",x"00",x"00",-- 0x5C: (empty location)
            x"00",x"00",x"00",x"00",-- 0x60: (empty location)
            x"00",x"00",x"00",x"00",-- 0x64: (empty location)
            x"00",x"00",x"00",x"00",-- 0x68: (empty location)
            x"00",x"00",x"00",x"00",-- 0x6C: (empty location)
            x"00",x"00",x"00",x"00",-- 0x70: (empty location)
            x"00",x"00",x"00",x"00",-- 0x74: (empty location)
            x"00",x"00",x"00",x"00",-- 0x78: (empty location)
            x"00",x"00",x"00",x"00",-- 0x7C: (empty location)
            x"00",x"00",x"00",x"00",-- 0x80: (empty location)
            x"00",x"00",x"00",x"00",-- 0x84: (empty location)
            x"00",x"00",x"00",x"00",-- 0x88: (empty location)
            x"00",x"00",x"00",x"00",-- 0x8C: (empty location)
            x"00",x"00",x"00",x"00",-- 0x90: (empty location)
            x"00",x"00",x"00",x"00",-- 0x94: (empty location)
            x"00",x"00",x"00",x"00",-- 0x98: (empty location)
            x"00",x"00",x"00",x"00",-- 0x9C: (empty location)
            x"00",x"00",x"00",x"00",-- 0xA0: (empty location)
            x"00",x"00",x"00",x"00",-- 0xA4: (empty location)
            x"00",x"00",x"00",x"00",-- 0xA8: (empty location)
            x"00",x"00",x"00",x"00",-- 0xAC: (empty location)
            x"00",x"00",x"00",x"00",-- 0xB0: (empty location)
            x"00",x"00",x"00",x"00",-- 0xB4: (empty location)
            x"00",x"00",x"00",x"00",-- 0xB8: (empty location)
            x"00",x"00",x"00",x"00",-- 0xBC: (empty location)
            x"00",x"00",x"00",x"00",-- 0xC0: (empty location)
            x"00",x"00",x"00",x"00",-- 0xC4: (empty location)
            x"00",x"00",x"00",x"00",-- 0xC8: (empty location)
            x"00",x"00",x"00",x"00",-- 0xCC: (empty location)
            x"00",x"00",x"00",x"00",-- 0xD0: (empty location)
            x"00",x"00",x"00",x"00",-- 0xD4: (empty location)
            x"00",x"00",x"00",x"00",-- 0xD8: (empty location)
            x"00",x"00",x"00",x"00",-- 0xDC: (empty location)
            x"00",x"00",x"00",x"00",-- 0xE0: (empty location)
            x"00",x"00",x"00",x"00",-- 0xE4: (empty location)
            x"00",x"00",x"00",x"00",-- 0xE8: (empty location)
            x"00",x"00",x"00",x"00",-- 0xEC: (empty location)
            x"00",x"00",x"00",x"00",-- 0xF0: (empty location)
            x"00",x"00",x"00",x"00",-- 0xF4: (empty location)
            x"00",x"00",x"00",x"00",-- 0xF8: (empty location)
            x"00",x"00",x"00",x"00" -- 0xFF: (empty location)
            );

begin

    inst_out(7 downto 0)    <= RAM(to_integer(unsigned(addr)+3));
    inst_out(15 downto 8)   <= RAM(to_integer(unsigned(addr)+2)); 
    inst_out(23 downto 16)  <= RAM(to_integer(unsigned(addr)+1));
    inst_out(31 downto 24)  <= RAM(to_integer(unsigned(addr)));

end Behavioral;