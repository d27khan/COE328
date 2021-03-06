--Author: Daniel Khan (500898010)
--COE318 (Section 041)
--Lab 5: VHDL for Sequential Circuits: Implementing a customized State Machine
--MEALY5
LIBRARY ieee;			--Defining all libraries and packages
USE ieee.std_logic_1164.all;
ENTITY lab5 IS
	PORT (
		clk			: IN std_logic;
		data_in		: IN std_logic;
		reset			: IN std_logic;
		student_ID	: OUT std_logic_vector(3 DOWNTO 0);
		current_state	:OUT std_logic_vector(3 DOWNTO 0));
END ENTITY;

ARCHITECTURE fsm OF lab5 IS 
	TYPE state_type IS (s0,s1,s2,s3,s4,s5,s6,s7,s8);
	SIGNAL yfsm : state_type;
BEGIN 
	PROCESS (clk, reset)
		BEGIN	
			IF reset = '1' THEN
				yfsm <= s0;
			ELSIF( clk 'EVENT AND clk = '1') THEN
			
				CASE yfsm IS -- in order of mealy 5
					WHEN s0=>
						IF data_in = '1' THEN 
							yfsm <= s1;
						ELSE
							yfsm <= s0;
						END IF;
					WHEN s1=>
						IF data_in = '1' THEN
							yfsm <= s8;
						ELSE 
							yfsm <= s1;
						END IF;
					WHEN s8=>
						IF data_in = '1' THEN 
							yfsm <= s2;
						ELSE
							yfsm <= s8;
						END IF;
					WHEN s2=>
						IF data_in = '1' THEN 
							yfsm <= s7;
						ELSE
							yfsm <= s2;
						END IF;
					WHEN s7=>
						IF data_in = '1' THEN 
							yfsm <= s3;
						ELSE
							yfsm <= s7;
						END IF;
					WHEN s3=>
						IF data_in = '1' THEN 
							yfsm <= s6;
						ELSE
							yfsm <= s3;
						END IF;
					WHEN s6=>
						IF data_in = '1' THEN 
							yfsm <= s4;
						ELSE
							yfsm <= s6;
						END IF;
					WHEN s4=>
						IF data_in = '1' THEN 
							yfsm <= s5;
						ELSE
							yfsm <= s4;
						END IF;
					WHEN s5=>
						IF data_in = '1' THEN 
							yfsm <= s0;
						ELSE
							yfsm <= s5;
						END IF;
				END CASE;
			END IF;
		END PROCESS;
		
		PROCESS (yfsm, data_in)
		BEGIN
			CASE yfsm IS
				WHEN s0=>
					IF data_in = '1' THEN 
						student_ID <= "0000";--0
						current_state<="0001";--cs2
					ELSE
						student_ID<= "0101";--5
						current_state<= "0000";--cs1
					END IF;		
				WHEN s1=>	
					IF data_in = '1' THEN 
						student_ID <= "0000";--0
						current_state<="1000";--cs3
					ELSE
						student_ID<= "0000";--0
						current_state<= "0001";--cs2
					END IF;				
				WHEN s8=>
					IF data_in = '1' THEN 
						student_ID <= "1000";--8
						current_state<="0010";--cs4
					ELSE
						student_ID<= "0000";--0
						current_state<= "1000";--cs3
					END IF;
				WHEN s2=>
					IF data_in = '1' THEN 
						student_ID <= "1001";--9
						current_state<="0111";--cs5
					ELSE
						student_ID<= "1000";--8
						current_state<= "0010";--cs3
					END IF;
				WHEN s7=>
					IF data_in = '1' THEN 
						student_ID <= "1000";--8
						current_state<="0011";--cs6
					ELSE
						student_ID<= "1001";--9
						current_state<= "0111";--cs5
					END IF;
				WHEN s3=> 
					IF data_in = '1' THEN 
						student_ID <= "0000";--0
						current_state<="0110";--cs7
					ELSE
						student_ID<= "1000";--8
						current_state<= "0011";--cs6
					END IF;
				WHEN s6=>
					IF data_in = '1' THEN 
						student_ID <= "0001";--1
						current_state<="0100";--cs8
					ELSE
						student_ID<= "0000";--0
						current_state<= "0110";--cs7
					END IF;
				WHEN s4=>
					IF data_in = '1' THEN 
						student_ID <= "0000";--0
						current_state<="0101";--cs9
					ELSE
						student_ID<= "0001"; --1
						current_state<= "0100";--cs8
					END IF;	
				WHEN s5=> 
					IF data_in = '1' THEN 
						student_ID <= "0101";--5
						current_state<="0000";--cs1
					ELSIF data_in = '0' THEN
						student_ID<= "0000";--0
						current_state<= "0101";--cs9
					END IF;
			END CASE; 	
		END PROCESS; 
END fsm;				
					