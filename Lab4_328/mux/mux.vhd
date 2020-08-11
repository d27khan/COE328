--Author: Daniel Khan (500898010)
--COE318 (Section 041)
--Lab 4: VHDL for Combinational Circuits and Storage Elements


LIBRARY 	ieee; --Defining all libraries and packages
USE ieee.std_logic_1164.all;

ENTITY mux IS	
	PORT(w0,w1,s : IN STD_logic; -- 2 inputs and a selector variable
			f		 : OUT STD_logic); -- output f
END mux;

ARCHITECTURE Behavior OF mux IS
BEGIN
	WITH s SELECT     -- when selctor is 0 it will choose w0
		f<= w0 WHEN '0', w1 WHEN OTHERS; -- when s is 1 it will choose w1
END Behavior;
