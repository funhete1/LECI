-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "03/13/2023 17:04:10"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FreqDivider_Demo IS
    PORT (
	CLOCK_50 : IN std_logic;
	k : IN std_logic_vector(31 DOWNTO 0);
	SW : IN std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END FreqDivider_Demo;

-- Design Ports Information
-- k[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[2]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[5]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[6]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[7]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[8]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[9]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[10]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[11]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[12]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[13]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[14]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[15]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[16]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[17]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[18]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[19]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[20]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[21]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[22]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[23]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[24]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[25]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[26]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[27]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[28]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[29]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[30]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- k[31]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FreqDivider_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_k : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frequency|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \k[0]~input_o\ : std_logic;
SIGNAL \k[1]~input_o\ : std_logic;
SIGNAL \k[2]~input_o\ : std_logic;
SIGNAL \k[3]~input_o\ : std_logic;
SIGNAL \k[4]~input_o\ : std_logic;
SIGNAL \k[5]~input_o\ : std_logic;
SIGNAL \k[6]~input_o\ : std_logic;
SIGNAL \k[7]~input_o\ : std_logic;
SIGNAL \k[8]~input_o\ : std_logic;
SIGNAL \k[9]~input_o\ : std_logic;
SIGNAL \k[10]~input_o\ : std_logic;
SIGNAL \k[11]~input_o\ : std_logic;
SIGNAL \k[12]~input_o\ : std_logic;
SIGNAL \k[13]~input_o\ : std_logic;
SIGNAL \k[14]~input_o\ : std_logic;
SIGNAL \k[15]~input_o\ : std_logic;
SIGNAL \k[16]~input_o\ : std_logic;
SIGNAL \k[17]~input_o\ : std_logic;
SIGNAL \k[18]~input_o\ : std_logic;
SIGNAL \k[19]~input_o\ : std_logic;
SIGNAL \k[20]~input_o\ : std_logic;
SIGNAL \k[21]~input_o\ : std_logic;
SIGNAL \k[22]~input_o\ : std_logic;
SIGNAL \k[23]~input_o\ : std_logic;
SIGNAL \k[24]~input_o\ : std_logic;
SIGNAL \k[25]~input_o\ : std_logic;
SIGNAL \k[26]~input_o\ : std_logic;
SIGNAL \k[27]~input_o\ : std_logic;
SIGNAL \k[28]~input_o\ : std_logic;
SIGNAL \k[29]~input_o\ : std_logic;
SIGNAL \k[30]~input_o\ : std_logic;
SIGNAL \k[31]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \frequency|Add0~0_combout\ : std_logic;
SIGNAL \frequency|Add0~1\ : std_logic;
SIGNAL \frequency|Add0~2_combout\ : std_logic;
SIGNAL \frequency|Add0~3\ : std_logic;
SIGNAL \frequency|Add0~4_combout\ : std_logic;
SIGNAL \frequency|Add0~5\ : std_logic;
SIGNAL \frequency|Add0~6_combout\ : std_logic;
SIGNAL \frequency|Add0~7\ : std_logic;
SIGNAL \frequency|Add0~8_combout\ : std_logic;
SIGNAL \frequency|Add0~9\ : std_logic;
SIGNAL \frequency|Add0~10_combout\ : std_logic;
SIGNAL \frequency|Add0~11\ : std_logic;
SIGNAL \frequency|Add0~12_combout\ : std_logic;
SIGNAL \frequency|s_counter~11_combout\ : std_logic;
SIGNAL \frequency|Add0~13\ : std_logic;
SIGNAL \frequency|Add0~14_combout\ : std_logic;
SIGNAL \frequency|Add0~15\ : std_logic;
SIGNAL \frequency|Add0~16_combout\ : std_logic;
SIGNAL \frequency|Add0~17\ : std_logic;
SIGNAL \frequency|Add0~18_combout\ : std_logic;
SIGNAL \frequency|Add0~19\ : std_logic;
SIGNAL \frequency|Add0~20_combout\ : std_logic;
SIGNAL \frequency|Add0~21\ : std_logic;
SIGNAL \frequency|Add0~22_combout\ : std_logic;
SIGNAL \frequency|s_counter~10_combout\ : std_logic;
SIGNAL \frequency|Add0~23\ : std_logic;
SIGNAL \frequency|Add0~24_combout\ : std_logic;
SIGNAL \frequency|s_counter~9_combout\ : std_logic;
SIGNAL \frequency|Add0~25\ : std_logic;
SIGNAL \frequency|Add0~26_combout\ : std_logic;
SIGNAL \frequency|s_counter~8_combout\ : std_logic;
SIGNAL \frequency|Add0~35\ : std_logic;
SIGNAL \frequency|Add0~36_combout\ : std_logic;
SIGNAL \frequency|s_counter~7_combout\ : std_logic;
SIGNAL \frequency|Add0~37\ : std_logic;
SIGNAL \frequency|Add0~38_combout\ : std_logic;
SIGNAL \frequency|s_counter~6_combout\ : std_logic;
SIGNAL \frequency|Add0~39\ : std_logic;
SIGNAL \frequency|Add0~40_combout\ : std_logic;
SIGNAL \frequency|s_counter~5_combout\ : std_logic;
SIGNAL \frequency|Equal0~5_combout\ : std_logic;
SIGNAL \frequency|Add0~41\ : std_logic;
SIGNAL \frequency|Add0~42_combout\ : std_logic;
SIGNAL \frequency|s_counter~4_combout\ : std_logic;
SIGNAL \frequency|Add0~43\ : std_logic;
SIGNAL \frequency|Add0~44_combout\ : std_logic;
SIGNAL \frequency|s_counter~1_combout\ : std_logic;
SIGNAL \frequency|Add0~45\ : std_logic;
SIGNAL \frequency|Add0~46_combout\ : std_logic;
SIGNAL \frequency|Add0~47\ : std_logic;
SIGNAL \frequency|Add0~48_combout\ : std_logic;
SIGNAL \frequency|s_counter~0_combout\ : std_logic;
SIGNAL \frequency|Add0~49\ : std_logic;
SIGNAL \frequency|Add0~50_combout\ : std_logic;
SIGNAL \frequency|Add0~51\ : std_logic;
SIGNAL \frequency|Add0~52_combout\ : std_logic;
SIGNAL \frequency|Add0~53\ : std_logic;
SIGNAL \frequency|Add0~54_combout\ : std_logic;
SIGNAL \frequency|Add0~55\ : std_logic;
SIGNAL \frequency|Add0~56_combout\ : std_logic;
SIGNAL \frequency|Add0~57\ : std_logic;
SIGNAL \frequency|Add0~58_combout\ : std_logic;
SIGNAL \frequency|Add0~59\ : std_logic;
SIGNAL \frequency|Add0~60_combout\ : std_logic;
SIGNAL \frequency|Add0~61\ : std_logic;
SIGNAL \frequency|Add0~62_combout\ : std_logic;
SIGNAL \frequency|Equal0~3_combout\ : std_logic;
SIGNAL \frequency|Equal0~4_combout\ : std_logic;
SIGNAL \frequency|Equal0~6_combout\ : std_logic;
SIGNAL \frequency|Equal0~7_combout\ : std_logic;
SIGNAL \frequency|Equal0~8_combout\ : std_logic;
SIGNAL \frequency|Equal0~9_combout\ : std_logic;
SIGNAL \frequency|Equal1~3_combout\ : std_logic;
SIGNAL \frequency|Add0~27\ : std_logic;
SIGNAL \frequency|Add0~28_combout\ : std_logic;
SIGNAL \frequency|s_counter~3_combout\ : std_logic;
SIGNAL \frequency|Add0~29\ : std_logic;
SIGNAL \frequency|Add0~30_combout\ : std_logic;
SIGNAL \frequency|Add0~31\ : std_logic;
SIGNAL \frequency|Add0~32_combout\ : std_logic;
SIGNAL \frequency|s_counter~2_combout\ : std_logic;
SIGNAL \frequency|Add0~33\ : std_logic;
SIGNAL \frequency|Add0~34_combout\ : std_logic;
SIGNAL \frequency|Equal1~0_combout\ : std_logic;
SIGNAL \frequency|Equal1~1_combout\ : std_logic;
SIGNAL \frequency|Equal1~2_combout\ : std_logic;
SIGNAL \frequency|Equal0~1_combout\ : std_logic;
SIGNAL \frequency|Equal0~0_combout\ : std_logic;
SIGNAL \frequency|Equal0~2_combout\ : std_logic;
SIGNAL \frequency|Equal0~10_combout\ : std_logic;
SIGNAL \frequency|clkOut~0_combout\ : std_logic;
SIGNAL \frequency|clkOut~feeder_combout\ : std_logic;
SIGNAL \frequency|clkOut~q\ : std_logic;
SIGNAL \frequency|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \counter|s_count[0]~10_combout\ : std_logic;
SIGNAL \counter|s_count[0]~11_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \counter|s_count[1]~4_cout\ : std_logic;
SIGNAL \counter|s_count[1]~5_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \counter|s_count[0]~9_combout\ : std_logic;
SIGNAL \counter|s_count[1]~6\ : std_logic;
SIGNAL \counter|s_count[2]~7_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \counter|s_count[2]~8\ : std_logic;
SIGNAL \counter|s_count[3]~12_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \display|decOut_n~9_combout\ : std_logic;
SIGNAL \display|decOut_n~10_combout\ : std_logic;
SIGNAL \display|decOut_n~11_combout\ : std_logic;
SIGNAL \display|decOut_n~12_combout\ : std_logic;
SIGNAL \display|decOut_n~8_combout\ : std_logic;
SIGNAL \display|decOut_n~19_combout\ : std_logic;
SIGNAL \display|decOut_n[3]~2_combout\ : std_logic;
SIGNAL \display|decOut_n[3]~17_combout\ : std_logic;
SIGNAL \display|decOut_n~13_combout\ : std_logic;
SIGNAL \display|decOut_n~14_combout\ : std_logic;
SIGNAL \display|decOut_n~15_combout\ : std_logic;
SIGNAL \display|decOut_n~16_combout\ : std_logic;
SIGNAL \display|decOut_n[6]~5_combout\ : std_logic;
SIGNAL \display|decOut_n[6]~18_combout\ : std_logic;
SIGNAL \counter|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \frequency|s_counter\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_k <= k;
ww_SW <= SW;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\frequency|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \frequency|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decOut_n~10_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decOut_n~12_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decOut_n~19_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decOut_n[3]~17_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decOut_n~14_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decOut_n~16_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display|decOut_n[6]~18_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X56_Y70_N0
\frequency|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~0_combout\ = \frequency|s_counter\(0) $ (VCC)
-- \frequency|Add0~1\ = CARRY(\frequency|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(0),
	datad => VCC,
	combout => \frequency|Add0~0_combout\,
	cout => \frequency|Add0~1\);

-- Location: FF_X56_Y70_N1
\frequency|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(0));

-- Location: LCCOMB_X56_Y70_N2
\frequency|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~2_combout\ = (\frequency|s_counter\(1) & (!\frequency|Add0~1\)) # (!\frequency|s_counter\(1) & ((\frequency|Add0~1\) # (GND)))
-- \frequency|Add0~3\ = CARRY((!\frequency|Add0~1\) # (!\frequency|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(1),
	datad => VCC,
	cin => \frequency|Add0~1\,
	combout => \frequency|Add0~2_combout\,
	cout => \frequency|Add0~3\);

-- Location: FF_X56_Y70_N3
\frequency|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(1));

