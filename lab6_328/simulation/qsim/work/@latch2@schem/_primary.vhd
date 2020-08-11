library verilog;
use verilog.vl_types.all;
entity Latch2Schem is
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        Resetn          : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0)
    );
end Latch2Schem;
