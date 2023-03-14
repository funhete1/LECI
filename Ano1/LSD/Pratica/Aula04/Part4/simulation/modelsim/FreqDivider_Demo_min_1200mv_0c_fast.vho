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

-- DATE "03/13/2023 15:41:48"

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
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END FreqDivider_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \d|Add0~0_combout\ : std_logic;
SIGNAL \d|Add0~1\ : std_logic;
SIGNAL \d|Add0~2_combout\ : std_logic;
SIGNAL \d|Add0~3\ : std_logic;
SIGNAL \d|Add0~4_combout\ : std_logic;
SIGNAL \d|Add0~5\ : std_logic;
SIGNAL \d|Add0~6_combout\ : std_logic;
SIGNAL \d|Add0~7\ : std_logic;
SIGNAL \d|Add0~8_combout\ : std_logic;
SIGNAL \d|Add0~9\ : std_logic;
SIGNAL \d|Add0~10_combout\ : std_logic;
SIGNAL \d|Add0~11\ : std_logic;
SIGNAL \d|Add0~12_combout\ : std_logic;
SIGNAL \d|Add0~13\ : std_logic;
SIGNAL \d|Add0~14_combout\ : std_logic;
SIGNAL \d|Add0~15\ : std_logic;
SIGNAL \d|Add0~16_combout\ : std_logic;
SIGNAL \d|Add0~17\ : std_logic;
SIGNAL \d|Add0~18_combout\ : std_logic;
SIGNAL \d|Add0~19\ : std_logic;
SIGNAL \d|Add0~20_combout\ : std_logic;
SIGNAL \d|Add0~21\ : std_logic;
SIGNAL \d|Add0~22_combout\ : std_logic;
SIGNAL \d|s_counter~6_combout\ : std_logic;
SIGNAL \d|Add0~23\ : std_logic;
SIGNAL \d|Add0~24_combout\ : std_logic;
SIGNAL \d|s_counter~5_combout\ : std_logic;
SIGNAL \d|Add0~25\ : std_logic;
SIGNAL \d|Add0~26_combout\ : std_logic;
SIGNAL \d|s_counter~4_combout\ : std_logic;
SIGNAL \d|Add0~27\ : std_logic;
SIGNAL \d|Add0~28_combout\ : std_logic;
SIGNAL \d|s_counter~11_combout\ : std_logic;
SIGNAL \d|Add0~29\ : std_logic;
SIGNAL \d|Add0~30_combout\ : std_logic;
SIGNAL \d|Add0~31\ : std_logic;
SIGNAL \d|Add0~32_combout\ : std_logic;
SIGNAL \d|s_counter~10_combout\ : std_logic;
SIGNAL \d|Equal1~1_combout\ : std_logic;
SIGNAL \d|Add0~33\ : std_logic;
SIGNAL \d|Add0~34_combout\ : std_logic;
SIGNAL \d|Add0~35\ : std_logic;
SIGNAL \d|Add0~36_combout\ : std_logic;
SIGNAL \d|s_counter~3_combout\ : std_logic;
SIGNAL \d|Add0~37\ : std_logic;
SIGNAL \d|Add0~38_combout\ : std_logic;
SIGNAL \d|s_counter~2_combout\ : std_logic;
SIGNAL \d|Add0~39\ : std_logic;
SIGNAL \d|Add0~40_combout\ : std_logic;
SIGNAL \d|s_counter~1_combout\ : std_logic;
SIGNAL \d|Add0~41\ : std_logic;
SIGNAL \d|Add0~42_combout\ : std_logic;
SIGNAL \d|s_counter~0_combout\ : std_logic;
SIGNAL \d|Add0~43\ : std_logic;
SIGNAL \d|Add0~44_combout\ : std_logic;
SIGNAL \d|s_counter~9_combout\ : std_logic;
SIGNAL \d|Add0~45\ : std_logic;
SIGNAL \d|Add0~46_combout\ : std_logic;
SIGNAL \d|Add0~47\ : std_logic;
SIGNAL \d|Add0~48_combout\ : std_logic;
SIGNAL \d|s_counter~8_combout\ : std_logic;
SIGNAL \d|Equal1~0_combout\ : std_logic;
SIGNAL \d|Equal1~2_combout\ : std_logic;
SIGNAL \d|s_counter~7_combout\ : std_logic;
SIGNAL \d|Equal0~5_combout\ : std_logic;
SIGNAL \d|Equal0~6_combout\ : std_logic;
SIGNAL \d|Equal0~2_combout\ : std_logic;
SIGNAL \d|Add0~49\ : std_logic;
SIGNAL \d|Add0~50_combout\ : std_logic;
SIGNAL \d|Add0~51\ : std_logic;
SIGNAL \d|Add0~52_combout\ : std_logic;
SIGNAL \d|Add0~53\ : std_logic;
SIGNAL \d|Add0~54_combout\ : std_logic;
SIGNAL \d|Equal0~1_combout\ : std_logic;
SIGNAL \d|Add0~55\ : std_logic;
SIGNAL \d|Add0~56_combout\ : std_logic;
SIGNAL \d|Add0~57\ : std_logic;
SIGNAL \d|Add0~58_combout\ : std_logic;
SIGNAL \d|Add0~59\ : std_logic;
SIGNAL \d|Add0~60_combout\ : std_logic;
SIGNAL \d|Add0~61\ : std_logic;
SIGNAL \d|Add0~62_combout\ : std_logic;
SIGNAL \d|Equal0~0_combout\ : std_logic;
SIGNAL \d|Equal0~3_combout\ : std_logic;
SIGNAL \d|Equal0~4_combout\ : std_logic;
SIGNAL \d|Equal0~7_combout\ : std_logic;
SIGNAL \d|Equal0~8_combout\ : std_logic;
SIGNAL \d|Equal0~9_combout\ : std_logic;
SIGNAL \d|Equal0~10_combout\ : std_logic;
SIGNAL \d|clkOut~0_combout\ : std_logic;
SIGNAL \d|clkOut~q\ : std_logic;
SIGNAL \d|s_counter\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

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

