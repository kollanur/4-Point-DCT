library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity demux_1to4 is
Port ( out1 : out std_logic_vector(31 downto 0); 
out2 : out std_logic_vector(31 downto 0); 
out3 : out std_logic_vector(31 downto 0);
out4 : out std_logic_vector(31 downto 0); 
sel : in std_logic_vector(1 downto 0); -- selection line
X : in std_logic_vector(31 downto 0)); 
end demux_1to4;

architecture Behavioral of demux_1to4 is

begin
-- This process for mux logic
process (sel, X)
begin
case SEL is
 when "00" => out1 <= X; out2 <= "00000000000000000000000000000000"; out3 <= "00000000000000000000000000000000"; out4 <="00000000000000000000000000000000";
 when "01" => out2 <= X; out1 <= "00000000000000000000000000000000"; out3 <= "00000000000000000000000000000000"; out4 <="00000000000000000000000000000000";
 when "10" => out3 <= X; out1 <= "00000000000000000000000000000000"; out2 <= "00000000000000000000000000000000"; out4 <="00000000000000000000000000000000";
 when others => out4 <= X;  out1 <= "00000000000000000000000000000000"; out2 <= "00000000000000000000000000000000"; out3 <="00000000000000000000000000000000";
end case;
end process;

end Behavioral;