library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu is
    Port(A 						  : in std_logic_vector(31 downto 0);
         B 						  : in std_logic_vector(31 downto 0);
         Shamt 					  : in std_logic_vector(4 downto 0);
         ALUCntl 				  : in std_logic_vector(3 downto 0);
         --Carryin                  : in std_logic;
         Zero, Overflow, Carryout : out std_logic;
         ALUout 				  : out std_logic_vector(31 downto 0));
end alu;

architecture Behavioral of alu is

signal add : std_logic_vector(32 downto 0);
signal subtract : std_logic_vector(32 downto 0);
signal sl : std_logic_vector(31 downto 0);
signal sr : std_logic_vector(31 downto 0);
signal slt : std_logic_vector(31 downto 0);
signal sltu : std_logic_vector(31 downto 0);
signal ALUresult : std_logic_vector(31 downto 0);
signal temp_C : std_logic_vector(32 downto 0) := (others => '0');
signal temp_A, temp_B : std_logic_vector(32 downto 0);

begin 
----ALU Function Selection----------------------------    
    with ALUcntl select
        ALUresult <= A and B               when "0000",
					 A or B                when "0001",
					 A xor B               when "0010",
					 A nor B               when "0011",
					 add(31 downto 0)      when "0100",
					 subtract(31 downto 0) when "0101",
					 sl                    when "0110",
					 sr                    when "0111",
					 slt                   when "1000",
					 sltu                  when "1001",
					 x"00000000"           when others;
    
    ALUout <= ALUresult;
-------------------------------------------------------
------Addition Operations--------------------------------
    temp_A    <= '0' & A;	-- zero padding of A, B, and Carryin so that we can get Carryout
    temp_B    <= '0' & B;
    temp_C(0) <= '0';
    
	add <= std_logic_vector(signed(temp_A) + signed(temp_B) + signed(temp_C));
	subtract <= std_logic_vector(signed(temp_A) - signed(temp_B));
--------------------------------------------------------   
----Carryout, Overflow, and Zero Flag-----------------    
    Carryout <= '1' when add(32) = '1' and ALUcntl = "0100" else
                '1' when subtract(32) = '1' and ALUcntl = "0101"
                else '0';
     
    Overflow <= '1' when add(31) = '0' and ALUcntl = "0100" and A(31) = '1' and B(31) = '1' else
                '1' when add(31) = '1' and ALUcntl = "0100" and A(31) = '0' and B(31) = '0' else
                '1' when subtract(31) = '0' and ALUcntl = "0101" and A(31) = '1' and B(31) = '0' else
                '1' when subtract(31) = '1' and ALUcntl = "0101" and A(31) = '0' and B(31) = '1' else
                '0';
    
    Zero <= '1' when ALUresult = x"00000000" else '0';
----Shift Operation------------------------ 
    sl <= std_logic_vector(shift_left(unsigned(B), to_integer(unsigned(Shamt))));
    
    sr <= std_logic_vector(shift_right(unsigned(B), to_integer(unsigned(Shamt))));
------------------------------------------------------
----Set On Less Than Operation------------------------ 
    slt <= x"00000001" when signed(A) < signed(B) else
           x"00000000";
           
    sltu <= x"00000001" when unsigned(A) < unsigned(B) else
           x"00000000";
------------------------------------------------------	

end Behavioral;