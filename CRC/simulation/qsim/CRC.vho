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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/04/2020 17:41:42"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	checker IS
    PORT (
	a_r : IN std_logic_vector(23 DOWNTO 0);
	error : OUT std_logic
	);
END checker;

ARCHITECTURE structure OF checker IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a_r : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_error : std_logic;
SIGNAL \error~output_o\ : std_logic;
SIGNAL \a_r[8]~input_o\ : std_logic;
SIGNAL \a_r[19]~input_o\ : std_logic;
SIGNAL \a_r[17]~input_o\ : std_logic;
SIGNAL \a_r[18]~input_o\ : std_logic;
SIGNAL \compr|err0~0_combout\ : std_logic;
SIGNAL \a_r[11]~input_o\ : std_logic;
SIGNAL \a_r[20]~input_o\ : std_logic;
SIGNAL \a_r[23]~input_o\ : std_logic;
SIGNAL \compr|err0~1_combout\ : std_logic;
SIGNAL \a_r[10]~input_o\ : std_logic;
SIGNAL \a_r[22]~input_o\ : std_logic;
SIGNAL \a_r[12]~input_o\ : std_logic;
SIGNAL \a_r[14]~input_o\ : std_logic;
SIGNAL \compr|err2~0_combout\ : std_logic;
SIGNAL \a_r[2]~input_o\ : std_logic;
SIGNAL \a_r[9]~input_o\ : std_logic;
SIGNAL \compr|err2~1_combout\ : std_logic;
SIGNAL \a_r[13]~input_o\ : std_logic;
SIGNAL \compr|err1~0_combout\ : std_logic;
SIGNAL \a_r[15]~input_o\ : std_logic;
SIGNAL \a_r[21]~input_o\ : std_logic;
SIGNAL \compr|err1~1_combout\ : std_logic;
SIGNAL \a_r[1]~input_o\ : std_logic;
SIGNAL \compr|err1~2_combout\ : std_logic;
SIGNAL \a_r[6]~input_o\ : std_logic;
SIGNAL \a_r[16]~input_o\ : std_logic;
SIGNAL \compr|err6~0_combout\ : std_logic;
SIGNAL \compr|errorC~0_combout\ : std_logic;
SIGNAL \a_r[5]~input_o\ : std_logic;
SIGNAL \compr|err5~0_combout\ : std_logic;
SIGNAL \compr|err5~1_combout\ : std_logic;
SIGNAL \compr|err3~0_combout\ : std_logic;
SIGNAL \a_r[3]~input_o\ : std_logic;
SIGNAL \compr|err3~1_combout\ : std_logic;
SIGNAL \compr|errorC~1_combout\ : std_logic;
SIGNAL \a_r[0]~input_o\ : std_logic;
SIGNAL \compr|err0~2_combout\ : std_logic;
SIGNAL \compr|errorC~2_combout\ : std_logic;
SIGNAL \a_r[7]~input_o\ : std_logic;
SIGNAL \compr|err7~0_combout\ : std_logic;
SIGNAL \compr|err7~1_combout\ : std_logic;
SIGNAL \a_r[4]~input_o\ : std_logic;
SIGNAL \compr|err4~0_combout\ : std_logic;
SIGNAL \compr|err4~1_combout\ : std_logic;
SIGNAL \compr|errorC~combout\ : std_logic;

BEGIN

ww_a_r <= a_r;
error <= ww_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\error~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \compr|errorC~combout\,
	devoe => ww_devoe,
	o => \error~output_o\);

\a_r[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(8),
	o => \a_r[8]~input_o\);

\a_r[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(19),
	o => \a_r[19]~input_o\);

\a_r[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(17),
	o => \a_r[17]~input_o\);

\a_r[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(18),
	o => \a_r[18]~input_o\);

