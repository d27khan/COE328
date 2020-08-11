--Author: Daniel Khan (500898010)
--COE318 (Section 041)
--Lab 3: Adder and Subractor Unit

LIBRARY ieee;								--Defining all libraries and packages
USE ieee.std_logic_1164.all;

ENTITY dec IS 
	PORT( w  : IN STD_LOGIC_VECTOR(1 DOWNTO 0); -- creating a Vector w inputs
			En : IN STD_LOGIC;  -- enable input
			y  : OUT STD_LOGIC_VECTOR(0 to 3)); -- defining outputs
END dec;

ARCHITECTURE behavior OF dec IS 
	SIGNAL  Enw : STD_LOGIC_VECTOR(2 DOWNTO 0); --signal for inputs
BEGIN
	Enw<= En & w;  -- concating both vectors into singal
	WITH Enw SELECT 
		y<=   "1000" when "100", -- decoding signal for each case
				"0100" WHEN "101",
				"0010" WHEN "110",
				"0001" WHEN "111",
				"0000" WHEN OTHERS;
END Behavior;
