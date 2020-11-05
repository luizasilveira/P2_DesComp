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

-- DATE "11/05/2020 15:19:34"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	FluxoDados IS
    PORT (
	CLOCK_50 : IN std_logic;
	saida_ULA : OUT std_logic_vector(31 DOWNTO 0);
	saida_ROM : OUT std_logic_vector(31 DOWNTO 0);
	saida_A : OUT std_logic_vector(31 DOWNTO 0);
	saida_B : OUT std_logic_vector(31 DOWNTO 0)
	);
END FluxoDados;

ARCHITECTURE structure OF FluxoDados IS
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
SIGNAL ww_saida_ULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida_ROM : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida_B : std_logic_vector(31 DOWNTO 0);
SIGNAL \saida_ULA[0]~output_o\ : std_logic;
SIGNAL \saida_ULA[1]~output_o\ : std_logic;
SIGNAL \saida_ULA[2]~output_o\ : std_logic;
SIGNAL \saida_ULA[3]~output_o\ : std_logic;
SIGNAL \saida_ULA[4]~output_o\ : std_logic;
SIGNAL \saida_ULA[5]~output_o\ : std_logic;
SIGNAL \saida_ULA[6]~output_o\ : std_logic;
SIGNAL \saida_ULA[7]~output_o\ : std_logic;
SIGNAL \saida_ULA[8]~output_o\ : std_logic;
SIGNAL \saida_ULA[9]~output_o\ : std_logic;
SIGNAL \saida_ULA[10]~output_o\ : std_logic;
SIGNAL \saida_ULA[11]~output_o\ : std_logic;
SIGNAL \saida_ULA[12]~output_o\ : std_logic;
SIGNAL \saida_ULA[13]~output_o\ : std_logic;
SIGNAL \saida_ULA[14]~output_o\ : std_logic;
SIGNAL \saida_ULA[15]~output_o\ : std_logic;
SIGNAL \saida_ULA[16]~output_o\ : std_logic;
SIGNAL \saida_ULA[17]~output_o\ : std_logic;
SIGNAL \saida_ULA[18]~output_o\ : std_logic;
SIGNAL \saida_ULA[19]~output_o\ : std_logic;
SIGNAL \saida_ULA[20]~output_o\ : std_logic;
SIGNAL \saida_ULA[21]~output_o\ : std_logic;
SIGNAL \saida_ULA[22]~output_o\ : std_logic;
SIGNAL \saida_ULA[23]~output_o\ : std_logic;
SIGNAL \saida_ULA[24]~output_o\ : std_logic;
SIGNAL \saida_ULA[25]~output_o\ : std_logic;
SIGNAL \saida_ULA[26]~output_o\ : std_logic;
SIGNAL \saida_ULA[27]~output_o\ : std_logic;
SIGNAL \saida_ULA[28]~output_o\ : std_logic;
SIGNAL \saida_ULA[29]~output_o\ : std_logic;
SIGNAL \saida_ULA[30]~output_o\ : std_logic;
SIGNAL \saida_ULA[31]~output_o\ : std_logic;
SIGNAL \saida_ROM[0]~output_o\ : std_logic;
SIGNAL \saida_ROM[1]~output_o\ : std_logic;
SIGNAL \saida_ROM[2]~output_o\ : std_logic;
SIGNAL \saida_ROM[3]~output_o\ : std_logic;
SIGNAL \saida_ROM[4]~output_o\ : std_logic;
SIGNAL \saida_ROM[5]~output_o\ : std_logic;
SIGNAL \saida_ROM[6]~output_o\ : std_logic;
SIGNAL \saida_ROM[7]~output_o\ : std_logic;
SIGNAL \saida_ROM[8]~output_o\ : std_logic;
SIGNAL \saida_ROM[9]~output_o\ : std_logic;
SIGNAL \saida_ROM[10]~output_o\ : std_logic;
SIGNAL \saida_ROM[11]~output_o\ : std_logic;
SIGNAL \saida_ROM[12]~output_o\ : std_logic;
SIGNAL \saida_ROM[13]~output_o\ : std_logic;
SIGNAL \saida_ROM[14]~output_o\ : std_logic;
SIGNAL \saida_ROM[15]~output_o\ : std_logic;
SIGNAL \saida_ROM[16]~output_o\ : std_logic;
SIGNAL \saida_ROM[17]~output_o\ : std_logic;
SIGNAL \saida_ROM[18]~output_o\ : std_logic;
SIGNAL \saida_ROM[19]~output_o\ : std_logic;
SIGNAL \saida_ROM[20]~output_o\ : std_logic;
SIGNAL \saida_ROM[21]~output_o\ : std_logic;
SIGNAL \saida_ROM[22]~output_o\ : std_logic;
SIGNAL \saida_ROM[23]~output_o\ : std_logic;
SIGNAL \saida_ROM[24]~output_o\ : std_logic;
SIGNAL \saida_ROM[25]~output_o\ : std_logic;
SIGNAL \saida_ROM[26]~output_o\ : std_logic;
SIGNAL \saida_ROM[27]~output_o\ : std_logic;
SIGNAL \saida_ROM[28]~output_o\ : std_logic;
SIGNAL \saida_ROM[29]~output_o\ : std_logic;
SIGNAL \saida_ROM[30]~output_o\ : std_logic;
SIGNAL \saida_ROM[31]~output_o\ : std_logic;
SIGNAL \saida_A[0]~output_o\ : std_logic;
SIGNAL \saida_A[1]~output_o\ : std_logic;
SIGNAL \saida_A[2]~output_o\ : std_logic;
SIGNAL \saida_A[3]~output_o\ : std_logic;
SIGNAL \saida_A[4]~output_o\ : std_logic;
SIGNAL \saida_A[5]~output_o\ : std_logic;
SIGNAL \saida_A[6]~output_o\ : std_logic;
SIGNAL \saida_A[7]~output_o\ : std_logic;
SIGNAL \saida_A[8]~output_o\ : std_logic;
SIGNAL \saida_A[9]~output_o\ : std_logic;
SIGNAL \saida_A[10]~output_o\ : std_logic;
SIGNAL \saida_A[11]~output_o\ : std_logic;
SIGNAL \saida_A[12]~output_o\ : std_logic;
SIGNAL \saida_A[13]~output_o\ : std_logic;
SIGNAL \saida_A[14]~output_o\ : std_logic;
SIGNAL \saida_A[15]~output_o\ : std_logic;
SIGNAL \saida_A[16]~output_o\ : std_logic;
SIGNAL \saida_A[17]~output_o\ : std_logic;
SIGNAL \saida_A[18]~output_o\ : std_logic;
SIGNAL \saida_A[19]~output_o\ : std_logic;
SIGNAL \saida_A[20]~output_o\ : std_logic;
SIGNAL \saida_A[21]~output_o\ : std_logic;
SIGNAL \saida_A[22]~output_o\ : std_logic;
SIGNAL \saida_A[23]~output_o\ : std_logic;
SIGNAL \saida_A[24]~output_o\ : std_logic;
SIGNAL \saida_A[25]~output_o\ : std_logic;
SIGNAL \saida_A[26]~output_o\ : std_logic;
SIGNAL \saida_A[27]~output_o\ : std_logic;
SIGNAL \saida_A[28]~output_o\ : std_logic;
SIGNAL \saida_A[29]~output_o\ : std_logic;
SIGNAL \saida_A[30]~output_o\ : std_logic;
SIGNAL \saida_A[31]~output_o\ : std_logic;
SIGNAL \saida_B[0]~output_o\ : std_logic;
SIGNAL \saida_B[1]~output_o\ : std_logic;
SIGNAL \saida_B[2]~output_o\ : std_logic;
SIGNAL \saida_B[3]~output_o\ : std_logic;
SIGNAL \saida_B[4]~output_o\ : std_logic;
SIGNAL \saida_B[5]~output_o\ : std_logic;
SIGNAL \saida_B[6]~output_o\ : std_logic;
SIGNAL \saida_B[7]~output_o\ : std_logic;
SIGNAL \saida_B[8]~output_o\ : std_logic;
SIGNAL \saida_B[9]~output_o\ : std_logic;
SIGNAL \saida_B[10]~output_o\ : std_logic;
SIGNAL \saida_B[11]~output_o\ : std_logic;
SIGNAL \saida_B[12]~output_o\ : std_logic;
SIGNAL \saida_B[13]~output_o\ : std_logic;
SIGNAL \saida_B[14]~output_o\ : std_logic;
SIGNAL \saida_B[15]~output_o\ : std_logic;
SIGNAL \saida_B[16]~output_o\ : std_logic;
SIGNAL \saida_B[17]~output_o\ : std_logic;
SIGNAL \saida_B[18]~output_o\ : std_logic;
SIGNAL \saida_B[19]~output_o\ : std_logic;
SIGNAL \saida_B[20]~output_o\ : std_logic;
SIGNAL \saida_B[21]~output_o\ : std_logic;
SIGNAL \saida_B[22]~output_o\ : std_logic;
SIGNAL \saida_B[23]~output_o\ : std_logic;
SIGNAL \saida_B[24]~output_o\ : std_logic;
SIGNAL \saida_B[25]~output_o\ : std_logic;
SIGNAL \saida_B[26]~output_o\ : std_logic;
SIGNAL \saida_B[27]~output_o\ : std_logic;
SIGNAL \saida_B[28]~output_o\ : std_logic;
SIGNAL \saida_B[29]~output_o\ : std_logic;
SIGNAL \saida_B[30]~output_o\ : std_logic;
SIGNAL \saida_B[31]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \inc|Add0~1_sumout\ : std_logic;
SIGNAL \inc|Add0~2\ : std_logic;
SIGNAL \inc|Add0~5_sumout\ : std_logic;
SIGNAL \inc|Add0~6\ : std_logic;
SIGNAL \inc|Add0~9_sumout\ : std_logic;
SIGNAL \inc|Add0~10\ : std_logic;
SIGNAL \inc|Add0~17_sumout\ : std_logic;
SIGNAL \inc|Add0~18\ : std_logic;
SIGNAL \inc|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \UC|Equal0~0_combout\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \UC|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 2);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
saida_ULA <= ww_saida_ULA;
saida_ROM <= ww_saida_ROM;
saida_A <= ww_saida_A;
saida_B <= ww_saida_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\UC|ALT_INV_Equal0~0_combout\ <= NOT \UC|Equal0~0_combout\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);

