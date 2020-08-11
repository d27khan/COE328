library verilog;
use verilog.vl_types.all;
entity MealyFSMschem is
    port(
        current_state   : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        data_in         : in     vl_logic;
        reset           : in     vl_logic;
        student_ID      : out    vl_logic_vector(3 downto 0)
    );
end MealyFSMschem;
