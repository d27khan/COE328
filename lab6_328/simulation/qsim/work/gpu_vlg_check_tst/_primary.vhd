library verilog;
use verilog.vl_types.all;
entity gpu_vlg_check_tst is
    port(
        current_state   : in     vl_logic_vector(3 downto 0);
        neg             : in     vl_logic;
        OP              : in     vl_logic_vector(15 downto 0);
        R1              : in     vl_logic_vector(3 downto 0);
        R2              : in     vl_logic_vector(3 downto 0);
        student_ID      : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end gpu_vlg_check_tst;