\saida_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~1_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[0]~output_o\);

\saida_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~5_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[1]~output_o\);

\saida_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~9_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[2]~output_o\);

\saida_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~13_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[3]~output_o\);

\saida_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~17_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[4]~output_o\);

\saida_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~21_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[5]~output_o\);

\saida_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~25_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[6]~output_o\);

\saida_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~29_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[7]~output_o\);

\saida_ULA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~33_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[8]~output_o\);

\saida_ULA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~37_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[9]~output_o\);

\saida_ULA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~41_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[10]~output_o\);

\saida_ULA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~45_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[11]~output_o\);

\saida_ULA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~49_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[12]~output_o\);

\saida_ULA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~53_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[13]~output_o\);

\saida_ULA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~57_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[14]~output_o\);

\saida_ULA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~61_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[15]~output_o\);

\saida_ULA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~65_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[16]~output_o\);

\saida_ULA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~69_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[17]~output_o\);

\saida_ULA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~73_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[18]~output_o\);

\saida_ULA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~77_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[19]~output_o\);

\saida_ULA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~81_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[20]~output_o\);

\saida_ULA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~85_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[21]~output_o\);

\saida_ULA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~89_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[22]~output_o\);

\saida_ULA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~93_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[23]~output_o\);

\saida_ULA[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~97_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[24]~output_o\);

