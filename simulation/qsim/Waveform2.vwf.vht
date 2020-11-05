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
-- Generated on "11/05/2020 15:19:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FluxoDados
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FluxoDados_vhd_vec_tst IS
END FluxoDados_vhd_vec_tst;
ARCHITECTURE FluxoDados_arch OF FluxoDados_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL saida_A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_B : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_ROM : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT FluxoDados
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	saida_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_B : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_ROM : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_ULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FluxoDados
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	saida_A => saida_A,
	saida_B => saida_B,
	saida_ROM => saida_ROM,
	saida_ULA => saida_ULA
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 30000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	CLOCK_50 <= '0';
	WAIT FOR 30000 ps;
	CLOCK_50 <= '1';
WAIT;
END PROCESS t_prcs_CLOCK_50;
END FluxoDados_arch;
