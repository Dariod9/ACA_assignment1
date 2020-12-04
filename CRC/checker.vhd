LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY comparator IS
	PORT (in1: IN STD_LOGIC_VECTOR(7 downto 0);
			in2: IN STD_LOGIC_VECTOR(7 downto 0);
			errorC: OUT STD_LOGIC);
end comparator;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY checker IS
  PORT (a_r: IN STD_LOGIC_VECTOR(23 DOWNTO 0);
			error : OUT STD_LOGIC);
END checker;

ARCHITECTURE Behavioral OF checker IS
	signal r:std_logic_vector(7 downto 0);
	signal a:std_logic_vector(15 downto 0);
BEGIN
	a <= a_r(23 downto 8);

	r(0) <= a(0) xor a(3) xor a(5) xor a(7) xor a(8) xor a(9) xor a(10) xor a(11) xor a(12) xor a(15);
	r(1) <= a(0) xor a(1) xor a(3) xor a(4) xor a(5) xor a(6) xor a(7) xor a(13) xor a(15);
	r(2) <= a(0) xor a(1) xor a(2) xor a(3) xor a(4) xor a(6) xor a(9) xor a(10) xor a(11) xor a(12) xor a(14) xor a(15);
	r(3) <= a(0) xor a(1) xor a(2) xor a(4) xor a(8) xor a(9) xor a(13);
	r(4) <= a(1) xor a(2) xor a(3) xor a(5) xor a(9) xor a(10) xor a(14);
	r(5) <= a(0) xor a(2) xor a(4) xor a(5) xor a(6) xor a(7) xor a(8) xor a(9) xor a(12);
	r(6) <= a(1) xor a(3) xor a(5) xor a(6) xor a(7) xor a(8) xor a(9) xor a(10) xor a(13);
	r(7) <= a(2) xor a(4) xor a(6) xor a(7) xor a(8) xor a(9) xor a(10) xor a(11) xor a(14);	
	
	
	compr: entity work.comparator(BehavioralComp)
				port map( in1 => a_r(7 downto 0),
							in2 => r,
							errorC => error);
	
END Behavioral;

ARCHITECTURE BehavioralComp OF comparator IS
	signal err0:std_logic;
	signal err1:std_logic;
	signal err2:std_logic;
	signal err3:std_logic;
	signal err4:std_logic;
	signal err5:std_logic;
	signal err6:std_logic;
	signal err7:std_logic;
BEGIN
	
	err0 <= in1(0) xor in2(0);
	err1 <= in1(1) xor in2(1);
	err2 <= in1(2) xor in2(2);
	err3 <= in1(3) xor in2(3);
	err4 <= in1(4) xor in2(4);
	err5 <= in1(5) xor in2(5);
	err6 <= in1(6) xor in2(6);
	err7 <= in1(7) xor in2(7);
	
	errorC <= err0 or err1 or err2 or err3 or err4 or err5 or err6 or err7;
END BehavioralComp;