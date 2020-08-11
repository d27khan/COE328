library verilog;
use verilog.vl_types.all;
entity TEST4to16 is
    port(
        op              : out    vl_logic_vector(15 downto 0);
        En1             : in     vl_logic;
        s               : in     vl_logic_vector(3 downto 0)
    );
end TEST4to16;