\saida_ULA[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~101_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[25]~output_o\);

\saida_ULA[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~105_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[26]~output_o\);

\saida_ULA[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~109_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[27]~output_o\);

\saida_ULA[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~113_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[28]~output_o\);

\saida_ULA[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~117_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[29]~output_o\);

\saida_ULA[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~121_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[30]~output_o\);

\saida_ULA[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~125_sumout\,
	devoe => ww_devoe,
	o => \saida_ULA[31]~output_o\);

\saida_ROM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[0]~output_o\);

\saida_ROM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[1]~output_o\);

\saida_ROM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[2]~output_o\);

\saida_ROM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[3]~output_o\);

\saida_ROM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[4]~output_o\);

\saida_ROM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[5]~output_o\);

\saida_ROM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[6]~output_o\);

\saida_ROM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[7]~output_o\);

\saida_ROM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[8]~output_o\);

\saida_ROM[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[9]~output_o\);

\saida_ROM[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[10]~output_o\);

\saida_ROM[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[11]~output_o\);

\saida_ROM[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[12]~output_o\);

\saida_ROM[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[13]~output_o\);

\saida_ROM[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[14]~output_o\);

\saida_ROM[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[15]~output_o\);

\saida_ROM[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[16]~output_o\);

\saida_ROM[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[17]~output_o\);

