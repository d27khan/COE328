--Name: Daniel Khan(500898010)
--COE328 Section 041
--Lab6
LIBRARY ieee;--Defining all libraries and packages
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.dec3to8_package.all;

ENTITY dec4to16 IS
	PORT(s	: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  En1	: IN STD_LOGIc;
		  op	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END dec4to16;

ARCHITECTURE Structure OF dec4to16 IS 
	SIGNAL m: STD_LOGIC_VECTOR(0 TO 1);
BEGIN
	m(0) <=(NOT s(3) AND En1);-- used schematic to create code
	m(1)<=(s(3) AND En1);
	Dec1: dec3to8 PORT MAP
		(s(2 DOWNTO 0), m(0),op(15 DOWNTO 8));
	Dec2: dec3to8 PORT MAP
		(s(2 DOWNTO 0), m(1),op(7 DOWNTO 0));
		
	END Structure;
		