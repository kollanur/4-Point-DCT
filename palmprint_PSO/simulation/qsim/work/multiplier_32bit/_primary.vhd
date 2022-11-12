library verilog;
use verilog.vl_types.all;
entity multiplier_32bit is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        S               : out    vl_logic_vector(31 downto 0)
    );
end multiplier_32bit;
