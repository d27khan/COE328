library verilog;
use verilog.vl_types.all;
entity encode_vlg_check_tst is
    port(
        y               : in     vl_logic_vector(1 downto 0);
        z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end encode_vlg_check_tst;
