library verilog;
use verilog.vl_types.all;
entity demux_1to2 is
    port(
        out1            : out    vl_logic_vector(31 downto 0);
        out2            : out    vl_logic_vector(31 downto 0);
        sel             : in     vl_logic;
        clk             : in     vl_logic;
        X               : in     vl_logic_vector(31 downto 0)
    );
end demux_1to2;
