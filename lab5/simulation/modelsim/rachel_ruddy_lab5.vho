-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/22/2024 19:47:56"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rachel_ruddy_wrapper IS
    PORT (
	enable : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END rachel_ruddy_wrapper;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rachel_ruddy_wrapper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \i2|count_reg[0]~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \i1|Add0~2\ : std_logic;
SIGNAL \i1|Add0~37_sumout\ : std_logic;
SIGNAL \i1|Add0~46\ : std_logic;
SIGNAL \i1|Add0~121_sumout\ : std_logic;
SIGNAL \i1|counter~18_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \i1|counter[23]~1_combout\ : std_logic;
SIGNAL \i1|Add0~122\ : std_logic;
SIGNAL \i1|Add0~117_sumout\ : std_logic;
SIGNAL \i1|counter~17_combout\ : std_logic;
SIGNAL \i1|Add0~118\ : std_logic;
SIGNAL \i1|Add0~113_sumout\ : std_logic;
SIGNAL \i1|counter~16_combout\ : std_logic;
SIGNAL \i1|Add0~114\ : std_logic;
SIGNAL \i1|Add0~109_sumout\ : std_logic;
SIGNAL \i1|counter~15_combout\ : std_logic;
SIGNAL \i1|Add0~110\ : std_logic;
SIGNAL \i1|Add0~49_sumout\ : std_logic;
SIGNAL \i1|Add0~50\ : std_logic;
SIGNAL \i1|Add0~105_sumout\ : std_logic;
SIGNAL \i1|counter~14_combout\ : std_logic;
SIGNAL \i1|Equal0~5_combout\ : std_logic;
SIGNAL \i1|Add0~106\ : std_logic;
SIGNAL \i1|Add0~53_sumout\ : std_logic;
SIGNAL \i1|Add0~54\ : std_logic;
SIGNAL \i1|Add0~101_sumout\ : std_logic;
SIGNAL \i1|counter~13_combout\ : std_logic;
SIGNAL \i1|Add0~102\ : std_logic;
SIGNAL \i1|Add0~97_sumout\ : std_logic;
SIGNAL \i1|counter~12_combout\ : std_logic;
SIGNAL \i1|Add0~98\ : std_logic;
SIGNAL \i1|Add0~93_sumout\ : std_logic;
SIGNAL \i1|counter~11_combout\ : std_logic;
SIGNAL \i1|Add0~94\ : std_logic;
SIGNAL \i1|Add0~89_sumout\ : std_logic;
SIGNAL \i1|counter~10_combout\ : std_logic;
SIGNAL \i1|Add0~90\ : std_logic;
SIGNAL \i1|Add0~85_sumout\ : std_logic;
SIGNAL \i1|counter~9_combout\ : std_logic;
SIGNAL \i1|Equal0~4_combout\ : std_logic;
SIGNAL \i1|Add0~77_sumout\ : std_logic;
SIGNAL \i1|counter~7_combout\ : std_logic;
SIGNAL \i1|Add0~78\ : std_logic;
SIGNAL \i1|Add0~73_sumout\ : std_logic;
SIGNAL \i1|counter~6_combout\ : std_logic;
SIGNAL \i1|Add0~74\ : std_logic;
SIGNAL \i1|Add0~69_sumout\ : std_logic;
SIGNAL \i1|counter~5_combout\ : std_logic;
SIGNAL \i1|Add0~70\ : std_logic;
SIGNAL \i1|Add0~65_sumout\ : std_logic;
SIGNAL \i1|counter~4_combout\ : std_logic;
SIGNAL \i1|Add0~66\ : std_logic;
SIGNAL \i1|Add0~61_sumout\ : std_logic;
SIGNAL \i1|counter~3_combout\ : std_logic;
SIGNAL \i1|Add0~62\ : std_logic;
SIGNAL \i1|Add0~57_sumout\ : std_logic;
SIGNAL \i1|counter~2_combout\ : std_logic;
SIGNAL \i1|Equal0~3_combout\ : std_logic;
SIGNAL \i1|Equal0~6_combout\ : std_logic;
SIGNAL \i1|counter[23]~0_combout\ : std_logic;
SIGNAL \i1|Add0~38\ : std_logic;
SIGNAL \i1|Add0~41_sumout\ : std_logic;
SIGNAL \i1|Add0~42\ : std_logic;
SIGNAL \i1|Add0~45_sumout\ : std_logic;
SIGNAL \i1|Add0~86\ : std_logic;
SIGNAL \i1|Add0~33_sumout\ : std_logic;
SIGNAL \i1|Equal0~2_combout\ : std_logic;
SIGNAL \i1|Equal0~7_combout\ : std_logic;
SIGNAL \i1|Add0~34\ : std_logic;
SIGNAL \i1|Add0~81_sumout\ : std_logic;
SIGNAL \i1|counter~8_combout\ : std_logic;
SIGNAL \i1|Add0~82\ : std_logic;
SIGNAL \i1|Add0~29_sumout\ : std_logic;
SIGNAL \i1|Add0~30\ : std_logic;
SIGNAL \i1|Add0~25_sumout\ : std_logic;
SIGNAL \i1|Add0~26\ : std_logic;
SIGNAL \i1|Add0~21_sumout\ : std_logic;
SIGNAL \i1|Add0~22\ : std_logic;
SIGNAL \i1|Add0~17_sumout\ : std_logic;
SIGNAL \i1|Add0~18\ : std_logic;
SIGNAL \i1|Add0~13_sumout\ : std_logic;
SIGNAL \i1|Add0~14\ : std_logic;
SIGNAL \i1|Add0~9_sumout\ : std_logic;
SIGNAL \i1|Equal0~1_combout\ : std_logic;
SIGNAL \i1|Add0~58\ : std_logic;
SIGNAL \i1|Add0~125_sumout\ : std_logic;
SIGNAL \i1|counter~19_combout\ : std_logic;
SIGNAL \i1|Add0~126\ : std_logic;
SIGNAL \i1|Add0~5_sumout\ : std_logic;
SIGNAL \i1|Add0~6\ : std_logic;
SIGNAL \i1|Add0~1_sumout\ : std_logic;
SIGNAL \i1|Equal0~0_combout\ : std_logic;
SIGNAL \i1|en_out_internal~0_combout\ : std_logic;
SIGNAL \i1|en_out_internal~q\ : std_logic;
SIGNAL \i3|Mux5~1_combout\ : std_logic;
SIGNAL \i2|count_reg[2]~0_combout\ : std_logic;
SIGNAL \i2|count_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \i3|Mux6~0_combout\ : std_logic;
SIGNAL \i3|Mux5~0_combout\ : std_logic;
SIGNAL \i3|Mux4~0_combout\ : std_logic;
SIGNAL \i3|Mux3~0_combout\ : std_logic;
SIGNAL \i3|Mux2~0_combout\ : std_logic;
SIGNAL \i3|Mux1~0_combout\ : std_logic;
SIGNAL \i3|Mux0~0_combout\ : std_logic;
SIGNAL \i1|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i2|count_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i2|ALT_INV_count_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \i1|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \i1|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \i1|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \i1|ALT_INV_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \i1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \i1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \i1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \i1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \i1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \i1|ALT_INV_en_out_internal~q\ : std_logic;
SIGNAL \i2|ALT_INV_count_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \i1|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \i1|ALT_INV_Add0~57_sumout\ : std_logic;

BEGIN

ww_enable <= enable;
ww_reset <= reset;
ww_clk <= clk;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\i2|ALT_INV_count_reg[1]~DUPLICATE_q\ <= NOT \i2|count_reg[1]~DUPLICATE_q\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\i1|ALT_INV_Equal0~7_combout\ <= NOT \i1|Equal0~7_combout\;
\i1|ALT_INV_Equal0~6_combout\ <= NOT \i1|Equal0~6_combout\;
\i1|ALT_INV_Equal0~5_combout\ <= NOT \i1|Equal0~5_combout\;
\i1|ALT_INV_counter\(6) <= NOT \i1|counter\(6);
\i1|ALT_INV_counter\(12) <= NOT \i1|counter\(12);
\i1|ALT_INV_counter\(13) <= NOT \i1|counter\(13);
\i1|ALT_INV_counter\(14) <= NOT \i1|counter\(14);
\i1|ALT_INV_counter\(15) <= NOT \i1|counter\(15);
\i1|ALT_INV_counter\(17) <= NOT \i1|counter\(17);
\i1|ALT_INV_Equal0~4_combout\ <= NOT \i1|Equal0~4_combout\;
\i1|ALT_INV_counter\(19) <= NOT \i1|counter\(19);
\i1|ALT_INV_counter\(20) <= NOT \i1|counter\(20);
\i1|ALT_INV_counter\(21) <= NOT \i1|counter\(21);
\i1|ALT_INV_counter\(22) <= NOT \i1|counter\(22);
\i1|ALT_INV_counter\(23) <= NOT \i1|counter\(23);
\i1|ALT_INV_counter\(25) <= NOT \i1|counter\(25);
\i1|ALT_INV_Equal0~3_combout\ <= NOT \i1|Equal0~3_combout\;
\i1|ALT_INV_counter\(0) <= NOT \i1|counter\(0);
\i1|ALT_INV_counter\(1) <= NOT \i1|counter\(1);
\i1|ALT_INV_counter\(2) <= NOT \i1|counter\(2);
\i1|ALT_INV_counter\(3) <= NOT \i1|counter\(3);
\i1|ALT_INV_counter\(4) <= NOT \i1|counter\(4);
\i1|ALT_INV_counter\(5) <= NOT \i1|counter\(5);
\i1|ALT_INV_Equal0~2_combout\ <= NOT \i1|Equal0~2_combout\;
\i1|ALT_INV_Equal0~1_combout\ <= NOT \i1|Equal0~1_combout\;
\i1|ALT_INV_Equal0~0_combout\ <= NOT \i1|Equal0~0_combout\;
\i1|ALT_INV_en_out_internal~q\ <= NOT \i1|en_out_internal~q\;
\i2|ALT_INV_count_reg\(2) <= NOT \i2|count_reg\(2);
\i2|ALT_INV_count_reg\(0) <= NOT \i2|count_reg\(0);
\i2|ALT_INV_count_reg\(1) <= NOT \i2|count_reg\(1);
\i1|ALT_INV_Add0~125_sumout\ <= NOT \i1|Add0~125_sumout\;
\i1|ALT_INV_Add0~121_sumout\ <= NOT \i1|Add0~121_sumout\;
\i1|ALT_INV_Add0~117_sumout\ <= NOT \i1|Add0~117_sumout\;
\i1|ALT_INV_Add0~113_sumout\ <= NOT \i1|Add0~113_sumout\;
\i1|ALT_INV_Add0~109_sumout\ <= NOT \i1|Add0~109_sumout\;
\i1|ALT_INV_Add0~105_sumout\ <= NOT \i1|Add0~105_sumout\;
\i1|ALT_INV_Add0~101_sumout\ <= NOT \i1|Add0~101_sumout\;
\i1|ALT_INV_Add0~97_sumout\ <= NOT \i1|Add0~97_sumout\;
\i1|ALT_INV_Add0~93_sumout\ <= NOT \i1|Add0~93_sumout\;
\i1|ALT_INV_Add0~89_sumout\ <= NOT \i1|Add0~89_sumout\;
\i1|ALT_INV_Add0~85_sumout\ <= NOT \i1|Add0~85_sumout\;
\i1|ALT_INV_Add0~81_sumout\ <= NOT \i1|Add0~81_sumout\;
\i1|ALT_INV_Add0~77_sumout\ <= NOT \i1|Add0~77_sumout\;
\i1|ALT_INV_Add0~73_sumout\ <= NOT \i1|Add0~73_sumout\;
\i1|ALT_INV_Add0~69_sumout\ <= NOT \i1|Add0~69_sumout\;
\i1|ALT_INV_Add0~65_sumout\ <= NOT \i1|Add0~65_sumout\;
\i1|ALT_INV_Add0~61_sumout\ <= NOT \i1|Add0~61_sumout\;
\i1|ALT_INV_Add0~57_sumout\ <= NOT \i1|Add0~57_sumout\;
\i1|ALT_INV_counter\(18) <= NOT \i1|counter\(18);
\i1|ALT_INV_counter\(16) <= NOT \i1|counter\(16);
\i1|ALT_INV_counter\(11) <= NOT \i1|counter\(11);
\i1|ALT_INV_counter\(10) <= NOT \i1|counter\(10);
\i1|ALT_INV_counter\(9) <= NOT \i1|counter\(9);
\i1|ALT_INV_counter\(24) <= NOT \i1|counter\(24);
\i1|ALT_INV_counter\(26) <= NOT \i1|counter\(26);
\i1|ALT_INV_counter\(27) <= NOT \i1|counter\(27);
\i1|ALT_INV_counter\(28) <= NOT \i1|counter\(28);
\i1|ALT_INV_counter\(29) <= NOT \i1|counter\(29);
\i1|ALT_INV_counter\(30) <= NOT \i1|counter\(30);
\i1|ALT_INV_counter\(31) <= NOT \i1|counter\(31);
\i1|ALT_INV_counter\(7) <= NOT \i1|counter\(7);
\i1|ALT_INV_counter\(8) <= NOT \i1|counter\(8);

-- Location: IOOBUF_X89_Y21_N5
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y20_N45
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y21_N56
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y20_N62
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y21_N22
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X80_Y21_N54
\i2|count_reg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2|count_reg[0]~1_combout\ = !\i2|count_reg\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i2|ALT_INV_count_reg\(0),
	combout => \i2|count_reg[0]~1_combout\);

