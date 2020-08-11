library verilog;
use verilog.vl_types.all;
entity encode is
    port(
        z               : out    vl_logic;
        w               : in     vl_logic_vector(3 downto 0);
        y               : out    vl_logic_vector(1 downto 0)
    );
end encode;
