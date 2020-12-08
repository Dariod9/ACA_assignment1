LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY encoder IS
  PORT (a: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        a_r: OUT STD_LOGIC_VECTOR(23 DOWNTO 0));
END encoder;

ARCHITECTURE Behavioral OF encoder IS

	component gateXor2 IS
	  PORT (x0, x1: IN STD_LOGIC;
			  y: OUT STD_LOGIC);
	END component;

	signal r:unsigned(7 downto 0);
	signal var_A, var_B,var_C,var_D,var_E,var_F,var_G, var_H,var_I,var_J, var_K,var_M,var_N,var_O,var_P,var_Q: std_logic;
	signal var0_5,var13_8,var15_6,var4_9,var0_5_12,var13_8_15_6,varA_9,varO_C,var4_9_O,varA_P_9,N_7,varN_K,varE_I,varI_3 : std_logic;
	
BEGIN
		
		--1st level
	xor1: gateXor2 port map(a(0),a(15),var_A);
	xor2: gateXor2 port map(a(4),a(6),var_B);
	xor3: gateXor2 port map(a(2),a(9),var_C);
	xor4: gateXor2 port map(a(5),a(3),var_D);
	xor5: gateXor2 port map(a(8),a(7),var_E);
	xor6: gateXor2 port map(a(10),a(11),var_F);
	xor7: gateXor2 port map(a(10),a(1),var_O);
	xor8: gateXor2 port map(a(0),a(5),var0_5);
	xor9: gateXor2 port map(a(13), a(8), var13_8);
	xor10: gateXor2 port map(a(15), a(6),var15_6);
	xor11: gateXor2 port map(a(4),a(9),var4_9);
	
		--2nd level
	xor12: gateXor2 port map(var_A,a(1),var_G);
	xor13: gateXor2 port map(var_F,a(14),var_H);
	xor14: gateXor2 port map(var_B,var_E,var_K);
	xor15: gateXor2 port map(a(13),var_D,var_N);
	xor16: gateXor2 port map(a(14),var_D,var_P);
	xor17: gateXor2 port map(var0_5,a(12),var0_5_12);
	xor18: gateXor2 port map(var13_8,var15_6,var13_8_15_6);
	xor19: gateXor2 port map(var_A,a(9),varA_9);
	xor20: gateXor2 port map(var_O,var_C,varO_C);
	xor21: gateXor2 port map(var4_9,var_O,var4_9_O);
	
		--3rd level
	xor22: gateXor2 port map(var_K,var_C,var_M);
	xor23: gateXor2 port map(var_G,var_B,var_J);
	xor24: gateXor2 port map(var_H,a(12),var_I);
	xor25: gateXor2 port map(var_P,varA_9,varA_P_9);
	xor26: gateXor2 port map(var_N,a(7),N_7);
	xor27: gateXor2 port map(var_K,var_N,varN_K);
	xor28: gateXor2 port map(var_P,varO_C,r(4));
	
		--4th level
	xor29: gateXor2 port map(var_C,var_J,var_Q);
	xor30: gateXor2 port map(var_E,var_I,varE_I);
	xor31: gateXor2 port map(a(3),var_I,varI_3);
	xor32: gateXor2 port map(var0_5_12,var_M,r(5));
	xor33: gateXor2 port map(N_7,var_J,r(1));
	xor34: gateXor2 port map(var_H,var_M,r(7));
	xor35: gateXor2 port map(var4_9_O,varN_K,r(6));
	
		--5th level
	xor36: gateXor2 port map(var13_8_15_6,var_Q,r(3));
	xor37: gateXor2 port map(varE_I,varA_P_9,r(0));
	xor38: gateXor2 port map(varI_3,var_Q,r(2));
	
	--var_A <= a(0) xor a(15);
   --var_B <= a(4) xor a(6); 
   --var_C <= a(2) xor a(9);
   --var_D <= a(5) xor a(3); 
   --var_E <= a(8) xor a(7);
   --var_F <= a(10) xor a(11);
   --var_G <= var_A xor a(1); 
   --var_H <= var_F xor a(14);
   --var_I <= var_H xor a(12); 
   --var_J <= var_G xor var_B;
   --var_K <= var_B xor var_E;
	--var_M <= var_K xor var_C;
	--var_N <= a(13) xor var_D;
	--var_O <= a(10) xor a(1);
	--var_P <= var_D xor a(14);
	--var_Q <= var_J xor var_C;

	--r(0) <= var_A xor var_P xor var_E xor var_I xor a(9); --4
   --r(1) <= var_J xor var_N xor a(7); --2
   --r(2) <= var_Q xor a(3) xor var_I; --2
   --r(3) <= a(15) xor a(6) xor var_Q xor a(13) xor a(8); --4
   --r(4) <= var_C xor var_O xor var_P; --2
   --r(5) <= var_M xor a(0) xor a(5) xor a(12); --3
   --r(6) <= var_N xor var_K xor a(4) xor a(9) xor var_O; --4
   --r(7) <= var_M xor var_H; --1		
	
	a_r <= a & std_logic_vector(r);
END Behavioral;