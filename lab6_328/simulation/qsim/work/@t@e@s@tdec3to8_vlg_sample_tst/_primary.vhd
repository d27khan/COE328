library verilog;
use verilog.vl_types.all;
entity TESTdec3to8_vlg_sample_tst is
    port(
        En              : in     vl_logic;
        w               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end TESTdec3to8_vlg_sample_tst;
