--Name: Daniel Khan(500898010)
--COE328 Section 041
--Lab6
LIBRARY ieee; --Defining all libraries and packages
USE ieee.std_logic_1164.all;

ENTITY latch1 IS
	PORT(A: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Resetn, clock: IN STD_LOGIC;
		Q: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END latch1;
ARCHITECTURE Behaviour OF latch1 IS
BEGIN
	PROCESS (Resetn,clock)
	BEGIN	
		IF Resetn = '0' THEN
			Q <= "00000000"; --(0)hex
		ELSIF clock'EVENT AND clock = '1' THEN
			Q <= A;--(80)hex
		END IF;
END PROCESS;
END Behaviour;