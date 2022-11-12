library verilog;
use verilog.vl_types.all;
entity mux_4to1 is
    port(
        in1             : in     vl_logic_vector(31 downto 0);
        in2             : in     vl_logic_vector(31 downto 0);
        in3             : in     vl_logic_vector(31 downto 0);
        in4             : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        X               : out    vl_logic_vector(31 downto 0)
    );
end mux_4to1;
