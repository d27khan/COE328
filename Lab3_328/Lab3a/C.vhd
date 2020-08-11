--Author: Daniel Khan (500898010)
--COE318 (Section 041)
--Lab 3: Adder and Subractor Unit
LIBRARY ieee ;    			 --Defining all libraries and packages
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY C IS
PORT ( k : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ; -- kmap inputs
		 L : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)) ; -- l colunms using minimized logic functions from k map
END C ;
--a = k(3) b= k(2) c=k(1) d=k(0);
ARCHITECTURE Behavior OF C IS
BEGIN
L(0) <= ((NOT k(3)) AND (NOT k(1)) AND (NOT k(0))) OR (k(2) AND k(1) AND k(0));  
--L(1) <= '0';
L(2) <= (NOT k(3)) AND (NOT k(2)) AND (NOT k(1)) AND (NOT k(0));
L(3) <= (k(2) AND (NOT k(1))) OR ((NOT k(2)) AND (k(1)) AND (k(0)));
  
END Behavior;