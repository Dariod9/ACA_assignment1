LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY encoder IS
  PORT (a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        a_r: OUT STD_LOGIC_VECTOR(23 DOWNTO 0));
END encoder;

ARCHITECTURE Behavioral OF encoder IS
	signal r:unsigned(7 downto 0);
BEGIN

	r(0) <= a(0) xor a(3) xor a(5) xor a(7) xor a(8) xor a(9) xor a(10) xor a(11) xor a(12) xor a(15);
	r(1) <= a(0) xor a(1) xor a(3) xor a(4) xor a(5) xor a(6) xor a(7) xor a(13) xor a(15);
	r(2) <= a(0) xor a(1) xor a(2) xor a(3) xor a(4) xor a(6) xor a(9) xor a(10) xor a(11) xor a(12) xor a(14) xor a(15);
	r(3) <= a(0) xor a(1) xor a(2) xor a(4) xor a(8) xor a(9) xor a(13);
	r(4) <= a(1) xor a(2) xor a(3) xor a(5) xor a(9) xor a(10) xor a(14);
	r(5) <= a(0) xor a(2) xor a(4) xor a(5) xor a(6) xor a(7) xor a(8) xor a(9) xor a(12);
	r(6) <= a(1) xor a(3) xor a(5) xor a(6) xor a(7) xor a(8) xor a(9) xor a(10) xor a(13);
	r(7) <= a(2) xor a(4) xor a(6) xor a(7) xor a(8) xor a(9) xor a(10) xor a(11) xor a(14);	
	
	a_r <= a & std_logic_vector(r);
END Behavioral;