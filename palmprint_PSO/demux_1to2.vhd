library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity demux_1to2 is
Port ( out1 : out std_logic_vector(31 downto 0); 
out2 : out std_logic_vector(31 downto 0); 
sel : in std_logic; -- selection line
X : in std_logic_vector(31 downto 0)); 
end demux_1to2;

architecture Behavioral of demux_1to2 is

begin
-- This process for mux logic
process (sel, X)
begin
case sel is
 when '0' => out1 <= X; out2 <="00000000000000000000000000000000";
 when others => out2 <= X;  out1 <="00000000000000000000000000000000"; 
end case;
end process;

end Behavioral;