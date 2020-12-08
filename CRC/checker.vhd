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
	
	component gateXor2 IS
	  PORT (x0, x1: IN STD_LOGIC;
			  y: OUT STD_LOGIC);
	END component;

	signal r:std_logic_vector(7 downto 0);
	signal var_A, var_B,var_C,var_D,var_E,var_F,var_G, var_H,var_I,var_J, var_K,var_M,var_N,var_O,var_P,var_Q: std_logic;
	signal var0_5,var13_8,var15_6,var4_9,var0_5_12,var13_8_15_6,varA_9,varO_C,var4_9_O,varA_P_9,N_7,varN_K,varE_I,varI_3 : std_logic;
	signal a:std_logic_vector(15 downto 0);
	--signal var_A, var_B,var_C,var_D,var_E,var_F,var_G, var_H,var_I,var_J, var_K: std_logic;

BEGIN
	a <= a_r(23 downto 8);

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
	
	--var_A <= a(2) xor a(4);
   --var_B <= a(0) xor a(15);--var_A xor 
   --var_C <= a(1) xor a(3);
   --var_D <= var_A xor var_B xor var_C; --adicionei A
   --var_E <= a(5) xor a(7);
   --var_F <= var_E xor a(6);
   --var_G <= a(8) xor a(9);
   --var_H <= var_F xor var_G;
   --var_I <= a(10) xor a(11); --xor a(12) xor a(14)
   --var_J <= var_I xor a(14);
   --var_K <= var_J xor a(12);

	--r(0) <= a(3) xor (var_H xor a(6)) xor (var_I xor a(12)) xor var_B; --5
   --r(1) <= (var_D xor a(2)) xor var_F xor a(13); --3
   --r(2) <= var_D xor a(6) xor a(9) xor var_K; --3
   --r(3) <= (var_D xor a(3)) xor var_G xor a(13) xor a(15); --4
   --r(4) <= (var_C xor a(2)) xor a(5) xor a(9) xor a(10) xor a(14); --5
   --r(5) <= var_B xor var_H xor a(12); --2
   --r(6) <= var_C xor var_H xor a(10) xor a(13); --3
   --r(7) <= var_A xor (var_H xor a(5)) xor var_J; --3
	
--	r(0) <= a(0) xor a(3) xor a(5) xor a(7) xor a(8) xor a(9) xor a(10) xor a(11) xor a(12) xor a(15);
--	r(1) <= a(0) xor a(1) xor a(3) xor a(4) xor a(5) xor a(6) xor a(7) xor a(13) xor a(15);
--	r(2) <= a(0) xor a(1) xor a(2) xor a(3) xor a(4) xor a(6) xor a(9) xor a(10) xor a(11) xor a(12) xor a(14) xor a(15);
--	r(3) <= a(0) xor a(1) xor a(2) xor a(4) xor a(8) xor a(9) xor a(13);
--	r(4) <= a(1) xor a(2) xor a(3) xor a(5) xor a(9) xor a(10) xor a(14);
--	r(5) <= a(0) xor a(2) xor a(4) xor a(5) xor a(6) xor a(7) xor a(8) xor a(9) xor a(12);
--	r(6) <= a(1) xor a(3) xor a(5) xor a(6) xor a(7) xor a(8) xor a(9) xor a(10) xor a(13);
--	r(7) <= a(2) xor a(4) xor a(6) xor a(7) xor a(8) xor a(9) xor a(10) xor a(11) xor a(14);	
	
	
	compr: entity work.comparator(BehavioralComp)
				port map( in1 => a_r(7 downto 0),
							in2 => r,
							errorC => error);
	
END Behavioral;

ARCHITECTURE BehavioralComp OF comparator IS
	component gateOr8 IS
	  PORT (x0, x1, x2, x3, x4, x5, x6, x7: IN STD_LOGIC;
			  y: OUT STD_LOGIC);
	END component;

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
	
	 or8: gateOr8 port map(err0,err1,err2,err3,err4,err5,err6,err7,errorC);
END BehavioralComp;