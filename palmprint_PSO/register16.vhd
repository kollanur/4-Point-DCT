library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY register16 IS PORT(
    d   : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ld  : IN STD_LOGIC; -- load/enable.
    clr : IN STD_LOGIC; -- async. clear.
    clk : IN STD_LOGIC; -- clock.
    q   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) -- output
);
END register16;

ARCHITECTURE description OF register16 IS

BEGIN
    process(clk, clr)
    begin
        if clr = '1' then
            q <= x"0000";
        elsif rising_edge(clk) then
            if ld = '1' then
                q <= d;
            end if;
        end if;
    end process;
END description;