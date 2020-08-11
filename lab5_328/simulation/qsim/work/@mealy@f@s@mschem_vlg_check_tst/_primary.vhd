library verilog;
use verilog.vl_types.all;
entity MealyFSMschem_vlg_check_tst is
    port(
        current_state   : in     vl_logic_vector(3 downto 0);
        student_ID      : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end MealyFSMschem_vlg_check_tst;