-- Location: LCCOMB_X76_Y66_N0
\d|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~0_combout\ = \d|s_counter\(0) $ (VCC)
-- \d|Add0~1\ = CARRY(\d|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(0),
	datad => VCC,
	combout => \d|Add0~0_combout\,
	cout => \d|Add0~1\);

-- Location: FF_X76_Y66_N1
\d|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(0));

-- Location: LCCOMB_X76_Y66_N2
\d|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~2_combout\ = (\d|s_counter\(1) & (!\d|Add0~1\)) # (!\d|s_counter\(1) & ((\d|Add0~1\) # (GND)))
-- \d|Add0~3\ = CARRY((!\d|Add0~1\) # (!\d|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(1),
	datad => VCC,
	cin => \d|Add0~1\,
	combout => \d|Add0~2_combout\,
	cout => \d|Add0~3\);

-- Location: FF_X76_Y66_N3
\d|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(1));

-- Location: LCCOMB_X76_Y66_N4
\d|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~4_combout\ = (\d|s_counter\(2) & (\d|Add0~3\ $ (GND))) # (!\d|s_counter\(2) & (!\d|Add0~3\ & VCC))
-- \d|Add0~5\ = CARRY((\d|s_counter\(2) & !\d|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(2),
	datad => VCC,
	cin => \d|Add0~3\,
	combout => \d|Add0~4_combout\,
	cout => \d|Add0~5\);

-- Location: FF_X76_Y66_N5
\d|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(2));

-- Location: LCCOMB_X76_Y66_N6
\d|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~6_combout\ = (\d|s_counter\(3) & (!\d|Add0~5\)) # (!\d|s_counter\(3) & ((\d|Add0~5\) # (GND)))
-- \d|Add0~7\ = CARRY((!\d|Add0~5\) # (!\d|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(3),
	datad => VCC,
	cin => \d|Add0~5\,
	combout => \d|Add0~6_combout\,
	cout => \d|Add0~7\);

-- Location: FF_X76_Y66_N7
\d|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(3));

