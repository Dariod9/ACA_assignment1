LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY encoder IS
  PORT (a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        a_r: OUT STD_LOGIC_VECTOR(23 DOWNTO 0));
END encoder;

ARCHITECTURE Behavioral OF encoder IS
	signal r:unsigned(7 downto 0);
	signal var_A, var_B,var_C,var_D,var_E,var_F,var_G, var_H,var_I,var_J, var_K: std_logic;
BEGIN

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
	
	a_r <= a & std_logic_vector(r);
END Behavioral;