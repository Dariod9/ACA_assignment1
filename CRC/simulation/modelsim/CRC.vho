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

-- DATE "12/08/2020 19:47:39"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	encoder IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	a_r : BUFFER std_logic_vector(23 DOWNTO 0)
	);
END encoder;

-- Design Ports Information
-- a_r[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[2]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[6]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[8]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[9]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[10]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[11]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[12]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[13]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[14]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[15]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[16]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[17]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[18]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[19]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[20]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[21]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[22]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_r[23]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_a_r : std_logic_vector(23 DOWNTO 0);
SIGNAL \a_r[0]~output_o\ : std_logic;
SIGNAL \a_r[1]~output_o\ : std_logic;
SIGNAL \a_r[2]~output_o\ : std_logic;
SIGNAL \a_r[3]~output_o\ : std_logic;
SIGNAL \a_r[4]~output_o\ : std_logic;
SIGNAL \a_r[5]~output_o\ : std_logic;
SIGNAL \a_r[6]~output_o\ : std_logic;
SIGNAL \a_r[7]~output_o\ : std_logic;
SIGNAL \a_r[8]~output_o\ : std_logic;
SIGNAL \a_r[9]~output_o\ : std_logic;
SIGNAL \a_r[10]~output_o\ : std_logic;
SIGNAL \a_r[11]~output_o\ : std_logic;
SIGNAL \a_r[12]~output_o\ : std_logic;
SIGNAL \a_r[13]~output_o\ : std_logic;
SIGNAL \a_r[14]~output_o\ : std_logic;
SIGNAL \a_r[15]~output_o\ : std_logic;
SIGNAL \a_r[16]~output_o\ : std_logic;
SIGNAL \a_r[17]~output_o\ : std_logic;
SIGNAL \a_r[18]~output_o\ : std_logic;
SIGNAL \a_r[19]~output_o\ : std_logic;
SIGNAL \a_r[20]~output_o\ : std_logic;
SIGNAL \a_r[21]~output_o\ : std_logic;
SIGNAL \a_r[22]~output_o\ : std_logic;
SIGNAL \a_r[23]~output_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \xor37|y~1_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \xor37|y~0_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \xor37|y~2_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \xor33|y~1_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \xor33|y~0_combout\ : std_logic;
SIGNAL \xor33|y~2_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \xor38|y~2_combout\ : std_logic;
SIGNAL \xor38|y~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \xor38|y~1_combout\ : std_logic;
SIGNAL \xor38|y~3_combout\ : std_logic;
SIGNAL \xor22|y~0_combout\ : std_logic;
SIGNAL \xor36|y~0_combout\ : std_logic;
SIGNAL \xor28|y~0_combout\ : std_logic;
SIGNAL \xor28|y~1_combout\ : std_logic;
SIGNAL \xor32|y~0_combout\ : std_logic;
SIGNAL \xor32|y~1_combout\ : std_logic;
SIGNAL \xor35|y~0_combout\ : std_logic;
SIGNAL \xor35|y~1_combout\ : std_logic;
SIGNAL \xor34|y~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
a_r <= ww_a_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X26_Y31_N2
\a_r[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor37|y~2_combout\,
	devoe => ww_devoe,
	o => \a_r[0]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\a_r[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor33|y~2_combout\,
	devoe => ww_devoe,
	o => \a_r[1]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\a_r[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor38|y~3_combout\,
	devoe => ww_devoe,
	o => \a_r[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\a_r[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor36|y~0_combout\,
	devoe => ww_devoe,
	o => \a_r[3]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\a_r[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor28|y~1_combout\,
	devoe => ww_devoe,
	o => \a_r[4]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\a_r[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor32|y~1_combout\,
	devoe => ww_devoe,
	o => \a_r[5]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\a_r[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor35|y~1_combout\,
	devoe => ww_devoe,
	o => \a_r[6]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\a_r[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xor34|y~0_combout\,
	devoe => ww_devoe,
	o => \a_r[7]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\a_r[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0]~input_o\,
	devoe => ww_devoe,
	o => \a_r[8]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\a_r[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[1]~input_o\,
	devoe => ww_devoe,
	o => \a_r[9]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\a_r[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[2]~input_o\,
	devoe => ww_devoe,
	o => \a_r[10]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\a_r[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[3]~input_o\,
	devoe => ww_devoe,
	o => \a_r[11]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\a_r[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[4]~input_o\,
	devoe => ww_devoe,
	o => \a_r[12]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\a_r[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[5]~input_o\,
	devoe => ww_devoe,
	o => \a_r[13]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\a_r[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[6]~input_o\,
	devoe => ww_devoe,
	o => \a_r[14]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\a_r[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[7]~input_o\,
	devoe => ww_devoe,
	o => \a_r[15]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\a_r[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[8]~input_o\,
	devoe => ww_devoe,
	o => \a_r[16]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\a_r[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[9]~input_o\,
	devoe => ww_devoe,
	o => \a_r[17]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\a_r[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[10]~input_o\,
	devoe => ww_devoe,
	o => \a_r[18]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\a_r[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[11]~input_o\,
	devoe => ww_devoe,
	o => \a_r[19]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\a_r[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[12]~input_o\,
	devoe => ww_devoe,
	o => \a_r[20]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\a_r[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[13]~input_o\,
	devoe => ww_devoe,
	o => \a_r[21]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\a_r[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[14]~input_o\,
	devoe => ww_devoe,
	o => \a_r[22]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\a_r[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[15]~input_o\,
	devoe => ww_devoe,
	o => \a_r[23]~output_o\);

-- Location: IOIBUF_X26_Y0_N1
\a[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\a[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\a[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X29_Y31_N1
\a[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: LCCOMB_X30_Y15_N26
\xor37|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor37|y~1_combout\ = \a[11]~input_o\ $ (\a[0]~input_o\ $ (\a[10]~input_o\ $ (\a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[12]~input_o\,
	combout => \xor37|y~1_combout\);

-- Location: IOIBUF_X33_Y16_N1
\a[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\a[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\a[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\a[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X30_Y15_N0
\xor37|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor37|y~0_combout\ = \a[3]~input_o\ $ (\a[5]~input_o\ $ (\a[8]~input_o\ $ (\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \a[5]~input_o\,
	datac => \a[8]~input_o\,
	datad => \a[7]~input_o\,
	combout => \xor37|y~0_combout\);

-- Location: IOIBUF_X33_Y16_N8
\a[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\a[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X30_Y15_N12
\xor37|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor37|y~2_combout\ = \xor37|y~1_combout\ $ (\xor37|y~0_combout\ $ (\a[9]~input_o\ $ (\a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor37|y~1_combout\,
	datab => \xor37|y~0_combout\,
	datac => \a[9]~input_o\,
	datad => \a[15]~input_o\,
	combout => \xor37|y~2_combout\);

-- Location: IOIBUF_X33_Y22_N8
\a[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\a[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X30_Y15_N16
\xor33|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor33|y~1_combout\ = \a[1]~input_o\ $ (\a[0]~input_o\ $ (\a[4]~input_o\ $ (\a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[4]~input_o\,
	datad => \a[15]~input_o\,
	combout => \xor33|y~1_combout\);

-- Location: IOIBUF_X24_Y31_N1
\a[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\a[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X30_Y15_N22
\xor33|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor33|y~0_combout\ = \a[6]~input_o\ $ (\a[5]~input_o\ $ (\a[3]~input_o\ $ (\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \a[5]~input_o\,
	datac => \a[3]~input_o\,
	datad => \a[7]~input_o\,
	combout => \xor33|y~0_combout\);

-- Location: LCCOMB_X30_Y19_N8
\xor33|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor33|y~2_combout\ = \xor33|y~1_combout\ $ (\a[13]~input_o\ $ (\xor33|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor33|y~1_combout\,
	datac => \a[13]~input_o\,
	datad => \xor33|y~0_combout\,
	combout => \xor33|y~2_combout\);

-- Location: IOIBUF_X33_Y24_N8
\a[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: LCCOMB_X29_Y15_N8
\xor38|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor38|y~2_combout\ = \a[10]~input_o\ $ (\a[14]~input_o\ $ (\a[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datac => \a[14]~input_o\,
	datad => \a[11]~input_o\,
	combout => \xor38|y~2_combout\);

-- Location: LCCOMB_X30_Y15_N2
\xor38|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor38|y~0_combout\ = \a[1]~input_o\ $ (\a[0]~input_o\ $ (\a[3]~input_o\ $ (\a[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[3]~input_o\,
	datad => \a[15]~input_o\,
	combout => \xor38|y~0_combout\);

-- Location: IOIBUF_X33_Y10_N1
\a[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X30_Y15_N28
\xor38|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor38|y~1_combout\ = \a[2]~input_o\ $ (\a[9]~input_o\ $ (\a[6]~input_o\ $ (\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[9]~input_o\,
	datac => \a[6]~input_o\,
	datad => \a[4]~input_o\,
	combout => \xor38|y~1_combout\);

-- Location: LCCOMB_X30_Y15_N6
\xor38|y~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor38|y~3_combout\ = \xor38|y~2_combout\ $ (\xor38|y~0_combout\ $ (\a[12]~input_o\ $ (\xor38|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor38|y~2_combout\,
	datab => \xor38|y~0_combout\,
	datac => \a[12]~input_o\,
	datad => \xor38|y~1_combout\,
	combout => \xor38|y~3_combout\);

-- Location: LCCOMB_X30_Y15_N24
\xor22|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor22|y~0_combout\ = \a[2]~input_o\ $ (\a[8]~input_o\ $ (\a[9]~input_o\ $ (\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[8]~input_o\,
	datac => \a[9]~input_o\,
	datad => \a[4]~input_o\,
	combout => \xor22|y~0_combout\);

-- Location: LCCOMB_X30_Y15_N10
\xor36|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor36|y~0_combout\ = \a[1]~input_o\ $ (\a[0]~input_o\ $ (\a[13]~input_o\ $ (\xor22|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[13]~input_o\,
	datad => \xor22|y~0_combout\,
	combout => \xor36|y~0_combout\);

-- Location: LCCOMB_X30_Y15_N4
\xor28|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor28|y~0_combout\ = \a[2]~input_o\ $ (\a[9]~input_o\ $ (\a[3]~input_o\ $ (\a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \a[9]~input_o\,
	datac => \a[3]~input_o\,
	datad => \a[5]~input_o\,
	combout => \xor28|y~0_combout\);

-- Location: LCCOMB_X29_Y15_N26
\xor28|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor28|y~1_combout\ = \a[10]~input_o\ $ (\a[1]~input_o\ $ (\a[14]~input_o\ $ (\xor28|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[14]~input_o\,
	datad => \xor28|y~0_combout\,
	combout => \xor28|y~1_combout\);

-- Location: LCCOMB_X30_Y15_N14
\xor32|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor32|y~0_combout\ = \a[0]~input_o\ $ (\a[5]~input_o\ $ (\a[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[0]~input_o\,
	datac => \a[5]~input_o\,
	datad => \a[12]~input_o\,
	combout => \xor32|y~0_combout\);

-- Location: LCCOMB_X30_Y15_N8
\xor32|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor32|y~1_combout\ = \a[6]~input_o\ $ (\xor22|y~0_combout\ $ (\xor32|y~0_combout\ $ (\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \xor22|y~0_combout\,
	datac => \xor32|y~0_combout\,
	datad => \a[7]~input_o\,
	combout => \xor32|y~1_combout\);

-- Location: LCCOMB_X30_Y15_N18
\xor35|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor35|y~0_combout\ = \a[6]~input_o\ $ (\a[13]~input_o\ $ (\a[10]~input_o\ $ (\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \a[13]~input_o\,
	datac => \a[10]~input_o\,
	datad => \a[1]~input_o\,
	combout => \xor35|y~0_combout\);

-- Location: LCCOMB_X30_Y15_N20
\xor35|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor35|y~1_combout\ = \xor35|y~0_combout\ $ (\a[9]~input_o\ $ (\xor37|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xor35|y~0_combout\,
	datac => \a[9]~input_o\,
	datad => \xor37|y~0_combout\,
	combout => \xor35|y~1_combout\);

-- Location: LCCOMB_X30_Y15_N30
\xor34|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xor34|y~0_combout\ = \xor38|y~2_combout\ $ (\xor22|y~0_combout\ $ (\a[6]~input_o\ $ (\a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xor38|y~2_combout\,
	datab => \xor22|y~0_combout\,
	datac => \a[6]~input_o\,
	datad => \a[7]~input_o\,
	combout => \xor34|y~0_combout\);

ww_a_r(0) <= \a_r[0]~output_o\;

ww_a_r(1) <= \a_r[1]~output_o\;

ww_a_r(2) <= \a_r[2]~output_o\;

ww_a_r(3) <= \a_r[3]~output_o\;

ww_a_r(4) <= \a_r[4]~output_o\;

ww_a_r(5) <= \a_r[5]~output_o\;

ww_a_r(6) <= \a_r[6]~output_o\;

ww_a_r(7) <= \a_r[7]~output_o\;

ww_a_r(8) <= \a_r[8]~output_o\;

ww_a_r(9) <= \a_r[9]~output_o\;

ww_a_r(10) <= \a_r[10]~output_o\;

ww_a_r(11) <= \a_r[11]~output_o\;

ww_a_r(12) <= \a_r[12]~output_o\;

ww_a_r(13) <= \a_r[13]~output_o\;

ww_a_r(14) <= \a_r[14]~output_o\;

ww_a_r(15) <= \a_r[15]~output_o\;

ww_a_r(16) <= \a_r[16]~output_o\;

ww_a_r(17) <= \a_r[17]~output_o\;

ww_a_r(18) <= \a_r[18]~output_o\;

ww_a_r(19) <= \a_r[19]~output_o\;

ww_a_r(20) <= \a_r[20]~output_o\;

ww_a_r(21) <= \a_r[21]~output_o\;

ww_a_r(22) <= \a_r[22]~output_o\;

ww_a_r(23) <= \a_r[23]~output_o\;
END structure;


