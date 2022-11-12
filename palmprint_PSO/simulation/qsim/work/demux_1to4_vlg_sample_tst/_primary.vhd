library verilog;
use verilog.vl_types.all;
entity demux_1to4_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        X               : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end demux_1to4_vlg_sample_tst;
