library verilog;
use verilog.vl_types.all;
entity latch_32bit is
    port(
        EN              : in     vl_logic;
        D               : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        Q               : out    vl_logic_vector(31 downto 0)
    );
end latch_32bit;
