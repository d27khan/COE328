--Author: Daniel Khan (500898010)
--COE318 (Section 041)
--Lab 3: Adder and Subractor Unit

LIBRARY ieee;								--Defining all libraries and packages
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ASUa IS
	PORT(	Cin				: IN STD_LOGIC; --Cin used to control whether addition or subtraction will be performed
			X,Y				: IN STD_LOGIC_VECTOR(3 DOWNTO 0);-- Vector array for all inputs
			S					: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);-- vector array for the answer of the input opertions
			Cout,Overflow,Neg	: OUT STD_LOGIC);-- Carry out and overflow detector as well as negative operator
END ASUa;

ARCHITECTURE behavior OF ASUa IS
	SIGNAL Sum : STD_LOGIC_VECTOR(4 DOWNTO 0); -- Signal vector to carry the addition and subraction values
BEGIN
	PROCESS ( X,Y,Cin)
	BEGIN	
		IF Cin = '0' THEN --first case is addition
			Sum <=('0' &X) + ('0' & Y); --adds X and y
			S<=Sum(3 DOWNTO 0); --points to output S
			Cout<=Sum(4); --carry out is stored in sum element number 4
			Overflow <=Sum(4) XOR X(3) XOR Y(3); -- incase of overflow detected from carry out this will be outputted
	ELSE
		Sum <=('0' &X) - ('0' & Y); -- Second case is subtraction
			IF (X>= Y) THEN -- Second sub case is when x is greater than y 
				S<=Sum(3 DOWNTO 0);	
				Neg <='0';-- no negtive sign needed
				Cout <= NOT Sum(4);
				ELSE -- final case is when a y is grater than x 
					S <= '0' - Sum(3 DOWNTO 0); -- will return a positive number by subtracting by 0
					Neg <= '1';--  negative sign will be required
					Cout <= NOT Sum(4);
			END IF;
			--Cout<=Sum(4); -- carry out storage
			Overflow <= Sum(4) XOR X(3) XOR Y(3); -- overflow detection
			
		END IF;
	END PROCESS;
END behavior;

	