-- Location: LCCOMB_X76_Y66_N8
\d|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~8_combout\ = (\d|s_counter\(4) & (\d|Add0~7\ $ (GND))) # (!\d|s_counter\(4) & (!\d|Add0~7\ & VCC))
-- \d|Add0~9\ = CARRY((\d|s_counter\(4) & !\d|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(4),
	datad => VCC,
	cin => \d|Add0~7\,
	combout => \d|Add0~8_combout\,
	cout => \d|Add0~9\);

-- Location: FF_X76_Y66_N9
\d|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(4));

-- Location: LCCOMB_X76_Y66_N10
\d|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~10_combout\ = (\d|s_counter\(5) & (!\d|Add0~9\)) # (!\d|s_counter\(5) & ((\d|Add0~9\) # (GND)))
-- \d|Add0~11\ = CARRY((!\d|Add0~9\) # (!\d|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(5),
	datad => VCC,
	cin => \d|Add0~9\,
	combout => \d|Add0~10_combout\,
	cout => \d|Add0~11\);

-- Location: FF_X76_Y66_N11
\d|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(5));

-- Location: LCCOMB_X76_Y66_N12
\d|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~12_combout\ = (\d|s_counter\(6) & (\d|Add0~11\ $ (GND))) # (!\d|s_counter\(6) & (!\d|Add0~11\ & VCC))
-- \d|Add0~13\ = CARRY((\d|s_counter\(6) & !\d|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(6),
	datad => VCC,
	cin => \d|Add0~11\,
	combout => \d|Add0~12_combout\,
	cout => \d|Add0~13\);

-- Location: LCCOMB_X76_Y66_N14
\d|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~14_combout\ = (\d|s_counter\(7) & (!\d|Add0~13\)) # (!\d|s_counter\(7) & ((\d|Add0~13\) # (GND)))
-- \d|Add0~15\ = CARRY((!\d|Add0~13\) # (!\d|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(7),
	datad => VCC,
	cin => \d|Add0~13\,
	combout => \d|Add0~14_combout\,
	cout => \d|Add0~15\);

-- Location: FF_X76_Y66_N15
\d|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(7));

-- Location: LCCOMB_X76_Y66_N16
\d|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~16_combout\ = (\d|s_counter\(8) & (\d|Add0~15\ $ (GND))) # (!\d|s_counter\(8) & (!\d|Add0~15\ & VCC))
-- \d|Add0~17\ = CARRY((\d|s_counter\(8) & !\d|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(8),
	datad => VCC,
	cin => \d|Add0~15\,
	combout => \d|Add0~16_combout\,
	cout => \d|Add0~17\);

-- Location: FF_X76_Y66_N17
\d|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(8));

-- Location: LCCOMB_X76_Y66_N18
\d|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~18_combout\ = (\d|s_counter\(9) & (!\d|Add0~17\)) # (!\d|s_counter\(9) & ((\d|Add0~17\) # (GND)))
-- \d|Add0~19\ = CARRY((!\d|Add0~17\) # (!\d|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(9),
	datad => VCC,
	cin => \d|Add0~17\,
	combout => \d|Add0~18_combout\,
	cout => \d|Add0~19\);

-- Location: FF_X76_Y66_N19
\d|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(9));

-- Location: LCCOMB_X76_Y66_N20
\d|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~20_combout\ = (\d|s_counter\(10) & (\d|Add0~19\ $ (GND))) # (!\d|s_counter\(10) & (!\d|Add0~19\ & VCC))
-- \d|Add0~21\ = CARRY((\d|s_counter\(10) & !\d|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(10),
	datad => VCC,
	cin => \d|Add0~19\,
	combout => \d|Add0~20_combout\,
	cout => \d|Add0~21\);

-- Location: FF_X76_Y66_N21
\d|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(10));

-- Location: LCCOMB_X76_Y66_N22
\d|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~22_combout\ = (\d|s_counter\(11) & (!\d|Add0~21\)) # (!\d|s_counter\(11) & ((\d|Add0~21\) # (GND)))
-- \d|Add0~23\ = CARRY((!\d|Add0~21\) # (!\d|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(11),
	datad => VCC,
	cin => \d|Add0~21\,
	combout => \d|Add0~22_combout\,
	cout => \d|Add0~23\);

