-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/08/2020 21:07:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          checker
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY checker_vhd_vec_tst IS
END checker_vhd_vec_tst;
ARCHITECTURE checker_arch OF checker_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a_r : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL error : STD_LOGIC;
COMPONENT checker
	PORT (
	a_r : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
	error : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : checker
	PORT MAP (
-- list connections between master ports and signals
	a_r => a_r,
	error => error
	);
-- a_r[23]
t_prcs_a_r_23: PROCESS
BEGIN
	a_r(23) <= '0';
WAIT;
END PROCESS t_prcs_a_r_23;
-- a_r[22]
t_prcs_a_r_22: PROCESS
BEGIN
	a_r(22) <= '1';
WAIT;
END PROCESS t_prcs_a_r_22;
-- a_r[21]
t_prcs_a_r_21: PROCESS
BEGIN
	a_r(21) <= '0';
WAIT;
END PROCESS t_prcs_a_r_21;
-- a_r[20]
t_prcs_a_r_20: PROCESS
BEGIN
	a_r(20) <= '0';
WAIT;
END PROCESS t_prcs_a_r_20;
-- a_r[19]
t_prcs_a_r_19: PROCESS
BEGIN
	a_r(19) <= '0';
WAIT;
END PROCESS t_prcs_a_r_19;
-- a_r[18]
t_prcs_a_r_18: PROCESS
BEGIN
	a_r(18) <= '0';
WAIT;
END PROCESS t_prcs_a_r_18;
-- a_r[17]
t_prcs_a_r_17: PROCESS
BEGIN
	a_r(17) <= '1';
WAIT;
END PROCESS t_prcs_a_r_17;
-- a_r[16]
t_prcs_a_r_16: PROCESS
BEGIN
	a_r(16) <= '1';
WAIT;
END PROCESS t_prcs_a_r_16;
-- a_r[15]
t_prcs_a_r_15: PROCESS
BEGIN
	a_r(15) <= '1';
WAIT;
END PROCESS t_prcs_a_r_15;
-- a_r[14]
t_prcs_a_r_14: PROCESS
BEGIN
	a_r(14) <= '0';
WAIT;
END PROCESS t_prcs_a_r_14;
-- a_r[13]
t_prcs_a_r_13: PROCESS
BEGIN
	a_r(13) <= '0';
WAIT;
END PROCESS t_prcs_a_r_13;
-- a_r[12]
t_prcs_a_r_12: PROCESS
BEGIN
	a_r(12) <= '0';
WAIT;
END PROCESS t_prcs_a_r_12;
-- a_r[11]
t_prcs_a_r_11: PROCESS
BEGIN
	a_r(11) <= '1';
WAIT;
END PROCESS t_prcs_a_r_11;
-- a_r[10]
t_prcs_a_r_10: PROCESS
BEGIN
	a_r(10) <= '0';
WAIT;
END PROCESS t_prcs_a_r_10;
-- a_r[9]
t_prcs_a_r_9: PROCESS
BEGIN
	a_r(9) <= '0';
WAIT;
END PROCESS t_prcs_a_r_9;
-- a_r[8]
t_prcs_a_r_8: PROCESS
BEGIN
	a_r(8) <= '0';
WAIT;
END PROCESS t_prcs_a_r_8;
-- a_r[7]
t_prcs_a_r_7: PROCESS
BEGIN
	a_r(7) <= '0';
WAIT;
END PROCESS t_prcs_a_r_7;
-- a_r[6]
t_prcs_a_r_6: PROCESS
BEGIN
	a_r(6) <= '0';
WAIT;
END PROCESS t_prcs_a_r_6;
-- a_r[5]
t_prcs_a_r_5: PROCESS
BEGIN
	a_r(5) <= '1';
WAIT;
END PROCESS t_prcs_a_r_5;
-- a_r[4]
t_prcs_a_r_4: PROCESS
BEGIN
	a_r(4) <= '1';
WAIT;
END PROCESS t_prcs_a_r_4;
-- a_r[3]
t_prcs_a_r_3: PROCESS
BEGIN
	a_r(3) <= '0';
WAIT;
END PROCESS t_prcs_a_r_3;
-- a_r[2]
t_prcs_a_r_2: PROCESS
BEGIN
	a_r(2) <= '1';
WAIT;
END PROCESS t_prcs_a_r_2;
-- a_r[1]
t_prcs_a_r_1: PROCESS
BEGIN
	a_r(1) <= '0';
WAIT;
END PROCESS t_prcs_a_r_1;
-- a_r[0]
t_prcs_a_r_0: PROCESS
BEGIN
	a_r(0) <= '0';
WAIT;
END PROCESS t_prcs_a_r_0;
END checker_arch;
