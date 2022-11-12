library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity demux_1to2 is
Port ( out1 : out std_logic; 
out2 : out std_logic; 
sel : in std_logic_vector(0 downto 0); -- selection line
X : in std_logic); 
end demux_1to2;

architecture Behavioral of demux_1to2 is

begin
-- This process for mux logic
process (sel, X)
begin
case SEL is
 when "0" => out1 <= X; out2 <= '0'; 
 when others => out2 <= X;  out1 <= '0'; 
end case;
end process;

end Behavioral;