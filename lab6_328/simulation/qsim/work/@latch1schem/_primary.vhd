library verilog;
use verilog.vl_types.all;
entity Latch1schem is
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        Clock           : in     vl_logic;
        Resetn          : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0)
    );
end Latch1schem;