-- Location: LCCOMB_X75_Y65_N30
\d|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|s_counter~6_combout\ = (\d|Add0~22_combout\ & !\d|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|Add0~22_combout\,
	datad => \d|Equal1~2_combout\,
	combout => \d|s_counter~6_combout\);

-- Location: FF_X75_Y65_N31
\d|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(11));

-- Location: LCCOMB_X76_Y66_N24
\d|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~24_combout\ = (\d|s_counter\(12) & (\d|Add0~23\ $ (GND))) # (!\d|s_counter\(12) & (!\d|Add0~23\ & VCC))
-- \d|Add0~25\ = CARRY((\d|s_counter\(12) & !\d|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(12),
	datad => VCC,
	cin => \d|Add0~23\,
	combout => \d|Add0~24_combout\,
	cout => \d|Add0~25\);

-- Location: LCCOMB_X75_Y65_N0
\d|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|s_counter~5_combout\ = (\d|Add0~24_combout\ & !\d|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d|Add0~24_combout\,
	datad => \d|Equal1~2_combout\,
	combout => \d|s_counter~5_combout\);

-- Location: FF_X75_Y65_N1
\d|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(12));

-- Location: LCCOMB_X76_Y66_N26
\d|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~26_combout\ = (\d|s_counter\(13) & (!\d|Add0~25\)) # (!\d|s_counter\(13) & ((\d|Add0~25\) # (GND)))
-- \d|Add0~27\ = CARRY((!\d|Add0~25\) # (!\d|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(13),
	datad => VCC,
	cin => \d|Add0~25\,
	combout => \d|Add0~26_combout\,
	cout => \d|Add0~27\);

-- Location: LCCOMB_X75_Y65_N12
\d|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|s_counter~4_combout\ = (\d|Add0~26_combout\ & !\d|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d|Add0~26_combout\,
	datad => \d|Equal1~2_combout\,
	combout => \d|s_counter~4_combout\);

-- Location: FF_X75_Y65_N13
\d|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(13));

-- Location: LCCOMB_X76_Y66_N28
\d|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~28_combout\ = (\d|s_counter\(14) & (\d|Add0~27\ $ (GND))) # (!\d|s_counter\(14) & (!\d|Add0~27\ & VCC))
-- \d|Add0~29\ = CARRY((\d|s_counter\(14) & !\d|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(14),
	datad => VCC,
	cin => \d|Add0~27\,
	combout => \d|Add0~28_combout\,
	cout => \d|Add0~29\);

-- Location: LCCOMB_X77_Y65_N8
\d|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|s_counter~11_combout\ = (\d|Add0~28_combout\ & !\d|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|Add0~28_combout\,
	datad => \d|Equal1~2_combout\,
	combout => \d|s_counter~11_combout\);

-- Location: FF_X77_Y65_N9
\d|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(14));

-- Location: LCCOMB_X76_Y66_N30
\d|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~30_combout\ = (\d|s_counter\(15) & (!\d|Add0~29\)) # (!\d|s_counter\(15) & ((\d|Add0~29\) # (GND)))
-- \d|Add0~31\ = CARRY((!\d|Add0~29\) # (!\d|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(15),
	datad => VCC,
	cin => \d|Add0~29\,
	combout => \d|Add0~30_combout\,
	cout => \d|Add0~31\);

-- Location: FF_X76_Y66_N31
\d|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(15));

-- Location: LCCOMB_X76_Y65_N0
\d|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~32_combout\ = (\d|s_counter\(16) & (\d|Add0~31\ $ (GND))) # (!\d|s_counter\(16) & (!\d|Add0~31\ & VCC))
-- \d|Add0~33\ = CARRY((\d|s_counter\(16) & !\d|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(16),
	datad => VCC,
	cin => \d|Add0~31\,
	combout => \d|Add0~32_combout\,
	cout => \d|Add0~33\);

-- Location: LCCOMB_X77_Y65_N6
\d|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|s_counter~10_combout\ = (\d|Add0~32_combout\ & !\d|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|Add0~32_combout\,
	datad => \d|Equal1~2_combout\,
	combout => \d|s_counter~10_combout\);

-- Location: FF_X77_Y65_N7
\d|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(16));