-- Location: LCCOMB_X56_Y70_N4
\frequency|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~4_combout\ = (\frequency|s_counter\(2) & (\frequency|Add0~3\ $ (GND))) # (!\frequency|s_counter\(2) & (!\frequency|Add0~3\ & VCC))
-- \frequency|Add0~5\ = CARRY((\frequency|s_counter\(2) & !\frequency|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(2),
	datad => VCC,
	cin => \frequency|Add0~3\,
	combout => \frequency|Add0~4_combout\,
	cout => \frequency|Add0~5\);

-- Location: FF_X56_Y70_N5
\frequency|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(2));

-- Location: LCCOMB_X56_Y70_N6
\frequency|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~6_combout\ = (\frequency|s_counter\(3) & (!\frequency|Add0~5\)) # (!\frequency|s_counter\(3) & ((\frequency|Add0~5\) # (GND)))
-- \frequency|Add0~7\ = CARRY((!\frequency|Add0~5\) # (!\frequency|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(3),
	datad => VCC,
	cin => \frequency|Add0~5\,
	combout => \frequency|Add0~6_combout\,
	cout => \frequency|Add0~7\);

-- Location: FF_X56_Y70_N7
\frequency|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(3));

-- Location: LCCOMB_X56_Y70_N8
\frequency|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~8_combout\ = (\frequency|s_counter\(4) & (\frequency|Add0~7\ $ (GND))) # (!\frequency|s_counter\(4) & (!\frequency|Add0~7\ & VCC))
-- \frequency|Add0~9\ = CARRY((\frequency|s_counter\(4) & !\frequency|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(4),
	datad => VCC,
	cin => \frequency|Add0~7\,
	combout => \frequency|Add0~8_combout\,
	cout => \frequency|Add0~9\);

-- Location: FF_X56_Y70_N9
\frequency|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(4));

