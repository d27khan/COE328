library verilog;
use verilog.vl_types.all;
entity Johnsschem_vlg_sample_tst is
    port(
        CLKN            : in     vl_logic;
        CLRN            : in     vl_logic;
        E               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Johnsschem_vlg_sample_tst;