-- Location: LCCOMB_X77_Y65_N24
\d|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal1~1_combout\ = (!\d|s_counter\(15) & (\d|s_counter\(14) & (!\d|s_counter\(10) & \d|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(15),
	datab => \d|s_counter\(14),
	datac => \d|s_counter\(10),
	datad => \d|s_counter\(16),
	combout => \d|Equal1~1_combout\);

-- Location: LCCOMB_X76_Y65_N2
\d|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~34_combout\ = (\d|s_counter\(17) & (!\d|Add0~33\)) # (!\d|s_counter\(17) & ((\d|Add0~33\) # (GND)))
-- \d|Add0~35\ = CARRY((!\d|Add0~33\) # (!\d|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(17),
	datad => VCC,
	cin => \d|Add0~33\,
	combout => \d|Add0~34_combout\,
	cout => \d|Add0~35\);

-- Location: FF_X76_Y65_N3
\d|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(17));

-- Location: LCCOMB_X76_Y65_N4
\d|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~36_combout\ = (\d|s_counter\(18) & (\d|Add0~35\ $ (GND))) # (!\d|s_counter\(18) & (!\d|Add0~35\ & VCC))
-- \d|Add0~37\ = CARRY((\d|s_counter\(18) & !\d|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(18),
	datad => VCC,
	cin => \d|Add0~35\,
	combout => \d|Add0~36_combout\,
	cout => \d|Add0~37\);

-- Location: LCCOMB_X75_Y65_N26
\d|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|s_counter~3_combout\ = (\d|Add0~36_combout\ & !\d|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d|Add0~36_combout\,
	datad => \d|Equal1~2_combout\,
	combout => \d|s_counter~3_combout\);

-- Location: FF_X75_Y65_N27
\d|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(18));

-- Location: LCCOMB_X76_Y65_N6
\d|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~38_combout\ = (\d|s_counter\(19) & (!\d|Add0~37\)) # (!\d|s_counter\(19) & ((\d|Add0~37\) # (GND)))
-- \d|Add0~39\ = CARRY((!\d|Add0~37\) # (!\d|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(19),
	datad => VCC,
	cin => \d|Add0~37\,
	combout => \d|Add0~38_combout\,
	cout => \d|Add0~39\);

-- Location: LCCOMB_X75_Y65_N16
\d|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|s_counter~2_combout\ = (\d|Add0~38_combout\ & !\d|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d|Add0~38_combout\,
	datad => \d|Equal1~2_combout\,
	combout => \d|s_counter~2_combout\);

-- Location: FF_X75_Y65_N17
\d|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(19));

-- Location: LCCOMB_X76_Y65_N8
\d|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~40_combout\ = (\d|s_counter\(20) & (\d|Add0~39\ $ (GND))) # (!\d|s_counter\(20) & (!\d|Add0~39\ & VCC))
-- \d|Add0~41\ = CARRY((\d|s_counter\(20) & !\d|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(20),
	datad => VCC,
	cin => \d|Add0~39\,
	combout => \d|Add0~40_combout\,
	cout => \d|Add0~41\);

-- Location: LCCOMB_X75_Y65_N18
\d|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|s_counter~1_combout\ = (\d|Add0~40_combout\ & !\d|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d|Add0~40_combout\,
	datad => \d|Equal1~2_combout\,
	combout => \d|s_counter~1_combout\);

-- Location: FF_X75_Y65_N19
\d|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(20));

-- Location: LCCOMB_X76_Y65_N10
\d|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~42_combout\ = (\d|s_counter\(21) & (!\d|Add0~41\)) # (!\d|s_counter\(21) & ((\d|Add0~41\) # (GND)))
-- \d|Add0~43\ = CARRY((!\d|Add0~41\) # (!\d|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(21),
	datad => VCC,
	cin => \d|Add0~41\,
	combout => \d|Add0~42_combout\,
	cout => \d|Add0~43\);

