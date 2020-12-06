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
	signal var_A, var_B,var_C,var_D,var_E,var_F,var_G, var_H,var_I,var_J, var_K: std_logic;

BEGIN
	a <= a_r(23 downto 8);

	var_A <= a(2) xor a(4);
   var_B <= a(0) xor a(15);--var_A xor 
   var_C <= a(1) xor a(3);
   var_D <= var_A xor var_B xor var_C; --adicionei A
   var_E <= a(5) xor a(7);
   var_F <= var_E xor a(6);
   var_G <= a(8) xor a(9);
   var_H <= var_F xor var_G;
   var_I <= a(10) xor a(11); --xor a(12) xor a(14)
   var_J <= var_I xor a(14);
   var_K <= var_J xor a(12);

	r(0) <= a(3) xor (var_H xor a(6)) xor (var_I xor a(12)) xor var_B; --5
   r(1) <= (var_D xor a(2)) xor var_F xor a(13); --3
   r(2) <= var_D xor a(6) xor a(9) xor var_K; --3
   r(3) <= (var_D xor a(3)) xor var_G xor a(13) xor a(15); --4
   r(4) <= (var_C xor a(2)) xor a(5) xor a(9) xor a(10) xor a(14); --5
   r(5) <= var_B xor var_H xor a(12); --2
   r(6) <= var_C xor var_H xor a(10) xor a(13); --3
   r(7) <= var_A xor (var_H xor a(5)) xor var_J; --3	
	
	
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