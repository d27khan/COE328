--Author: Daniel Khan (500898010)
--COE328
--Lab 1: Introduction to CAD tools  
--section 042
 
 
-- Defining library as well as importing packages
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab1_vhdl1 IS -- defining Entity
PORT(
x1,x2,x3: IN STD_logic; -- declaring inputs
f: OUT STD_LOGIC); -- declearing outputs
END lab1_vhdl1;

ARCHITECTURE Behavior OF lab1_vhdl1 IS	-- -- defining Architecture
BEGIN 
f <= (x1 AND x2) OR ((NOT x2) and x3); -- creating a fuction using all inputs and outputs

END Behavior;