-- Location: LCCOMB_X56_Y70_N10
\frequency|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~10_combout\ = (\frequency|s_counter\(5) & (!\frequency|Add0~9\)) # (!\frequency|s_counter\(5) & ((\frequency|Add0~9\) # (GND)))
-- \frequency|Add0~11\ = CARRY((!\frequency|Add0~9\) # (!\frequency|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(5),
	datad => VCC,
	cin => \frequency|Add0~9\,
	combout => \frequency|Add0~10_combout\,
	cout => \frequency|Add0~11\);

-- Location: FF_X56_Y70_N11
\frequency|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(5));

-- Location: LCCOMB_X56_Y70_N12
\frequency|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~12_combout\ = (\frequency|s_counter\(6) & (\frequency|Add0~11\ $ (GND))) # (!\frequency|s_counter\(6) & (!\frequency|Add0~11\ & VCC))
-- \frequency|Add0~13\ = CARRY((\frequency|s_counter\(6) & !\frequency|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(6),
	datad => VCC,
	cin => \frequency|Add0~11\,
	combout => \frequency|Add0~12_combout\,
	cout => \frequency|Add0~13\);

-- Location: LCCOMB_X57_Y70_N4
\frequency|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|s_counter~11_combout\ = (\frequency|Add0~12_combout\ & !\frequency|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|Add0~12_combout\,
	datad => \frequency|Equal1~3_combout\,
	combout => \frequency|s_counter~11_combout\);

-- Location: FF_X57_Y70_N5
\frequency|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(6));

-- Location: LCCOMB_X56_Y70_N14
\frequency|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~14_combout\ = (\frequency|s_counter\(7) & (!\frequency|Add0~13\)) # (!\frequency|s_counter\(7) & ((\frequency|Add0~13\) # (GND)))
-- \frequency|Add0~15\ = CARRY((!\frequency|Add0~13\) # (!\frequency|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(7),
	datad => VCC,
	cin => \frequency|Add0~13\,
	combout => \frequency|Add0~14_combout\,
	cout => \frequency|Add0~15\);

-- Location: FF_X56_Y70_N15
\frequency|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(7));

-- Location: LCCOMB_X56_Y70_N16
\frequency|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~16_combout\ = (\frequency|s_counter\(8) & (\frequency|Add0~15\ $ (GND))) # (!\frequency|s_counter\(8) & (!\frequency|Add0~15\ & VCC))
-- \frequency|Add0~17\ = CARRY((\frequency|s_counter\(8) & !\frequency|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(8),
	datad => VCC,
	cin => \frequency|Add0~15\,
	combout => \frequency|Add0~16_combout\,
	cout => \frequency|Add0~17\);

-- Location: FF_X56_Y70_N17
\frequency|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(8));

-- Location: LCCOMB_X56_Y70_N18
\frequency|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~18_combout\ = (\frequency|s_counter\(9) & (!\frequency|Add0~17\)) # (!\frequency|s_counter\(9) & ((\frequency|Add0~17\) # (GND)))
-- \frequency|Add0~19\ = CARRY((!\frequency|Add0~17\) # (!\frequency|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(9),
	datad => VCC,
	cin => \frequency|Add0~17\,
	combout => \frequency|Add0~18_combout\,
	cout => \frequency|Add0~19\);

-- Location: FF_X56_Y70_N19
\frequency|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(9));

-- Location: LCCOMB_X56_Y70_N20
\frequency|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~20_combout\ = (\frequency|s_counter\(10) & (\frequency|Add0~19\ $ (GND))) # (!\frequency|s_counter\(10) & (!\frequency|Add0~19\ & VCC))
-- \frequency|Add0~21\ = CARRY((\frequency|s_counter\(10) & !\frequency|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(10),
	datad => VCC,
	cin => \frequency|Add0~19\,
	combout => \frequency|Add0~20_combout\,
	cout => \frequency|Add0~21\);

-- Location: FF_X56_Y70_N21
\frequency|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(10));

-- Location: LCCOMB_X56_Y70_N22
\frequency|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~22_combout\ = (\frequency|s_counter\(11) & (!\frequency|Add0~21\)) # (!\frequency|s_counter\(11) & ((\frequency|Add0~21\) # (GND)))
-- \frequency|Add0~23\ = CARRY((!\frequency|Add0~21\) # (!\frequency|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(11),
	datad => VCC,
	cin => \frequency|Add0~21\,
	combout => \frequency|Add0~22_combout\,
	cout => \frequency|Add0~23\);

-- Location: LCCOMB_X55_Y69_N14
\frequency|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|s_counter~10_combout\ = (!\frequency|Equal1~3_combout\ & \frequency|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frequency|Equal1~3_combout\,
	datad => \frequency|Add0~22_combout\,
	combout => \frequency|s_counter~10_combout\);

-- Location: FF_X55_Y69_N15
\frequency|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(11));

-- Location: LCCOMB_X56_Y70_N24
\frequency|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~24_combout\ = (\frequency|s_counter\(12) & (\frequency|Add0~23\ $ (GND))) # (!\frequency|s_counter\(12) & (!\frequency|Add0~23\ & VCC))
-- \frequency|Add0~25\ = CARRY((\frequency|s_counter\(12) & !\frequency|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(12),
	datad => VCC,
	cin => \frequency|Add0~23\,
	combout => \frequency|Add0~24_combout\,
	cout => \frequency|Add0~25\);

-- Location: LCCOMB_X55_Y69_N24
\frequency|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|s_counter~9_combout\ = (!\frequency|Equal1~3_combout\ & \frequency|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frequency|Equal1~3_combout\,
	datad => \frequency|Add0~24_combout\,
	combout => \frequency|s_counter~9_combout\);

-- Location: FF_X55_Y69_N25
\frequency|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(12));

