library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity multiplier_32bit is
port(A: in std_logic_vector(31 downto 0);
	  B: in std_logic_vector(31 downto 0);
	  en : IN STD_LOGIC; 
	  S: out std_logic_vector(31 downto 0)
	  );
end multiplier_32bit;

architecture bhv of multiplier_32bit is 
signal Reg1,Reg2:std_logic_vector(31 downto 0) := (others => '0');
signal Reg_x :std_logic_vector(63 downto 0);

begin
Reg1 <= A;
Reg2 <= B;
process(A,B,en)
begin
if (en = '1') then
Reg_x <= Reg1*Reg2;
s <= Reg_x(31 downto 0);
end if;
end process;
end bhv;