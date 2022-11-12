library verilog;
use verilog.vl_types.all;
entity mux_2to1 is
    port(
        in1             : in     vl_logic_vector(31 downto 0);
        in2             : in     vl_logic_vector(31 downto 0);
        sel             : in     vl_logic;
        X               : out    vl_logic_vector(31 downto 0)
    );
end mux_2to1;
