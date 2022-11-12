library verilog;
use verilog.vl_types.all;
entity latch_32bit_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        D               : in     vl_logic_vector(31 downto 0);
        EN              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end latch_32bit_vlg_sample_tst;
