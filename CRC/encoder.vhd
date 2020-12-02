LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY encoder IS
  PORT (a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        coded: OUT STD_LOGIC_VECTOR(8 DOWNTO 0));
END encoder;

ARCHITECTURE Behavioral OF encoder IS
	signal ax : unsigned(15 downto 0);
	--signal r_temp:unsigned(8 downto 0) <= "00000000" ;
	signal r:unsigned(8 downto 0);
	signal d:std_logic_vector(8 downto 0);
	signal q:unsigned(15 downto 0);
	signal i:integer;
	
BEGIN
--leva process(a) ou não?
	--a_temp <= shift_left(unsigned(a),8) or 00000000
	--i <=22
process(ax, q)
begin

	ax <= unsigned(a);--(shift_left(unsigned(a),7));
	q <= unsigned(a);	
	d<= "100101111" ;

	for startingBit in 0 to 8 loop
		for I in 15 to 7 loop
			--if (d(I-7) = '1') then
				r(I-7) <= ax(I-startingBit-1) xor q(I);
				r(I-8) <= ax(I-startingBit-2) xor q(I);
				r(I-9) <= ax(I-startingBit-3) xor q(I);
				r(I-10) <= ax(I-startingBit-4) xor q(I);
				r(I-11) <= ax(I-startingBit-5) xor q(I);
				r(I-12) <= ax(I-startingBit-6) xor q(I);
				r(I-13) <= ax(I-startingBit-7) xor q(I);
				r(I-14) <= ax(I-startingBit-8) xor q(I);
				r(I-15) <= ax(I-startingBit-9) xor q(I);
			--else
				--r(I-8) <= ax(I-startingBit-8);
			--end if;
		end loop;
	end loop;
	coded<= std_logic_vector(r);
end process;
END Behavioral;