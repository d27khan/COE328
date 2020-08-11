--Name: Daniel Khan(500898010)
--COE328 Section 041
--Lab6:ALU
LIBRARY ieee; --Defining all libraries and packages
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY ALU IS
	PORT( Clock			: IN STD_LOGIC;
			A,B 			: IN unsigned(7 DOWNTO 0); -- latch inputs
			student_id	: IN unsigned(3 DOWNTO 0); 	
			OP				: IN unsigned(0 TO 15);-- Decoder input
			neg			: OUT STD_LOGIC; 					
			R1 			: OUT unsigned(3 DOWNTO 0);	-- first 4 bits
			R2				: OUT unsigned(3 DOWNTO 0));  -- second 4 bits
END ALU;

ARCHITECTURE calculation OF ALU IS
	SIGNAL Reg1,Reg2,Result: unsigned(7 DOWNTO 0):=(others => '0');
	SIGNAL Reg4 : unsigned(0 to 7);

			BEGIN
				Reg1 <= A;		-- temp storage										
				Reg2 <= B;
					PROCESS(Clock,OP)
						BEGIN	
							IF(rising_edge(Clock)) THEN 		
							CASE OP IS 
								WHEN "0000000000000001" =>-- Addition
									Result<= Reg1 + Reg2;
								WHEN "0000000000000010" =>--Subtraction
									IF Reg1<Reg2 THEN
										Result <= (NOT(Reg1-Reg2)+1);
										neg<='1';
									ELSE
										Result <= (Reg1 - Reg2);
										neg <= '0';
									END IF;
								WHEN "0000000000000100" =>-- Inverse
									Result <= (NOT Reg1);
								WHEN "0000000000001000" =>--Boolean NAND 
									Result <= Reg1 NAND Reg2;
								WHEN "0000000000010000" =>--Boolean NOR
									Result <= Reg1 NOR Reg2;
								WHEN "0000000000100000" =>--Boolean AND
									Result<= Reg1 AND Reg2;
								WHEN "0000000001000000"=>-- Boolean OR
									Result <= Reg1 OR Reg2;
								WHEN "0000000010000000"=>-- Boolean XOR
									Result <= Reg1 XOR Reg2;
								WHEN "0000000100000000"=>-- Boolean XnOR
									Result <= Reg1 XNOR Reg2;
								WHEN OTHERS =>
								
							END CASE;
							END IF;
						END PROCESS;
					R1 <= Result(3 DOWNTO 0);
					R2 <= Result(7 DOWNTO 4);
				END calculation;
				