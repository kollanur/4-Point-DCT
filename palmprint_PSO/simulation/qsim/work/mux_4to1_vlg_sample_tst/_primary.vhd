library verilog;
use verilog.vl_types.all;
entity mux_4to1_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        in1             : in     vl_logic_vector(31 downto 0);
        in2             : in     vl_logic_vector(31 downto 0);
        in3             : in     vl_logic_vector(31 downto 0);
        in4             : in     vl_logic_vector(31 downto 0);
        sel             : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux_4to1_vlg_sample_tst;