\saida_ROM[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[18]~output_o\);

\saida_ROM[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[19]~output_o\);

\saida_ROM[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[20]~output_o\);

\saida_ROM[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[21]~output_o\);

\saida_ROM[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saida_ROM[22]~output_o\);

\saida_ROM[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[23]~output_o\);

\saida_ROM[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[24]~output_o\);

\saida_ROM[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[25]~output_o\);

\saida_ROM[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[26]~output_o\);

\saida_ROM[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[27]~output_o\);

\saida_ROM[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[28]~output_o\);

\saida_ROM[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[29]~output_o\);

\saida_ROM[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[30]~output_o\);

\saida_ROM[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ROM[31]~output_o\);

\saida_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saida_A[0]~output_o\);

\saida_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[1]~output_o\);

\saida_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[2]~output_o\);

\saida_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[3]~output_o\);

\saida_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[4]~output_o\);

\saida_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[5]~output_o\);

\saida_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[6]~output_o\);

\saida_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[7]~output_o\);

\saida_A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[8]~output_o\);

\saida_A[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[9]~output_o\);

\saida_A[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[10]~output_o\);

\saida_A[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[11]~output_o\);

\saida_A[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[12]~output_o\);

\saida_A[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[13]~output_o\);

\saida_A[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[14]~output_o\);

\saida_A[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[15]~output_o\);

\saida_A[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[16]~output_o\);

\saida_A[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[17]~output_o\);

\saida_A[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[18]~output_o\);

\saida_A[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[19]~output_o\);

\saida_A[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[20]~output_o\);

\saida_A[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[21]~output_o\);

\saida_A[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[22]~output_o\);

\saida_A[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[23]~output_o\);

\saida_A[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[24]~output_o\);

\saida_A[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[25]~output_o\);

\saida_A[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[26]~output_o\);

\saida_A[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[27]~output_o\);

\saida_A[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[28]~output_o\);

\saida_A[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[29]~output_o\);

\saida_A[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[30]~output_o\);

\saida_A[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_A[31]~output_o\);

\saida_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \saida_B[0]~output_o\);

\saida_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[1]~output_o\);

\saida_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[2]~output_o\);

\saida_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[3]~output_o\);

\saida_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[4]~output_o\);

\saida_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[5]~output_o\);

\saida_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[6]~output_o\);

\saida_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[7]~output_o\);

\saida_B[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[8]~output_o\);

\saida_B[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[9]~output_o\);

\saida_B[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[10]~output_o\);

\saida_B[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[11]~output_o\);

\saida_B[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[12]~output_o\);

\saida_B[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[13]~output_o\);

\saida_B[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[14]~output_o\);

\saida_B[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[15]~output_o\);

