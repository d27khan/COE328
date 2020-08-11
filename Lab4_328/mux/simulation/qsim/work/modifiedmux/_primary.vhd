library verilog;
use verilog.vl_types.all;
entity modifiedmux is
    port(
        f               : out    vl_logic;
        w0              : in     vl_logic;
        w1              : in     vl_logic;
        w2              : in     vl_logic;
        w3              : in     vl_logic;
        s0              : in     vl_logic;
        s1              : in     vl_logic
    );
end modifiedmux;
