library verilog;
use verilog.vl_types.all;
entity CombinedASU2_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        L               : in     vl_logic_vector(3 downto 0);
        leds            : in     vl_logic_vector(6 downto 0);
        ledss           : in     vl_logic_vector(6 downto 0);
        Overflow        : in     vl_logic;
        S               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end CombinedASU2_vlg_check_tst;