-- Location: LCCOMB_X75_Y65_N22
\d|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|s_counter~0_combout\ = (\d|Add0~42_combout\ & !\d|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d|Add0~42_combout\,
	datad => \d|Equal1~2_combout\,
	combout => \d|s_counter~0_combout\);

-- Location: FF_X75_Y65_N23
\d|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(21));

-- Location: LCCOMB_X76_Y65_N12
\d|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~44_combout\ = (\d|s_counter\(22) & (\d|Add0~43\ $ (GND))) # (!\d|s_counter\(22) & (!\d|Add0~43\ & VCC))
-- \d|Add0~45\ = CARRY((\d|s_counter\(22) & !\d|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(22),
	datad => VCC,
	cin => \d|Add0~43\,
	combout => \d|Add0~44_combout\,
	cout => \d|Add0~45\);

-- Location: LCCOMB_X77_Y65_N30
\d|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|s_counter~9_combout\ = (!\d|Equal1~2_combout\ & \d|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|Equal1~2_combout\,
	datad => \d|Add0~44_combout\,
	combout => \d|s_counter~9_combout\);

-- Location: FF_X77_Y65_N31
\d|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(22));

-- Location: LCCOMB_X76_Y65_N14
\d|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~46_combout\ = (\d|s_counter\(23) & (!\d|Add0~45\)) # (!\d|s_counter\(23) & ((\d|Add0~45\) # (GND)))
-- \d|Add0~47\ = CARRY((!\d|Add0~45\) # (!\d|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(23),
	datad => VCC,
	cin => \d|Add0~45\,
	combout => \d|Add0~46_combout\,
	cout => \d|Add0~47\);

-- Location: FF_X76_Y65_N15
\d|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(23));

-- Location: LCCOMB_X76_Y65_N16
\d|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~48_combout\ = (\d|s_counter\(24) & (\d|Add0~47\ $ (GND))) # (!\d|s_counter\(24) & (!\d|Add0~47\ & VCC))
-- \d|Add0~49\ = CARRY((\d|s_counter\(24) & !\d|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(24),
	datad => VCC,
	cin => \d|Add0~47\,
	combout => \d|Add0~48_combout\,
	cout => \d|Add0~49\);

-- Location: LCCOMB_X77_Y65_N20
\d|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|s_counter~8_combout\ = (\d|Add0~48_combout\ & !\d|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d|Add0~48_combout\,
	datad => \d|Equal1~2_combout\,
	combout => \d|s_counter~8_combout\);

-- Location: FF_X77_Y65_N21
\d|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(24));

