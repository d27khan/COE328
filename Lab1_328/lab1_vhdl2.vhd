-- author: Daniel Khan(500898010)
-- COE328
-- Lab 1 : Introduction to CAD tools  
--	section 042

-- Defining library as well as importing packages
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab1_vhdl2 IS -- defining Entity
PORT(
w1,w2,w3,w4: IN STD_logic; -- declaring inputs
g,h: OUT STD_LOGIC); -- declearing outputs
END lab1_vhdl2;

ARCHITECTURE Behavior OF lab1_vhdl2 IS	-- -- defining Architecture
BEGIN 
g<= (w1 AND w2) OR (w3 AND w4); -- creating a fuction g using all inputs 
h<= (w1 AND w3) OR (w2 AND w4); -- creating a fuction h using all inputs 

END Behavior;