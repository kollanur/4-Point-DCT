library verilog;
use verilog.vl_types.all;
entity demux_1to2_vlg_check_tst is
    port(
        out1            : in     vl_logic_vector(31 downto 0);
        out2            : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end demux_1to2_vlg_check_tst;
