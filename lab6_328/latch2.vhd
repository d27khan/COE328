--Name: Daniel Khan(500898010)
--COE328 Section 041
--Lab6
LIBRARY ieee;--Defining all libraries and packages
USE ieee.std_logic_1164.all;

ENTITY latch2 IS
	PORT(B: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Resetn, clock: IN STD_LOGIC;
		Q: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END latch2;
ARCHITECTURE Behaviour OF latch2 IS
BEGIN
	PROCESS (Resetn,clock)
	BEGIN	
		IF Resetn = '0' THEN
			Q <= "00000000";--(0)hex
		ELSIF clock'EVENT AND clock = '1' THEN
			Q <= B; --(10)hex
		END IF;
	END PROCESS;
	END Behaviour;