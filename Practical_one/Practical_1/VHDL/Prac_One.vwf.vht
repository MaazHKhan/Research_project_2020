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
-- Generated on "08/21/2020 16:57:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Prac_One
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Prac_One_vhd_vec_tst IS
END Prac_One_vhd_vec_tst;
ARCHITECTURE Prac_One_arch OF Prac_One_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50_in : STD_LOGIC;
SIGNAL EN : STD_LOGIC;
SIGNAL LED1 : STD_LOGIC;
SIGNAL LED2 : STD_LOGIC;
SIGNAL LED3 : STD_LOGIC;
SIGNAL TXPIN : STD_LOGIC;
COMPONENT Prac_One
	PORT (
	CLOCK_50_in : IN STD_LOGIC;
	EN : IN STD_LOGIC;
	LED1 : BUFFER STD_LOGIC;
	LED2 : BUFFER STD_LOGIC;
	LED3 : BUFFER STD_LOGIC;
	TXPIN : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Prac_One
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50_in => CLOCK_50_in,
	EN => EN,
	LED1 => LED1,
	LED2 => LED2,
	LED3 => LED3,
	TXPIN => TXPIN
	);
END Prac_One_arch;
