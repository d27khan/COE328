library verilog;
use verilog.vl_types.all;
entity dec4to16_vlg_sample_tst is
    port(
        En1             : in     vl_logic;
        s               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end dec4to16_vlg_sample_tst;
