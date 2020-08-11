library verilog;
use verilog.vl_types.all;
entity \3to8dec\ is
    port(
        y3              : out    vl_logic;
        w2              : in     vl_logic;
        En              : in     vl_logic;
        w               : in     vl_logic_vector(1 downto 0);
        y2              : out    vl_logic;
        y1              : out    vl_logic;
        y0              : out    vl_logic;
        y23             : out    vl_logic;
        y22             : out    vl_logic;
        y21             : out    vl_logic;
        y20             : out    vl_logic
    );
end \3to8dec\;
