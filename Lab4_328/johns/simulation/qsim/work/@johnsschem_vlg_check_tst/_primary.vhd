library verilog;
use verilog.vl_types.all;
entity Johnsschem_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(0 to 2);
        STUDENT_ID      : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Johnsschem_vlg_check_tst;
