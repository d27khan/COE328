library verilog;
use verilog.vl_types.all;
entity dec4to16 is
    port(
        s               : in     vl_logic_vector(3 downto 0);
        En1             : in     vl_logic;
        op              : out    vl_logic_vector(15 downto 0)
    );
end dec4to16;
