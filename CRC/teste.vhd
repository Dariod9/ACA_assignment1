LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY teste IS
  PORT (a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        coded: OUT STD_LOGIC_VECTOR(22 DOWNTO 0));
END teste;

ARCHITECTURE Behavioral OF teste IS

	signal a_temp : unsigned(22 downto 0);
	signal ax : unsigned(22 downto 0);
	--signal r_temp:unsigned(8 downto 0) <= "00000000" ;
	signal coded_temp:unsigned(8 downto 0);
	signal d:unsigned(8 downto 0);-- <= "100101111";
	signal q:unsigned(15 downto 0);
	signal i:integer;
	
BEGIN
--leva process(a) ou não?
	a_temp <= shift_left(unsigned(a),8) or 00000000;
	ax <= a_temp(22 downto 15);
	
process(ax)
begin
	for I in 15 to 8 loop
			coded_temp(I) <= ax(I+1);
	end loop;
end process;
END Behavioral;