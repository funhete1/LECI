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

-- DATE "03/06/2023 19:51:13"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALUDemo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(10 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR3 : OUT std_logic;
	LEDR2 : OUT std_logic;
	LEDR1 : OUT std_logic;
	LEDR0 : OUT std_logic;
	LEDR11 : OUT std_logic;
	LEDR10 : OUT std_logic;
	LEDR9 : OUT std_logic;
	LEDR8 : OUT std_logic;
	LEDR7 : OUT std_logic_vector(7 DOWNTO 4)
	);
END ALUDemo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR3	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR2	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR1	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR0	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR11	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR10	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR9	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR8	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR7[7]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR7[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR7[5]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR7[4]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR3 : std_logic;
SIGNAL ww_LEDR2 : std_logic;
SIGNAL ww_LEDR1 : std_logic;
SIGNAL ww_LEDR0 : std_logic;
SIGNAL ww_LEDR11 : std_logic;
SIGNAL ww_LEDR10 : std_logic;
SIGNAL ww_LEDR9 : std_logic;
SIGNAL ww_LEDR8 : std_logic;
SIGNAL ww_LEDR7 : std_logic_vector(7 DOWNTO 4);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \LEDR3~output_o\ : std_logic;
SIGNAL \LEDR2~output_o\ : std_logic;
SIGNAL \LEDR1~output_o\ : std_logic;
SIGNAL \LEDR0~output_o\ : std_logic;
SIGNAL \LEDR11~output_o\ : std_logic;
SIGNAL \LEDR10~output_o\ : std_logic;
SIGNAL \LEDR9~output_o\ : std_logic;
SIGNAL \LEDR8~output_o\ : std_logic;
SIGNAL \LEDR7[7]~output_o\ : std_logic;
SIGNAL \LEDR7[6]~output_o\ : std_logic;
SIGNAL \LEDR7[5]~output_o\ : std_logic;
SIGNAL \LEDR7[4]~output_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \ALU|Mux0~2_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \ALU|Mux0~3_combout\ : std_logic;
SIGNAL \ALU|Add0~8_combout\ : std_logic;
SIGNAL \ALU|Add0~9_combout\ : std_logic;
SIGNAL \ALU|Add0~0_combout\ : std_logic;
SIGNAL \ALU|Add0~1_combout\ : std_logic;
SIGNAL \ALU|Add0~3_cout\ : std_logic;
SIGNAL \ALU|Add0~5\ : std_logic;
SIGNAL \ALU|Add0~7\ : std_logic;
SIGNAL \ALU|Add0~11\ : std_logic;
SIGNAL \ALU|Add0~12_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \ALU|Mux3~0_combout\ : std_logic;
SIGNAL \ALU|Mux3~1_combout\ : std_logic;
SIGNAL \ALU|Mux0~0_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\ : std_logic;
SIGNAL \ALU|Mux0~1_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \ALU|Mux2~2_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\ : std_logic;
SIGNAL \ALU|Mux2~3_combout\ : std_logic;
SIGNAL \ALU|Add0~6_combout\ : std_logic;
SIGNAL \ALU|Mux2~0_combout\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \ALU|Mux2~1_combout\ : std_logic;
SIGNAL \ALU|Add0~4_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \ALU|Mux3~5_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \ALU|Mux3~2_combout\ : std_logic;
SIGNAL \ALU|Mux3~3_combout\ : std_logic;
SIGNAL \ALU|Mux3~4_combout\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \ALU|Mux3~6_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|StageOut[14]~8_combout\ : std_logic;
SIGNAL \ALU|Mux1~2_combout\ : std_logic;
SIGNAL \ALU|Mux1~3_combout\ : std_logic;
SIGNAL \ALU|Add0~10_combout\ : std_logic;
SIGNAL \ALU|Mux1~0_combout\ : std_logic;
SIGNAL \ALU|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \ALU|Mux1~1_combout\ : std_logic;
SIGNAL \Bin1|decOut_n~0_combout\ : std_logic;
SIGNAL \Bin1|decOut_n~1_combout\ : std_logic;
SIGNAL \Bin1|decOut_n~2_combout\ : std_logic;
SIGNAL \Bin1|decOut_n~3_combout\ : std_logic;
SIGNAL \Bin1|decOut_n~4_combout\ : std_logic;
SIGNAL \Bin1|decOut_n~5_combout\ : std_logic;
SIGNAL \Bin1|decOut_n~6_combout\ : std_logic;
SIGNAL \inst|bcd[4]~0_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~8_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~19_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~9_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~10_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~11_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~20_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~12_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~21_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~14_combout\ : std_logic;
SIGNAL \ALU|m_hi[2]~7_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~22_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~13_combout\ : std_logic;
SIGNAL \ALU|m_hi[1]~6_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~15_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~16_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~17_combout\ : std_logic;
SIGNAL \ALU|m_hi[0]~8_combout\ : std_logic;
SIGNAL \Bin3|decOut_n~18_combout\ : std_logic;
SIGNAL \inst|bcd[2]~1_combout\ : std_logic;
SIGNAL \inst|bcd[1]~2_combout\ : std_logic;
SIGNAL \ALU|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALU|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALU|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|bcd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALU|Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALU|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALU|ALT_INV_m_hi[0]~8_combout\ : std_logic;
SIGNAL \Bin3|ALT_INV_decOut_n~18_combout\ : std_logic;
SIGNAL \Bin1|ALT_INV_decOut_n~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
LEDR3 <= ww_LEDR3;
LEDR2 <= ww_LEDR2;
LEDR1 <= ww_LEDR1;
LEDR0 <= ww_LEDR0;
LEDR11 <= ww_LEDR11;
LEDR10 <= ww_LEDR10;
LEDR9 <= ww_LEDR9;
LEDR8 <= ww_LEDR8;
LEDR7 <= ww_LEDR7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALU|ALT_INV_m_hi[0]~8_combout\ <= NOT \ALU|m_hi[0]~8_combout\;
\Bin3|ALT_INV_decOut_n~18_combout\ <= NOT \Bin3|decOut_n~18_combout\;
\Bin1|ALT_INV_decOut_n~0_combout\ <= NOT \Bin1|decOut_n~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin1|ALT_INV_decOut_n~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin1|decOut_n~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin1|decOut_n~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin1|decOut_n~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin1|decOut_n~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin1|decOut_n~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin1|decOut_n~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bcd[4]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bcd[4]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bcd[4]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bcd[4]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin3|decOut_n~19_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin3|decOut_n~10_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin3|decOut_n~20_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin3|decOut_n~21_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin3|decOut_n~15_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin3|decOut_n~17_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin3|ALT_INV_decOut_n~18_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\LEDR3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bcd\(3),
	devoe => ww_devoe,
	o => \LEDR3~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\LEDR2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bcd[2]~1_combout\,
	devoe => ww_devoe,
	o => \LEDR2~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\LEDR1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bcd[1]~2_combout\,
	devoe => ww_devoe,
	o => \LEDR1~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\LEDR0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux3~6_combout\,
	devoe => ww_devoe,
	o => \LEDR0~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\LEDR11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bin3|decOut_n~22_combout\,
	devoe => ww_devoe,
	o => \LEDR11~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\LEDR10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|m_hi[2]~7_combout\,
	devoe => ww_devoe,
	o => \LEDR10~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\LEDR9~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|m_hi[1]~6_combout\,
	devoe => ww_devoe,
	o => \LEDR9~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\LEDR8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|ALT_INV_m_hi[0]~8_combout\,
	devoe => ww_devoe,
	o => \LEDR8~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\LEDR7[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR7[7]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\LEDR7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR7[6]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\LEDR7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR7[5]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\LEDR7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bcd[4]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR7[4]~output_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

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

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X113_Y15_N20
\ALU|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux0~2_combout\ = (\SW[7]~input_o\ & ((\SW[3]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[7]~input_o\ & ((\SW[9]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU|Mux0~2_combout\);

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

-- Location: LCCOMB_X113_Y16_N16
\ALU|Mod0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (\SW[5]~input_o\ & (!\SW[2]~input_o\ & \SW[4]~input_o\)) # (!\SW[5]~input_o\ & ((!\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ALU|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\);

-- Location: LCCOMB_X113_Y16_N10
\ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\SW[3]~input_o\ & ((\ALU|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\) # ((\SW[6]~input_o\) # (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ALU|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X113_Y16_N20
\ALU|Mod0|auto_generated|divider|divider|selnose[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\SW[6]~input_o\) # ((\SW[7]~input_o\) # ((!\SW[3]~input_o\ & \SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X113_Y16_N30
\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ = (\SW[2]~input_o\ & ((\ALU|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \ALU|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datad => \SW[4]~input_o\,
	combout => \ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\);

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

-- Location: LCCOMB_X113_Y14_N6
\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[1]~input_o\ & ((GND) # (!\SW[4]~input_o\))) # (!\SW[1]~input_o\ & (\SW[4]~input_o\ $ (GND)))
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[1]~input_o\) # (!\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	combout => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X113_Y14_N8
\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\SW[5]~input_o\ & ((\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\SW[5]~input_o\ & ((\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- (\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\SW[5]~input_o\ & ((!\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # 
-- (!\SW[5]~input_o\ & (!\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & !\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X113_Y14_N10
\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\SW[6]~input_o\ $ (\ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\SW[6]~input_o\ & (\ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & !\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\SW[6]~input_o\ & 
-- ((\ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (!\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X113_Y14_N12
\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X113_Y14_N26
\ALU|Mod0|auto_generated|divider|divider|StageOut[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ = (\SW[7]~input_o\ & (((\ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)))) # (!\SW[7]~input_o\ & 
-- ((\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\))) # (!\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \SW[7]~input_o\,
	datac => \ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ALU|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\);

-- Location: LCCOMB_X113_Y14_N4
\ALU|Mod0|auto_generated|divider|divider|StageOut[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\ = (\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # 
-- (!\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[7]~input_o\ & (\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\SW[7]~input_o\ & 
-- ((\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datac => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \SW[7]~input_o\,
	combout => \ALU|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\);

-- Location: LCCOMB_X113_Y14_N0
\ALU|Mod0|auto_generated|divider|divider|StageOut[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ = (\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\SW[1]~input_o\)))) # (!\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[7]~input_o\ & (\SW[1]~input_o\)) # (!\SW[7]~input_o\ & ((\ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \SW[7]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \ALU|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	combout => \ALU|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\);

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

-- Location: LCCOMB_X114_Y14_N18
\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[0]~input_o\ & ((GND) # (!\SW[4]~input_o\))) # (!\SW[0]~input_o\ & (\SW[4]~input_o\ $ (GND)))
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\SW[0]~input_o\) # (!\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	combout => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X114_Y14_N20
\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\ALU|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\SW[5]~input_o\ & (!\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\SW[5]~input_o\ & (\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\ALU|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\SW[5]~input_o\ & 
-- ((\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # (!\SW[5]~input_o\ & (!\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\ALU|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ & (\SW[5]~input_o\ & !\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\ALU|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\ & ((\SW[5]~input_o\) # (!\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X114_Y14_N22
\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\SW[6]~input_o\ $ (\ALU|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\ $ (\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\SW[6]~input_o\ & (\ALU|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\ & !\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # (!\SW[6]~input_o\ & 
-- ((\ALU|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\) # (!\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \ALU|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\,
	datad => VCC,
	cin => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X114_Y14_N24
\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\ALU|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & ((\SW[7]~input_o\ & (!\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\SW[7]~input_o\ & (\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\ALU|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & ((\SW[7]~input_o\ & 
-- ((\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # (!\SW[7]~input_o\ & (!\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\ALU|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & (\SW[7]~input_o\ & !\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\ALU|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & ((\SW[7]~input_o\) # (!\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X114_Y14_N26
\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X114_Y14_N2
\ALU|Mod0|auto_generated|divider|divider|StageOut[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\)) # 
-- (!\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\,
	datac => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \ALU|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X113_Y15_N6
\ALU|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux0~3_combout\ = (\ALU|Mux0~2_combout\ & ((\SW[8]~input_o\) # ((\ALU|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \ALU|Mux0~2_combout\,
	datac => \ALU|Mod0|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datad => \SW[9]~input_o\,
	combout => \ALU|Mux0~3_combout\);

-- Location: LCCOMB_X113_Y15_N28
\ALU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~8_combout\ = \SW[8]~input_o\ $ (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[7]~input_o\,
	combout => \ALU|Add0~8_combout\);

-- Location: LCCOMB_X113_Y15_N30
\ALU|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~9_combout\ = \SW[8]~input_o\ $ (\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \ALU|Add0~9_combout\);

-- Location: LCCOMB_X114_Y15_N18
\ALU|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~0_combout\ = \SW[8]~input_o\ $ (\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[8]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \ALU|Add0~0_combout\);

-- Location: LCCOMB_X114_Y15_N20
\ALU|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~1_combout\ = \SW[4]~input_o\ $ (\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU|Add0~1_combout\);

-- Location: LCCOMB_X113_Y15_N10
\ALU|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~3_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => VCC,
	cout => \ALU|Add0~3_cout\);

-- Location: LCCOMB_X113_Y15_N12
\ALU|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~4_combout\ = (\ALU|Add0~1_combout\ & ((\SW[0]~input_o\ & (\ALU|Add0~3_cout\ & VCC)) # (!\SW[0]~input_o\ & (!\ALU|Add0~3_cout\)))) # (!\ALU|Add0~1_combout\ & ((\SW[0]~input_o\ & (!\ALU|Add0~3_cout\)) # (!\SW[0]~input_o\ & ((\ALU|Add0~3_cout\) # 
-- (GND)))))
-- \ALU|Add0~5\ = CARRY((\ALU|Add0~1_combout\ & (!\SW[0]~input_o\ & !\ALU|Add0~3_cout\)) # (!\ALU|Add0~1_combout\ & ((!\ALU|Add0~3_cout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~1_combout\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cin => \ALU|Add0~3_cout\,
	combout => \ALU|Add0~4_combout\,
	cout => \ALU|Add0~5\);

-- Location: LCCOMB_X113_Y15_N14
\ALU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~6_combout\ = ((\SW[1]~input_o\ $ (\ALU|Add0~0_combout\ $ (!\ALU|Add0~5\)))) # (GND)
-- \ALU|Add0~7\ = CARRY((\SW[1]~input_o\ & ((\ALU|Add0~0_combout\) # (!\ALU|Add0~5\))) # (!\SW[1]~input_o\ & (\ALU|Add0~0_combout\ & !\ALU|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \ALU|Add0~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~5\,
	combout => \ALU|Add0~6_combout\,
	cout => \ALU|Add0~7\);

-- Location: LCCOMB_X113_Y15_N16
\ALU|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~10_combout\ = (\ALU|Add0~9_combout\ & ((\SW[2]~input_o\ & (\ALU|Add0~7\ & VCC)) # (!\SW[2]~input_o\ & (!\ALU|Add0~7\)))) # (!\ALU|Add0~9_combout\ & ((\SW[2]~input_o\ & (!\ALU|Add0~7\)) # (!\SW[2]~input_o\ & ((\ALU|Add0~7\) # (GND)))))
-- \ALU|Add0~11\ = CARRY((\ALU|Add0~9_combout\ & (!\SW[2]~input_o\ & !\ALU|Add0~7\)) # (!\ALU|Add0~9_combout\ & ((!\ALU|Add0~7\) # (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~9_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \ALU|Add0~7\,
	combout => \ALU|Add0~10_combout\,
	cout => \ALU|Add0~11\);

-- Location: LCCOMB_X113_Y15_N18
\ALU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~12_combout\ = \SW[3]~input_o\ $ (\ALU|Add0~11\ $ (!\ALU|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => \ALU|Add0~8_combout\,
	cin => \ALU|Add0~11\,
	combout => \ALU|Add0~12_combout\);

-- Location: LCCOMB_X113_Y16_N22
\ALU|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le3a\(3) = (\SW[4]~input_o\ & (\SW[3]~input_o\ $ (((\SW[5]~input_o\))))) # (!\SW[4]~input_o\ & (((!\SW[2]~input_o\ & \SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ALU|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X113_Y16_N8
\ALU|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le4a\(5) = \SW[7]~input_o\ $ (((\SW[5]~input_o\ & \SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X113_Y16_N0
\ALU|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le3a\(2) = (\SW[4]~input_o\ & ((\SW[2]~input_o\ $ (\SW[5]~input_o\)))) # (!\SW[4]~input_o\ & (!\SW[1]~input_o\ & ((\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ALU|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X114_Y16_N2
\ALU|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_1~0_combout\ = (\ALU|Mult0|auto_generated|le4a\(5) & (\ALU|Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\ALU|Mult0|auto_generated|le4a\(5) & (\ALU|Mult0|auto_generated|le3a\(2) & VCC))
-- \ALU|Mult0|auto_generated|op_1~1\ = CARRY((\ALU|Mult0|auto_generated|le4a\(5) & \ALU|Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|le4a\(5),
	datab => \ALU|Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \ALU|Mult0|auto_generated|op_1~0_combout\,
	cout => \ALU|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X114_Y16_N4
\ALU|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_1~2_combout\ = (\ALU|Mult0|auto_generated|le3a\(3) & (!\ALU|Mult0|auto_generated|op_1~1\)) # (!\ALU|Mult0|auto_generated|le3a\(3) & ((\ALU|Mult0|auto_generated|op_1~1\) # (GND)))
-- \ALU|Mult0|auto_generated|op_1~3\ = CARRY((!\ALU|Mult0|auto_generated|op_1~1\) # (!\ALU|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \ALU|Mult0|auto_generated|op_1~1\,
	combout => \ALU|Mult0|auto_generated|op_1~2_combout\,
	cout => \ALU|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X113_Y16_N26
\ALU|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|cs2a[1]~0_combout\ = \SW[5]~input_o\ $ (\SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \ALU|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X114_Y16_N0
\ALU|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le4a\(1) = (\ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\SW[1]~input_o\ $ (\ALU|Mult0|auto_generated|le4a\(5))))) # (!\ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[0]~input_o\ & 
-- ((\ALU|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \ALU|Mult0|auto_generated|le4a\(5),
	combout => \ALU|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X114_Y15_N30
\ALU|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le4a\(0) = \SW[7]~input_o\ $ (((\SW[5]~input_o\ & ((\SW[0]~input_o\) # (\SW[6]~input_o\))) # (!\SW[5]~input_o\ & (\SW[0]~input_o\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \ALU|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X114_Y15_N10
\ALU|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le3a\(1) = (\SW[4]~input_o\ & (\SW[5]~input_o\ $ (((\SW[1]~input_o\))))) # (!\SW[4]~input_o\ & (\SW[5]~input_o\ & (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \ALU|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X114_Y15_N12
\ALU|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le3a\(0) = \SW[5]~input_o\ $ (((\SW[4]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \ALU|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X114_Y16_N16
\ALU|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_3~0_combout\ = (\SW[5]~input_o\ & (\ALU|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\SW[5]~input_o\ & (\ALU|Mult0|auto_generated|le3a\(0) & VCC))
-- \ALU|Mult0|auto_generated|op_3~1\ = CARRY((\SW[5]~input_o\ & \ALU|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ALU|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \ALU|Mult0|auto_generated|op_3~0_combout\,
	cout => \ALU|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X114_Y16_N18
\ALU|Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_3~2_combout\ = (\ALU|Mult0|auto_generated|le3a\(1) & (!\ALU|Mult0|auto_generated|op_3~1\)) # (!\ALU|Mult0|auto_generated|le3a\(1) & ((\ALU|Mult0|auto_generated|op_3~1\) # (GND)))
-- \ALU|Mult0|auto_generated|op_3~3\ = CARRY((!\ALU|Mult0|auto_generated|op_3~1\) # (!\ALU|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \ALU|Mult0|auto_generated|op_3~1\,
	combout => \ALU|Mult0|auto_generated|op_3~2_combout\,
	cout => \ALU|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X114_Y16_N20
\ALU|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_3~4_combout\ = ((\ALU|Mult0|auto_generated|le4a\(0) $ (\ALU|Mult0|auto_generated|op_1~0_combout\ $ (!\ALU|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \ALU|Mult0|auto_generated|op_3~5\ = CARRY((\ALU|Mult0|auto_generated|le4a\(0) & ((\ALU|Mult0|auto_generated|op_1~0_combout\) # (!\ALU|Mult0|auto_generated|op_3~3\))) # (!\ALU|Mult0|auto_generated|le4a\(0) & (\ALU|Mult0|auto_generated|op_1~0_combout\ & 
-- !\ALU|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|le4a\(0),
	datab => \ALU|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \ALU|Mult0|auto_generated|op_3~3\,
	combout => \ALU|Mult0|auto_generated|op_3~4_combout\,
	cout => \ALU|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X114_Y16_N22
\ALU|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_3~6_combout\ = (\ALU|Mult0|auto_generated|op_1~2_combout\ & ((\ALU|Mult0|auto_generated|le4a\(1) & (\ALU|Mult0|auto_generated|op_3~5\ & VCC)) # (!\ALU|Mult0|auto_generated|le4a\(1) & (!\ALU|Mult0|auto_generated|op_3~5\)))) # 
-- (!\ALU|Mult0|auto_generated|op_1~2_combout\ & ((\ALU|Mult0|auto_generated|le4a\(1) & (!\ALU|Mult0|auto_generated|op_3~5\)) # (!\ALU|Mult0|auto_generated|le4a\(1) & ((\ALU|Mult0|auto_generated|op_3~5\) # (GND)))))
-- \ALU|Mult0|auto_generated|op_3~7\ = CARRY((\ALU|Mult0|auto_generated|op_1~2_combout\ & (!\ALU|Mult0|auto_generated|le4a\(1) & !\ALU|Mult0|auto_generated|op_3~5\)) # (!\ALU|Mult0|auto_generated|op_1~2_combout\ & ((!\ALU|Mult0|auto_generated|op_3~5\) # 
-- (!\ALU|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|op_1~2_combout\,
	datab => \ALU|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \ALU|Mult0|auto_generated|op_3~5\,
	combout => \ALU|Mult0|auto_generated|op_3~6_combout\,
	cout => \ALU|Mult0|auto_generated|op_3~7\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X114_Y17_N0
\ALU|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~0_combout\ = (!\SW[10]~input_o\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	combout => \ALU|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y15_N24
\ALU|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~1_combout\ = (\SW[10]~input_o\) # ((\SW[9]~input_o\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU|Mux3~1_combout\);

-- Location: LCCOMB_X113_Y15_N8
\ALU|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux0~0_combout\ = (\ALU|Mux3~0_combout\ & (((\ALU|Mux3~1_combout\) # (!\ALU|Mult0|auto_generated|op_3~6_combout\)))) # (!\ALU|Mux3~0_combout\ & (!\ALU|Add0~12_combout\ & ((!\ALU|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~12_combout\,
	datab => \ALU|Mult0|auto_generated|op_3~6_combout\,
	datac => \ALU|Mux3~0_combout\,
	datad => \ALU|Mux3~1_combout\,
	combout => \ALU|Mux0~0_combout\);

-- Location: LCCOMB_X113_Y16_N2
\ALU|Mod0|auto_generated|divider|divider|selnose[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\ = (!\SW[6]~input_o\ & !\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\);

-- Location: LCCOMB_X113_Y16_N4
\ALU|Mod0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|selnose\(0) = ((\SW[5]~input_o\) # ((!\SW[3]~input_o\ & \SW[4]~input_o\))) # (!\ALU|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ALU|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ALU|Mod0|auto_generated|divider|divider|selnose\(0));

-- Location: LCCOMB_X113_Y15_N4
\ALU|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux0~1_combout\ = (\ALU|Mux0~0_combout\ & (((\ALU|Mod0|auto_generated|divider|divider|selnose\(0)) # (!\ALU|Mux3~1_combout\)))) # (!\ALU|Mux0~0_combout\ & (!\ALU|Mux0~3_combout\ & ((\ALU|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~3_combout\,
	datab => \ALU|Mux0~0_combout\,
	datac => \ALU|Mod0|auto_generated|divider|divider|selnose\(0),
	datad => \ALU|Mux3~1_combout\,
	combout => \ALU|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y15_N26
\ALU|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux2~2_combout\ = (\SW[5]~input_o\ & ((\SW[1]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[9]~input_o\ & (\SW[1]~input_o\)) # (!\SW[9]~input_o\ & ((!\SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU|Mux2~2_combout\);

-- Location: LCCOMB_X114_Y14_N0
\ALU|Mod0|auto_generated|divider|divider|StageOut[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\ = (\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\)) # 
-- (!\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mod0|auto_generated|divider|divider|StageOut[8]~3_combout\,
	datac => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	combout => \ALU|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\);

-- Location: LCCOMB_X114_Y15_N4
\ALU|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux2~3_combout\ = (\ALU|Mux2~2_combout\ & ((\ALU|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\) # ((\SW[9]~input_o\) # (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux2~2_combout\,
	datab => \ALU|Mod0|auto_generated|divider|divider|StageOut[13]~6_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU|Mux2~3_combout\);

-- Location: LCCOMB_X113_Y15_N24
\ALU|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux2~0_combout\ = (\ALU|Mux3~0_combout\ & (((\ALU|Mux3~1_combout\)))) # (!\ALU|Mux3~0_combout\ & ((\ALU|Mux3~1_combout\ & (\ALU|Mux2~3_combout\)) # (!\ALU|Mux3~1_combout\ & ((\ALU|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux2~3_combout\,
	datab => \ALU|Add0~6_combout\,
	datac => \ALU|Mux3~0_combout\,
	datad => \ALU|Mux3~1_combout\,
	combout => \ALU|Mux2~0_combout\);

-- Location: LCCOMB_X113_Y14_N16
\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[1]~input_o\ & ((GND) # (!\SW[4]~input_o\))) # (!\SW[1]~input_o\ & (\SW[4]~input_o\ $ (GND)))
-- \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[1]~input_o\) # (!\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	combout => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X113_Y14_N18
\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\SW[5]~input_o\ & ((\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\SW[5]~input_o\ & ((\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- (\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\SW[5]~input_o\ & ((!\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # 
-- (!\SW[5]~input_o\ & (!\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & !\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X113_Y14_N20
\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\SW[6]~input_o\ $ (\ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\SW[6]~input_o\ & (\ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & !\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\SW[6]~input_o\ & 
-- ((\ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\) # (!\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X113_Y14_N22
\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X113_Y14_N30
\ALU|Div0|auto_generated|divider|divider|selnose[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Div0|auto_generated|divider|divider|selnose\(10) = (\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[7]~input_o\,
	combout => \ALU|Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X113_Y15_N2
\ALU|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux2~1_combout\ = (\ALU|Mux2~0_combout\ & (((!\ALU|Div0|auto_generated|divider|divider|selnose\(10)) # (!\ALU|Mux3~0_combout\)))) # (!\ALU|Mux2~0_combout\ & (\ALU|Mult0|auto_generated|op_3~2_combout\ & (\ALU|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|op_3~2_combout\,
	datab => \ALU|Mux2~0_combout\,
	datac => \ALU|Mux3~0_combout\,
	datad => \ALU|Div0|auto_generated|divider|divider|selnose\(10),
	combout => \ALU|Mux2~1_combout\);

-- Location: LCCOMB_X114_Y15_N6
\ALU|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~5_combout\ = (\ALU|Mux3~1_combout\ & (((\ALU|Mux3~0_combout\)))) # (!\ALU|Mux3~1_combout\ & ((\ALU|Mux3~0_combout\ & ((\ALU|Mult0|auto_generated|op_3~0_combout\))) # (!\ALU|Mux3~0_combout\ & (\ALU|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~4_combout\,
	datab => \ALU|Mux3~1_combout\,
	datac => \ALU|Mult0|auto_generated|op_3~0_combout\,
	datad => \ALU|Mux3~0_combout\,
	combout => \ALU|Mux3~5_combout\);

-- Location: LCCOMB_X114_Y15_N16
\ALU|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~2_combout\ = (\SW[8]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[8]~input_o\ & ((\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\SW[0]~input_o\))) # 
-- (!\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ALU|Mux3~2_combout\);

-- Location: LCCOMB_X114_Y15_N2
\ALU|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~3_combout\ = (\SW[9]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & (\ALU|Mux3~2_combout\ & ((\SW[4]~input_o\) # (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \ALU|Mux3~2_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU|Mux3~3_combout\);

-- Location: LCCOMB_X114_Y15_N28
\ALU|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~4_combout\ = (\SW[9]~input_o\ & ((\SW[0]~input_o\ & ((!\ALU|Mux3~3_combout\) # (!\SW[4]~input_o\))) # (!\SW[0]~input_o\ & (\SW[4]~input_o\)))) # (!\SW[9]~input_o\ & (((\ALU|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \ALU|Mux3~3_combout\,
	combout => \ALU|Mux3~4_combout\);

-- Location: LCCOMB_X113_Y14_N24
\ALU|Div0|auto_generated|divider|divider|StageOut[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)))) # 
-- (!\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[7]~input_o\ & ((\ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\))) # (!\SW[7]~input_o\ & 
-- (\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \ALU|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datac => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \SW[7]~input_o\,
	combout => \ALU|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

-- Location: LCCOMB_X113_Y14_N2
\ALU|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)))) # 
-- (!\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[7]~input_o\ & ((\ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # (!\SW[7]~input_o\ & 
-- (\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \ALU|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => \SW[7]~input_o\,
	combout => \ALU|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X113_Y14_N28
\ALU|Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\SW[1]~input_o\)))) # (!\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[7]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[7]~input_o\ & (\ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \ALU|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X114_Y14_N4
\ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\SW[0]~input_o\) # (!\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cout => \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X114_Y14_N6
\ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\SW[5]~input_o\ & ((!\ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # (!\ALU|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\))) # 
-- (!\SW[5]~input_o\ & (!\ALU|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & !\ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ALU|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datad => VCC,
	cin => \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X114_Y14_N8
\ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\SW[6]~input_o\ & (\ALU|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & !\ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # 
-- (!\SW[6]~input_o\ & ((\ALU|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\) # (!\ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \ALU|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datad => VCC,
	cin => \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X114_Y14_N10
\ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\ALU|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & (\SW[7]~input_o\ & !\ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)) # 
-- (!\ALU|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & ((\SW[7]~input_o\) # (!\ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X114_Y14_N12
\ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X114_Y15_N8
\ALU|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~6_combout\ = (\ALU|Mux3~5_combout\ & (((!\ALU|Mux3~1_combout\) # (!\ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)))) # (!\ALU|Mux3~5_combout\ & (\ALU|Mux3~4_combout\ & ((\ALU|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~5_combout\,
	datab => \ALU|Mux3~4_combout\,
	datac => \ALU|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \ALU|Mux3~1_combout\,
	combout => \ALU|Mux3~6_combout\);

-- Location: LCCOMB_X114_Y15_N22
\ALU|Mod0|auto_generated|divider|divider|StageOut[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|StageOut[14]~8_combout\ = (\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\ALU|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\)) # 
-- (!\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\,
	datac => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \ALU|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ALU|Mod0|auto_generated|divider|divider|StageOut[14]~8_combout\);

-- Location: LCCOMB_X113_Y15_N0
\ALU|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux1~2_combout\ = (\SW[2]~input_o\ & ((\SW[6]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[9]~input_o\ & ((\SW[6]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \ALU|Mux1~2_combout\);

-- Location: LCCOMB_X113_Y15_N26
\ALU|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux1~3_combout\ = (\ALU|Mux1~2_combout\ & ((\SW[8]~input_o\) # ((\ALU|Mod0|auto_generated|divider|divider|StageOut[14]~8_combout\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \ALU|Mod0|auto_generated|divider|divider|StageOut[14]~8_combout\,
	datac => \SW[9]~input_o\,
	datad => \ALU|Mux1~2_combout\,
	combout => \ALU|Mux1~3_combout\);

-- Location: LCCOMB_X113_Y15_N22
\ALU|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux1~0_combout\ = (\ALU|Mux3~0_combout\ & (((\ALU|Mux3~1_combout\)))) # (!\ALU|Mux3~0_combout\ & ((\ALU|Mux3~1_combout\ & (\ALU|Mux1~3_combout\)) # (!\ALU|Mux3~1_combout\ & ((\ALU|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux1~3_combout\,
	datab => \ALU|Add0~10_combout\,
	datac => \ALU|Mux3~0_combout\,
	datad => \ALU|Mux3~1_combout\,
	combout => \ALU|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y17_N24
\ALU|Mod0|auto_generated|divider|divider|selnose[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\ = (\ALU|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # ((!\SW[2]~input_o\ & \SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \ALU|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datad => \SW[4]~input_o\,
	combout => \ALU|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\);

-- Location: LCCOMB_X113_Y17_N2
\ALU|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux1~1_combout\ = (\ALU|Mux1~0_combout\ & (((!\ALU|Mux3~0_combout\)) # (!\ALU|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\))) # (!\ALU|Mux1~0_combout\ & (((\ALU|Mux3~0_combout\ & \ALU|Mult0|auto_generated|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux1~0_combout\,
	datab => \ALU|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\,
	datac => \ALU|Mux3~0_combout\,
	datad => \ALU|Mult0|auto_generated|op_3~4_combout\,
	combout => \ALU|Mux1~1_combout\);

-- Location: LCCOMB_X114_Y17_N10
\Bin1|decOut_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin1|decOut_n~0_combout\ = (\ALU|Mux1~1_combout\ & (((!\ALU|Mux3~6_combout\) # (!\ALU|Mux2~1_combout\)) # (!\ALU|Mux0~1_combout\))) # (!\ALU|Mux1~1_combout\ & (\ALU|Mux0~1_combout\ $ ((!\ALU|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~1_combout\,
	datab => \ALU|Mux2~1_combout\,
	datac => \ALU|Mux3~6_combout\,
	datad => \ALU|Mux1~1_combout\,
	combout => \Bin1|decOut_n~0_combout\);

-- Location: LCCOMB_X114_Y17_N12
\Bin1|decOut_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin1|decOut_n~1_combout\ = (\ALU|Mux0~1_combout\ & ((\ALU|Mux2~1_combout\ & ((\ALU|Mux3~6_combout\) # (!\ALU|Mux1~1_combout\))) # (!\ALU|Mux2~1_combout\ & (\ALU|Mux3~6_combout\ & !\ALU|Mux1~1_combout\)))) # (!\ALU|Mux0~1_combout\ & ((\ALU|Mux2~1_combout\ 
-- & (\ALU|Mux3~6_combout\ & !\ALU|Mux1~1_combout\)) # (!\ALU|Mux2~1_combout\ & ((\ALU|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~1_combout\,
	datab => \ALU|Mux2~1_combout\,
	datac => \ALU|Mux3~6_combout\,
	datad => \ALU|Mux1~1_combout\,
	combout => \Bin1|decOut_n~1_combout\);

-- Location: LCCOMB_X114_Y17_N30
\Bin1|decOut_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin1|decOut_n~2_combout\ = (\ALU|Mux3~6_combout\) # ((\ALU|Mux1~1_combout\ & (\ALU|Mux0~1_combout\ $ (\ALU|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~1_combout\,
	datab => \ALU|Mux2~1_combout\,
	datac => \ALU|Mux3~6_combout\,
	datad => \ALU|Mux1~1_combout\,
	combout => \Bin1|decOut_n~2_combout\);

-- Location: LCCOMB_X114_Y17_N8
\Bin1|decOut_n~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin1|decOut_n~3_combout\ = (\ALU|Mux0~1_combout\ & ((\ALU|Mux2~1_combout\ & (\ALU|Mux3~6_combout\ & \ALU|Mux1~1_combout\)) # (!\ALU|Mux2~1_combout\ & (\ALU|Mux3~6_combout\ $ (\ALU|Mux1~1_combout\))))) # (!\ALU|Mux0~1_combout\ & (\ALU|Mux2~1_combout\ & 
-- (\ALU|Mux3~6_combout\ $ (\ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~1_combout\,
	datab => \ALU|Mux2~1_combout\,
	datac => \ALU|Mux3~6_combout\,
	datad => \ALU|Mux1~1_combout\,
	combout => \Bin1|decOut_n~3_combout\);

-- Location: LCCOMB_X114_Y17_N18
\Bin1|decOut_n~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin1|decOut_n~4_combout\ = (!\ALU|Mux3~6_combout\ & ((\ALU|Mux0~1_combout\ & (\ALU|Mux2~1_combout\ & !\ALU|Mux1~1_combout\)) # (!\ALU|Mux0~1_combout\ & (!\ALU|Mux2~1_combout\ & \ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~1_combout\,
	datab => \ALU|Mux2~1_combout\,
	datac => \ALU|Mux3~6_combout\,
	datad => \ALU|Mux1~1_combout\,
	combout => \Bin1|decOut_n~4_combout\);

-- Location: LCCOMB_X114_Y17_N4
\Bin1|decOut_n~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin1|decOut_n~5_combout\ = (\ALU|Mux1~1_combout\ & ((\ALU|Mux0~1_combout\ & (\ALU|Mux2~1_combout\ $ (\ALU|Mux3~6_combout\))) # (!\ALU|Mux0~1_combout\ & (\ALU|Mux2~1_combout\ & \ALU|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~1_combout\,
	datab => \ALU|Mux2~1_combout\,
	datac => \ALU|Mux3~6_combout\,
	datad => \ALU|Mux1~1_combout\,
	combout => \Bin1|decOut_n~5_combout\);

-- Location: LCCOMB_X114_Y17_N6
\Bin1|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin1|decOut_n~6_combout\ = (\ALU|Mux0~1_combout\ & (!\ALU|Mux2~1_combout\ & (\ALU|Mux3~6_combout\ $ (\ALU|Mux1~1_combout\)))) # (!\ALU|Mux0~1_combout\ & (\ALU|Mux2~1_combout\ & (\ALU|Mux3~6_combout\ $ (\ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~1_combout\,
	datab => \ALU|Mux2~1_combout\,
	datac => \ALU|Mux3~6_combout\,
	datad => \ALU|Mux1~1_combout\,
	combout => \Bin1|decOut_n~6_combout\);

-- Location: LCCOMB_X114_Y17_N16
\inst|bcd[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd[4]~0_combout\ = (!\ALU|Mux0~1_combout\ & ((\ALU|Mux2~1_combout\) # (\ALU|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~1_combout\,
	datab => \ALU|Mux2~1_combout\,
	datad => \ALU|Mux1~1_combout\,
	combout => \inst|bcd[4]~0_combout\);

-- Location: LCCOMB_X113_Y16_N6
\ALU|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le5a\(3) = (\SW[3]~input_o\ & ((\SW[7]~input_o\) # ((\SW[5]~input_o\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X113_Y16_N28
\ALU|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le5a\(2) = (\SW[2]~input_o\ & ((\SW[7]~input_o\) # ((\SW[5]~input_o\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \ALU|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X113_Y16_N18
\ALU|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le4a\(4) = (\SW[3]~input_o\ & (\SW[7]~input_o\ & (\SW[5]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[3]~input_o\ & (\SW[7]~input_o\ $ (((\SW[5]~input_o\ & \SW[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X113_Y16_N14
\ALU|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le4a\(3) = (\ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\SW[3]~input_o\ $ ((\ALU|Mult0|auto_generated|le4a\(5))))) # (!\ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (((\ALU|Mult0|auto_generated|le4a\(5) & 
-- !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \ALU|Mult0|auto_generated|le4a\(5),
	datac => \ALU|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \SW[2]~input_o\,
	combout => \ALU|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X113_Y16_N24
\ALU|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le5a\(1) = (\SW[1]~input_o\ & ((\SW[7]~input_o\) # ((\SW[5]~input_o\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \ALU|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X113_Y16_N12
\ALU|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le3a\(4) = (\SW[5]~input_o\ & ((\SW[4]~input_o\) # (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \ALU|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X114_Y16_N14
\ALU|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le4a\(2) = (\ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\SW[2]~input_o\ $ (((\ALU|Mult0|auto_generated|le4a\(5)))))) # (!\ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\SW[1]~input_o\ & 
-- \ALU|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \ALU|Mult0|auto_generated|le4a\(5),
	combout => \ALU|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X114_Y16_N6
\ALU|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_1~4_combout\ = ((\ALU|Mult0|auto_generated|le3a\(4) $ (\ALU|Mult0|auto_generated|le4a\(2) $ (!\ALU|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \ALU|Mult0|auto_generated|op_1~5\ = CARRY((\ALU|Mult0|auto_generated|le3a\(4) & ((\ALU|Mult0|auto_generated|le4a\(2)) # (!\ALU|Mult0|auto_generated|op_1~3\))) # (!\ALU|Mult0|auto_generated|le3a\(4) & (\ALU|Mult0|auto_generated|le4a\(2) & 
-- !\ALU|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|le3a\(4),
	datab => \ALU|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \ALU|Mult0|auto_generated|op_1~3\,
	combout => \ALU|Mult0|auto_generated|op_1~4_combout\,
	cout => \ALU|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X114_Y16_N8
\ALU|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_1~6_combout\ = (\ALU|Mult0|auto_generated|le4a\(3) & ((\ALU|Mult0|auto_generated|le5a\(1) & (\ALU|Mult0|auto_generated|op_1~5\ & VCC)) # (!\ALU|Mult0|auto_generated|le5a\(1) & (!\ALU|Mult0|auto_generated|op_1~5\)))) # 
-- (!\ALU|Mult0|auto_generated|le4a\(3) & ((\ALU|Mult0|auto_generated|le5a\(1) & (!\ALU|Mult0|auto_generated|op_1~5\)) # (!\ALU|Mult0|auto_generated|le5a\(1) & ((\ALU|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \ALU|Mult0|auto_generated|op_1~7\ = CARRY((\ALU|Mult0|auto_generated|le4a\(3) & (!\ALU|Mult0|auto_generated|le5a\(1) & !\ALU|Mult0|auto_generated|op_1~5\)) # (!\ALU|Mult0|auto_generated|le4a\(3) & ((!\ALU|Mult0|auto_generated|op_1~5\) # 
-- (!\ALU|Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|le4a\(3),
	datab => \ALU|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \ALU|Mult0|auto_generated|op_1~5\,
	combout => \ALU|Mult0|auto_generated|op_1~6_combout\,
	cout => \ALU|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X114_Y16_N10
\ALU|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_1~8_combout\ = ((\ALU|Mult0|auto_generated|le5a\(2) $ (\ALU|Mult0|auto_generated|le4a\(4) $ (!\ALU|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \ALU|Mult0|auto_generated|op_1~9\ = CARRY((\ALU|Mult0|auto_generated|le5a\(2) & ((\ALU|Mult0|auto_generated|le4a\(4)) # (!\ALU|Mult0|auto_generated|op_1~7\))) # (!\ALU|Mult0|auto_generated|le5a\(2) & (\ALU|Mult0|auto_generated|le4a\(4) & 
-- !\ALU|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|le5a\(2),
	datab => \ALU|Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \ALU|Mult0|auto_generated|op_1~7\,
	combout => \ALU|Mult0|auto_generated|op_1~8_combout\,
	cout => \ALU|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X114_Y16_N12
\ALU|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_1~10_combout\ = \ALU|Mult0|auto_generated|le5a\(3) $ (\ALU|Mult0|auto_generated|op_1~9\ $ (!\ALU|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Mult0|auto_generated|le5a\(3),
	datad => \ALU|Mult0|auto_generated|le4a\(5),
	cin => \ALU|Mult0|auto_generated|op_1~9\,
	combout => \ALU|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X114_Y15_N0
\ALU|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|le5a\(0) = (\SW[0]~input_o\ & ((\SW[7]~input_o\) # ((\SW[5]~input_o\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \ALU|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X114_Y16_N24
\ALU|Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_3~8_combout\ = ((\ALU|Mult0|auto_generated|op_1~4_combout\ $ (\ALU|Mult0|auto_generated|le5a\(0) $ (!\ALU|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \ALU|Mult0|auto_generated|op_3~9\ = CARRY((\ALU|Mult0|auto_generated|op_1~4_combout\ & ((\ALU|Mult0|auto_generated|le5a\(0)) # (!\ALU|Mult0|auto_generated|op_3~7\))) # (!\ALU|Mult0|auto_generated|op_1~4_combout\ & (\ALU|Mult0|auto_generated|le5a\(0) & 
-- !\ALU|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|op_1~4_combout\,
	datab => \ALU|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \ALU|Mult0|auto_generated|op_3~7\,
	combout => \ALU|Mult0|auto_generated|op_3~8_combout\,
	cout => \ALU|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X114_Y16_N26
\ALU|Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_3~10_combout\ = (\SW[5]~input_o\ & ((\ALU|Mult0|auto_generated|op_1~6_combout\ & (\ALU|Mult0|auto_generated|op_3~9\ & VCC)) # (!\ALU|Mult0|auto_generated|op_1~6_combout\ & (!\ALU|Mult0|auto_generated|op_3~9\)))) # 
-- (!\SW[5]~input_o\ & ((\ALU|Mult0|auto_generated|op_1~6_combout\ & (!\ALU|Mult0|auto_generated|op_3~9\)) # (!\ALU|Mult0|auto_generated|op_1~6_combout\ & ((\ALU|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \ALU|Mult0|auto_generated|op_3~11\ = CARRY((\SW[5]~input_o\ & (!\ALU|Mult0|auto_generated|op_1~6_combout\ & !\ALU|Mult0|auto_generated|op_3~9\)) # (!\SW[5]~input_o\ & ((!\ALU|Mult0|auto_generated|op_3~9\) # (!\ALU|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ALU|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \ALU|Mult0|auto_generated|op_3~9\,
	combout => \ALU|Mult0|auto_generated|op_3~10_combout\,
	cout => \ALU|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X114_Y16_N28
\ALU|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_3~12_combout\ = ((\SW[5]~input_o\ $ (\ALU|Mult0|auto_generated|op_1~8_combout\ $ (!\ALU|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \ALU|Mult0|auto_generated|op_3~13\ = CARRY((\SW[5]~input_o\ & ((\ALU|Mult0|auto_generated|op_1~8_combout\) # (!\ALU|Mult0|auto_generated|op_3~11\))) # (!\SW[5]~input_o\ & (\ALU|Mult0|auto_generated|op_1~8_combout\ & !\ALU|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \ALU|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \ALU|Mult0|auto_generated|op_3~11\,
	combout => \ALU|Mult0|auto_generated|op_3~12_combout\,
	cout => \ALU|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X114_Y16_N30
\ALU|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mult0|auto_generated|op_3~14_combout\ = \ALU|Mult0|auto_generated|op_1~10_combout\ $ (\ALU|Mult0|auto_generated|op_3~13\ $ (!\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|op_1~10_combout\,
	datad => \SW[5]~input_o\,
	cin => \ALU|Mult0|auto_generated|op_3~13\,
	combout => \ALU|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X114_Y18_N24
\Bin3|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~8_combout\ = (\ALU|Mult0|auto_generated|op_3~10_combout\ & ((\ALU|Mult0|auto_generated|op_3~14_combout\) # ((!\ALU|Mult0|auto_generated|op_3~12_combout\) # (!\ALU|Mult0|auto_generated|op_3~8_combout\)))) # 
-- (!\ALU|Mult0|auto_generated|op_3~10_combout\ & (\ALU|Mult0|auto_generated|op_3~14_combout\ $ (((\ALU|Mult0|auto_generated|op_3~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|op_3~14_combout\,
	datab => \ALU|Mult0|auto_generated|op_3~8_combout\,
	datac => \ALU|Mult0|auto_generated|op_3~12_combout\,
	datad => \ALU|Mult0|auto_generated|op_3~10_combout\,
	combout => \Bin3|decOut_n~8_combout\);

-- Location: LCCOMB_X114_Y18_N26
\Bin3|decOut_n~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~19_combout\ = (\SW[10]~input_o\) # (((\SW[8]~input_o\) # (!\SW[9]~input_o\)) # (!\Bin3|decOut_n~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \Bin3|decOut_n~8_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \Bin3|decOut_n~19_combout\);

-- Location: LCCOMB_X114_Y18_N2
\Bin3|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~9_combout\ = (\ALU|Mult0|auto_generated|op_3~8_combout\ & ((\ALU|Mult0|auto_generated|op_3~10_combout\) # (!\ALU|Mult0|auto_generated|op_3~12_combout\))) # (!\ALU|Mult0|auto_generated|op_3~8_combout\ & 
-- (!\ALU|Mult0|auto_generated|op_3~12_combout\ & \ALU|Mult0|auto_generated|op_3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Mult0|auto_generated|op_3~8_combout\,
	datac => \ALU|Mult0|auto_generated|op_3~12_combout\,
	datad => \ALU|Mult0|auto_generated|op_3~10_combout\,
	combout => \Bin3|decOut_n~9_combout\);

-- Location: LCCOMB_X114_Y18_N12
\Bin3|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~10_combout\ = (\ALU|Mux3~0_combout\ & (!\SW[8]~input_o\ & (!\ALU|Mult0|auto_generated|op_3~14_combout\ & \Bin3|decOut_n~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~0_combout\,
	datab => \SW[8]~input_o\,
	datac => \ALU|Mult0|auto_generated|op_3~14_combout\,
	datad => \Bin3|decOut_n~9_combout\,
	combout => \Bin3|decOut_n~10_combout\);

-- Location: LCCOMB_X114_Y18_N30
\Bin3|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~11_combout\ = (\ALU|Mult0|auto_generated|op_3~10_combout\ & (!\ALU|Mult0|auto_generated|op_3~14_combout\ & (\ALU|Mult0|auto_generated|op_3~8_combout\))) # (!\ALU|Mult0|auto_generated|op_3~10_combout\ & 
-- ((\ALU|Mult0|auto_generated|op_3~12_combout\ & (!\ALU|Mult0|auto_generated|op_3~14_combout\)) # (!\ALU|Mult0|auto_generated|op_3~12_combout\ & ((\ALU|Mult0|auto_generated|op_3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|op_3~14_combout\,
	datab => \ALU|Mult0|auto_generated|op_3~8_combout\,
	datac => \ALU|Mult0|auto_generated|op_3~12_combout\,
	datad => \ALU|Mult0|auto_generated|op_3~10_combout\,
	combout => \Bin3|decOut_n~11_combout\);

-- Location: LCCOMB_X114_Y18_N20
\Bin3|decOut_n~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~20_combout\ = (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & (\SW[9]~input_o\ & \Bin3|decOut_n~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \Bin3|decOut_n~11_combout\,
	combout => \Bin3|decOut_n~20_combout\);

-- Location: LCCOMB_X114_Y18_N16
\Bin3|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~12_combout\ = (\ALU|Mult0|auto_generated|op_3~10_combout\ & ((\ALU|Mult0|auto_generated|op_3~8_combout\ & ((\ALU|Mult0|auto_generated|op_3~12_combout\))) # (!\ALU|Mult0|auto_generated|op_3~8_combout\ & 
-- (\ALU|Mult0|auto_generated|op_3~14_combout\ & !\ALU|Mult0|auto_generated|op_3~12_combout\)))) # (!\ALU|Mult0|auto_generated|op_3~10_combout\ & (!\ALU|Mult0|auto_generated|op_3~14_combout\ & (\ALU|Mult0|auto_generated|op_3~8_combout\ $ 
-- (\ALU|Mult0|auto_generated|op_3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|op_3~14_combout\,
	datab => \ALU|Mult0|auto_generated|op_3~8_combout\,
	datac => \ALU|Mult0|auto_generated|op_3~12_combout\,
	datad => \ALU|Mult0|auto_generated|op_3~10_combout\,
	combout => \Bin3|decOut_n~12_combout\);

-- Location: LCCOMB_X114_Y18_N22
\Bin3|decOut_n~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~21_combout\ = (!\SW[10]~input_o\ & (\Bin3|decOut_n~12_combout\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \Bin3|decOut_n~12_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \Bin3|decOut_n~21_combout\);

-- Location: LCCOMB_X114_Y18_N4
\Bin3|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~14_combout\ = (\ALU|Mux3~0_combout\ & (!\SW[8]~input_o\ & ((\ALU|Mult0|auto_generated|op_3~8_combout\) # (\ALU|Mult0|auto_generated|op_3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~0_combout\,
	datab => \ALU|Mult0|auto_generated|op_3~8_combout\,
	datac => \ALU|Mult0|auto_generated|op_3~14_combout\,
	datad => \SW[8]~input_o\,
	combout => \Bin3|decOut_n~14_combout\);

-- Location: LCCOMB_X114_Y18_N28
\ALU|m_hi[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|m_hi[2]~7_combout\ = (!\SW[10]~input_o\ & (\ALU|Mult0|auto_generated|op_3~12_combout\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \ALU|Mult0|auto_generated|op_3~12_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU|m_hi[2]~7_combout\);

-- Location: LCCOMB_X114_Y18_N0
\Bin3|decOut_n~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~22_combout\ = (!\SW[10]~input_o\ & (\SW[9]~input_o\ & (\ALU|Mult0|auto_generated|op_3~14_combout\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \ALU|Mult0|auto_generated|op_3~14_combout\,
	datad => \SW[8]~input_o\,
	combout => \Bin3|decOut_n~22_combout\);

-- Location: LCCOMB_X114_Y18_N10
\Bin3|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~13_combout\ = (\ALU|Mult0|auto_generated|op_3~12_combout\ & (\Bin3|decOut_n~22_combout\ & ((\ALU|Mult0|auto_generated|op_3~10_combout\) # (!\ALU|Mult0|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|op_3~10_combout\,
	datab => \ALU|Mult0|auto_generated|op_3~8_combout\,
	datac => \ALU|Mult0|auto_generated|op_3~12_combout\,
	datad => \Bin3|decOut_n~22_combout\,
	combout => \Bin3|decOut_n~13_combout\);

-- Location: LCCOMB_X114_Y18_N18
\ALU|m_hi[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|m_hi[1]~6_combout\ = (!\SW[10]~input_o\ & (!\SW[8]~input_o\ & (\SW[9]~input_o\ & \ALU|Mult0|auto_generated|op_3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \ALU|Mult0|auto_generated|op_3~10_combout\,
	combout => \ALU|m_hi[1]~6_combout\);

-- Location: LCCOMB_X114_Y19_N8
\Bin3|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~15_combout\ = (\Bin3|decOut_n~13_combout\) # ((!\Bin3|decOut_n~14_combout\ & (!\ALU|m_hi[2]~7_combout\ & \ALU|m_hi[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin3|decOut_n~14_combout\,
	datab => \ALU|m_hi[2]~7_combout\,
	datac => \Bin3|decOut_n~13_combout\,
	datad => \ALU|m_hi[1]~6_combout\,
	combout => \Bin3|decOut_n~15_combout\);

-- Location: LCCOMB_X114_Y18_N14
\Bin3|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~16_combout\ = (\ALU|Mult0|auto_generated|op_3~8_combout\ & (\ALU|Mult0|auto_generated|op_3~14_combout\)) # (!\ALU|Mult0|auto_generated|op_3~8_combout\ & ((\ALU|Mult0|auto_generated|op_3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|op_3~14_combout\,
	datab => \ALU|Mult0|auto_generated|op_3~8_combout\,
	datac => \ALU|Mult0|auto_generated|op_3~12_combout\,
	combout => \Bin3|decOut_n~16_combout\);

-- Location: LCCOMB_X114_Y19_N18
\Bin3|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~17_combout\ = (\ALU|m_hi[1]~6_combout\ & (((\Bin3|decOut_n~16_combout\)))) # (!\ALU|m_hi[1]~6_combout\ & (\Bin3|decOut_n~14_combout\ & ((\ALU|m_hi[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin3|decOut_n~14_combout\,
	datab => \Bin3|decOut_n~16_combout\,
	datac => \ALU|m_hi[2]~7_combout\,
	datad => \ALU|m_hi[1]~6_combout\,
	combout => \Bin3|decOut_n~17_combout\);

-- Location: LCCOMB_X114_Y18_N6
\ALU|m_hi[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|m_hi[0]~8_combout\ = (\SW[10]~input_o\) # (((\SW[8]~input_o\) # (!\SW[9]~input_o\)) # (!\ALU|Mult0|auto_generated|op_3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \ALU|Mult0|auto_generated|op_3~8_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \ALU|m_hi[0]~8_combout\);

-- Location: LCCOMB_X114_Y18_N8
\Bin3|decOut_n~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin3|decOut_n~18_combout\ = (\ALU|m_hi[0]~8_combout\ & (((\ALU|m_hi[1]~6_combout\) # (\Bin3|decOut_n~22_combout\)) # (!\ALU|m_hi[2]~7_combout\))) # (!\ALU|m_hi[0]~8_combout\ & ((\ALU|m_hi[2]~7_combout\) # (\ALU|m_hi[1]~6_combout\ $ 
-- (\Bin3|decOut_n~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|m_hi[0]~8_combout\,
	datab => \ALU|m_hi[2]~7_combout\,
	datac => \ALU|m_hi[1]~6_combout\,
	datad => \Bin3|decOut_n~22_combout\,
	combout => \Bin3|decOut_n~18_combout\);

-- Location: LCCOMB_X114_Y17_N26
\inst|bcd[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd\(3) = (!\ALU|Mux0~1_combout\ & (!\ALU|Mux2~1_combout\ & !\ALU|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~1_combout\,
	datab => \ALU|Mux2~1_combout\,
	datad => \ALU|Mux1~1_combout\,
	combout => \inst|bcd\(3));

-- Location: LCCOMB_X114_Y17_N28
\inst|bcd[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd[2]~1_combout\ = (\ALU|Mux1~1_combout\ & ((\ALU|Mux0~1_combout\) # (\ALU|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~1_combout\,
	datab => \ALU|Mux2~1_combout\,
	datad => \ALU|Mux1~1_combout\,
	combout => \inst|bcd[2]~1_combout\);

-- Location: LCCOMB_X114_Y17_N22
\inst|bcd[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bcd[1]~2_combout\ = (\ALU|Mux0~1_combout\ & (\ALU|Mux2~1_combout\)) # (!\ALU|Mux0~1_combout\ & (!\ALU|Mux2~1_combout\ & \ALU|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~1_combout\,
	datab => \ALU|Mux2~1_combout\,
	datad => \ALU|Mux1~1_combout\,
	combout => \inst|bcd[1]~2_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_LEDR3 <= \LEDR3~output_o\;

ww_LEDR2 <= \LEDR2~output_o\;

ww_LEDR1 <= \LEDR1~output_o\;

ww_LEDR0 <= \LEDR0~output_o\;

ww_LEDR11 <= \LEDR11~output_o\;

ww_LEDR10 <= \LEDR10~output_o\;

ww_LEDR9 <= \LEDR9~output_o\;

ww_LEDR8 <= \LEDR8~output_o\;

ww_LEDR7(7) <= \LEDR7[7]~output_o\;

ww_LEDR7(6) <= \LEDR7[6]~output_o\;

ww_LEDR7(5) <= \LEDR7[5]~output_o\;

ww_LEDR7(4) <= \LEDR7[4]~output_o\;
END structure;


