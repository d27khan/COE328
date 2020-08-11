library verilog;
use verilog.vl_types.all;
entity fsmSchem is
    port(
        Current_state   : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        data_in         : in     vl_logic;
        Reset           : in     vl_logic;
        student_ID      : out    vl_logic_vector(3 downto 0)
    );
end fsmSchem;
