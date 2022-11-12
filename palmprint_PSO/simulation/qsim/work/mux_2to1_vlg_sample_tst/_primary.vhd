library verilog;
use verilog.vl_types.all;
entity mux_2to1_vlg_sample_tst is
    port(
        in1             : in     vl_logic_vector(31 downto 0);
        in2             : in     vl_logic_vector(31 downto 0);
        sel             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux_2to1_vlg_sample_tst;
