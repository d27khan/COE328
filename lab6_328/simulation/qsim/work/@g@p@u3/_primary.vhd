library verilog;
use verilog.vl_types.all;
entity GPU3 is
    port(
        neg             : out    vl_logic;
        Clock           : in     vl_logic;
        Resetn          : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        En              : in     vl_logic;
        data_in         : in     vl_logic;
        Reset           : in     vl_logic;
        current_state   : out    vl_logic_vector(3 downto 0);
        leds            : out    vl_logic_vector(0 to 6);
        OP              : out    vl_logic_vector(0 to 15);
        R1              : out    vl_logic_vector(3 downto 0);
        R2              : out    vl_logic_vector(3 downto 0);
        sign            : out    vl_logic_vector(0 to 6);
        student_ID      : out    vl_logic_vector(3 downto 0)
    );
end GPU3;
