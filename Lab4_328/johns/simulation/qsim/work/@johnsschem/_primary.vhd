library verilog;
use verilog.vl_types.all;
entity Johnsschem is
    port(
        Q               : out    vl_logic_vector(0 to 2);
        CLRN            : in     vl_logic;
        E               : in     vl_logic;
        CLKN            : in     vl_logic;
        STUDENT_ID      : out    vl_logic_vector(3 downto 0)
    );
end Johnsschem;
