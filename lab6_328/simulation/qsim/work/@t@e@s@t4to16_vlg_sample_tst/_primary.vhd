library verilog;
use verilog.vl_types.all;
entity TEST4to16_vlg_sample_tst is
    port(
        En1             : in     vl_logic;
        s               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end TEST4to16_vlg_sample_tst;