-- Location: LCCOMB_X77_Y65_N22
\d|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal1~0_combout\ = (!\d|s_counter\(17) & (\d|s_counter\(24) & (\d|s_counter\(22) & !\d|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(17),
	datab => \d|s_counter\(24),
	datac => \d|s_counter\(22),
	datad => \d|s_counter\(23),
	combout => \d|Equal1~0_combout\);

-- Location: LCCOMB_X77_Y65_N10
\d|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal1~2_combout\ = (\d|s_counter\(5) & (\d|Equal1~1_combout\ & (\d|Equal1~0_combout\ & \d|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(5),
	datab => \d|Equal1~1_combout\,
	datac => \d|Equal1~0_combout\,
	datad => \d|Equal0~7_combout\,
	combout => \d|Equal1~2_combout\);

-- Location: LCCOMB_X77_Y65_N14
\d|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|s_counter~7_combout\ = (\d|Add0~12_combout\ & !\d|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|Add0~12_combout\,
	datad => \d|Equal1~2_combout\,
	combout => \d|s_counter~7_combout\);

-- Location: FF_X77_Y65_N15
\d|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(6));

-- Location: LCCOMB_X77_Y65_N16
\d|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal0~5_combout\ = (!\d|s_counter\(6) & (\d|s_counter\(3) & (!\d|s_counter\(7) & \d|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(6),
	datab => \d|s_counter\(3),
	datac => \d|s_counter\(7),
	datad => \d|s_counter\(4),
	combout => \d|Equal0~5_combout\);

-- Location: LCCOMB_X77_Y66_N20
\d|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal0~6_combout\ = (\d|s_counter\(0) & (\d|s_counter\(2) & \d|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(0),
	datac => \d|s_counter\(2),
	datad => \d|s_counter\(1),
	combout => \d|Equal0~6_combout\);

-- Location: LCCOMB_X75_Y65_N10
\d|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal0~2_combout\ = (\d|s_counter\(13) & (\d|s_counter\(20) & (\d|s_counter\(18) & \d|s_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(13),
	datab => \d|s_counter\(20),
	datac => \d|s_counter\(18),
	datad => \d|s_counter\(19),
	combout => \d|Equal0~2_combout\);

-- Location: LCCOMB_X76_Y65_N18
\d|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~50_combout\ = (\d|s_counter\(25) & (!\d|Add0~49\)) # (!\d|s_counter\(25) & ((\d|Add0~49\) # (GND)))
-- \d|Add0~51\ = CARRY((!\d|Add0~49\) # (!\d|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(25),
	datad => VCC,
	cin => \d|Add0~49\,
	combout => \d|Add0~50_combout\,
	cout => \d|Add0~51\);

-- Location: FF_X76_Y65_N19
\d|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(25));

-- Location: LCCOMB_X76_Y65_N20
\d|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~52_combout\ = (\d|s_counter\(26) & (\d|Add0~51\ $ (GND))) # (!\d|s_counter\(26) & (!\d|Add0~51\ & VCC))
-- \d|Add0~53\ = CARRY((\d|s_counter\(26) & !\d|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(26),
	datad => VCC,
	cin => \d|Add0~51\,
	combout => \d|Add0~52_combout\,
	cout => \d|Add0~53\);

-- Location: FF_X76_Y65_N21
\d|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(26));

-- Location: LCCOMB_X76_Y65_N22
\d|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~54_combout\ = (\d|s_counter\(27) & (!\d|Add0~53\)) # (!\d|s_counter\(27) & ((\d|Add0~53\) # (GND)))
-- \d|Add0~55\ = CARRY((!\d|Add0~53\) # (!\d|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(27),
	datad => VCC,
	cin => \d|Add0~53\,
	combout => \d|Add0~54_combout\,
	cout => \d|Add0~55\);

-- Location: FF_X76_Y65_N23
\d|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(27));

-- Location: LCCOMB_X75_Y65_N8
\d|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal0~1_combout\ = (\d|s_counter\(21) & (!\d|s_counter\(25) & (!\d|s_counter\(26) & !\d|s_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(21),
	datab => \d|s_counter\(25),
	datac => \d|s_counter\(26),
	datad => \d|s_counter\(27),
	combout => \d|Equal0~1_combout\);

-- Location: LCCOMB_X76_Y65_N24
\d|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~56_combout\ = (\d|s_counter\(28) & (\d|Add0~55\ $ (GND))) # (!\d|s_counter\(28) & (!\d|Add0~55\ & VCC))
-- \d|Add0~57\ = CARRY((\d|s_counter\(28) & !\d|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(28),
	datad => VCC,
	cin => \d|Add0~55\,
	combout => \d|Add0~56_combout\,
	cout => \d|Add0~57\);

-- Location: FF_X76_Y65_N25
\d|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(28));

-- Location: LCCOMB_X76_Y65_N26
\d|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~58_combout\ = (\d|s_counter\(29) & (!\d|Add0~57\)) # (!\d|s_counter\(29) & ((\d|Add0~57\) # (GND)))
-- \d|Add0~59\ = CARRY((!\d|Add0~57\) # (!\d|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(29),
	datad => VCC,
	cin => \d|Add0~57\,
	combout => \d|Add0~58_combout\,
	cout => \d|Add0~59\);

-- Location: FF_X76_Y65_N27
\d|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(29));

-- Location: LCCOMB_X76_Y65_N28
\d|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~60_combout\ = (\d|s_counter\(30) & (\d|Add0~59\ $ (GND))) # (!\d|s_counter\(30) & (!\d|Add0~59\ & VCC))
-- \d|Add0~61\ = CARRY((\d|s_counter\(30) & !\d|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \d|s_counter\(30),
	datad => VCC,
	cin => \d|Add0~59\,
	combout => \d|Add0~60_combout\,
	cout => \d|Add0~61\);

-- Location: FF_X76_Y65_N29
\d|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(30));

-- Location: LCCOMB_X76_Y65_N30
\d|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Add0~62_combout\ = \d|s_counter\(31) $ (\d|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(31),
	cin => \d|Add0~61\,
	combout => \d|Add0~62_combout\);

-- Location: FF_X76_Y65_N31
\d|s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|s_counter\(31));

-- Location: LCCOMB_X75_Y65_N4
\d|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal0~0_combout\ = (!\d|s_counter\(31) & (!\d|s_counter\(28) & (!\d|s_counter\(29) & !\d|s_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(31),
	datab => \d|s_counter\(28),
	datac => \d|s_counter\(29),
	datad => \d|s_counter\(30),
	combout => \d|Equal0~0_combout\);

-- Location: LCCOMB_X75_Y65_N24
\d|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal0~3_combout\ = (!\d|s_counter\(9) & (\d|s_counter\(12) & (\d|s_counter\(11) & !\d|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(9),
	datab => \d|s_counter\(12),
	datac => \d|s_counter\(11),
	datad => \d|s_counter\(8),
	combout => \d|Equal0~3_combout\);

-- Location: LCCOMB_X75_Y65_N14
\d|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal0~4_combout\ = (\d|Equal0~2_combout\ & (\d|Equal0~1_combout\ & (\d|Equal0~0_combout\ & \d|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|Equal0~2_combout\,
	datab => \d|Equal0~1_combout\,
	datac => \d|Equal0~0_combout\,
	datad => \d|Equal0~3_combout\,
	combout => \d|Equal0~4_combout\);

-- Location: LCCOMB_X77_Y65_N18
\d|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal0~7_combout\ = (\d|Equal0~5_combout\ & (\d|Equal0~6_combout\ & \d|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d|Equal0~5_combout\,
	datac => \d|Equal0~6_combout\,
	datad => \d|Equal0~4_combout\,
	combout => \d|Equal0~7_combout\);

-- Location: LCCOMB_X77_Y65_N4
\d|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal0~8_combout\ = (\d|s_counter\(17) & (!\d|s_counter\(24) & (!\d|s_counter\(22) & \d|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(17),
	datab => \d|s_counter\(24),
	datac => \d|s_counter\(22),
	datad => \d|s_counter\(23),
	combout => \d|Equal0~8_combout\);

-- Location: LCCOMB_X77_Y65_N26
\d|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal0~9_combout\ = (\d|s_counter\(15) & (!\d|s_counter\(14) & (\d|s_counter\(10) & !\d|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(15),
	datab => \d|s_counter\(14),
	datac => \d|s_counter\(10),
	datad => \d|s_counter\(16),
	combout => \d|Equal0~9_combout\);

-- Location: LCCOMB_X77_Y65_N28
\d|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|Equal0~10_combout\ = (!\d|s_counter\(5) & (\d|Equal0~8_combout\ & \d|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|s_counter\(5),
	datab => \d|Equal0~8_combout\,
	datac => \d|Equal0~9_combout\,
	combout => \d|Equal0~10_combout\);

-- Location: LCCOMB_X77_Y65_N12
\d|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|clkOut~0_combout\ = (\d|Equal0~7_combout\ & ((\d|Equal0~10_combout\) # ((\d|clkOut~q\ & !\d|Equal1~2_combout\)))) # (!\d|Equal0~7_combout\ & (((\d|clkOut~q\ & !\d|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d|Equal0~7_combout\,
	datab => \d|Equal0~10_combout\,
	datac => \d|clkOut~q\,
	datad => \d|Equal1~2_combout\,
	combout => \d|clkOut~0_combout\);

-- Location: FF_X77_Y65_N13
\d|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \d|clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d|clkOut~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


