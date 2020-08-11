library verilog;
use verilog.vl_types.all;
entity encode_vlg_sample_tst is
    port(
        w               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end encode_vlg_sample_tst;
