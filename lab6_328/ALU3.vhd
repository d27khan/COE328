--Name: Daniel Khan(500898010)
--COE328 Section 041
--Lab6:ALU
LIBRARY ieee; --Defining all libraries and packages
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY ALU3 IS
	PORT( Clock			: IN STD_LOGIC;
			A,B 			: IN unsigned(7 DOWNTO 0); -- latch inputs
			student_id	: IN unsigned(3 DOWNTO 0); 	
			OP				: IN unsigned(0 TO 15);-- Decoder input
			neg			: OUT STD_LOGIC; 					
			R1 			: OUT unsigned(3 DOWNTO 0);	-- first 4 bits
			R2				: OUT unsigned(3 DOWNTO 0));  -- second 4 bits
END ALU3;

ARCHITECTURE calculation OF ALU3 IS
	SIGNAL Reg1,Reg2,Result: unsigned(7 DOWNTO 0):=(others => '0');
	SIGNAL Reg4 : unsigned(0 to 7);

			BEGIN
				Reg1 <= A;		-- temp storage										
				Reg2 <= B;
					PROCESS(Clock,OP, Student_ID(3 DOWNTO 0))
						BEGIN	
							IF(rising_edge(Clock)) THEN 		
							CASE OP IS 
								WHEN "0000000000000001" =>--A=(80)HEX -> 8="1000" and 0="0000"
									IF ("1000" > student_ID(3 DOWNTO 0)) THEN
										Result <= "00001010";-- YES
									ELSIF("0000" > student_ID) THEN
										Result <= "00001010";--YES
									ELSE
										Result<="00001011";--NO
									END IF;
										
								WHEN "0000000000000010" =>
									IF ("1000" > student_ID) THEN
										Result <= "00001010";
									ELSIF("0000" > student_ID) THEN
										Result <= "00001010";
									ELSE
										Result<="00001011";
									END IF;
								WHEN "0000000000000100" =>
										IF ("1000" > student_ID) THEN
										Result <= "00001010";
									ELSIF("0000" > student_ID) THEN
										Result <= "00001010";
									ELSE
										Result<="00001011";
									END IF;
								WHEN "0000000000001000" => 
										IF ("1000" > student_ID) THEN
										Result <= "00001010";
									ELSIF("0000" > student_ID) THEN
										Result <= "00001010";
									ELSE
										Result<="00001011";
									END IF;
								WHEN "0000000000010000" =>
										IF ("1000" > student_ID) THEN
										Result <= "00001010";
									ELSIF("0000" > student_ID) THEN
										Result <= "00001010";
									ELSE
										Result<="00001011";
									END IF;
									
								WHEN "0000000000100000" =>
										IF ("1000" > student_ID) THEN
										Result <= "00001010";
									ELSIF("0000" > student_ID) THEN
										Result <= "00001010";
									ELSE
										Result<="00001011";
									END IF;
								WHEN "0000000001000000"=>
									IF ("1000" > student_ID) THEN
										Result <= "00001010";
									ELSIF("0000" > student_ID) THEN
										Result <= "00001010";
									ELSE
										Result<="00001011";
									END IF;
									
								WHEN "0000000010000000"=>
									IF ("1000" > student_ID) THEN
										Result <= "00001010";
									ELSIF("0000" > student_ID) THEN
										Result <= "00001010";
									ELSE
										Result<="00001011";
									END IF;
									
								WHEN "0000000100000000"=>
									IF ("1000" > student_ID) THEN
										Result <= "00001010";
									ELSIF("0000" > student_ID) THEN
										Result <= "00001010";
									ELSE
										Result<="00001011";
									END IF;
									
								WHEN OTHERS =>
							END CASE;
							END IF;
						END PROCESS;
					R1 <= Result(3 DOWNTO 0);
					R2 <= Result(7 DOWNTO 4);
				END calculation;
				