library verilog;
use verilog.vl_types.all;
entity gpu is
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
        OP              : out    vl_logic_vector(15 downto 0);
        R1              : out    vl_logic_vector(3 downto 0);
        R2              : out    vl_logic_vector(3 downto 0);
        student_ID      : out    vl_logic_vector(3 downto 0)
    );
end gpu;
