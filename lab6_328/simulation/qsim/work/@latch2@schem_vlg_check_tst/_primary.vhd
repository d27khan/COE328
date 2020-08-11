library verilog;
use verilog.vl_types.all;
entity Latch2Schem_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Latch2Schem_vlg_check_tst;
