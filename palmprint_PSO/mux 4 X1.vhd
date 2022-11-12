library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux_4to1 is
Port ( in1 : in std_logic; -- mux input1
in2 : in std_logic; -- mux input2
in3 : in std_logic; -- mux input3
in4 : in std_logic; -- mux input4
sel : in std_logic_vector(1 downto 0); -- selection line
X : out std_logic); -- output data
end mux_4to1;

architecture Behavioral of mux_4to1 is

begin
-- This process for mux logic
process (sel, in1, in2, in3, in4)
begin
case SEL is
when "00" => X <= in1;
when "01" => X <= in2;
when "10" => X <= in3;
when "11" => X <= in4;
when others => X <= '0';
end case;
end process;

end Behavioral;