-- Location: IOIBUF_X89_Y23_N38
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X81_Y22_N24
\i1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~1_sumout\ = SUM(( \i1|counter\(8) ) + ( VCC ) + ( \i1|Add0~6\ ))
-- \i1|Add0~2\ = CARRY(( \i1|counter\(8) ) + ( VCC ) + ( \i1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(8),
	cin => \i1|Add0~6\,
	sumout => \i1|Add0~1_sumout\,
	cout => \i1|Add0~2\);

-- Location: LABCELL_X81_Y22_N27
\i1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~37_sumout\ = SUM(( \i1|counter\(9) ) + ( VCC ) + ( \i1|Add0~2\ ))
-- \i1|Add0~38\ = CARRY(( \i1|counter\(9) ) + ( VCC ) + ( \i1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i1|ALT_INV_counter\(9),
	cin => \i1|Add0~2\,
	sumout => \i1|Add0~37_sumout\,
	cout => \i1|Add0~38\);

-- Location: LABCELL_X81_Y22_N33
\i1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~45_sumout\ = SUM(( \i1|counter\(11) ) + ( VCC ) + ( \i1|Add0~42\ ))
-- \i1|Add0~46\ = CARRY(( \i1|counter\(11) ) + ( VCC ) + ( \i1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_counter\(11),
	cin => \i1|Add0~42\,
	sumout => \i1|Add0~45_sumout\,
	cout => \i1|Add0~46\);

-- Location: LABCELL_X81_Y22_N36
\i1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~121_sumout\ = SUM(( !\i1|counter\(12) ) + ( VCC ) + ( \i1|Add0~46\ ))
-- \i1|Add0~122\ = CARRY(( !\i1|counter\(12) ) + ( VCC ) + ( \i1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_counter\(12),
	cin => \i1|Add0~46\,
	sumout => \i1|Add0~121_sumout\,
	cout => \i1|Add0~122\);

-- Location: MLABCELL_X82_Y21_N57
\i1|counter~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~18_combout\ = ( \i1|Equal0~6_combout\ & ( !\i1|Add0~121_sumout\ & ( (\reset~input_o\ & ((!\i1|Equal0~1_combout\) # ((!\i1|Equal0~2_combout\) # (!\i1|Equal0~0_combout\)))) ) ) ) # ( !\i1|Equal0~6_combout\ & ( !\i1|Add0~121_sumout\ & ( 
-- \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Equal0~1_combout\,
	datab => \i1|ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \i1|ALT_INV_Equal0~0_combout\,
	datae => \i1|ALT_INV_Equal0~6_combout\,
	dataf => \i1|ALT_INV_Add0~121_sumout\,
	combout => \i1|counter~18_combout\);

-- Location: IOIBUF_X89_Y21_N38
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LABCELL_X83_Y21_N36
\i1|counter[23]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter[23]~1_combout\ = ( \enable~input_o\ & ( \reset~input_o\ ) ) # ( \enable~input_o\ & ( !\reset~input_o\ ) ) # ( !\enable~input_o\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_enable~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \i1|counter[23]~1_combout\);

-- Location: FF_X82_Y21_N59
\i1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~18_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(12));

-- Location: LABCELL_X81_Y22_N39
\i1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~117_sumout\ = SUM(( !\i1|counter\(13) ) + ( VCC ) + ( \i1|Add0~122\ ))
-- \i1|Add0~118\ = CARRY(( !\i1|counter\(13) ) + ( VCC ) + ( \i1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(13),
	cin => \i1|Add0~122\,
	sumout => \i1|Add0~117_sumout\,
	cout => \i1|Add0~118\);

-- Location: MLABCELL_X82_Y21_N6
\i1|counter~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~17_combout\ = ( \i1|Equal0~6_combout\ & ( !\i1|Add0~117_sumout\ & ( (\reset~input_o\ & ((!\i1|Equal0~1_combout\) # ((!\i1|Equal0~2_combout\) # (!\i1|Equal0~0_combout\)))) ) ) ) # ( !\i1|Equal0~6_combout\ & ( !\i1|Add0~117_sumout\ & ( 
-- \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Equal0~1_combout\,
	datab => \i1|ALT_INV_Equal0~2_combout\,
	datac => \i1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_reset~input_o\,
	datae => \i1|ALT_INV_Equal0~6_combout\,
	dataf => \i1|ALT_INV_Add0~117_sumout\,
	combout => \i1|counter~17_combout\);

-- Location: FF_X82_Y21_N8
\i1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~17_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(13));

-- Location: LABCELL_X81_Y22_N42
\i1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~113_sumout\ = SUM(( !\i1|counter\(14) ) + ( VCC ) + ( \i1|Add0~118\ ))
-- \i1|Add0~114\ = CARRY(( !\i1|counter\(14) ) + ( VCC ) + ( \i1|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i1|ALT_INV_counter\(14),
	cin => \i1|Add0~118\,
	sumout => \i1|Add0~113_sumout\,
	cout => \i1|Add0~114\);

-- Location: MLABCELL_X82_Y21_N39
\i1|counter~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~16_combout\ = ( \i1|Equal0~6_combout\ & ( !\i1|Add0~113_sumout\ & ( (\reset~input_o\ & ((!\i1|Equal0~1_combout\) # ((!\i1|Equal0~2_combout\) # (!\i1|Equal0~0_combout\)))) ) ) ) # ( !\i1|Equal0~6_combout\ & ( !\i1|Add0~113_sumout\ & ( 
-- \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Equal0~1_combout\,
	datab => \i1|ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \i1|ALT_INV_Equal0~0_combout\,
	datae => \i1|ALT_INV_Equal0~6_combout\,
	dataf => \i1|ALT_INV_Add0~113_sumout\,
	combout => \i1|counter~16_combout\);

-- Location: FF_X82_Y21_N41
\i1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~16_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(14));

-- Location: LABCELL_X81_Y22_N45
\i1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~109_sumout\ = SUM(( !\i1|counter\(15) ) + ( VCC ) + ( \i1|Add0~114\ ))
-- \i1|Add0~110\ = CARRY(( !\i1|counter\(15) ) + ( VCC ) + ( \i1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i1|ALT_INV_counter\(15),
	cin => \i1|Add0~114\,
	sumout => \i1|Add0~109_sumout\,
	cout => \i1|Add0~110\);

-- Location: MLABCELL_X82_Y21_N12
\i1|counter~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~15_combout\ = ( \i1|Equal0~6_combout\ & ( !\i1|Add0~109_sumout\ & ( (\reset~input_o\ & ((!\i1|Equal0~1_combout\) # ((!\i1|Equal0~2_combout\) # (!\i1|Equal0~0_combout\)))) ) ) ) # ( !\i1|Equal0~6_combout\ & ( !\i1|Add0~109_sumout\ & ( 
-- \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Equal0~1_combout\,
	datab => \i1|ALT_INV_Equal0~2_combout\,
	datac => \i1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_reset~input_o\,
	datae => \i1|ALT_INV_Equal0~6_combout\,
	dataf => \i1|ALT_INV_Add0~109_sumout\,
	combout => \i1|counter~15_combout\);

-- Location: FF_X82_Y21_N14
\i1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~15_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(15));

-- Location: LABCELL_X81_Y22_N48
\i1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~49_sumout\ = SUM(( \i1|counter\(16) ) + ( VCC ) + ( \i1|Add0~110\ ))
-- \i1|Add0~50\ = CARRY(( \i1|counter\(16) ) + ( VCC ) + ( \i1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(16),
	cin => \i1|Add0~110\,
	sumout => \i1|Add0~49_sumout\,
	cout => \i1|Add0~50\);

-- Location: FF_X81_Y22_N50
\i1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~49_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(16));

-- Location: LABCELL_X81_Y22_N51
\i1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~105_sumout\ = SUM(( !\i1|counter\(17) ) + ( VCC ) + ( \i1|Add0~50\ ))
-- \i1|Add0~106\ = CARRY(( !\i1|counter\(17) ) + ( VCC ) + ( \i1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(17),
	cin => \i1|Add0~50\,
	sumout => \i1|Add0~105_sumout\,
	cout => \i1|Add0~106\);

-- Location: MLABCELL_X82_Y21_N33
\i1|counter~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~14_combout\ = ( !\i1|Add0~105_sumout\ & ( (\reset~input_o\ & !\i1|Equal0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \i1|ALT_INV_Equal0~7_combout\,
	dataf => \i1|ALT_INV_Add0~105_sumout\,
	combout => \i1|counter~14_combout\);

-- Location: FF_X82_Y21_N35
\i1|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~14_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(17));

-- Location: MLABCELL_X82_Y21_N18
\i1|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Equal0~5_combout\ = ( \i1|counter\(12) & ( \i1|counter\(15) & ( (\i1|counter\(17) & (\i1|counter\(13) & (\i1|counter\(6) & \i1|counter\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_counter\(17),
	datab => \i1|ALT_INV_counter\(13),
	datac => \i1|ALT_INV_counter\(6),
	datad => \i1|ALT_INV_counter\(14),
	datae => \i1|ALT_INV_counter\(12),
	dataf => \i1|ALT_INV_counter\(15),
	combout => \i1|Equal0~5_combout\);

-- Location: LABCELL_X81_Y22_N54
\i1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~53_sumout\ = SUM(( \i1|counter\(18) ) + ( VCC ) + ( \i1|Add0~106\ ))
-- \i1|Add0~54\ = CARRY(( \i1|counter\(18) ) + ( VCC ) + ( \i1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(18),
	cin => \i1|Add0~106\,
	sumout => \i1|Add0~53_sumout\,
	cout => \i1|Add0~54\);

-- Location: FF_X81_Y22_N56
\i1|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~53_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(18));

-- Location: LABCELL_X81_Y22_N57
\i1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~101_sumout\ = SUM(( !\i1|counter\(19) ) + ( VCC ) + ( \i1|Add0~54\ ))
-- \i1|Add0~102\ = CARRY(( !\i1|counter\(19) ) + ( VCC ) + ( \i1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(19),
	cin => \i1|Add0~54\,
	sumout => \i1|Add0~101_sumout\,
	cout => \i1|Add0~102\);

-- Location: LABCELL_X80_Y21_N24
\i1|counter~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~13_combout\ = ( !\i1|Add0~101_sumout\ & ( (!\i1|Equal0~7_combout\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Equal0~7_combout\,
	datac => \ALT_INV_reset~input_o\,
	dataf => \i1|ALT_INV_Add0~101_sumout\,
	combout => \i1|counter~13_combout\);

-- Location: FF_X80_Y21_N26
\i1|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~13_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(19));

-- Location: LABCELL_X81_Y21_N0
\i1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~97_sumout\ = SUM(( !\i1|counter\(20) ) + ( VCC ) + ( \i1|Add0~102\ ))
-- \i1|Add0~98\ = CARRY(( !\i1|counter\(20) ) + ( VCC ) + ( \i1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(20),
	cin => \i1|Add0~102\,
	sumout => \i1|Add0~97_sumout\,
	cout => \i1|Add0~98\);

-- Location: LABCELL_X80_Y21_N30
\i1|counter~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~12_combout\ = (!\i1|Equal0~7_combout\ & (\reset~input_o\ & !\i1|Add0~97_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_Equal0~7_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \i1|ALT_INV_Add0~97_sumout\,
	combout => \i1|counter~12_combout\);

-- Location: FF_X80_Y21_N32
\i1|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~12_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(20));

-- Location: LABCELL_X81_Y21_N3
\i1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~93_sumout\ = SUM(( !\i1|counter\(21) ) + ( VCC ) + ( \i1|Add0~98\ ))
-- \i1|Add0~94\ = CARRY(( !\i1|counter\(21) ) + ( VCC ) + ( \i1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(21),
	cin => \i1|Add0~98\,
	sumout => \i1|Add0~93_sumout\,
	cout => \i1|Add0~94\);

-- Location: LABCELL_X80_Y21_N45
\i1|counter~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~11_combout\ = ( !\i1|Add0~93_sumout\ & ( (\reset~input_o\ & !\i1|Equal0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \i1|ALT_INV_Equal0~7_combout\,
	dataf => \i1|ALT_INV_Add0~93_sumout\,
	combout => \i1|counter~11_combout\);

-- Location: FF_X80_Y21_N47
\i1|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~11_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(21));

-- Location: LABCELL_X81_Y21_N6
\i1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~89_sumout\ = SUM(( !\i1|counter\(22) ) + ( VCC ) + ( \i1|Add0~94\ ))
-- \i1|Add0~90\ = CARRY(( !\i1|counter\(22) ) + ( VCC ) + ( \i1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(22),
	cin => \i1|Add0~94\,
	sumout => \i1|Add0~89_sumout\,
	cout => \i1|Add0~90\);

-- Location: LABCELL_X81_Y21_N36
\i1|counter~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~10_combout\ = ( !\i1|Add0~89_sumout\ & ( (\reset~input_o\ & !\i1|Equal0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \i1|ALT_INV_Equal0~7_combout\,
	dataf => \i1|ALT_INV_Add0~89_sumout\,
	combout => \i1|counter~10_combout\);

-- Location: FF_X81_Y21_N38
\i1|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~10_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(22));

-- Location: LABCELL_X81_Y21_N9
\i1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~85_sumout\ = SUM(( !\i1|counter\(23) ) + ( VCC ) + ( \i1|Add0~90\ ))
-- \i1|Add0~86\ = CARRY(( !\i1|counter\(23) ) + ( VCC ) + ( \i1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(23),
	cin => \i1|Add0~90\,
	sumout => \i1|Add0~85_sumout\,
	cout => \i1|Add0~86\);

-- Location: LABCELL_X81_Y21_N39
\i1|counter~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~9_combout\ = ( !\i1|Add0~85_sumout\ & ( (\reset~input_o\ & !\i1|Equal0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \i1|ALT_INV_Equal0~7_combout\,
	dataf => \i1|ALT_INV_Add0~85_sumout\,
	combout => \i1|counter~9_combout\);

-- Location: FF_X81_Y21_N41
\i1|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~9_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(23));

-- Location: LABCELL_X80_Y21_N18
\i1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Equal0~4_combout\ = ( \i1|counter\(22) & ( \i1|counter\(20) & ( (\i1|counter\(23) & (\i1|counter\(21) & (\i1|counter\(19) & \i1|counter\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_counter\(23),
	datab => \i1|ALT_INV_counter\(21),
	datac => \i1|ALT_INV_counter\(19),
	datad => \i1|ALT_INV_counter\(25),
	datae => \i1|ALT_INV_counter\(22),
	dataf => \i1|ALT_INV_counter\(20),
	combout => \i1|Equal0~4_combout\);

-- Location: LABCELL_X81_Y22_N0
\i1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~77_sumout\ = SUM(( !\i1|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \i1|Add0~78\ = CARRY(( !\i1|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(0),
	cin => GND,
	sumout => \i1|Add0~77_sumout\,
	cout => \i1|Add0~78\);

-- Location: MLABCELL_X82_Y21_N36
\i1|counter~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~7_combout\ = ( \i1|Equal0~6_combout\ & ( !\i1|Add0~77_sumout\ & ( (\reset~input_o\ & ((!\i1|Equal0~1_combout\) # ((!\i1|Equal0~2_combout\) # (!\i1|Equal0~0_combout\)))) ) ) ) # ( !\i1|Equal0~6_combout\ & ( !\i1|Add0~77_sumout\ & ( 
-- \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Equal0~1_combout\,
	datab => \i1|ALT_INV_Equal0~2_combout\,
	datac => \i1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_reset~input_o\,
	datae => \i1|ALT_INV_Equal0~6_combout\,
	dataf => \i1|ALT_INV_Add0~77_sumout\,
	combout => \i1|counter~7_combout\);

-- Location: FF_X82_Y21_N38
\i1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~7_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(0));

-- Location: LABCELL_X81_Y22_N3
\i1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~73_sumout\ = SUM(( !\i1|counter\(1) ) + ( VCC ) + ( \i1|Add0~78\ ))
-- \i1|Add0~74\ = CARRY(( !\i1|counter\(1) ) + ( VCC ) + ( \i1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i1|ALT_INV_counter\(1),
	cin => \i1|Add0~78\,
	sumout => \i1|Add0~73_sumout\,
	cout => \i1|Add0~74\);

-- Location: MLABCELL_X82_Y21_N9
\i1|counter~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~6_combout\ = ( \i1|Equal0~6_combout\ & ( !\i1|Add0~73_sumout\ & ( (\reset~input_o\ & ((!\i1|Equal0~1_combout\) # ((!\i1|Equal0~2_combout\) # (!\i1|Equal0~0_combout\)))) ) ) ) # ( !\i1|Equal0~6_combout\ & ( !\i1|Add0~73_sumout\ & ( 
-- \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Equal0~1_combout\,
	datab => \i1|ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \i1|ALT_INV_Equal0~0_combout\,
	datae => \i1|ALT_INV_Equal0~6_combout\,
	dataf => \i1|ALT_INV_Add0~73_sumout\,
	combout => \i1|counter~6_combout\);

-- Location: FF_X82_Y21_N11
\i1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~6_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(1));

-- Location: LABCELL_X81_Y22_N6
\i1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~69_sumout\ = SUM(( !\i1|counter\(2) ) + ( VCC ) + ( \i1|Add0~74\ ))
-- \i1|Add0~70\ = CARRY(( !\i1|counter\(2) ) + ( VCC ) + ( \i1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(2),
	cin => \i1|Add0~74\,
	sumout => \i1|Add0~69_sumout\,
	cout => \i1|Add0~70\);

-- Location: MLABCELL_X82_Y21_N54
\i1|counter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~5_combout\ = ( \i1|Equal0~6_combout\ & ( !\i1|Add0~69_sumout\ & ( (\reset~input_o\ & ((!\i1|Equal0~1_combout\) # ((!\i1|Equal0~2_combout\) # (!\i1|Equal0~0_combout\)))) ) ) ) # ( !\i1|Equal0~6_combout\ & ( !\i1|Add0~69_sumout\ & ( 
-- \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Equal0~1_combout\,
	datab => \i1|ALT_INV_Equal0~2_combout\,
	datac => \i1|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_reset~input_o\,
	datae => \i1|ALT_INV_Equal0~6_combout\,
	dataf => \i1|ALT_INV_Add0~69_sumout\,
	combout => \i1|counter~5_combout\);

-- Location: FF_X82_Y21_N56
\i1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~5_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(2));

-- Location: LABCELL_X81_Y22_N9
\i1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~65_sumout\ = SUM(( !\i1|counter\(3) ) + ( VCC ) + ( \i1|Add0~70\ ))
-- \i1|Add0~66\ = CARRY(( !\i1|counter\(3) ) + ( VCC ) + ( \i1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i1|ALT_INV_counter\(3),
	cin => \i1|Add0~70\,
	sumout => \i1|Add0~65_sumout\,
	cout => \i1|Add0~66\);

-- Location: MLABCELL_X82_Y21_N15
\i1|counter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~4_combout\ = ( \i1|Equal0~6_combout\ & ( !\i1|Add0~65_sumout\ & ( (\reset~input_o\ & ((!\i1|Equal0~1_combout\) # ((!\i1|Equal0~2_combout\) # (!\i1|Equal0~0_combout\)))) ) ) ) # ( !\i1|Equal0~6_combout\ & ( !\i1|Add0~65_sumout\ & ( 
-- \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Equal0~1_combout\,
	datab => \i1|ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \i1|ALT_INV_Equal0~0_combout\,
	datae => \i1|ALT_INV_Equal0~6_combout\,
	dataf => \i1|ALT_INV_Add0~65_sumout\,
	combout => \i1|counter~4_combout\);

-- Location: FF_X82_Y21_N17
\i1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~4_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(3));

-- Location: LABCELL_X81_Y22_N12
\i1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~61_sumout\ = SUM(( !\i1|counter\(4) ) + ( VCC ) + ( \i1|Add0~66\ ))
-- \i1|Add0~62\ = CARRY(( !\i1|counter\(4) ) + ( VCC ) + ( \i1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i1|ALT_INV_counter\(4),
	cin => \i1|Add0~66\,
	sumout => \i1|Add0~61_sumout\,
	cout => \i1|Add0~62\);

-- Location: MLABCELL_X82_Y21_N48
\i1|counter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~3_combout\ = ( \reset~input_o\ & ( !\i1|Add0~61_sumout\ & ( (!\i1|Equal0~1_combout\) # ((!\i1|Equal0~2_combout\) # ((!\i1|Equal0~0_combout\) # (!\i1|Equal0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Equal0~1_combout\,
	datab => \i1|ALT_INV_Equal0~2_combout\,
	datac => \i1|ALT_INV_Equal0~0_combout\,
	datad => \i1|ALT_INV_Equal0~6_combout\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \i1|ALT_INV_Add0~61_sumout\,
	combout => \i1|counter~3_combout\);

-- Location: FF_X82_Y21_N50
\i1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~3_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(4));

-- Location: LABCELL_X81_Y22_N15
\i1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~57_sumout\ = SUM(( !\i1|counter\(5) ) + ( VCC ) + ( \i1|Add0~62\ ))
-- \i1|Add0~58\ = CARRY(( !\i1|counter\(5) ) + ( VCC ) + ( \i1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i1|ALT_INV_counter\(5),
	cin => \i1|Add0~62\,
	sumout => \i1|Add0~57_sumout\,
	cout => \i1|Add0~58\);

-- Location: MLABCELL_X82_Y22_N15
\i1|counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~2_combout\ = ( \i1|Equal0~2_combout\ & ( !\i1|Add0~57_sumout\ & ( (\reset~input_o\ & ((!\i1|Equal0~0_combout\) # ((!\i1|Equal0~6_combout\) # (!\i1|Equal0~1_combout\)))) ) ) ) # ( !\i1|Equal0~2_combout\ & ( !\i1|Add0~57_sumout\ & ( 
-- \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_reset~input_o\,
	datac => \i1|ALT_INV_Equal0~6_combout\,
	datad => \i1|ALT_INV_Equal0~1_combout\,
	datae => \i1|ALT_INV_Equal0~2_combout\,
	dataf => \i1|ALT_INV_Add0~57_sumout\,
	combout => \i1|counter~2_combout\);

-- Location: FF_X82_Y22_N17
\i1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~2_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(5));

-- Location: MLABCELL_X82_Y21_N42
\i1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Equal0~3_combout\ = ( \i1|counter\(0) & ( \i1|counter\(5) & ( (\i1|counter\(2) & (\i1|counter\(1) & (\i1|counter\(4) & \i1|counter\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_counter\(2),
	datab => \i1|ALT_INV_counter\(1),
	datac => \i1|ALT_INV_counter\(4),
	datad => \i1|ALT_INV_counter\(3),
	datae => \i1|ALT_INV_counter\(0),
	dataf => \i1|ALT_INV_counter\(5),
	combout => \i1|Equal0~3_combout\);

-- Location: MLABCELL_X82_Y21_N30
\i1|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Equal0~6_combout\ = ( \i1|Equal0~3_combout\ & ( (\i1|Equal0~5_combout\ & \i1|Equal0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_Equal0~5_combout\,
	datad => \i1|ALT_INV_Equal0~4_combout\,
	dataf => \i1|ALT_INV_Equal0~3_combout\,
	combout => \i1|Equal0~6_combout\);

-- Location: LABCELL_X81_Y21_N45
\i1|counter[23]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter[23]~0_combout\ = ( \i1|Equal0~6_combout\ & ( (!\reset~input_o\) # ((\i1|Equal0~1_combout\ & (\i1|Equal0~2_combout\ & \i1|Equal0~0_combout\))) ) ) # ( !\i1|Equal0~6_combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010111010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \i1|ALT_INV_Equal0~1_combout\,
	datac => \i1|ALT_INV_Equal0~2_combout\,
	datad => \i1|ALT_INV_Equal0~0_combout\,
	dataf => \i1|ALT_INV_Equal0~6_combout\,
	combout => \i1|counter[23]~0_combout\);

-- Location: FF_X81_Y22_N29
\i1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(9));

-- Location: LABCELL_X81_Y22_N30
\i1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~41_sumout\ = SUM(( \i1|counter\(10) ) + ( VCC ) + ( \i1|Add0~38\ ))
-- \i1|Add0~42\ = CARRY(( \i1|counter\(10) ) + ( VCC ) + ( \i1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_counter\(10),
	cin => \i1|Add0~38\,
	sumout => \i1|Add0~41_sumout\,
	cout => \i1|Add0~42\);

-- Location: FF_X81_Y22_N32
\i1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(10));

-- Location: FF_X81_Y22_N35
\i1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(11));

-- Location: LABCELL_X81_Y21_N12
\i1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~33_sumout\ = SUM(( \i1|counter\(24) ) + ( VCC ) + ( \i1|Add0~86\ ))
-- \i1|Add0~34\ = CARRY(( \i1|counter\(24) ) + ( VCC ) + ( \i1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_counter\(24),
	cin => \i1|Add0~86\,
	sumout => \i1|Add0~33_sumout\,
	cout => \i1|Add0~34\);

-- Location: FF_X81_Y21_N14
\i1|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(24));

-- Location: LABCELL_X81_Y21_N48
\i1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Equal0~2_combout\ = ( !\i1|counter\(18) & ( !\i1|counter\(10) & ( (!\i1|counter\(11) & (!\i1|counter\(9) & (!\i1|counter\(16) & !\i1|counter\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_counter\(11),
	datab => \i1|ALT_INV_counter\(9),
	datac => \i1|ALT_INV_counter\(16),
	datad => \i1|ALT_INV_counter\(24),
	datae => \i1|ALT_INV_counter\(18),
	dataf => \i1|ALT_INV_counter\(10),
	combout => \i1|Equal0~2_combout\);

-- Location: LABCELL_X81_Y21_N54
\i1|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Equal0~7_combout\ = ( \i1|Equal0~0_combout\ & ( \i1|Equal0~5_combout\ & ( (\i1|Equal0~2_combout\ & (\i1|Equal0~3_combout\ & (\i1|Equal0~4_combout\ & \i1|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Equal0~2_combout\,
	datab => \i1|ALT_INV_Equal0~3_combout\,
	datac => \i1|ALT_INV_Equal0~4_combout\,
	datad => \i1|ALT_INV_Equal0~1_combout\,
	datae => \i1|ALT_INV_Equal0~0_combout\,
	dataf => \i1|ALT_INV_Equal0~5_combout\,
	combout => \i1|Equal0~7_combout\);

-- Location: LABCELL_X81_Y21_N15
\i1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~81_sumout\ = SUM(( !\i1|counter\(25) ) + ( VCC ) + ( \i1|Add0~34\ ))
-- \i1|Add0~82\ = CARRY(( !\i1|counter\(25) ) + ( VCC ) + ( \i1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(25),
	cin => \i1|Add0~34\,
	sumout => \i1|Add0~81_sumout\,
	cout => \i1|Add0~82\);

-- Location: LABCELL_X81_Y21_N42
\i1|counter~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~8_combout\ = ( !\i1|Add0~81_sumout\ & ( (\reset~input_o\ & !\i1|Equal0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \i1|ALT_INV_Equal0~7_combout\,
	dataf => \i1|ALT_INV_Add0~81_sumout\,
	combout => \i1|counter~8_combout\);

-- Location: FF_X81_Y21_N44
\i1|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~8_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(25));

-- Location: LABCELL_X81_Y21_N18
\i1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~29_sumout\ = SUM(( \i1|counter\(26) ) + ( VCC ) + ( \i1|Add0~82\ ))
-- \i1|Add0~30\ = CARRY(( \i1|counter\(26) ) + ( VCC ) + ( \i1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(26),
	cin => \i1|Add0~82\,
	sumout => \i1|Add0~29_sumout\,
	cout => \i1|Add0~30\);

-- Location: FF_X81_Y21_N20
\i1|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(26));

-- Location: LABCELL_X81_Y21_N21
\i1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~25_sumout\ = SUM(( \i1|counter\(27) ) + ( VCC ) + ( \i1|Add0~30\ ))
-- \i1|Add0~26\ = CARRY(( \i1|counter\(27) ) + ( VCC ) + ( \i1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i1|ALT_INV_counter\(27),
	cin => \i1|Add0~30\,
	sumout => \i1|Add0~25_sumout\,
	cout => \i1|Add0~26\);

-- Location: FF_X81_Y21_N23
\i1|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(27));

-- Location: LABCELL_X81_Y21_N24
\i1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~21_sumout\ = SUM(( \i1|counter\(28) ) + ( VCC ) + ( \i1|Add0~26\ ))
-- \i1|Add0~22\ = CARRY(( \i1|counter\(28) ) + ( VCC ) + ( \i1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i1|ALT_INV_counter\(28),
	cin => \i1|Add0~26\,
	sumout => \i1|Add0~21_sumout\,
	cout => \i1|Add0~22\);

-- Location: FF_X81_Y21_N26
\i1|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(28));

-- Location: LABCELL_X81_Y21_N27
\i1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~17_sumout\ = SUM(( \i1|counter\(29) ) + ( VCC ) + ( \i1|Add0~22\ ))
-- \i1|Add0~18\ = CARRY(( \i1|counter\(29) ) + ( VCC ) + ( \i1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i1|ALT_INV_counter\(29),
	cin => \i1|Add0~22\,
	sumout => \i1|Add0~17_sumout\,
	cout => \i1|Add0~18\);

-- Location: FF_X81_Y21_N29
\i1|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(29));

-- Location: LABCELL_X81_Y21_N30
\i1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~13_sumout\ = SUM(( \i1|counter\(30) ) + ( VCC ) + ( \i1|Add0~18\ ))
-- \i1|Add0~14\ = CARRY(( \i1|counter\(30) ) + ( VCC ) + ( \i1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i1|ALT_INV_counter\(30),
	cin => \i1|Add0~18\,
	sumout => \i1|Add0~13_sumout\,
	cout => \i1|Add0~14\);

-- Location: FF_X81_Y21_N32
\i1|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(30));

-- Location: LABCELL_X81_Y21_N33
\i1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~9_sumout\ = SUM(( \i1|counter\(31) ) + ( VCC ) + ( \i1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_counter\(31),
	cin => \i1|Add0~14\,
	sumout => \i1|Add0~9_sumout\);

-- Location: FF_X81_Y21_N35
\i1|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(31));

-- Location: LABCELL_X80_Y21_N48
\i1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Equal0~1_combout\ = ( !\i1|counter\(27) & ( !\i1|counter\(31) & ( (!\i1|counter\(30) & (!\i1|counter\(28) & (!\i1|counter\(29) & !\i1|counter\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_counter\(30),
	datab => \i1|ALT_INV_counter\(28),
	datac => \i1|ALT_INV_counter\(29),
	datad => \i1|ALT_INV_counter\(26),
	datae => \i1|ALT_INV_counter\(27),
	dataf => \i1|ALT_INV_counter\(31),
	combout => \i1|Equal0~1_combout\);

-- Location: LABCELL_X81_Y22_N18
\i1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~125_sumout\ = SUM(( !\i1|counter\(6) ) + ( VCC ) + ( \i1|Add0~58\ ))
-- \i1|Add0~126\ = CARRY(( !\i1|counter\(6) ) + ( VCC ) + ( \i1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i1|ALT_INV_counter\(6),
	cin => \i1|Add0~58\,
	sumout => \i1|Add0~125_sumout\,
	cout => \i1|Add0~126\);

-- Location: MLABCELL_X82_Y21_N0
\i1|counter~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|counter~19_combout\ = ( \i1|Equal0~0_combout\ & ( \i1|Equal0~6_combout\ & ( (\reset~input_o\ & (!\i1|Add0~125_sumout\ & ((!\i1|Equal0~1_combout\) # (!\i1|Equal0~2_combout\)))) ) ) ) # ( !\i1|Equal0~0_combout\ & ( \i1|Equal0~6_combout\ & ( 
-- (\reset~input_o\ & !\i1|Add0~125_sumout\) ) ) ) # ( \i1|Equal0~0_combout\ & ( !\i1|Equal0~6_combout\ & ( (\reset~input_o\ & !\i1|Add0~125_sumout\) ) ) ) # ( !\i1|Equal0~0_combout\ & ( !\i1|Equal0~6_combout\ & ( (\reset~input_o\ & !\i1|Add0~125_sumout\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_reset~input_o\,
	datac => \i1|ALT_INV_Add0~125_sumout\,
	datad => \i1|ALT_INV_Equal0~2_combout\,
	datae => \i1|ALT_INV_Equal0~0_combout\,
	dataf => \i1|ALT_INV_Equal0~6_combout\,
	combout => \i1|counter~19_combout\);

-- Location: FF_X82_Y21_N2
\i1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|counter~19_combout\,
	clrn => \reset~input_o\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(6));

-- Location: LABCELL_X81_Y22_N21
\i1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Add0~5_sumout\ = SUM(( \i1|counter\(7) ) + ( VCC ) + ( \i1|Add0~126\ ))
-- \i1|Add0~6\ = CARRY(( \i1|counter\(7) ) + ( VCC ) + ( \i1|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i1|ALT_INV_counter\(7),
	cin => \i1|Add0~126\,
	sumout => \i1|Add0~5_sumout\,
	cout => \i1|Add0~6\);

-- Location: FF_X81_Y22_N23
\i1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(7));

-- Location: FF_X81_Y22_N26
\i1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \i1|counter[23]~0_combout\,
	ena => \i1|counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|counter\(8));

-- Location: LABCELL_X80_Y21_N6
\i1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|Equal0~0_combout\ = ( !\i1|counter\(7) & ( !\i1|counter\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i1|ALT_INV_counter\(8),
	dataf => \i1|ALT_INV_counter\(7),
	combout => \i1|Equal0~0_combout\);

-- Location: MLABCELL_X82_Y21_N24
\i1|en_out_internal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1|en_out_internal~0_combout\ = ( \i1|en_out_internal~q\ & ( \i1|Equal0~6_combout\ & ( (!\enable~input_o\) # ((\i1|Equal0~0_combout\ & (\i1|Equal0~1_combout\ & \i1|Equal0~2_combout\))) ) ) ) # ( !\i1|en_out_internal~q\ & ( \i1|Equal0~6_combout\ & ( 
-- (\i1|Equal0~0_combout\ & (\enable~input_o\ & (\i1|Equal0~1_combout\ & \i1|Equal0~2_combout\))) ) ) ) # ( \i1|en_out_internal~q\ & ( !\i1|Equal0~6_combout\ & ( !\enable~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i1|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_enable~input_o\,
	datac => \i1|ALT_INV_Equal0~1_combout\,
	datad => \i1|ALT_INV_Equal0~2_combout\,
	datae => \i1|ALT_INV_en_out_internal~q\,
	dataf => \i1|ALT_INV_Equal0~6_combout\,
	combout => \i1|en_out_internal~0_combout\);

-- Location: FF_X82_Y21_N26
\i1|en_out_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i1|en_out_internal~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i1|en_out_internal~q\);

-- Location: FF_X80_Y21_N55
\i2|count_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i2|count_reg[0]~1_combout\,
	clrn => \reset~input_o\,
	ena => \i1|en_out_internal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|count_reg\(0));

-- Location: LABCELL_X80_Y21_N0
\i3|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i3|Mux5~1_combout\ = ( !\i2|count_reg\(1) & ( \i2|count_reg\(0) ) ) # ( \i2|count_reg\(1) & ( !\i2|count_reg\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \i2|ALT_INV_count_reg\(1),
	dataf => \i2|ALT_INV_count_reg\(0),
	combout => \i3|Mux5~1_combout\);

-- Location: FF_X80_Y21_N2
\i2|count_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i3|Mux5~1_combout\,
	clrn => \reset~input_o\,
	ena => \i1|en_out_internal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|count_reg\(1));

-- Location: LABCELL_X80_Y21_N36
\i2|count_reg[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2|count_reg[2]~0_combout\ = ( \i2|count_reg\(0) & ( !\i2|count_reg\(2) $ (((!\i2|count_reg\(1)) # (!\i1|en_out_internal~q\))) ) ) # ( !\i2|count_reg\(0) & ( \i2|count_reg\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ALT_INV_count_reg\(1),
	datac => \i1|ALT_INV_en_out_internal~q\,
	datad => \i2|ALT_INV_count_reg\(2),
	dataf => \i2|ALT_INV_count_reg\(0),
	combout => \i2|count_reg[2]~0_combout\);

-- Location: FF_X80_Y21_N38
\i2|count_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i2|count_reg[2]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|count_reg\(2));

-- Location: FF_X80_Y21_N1
\i2|count_reg[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \i3|Mux5~1_combout\,
	clrn => \reset~input_o\,
	ena => \i1|en_out_internal~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2|count_reg[1]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y21_N42
\i3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i3|Mux6~0_combout\ = ( !\i2|count_reg[1]~DUPLICATE_q\ & ( !\i2|count_reg\(0) $ (!\i2|count_reg\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2|ALT_INV_count_reg\(0),
	datad => \i2|ALT_INV_count_reg\(2),
	dataf => \i2|ALT_INV_count_reg[1]~DUPLICATE_q\,
	combout => \i3|Mux6~0_combout\);

-- Location: LABCELL_X80_Y21_N27
\i3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i3|Mux5~0_combout\ = ( \i2|count_reg[1]~DUPLICATE_q\ & ( (!\i2|count_reg\(0) & \i2|count_reg\(2)) ) ) # ( !\i2|count_reg[1]~DUPLICATE_q\ & ( (\i2|count_reg\(0) & \i2|count_reg\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ALT_INV_count_reg\(0),
	datad => \i2|ALT_INV_count_reg\(2),
	dataf => \i2|ALT_INV_count_reg[1]~DUPLICATE_q\,
	combout => \i3|Mux5~0_combout\);

-- Location: LABCELL_X80_Y21_N57
\i3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i3|Mux4~0_combout\ = ( !\i2|count_reg\(0) & ( (!\i2|count_reg\(2) & \i2|count_reg[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ALT_INV_count_reg\(2),
	datac => \i2|ALT_INV_count_reg[1]~DUPLICATE_q\,
	dataf => \i2|ALT_INV_count_reg\(0),
	combout => \i3|Mux4~0_combout\);

-- Location: LABCELL_X80_Y21_N33
\i3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i3|Mux3~0_combout\ = ( \i2|count_reg[1]~DUPLICATE_q\ & ( (\i2|count_reg\(0) & \i2|count_reg\(2)) ) ) # ( !\i2|count_reg[1]~DUPLICATE_q\ & ( !\i2|count_reg\(0) $ (!\i2|count_reg\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ALT_INV_count_reg\(0),
	datad => \i2|ALT_INV_count_reg\(2),
	dataf => \i2|ALT_INV_count_reg[1]~DUPLICATE_q\,
	combout => \i3|Mux3~0_combout\);

-- Location: LABCELL_X80_Y21_N12
\i3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i3|Mux2~0_combout\ = ( \i2|count_reg\(2) & ( \i2|count_reg[1]~DUPLICATE_q\ & ( \i2|count_reg\(0) ) ) ) # ( !\i2|count_reg\(2) & ( \i2|count_reg[1]~DUPLICATE_q\ & ( \i2|count_reg\(0) ) ) ) # ( \i2|count_reg\(2) & ( !\i2|count_reg[1]~DUPLICATE_q\ ) ) # ( 
-- !\i2|count_reg\(2) & ( !\i2|count_reg[1]~DUPLICATE_q\ & ( \i2|count_reg\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i2|ALT_INV_count_reg\(0),
	datae => \i2|ALT_INV_count_reg\(2),
	dataf => \i2|ALT_INV_count_reg[1]~DUPLICATE_q\,
	combout => \i3|Mux2~0_combout\);

-- Location: LABCELL_X80_Y21_N39
\i3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i3|Mux1~0_combout\ = ( \i2|count_reg\(0) & ( (!\i2|count_reg\(2)) # (\i2|count_reg[1]~DUPLICATE_q\) ) ) # ( !\i2|count_reg\(0) & ( (\i2|count_reg[1]~DUPLICATE_q\ & !\i2|count_reg\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i2|ALT_INV_count_reg[1]~DUPLICATE_q\,
	datad => \i2|ALT_INV_count_reg\(2),
	dataf => \i2|ALT_INV_count_reg\(0),
	combout => \i3|Mux1~0_combout\);

-- Location: LABCELL_X80_Y21_N9
\i3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i3|Mux0~0_combout\ = ( \i2|count_reg\(0) & ( !\i2|count_reg\(2) $ (\i2|count_reg[1]~DUPLICATE_q\) ) ) # ( !\i2|count_reg\(0) & ( (!\i2|count_reg\(2) & !\i2|count_reg[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i2|ALT_INV_count_reg\(2),
	datac => \i2|ALT_INV_count_reg[1]~DUPLICATE_q\,
	dataf => \i2|ALT_INV_count_reg\(0),
	combout => \i3|Mux0~0_combout\);

-- Location: LABCELL_X62_Y5_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


