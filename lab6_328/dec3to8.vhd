--Name: Daniel Khan(500898010)
--COE328 Section 041
--Lab6: dec3to8
LIBRARY ieee;--Defining all libraries and packages
USE ieee.std_logic_1164.all;

ENTITY dec3to8 IS
	PORT(w	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		  En	: IN STD_LOGIc;
		  y	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END dec3to8;

ARCHITECTURE Behavior OF dec3to8 IS
	SIGNAL Enw : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN	
	Enw <=En & w;--Left most bit is representing Enable input
	WITH Enw SELECT
		y <= "10000000" WHEN "1000",--1 & 0
			  "01000000" WHEN "1001",--1 & 1
			  "00100000" WHEN "1010",--1 & 2
			  "00010000" WHEN "1011",--1 & 3
			  "00001000" WHEN "1100",--1 & 4
			  "00000100" WHEN "1101",--1 & 5
			  "00000010" WHEN "1110",--1 & 6
			  "00000001" WHEN "1111",--1 & 7
			  "00000000" WHEN OTHERS;
END behavior;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
PACKAGE dec3to8_package IS 
	COMPONENT dec3to8
	PORT(w	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		  En	: IN STD_LOGIc;
		  y	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT;
	END dec3to8_package;
