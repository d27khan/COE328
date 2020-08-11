--Author: Daniel Khan (500898010)
--COE318 (Section 041)
--Lab 3: Adder and Subractor Unit
LIBRARY ieee;					--Defining all libraries and packages
USE ieee.std_logic_1164.all;

ENTITY sseg IS
	PORT ( bcd :IN STD_LOGIC_VECTOR(3 DOWNTO 0); --input bcd which takes binary to display
		Neg : IN STD_LOGIC;							-- negative sign 
		leds :OUT STD_LOGIC_VECTOR(6 DOWNTO 0); --Leds which will display the number
		ledss : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));-- Leds displaying negative sign
END sseg;
ARCHITECTURE Behavior OF sseg IS
BEGIN
	PROCESS (bcd) 
	BEGIN
		CASE bcd IS					-- abcdefg on LED board
			WHEN "0000" => leds <= "1111110" ; --0
			WHEN "0001" => leds <= "0110000" ; --1
			WHEN "0010" => leds <= "1101101" ; --2
			WHEN "0011" => leds <= "1111001" ; --3
			WHEN "0100" => leds <= "0110011" ; --4
			WHEN "0101" => leds <= "1011011" ; --5
			WHEN "0110" => leds <= "1011111" ; --6
			WHEN "0111" => leds <= "1110000" ; --7
			WHEN "1000" => leds <= "1111111" ; --8
			WHEN "1001" => leds <= "1110011" ; --9
			WHEN "1010" => leds <= "1110110" ; --A
			WHEN "1011" => leds <= "1111111" ; --B
			WHEN "1100" => leds <= "1001110" ; --C
			WHEN "1101" => leds <= "1111110" ; --D
			WHEN "1110" => leds <= "1001111" ; --E
			WHEN "1111" => leds <= "1000111" ; --F
			WHEN OTHERS => leds <= "0000000" ; -- If all are off
		END CASE ;
	END PROCESS ;
	PROCESS (Neg)
	BEGIN
		CASE Neg IS
			WHEN '1' =>ledss <= "0000001"; -- Negative Sign
			WHEN '0' => ledss <= "0000000"; -- when positve
		END CASE ;
	END PROCESS ;
END Behavior ;