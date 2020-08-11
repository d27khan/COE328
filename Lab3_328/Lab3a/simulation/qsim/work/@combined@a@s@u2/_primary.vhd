library verilog;
use verilog.vl_types.all;
entity CombinedASU2 is
    port(
        Cout            : out    vl_logic;
        Cin             : in     vl_logic;
        X               : in     vl_logic_vector(3 downto 0);
        Y               : in     vl_logic_vector(3 downto 0);
        Overflow        : out    vl_logic;
        L               : out    vl_logic_vector(3 downto 0);
        leds            : out    vl_logic_vector(6 downto 0);
        ledss           : out    vl_logic_vector(6 downto 0);
        S               : out    vl_logic_vector(3 downto 0)
    );
end CombinedASU2;
