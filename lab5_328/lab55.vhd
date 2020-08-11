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
			ELSIF( clk 'EVENT AND clk = '0') THEN
			
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
			when s0 =>
				IF(data_in ='0') THEN
					current_state <= "0000"; -- s0
					student_id <= "0101";
				ELSE
					current_state <= "0001"; -- s0
					student_id <= "0000";
			when s1 =>
				IF(data_in ='0') THEN
					current_state <= "0001";
					student_id <= "0000";
				ELSE
					current_state <= "0000"; -- s0
					student_id <= "0101";
			when s2 => 
				IF(data_in ='0') THEN
					current_state <= "0010";
					student_id <= "0000";
				ELSE
					current_state <= "0000"; -- s0
					student_id <= "0101";
				
			when s3 =>
				IF(data_in ='0') THEN
					current_state <="0011";
					student_id <= "1000";
				ELSE
					current_state <= "0000"; -- s0
					student_id <= "0101";
				
			when s4 =>
				IF(data_in ='0') THEN
					current_state <= "0100";
					student_id <= "1001";
				ELSE
					current_state <= "0000"; -- s0
					student_id <= "0101";
				
			when s5 =>
				IF(data_in ='0') THEN
					current_state <= "0101";
					student_id <= "1000";
				ELSE
					current_state <= "0000"; -- s0
					student_id <= "0101";
				
			when s6 =>
				IF(data_in ='0') THEN
					current_state <= "0110";
					student_id <= "0000";
				ELSE
					current_state <= "0000"; -- s0
					student_id <= "0101";
				
			when s7 =>
				IF(data_in ='0') THEN
					current_state <= "0111";
					student_id <= "0001";
				ELSE
					current_state <= "0000"; -- s0
					student_id <= "0101";
				
			when s8 =>
				IF(data_in ='0') THEN
					current_state <= "1000";
					student_id <= "0000";
				ELSE
					current_state <= "0000"; -- s0
					student_id <= "0101";
			END CASE; 	
		END PROCESS; 
END ARCHITECTURE;				
					