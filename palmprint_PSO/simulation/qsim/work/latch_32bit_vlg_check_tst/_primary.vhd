library verilog;
use verilog.vl_types.all;
entity latch_32bit_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end latch_32bit_vlg_check_tst;
