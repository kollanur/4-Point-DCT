library ieee;
use ieee.std_logic_1164.all;

entity multiplier_2bit is 
  port (A, B : in bit_vector(0 downto 0);
        P : out bit_vector(0 downto 0)
    );
end multiplier_2bit;

architecture behavioral of multiplier_2bit is
begin
	process(A,B) is
	begin
		case A is
			when "0" =>
				if B="0" then P<="0";
				else P<="0";
				end if;
			when "1" =>
				if B="0" then P<="0";
				else P<="1";
				end if;
		end case;
end process;
end architecture;