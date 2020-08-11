library verilog;
use verilog.vl_types.all;
entity fsmSchem_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        data_in         : in     vl_logic;
        Reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fsmSchem_vlg_sample_tst;
