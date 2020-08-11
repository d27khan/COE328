library verilog;
use verilog.vl_types.all;
entity TESTdec3to8 is
    port(
        y               : out    vl_logic_vector(7 downto 0);
        En              : in     vl_logic;
        w               : in     vl_logic_vector(2 downto 0)
    );
end TESTdec3to8;
