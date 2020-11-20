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
-- Generated on "11/19/2020 18:05:04"
                                                             
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
SIGNAL dado_escrito_rd : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL entrada_ulaA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL entrada_ulaB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL entradaA_rs : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL entradaB_rt : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL entradaC_rd : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL saida_pc : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_ROM : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT FluxoDados
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	dado_escrito_rd : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	entrada_ulaA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	entrada_ulaB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	entradaA_rs : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	entradaB_rt : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	entradaC_rd : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	saida_pc : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_ROM : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_ULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : FluxoDados
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	dado_escrito_rd => dado_escrito_rd,
	entrada_ulaA => entrada_ulaA,
	entrada_ulaB => entrada_ulaB,
	entradaA_rs => entradaA_rs,
	entradaB_rt => entradaB_rt,
	entradaC_rd => entradaC_rd,
	saida_pc => saida_pc,
	saida_ROM => saida_ROM,
	saida_ULA => saida_ULA
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
END FluxoDados_arch;
