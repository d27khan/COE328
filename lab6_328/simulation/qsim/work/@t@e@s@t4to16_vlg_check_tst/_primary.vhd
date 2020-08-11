library verilog;
use verilog.vl_types.all;
entity TEST4to16_vlg_check_tst is
    port(
        op              : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end TEST4to16_vlg_check_tst;
