library verilog;
use verilog.vl_types.all;
entity adder_32bit_vlg_check_tst is
    port(
        carry           : in     vl_logic;
        sum             : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end adder_32bit_vlg_check_tst;
