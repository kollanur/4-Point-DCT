library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_2to1 is
Port ( in1 : in std_logic; -- mux input1
in2 : in std_logic; -- mux input2
sel : in std_logic_vector(0 downto 0); -- selection line
X : out std_logic); -- output data
end mux_2to1;

architecture Behavioral of mux_2to1 is

begin
-- This process for mux logic
process (sel, in1, in2)
begin
case SEL is
when "0" => X <= in1;
when "1" => X <= in2;
when others => X <= '0';
end case;
end process;

end Behavioral;