library verilog;
use verilog.vl_types.all;
entity demux_1to4 is
    port(
        out1            : out    vl_logic_vector(31 downto 0);
        out2            : out    vl_logic_vector(31 downto 0);
        out3            : out    vl_logic_vector(31 downto 0);
        out4            : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        X               : in     vl_logic_vector(31 downto 0)
    );
end demux_1to4;