-- Location: LCCOMB_X56_Y70_N26
\frequency|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~26_combout\ = (\frequency|s_counter\(13) & (!\frequency|Add0~25\)) # (!\frequency|s_counter\(13) & ((\frequency|Add0~25\) # (GND)))
-- \frequency|Add0~27\ = CARRY((!\frequency|Add0~25\) # (!\frequency|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(13),
	datad => VCC,
	cin => \frequency|Add0~25\,
	combout => \frequency|Add0~26_combout\,
	cout => \frequency|Add0~27\);

-- Location: LCCOMB_X55_Y69_N12
\frequency|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|s_counter~8_combout\ = (!\frequency|Equal1~3_combout\ & \frequency|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frequency|Equal1~3_combout\,
	datad => \frequency|Add0~26_combout\,
	combout => \frequency|s_counter~8_combout\);

-- Location: FF_X55_Y69_N13
\frequency|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(13));

-- Location: LCCOMB_X56_Y69_N2
\frequency|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~34_combout\ = (\frequency|s_counter\(17) & (!\frequency|Add0~33\)) # (!\frequency|s_counter\(17) & ((\frequency|Add0~33\) # (GND)))
-- \frequency|Add0~35\ = CARRY((!\frequency|Add0~33\) # (!\frequency|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(17),
	datad => VCC,
	cin => \frequency|Add0~33\,
	combout => \frequency|Add0~34_combout\,
	cout => \frequency|Add0~35\);

-- Location: LCCOMB_X56_Y69_N4
\frequency|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~36_combout\ = (\frequency|s_counter\(18) & (\frequency|Add0~35\ $ (GND))) # (!\frequency|s_counter\(18) & (!\frequency|Add0~35\ & VCC))
-- \frequency|Add0~37\ = CARRY((\frequency|s_counter\(18) & !\frequency|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(18),
	datad => VCC,
	cin => \frequency|Add0~35\,
	combout => \frequency|Add0~36_combout\,
	cout => \frequency|Add0~37\);

-- Location: LCCOMB_X55_Y69_N30
\frequency|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|s_counter~7_combout\ = (!\frequency|Equal1~3_combout\ & \frequency|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frequency|Equal1~3_combout\,
	datad => \frequency|Add0~36_combout\,
	combout => \frequency|s_counter~7_combout\);

-- Location: FF_X55_Y69_N31
\frequency|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(18));

-- Location: LCCOMB_X56_Y69_N6
\frequency|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~38_combout\ = (\frequency|s_counter\(19) & (!\frequency|Add0~37\)) # (!\frequency|s_counter\(19) & ((\frequency|Add0~37\) # (GND)))
-- \frequency|Add0~39\ = CARRY((!\frequency|Add0~37\) # (!\frequency|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(19),
	datad => VCC,
	cin => \frequency|Add0~37\,
	combout => \frequency|Add0~38_combout\,
	cout => \frequency|Add0~39\);

-- Location: LCCOMB_X55_Y69_N16
\frequency|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|s_counter~6_combout\ = (!\frequency|Equal1~3_combout\ & \frequency|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frequency|Equal1~3_combout\,
	datad => \frequency|Add0~38_combout\,
	combout => \frequency|s_counter~6_combout\);

-- Location: FF_X55_Y69_N17
\frequency|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(19));

-- Location: LCCOMB_X56_Y69_N8
\frequency|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~40_combout\ = (\frequency|s_counter\(20) & (\frequency|Add0~39\ $ (GND))) # (!\frequency|s_counter\(20) & (!\frequency|Add0~39\ & VCC))
-- \frequency|Add0~41\ = CARRY((\frequency|s_counter\(20) & !\frequency|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(20),
	datad => VCC,
	cin => \frequency|Add0~39\,
	combout => \frequency|Add0~40_combout\,
	cout => \frequency|Add0~41\);

-- Location: LCCOMB_X55_Y69_N18
\frequency|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|s_counter~5_combout\ = (!\frequency|Equal1~3_combout\ & \frequency|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frequency|Equal1~3_combout\,
	datac => \frequency|Add0~40_combout\,
	combout => \frequency|s_counter~5_combout\);

-- Location: FF_X55_Y69_N19
\frequency|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(20));

-- Location: LCCOMB_X55_Y69_N26
\frequency|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal0~5_combout\ = (\frequency|s_counter\(13) & (\frequency|s_counter\(20) & (\frequency|s_counter\(18) & \frequency|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(13),
	datab => \frequency|s_counter\(20),
	datac => \frequency|s_counter\(18),
	datad => \frequency|s_counter\(19),
	combout => \frequency|Equal0~5_combout\);

-- Location: LCCOMB_X56_Y69_N10
\frequency|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~42_combout\ = (\frequency|s_counter\(21) & (!\frequency|Add0~41\)) # (!\frequency|s_counter\(21) & ((\frequency|Add0~41\) # (GND)))
-- \frequency|Add0~43\ = CARRY((!\frequency|Add0~41\) # (!\frequency|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(21),
	datad => VCC,
	cin => \frequency|Add0~41\,
	combout => \frequency|Add0~42_combout\,
	cout => \frequency|Add0~43\);

-- Location: LCCOMB_X55_Y69_N22
\frequency|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|s_counter~4_combout\ = (!\frequency|Equal1~3_combout\ & \frequency|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frequency|Equal1~3_combout\,
	datac => \frequency|Add0~42_combout\,
	combout => \frequency|s_counter~4_combout\);

-- Location: FF_X55_Y69_N23
\frequency|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(21));

-- Location: LCCOMB_X56_Y69_N12
\frequency|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~44_combout\ = (\frequency|s_counter\(22) & (\frequency|Add0~43\ $ (GND))) # (!\frequency|s_counter\(22) & (!\frequency|Add0~43\ & VCC))
-- \frequency|Add0~45\ = CARRY((\frequency|s_counter\(22) & !\frequency|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(22),
	datad => VCC,
	cin => \frequency|Add0~43\,
	combout => \frequency|Add0~44_combout\,
	cout => \frequency|Add0~45\);

-- Location: LCCOMB_X57_Y69_N30
\frequency|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|s_counter~1_combout\ = (!\frequency|Equal1~3_combout\ & \frequency|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frequency|Equal1~3_combout\,
	datad => \frequency|Add0~44_combout\,
	combout => \frequency|s_counter~1_combout\);

-- Location: FF_X57_Y69_N31
\frequency|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(22));

-- Location: LCCOMB_X56_Y69_N14
\frequency|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~46_combout\ = (\frequency|s_counter\(23) & (!\frequency|Add0~45\)) # (!\frequency|s_counter\(23) & ((\frequency|Add0~45\) # (GND)))
-- \frequency|Add0~47\ = CARRY((!\frequency|Add0~45\) # (!\frequency|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(23),
	datad => VCC,
	cin => \frequency|Add0~45\,
	combout => \frequency|Add0~46_combout\,
	cout => \frequency|Add0~47\);

-- Location: FF_X56_Y69_N15
\frequency|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(23));