\compr|err0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err0~0_combout\ = \a_r[8]~input_o\ $ (\a_r[19]~input_o\ $ (\a_r[17]~input_o\ $ (\a_r[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[8]~input_o\,
	datab => \a_r[19]~input_o\,
	datac => \a_r[17]~input_o\,
	datad => \a_r[18]~input_o\,
	combout => \compr|err0~0_combout\);

\a_r[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(11),
	o => \a_r[11]~input_o\);

\a_r[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(20),
	o => \a_r[20]~input_o\);

\a_r[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(23),
	o => \a_r[23]~input_o\);

\compr|err0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err0~1_combout\ = \compr|err0~0_combout\ $ (\a_r[11]~input_o\ $ (\a_r[20]~input_o\ $ (\a_r[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compr|err0~0_combout\,
	datab => \a_r[11]~input_o\,
	datac => \a_r[20]~input_o\,
	datad => \a_r[23]~input_o\,
	combout => \compr|err0~1_combout\);

\a_r[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(10),
	o => \a_r[10]~input_o\);

\a_r[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(22),
	o => \a_r[22]~input_o\);

\a_r[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(12),
	o => \a_r[12]~input_o\);

\a_r[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(14),
	o => \a_r[14]~input_o\);

\compr|err2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err2~0_combout\ = \a_r[10]~input_o\ $ (\a_r[22]~input_o\ $ (\a_r[12]~input_o\ $ (\a_r[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[10]~input_o\,
	datab => \a_r[22]~input_o\,
	datac => \a_r[12]~input_o\,
	datad => \a_r[14]~input_o\,
	combout => \compr|err2~0_combout\);

\a_r[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(2),
	o => \a_r[2]~input_o\);

\a_r[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(9),
	o => \a_r[9]~input_o\);

\compr|err2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err2~1_combout\ = \compr|err0~1_combout\ $ (\compr|err2~0_combout\ $ (\a_r[2]~input_o\ $ (\a_r[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compr|err0~1_combout\,
	datab => \compr|err2~0_combout\,
	datac => \a_r[2]~input_o\,
	datad => \a_r[9]~input_o\,
	combout => \compr|err2~1_combout\);

\a_r[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(13),
	o => \a_r[13]~input_o\);

\compr|err1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err1~0_combout\ = \a_r[11]~input_o\ $ (\a_r[14]~input_o\ $ (\a_r[9]~input_o\ $ (\a_r[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[11]~input_o\,
	datab => \a_r[14]~input_o\,
	datac => \a_r[9]~input_o\,
	datad => \a_r[13]~input_o\,
	combout => \compr|err1~0_combout\);

\a_r[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(15),
	o => \a_r[15]~input_o\);

\a_r[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(21),
	o => \a_r[21]~input_o\);

\compr|err1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err1~1_combout\ = \compr|err1~0_combout\ $ (\a_r[15]~input_o\ $ (\a_r[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compr|err1~0_combout\,
	datab => \a_r[15]~input_o\,
	datac => \a_r[21]~input_o\,
	combout => \compr|err1~1_combout\);

\a_r[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(1),
	o => \a_r[1]~input_o\);

\compr|err1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err1~2_combout\ = \a_r[8]~input_o\ $ (\a_r[23]~input_o\ $ (\a_r[12]~input_o\ $ (\a_r[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[8]~input_o\,
	datab => \a_r[23]~input_o\,
	datac => \a_r[12]~input_o\,
	datad => \a_r[1]~input_o\,
	combout => \compr|err1~2_combout\);

\a_r[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(6),
	o => \a_r[6]~input_o\);

\a_r[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(16),
	o => \a_r[16]~input_o\);

\compr|err6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err6~0_combout\ = \a_r[17]~input_o\ $ (\a_r[18]~input_o\ $ (\a_r[6]~input_o\ $ (\a_r[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[17]~input_o\,
	datab => \a_r[18]~input_o\,
	datac => \a_r[6]~input_o\,
	datad => \a_r[16]~input_o\,
	combout => \compr|err6~0_combout\);

\compr|errorC~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|errorC~0_combout\ = (\compr|err2~1_combout\) # ((\compr|err1~1_combout\ & ((!\compr|err6~0_combout\) # (!\compr|err1~2_combout\))) # (!\compr|err1~1_combout\ & ((\compr|err1~2_combout\) # (\compr|err6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compr|err2~1_combout\,
	datab => \compr|err1~1_combout\,
	datac => \compr|err1~2_combout\,
	datad => \compr|err6~0_combout\,
	combout => \compr|errorC~0_combout\);

\a_r[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(5),
	o => \a_r[5]~input_o\);

\compr|err5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err5~0_combout\ = \a_r[13]~input_o\ $ (\a_r[15]~input_o\ $ (\a_r[16]~input_o\ $ (\a_r[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[13]~input_o\,
	datab => \a_r[15]~input_o\,
	datac => \a_r[16]~input_o\,
	datad => \a_r[5]~input_o\,
	combout => \compr|err5~0_combout\);

\compr|err5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err5~1_combout\ = \a_r[20]~input_o\ $ (\a_r[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a_r[20]~input_o\,
	datad => \a_r[14]~input_o\,
	combout => \compr|err5~1_combout\);

\compr|err3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err3~0_combout\ = \a_r[8]~input_o\ $ (\a_r[17]~input_o\ $ (\a_r[10]~input_o\ $ (\a_r[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[8]~input_o\,
	datab => \a_r[17]~input_o\,
	datac => \a_r[10]~input_o\,
	datad => \a_r[12]~input_o\,
	combout => \compr|err3~0_combout\);

\a_r[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(3),
	o => \a_r[3]~input_o\);

\compr|err3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err3~1_combout\ = \a_r[9]~input_o\ $ (\a_r[21]~input_o\ $ (\a_r[16]~input_o\ $ (\a_r[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[9]~input_o\,
	datab => \a_r[21]~input_o\,
	datac => \a_r[16]~input_o\,
	datad => \a_r[3]~input_o\,
	combout => \compr|err3~1_combout\);

\compr|errorC~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|errorC~1_combout\ = (\compr|err3~0_combout\ & ((\compr|err5~0_combout\ $ (!\compr|err5~1_combout\)) # (!\compr|err3~1_combout\))) # (!\compr|err3~0_combout\ & ((\compr|err3~1_combout\) # (\compr|err5~0_combout\ $ (\compr|err5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compr|err5~0_combout\,
	datab => \compr|err5~1_combout\,
	datac => \compr|err3~0_combout\,
	datad => \compr|err3~1_combout\,
	combout => \compr|errorC~1_combout\);

\a_r[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(0),
	o => \a_r[0]~input_o\);

\compr|err0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err0~2_combout\ = \a_r[13]~input_o\ $ (\a_r[15]~input_o\ $ (\a_r[16]~input_o\ $ (\a_r[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[13]~input_o\,
	datab => \a_r[15]~input_o\,
	datac => \a_r[16]~input_o\,
	datad => \a_r[0]~input_o\,
	combout => \compr|err0~2_combout\);

\compr|errorC~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|errorC~2_combout\ = (\compr|errorC~0_combout\) # ((\compr|errorC~1_combout\) # (\compr|err0~1_combout\ $ (\compr|err0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compr|errorC~0_combout\,
	datab => \compr|errorC~1_combout\,
	datac => \compr|err0~1_combout\,
	datad => \compr|err0~2_combout\,
	combout => \compr|errorC~2_combout\);

\a_r[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(7),
	o => \a_r[7]~input_o\);

\compr|err7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err7~0_combout\ = \a_r[19]~input_o\ $ (\a_r[17]~input_o\ $ (\a_r[18]~input_o\ $ (\a_r[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[19]~input_o\,
	datab => \a_r[17]~input_o\,
	datac => \a_r[18]~input_o\,
	datad => \a_r[7]~input_o\,
	combout => \compr|err7~0_combout\);

\compr|err7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err7~1_combout\ = \compr|err2~0_combout\ $ (\a_r[15]~input_o\ $ (\a_r[16]~input_o\ $ (\compr|err7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compr|err2~0_combout\,
	datab => \a_r[15]~input_o\,
	datac => \a_r[16]~input_o\,
	datad => \compr|err7~0_combout\,
	combout => \compr|err7~1_combout\);

\a_r[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_r(4),
	o => \a_r[4]~input_o\);

\compr|err4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err4~0_combout\ = \a_r[11]~input_o\ $ (\a_r[9]~input_o\ $ (\a_r[13]~input_o\ $ (\a_r[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[11]~input_o\,
	datab => \a_r[9]~input_o\,
	datac => \a_r[13]~input_o\,
	datad => \a_r[4]~input_o\,
	combout => \compr|err4~0_combout\);

\compr|err4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|err4~1_combout\ = \a_r[17]~input_o\ $ (\a_r[18]~input_o\ $ (\a_r[10]~input_o\ $ (\a_r[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_r[17]~input_o\,
	datab => \a_r[18]~input_o\,
	datac => \a_r[10]~input_o\,
	datad => \a_r[22]~input_o\,
	combout => \compr|err4~1_combout\);

\compr|errorC\ : cycloneiv_lcell_comb
-- Equation(s):
-- \compr|errorC~combout\ = (\compr|errorC~2_combout\) # ((\compr|err7~1_combout\) # (\compr|err4~0_combout\ $ (\compr|err4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compr|errorC~2_combout\,
	datab => \compr|err7~1_combout\,
	datac => \compr|err4~0_combout\,
	datad => \compr|err4~1_combout\,
	combout => \compr|errorC~combout\);

ww_error <= \error~output_o\;
END structure;


