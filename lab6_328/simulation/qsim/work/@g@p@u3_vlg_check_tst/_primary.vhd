library verilog;
use verilog.vl_types.all;
entity GPU3_vlg_check_tst is
    port(
        current_state   : in     vl_logic_vector(3 downto 0);
        leds            : in     vl_logic_vector(0 to 6);
        neg             : in     vl_logic;
        OP              : in     vl_logic_vector(0 to 15);
        R1              : in     vl_logic_vector(3 downto 0);
        R2              : in     vl_logic_vector(3 downto 0);
        sign            : in     vl_logic_vector(0 to 6);
        student_ID      : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end GPU3_vlg_check_tst;