\saida_B[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[16]~output_o\);

\saida_B[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[17]~output_o\);

\saida_B[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[18]~output_o\);

\saida_B[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[19]~output_o\);

\saida_B[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[20]~output_o\);

\saida_B[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[21]~output_o\);

\saida_B[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[22]~output_o\);

\saida_B[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[23]~output_o\);

\saida_B[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[24]~output_o\);

\saida_B[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[25]~output_o\);

\saida_B[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[26]~output_o\);

\saida_B[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[27]~output_o\);

\saida_B[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[28]~output_o\);

\saida_B[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[29]~output_o\);

\saida_B[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[30]~output_o\);

\saida_B[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_B[31]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~0_combout\ = !\PC|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~0_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\inc|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc|Add0~1_sumout\ = SUM(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))
-- \inc|Add0~2\ = CARRY(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \inc|Add0~1_sumout\,
	cout => \inc|Add0~2\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inc|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\inc|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc|Add0~5_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \inc|Add0~2\ ))
-- \inc|Add0~6\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \inc|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \inc|Add0~2\,
	sumout => \inc|Add0~5_sumout\,
	cout => \inc|Add0~6\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inc|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\inc|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc|Add0~9_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \inc|Add0~6\ ))
-- \inc|Add0~10\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \inc|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \inc|Add0~6\,
	sumout => \inc|Add0~9_sumout\,
	cout => \inc|Add0~10\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inc|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\inc|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc|Add0~17_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \inc|Add0~10\ ))
-- \inc|Add0~18\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \inc|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \inc|Add0~10\,
	sumout => \inc|Add0~17_sumout\,
	cout => \inc|Add0~18\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inc|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\inc|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inc|Add0~13_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \inc|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \inc|Add0~18\,
	sumout => \inc|Add0~13_sumout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inc|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~0_combout\);

