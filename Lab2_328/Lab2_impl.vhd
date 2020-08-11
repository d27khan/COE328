--Author: Daniel Khan (500898010)
--COE328
--Lab 2: Function Implementation and Minimization   
--section 042
 
 
-- Defining library as well as importing packages
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY Lab2_impl IS -- defining Entity
PORT(
A,B,C,D: IN STD_logic; -- declaring inputs
f: OUT STD_LOGIC); -- declearing outputs
END Lab2_impl;

ARCHITECTURE Behavior OF Lab2_impl IS -- -- defining Architecture
BEGIN 
f <= ((NOT A) AND (NOT B) AND (NOT C)) 
		OR (A AND(NOT C)AND (NOT D))
		OR (A AND C AND D);				-- creating a fuction f  using all inputs

END Behavior; --Ending Code