library verilog;
use verilog.vl_types.all;
entity dec4to16_vlg_check_tst is
    port(
        op              : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end dec4to16_vlg_check_tst;