-- Location: LCCOMB_X56_Y69_N16
\frequency|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~48_combout\ = (\frequency|s_counter\(24) & (\frequency|Add0~47\ $ (GND))) # (!\frequency|s_counter\(24) & (!\frequency|Add0~47\ & VCC))
-- \frequency|Add0~49\ = CARRY((\frequency|s_counter\(24) & !\frequency|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(24),
	datad => VCC,
	cin => \frequency|Add0~47\,
	combout => \frequency|Add0~48_combout\,
	cout => \frequency|Add0~49\);

-- Location: LCCOMB_X57_Y69_N8
\frequency|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|s_counter~0_combout\ = (\frequency|Add0~48_combout\ & !\frequency|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frequency|Add0~48_combout\,
	datad => \frequency|Equal1~3_combout\,
	combout => \frequency|s_counter~0_combout\);

-- Location: FF_X57_Y69_N9
\frequency|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(24));

-- Location: LCCOMB_X56_Y69_N18
\frequency|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~50_combout\ = (\frequency|s_counter\(25) & (!\frequency|Add0~49\)) # (!\frequency|s_counter\(25) & ((\frequency|Add0~49\) # (GND)))
-- \frequency|Add0~51\ = CARRY((!\frequency|Add0~49\) # (!\frequency|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(25),
	datad => VCC,
	cin => \frequency|Add0~49\,
	combout => \frequency|Add0~50_combout\,
	cout => \frequency|Add0~51\);

-- Location: FF_X56_Y69_N19
\frequency|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(25));

-- Location: LCCOMB_X56_Y69_N20
\frequency|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~52_combout\ = (\frequency|s_counter\(26) & (\frequency|Add0~51\ $ (GND))) # (!\frequency|s_counter\(26) & (!\frequency|Add0~51\ & VCC))
-- \frequency|Add0~53\ = CARRY((\frequency|s_counter\(26) & !\frequency|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(26),
	datad => VCC,
	cin => \frequency|Add0~51\,
	combout => \frequency|Add0~52_combout\,
	cout => \frequency|Add0~53\);

-- Location: FF_X56_Y69_N21
\frequency|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(26));

-- Location: LCCOMB_X56_Y69_N22
\frequency|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~54_combout\ = (\frequency|s_counter\(27) & (!\frequency|Add0~53\)) # (!\frequency|s_counter\(27) & ((\frequency|Add0~53\) # (GND)))
-- \frequency|Add0~55\ = CARRY((!\frequency|Add0~53\) # (!\frequency|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(27),
	datad => VCC,
	cin => \frequency|Add0~53\,
	combout => \frequency|Add0~54_combout\,
	cout => \frequency|Add0~55\);

-- Location: FF_X56_Y69_N23
\frequency|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(27));

-- Location: LCCOMB_X56_Y69_N24
\frequency|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~56_combout\ = (\frequency|s_counter\(28) & (\frequency|Add0~55\ $ (GND))) # (!\frequency|s_counter\(28) & (!\frequency|Add0~55\ & VCC))
-- \frequency|Add0~57\ = CARRY((\frequency|s_counter\(28) & !\frequency|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(28),
	datad => VCC,
	cin => \frequency|Add0~55\,
	combout => \frequency|Add0~56_combout\,
	cout => \frequency|Add0~57\);

-- Location: FF_X56_Y69_N25
\frequency|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(28));

-- Location: LCCOMB_X56_Y69_N26
\frequency|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~58_combout\ = (\frequency|s_counter\(29) & (!\frequency|Add0~57\)) # (!\frequency|s_counter\(29) & ((\frequency|Add0~57\) # (GND)))
-- \frequency|Add0~59\ = CARRY((!\frequency|Add0~57\) # (!\frequency|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(29),
	datad => VCC,
	cin => \frequency|Add0~57\,
	combout => \frequency|Add0~58_combout\,
	cout => \frequency|Add0~59\);

-- Location: FF_X56_Y69_N27
\frequency|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(29));

-- Location: LCCOMB_X56_Y69_N28
\frequency|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~60_combout\ = (\frequency|s_counter\(30) & (\frequency|Add0~59\ $ (GND))) # (!\frequency|s_counter\(30) & (!\frequency|Add0~59\ & VCC))
-- \frequency|Add0~61\ = CARRY((\frequency|s_counter\(30) & !\frequency|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(30),
	datad => VCC,
	cin => \frequency|Add0~59\,
	combout => \frequency|Add0~60_combout\,
	cout => \frequency|Add0~61\);

-- Location: FF_X56_Y69_N29
\frequency|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(30));

-- Location: LCCOMB_X56_Y69_N30
\frequency|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~62_combout\ = \frequency|s_counter\(31) $ (\frequency|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(31),
	cin => \frequency|Add0~61\,
	combout => \frequency|Add0~62_combout\);

-- Location: FF_X56_Y69_N31
\frequency|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(31));

