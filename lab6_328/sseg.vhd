LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;
ENTITY sseg IS
PORT ( bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		 neg: IN STD_LOGIC;
		 leds, sign : OUT STD_LOGIC_VECTOR(0 TO 6) ) ;
END sseg ;

ARCHITECTURE Behavior OF sseg IS
BEGIN
	PROCESS (bcd, neg)
	
	BEGIN
	IF neg = '0' THEN
		sign <= NOT ("0000000");
	ELSE
		sign <= NOT ("0000001");
	END IF;
		CASE bcd IS 		  -- abcdefg|
			WHEN "0000"=>leds<="1111110";
			WHEN "0001"=>leds<="0110000";
			WHEN "0010"=>leds<="1101101";
			WHEN "0011"=>leds<="1111001";
			WHEN "0100"=>leds<="0110011";
			WHEN "0101"=>leds<="1011011";
			WHEN "0110"=>leds<="1011111";
			WHEN "0111"=>leds<="1110000";
			WHEN "1000"=>leds<="1111111";
			WHEN "1001"=>leds<="1111011";
			WHEN "1010"=>leds<="0111011";--place holder for YES
			WHEN "1011"=>leds<="0010101";--Place holder for NO
			WHEN OTHERS => 
		END CASE;
	END PROCESS;
END Behavior;