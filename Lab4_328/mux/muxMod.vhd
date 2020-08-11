--Author: Daniel Khan (500898010)
--COE318 (Section 041)
--Lab 4: VHDL for Combinational Circuits and Storage Elements

LIBRARY 	ieee;   --Defining all libraries and packages
USE ieee.std_logic_1164.all;

ENTITY muxMod IS
	PORT(w0,w1,w2,w3,s0,s1 : IN STD_logic; -- all inputs and 2 selectors
			f		 : OUT STD_logic);
END muxMod;

ARCHITECTURE Behavior OF muxMod IS
	SIGNAL f0: STD_logic; -- 2 signals to represent each mux output 
	SIGNAL f1: STD_logic; 
BEGIN
		mux1 : PROCESS (w0,w1,s0) IS BEGIN	-- implementing 2 to 1 mux
			IF (s0 = '0') THEN					-- for w0 and w1 variables
			f0<= w0;
			ELSE
			f0<= w1;
			END IF;
			END PROCESS;
			
		mux2 : PROCESS (w2,w3,s0) IS BEGIN --implementing 2 to 1 mux
			IF (s0 = '0') THEN					-- for w0 and w1 variables
			f1<= w2;
			ELSE
			f1<= w3;
			END IF;
			END PROCESS;
			
		mux3 : PROCESS (f0,f1,s1) IS BEGIN	-- 2 to 1 mux for the first two mux
			IF (s1 = '0') THEN
			f<= f0;
			ELSE
			f<= f1;
			END IF;
			END PROCESS;
			
END Behavior;