-- Location: LCCOMB_X55_Y69_N8
\frequency|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal0~3_combout\ = (!\frequency|s_counter\(31) & (!\frequency|s_counter\(30) & (!\frequency|s_counter\(29) & !\frequency|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(31),
	datab => \frequency|s_counter\(30),
	datac => \frequency|s_counter\(29),
	datad => \frequency|s_counter\(28),
	combout => \frequency|Equal0~3_combout\);

-- Location: LCCOMB_X55_Y69_N4
\frequency|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal0~4_combout\ = (\frequency|s_counter\(21) & (!\frequency|s_counter\(25) & (!\frequency|s_counter\(26) & !\frequency|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(21),
	datab => \frequency|s_counter\(25),
	datac => \frequency|s_counter\(26),
	datad => \frequency|s_counter\(27),
	combout => \frequency|Equal0~4_combout\);

-- Location: LCCOMB_X55_Y69_N20
\frequency|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal0~6_combout\ = (!\frequency|s_counter\(8) & (\frequency|s_counter\(12) & (\frequency|s_counter\(11) & !\frequency|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(8),
	datab => \frequency|s_counter\(12),
	datac => \frequency|s_counter\(11),
	datad => \frequency|s_counter\(9),
	combout => \frequency|Equal0~6_combout\);

-- Location: LCCOMB_X55_Y69_N6
\frequency|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal0~7_combout\ = (\frequency|Equal0~5_combout\ & (\frequency|Equal0~3_combout\ & (\frequency|Equal0~4_combout\ & \frequency|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|Equal0~5_combout\,
	datab => \frequency|Equal0~3_combout\,
	datac => \frequency|Equal0~4_combout\,
	datad => \frequency|Equal0~6_combout\,
	combout => \frequency|Equal0~7_combout\);

-- Location: LCCOMB_X57_Y70_N30
\frequency|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal0~8_combout\ = (!\frequency|s_counter\(7) & (!\frequency|s_counter\(6) & (\frequency|s_counter\(3) & \frequency|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(7),
	datab => \frequency|s_counter\(6),
	datac => \frequency|s_counter\(3),
	datad => \frequency|s_counter\(4),
	combout => \frequency|Equal0~8_combout\);

-- Location: LCCOMB_X57_Y70_N0
\frequency|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal0~9_combout\ = (\frequency|s_counter\(2) & (\frequency|s_counter\(0) & \frequency|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(2),
	datac => \frequency|s_counter\(0),
	datad => \frequency|s_counter\(1),
	combout => \frequency|Equal0~9_combout\);

-- Location: LCCOMB_X57_Y69_N0
\frequency|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal1~3_combout\ = (\frequency|Equal0~7_combout\ & (\frequency|Equal1~2_combout\ & (\frequency|Equal0~8_combout\ & \frequency|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|Equal0~7_combout\,
	datab => \frequency|Equal1~2_combout\,
	datac => \frequency|Equal0~8_combout\,
	datad => \frequency|Equal0~9_combout\,
	combout => \frequency|Equal1~3_combout\);

-- Location: LCCOMB_X56_Y70_N28
\frequency|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~28_combout\ = (\frequency|s_counter\(14) & (\frequency|Add0~27\ $ (GND))) # (!\frequency|s_counter\(14) & (!\frequency|Add0~27\ & VCC))
-- \frequency|Add0~29\ = CARRY((\frequency|s_counter\(14) & !\frequency|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(14),
	datad => VCC,
	cin => \frequency|Add0~27\,
	combout => \frequency|Add0~28_combout\,
	cout => \frequency|Add0~29\);

-- Location: LCCOMB_X57_Y69_N12
\frequency|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|s_counter~3_combout\ = (\frequency|Add0~28_combout\ & !\frequency|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \frequency|Add0~28_combout\,
	datad => \frequency|Equal1~3_combout\,
	combout => \frequency|s_counter~3_combout\);

-- Location: FF_X57_Y69_N13
\frequency|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(14));

-- Location: LCCOMB_X56_Y70_N30
\frequency|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~30_combout\ = (\frequency|s_counter\(15) & (!\frequency|Add0~29\)) # (!\frequency|s_counter\(15) & ((\frequency|Add0~29\) # (GND)))
-- \frequency|Add0~31\ = CARRY((!\frequency|Add0~29\) # (!\frequency|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(15),
	datad => VCC,
	cin => \frequency|Add0~29\,
	combout => \frequency|Add0~30_combout\,
	cout => \frequency|Add0~31\);

-- Location: FF_X56_Y70_N31
\frequency|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(15));

-- Location: LCCOMB_X56_Y69_N0
\frequency|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Add0~32_combout\ = (\frequency|s_counter\(16) & (\frequency|Add0~31\ $ (GND))) # (!\frequency|s_counter\(16) & (!\frequency|Add0~31\ & VCC))
-- \frequency|Add0~33\ = CARRY((\frequency|s_counter\(16) & !\frequency|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(16),
	datad => VCC,
	cin => \frequency|Add0~31\,
	combout => \frequency|Add0~32_combout\,
	cout => \frequency|Add0~33\);

-- Location: LCCOMB_X57_Y69_N6
\frequency|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|s_counter~2_combout\ = (!\frequency|Equal1~3_combout\ & \frequency|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frequency|Equal1~3_combout\,
	datad => \frequency|Add0~32_combout\,
	combout => \frequency|s_counter~2_combout\);

-- Location: FF_X57_Y69_N7
\frequency|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(16));

-- Location: FF_X56_Y69_N3
\frequency|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|s_counter\(17));

-- Location: LCCOMB_X57_Y69_N22
\frequency|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal1~0_combout\ = (!\frequency|s_counter\(17) & (\frequency|s_counter\(24) & (\frequency|s_counter\(22) & !\frequency|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(17),
	datab => \frequency|s_counter\(24),
	datac => \frequency|s_counter\(22),
	datad => \frequency|s_counter\(23),
	combout => \frequency|Equal1~0_combout\);

-- Location: LCCOMB_X57_Y69_N18
\frequency|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal1~1_combout\ = (\frequency|s_counter\(16) & (!\frequency|s_counter\(15) & (!\frequency|s_counter\(10) & \frequency|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(16),
	datab => \frequency|s_counter\(15),
	datac => \frequency|s_counter\(10),
	datad => \frequency|s_counter\(14),
	combout => \frequency|Equal1~1_combout\);

-- Location: LCCOMB_X57_Y69_N28
\frequency|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal1~2_combout\ = (\frequency|s_counter\(5) & (\frequency|Equal1~0_combout\ & \frequency|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(5),
	datac => \frequency|Equal1~0_combout\,
	datad => \frequency|Equal1~1_combout\,
	combout => \frequency|Equal1~2_combout\);

-- Location: LCCOMB_X57_Y69_N14
\frequency|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal0~1_combout\ = (!\frequency|s_counter\(14) & (\frequency|s_counter\(15) & (\frequency|s_counter\(10) & !\frequency|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(14),
	datab => \frequency|s_counter\(15),
	datac => \frequency|s_counter\(10),
	datad => \frequency|s_counter\(16),
	combout => \frequency|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y69_N10
\frequency|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal0~0_combout\ = (\frequency|s_counter\(17) & (!\frequency|s_counter\(24) & (!\frequency|s_counter\(22) & \frequency|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|s_counter\(17),
	datab => \frequency|s_counter\(24),
	datac => \frequency|s_counter\(22),
	datad => \frequency|s_counter\(23),
	combout => \frequency|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y69_N26
\frequency|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal0~2_combout\ = (!\frequency|s_counter\(5) & (\frequency|Equal0~1_combout\ & \frequency|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frequency|s_counter\(5),
	datac => \frequency|Equal0~1_combout\,
	datad => \frequency|Equal0~0_combout\,
	combout => \frequency|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y69_N16
\frequency|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|Equal0~10_combout\ = (\frequency|Equal0~9_combout\ & (\frequency|Equal0~8_combout\ & \frequency|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frequency|Equal0~9_combout\,
	datac => \frequency|Equal0~8_combout\,
	datad => \frequency|Equal0~7_combout\,
	combout => \frequency|Equal0~10_combout\);

-- Location: LCCOMB_X57_Y69_N20
\frequency|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|clkOut~0_combout\ = (\frequency|Equal0~10_combout\ & ((\frequency|Equal0~2_combout\) # ((\frequency|clkOut~q\ & !\frequency|Equal1~2_combout\)))) # (!\frequency|Equal0~10_combout\ & (\frequency|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frequency|clkOut~q\,
	datab => \frequency|Equal1~2_combout\,
	datac => \frequency|Equal0~2_combout\,
	datad => \frequency|Equal0~10_combout\,
	combout => \frequency|clkOut~0_combout\);

-- Location: LCCOMB_X57_Y69_N24
\frequency|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \frequency|clkOut~feeder_combout\ = \frequency|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \frequency|clkOut~0_combout\,
	combout => \frequency|clkOut~feeder_combout\);

-- Location: FF_X57_Y69_N25
\frequency|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \frequency|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \frequency|clkOut~q\);

-- Location: CLKCTRL_G12
\frequency|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \frequency|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \frequency|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X114_Y17_N10
\counter|s_count[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[0]~10_combout\ = (!\SW[0]~input_o\ & ((\SW[7]~input_o\ & (\SW[3]~input_o\)) # (!\SW[7]~input_o\ & ((!\counter|s_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \counter|s_count\(0),
	combout => \counter|s_count[0]~10_combout\);

-- Location: LCCOMB_X114_Y17_N12
\counter|s_count[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[0]~11_combout\ = (\SW[1]~input_o\ & (((\counter|s_count[0]~10_combout\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\counter|s_count[0]~10_combout\))) # (!\SW[0]~input_o\ & (\counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \counter|s_count\(0),
	datad => \counter|s_count[0]~10_combout\,
	combout => \counter|s_count[0]~11_combout\);

-- Location: FF_X114_Y17_N13
\counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frequency|clkOut~clkctrl_outclk\,
	d => \counter|s_count[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(0));

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X114_Y17_N18
\counter|s_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[1]~4_cout\ = CARRY(\counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datad => VCC,
	cout => \counter|s_count[1]~4_cout\);

-- Location: LCCOMB_X114_Y17_N20
\counter|s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[1]~5_combout\ = (\SW[2]~input_o\ & ((\counter|s_count\(1) & (!\counter|s_count[1]~4_cout\)) # (!\counter|s_count\(1) & ((\counter|s_count[1]~4_cout\) # (GND))))) # (!\SW[2]~input_o\ & ((\counter|s_count\(1) & (\counter|s_count[1]~4_cout\ 
-- & VCC)) # (!\counter|s_count\(1) & (!\counter|s_count[1]~4_cout\))))
-- \counter|s_count[1]~6\ = CARRY((\SW[2]~input_o\ & ((!\counter|s_count[1]~4_cout\) # (!\counter|s_count\(1)))) # (!\SW[2]~input_o\ & (!\counter|s_count\(1) & !\counter|s_count[1]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \counter|s_count\(1),
	datad => VCC,
	cin => \counter|s_count[1]~4_cout\,
	combout => \counter|s_count[1]~5_combout\,
	cout => \counter|s_count[1]~6\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X114_Y17_N8
\counter|s_count[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[0]~9_combout\ = (\SW[1]~input_o\) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \counter|s_count[0]~9_combout\);

-- Location: FF_X114_Y17_N21
\counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frequency|clkOut~clkctrl_outclk\,
	d => \counter|s_count[1]~5_combout\,
	asdata => \SW[4]~input_o\,
	sclr => \SW[0]~input_o\,
	sload => \SW[7]~input_o\,
	ena => \counter|s_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(1));

-- Location: LCCOMB_X114_Y17_N22
\counter|s_count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[2]~7_combout\ = ((\counter|s_count\(2) $ (\SW[2]~input_o\ $ (\counter|s_count[1]~6\)))) # (GND)
-- \counter|s_count[2]~8\ = CARRY((\counter|s_count\(2) & ((!\counter|s_count[1]~6\) # (!\SW[2]~input_o\))) # (!\counter|s_count\(2) & (!\SW[2]~input_o\ & !\counter|s_count[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(2),
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \counter|s_count[1]~6\,
	combout => \counter|s_count[2]~7_combout\,
	cout => \counter|s_count[2]~8\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X114_Y17_N23
\counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frequency|clkOut~clkctrl_outclk\,
	d => \counter|s_count[2]~7_combout\,
	asdata => \SW[5]~input_o\,
	sclr => \SW[0]~input_o\,
	sload => \SW[7]~input_o\,
	ena => \counter|s_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(2));

-- Location: LCCOMB_X114_Y17_N24
\counter|s_count[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[3]~12_combout\ = \SW[2]~input_o\ $ (\counter|s_count[2]~8\ $ (!\counter|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datad => \counter|s_count\(3),
	cin => \counter|s_count[2]~8\,
	combout => \counter|s_count[3]~12_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X114_Y17_N25
\counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \frequency|clkOut~clkctrl_outclk\,
	d => \counter|s_count[3]~12_combout\,
	asdata => \SW[6]~input_o\,
	sclr => \SW[0]~input_o\,
	sload => \SW[7]~input_o\,
	ena => \counter|s_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(3));

-- Location: LCCOMB_X114_Y17_N14
\display|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n~9_combout\ = (\counter|s_count\(2) & (!\counter|s_count\(1) & (\counter|s_count\(0) $ (!\counter|s_count\(3))))) # (!\counter|s_count\(2) & (\counter|s_count\(0) & (\counter|s_count\(1) $ (!\counter|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \counter|s_count\(2),
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(3),
	combout => \display|decOut_n~9_combout\);

-- Location: LCCOMB_X114_Y21_N4
\display|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n~10_combout\ = (\display|decOut_n~9_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|decOut_n~9_combout\,
	datad => \SW[1]~input_o\,
	combout => \display|decOut_n~10_combout\);

-- Location: LCCOMB_X114_Y17_N0
\display|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n~11_combout\ = (\counter|s_count\(1) & ((\counter|s_count\(0) & ((\counter|s_count\(3)))) # (!\counter|s_count\(0) & (\counter|s_count\(2))))) # (!\counter|s_count\(1) & (\counter|s_count\(2) & (\counter|s_count\(0) $ 
-- (\counter|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \counter|s_count\(2),
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(3),
	combout => \display|decOut_n~11_combout\);

-- Location: LCCOMB_X114_Y21_N22
\display|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n~12_combout\ = (\display|decOut_n~11_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|decOut_n~11_combout\,
	datad => \SW[1]~input_o\,
	combout => \display|decOut_n~12_combout\);

-- Location: LCCOMB_X114_Y17_N30
\display|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n~8_combout\ = (\counter|s_count\(2) & (\counter|s_count\(3) & ((\counter|s_count\(1)) # (!\counter|s_count\(0))))) # (!\counter|s_count\(2) & (!\counter|s_count\(0) & (\counter|s_count\(1) & !\counter|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \counter|s_count\(2),
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(3),
	combout => \display|decOut_n~8_combout\);

-- Location: LCCOMB_X114_Y21_N12
\display|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n~19_combout\ = (\display|decOut_n~8_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|decOut_n~8_combout\,
	datad => \SW[1]~input_o\,
	combout => \display|decOut_n~19_combout\);

-- Location: LCCOMB_X114_Y17_N4
\display|decOut_n[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n[3]~2_combout\ = (\counter|s_count\(1) & ((\counter|s_count\(0) & (\counter|s_count\(2))) # (!\counter|s_count\(0) & (!\counter|s_count\(2) & \counter|s_count\(3))))) # (!\counter|s_count\(1) & (!\counter|s_count\(3) & 
-- (\counter|s_count\(0) $ (\counter|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \counter|s_count\(2),
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(3),
	combout => \display|decOut_n[3]~2_combout\);

-- Location: LCCOMB_X114_Y17_N2
\display|decOut_n[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n[3]~17_combout\ = (\display|decOut_n[3]~2_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|decOut_n[3]~2_combout\,
	datad => \SW[1]~input_o\,
	combout => \display|decOut_n[3]~17_combout\);

-- Location: LCCOMB_X114_Y17_N6
\display|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n~13_combout\ = (\counter|s_count\(1) & (\counter|s_count\(0) & ((!\counter|s_count\(3))))) # (!\counter|s_count\(1) & ((\counter|s_count\(2) & ((!\counter|s_count\(3)))) # (!\counter|s_count\(2) & (\counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \counter|s_count\(2),
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(3),
	combout => \display|decOut_n~13_combout\);

-- Location: LCCOMB_X114_Y21_N0
\display|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n~14_combout\ = (\display|decOut_n~13_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|decOut_n~13_combout\,
	datad => \SW[1]~input_o\,
	combout => \display|decOut_n~14_combout\);

-- Location: LCCOMB_X114_Y17_N28
\display|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n~15_combout\ = (\counter|s_count\(1) & (!\counter|s_count\(2) & !\counter|s_count\(0))) # (!\counter|s_count\(1) & (\counter|s_count\(2) & \counter|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(1),
	datab => \counter|s_count\(2),
	datad => \counter|s_count\(0),
	combout => \display|decOut_n~15_combout\);

-- Location: LCCOMB_X114_Y17_N26
\display|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n~16_combout\ = ((\counter|s_count\(3) & (\display|decOut_n~15_combout\ & \counter|s_count\(0))) # (!\counter|s_count\(3) & (\display|decOut_n~15_combout\ $ (\counter|s_count\(0))))) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \counter|s_count\(3),
	datac => \display|decOut_n~15_combout\,
	datad => \counter|s_count\(0),
	combout => \display|decOut_n~16_combout\);

-- Location: LCCOMB_X114_Y17_N16
\display|decOut_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n[6]~5_combout\ = (\counter|s_count\(0) & (!\counter|s_count\(3) & (\counter|s_count\(2) $ (!\counter|s_count\(1))))) # (!\counter|s_count\(0) & (!\counter|s_count\(1) & (\counter|s_count\(2) $ (!\counter|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \counter|s_count\(2),
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(3),
	combout => \display|decOut_n[6]~5_combout\);

-- Location: LCCOMB_X114_Y21_N10
\display|decOut_n[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \display|decOut_n[6]~18_combout\ = (\display|decOut_n[6]~5_combout\) # (!\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display|decOut_n[6]~5_combout\,
	datad => \SW[1]~input_o\,
	combout => \display|decOut_n[6]~18_combout\);

-- Location: IOIBUF_X115_Y62_N15
\k[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(0),
	o => \k[0]~input_o\);

-- Location: IOIBUF_X3_Y73_N22
\k[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(1),
	o => \k[1]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\k[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(2),
	o => \k[2]~input_o\);

-- Location: IOIBUF_X7_Y73_N15
\k[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(3),
	o => \k[3]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\k[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(4),
	o => \k[4]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\k[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(5),
	o => \k[5]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\k[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(6),
	o => \k[6]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\k[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(7),
	o => \k[7]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\k[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(8),
	o => \k[8]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\k[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(9),
	o => \k[9]~input_o\);

-- Location: IOIBUF_X105_Y0_N8
\k[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(10),
	o => \k[10]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\k[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(11),
	o => \k[11]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\k[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(12),
	o => \k[12]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\k[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(13),
	o => \k[13]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\k[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(14),
	o => \k[14]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\k[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(15),
	o => \k[15]~input_o\);

-- Location: IOIBUF_X115_Y65_N22
\k[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(16),
	o => \k[16]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\k[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(17),
	o => \k[17]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\k[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(18),
	o => \k[18]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\k[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(19),
	o => \k[19]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\k[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(20),
	o => \k[20]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\k[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(21),
	o => \k[21]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\k[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(22),
	o => \k[22]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\k[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(23),
	o => \k[23]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\k[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(24),
	o => \k[24]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\k[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(25),
	o => \k[25]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\k[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(26),
	o => \k[26]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\k[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(27),
	o => \k[27]~input_o\);

-- Location: IOIBUF_X115_Y62_N8
\k[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(28),
	o => \k[28]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\k[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(29),
	o => \k[29]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\k[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(30),
	o => \k[30]~input_o\);

-- Location: IOIBUF_X5_Y73_N1
\k[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_k(31),
	o => \k[31]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


