 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity demux_1to4 is
Port ( out1 : out std_logic; 
out2 : out std_logic; 
out3 : out std_logic;
out4 : out std_logic; 
sel : in std_logic_vector(1 downto 0); -- selection line
X : in std_logic); 
end demux_1to4;

architecture Behavioral of demux_1to4 is

begin
-- This process for mux logic
process (sel, X)
begin
case SEL is
 when "00" => out1 <= X; out2 <= '0'; out3 <= '0'; out4 <='0';
 when "01" => out2 <= X; out1 <= '0'; out3 <= '0'; out4 <='0';
 when "10" => out3 <= X; out1 <= '0'; out2 <= '0'; out4 <='0';
 when others => out4 <= X;  out1 <= '0'; out2 <= '0'; out3 <='0';
end case;
end process;

end Behavioral;