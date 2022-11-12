library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity adder_32bit is
  port (
    a     : in std_logic_vector(31 downto 0);
    b     : in std_logic_vector(31 downto 0);
	 en : IN STD_LOGIC;
    sum   : out std_logic_vector(31 downto 0);
    carry : out std_logic
  );
end entity adder_32bit;

architecture behavioural of adder_32bit is

signal temp : std_logic_vector(32 downto 0);

begin
 process(a,b,en)
 begin
 if (en = '1') then
 temp <= ('0' & a) + ('0' & b);
 end if;
 end process;
 sum  <= temp(31 downto 0);
 carry   <= temp(32);
end behavioural;