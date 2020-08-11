library verilog;
use verilog.vl_types.all;
entity Latch2Schem_vlg_sample_tst is
    port(
        B               : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        Resetn          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Latch2Schem_vlg_sample_tst;