\UC|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC|Equal0~0_combout\ = ( !\PC|DOUT\(6) & ( \PC|DOUT\(2) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & !\PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \UC|Equal0~0_combout\);

\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( \UC|Equal0~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \UC|ALT_INV_Equal0~0_combout\,
	cin => GND,
	cout => \ULA|Add0~130_cout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( !\ROM|memROM~0_combout\ $ (!\UC|Equal0~0_combout\) ) + ( \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( \ROM|memROM~0_combout\ ) + ( !\ROM|memROM~0_combout\ $ (!\UC|Equal0~0_combout\) ) + ( \ULA|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( GND ) + ( \UC|Equal0~0_combout\ ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \UC|ALT_INV_Equal0~0_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

ww_saida_ULA(0) <= \saida_ULA[0]~output_o\;

ww_saida_ULA(1) <= \saida_ULA[1]~output_o\;

ww_saida_ULA(2) <= \saida_ULA[2]~output_o\;

ww_saida_ULA(3) <= \saida_ULA[3]~output_o\;

ww_saida_ULA(4) <= \saida_ULA[4]~output_o\;

ww_saida_ULA(5) <= \saida_ULA[5]~output_o\;

ww_saida_ULA(6) <= \saida_ULA[6]~output_o\;

ww_saida_ULA(7) <= \saida_ULA[7]~output_o\;

ww_saida_ULA(8) <= \saida_ULA[8]~output_o\;

ww_saida_ULA(9) <= \saida_ULA[9]~output_o\;

ww_saida_ULA(10) <= \saida_ULA[10]~output_o\;

ww_saida_ULA(11) <= \saida_ULA[11]~output_o\;

ww_saida_ULA(12) <= \saida_ULA[12]~output_o\;

ww_saida_ULA(13) <= \saida_ULA[13]~output_o\;

ww_saida_ULA(14) <= \saida_ULA[14]~output_o\;

ww_saida_ULA(15) <= \saida_ULA[15]~output_o\;

ww_saida_ULA(16) <= \saida_ULA[16]~output_o\;

ww_saida_ULA(17) <= \saida_ULA[17]~output_o\;

ww_saida_ULA(18) <= \saida_ULA[18]~output_o\;

ww_saida_ULA(19) <= \saida_ULA[19]~output_o\;

ww_saida_ULA(20) <= \saida_ULA[20]~output_o\;

ww_saida_ULA(21) <= \saida_ULA[21]~output_o\;

ww_saida_ULA(22) <= \saida_ULA[22]~output_o\;

ww_saida_ULA(23) <= \saida_ULA[23]~output_o\;

ww_saida_ULA(24) <= \saida_ULA[24]~output_o\;

ww_saida_ULA(25) <= \saida_ULA[25]~output_o\;

ww_saida_ULA(26) <= \saida_ULA[26]~output_o\;

ww_saida_ULA(27) <= \saida_ULA[27]~output_o\;

ww_saida_ULA(28) <= \saida_ULA[28]~output_o\;

ww_saida_ULA(29) <= \saida_ULA[29]~output_o\;

ww_saida_ULA(30) <= \saida_ULA[30]~output_o\;

ww_saida_ULA(31) <= \saida_ULA[31]~output_o\;

ww_saida_ROM(0) <= \saida_ROM[0]~output_o\;

ww_saida_ROM(1) <= \saida_ROM[1]~output_o\;

ww_saida_ROM(2) <= \saida_ROM[2]~output_o\;

ww_saida_ROM(3) <= \saida_ROM[3]~output_o\;

ww_saida_ROM(4) <= \saida_ROM[4]~output_o\;

ww_saida_ROM(5) <= \saida_ROM[5]~output_o\;

ww_saida_ROM(6) <= \saida_ROM[6]~output_o\;

ww_saida_ROM(7) <= \saida_ROM[7]~output_o\;

ww_saida_ROM(8) <= \saida_ROM[8]~output_o\;

ww_saida_ROM(9) <= \saida_ROM[9]~output_o\;

ww_saida_ROM(10) <= \saida_ROM[10]~output_o\;

ww_saida_ROM(11) <= \saida_ROM[11]~output_o\;

ww_saida_ROM(12) <= \saida_ROM[12]~output_o\;

ww_saida_ROM(13) <= \saida_ROM[13]~output_o\;

ww_saida_ROM(14) <= \saida_ROM[14]~output_o\;

ww_saida_ROM(15) <= \saida_ROM[15]~output_o\;

ww_saida_ROM(16) <= \saida_ROM[16]~output_o\;

ww_saida_ROM(17) <= \saida_ROM[17]~output_o\;

ww_saida_ROM(18) <= \saida_ROM[18]~output_o\;

ww_saida_ROM(19) <= \saida_ROM[19]~output_o\;

ww_saida_ROM(20) <= \saida_ROM[20]~output_o\;

ww_saida_ROM(21) <= \saida_ROM[21]~output_o\;

ww_saida_ROM(22) <= \saida_ROM[22]~output_o\;

ww_saida_ROM(23) <= \saida_ROM[23]~output_o\;

ww_saida_ROM(24) <= \saida_ROM[24]~output_o\;

ww_saida_ROM(25) <= \saida_ROM[25]~output_o\;

ww_saida_ROM(26) <= \saida_ROM[26]~output_o\;

ww_saida_ROM(27) <= \saida_ROM[27]~output_o\;

ww_saida_ROM(28) <= \saida_ROM[28]~output_o\;

ww_saida_ROM(29) <= \saida_ROM[29]~output_o\;

ww_saida_ROM(30) <= \saida_ROM[30]~output_o\;

ww_saida_ROM(31) <= \saida_ROM[31]~output_o\;

ww_saida_A(0) <= \saida_A[0]~output_o\;

ww_saida_A(1) <= \saida_A[1]~output_o\;

ww_saida_A(2) <= \saida_A[2]~output_o\;

ww_saida_A(3) <= \saida_A[3]~output_o\;

ww_saida_A(4) <= \saida_A[4]~output_o\;

ww_saida_A(5) <= \saida_A[5]~output_o\;

ww_saida_A(6) <= \saida_A[6]~output_o\;

ww_saida_A(7) <= \saida_A[7]~output_o\;

ww_saida_A(8) <= \saida_A[8]~output_o\;

ww_saida_A(9) <= \saida_A[9]~output_o\;

ww_saida_A(10) <= \saida_A[10]~output_o\;

ww_saida_A(11) <= \saida_A[11]~output_o\;

ww_saida_A(12) <= \saida_A[12]~output_o\;

ww_saida_A(13) <= \saida_A[13]~output_o\;

ww_saida_A(14) <= \saida_A[14]~output_o\;

ww_saida_A(15) <= \saida_A[15]~output_o\;

ww_saida_A(16) <= \saida_A[16]~output_o\;

ww_saida_A(17) <= \saida_A[17]~output_o\;

ww_saida_A(18) <= \saida_A[18]~output_o\;

ww_saida_A(19) <= \saida_A[19]~output_o\;

ww_saida_A(20) <= \saida_A[20]~output_o\;

ww_saida_A(21) <= \saida_A[21]~output_o\;

ww_saida_A(22) <= \saida_A[22]~output_o\;

ww_saida_A(23) <= \saida_A[23]~output_o\;

ww_saida_A(24) <= \saida_A[24]~output_o\;

ww_saida_A(25) <= \saida_A[25]~output_o\;

ww_saida_A(26) <= \saida_A[26]~output_o\;

ww_saida_A(27) <= \saida_A[27]~output_o\;

ww_saida_A(28) <= \saida_A[28]~output_o\;

ww_saida_A(29) <= \saida_A[29]~output_o\;

ww_saida_A(30) <= \saida_A[30]~output_o\;

ww_saida_A(31) <= \saida_A[31]~output_o\;

ww_saida_B(0) <= \saida_B[0]~output_o\;

ww_saida_B(1) <= \saida_B[1]~output_o\;

ww_saida_B(2) <= \saida_B[2]~output_o\;

ww_saida_B(3) <= \saida_B[3]~output_o\;

ww_saida_B(4) <= \saida_B[4]~output_o\;

ww_saida_B(5) <= \saida_B[5]~output_o\;

ww_saida_B(6) <= \saida_B[6]~output_o\;

ww_saida_B(7) <= \saida_B[7]~output_o\;

ww_saida_B(8) <= \saida_B[8]~output_o\;

ww_saida_B(9) <= \saida_B[9]~output_o\;

ww_saida_B(10) <= \saida_B[10]~output_o\;

ww_saida_B(11) <= \saida_B[11]~output_o\;

ww_saida_B(12) <= \saida_B[12]~output_o\;

ww_saida_B(13) <= \saida_B[13]~output_o\;

ww_saida_B(14) <= \saida_B[14]~output_o\;

ww_saida_B(15) <= \saida_B[15]~output_o\;

ww_saida_B(16) <= \saida_B[16]~output_o\;

ww_saida_B(17) <= \saida_B[17]~output_o\;

ww_saida_B(18) <= \saida_B[18]~output_o\;

ww_saida_B(19) <= \saida_B[19]~output_o\;

ww_saida_B(20) <= \saida_B[20]~output_o\;

ww_saida_B(21) <= \saida_B[21]~output_o\;

ww_saida_B(22) <= \saida_B[22]~output_o\;

ww_saida_B(23) <= \saida_B[23]~output_o\;

ww_saida_B(24) <= \saida_B[24]~output_o\;

ww_saida_B(25) <= \saida_B[25]~output_o\;

ww_saida_B(26) <= \saida_B[26]~output_o\;

ww_saida_B(27) <= \saida_B[27]~output_o\;

ww_saida_B(28) <= \saida_B[28]~output_o\;

ww_saida_B(29) <= \saida_B[29]~output_o\;

ww_saida_B(30) <= \saida_B[30]~output_o\;

ww_saida_B(31) <= \saida_B[31]~output_o\;
END structure;


