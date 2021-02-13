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

-- DATE "10/27/2020 16:51:38"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
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

ENTITY 	Prac_One IS
    PORT (
	CLOCK_50_in : IN std_logic;
	EN : IN std_logic;
	TXPIN : BUFFER std_logic;
	LED1 : BUFFER std_logic;
	LED2 : BUFFER std_logic;
	LED3 : BUFFER std_logic
	);
END Prac_One;

-- Design Ports Information
-- TXPIN	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED1	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED2	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED3	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50_in	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Prac_One IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50_in : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_TXPIN : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL \Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50_in~input_o\ : std_logic;
SIGNAL \CLOCK_50_in~inputCLKENA0_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \Add2~125_sumout\ : std_logic;
SIGNAL \Add2~126\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~85_sumout\ : std_logic;
SIGNAL \Add2~86\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~65_sumout\ : std_logic;
SIGNAL \Add2~66\ : std_logic;
SIGNAL \Add2~69_sumout\ : std_logic;
SIGNAL \Add2~70\ : std_logic;
SIGNAL \Add2~73_sumout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \Add2~74\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~121_sumout\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~89_sumout\ : std_logic;
SIGNAL \Add2~90\ : std_logic;
SIGNAL \Add2~97_sumout\ : std_logic;
SIGNAL \Add2~98\ : std_logic;
SIGNAL \Add2~101_sumout\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~105_sumout\ : std_logic;
SIGNAL \Add2~106\ : std_logic;
SIGNAL \Add2~77_sumout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~93_sumout\ : std_logic;
SIGNAL \Add2~94\ : std_logic;
SIGNAL \Add2~81_sumout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~117_sumout\ : std_logic;
SIGNAL \Add2~118\ : std_logic;
SIGNAL \Add2~113_sumout\ : std_logic;
SIGNAL \Add2~114\ : std_logic;
SIGNAL \Add2~109_sumout\ : std_logic;
SIGNAL \Add2~110\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~89_sumout\ : std_logic;
SIGNAL \Add3~90\ : std_logic;
SIGNAL \Add3~85_sumout\ : std_logic;
SIGNAL \Add3~86\ : std_logic;
SIGNAL \Add3~81_sumout\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal54~0_combout\ : std_logic;
SIGNAL \State~12_combout\ : std_logic;
SIGNAL \Equal40~0_combout\ : std_logic;
SIGNAL \State~11_combout\ : std_logic;
SIGNAL \State~8_combout\ : std_logic;
SIGNAL \State~9_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \State.Tx~q\ : std_logic;
SIGNAL \BITCOUNT[4]~4_combout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~93_sumout\ : std_logic;
SIGNAL \Add3~94\ : std_logic;
SIGNAL \Add3~97_sumout\ : std_logic;
SIGNAL \Add3~98\ : std_logic;
SIGNAL \Add3~101_sumout\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~105_sumout\ : std_logic;
SIGNAL \Add3~106\ : std_logic;
SIGNAL \Add3~109_sumout\ : std_logic;
SIGNAL \Add3~110\ : std_logic;
SIGNAL \Add3~113_sumout\ : std_logic;
SIGNAL \Add3~114\ : std_logic;
SIGNAL \Add3~117_sumout\ : std_logic;
SIGNAL \Add3~118\ : std_logic;
SIGNAL \Add3~121_sumout\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~125_sumout\ : std_logic;
SIGNAL \Add3~126\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~65_sumout\ : std_logic;
SIGNAL \Add3~66\ : std_logic;
SIGNAL \Add3~69_sumout\ : std_logic;
SIGNAL \Add3~70\ : std_logic;
SIGNAL \Add3~73_sumout\ : std_logic;
SIGNAL \Add3~74\ : std_logic;
SIGNAL \Add3~77_sumout\ : std_logic;
SIGNAL \Add3~78\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \BITCOUNT~0_combout\ : std_logic;
SIGNAL \BITCOUNT~5_combout\ : std_logic;
SIGNAL \BITCOUNT~6_combout\ : std_logic;
SIGNAL \BITCOUNT~7_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal18~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal16~1_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Equal19~0_combout\ : std_logic;
SIGNAL \Equal22~0_combout\ : std_logic;
SIGNAL \TXPIN~19_combout\ : std_logic;
SIGNAL \TXPIN~38_combout\ : std_logic;
SIGNAL \Equal32~0_combout\ : std_logic;
SIGNAL \Equal53~0_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \TXPIN~37_combout\ : std_logic;
SIGNAL \BITCOUNT~1_combout\ : std_logic;
SIGNAL \Equal52~1_combout\ : std_logic;
SIGNAL \Equal52~0_combout\ : std_logic;
SIGNAL \Equal50~0_combout\ : std_logic;
SIGNAL \Equal50~2_combout\ : std_logic;
SIGNAL \Equal50~1_combout\ : std_logic;
SIGNAL \Equal49~1_combout\ : std_logic;
SIGNAL \Equal49~0_combout\ : std_logic;
SIGNAL \Equal39~1_combout\ : std_logic;
SIGNAL \Equal47~0_combout\ : std_logic;
SIGNAL \Equal48~1_combout\ : std_logic;
SIGNAL \Equal48~0_combout\ : std_logic;
SIGNAL \Equal51~1_combout\ : std_logic;
SIGNAL \Equal51~0_combout\ : std_logic;
SIGNAL \TXPIN~1_combout\ : std_logic;
SIGNAL \Equal33~1_combout\ : std_logic;
SIGNAL \Equal33~0_combout\ : std_logic;
SIGNAL \Equal34~0_combout\ : std_logic;
SIGNAL \TXPIN~45_combout\ : std_logic;
SIGNAL \TXPIN~4_combout\ : std_logic;
SIGNAL \Equal36~0_combout\ : std_logic;
SIGNAL \Equal35~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \TXPIN~5_combout\ : std_logic;
SIGNAL \BITCOUNT~2_combout\ : std_logic;
SIGNAL \BITCOUNT~3_combout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \TXPIN~0_combout\ : std_logic;
SIGNAL \State~10_combout\ : std_logic;
SIGNAL \State.Gen~q\ : std_logic;
SIGNAL \State.Func~0_combout\ : std_logic;
SIGNAL \State.Func~q\ : std_logic;
SIGNAL \RUN~1_combout\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \B[7]~0_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \A[1]~0_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \RUN~3_combout\ : std_logic;
SIGNAL \RUN~_emulated_q\ : std_logic;
SIGNAL \RUN~2_combout\ : std_logic;
SIGNAL \PRESCL[31]~0_combout\ : std_logic;
SIGNAL \TXPIN~39_combout\ : std_logic;
SIGNAL \TXPIN~40_combout\ : std_logic;
SIGNAL \TXPIN~41_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \TXPIN~33_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \InA[7]~0_combout\ : std_logic;
SIGNAL \InB[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \DATA[2]~9_combout\ : std_logic;
SIGNAL \DATA[31]~0_combout\ : std_logic;
SIGNAL \InB[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \InB[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \TXPIN~34_combout\ : std_logic;
SIGNAL \TXPIN~35_combout\ : std_logic;
SIGNAL \TXPIN~36_combout\ : std_logic;
SIGNAL \TXPIN~32_combout\ : std_logic;
SIGNAL \TXPIN~25_combout\ : std_logic;
SIGNAL \Equal27~0_combout\ : std_logic;
SIGNAL \Equal25~0_combout\ : std_logic;
SIGNAL \Equal24~0_combout\ : std_logic;
SIGNAL \Equal26~0_combout\ : std_logic;
SIGNAL \InA[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \TXPIN~23_combout\ : std_logic;
SIGNAL \InA[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \TXPIN~21_combout\ : std_logic;
SIGNAL \TXPIN~20_combout\ : std_logic;
SIGNAL \InA[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \InA[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \DATA[9]~7_combout\ : std_logic;
SIGNAL \InA[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \DATA[8]~6_combout\ : std_logic;
SIGNAL \InA[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \TXPIN~22_combout\ : std_logic;
SIGNAL \TXPIN~24_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \Equal20~0_combout\ : std_logic;
SIGNAL \InB[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \TXPIN~27_combout\ : std_logic;
SIGNAL \InB[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \DATA[6]~8_combout\ : std_logic;
SIGNAL \TXPIN~28_combout\ : std_logic;
SIGNAL \InB[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \InB[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \InB[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \TXPIN~29_combout\ : std_logic;
SIGNAL \TXPIN~26_combout\ : std_logic;
SIGNAL \TXPIN~30_combout\ : std_logic;
SIGNAL \TXPIN~10_combout\ : std_logic;
SIGNAL \TXPIN~8_combout\ : std_logic;
SIGNAL \Equal40~1_combout\ : std_logic;
SIGNAL \DATA[22]~2_combout\ : std_logic;
SIGNAL \TXPIN~6_combout\ : std_logic;
SIGNAL \TXPIN~43_combout\ : std_logic;
SIGNAL \DATA[24]~3_combout\ : std_logic;
SIGNAL \TXPIN~9_combout\ : std_logic;
SIGNAL \Equal39~0_combout\ : std_logic;
SIGNAL \Equal38~1_combout\ : std_logic;
SIGNAL \Equal38~0_combout\ : std_logic;
SIGNAL \Equal37~1_combout\ : std_logic;
SIGNAL \Equal37~0_combout\ : std_logic;
SIGNAL \TXPIN~11_combout\ : std_logic;
SIGNAL \TXPIN~7_combout\ : std_logic;
SIGNAL \TXPIN~12_combout\ : std_logic;
SIGNAL \DATA[17]~4_combout\ : std_logic;
SIGNAL \TXPIN~14_combout\ : std_logic;
SIGNAL \InA[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \DATA[14]~5_combout\ : std_logic;
SIGNAL \InA[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \TXPIN~46_combout\ : std_logic;
SIGNAL \TXPIN~15_combout\ : std_logic;
SIGNAL \TXPIN~16_combout\ : std_logic;
SIGNAL \TXPIN~13_combout\ : std_logic;
SIGNAL \TXPIN~17_combout\ : std_logic;
SIGNAL \TXPIN~3_combout\ : std_logic;
SIGNAL \TXPIN~2_combout\ : std_logic;
SIGNAL \DATA[30]~1_combout\ : std_logic;
SIGNAL \TXPIN~44_combout\ : std_logic;
SIGNAL \TXPIN~47_combout\ : std_logic;
SIGNAL \TXPIN~18_combout\ : std_logic;
SIGNAL \TXPIN~31_combout\ : std_logic;
SIGNAL \TXPIN~42_combout\ : std_logic;
SIGNAL \TXPIN~reg0_q\ : std_logic;
SIGNAL BITCOUNT : std_logic_vector(31 DOWNTO 0);
SIGNAL B : std_logic_vector(7 DOWNTO 0);
SIGNAL PRESCL : std_logic_vector(31 DOWNTO 0);
SIGNAL OUT1 : std_logic_vector(15 DOWNTO 0);
SIGNAL OldInB : std_logic_vector(7 DOWNTO 0);
SIGNAL A : std_logic_vector(7 DOWNTO 0);
SIGNAL DATA : std_logic_vector(31 DOWNTO 0);
SIGNAL OldInA : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_EN~input_o\ : std_logic;
SIGNAL \ALT_INV_RUN~1_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~46_combout\ : std_logic;
SIGNAL \ALT_INV_BITCOUNT~7_combout\ : std_logic;
SIGNAL \ALT_INV_BITCOUNT~6_combout\ : std_logic;
SIGNAL \ALT_INV_BITCOUNT~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal52~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal51~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal50~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal49~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal48~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal39~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal38~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal37~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal33~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~45_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~44_combout\ : std_logic;
SIGNAL \ALT_INV_State~12_combout\ : std_logic;
SIGNAL \ALT_INV_State~11_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~43_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_State.Gen~q\ : std_logic;
SIGNAL \ALT_INV_State~9_combout\ : std_logic;
SIGNAL \ALT_INV_RUN~2_combout\ : std_logic;
SIGNAL \ALT_INV_RUN~_emulated_q\ : std_logic;
SIGNAL ALT_INV_OldInB : std_logic_vector(6 DOWNTO 2);
SIGNAL ALT_INV_OldInA : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_State.Func~q\ : std_logic;
SIGNAL \ALT_INV_BITCOUNT~2_combout\ : std_logic;
SIGNAL \ALT_INV_BITCOUNT~1_combout\ : std_logic;
SIGNAL \ALT_INV_BITCOUNT~0_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~41_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~40_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~39_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~38_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~37_combout\ : std_logic;
SIGNAL \ALT_INV_PRESCL[31]~0_combout\ : std_logic;
SIGNAL \ALT_INV_State.Tx~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~36_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~35_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~34_combout\ : std_logic;
SIGNAL ALT_INV_DATA : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_TXPIN~33_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~32_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~31_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~30_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~29_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~28_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~27_combout\ : std_logic;
SIGNAL \ALT_INV_Equal21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal20~0_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~26_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~25_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~24_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~23_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~22_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~21_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~0_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~20_combout\ : std_logic;
SIGNAL \ALT_INV_Equal26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal23~0_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~19_combout\ : std_logic;
SIGNAL \ALT_INV_Equal22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~18_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~17_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~16_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~15_combout\ : std_logic;
SIGNAL \ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~14_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~13_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~12_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~11_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~10_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~8_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal39~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal38~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal37~0_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal40~1_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal36~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal33~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal34~0_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~2_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal52~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal51~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal50~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal50~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal49~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal48~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal47~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal53~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal32~0_combout\ : std_logic;
SIGNAL \ALT_INV_State~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal40~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal54~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal18~0_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_TXPIN~reg0_q\ : std_logic;
SIGNAL \ALT_INV_TXPIN~47_combout\ : std_logic;
SIGNAL ALT_INV_PRESCL : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_OUT1 : std_logic_vector(14 DOWNTO 1);
SIGNAL ALT_INV_BITCOUNT : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_CLOCK_50_in <= CLOCK_50_in;
ww_EN <= EN;
TXPIN <= ww_TXPIN;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Mult0~8_CLK_bus\ <= (gnd & \CLOCK_50_in~inputCLKENA0_outclk\ & \CLOCK_50_in~inputCLKENA0_outclk\);

\Mult0~8_ENA_bus\ <= (vcc & \InA[7]~0_combout\ & \DATA[31]~0_combout\);

\Mult0~8_AX_bus\ <= (A(7) & A(6) & A(5) & A(4) & A(3) & A(2) & A(1) & A(0));

\Mult0~8_AY_bus\ <= (B(7) & B(6) & B(5) & B(4) & B(3) & B(2) & B(1) & B(0));

OUT1(0) <= \Mult0~8_RESULTA_bus\(0);
OUT1(1) <= \Mult0~8_RESULTA_bus\(1);
OUT1(2) <= \Mult0~8_RESULTA_bus\(2);
OUT1(3) <= \Mult0~8_RESULTA_bus\(3);
OUT1(4) <= \Mult0~8_RESULTA_bus\(4);
OUT1(5) <= \Mult0~8_RESULTA_bus\(5);
OUT1(6) <= \Mult0~8_RESULTA_bus\(6);
OUT1(7) <= \Mult0~8_RESULTA_bus\(7);
OUT1(8) <= \Mult0~8_RESULTA_bus\(8);
OUT1(9) <= \Mult0~8_RESULTA_bus\(9);
OUT1(10) <= \Mult0~8_RESULTA_bus\(10);
OUT1(11) <= \Mult0~8_RESULTA_bus\(11);
OUT1(12) <= \Mult0~8_RESULTA_bus\(12);
OUT1(13) <= \Mult0~8_RESULTA_bus\(13);
OUT1(14) <= \Mult0~8_RESULTA_bus\(14);
OUT1(15) <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);
\ALT_INV_EN~input_o\ <= NOT \EN~input_o\;
\ALT_INV_RUN~1_combout\ <= NOT \RUN~1_combout\;
\ALT_INV_TXPIN~46_combout\ <= NOT \TXPIN~46_combout\;
\ALT_INV_BITCOUNT~7_combout\ <= NOT \BITCOUNT~7_combout\;
\ALT_INV_BITCOUNT~6_combout\ <= NOT \BITCOUNT~6_combout\;
\ALT_INV_BITCOUNT~5_combout\ <= NOT \BITCOUNT~5_combout\;
\ALT_INV_Equal52~1_combout\ <= NOT \Equal52~1_combout\;
\ALT_INV_Equal51~1_combout\ <= NOT \Equal51~1_combout\;
\ALT_INV_Equal50~2_combout\ <= NOT \Equal50~2_combout\;
\ALT_INV_Equal49~1_combout\ <= NOT \Equal49~1_combout\;
\ALT_INV_Equal48~1_combout\ <= NOT \Equal48~1_combout\;
\ALT_INV_Equal39~1_combout\ <= NOT \Equal39~1_combout\;
\ALT_INV_Equal38~1_combout\ <= NOT \Equal38~1_combout\;
\ALT_INV_Equal37~1_combout\ <= NOT \Equal37~1_combout\;
\ALT_INV_Equal33~1_combout\ <= NOT \Equal33~1_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_TXPIN~45_combout\ <= NOT \TXPIN~45_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_TXPIN~44_combout\ <= NOT \TXPIN~44_combout\;
\ALT_INV_State~12_combout\ <= NOT \State~12_combout\;
\ALT_INV_State~11_combout\ <= NOT \State~11_combout\;
\ALT_INV_TXPIN~43_combout\ <= NOT \TXPIN~43_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_State.Gen~q\ <= NOT \State.Gen~q\;
\ALT_INV_State~9_combout\ <= NOT \State~9_combout\;
\ALT_INV_RUN~2_combout\ <= NOT \RUN~2_combout\;
\ALT_INV_RUN~_emulated_q\ <= NOT \RUN~_emulated_q\;
ALT_INV_OldInB(2) <= NOT OldInB(2);
ALT_INV_OldInB(6) <= NOT OldInB(6);
ALT_INV_OldInA(1) <= NOT OldInA(1);
ALT_INV_OldInA(0) <= NOT OldInA(0);
ALT_INV_OldInA(6) <= NOT OldInA(6);
\ALT_INV_State.Func~q\ <= NOT \State.Func~q\;
\ALT_INV_BITCOUNT~2_combout\ <= NOT \BITCOUNT~2_combout\;
\ALT_INV_BITCOUNT~1_combout\ <= NOT \BITCOUNT~1_combout\;
\ALT_INV_BITCOUNT~0_combout\ <= NOT \BITCOUNT~0_combout\;
\ALT_INV_TXPIN~41_combout\ <= NOT \TXPIN~41_combout\;
\ALT_INV_TXPIN~40_combout\ <= NOT \TXPIN~40_combout\;
\ALT_INV_TXPIN~39_combout\ <= NOT \TXPIN~39_combout\;
\ALT_INV_TXPIN~38_combout\ <= NOT \TXPIN~38_combout\;
\ALT_INV_TXPIN~37_combout\ <= NOT \TXPIN~37_combout\;
\ALT_INV_PRESCL[31]~0_combout\ <= NOT \PRESCL[31]~0_combout\;
\ALT_INV_State.Tx~q\ <= NOT \State.Tx~q\;
\ALT_INV_LessThan2~7_combout\ <= NOT \LessThan2~7_combout\;
\ALT_INV_LessThan2~6_combout\ <= NOT \LessThan2~6_combout\;
\ALT_INV_LessThan2~5_combout\ <= NOT \LessThan2~5_combout\;
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_TXPIN~36_combout\ <= NOT \TXPIN~36_combout\;
\ALT_INV_TXPIN~35_combout\ <= NOT \TXPIN~35_combout\;
\ALT_INV_TXPIN~34_combout\ <= NOT \TXPIN~34_combout\;
ALT_INV_DATA(1) <= NOT DATA(1);
ALT_INV_DATA(0) <= NOT DATA(0);
\ALT_INV_TXPIN~33_combout\ <= NOT \TXPIN~33_combout\;
ALT_INV_DATA(2) <= NOT DATA(2);
\ALT_INV_TXPIN~32_combout\ <= NOT \TXPIN~32_combout\;
\ALT_INV_TXPIN~31_combout\ <= NOT \TXPIN~31_combout\;
\ALT_INV_TXPIN~30_combout\ <= NOT \TXPIN~30_combout\;
\ALT_INV_TXPIN~29_combout\ <= NOT \TXPIN~29_combout\;
ALT_INV_DATA(5) <= NOT DATA(5);
ALT_INV_DATA(4) <= NOT DATA(4);
ALT_INV_DATA(3) <= NOT DATA(3);
\ALT_INV_TXPIN~28_combout\ <= NOT \TXPIN~28_combout\;
ALT_INV_DATA(6) <= NOT DATA(6);
\ALT_INV_TXPIN~27_combout\ <= NOT \TXPIN~27_combout\;
ALT_INV_DATA(7) <= NOT DATA(7);
\ALT_INV_Equal21~0_combout\ <= NOT \Equal21~0_combout\;
\ALT_INV_Equal20~0_combout\ <= NOT \Equal20~0_combout\;
\ALT_INV_TXPIN~26_combout\ <= NOT \TXPIN~26_combout\;
\ALT_INV_TXPIN~25_combout\ <= NOT \TXPIN~25_combout\;
\ALT_INV_TXPIN~24_combout\ <= NOT \TXPIN~24_combout\;
\ALT_INV_TXPIN~23_combout\ <= NOT \TXPIN~23_combout\;
ALT_INV_DATA(11) <= NOT DATA(11);
\ALT_INV_TXPIN~22_combout\ <= NOT \TXPIN~22_combout\;
ALT_INV_DATA(10) <= NOT DATA(10);
ALT_INV_DATA(9) <= NOT DATA(9);
ALT_INV_DATA(8) <= NOT DATA(8);
\ALT_INV_TXPIN~21_combout\ <= NOT \TXPIN~21_combout\;
ALT_INV_DATA(13) <= NOT DATA(13);
\ALT_INV_Equal27~0_combout\ <= NOT \Equal27~0_combout\;
\ALT_INV_TXPIN~20_combout\ <= NOT \TXPIN~20_combout\;
\ALT_INV_Equal26~0_combout\ <= NOT \Equal26~0_combout\;
\ALT_INV_Equal25~0_combout\ <= NOT \Equal25~0_combout\;
\ALT_INV_Equal24~0_combout\ <= NOT \Equal24~0_combout\;
\ALT_INV_Equal23~0_combout\ <= NOT \Equal23~0_combout\;
ALT_INV_DATA(12) <= NOT DATA(12);
\ALT_INV_TXPIN~19_combout\ <= NOT \TXPIN~19_combout\;
\ALT_INV_Equal22~0_combout\ <= NOT \Equal22~0_combout\;
\ALT_INV_Equal19~0_combout\ <= NOT \Equal19~0_combout\;
\ALT_INV_Equal18~1_combout\ <= NOT \Equal18~1_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal17~0_combout\ <= NOT \Equal17~0_combout\;
\ALT_INV_Equal16~1_combout\ <= NOT \Equal16~1_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal15~0_combout\ <= NOT \Equal15~0_combout\;
\ALT_INV_TXPIN~18_combout\ <= NOT \TXPIN~18_combout\;
\ALT_INV_TXPIN~17_combout\ <= NOT \TXPIN~17_combout\;
\ALT_INV_TXPIN~16_combout\ <= NOT \TXPIN~16_combout\;
ALT_INV_DATA(16) <= NOT DATA(16);
\ALT_INV_TXPIN~15_combout\ <= NOT \TXPIN~15_combout\;
ALT_INV_DATA(15) <= NOT DATA(15);
\ALT_INV_Equal8~1_combout\ <= NOT \Equal8~1_combout\;
ALT_INV_DATA(14) <= NOT DATA(14);
\ALT_INV_TXPIN~14_combout\ <= NOT \TXPIN~14_combout\;
ALT_INV_DATA(18) <= NOT DATA(18);
\ALT_INV_TXPIN~13_combout\ <= NOT \TXPIN~13_combout\;
ALT_INV_DATA(17) <= NOT DATA(17);
\ALT_INV_TXPIN~12_combout\ <= NOT \TXPIN~12_combout\;
\ALT_INV_TXPIN~11_combout\ <= NOT \TXPIN~11_combout\;
ALT_INV_DATA(21) <= NOT DATA(21);
ALT_INV_DATA(20) <= NOT DATA(20);
ALT_INV_DATA(19) <= NOT DATA(19);
\ALT_INV_TXPIN~10_combout\ <= NOT \TXPIN~10_combout\;
\ALT_INV_TXPIN~9_combout\ <= NOT \TXPIN~9_combout\;
ALT_INV_DATA(25) <= NOT DATA(25);
ALT_INV_DATA(24) <= NOT DATA(24);
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_TXPIN~8_combout\ <= NOT \TXPIN~8_combout\;
\ALT_INV_TXPIN~7_combout\ <= NOT \TXPIN~7_combout\;
\ALT_INV_Equal39~0_combout\ <= NOT \Equal39~0_combout\;
\ALT_INV_Equal38~0_combout\ <= NOT \Equal38~0_combout\;
\ALT_INV_Equal37~0_combout\ <= NOT \Equal37~0_combout\;
\ALT_INV_TXPIN~6_combout\ <= NOT \TXPIN~6_combout\;
ALT_INV_DATA(23) <= NOT DATA(23);
\ALT_INV_Equal40~1_combout\ <= NOT \Equal40~1_combout\;
ALT_INV_DATA(22) <= NOT DATA(22);
\ALT_INV_TXPIN~5_combout\ <= NOT \TXPIN~5_combout\;
\ALT_INV_Equal36~0_combout\ <= NOT \Equal36~0_combout\;
\ALT_INV_Equal35~0_combout\ <= NOT \Equal35~0_combout\;
\ALT_INV_Equal33~0_combout\ <= NOT \Equal33~0_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Equal34~0_combout\ <= NOT \Equal34~0_combout\;
\ALT_INV_TXPIN~4_combout\ <= NOT \TXPIN~4_combout\;
\ALT_INV_Equal8~0_combout\ <= NOT \Equal8~0_combout\;
\ALT_INV_TXPIN~3_combout\ <= NOT \TXPIN~3_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_DATA(27) <= NOT DATA(27);
ALT_INV_DATA(26) <= NOT DATA(26);
ALT_INV_DATA(31) <= NOT DATA(31);
ALT_INV_DATA(30) <= NOT DATA(30);
ALT_INV_DATA(29) <= NOT DATA(29);
ALT_INV_DATA(28) <= NOT DATA(28);
\ALT_INV_TXPIN~2_combout\ <= NOT \TXPIN~2_combout\;
\ALT_INV_TXPIN~1_combout\ <= NOT \TXPIN~1_combout\;
\ALT_INV_Equal52~0_combout\ <= NOT \Equal52~0_combout\;
\ALT_INV_Equal51~0_combout\ <= NOT \Equal51~0_combout\;
\ALT_INV_Equal50~1_combout\ <= NOT \Equal50~1_combout\;
\ALT_INV_Equal50~0_combout\ <= NOT \Equal50~0_combout\;
\ALT_INV_Equal49~0_combout\ <= NOT \Equal49~0_combout\;
\ALT_INV_Equal48~0_combout\ <= NOT \Equal48~0_combout\;
\ALT_INV_Equal47~0_combout\ <= NOT \Equal47~0_combout\;
\ALT_INV_Equal53~0_combout\ <= NOT \Equal53~0_combout\;
\ALT_INV_Equal32~0_combout\ <= NOT \Equal32~0_combout\;
\ALT_INV_State~8_combout\ <= NOT \State~8_combout\;
\ALT_INV_Equal40~0_combout\ <= NOT \Equal40~0_combout\;
\ALT_INV_Equal54~0_combout\ <= NOT \Equal54~0_combout\;
\ALT_INV_Equal18~0_combout\ <= NOT \Equal18~0_combout\;
\ALT_INV_TXPIN~0_combout\ <= NOT \TXPIN~0_combout\;
\ALT_INV_Equal16~0_combout\ <= NOT \Equal16~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_LessThan3~3_combout\ <= NOT \LessThan3~3_combout\;
\ALT_INV_LessThan3~2_combout\ <= NOT \LessThan3~2_combout\;
\ALT_INV_LessThan3~1_combout\ <= NOT \LessThan3~1_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_TXPIN~reg0_q\ <= NOT \TXPIN~reg0_q\;
\ALT_INV_TXPIN~47_combout\ <= NOT \TXPIN~47_combout\;
ALT_INV_PRESCL(0) <= NOT PRESCL(0);
ALT_INV_B(1) <= NOT B(1);
ALT_INV_B(0) <= NOT B(0);
ALT_INV_B(2) <= NOT B(2);
ALT_INV_B(5) <= NOT B(5);
ALT_INV_B(4) <= NOT B(4);
ALT_INV_B(3) <= NOT B(3);
ALT_INV_B(6) <= NOT B(6);
ALT_INV_B(7) <= NOT B(7);
ALT_INV_A(0) <= NOT A(0);
ALT_INV_A(1) <= NOT A(1);
ALT_INV_A(4) <= NOT A(4);
ALT_INV_A(3) <= NOT A(3);
ALT_INV_A(2) <= NOT A(2);
ALT_INV_A(6) <= NOT A(6);
ALT_INV_A(7) <= NOT A(7);
ALT_INV_A(5) <= NOT A(5);
ALT_INV_OUT1(14) <= NOT OUT1(14);
ALT_INV_OUT1(8) <= NOT OUT1(8);
ALT_INV_OUT1(6) <= NOT OUT1(6);
ALT_INV_OUT1(1) <= NOT OUT1(1);
ALT_INV_PRESCL(16) <= NOT PRESCL(16);
ALT_INV_PRESCL(28) <= NOT PRESCL(28);
ALT_INV_PRESCL(29) <= NOT PRESCL(29);
ALT_INV_PRESCL(30) <= NOT PRESCL(30);
ALT_INV_PRESCL(24) <= NOT PRESCL(24);
ALT_INV_PRESCL(23) <= NOT PRESCL(23);
ALT_INV_PRESCL(22) <= NOT PRESCL(22);
ALT_INV_PRESCL(26) <= NOT PRESCL(26);
ALT_INV_PRESCL(21) <= NOT PRESCL(21);
ALT_INV_PRESCL(9) <= NOT PRESCL(9);
ALT_INV_PRESCL(27) <= NOT PRESCL(27);
ALT_INV_PRESCL(25) <= NOT PRESCL(25);
ALT_INV_PRESCL(14) <= NOT PRESCL(14);
ALT_INV_PRESCL(13) <= NOT PRESCL(13);
ALT_INV_PRESCL(12) <= NOT PRESCL(12);
ALT_INV_PRESCL(11) <= NOT PRESCL(11);
ALT_INV_PRESCL(10) <= NOT PRESCL(10);
ALT_INV_PRESCL(20) <= NOT PRESCL(20);
ALT_INV_PRESCL(19) <= NOT PRESCL(19);
ALT_INV_PRESCL(18) <= NOT PRESCL(18);
ALT_INV_PRESCL(17) <= NOT PRESCL(17);
ALT_INV_PRESCL(3) <= NOT PRESCL(3);
ALT_INV_PRESCL(2) <= NOT PRESCL(2);
ALT_INV_PRESCL(1) <= NOT PRESCL(1);
ALT_INV_PRESCL(5) <= NOT PRESCL(5);
ALT_INV_PRESCL(4) <= NOT PRESCL(4);
ALT_INV_PRESCL(6) <= NOT PRESCL(6);
ALT_INV_PRESCL(8) <= NOT PRESCL(8);
ALT_INV_PRESCL(7) <= NOT PRESCL(7);
ALT_INV_PRESCL(31) <= NOT PRESCL(31);
ALT_INV_PRESCL(15) <= NOT PRESCL(15);
ALT_INV_BITCOUNT(16) <= NOT BITCOUNT(16);
ALT_INV_BITCOUNT(15) <= NOT BITCOUNT(15);
ALT_INV_BITCOUNT(14) <= NOT BITCOUNT(14);
ALT_INV_BITCOUNT(13) <= NOT BITCOUNT(13);
ALT_INV_BITCOUNT(12) <= NOT BITCOUNT(12);
ALT_INV_BITCOUNT(11) <= NOT BITCOUNT(11);
ALT_INV_BITCOUNT(10) <= NOT BITCOUNT(10);
ALT_INV_BITCOUNT(9) <= NOT BITCOUNT(9);
ALT_INV_BITCOUNT(8) <= NOT BITCOUNT(8);
ALT_INV_BITCOUNT(28) <= NOT BITCOUNT(28);
ALT_INV_BITCOUNT(29) <= NOT BITCOUNT(29);
ALT_INV_BITCOUNT(30) <= NOT BITCOUNT(30);
ALT_INV_BITCOUNT(23) <= NOT BITCOUNT(23);
ALT_INV_BITCOUNT(22) <= NOT BITCOUNT(22);
ALT_INV_BITCOUNT(21) <= NOT BITCOUNT(21);
ALT_INV_BITCOUNT(20) <= NOT BITCOUNT(20);
ALT_INV_BITCOUNT(19) <= NOT BITCOUNT(19);
ALT_INV_BITCOUNT(18) <= NOT BITCOUNT(18);
ALT_INV_BITCOUNT(6) <= NOT BITCOUNT(6);
ALT_INV_BITCOUNT(17) <= NOT BITCOUNT(17);
ALT_INV_BITCOUNT(25) <= NOT BITCOUNT(25);
ALT_INV_BITCOUNT(26) <= NOT BITCOUNT(26);
ALT_INV_BITCOUNT(27) <= NOT BITCOUNT(27);
ALT_INV_BITCOUNT(24) <= NOT BITCOUNT(24);
ALT_INV_BITCOUNT(7) <= NOT BITCOUNT(7);
ALT_INV_BITCOUNT(31) <= NOT BITCOUNT(31);
ALT_INV_BITCOUNT(4) <= NOT BITCOUNT(4);
ALT_INV_BITCOUNT(0) <= NOT BITCOUNT(0);
ALT_INV_BITCOUNT(2) <= NOT BITCOUNT(2);
ALT_INV_BITCOUNT(1) <= NOT BITCOUNT(1);
ALT_INV_BITCOUNT(5) <= NOT BITCOUNT(5);
ALT_INV_BITCOUNT(3) <= NOT BITCOUNT(3);

-- Location: IOOBUF_X17_Y0_N76
\TXPIN~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_TXPIN~reg0_q\,
	devoe => ww_devoe,
	o => ww_TXPIN);

-- Location: IOOBUF_X17_Y0_N93
\LED1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_EN~input_o\,
	devoe => ww_devoe,
	o => ww_LED1);

-- Location: IOOBUF_X21_Y0_N53
\LED2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RUN~2_combout\,
	devoe => ww_devoe,
	o => ww_LED2);

-- Location: IOOBUF_X7_Y0_N19
\LED3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED3);

-- Location: IOIBUF_X15_Y61_N18
\CLOCK_50_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_in,
	o => \CLOCK_50_in~input_o\);

-- Location: CLKCTRL_G12
\CLOCK_50_in~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50_in~input_o\,
	outclk => \CLOCK_50_in~inputCLKENA0_outclk\);

-- Location: IOIBUF_X17_Y0_N58
\EN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LABCELL_X18_Y6_N0
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( BITCOUNT(0) ) + ( VCC ) + ( !VCC ))
-- \Add3~18\ = CARRY(( BITCOUNT(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(0),
	cin => GND,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: LABCELL_X18_Y6_N15
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( BITCOUNT(5) ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~6\ = CARRY(( BITCOUNT(5) ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(5),
	cin => \Add3~22\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: LABCELL_X18_Y6_N18
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( BITCOUNT(6) ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~54\ = CARRY(( BITCOUNT(6) ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(6),
	cin => \Add3~6\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: MLABCELL_X19_Y7_N0
\Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~125_sumout\ = SUM(( PRESCL(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~126\ = CARRY(( PRESCL(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(0),
	cin => GND,
	sumout => \Add2~125_sumout\,
	cout => \Add2~126\);

-- Location: FF_X19_Y7_N2
\PRESCL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~125_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(0));

-- Location: MLABCELL_X19_Y7_N3
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( PRESCL(1) ) + ( GND ) + ( \Add2~126\ ))
-- \Add2~30\ = CARRY(( PRESCL(1) ) + ( GND ) + ( \Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PRESCL(1),
	cin => \Add2~126\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X19_Y7_N5
\PRESCL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(1));

-- Location: MLABCELL_X19_Y7_N6
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( PRESCL(2) ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( PRESCL(2) ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_PRESCL(2),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X19_Y7_N8
\PRESCL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(2));

-- Location: MLABCELL_X19_Y7_N9
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( PRESCL(3) ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( PRESCL(3) ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(3),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X19_Y7_N11
\PRESCL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(3));

-- Location: MLABCELL_X19_Y7_N12
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( PRESCL(4) ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~22\ = CARRY(( PRESCL(4) ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_PRESCL(4),
	cin => \Add2~38\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X19_Y7_N14
\PRESCL[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(4));

-- Location: MLABCELL_X19_Y7_N15
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( PRESCL(5) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( PRESCL(5) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(5),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X19_Y7_N17
\PRESCL[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(5));

-- Location: MLABCELL_X19_Y7_N18
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( PRESCL(6) ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~18\ = CARRY(( PRESCL(6) ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(6),
	cin => \Add2~26\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X19_Y7_N20
\PRESCL[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(6));

-- Location: MLABCELL_X19_Y7_N21
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( PRESCL(7) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~10\ = CARRY(( PRESCL(7) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PRESCL(7),
	cin => \Add2~18\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X19_Y7_N23
\PRESCL[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(7));

-- Location: MLABCELL_X19_Y7_N24
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( PRESCL(8) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( PRESCL(8) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(8),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X19_Y7_N26
\PRESCL[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(8));

-- Location: MLABCELL_X19_Y7_N27
\Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~85_sumout\ = SUM(( PRESCL(9) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~86\ = CARRY(( PRESCL(9) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PRESCL(9),
	cin => \Add2~14\,
	sumout => \Add2~85_sumout\,
	cout => \Add2~86\);

-- Location: FF_X19_Y7_N29
\PRESCL[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~85_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(9));

-- Location: MLABCELL_X19_Y7_N30
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( PRESCL(10) ) + ( GND ) + ( \Add2~86\ ))
-- \Add2~58\ = CARRY(( PRESCL(10) ) + ( GND ) + ( \Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_PRESCL(10),
	cin => \Add2~86\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X19_Y7_N32
\PRESCL[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(10));

-- Location: MLABCELL_X19_Y7_N33
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( PRESCL(11) ) + ( GND ) + ( \Add2~58\ ))
-- \Add2~62\ = CARRY(( PRESCL(11) ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PRESCL(11),
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X19_Y7_N35
\PRESCL[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~61_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(11));

-- Location: MLABCELL_X19_Y7_N36
\Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~65_sumout\ = SUM(( PRESCL(12) ) + ( GND ) + ( \Add2~62\ ))
-- \Add2~66\ = CARRY(( PRESCL(12) ) + ( GND ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(12),
	cin => \Add2~62\,
	sumout => \Add2~65_sumout\,
	cout => \Add2~66\);

-- Location: FF_X19_Y7_N38
\PRESCL[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~65_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(12));

-- Location: MLABCELL_X19_Y7_N39
\Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~69_sumout\ = SUM(( PRESCL(13) ) + ( GND ) + ( \Add2~66\ ))
-- \Add2~70\ = CARRY(( PRESCL(13) ) + ( GND ) + ( \Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(13),
	cin => \Add2~66\,
	sumout => \Add2~69_sumout\,
	cout => \Add2~70\);

-- Location: FF_X19_Y7_N41
\PRESCL[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~69_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(13));

-- Location: MLABCELL_X19_Y7_N42
\Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~73_sumout\ = SUM(( PRESCL(14) ) + ( GND ) + ( \Add2~70\ ))
-- \Add2~74\ = CARRY(( PRESCL(14) ) + ( GND ) + ( \Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_PRESCL(14),
	cin => \Add2~70\,
	sumout => \Add2~73_sumout\,
	cout => \Add2~74\);

-- Location: FF_X19_Y7_N44
\PRESCL[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~73_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(14));

-- Location: LABCELL_X18_Y7_N48
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( !PRESCL(12) & ( !PRESCL(10) & ( (!PRESCL(11) & (!PRESCL(14) & !PRESCL(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PRESCL(11),
	datab => ALT_INV_PRESCL(14),
	datac => ALT_INV_PRESCL(13),
	datae => ALT_INV_PRESCL(12),
	dataf => ALT_INV_PRESCL(10),
	combout => \LessThan2~3_combout\);

-- Location: MLABCELL_X19_Y7_N45
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( PRESCL(15) ) + ( GND ) + ( \Add2~74\ ))
-- \Add2~2\ = CARRY(( PRESCL(15) ) + ( GND ) + ( \Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(15),
	cin => \Add2~74\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X19_Y7_N47
\PRESCL[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(15));

-- Location: MLABCELL_X19_Y7_N48
\Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~121_sumout\ = SUM(( PRESCL(16) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~122\ = CARRY(( PRESCL(16) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(16),
	cin => \Add2~2\,
	sumout => \Add2~121_sumout\,
	cout => \Add2~122\);

-- Location: FF_X19_Y7_N50
\PRESCL[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~121_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(16));

-- Location: MLABCELL_X19_Y7_N51
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( PRESCL(17) ) + ( GND ) + ( \Add2~122\ ))
-- \Add2~42\ = CARRY(( PRESCL(17) ) + ( GND ) + ( \Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PRESCL(17),
	cin => \Add2~122\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X19_Y7_N53
\PRESCL[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(17));

-- Location: MLABCELL_X19_Y7_N54
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( PRESCL(18) ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( PRESCL(18) ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(18),
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X19_Y7_N56
\PRESCL[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(18));

-- Location: MLABCELL_X19_Y7_N57
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( PRESCL(19) ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( PRESCL(19) ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(19),
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X19_Y7_N59
\PRESCL[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(19));

-- Location: MLABCELL_X19_Y6_N0
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( PRESCL(20) ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( PRESCL(20) ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(20),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X19_Y6_N2
\PRESCL[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(20));

-- Location: MLABCELL_X19_Y6_N3
\Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~89_sumout\ = SUM(( PRESCL(21) ) + ( GND ) + ( \Add2~54\ ))
-- \Add2~90\ = CARRY(( PRESCL(21) ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PRESCL(21),
	cin => \Add2~54\,
	sumout => \Add2~89_sumout\,
	cout => \Add2~90\);

-- Location: FF_X19_Y6_N5
\PRESCL[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~89_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(21));

-- Location: MLABCELL_X19_Y6_N6
\Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~97_sumout\ = SUM(( PRESCL(22) ) + ( GND ) + ( \Add2~90\ ))
-- \Add2~98\ = CARRY(( PRESCL(22) ) + ( GND ) + ( \Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_PRESCL(22),
	cin => \Add2~90\,
	sumout => \Add2~97_sumout\,
	cout => \Add2~98\);

-- Location: FF_X19_Y6_N8
\PRESCL[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~97_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(22));

-- Location: MLABCELL_X19_Y6_N9
\Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~101_sumout\ = SUM(( PRESCL(23) ) + ( GND ) + ( \Add2~98\ ))
-- \Add2~102\ = CARRY(( PRESCL(23) ) + ( GND ) + ( \Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(23),
	cin => \Add2~98\,
	sumout => \Add2~101_sumout\,
	cout => \Add2~102\);

-- Location: FF_X19_Y6_N11
\PRESCL[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~101_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(23));

-- Location: MLABCELL_X19_Y6_N12
\Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~105_sumout\ = SUM(( PRESCL(24) ) + ( GND ) + ( \Add2~102\ ))
-- \Add2~106\ = CARRY(( PRESCL(24) ) + ( GND ) + ( \Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_PRESCL(24),
	cin => \Add2~102\,
	sumout => \Add2~105_sumout\,
	cout => \Add2~106\);

-- Location: FF_X19_Y6_N14
\PRESCL[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~105_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(24));

-- Location: MLABCELL_X19_Y6_N15
\Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~77_sumout\ = SUM(( PRESCL(25) ) + ( GND ) + ( \Add2~106\ ))
-- \Add2~78\ = CARRY(( PRESCL(25) ) + ( GND ) + ( \Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(25),
	cin => \Add2~106\,
	sumout => \Add2~77_sumout\,
	cout => \Add2~78\);

-- Location: FF_X19_Y6_N17
\PRESCL[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~77_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(25));

-- Location: MLABCELL_X19_Y6_N18
\Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~93_sumout\ = SUM(( PRESCL(26) ) + ( GND ) + ( \Add2~78\ ))
-- \Add2~94\ = CARRY(( PRESCL(26) ) + ( GND ) + ( \Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(26),
	cin => \Add2~78\,
	sumout => \Add2~93_sumout\,
	cout => \Add2~94\);

-- Location: FF_X19_Y6_N20
\PRESCL[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~93_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(26));

-- Location: MLABCELL_X19_Y6_N21
\Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~81_sumout\ = SUM(( PRESCL(27) ) + ( GND ) + ( \Add2~94\ ))
-- \Add2~82\ = CARRY(( PRESCL(27) ) + ( GND ) + ( \Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_PRESCL(27),
	cin => \Add2~94\,
	sumout => \Add2~81_sumout\,
	cout => \Add2~82\);

-- Location: FF_X19_Y6_N23
\PRESCL[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~81_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(27));

-- Location: MLABCELL_X19_Y6_N24
\Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~117_sumout\ = SUM(( PRESCL(28) ) + ( GND ) + ( \Add2~82\ ))
-- \Add2~118\ = CARRY(( PRESCL(28) ) + ( GND ) + ( \Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_PRESCL(28),
	cin => \Add2~82\,
	sumout => \Add2~117_sumout\,
	cout => \Add2~118\);

-- Location: FF_X19_Y6_N26
\PRESCL[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~117_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(28));

-- Location: MLABCELL_X19_Y6_N27
\Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~113_sumout\ = SUM(( PRESCL(29) ) + ( GND ) + ( \Add2~118\ ))
-- \Add2~114\ = CARRY(( PRESCL(29) ) + ( GND ) + ( \Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PRESCL(29),
	cin => \Add2~118\,
	sumout => \Add2~113_sumout\,
	cout => \Add2~114\);

-- Location: FF_X19_Y6_N29
\PRESCL[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~113_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(29));

-- Location: MLABCELL_X19_Y6_N30
\Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~109_sumout\ = SUM(( PRESCL(30) ) + ( GND ) + ( \Add2~114\ ))
-- \Add2~110\ = CARRY(( PRESCL(30) ) + ( GND ) + ( \Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_PRESCL(30),
	cin => \Add2~114\,
	sumout => \Add2~109_sumout\,
	cout => \Add2~110\);

-- Location: FF_X19_Y6_N32
\PRESCL[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~109_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(30));

-- Location: MLABCELL_X19_Y6_N33
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( PRESCL(31) ) + ( GND ) + ( \Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PRESCL(31),
	cin => \Add2~110\,
	sumout => \Add2~5_sumout\);

-- Location: FF_X19_Y6_N35
\PRESCL[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	sclr => \LessThan2~7_combout\,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRESCL(31));

-- Location: MLABCELL_X19_Y6_N39
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( !PRESCL(18) & ( (!PRESCL(17) & (!PRESCL(19) & !PRESCL(20))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PRESCL(17),
	datac => ALT_INV_PRESCL(19),
	datad => ALT_INV_PRESCL(20),
	dataf => ALT_INV_PRESCL(18),
	combout => \LessThan2~2_combout\);

-- Location: MLABCELL_X19_Y6_N36
\LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ( !PRESCL(16) & ( (!PRESCL(30) & (!PRESCL(28) & !PRESCL(29))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_PRESCL(30),
	datac => ALT_INV_PRESCL(28),
	datad => ALT_INV_PRESCL(29),
	dataf => ALT_INV_PRESCL(16),
	combout => \LessThan2~5_combout\);

-- Location: MLABCELL_X19_Y6_N42
\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ( !PRESCL(21) & ( !PRESCL(22) & ( (!PRESCL(24) & (!PRESCL(26) & !PRESCL(23))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_PRESCL(24),
	datac => ALT_INV_PRESCL(26),
	datad => ALT_INV_PRESCL(23),
	datae => ALT_INV_PRESCL(21),
	dataf => ALT_INV_PRESCL(22),
	combout => \LessThan2~4_combout\);

-- Location: MLABCELL_X19_Y6_N48
\LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ( !PRESCL(9) & ( \LessThan2~4_combout\ & ( (!PRESCL(27) & (!PRESCL(25) & \LessThan2~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_PRESCL(27),
	datab => ALT_INV_PRESCL(25),
	datac => \ALT_INV_LessThan2~5_combout\,
	datae => ALT_INV_PRESCL(9),
	dataf => \ALT_INV_LessThan2~4_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LABCELL_X21_Y7_N51
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( PRESCL(2) & ( PRESCL(3) & ( (PRESCL(4) & PRESCL(5)) ) ) ) # ( !PRESCL(2) & ( PRESCL(3) & ( (PRESCL(4) & PRESCL(5)) ) ) ) # ( PRESCL(2) & ( !PRESCL(3) & ( (PRESCL(4) & PRESCL(5)) ) ) ) # ( !PRESCL(2) & ( !PRESCL(3) & ( (PRESCL(4) 
-- & (PRESCL(1) & PRESCL(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_PRESCL(4),
	datac => ALT_INV_PRESCL(1),
	datad => ALT_INV_PRESCL(5),
	datae => ALT_INV_PRESCL(2),
	dataf => ALT_INV_PRESCL(3),
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X21_Y7_N54
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( PRESCL(7) & ( \LessThan2~0_combout\ & ( PRESCL(8) ) ) ) # ( PRESCL(7) & ( !\LessThan2~0_combout\ & ( (PRESCL(6) & PRESCL(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_PRESCL(6),
	datac => ALT_INV_PRESCL(8),
	datae => ALT_INV_PRESCL(7),
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: MLABCELL_X19_Y4_N30
\LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = ( \LessThan2~6_combout\ & ( \LessThan2~1_combout\ & ( !PRESCL(31) ) ) ) # ( !\LessThan2~6_combout\ & ( \LessThan2~1_combout\ & ( !PRESCL(31) ) ) ) # ( \LessThan2~6_combout\ & ( !\LessThan2~1_combout\ & ( (!PRESCL(31) & 
-- ((!\LessThan2~3_combout\) # ((!\LessThan2~2_combout\) # (PRESCL(15))))) ) ) ) # ( !\LessThan2~6_combout\ & ( !\LessThan2~1_combout\ & ( !PRESCL(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~3_combout\,
	datab => ALT_INV_PRESCL(31),
	datac => ALT_INV_PRESCL(15),
	datad => \ALT_INV_LessThan2~2_combout\,
	datae => \ALT_INV_LessThan2~6_combout\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LABCELL_X18_Y5_N51
\LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = ( !BITCOUNT(19) & ( !BITCOUNT(18) & ( (!BITCOUNT(21) & (!BITCOUNT(22) & (!BITCOUNT(23) & !BITCOUNT(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(21),
	datab => ALT_INV_BITCOUNT(22),
	datac => ALT_INV_BITCOUNT(23),
	datad => ALT_INV_BITCOUNT(20),
	datae => ALT_INV_BITCOUNT(19),
	dataf => ALT_INV_BITCOUNT(18),
	combout => \LessThan3~1_combout\);

-- Location: LABCELL_X18_Y5_N21
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( BITCOUNT(27) ) + ( GND ) + ( \Add3~42\ ))
-- \Add3~38\ = CARRY(( BITCOUNT(27) ) + ( GND ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(27),
	cin => \Add3~42\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: LABCELL_X18_Y5_N24
\Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~89_sumout\ = SUM(( BITCOUNT(28) ) + ( GND ) + ( \Add3~38\ ))
-- \Add3~90\ = CARRY(( BITCOUNT(28) ) + ( GND ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(28),
	cin => \Add3~38\,
	sumout => \Add3~89_sumout\,
	cout => \Add3~90\);

-- Location: FF_X18_Y5_N26
\BITCOUNT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~89_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(28));

-- Location: LABCELL_X18_Y5_N27
\Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~85_sumout\ = SUM(( BITCOUNT(29) ) + ( GND ) + ( \Add3~90\ ))
-- \Add3~86\ = CARRY(( BITCOUNT(29) ) + ( GND ) + ( \Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(29),
	cin => \Add3~90\,
	sumout => \Add3~85_sumout\,
	cout => \Add3~86\);

-- Location: FF_X18_Y5_N29
\BITCOUNT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~85_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(29));

-- Location: LABCELL_X18_Y5_N30
\Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~81_sumout\ = SUM(( BITCOUNT(30) ) + ( GND ) + ( \Add3~86\ ))
-- \Add3~82\ = CARRY(( BITCOUNT(30) ) + ( GND ) + ( \Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_BITCOUNT(30),
	cin => \Add3~86\,
	sumout => \Add3~81_sumout\,
	cout => \Add3~82\);

-- Location: FF_X18_Y5_N32
\BITCOUNT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~81_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(30));

-- Location: LABCELL_X18_Y5_N33
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( BITCOUNT(31) ) + ( GND ) + ( \Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(31),
	cin => \Add3~82\,
	sumout => \Add3~25_sumout\);

-- Location: FF_X18_Y5_N35
\BITCOUNT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~25_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(31));

-- Location: LABCELL_X18_Y5_N54
\LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = ( !BITCOUNT(10) & ( !BITCOUNT(8) & ( (!BITCOUNT(29) & (!BITCOUNT(9) & (!BITCOUNT(28) & !BITCOUNT(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(29),
	datab => ALT_INV_BITCOUNT(9),
	datac => ALT_INV_BITCOUNT(28),
	datad => ALT_INV_BITCOUNT(30),
	datae => ALT_INV_BITCOUNT(10),
	dataf => ALT_INV_BITCOUNT(8),
	combout => \LessThan3~2_combout\);

-- Location: LABCELL_X17_Y6_N6
\LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = ( !BITCOUNT(12) & ( !BITCOUNT(13) & ( (!BITCOUNT(11) & (!BITCOUNT(14) & (!BITCOUNT(15) & !BITCOUNT(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(11),
	datab => ALT_INV_BITCOUNT(14),
	datac => ALT_INV_BITCOUNT(15),
	datad => ALT_INV_BITCOUNT(16),
	datae => ALT_INV_BITCOUNT(12),
	dataf => ALT_INV_BITCOUNT(13),
	combout => \LessThan3~3_combout\);

-- Location: LABCELL_X18_Y5_N42
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \LessThan3~0_combout\ & ( \LessThan3~3_combout\ & ( (\LessThan3~1_combout\ & (!BITCOUNT(31) & (\LessThan3~2_combout\ & !BITCOUNT(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~1_combout\,
	datab => ALT_INV_BITCOUNT(31),
	datac => \ALT_INV_LessThan3~2_combout\,
	datad => ALT_INV_BITCOUNT(7),
	datae => \ALT_INV_LessThan3~0_combout\,
	dataf => \ALT_INV_LessThan3~3_combout\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X17_Y5_N3
\Equal54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal54~0_combout\ = ( BITCOUNT(2) & ( (!BITCOUNT(3) & BITCOUNT(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(3),
	datad => ALT_INV_BITCOUNT(5),
	dataf => ALT_INV_BITCOUNT(2),
	combout => \Equal54~0_combout\);

-- Location: MLABCELL_X19_Y3_N21
\State~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~12_combout\ = ( \Equal54~0_combout\ & ( (BITCOUNT(0) & (BITCOUNT(1) & BITCOUNT(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(0),
	datab => ALT_INV_BITCOUNT(1),
	datac => ALT_INV_BITCOUNT(4),
	dataf => \ALT_INV_Equal54~0_combout\,
	combout => \State~12_combout\);

-- Location: MLABCELL_X19_Y4_N12
\Equal40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal40~0_combout\ = ( BITCOUNT(5) & ( BITCOUNT(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_BITCOUNT(3),
	dataf => ALT_INV_BITCOUNT(5),
	combout => \Equal40~0_combout\);

-- Location: MLABCELL_X19_Y3_N48
\State~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~11_combout\ = ( \Equal40~0_combout\ & ( (!BITCOUNT(7) & (\LessThan3~2_combout\ & (!BITCOUNT(4) & \LessThan3~3_combout\))) ) ) # ( !\Equal40~0_combout\ & ( (!BITCOUNT(7) & (\LessThan3~2_combout\ & \LessThan3~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(7),
	datab => \ALT_INV_LessThan3~2_combout\,
	datac => ALT_INV_BITCOUNT(4),
	datad => \ALT_INV_LessThan3~3_combout\,
	dataf => \ALT_INV_Equal40~0_combout\,
	combout => \State~11_combout\);

-- Location: MLABCELL_X19_Y3_N0
\State~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~8_combout\ = ( \State~12_combout\ & ( \State~11_combout\ & ( (!\Equal0~0_combout\ & (((\LessThan3~0_combout\ & \LessThan3~1_combout\)) # (BITCOUNT(31)))) ) ) ) # ( !\State~12_combout\ & ( \State~11_combout\ & ( ((\LessThan3~0_combout\ & 
-- \LessThan3~1_combout\)) # (BITCOUNT(31)) ) ) ) # ( \State~12_combout\ & ( !\State~11_combout\ & ( (!\Equal0~0_combout\ & BITCOUNT(31)) ) ) ) # ( !\State~12_combout\ & ( !\State~11_combout\ & ( BITCOUNT(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111000000010001111111110001000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~0_combout\,
	datab => \ALT_INV_LessThan3~1_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_BITCOUNT(31),
	datae => \ALT_INV_State~12_combout\,
	dataf => \ALT_INV_State~11_combout\,
	combout => \State~8_combout\);

-- Location: LABCELL_X18_Y4_N12
\State~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~9_combout\ = (\LessThan2~7_combout\ & !\State~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan2~7_combout\,
	datad => \ALT_INV_State~8_combout\,
	combout => \State~9_combout\);

-- Location: LABCELL_X18_Y4_N36
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \State~9_combout\ & ( ((\State.Tx~q\ & ((!\BITCOUNT~2_combout\) # (\TXPIN~0_combout\)))) # (\State.Func~q\) ) ) # ( !\State~9_combout\ & ( (\State.Tx~q\) # (\State.Func~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010101110101111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.Func~q\,
	datab => \ALT_INV_TXPIN~0_combout\,
	datac => \ALT_INV_State.Tx~q\,
	datad => \ALT_INV_BITCOUNT~2_combout\,
	dataf => \ALT_INV_State~9_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X18_Y4_N35
\State.Tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \Selector1~0_combout\,
	sload => VCC,
	ena => \RUN~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Tx~q\);

-- Location: LABCELL_X18_Y4_N48
\BITCOUNT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BITCOUNT[4]~4_combout\ = ( \State~8_combout\ & ( \BITCOUNT~2_combout\ & ( (\State.Tx~q\ & (\RUN~2_combout\ & (\LessThan2~7_combout\ & \TXPIN~0_combout\))) ) ) ) # ( !\State~8_combout\ & ( \BITCOUNT~2_combout\ & ( (\State.Tx~q\ & (\RUN~2_combout\ & 
-- \LessThan2~7_combout\)) ) ) ) # ( \State~8_combout\ & ( !\BITCOUNT~2_combout\ & ( (\State.Tx~q\ & (\RUN~2_combout\ & \LessThan2~7_combout\)) ) ) ) # ( !\State~8_combout\ & ( !\BITCOUNT~2_combout\ & ( (\State.Tx~q\ & (\RUN~2_combout\ & 
-- \LessThan2~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.Tx~q\,
	datab => \ALT_INV_RUN~2_combout\,
	datac => \ALT_INV_LessThan2~7_combout\,
	datad => \ALT_INV_TXPIN~0_combout\,
	datae => \ALT_INV_State~8_combout\,
	dataf => \ALT_INV_BITCOUNT~2_combout\,
	combout => \BITCOUNT[4]~4_combout\);

-- Location: FF_X18_Y6_N20
\BITCOUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~53_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(6));

-- Location: LABCELL_X18_Y6_N21
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( BITCOUNT(7) ) + ( GND ) + ( \Add3~54\ ))
-- \Add3~30\ = CARRY(( BITCOUNT(7) ) + ( GND ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_BITCOUNT(7),
	cin => \Add3~54\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: FF_X18_Y6_N23
\BITCOUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~29_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(7));

-- Location: LABCELL_X18_Y6_N24
\Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~93_sumout\ = SUM(( BITCOUNT(8) ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~94\ = CARRY(( BITCOUNT(8) ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(8),
	cin => \Add3~30\,
	sumout => \Add3~93_sumout\,
	cout => \Add3~94\);

-- Location: FF_X18_Y6_N26
\BITCOUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~93_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(8));

-- Location: LABCELL_X18_Y6_N27
\Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~97_sumout\ = SUM(( BITCOUNT(9) ) + ( GND ) + ( \Add3~94\ ))
-- \Add3~98\ = CARRY(( BITCOUNT(9) ) + ( GND ) + ( \Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(9),
	cin => \Add3~94\,
	sumout => \Add3~97_sumout\,
	cout => \Add3~98\);

-- Location: FF_X18_Y5_N47
\BITCOUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \Add3~97_sumout\,
	sclr => \BITCOUNT~3_combout\,
	sload => VCC,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(9));

-- Location: LABCELL_X18_Y6_N30
\Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~101_sumout\ = SUM(( BITCOUNT(10) ) + ( GND ) + ( \Add3~98\ ))
-- \Add3~102\ = CARRY(( BITCOUNT(10) ) + ( GND ) + ( \Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_BITCOUNT(10),
	cin => \Add3~98\,
	sumout => \Add3~101_sumout\,
	cout => \Add3~102\);

-- Location: FF_X18_Y6_N32
\BITCOUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~101_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(10));

-- Location: LABCELL_X18_Y6_N33
\Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~105_sumout\ = SUM(( BITCOUNT(11) ) + ( GND ) + ( \Add3~102\ ))
-- \Add3~106\ = CARRY(( BITCOUNT(11) ) + ( GND ) + ( \Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(11),
	cin => \Add3~102\,
	sumout => \Add3~105_sumout\,
	cout => \Add3~106\);

-- Location: FF_X18_Y6_N35
\BITCOUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~105_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(11));

-- Location: LABCELL_X18_Y6_N36
\Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~109_sumout\ = SUM(( BITCOUNT(12) ) + ( GND ) + ( \Add3~106\ ))
-- \Add3~110\ = CARRY(( BITCOUNT(12) ) + ( GND ) + ( \Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(12),
	cin => \Add3~106\,
	sumout => \Add3~109_sumout\,
	cout => \Add3~110\);

-- Location: FF_X18_Y6_N38
\BITCOUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~109_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(12));

-- Location: LABCELL_X18_Y6_N39
\Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~113_sumout\ = SUM(( BITCOUNT(13) ) + ( GND ) + ( \Add3~110\ ))
-- \Add3~114\ = CARRY(( BITCOUNT(13) ) + ( GND ) + ( \Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(13),
	cin => \Add3~110\,
	sumout => \Add3~113_sumout\,
	cout => \Add3~114\);

-- Location: FF_X18_Y6_N41
\BITCOUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~113_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(13));

-- Location: LABCELL_X18_Y6_N42
\Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~117_sumout\ = SUM(( BITCOUNT(14) ) + ( GND ) + ( \Add3~114\ ))
-- \Add3~118\ = CARRY(( BITCOUNT(14) ) + ( GND ) + ( \Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_BITCOUNT(14),
	cin => \Add3~114\,
	sumout => \Add3~117_sumout\,
	cout => \Add3~118\);

-- Location: FF_X18_Y6_N44
\BITCOUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~117_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(14));

-- Location: LABCELL_X18_Y6_N45
\Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~121_sumout\ = SUM(( BITCOUNT(15) ) + ( GND ) + ( \Add3~118\ ))
-- \Add3~122\ = CARRY(( BITCOUNT(15) ) + ( GND ) + ( \Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(15),
	cin => \Add3~118\,
	sumout => \Add3~121_sumout\,
	cout => \Add3~122\);

-- Location: FF_X18_Y6_N47
\BITCOUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~121_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(15));

-- Location: LABCELL_X18_Y6_N48
\Add3~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~125_sumout\ = SUM(( BITCOUNT(16) ) + ( GND ) + ( \Add3~122\ ))
-- \Add3~126\ = CARRY(( BITCOUNT(16) ) + ( GND ) + ( \Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(16),
	cin => \Add3~122\,
	sumout => \Add3~125_sumout\,
	cout => \Add3~126\);

-- Location: FF_X18_Y6_N50
\BITCOUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~125_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(16));

-- Location: LABCELL_X18_Y6_N51
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( BITCOUNT(17) ) + ( GND ) + ( \Add3~126\ ))
-- \Add3~50\ = CARRY(( BITCOUNT(17) ) + ( GND ) + ( \Add3~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(17),
	cin => \Add3~126\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: FF_X18_Y6_N53
\BITCOUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~49_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(17));

-- Location: LABCELL_X18_Y6_N54
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( BITCOUNT(18) ) + ( GND ) + ( \Add3~50\ ))
-- \Add3~58\ = CARRY(( BITCOUNT(18) ) + ( GND ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(18),
	cin => \Add3~50\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

-- Location: FF_X18_Y6_N56
\BITCOUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~57_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(18));

-- Location: LABCELL_X18_Y6_N57
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( BITCOUNT(19) ) + ( GND ) + ( \Add3~58\ ))
-- \Add3~62\ = CARRY(( BITCOUNT(19) ) + ( GND ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(19),
	cin => \Add3~58\,
	sumout => \Add3~61_sumout\,
	cout => \Add3~62\);

-- Location: FF_X18_Y6_N59
\BITCOUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~61_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(19));

-- Location: LABCELL_X18_Y5_N0
\Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~65_sumout\ = SUM(( BITCOUNT(20) ) + ( GND ) + ( \Add3~62\ ))
-- \Add3~66\ = CARRY(( BITCOUNT(20) ) + ( GND ) + ( \Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_BITCOUNT(20),
	cin => \Add3~62\,
	sumout => \Add3~65_sumout\,
	cout => \Add3~66\);

-- Location: FF_X18_Y5_N2
\BITCOUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~65_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(20));

-- Location: LABCELL_X18_Y5_N3
\Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~69_sumout\ = SUM(( BITCOUNT(21) ) + ( GND ) + ( \Add3~66\ ))
-- \Add3~70\ = CARRY(( BITCOUNT(21) ) + ( GND ) + ( \Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(21),
	cin => \Add3~66\,
	sumout => \Add3~69_sumout\,
	cout => \Add3~70\);

-- Location: FF_X18_Y5_N5
\BITCOUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~69_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(21));

-- Location: LABCELL_X18_Y5_N6
\Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~73_sumout\ = SUM(( BITCOUNT(22) ) + ( GND ) + ( \Add3~70\ ))
-- \Add3~74\ = CARRY(( BITCOUNT(22) ) + ( GND ) + ( \Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_BITCOUNT(22),
	cin => \Add3~70\,
	sumout => \Add3~73_sumout\,
	cout => \Add3~74\);

-- Location: FF_X18_Y5_N8
\BITCOUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~73_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(22));

-- Location: LABCELL_X18_Y5_N9
\Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~77_sumout\ = SUM(( BITCOUNT(23) ) + ( GND ) + ( \Add3~74\ ))
-- \Add3~78\ = CARRY(( BITCOUNT(23) ) + ( GND ) + ( \Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(23),
	cin => \Add3~74\,
	sumout => \Add3~77_sumout\,
	cout => \Add3~78\);

-- Location: FF_X18_Y5_N11
\BITCOUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~77_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(23));

-- Location: LABCELL_X18_Y5_N12
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( BITCOUNT(24) ) + ( GND ) + ( \Add3~78\ ))
-- \Add3~34\ = CARRY(( BITCOUNT(24) ) + ( GND ) + ( \Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_BITCOUNT(24),
	cin => \Add3~78\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: FF_X18_Y5_N14
\BITCOUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~33_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(24));

-- Location: LABCELL_X18_Y5_N15
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( BITCOUNT(25) ) + ( GND ) + ( \Add3~34\ ))
-- \Add3~46\ = CARRY(( BITCOUNT(25) ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(25),
	cin => \Add3~34\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: FF_X18_Y5_N17
\BITCOUNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~45_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(25));

-- Location: LABCELL_X18_Y5_N18
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( BITCOUNT(26) ) + ( GND ) + ( \Add3~46\ ))
-- \Add3~42\ = CARRY(( BITCOUNT(26) ) + ( GND ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(26),
	cin => \Add3~46\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: FF_X18_Y5_N20
\BITCOUNT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~41_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(26));

-- Location: FF_X18_Y5_N23
\BITCOUNT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~37_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(27));

-- Location: LABCELL_X18_Y5_N36
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( !BITCOUNT(6) & ( !BITCOUNT(17) & ( (!BITCOUNT(27) & (!BITCOUNT(24) & (!BITCOUNT(26) & !BITCOUNT(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(27),
	datab => ALT_INV_BITCOUNT(24),
	datac => ALT_INV_BITCOUNT(26),
	datad => ALT_INV_BITCOUNT(25),
	datae => ALT_INV_BITCOUNT(6),
	dataf => ALT_INV_BITCOUNT(17),
	combout => \LessThan3~0_combout\);

-- Location: MLABCELL_X19_Y3_N18
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !BITCOUNT(31) & ( !BITCOUNT(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_BITCOUNT(7),
	dataf => ALT_INV_BITCOUNT(31),
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X19_Y3_N6
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \LessThan3~3_combout\ & ( \LessThan3~2_combout\ & ( (\LessThan3~0_combout\ & (!BITCOUNT(4) & (\Equal0~3_combout\ & \LessThan3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~0_combout\,
	datab => ALT_INV_BITCOUNT(4),
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_LessThan3~1_combout\,
	datae => \ALT_INV_LessThan3~3_combout\,
	dataf => \ALT_INV_LessThan3~2_combout\,
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X19_Y3_N42
\BITCOUNT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BITCOUNT~0_combout\ = ( BITCOUNT(0) & ( \Equal0~1_combout\ & ( (!BITCOUNT(5) & (BITCOUNT(1) & (!BITCOUNT(2) $ (!BITCOUNT(3))))) # (BITCOUNT(5) & ((!BITCOUNT(3) & (BITCOUNT(2))) # (BITCOUNT(3) & ((!BITCOUNT(1)))))) ) ) ) # ( !BITCOUNT(0) & ( 
-- \Equal0~1_combout\ & ( (!BITCOUNT(2) & (((BITCOUNT(3) & !BITCOUNT(1))))) # (BITCOUNT(2) & (BITCOUNT(5) & ((BITCOUNT(1)) # (BITCOUNT(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001101000100010001010100111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(5),
	datab => ALT_INV_BITCOUNT(2),
	datac => ALT_INV_BITCOUNT(3),
	datad => ALT_INV_BITCOUNT(1),
	datae => ALT_INV_BITCOUNT(0),
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \BITCOUNT~0_combout\);

-- Location: LABCELL_X17_Y5_N36
\BITCOUNT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BITCOUNT~5_combout\ = ( \Equal0~0_combout\ & ( BITCOUNT(2) & ( (!BITCOUNT(5) & ((!BITCOUNT(4) & (!BITCOUNT(0) & BITCOUNT(1))) # (BITCOUNT(4) & ((!BITCOUNT(1)))))) ) ) ) # ( \Equal0~0_combout\ & ( !BITCOUNT(2) & ( (!BITCOUNT(4) & (!BITCOUNT(1) & 
-- (!BITCOUNT(5) $ (!BITCOUNT(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000000000000000000000000000000000101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(5),
	datab => ALT_INV_BITCOUNT(0),
	datac => ALT_INV_BITCOUNT(4),
	datad => ALT_INV_BITCOUNT(1),
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => ALT_INV_BITCOUNT(2),
	combout => \BITCOUNT~5_combout\);

-- Location: LABCELL_X17_Y5_N12
\BITCOUNT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BITCOUNT~6_combout\ = ( \Equal0~0_combout\ & ( BITCOUNT(2) & ( (!BITCOUNT(5) & (!BITCOUNT(4) $ (((BITCOUNT(0) & BITCOUNT(1)))))) ) ) ) # ( \Equal0~0_combout\ & ( !BITCOUNT(2) & ( (!BITCOUNT(4) & (!BITCOUNT(1) $ (((!BITCOUNT(0)) # (BITCOUNT(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010001010001000000000000000001000100010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(4),
	datab => ALT_INV_BITCOUNT(5),
	datac => ALT_INV_BITCOUNT(0),
	datad => ALT_INV_BITCOUNT(1),
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => ALT_INV_BITCOUNT(2),
	combout => \BITCOUNT~6_combout\);

-- Location: LABCELL_X17_Y5_N48
\BITCOUNT~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BITCOUNT~7_combout\ = ( \BITCOUNT~6_combout\ & ( (\BITCOUNT~5_combout\) # (BITCOUNT(3)) ) ) # ( !\BITCOUNT~6_combout\ & ( (!BITCOUNT(3) & \BITCOUNT~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(3),
	datad => \ALT_INV_BITCOUNT~5_combout\,
	dataf => \ALT_INV_BITCOUNT~6_combout\,
	combout => \BITCOUNT~7_combout\);

-- Location: MLABCELL_X19_Y5_N33
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( !BITCOUNT(5) & ( !BITCOUNT(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_BITCOUNT(3),
	dataf => ALT_INV_BITCOUNT(5),
	combout => \Equal2~1_combout\);

-- Location: MLABCELL_X19_Y4_N21
\Equal18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal18~1_combout\ = ( \Equal2~1_combout\ & ( \Equal0~0_combout\ & ( (BITCOUNT(4) & (BITCOUNT(1) & (!BITCOUNT(0) & !BITCOUNT(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(4),
	datab => ALT_INV_BITCOUNT(1),
	datac => ALT_INV_BITCOUNT(0),
	datad => ALT_INV_BITCOUNT(2),
	datae => \ALT_INV_Equal2~1_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal18~1_combout\);

-- Location: LABCELL_X17_Y6_N33
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !BITCOUNT(1) & ( (!BITCOUNT(3) & !BITCOUNT(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(3),
	datad => ALT_INV_BITCOUNT(5),
	dataf => ALT_INV_BITCOUNT(1),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X18_Y4_N15
\Equal16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal16~1_combout\ = ( \Equal0~0_combout\ & ( (!BITCOUNT(2) & (!BITCOUNT(0) & (BITCOUNT(4) & \Equal0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(0),
	datac => ALT_INV_BITCOUNT(4),
	datad => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal16~1_combout\);

-- Location: MLABCELL_X19_Y5_N48
\Equal17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = ( \Equal0~0_combout\ & ( \Equal0~2_combout\ & ( (BITCOUNT(0) & (!BITCOUNT(2) & BITCOUNT(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(0),
	datac => ALT_INV_BITCOUNT(2),
	datad => ALT_INV_BITCOUNT(4),
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal17~0_combout\);

-- Location: LABCELL_X17_Y4_N36
\Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = ( !BITCOUNT(5) & ( BITCOUNT(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_BITCOUNT(3),
	dataf => ALT_INV_BITCOUNT(5),
	combout => \Equal8~0_combout\);

-- Location: MLABCELL_X19_Y4_N51
\Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = ( BITCOUNT(2) & ( !BITCOUNT(4) & ( (\Equal8~0_combout\ & (BITCOUNT(0) & (\Equal0~0_combout\ & BITCOUNT(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~0_combout\,
	datab => ALT_INV_BITCOUNT(0),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_BITCOUNT(1),
	datae => ALT_INV_BITCOUNT(2),
	dataf => ALT_INV_BITCOUNT(4),
	combout => \Equal15~0_combout\);

-- Location: MLABCELL_X19_Y5_N12
\Equal19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal19~0_combout\ = ( \Equal0~0_combout\ & ( BITCOUNT(0) & ( (!BITCOUNT(2) & (BITCOUNT(1) & (\Equal2~1_combout\ & BITCOUNT(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(1),
	datac => \ALT_INV_Equal2~1_combout\,
	datad => ALT_INV_BITCOUNT(4),
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => ALT_INV_BITCOUNT(0),
	combout => \Equal19~0_combout\);

-- Location: MLABCELL_X19_Y4_N39
\Equal22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal22~0_combout\ = ( \Equal2~1_combout\ & ( BITCOUNT(1) & ( (BITCOUNT(2) & (!BITCOUNT(0) & (\Equal0~0_combout\ & BITCOUNT(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(0),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => ALT_INV_BITCOUNT(4),
	datae => \ALT_INV_Equal2~1_combout\,
	dataf => ALT_INV_BITCOUNT(1),
	combout => \Equal22~0_combout\);

-- Location: LABCELL_X18_Y4_N21
\TXPIN~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~19_combout\ = ( !\Equal19~0_combout\ & ( !\Equal22~0_combout\ & ( (!\Equal18~1_combout\ & (!\Equal16~1_combout\ & (!\Equal17~0_combout\ & !\Equal15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal18~1_combout\,
	datab => \ALT_INV_Equal16~1_combout\,
	datac => \ALT_INV_Equal17~0_combout\,
	datad => \ALT_INV_Equal15~0_combout\,
	datae => \ALT_INV_Equal19~0_combout\,
	dataf => \ALT_INV_Equal22~0_combout\,
	combout => \TXPIN~19_combout\);

-- Location: LABCELL_X17_Y5_N18
\TXPIN~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~38_combout\ = ( \Equal2~1_combout\ & ( (!BITCOUNT(4) & (BITCOUNT(1) & (!BITCOUNT(2) & \Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(4),
	datab => ALT_INV_BITCOUNT(1),
	datac => ALT_INV_BITCOUNT(2),
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal2~1_combout\,
	combout => \TXPIN~38_combout\);

-- Location: LABCELL_X17_Y6_N42
\Equal32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal32~0_combout\ = ( !BITCOUNT(3) & ( (BITCOUNT(5) & !BITCOUNT(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(5),
	datad => ALT_INV_BITCOUNT(1),
	dataf => ALT_INV_BITCOUNT(3),
	combout => \Equal32~0_combout\);

-- Location: LABCELL_X17_Y5_N27
\Equal53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal53~0_combout\ = ( \Equal32~0_combout\ & ( (BITCOUNT(2) & (BITCOUNT(4) & (BITCOUNT(0) & \Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(4),
	datac => ALT_INV_BITCOUNT(0),
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal32~0_combout\,
	combout => \Equal53~0_combout\);

-- Location: LABCELL_X17_Y5_N21
\Equal18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = ( !BITCOUNT(0) & ( (BITCOUNT(4) & (BITCOUNT(1) & \Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(4),
	datab => ALT_INV_BITCOUNT(1),
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => ALT_INV_BITCOUNT(0),
	combout => \Equal18~0_combout\);

-- Location: LABCELL_X17_Y5_N24
\TXPIN~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~37_combout\ = ( \Equal0~2_combout\ & ( (!BITCOUNT(4) & (\Equal0~0_combout\ & ((!BITCOUNT(0)) # (BITCOUNT(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110001000000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(4),
	datac => ALT_INV_BITCOUNT(0),
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \TXPIN~37_combout\);

-- Location: LABCELL_X17_Y5_N0
\BITCOUNT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BITCOUNT~1_combout\ = ( !\TXPIN~37_combout\ & ( (!\TXPIN~38_combout\ & (!\Equal53~0_combout\ & ((!\Equal54~0_combout\) # (!\Equal18~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TXPIN~38_combout\,
	datab => \ALT_INV_Equal53~0_combout\,
	datac => \ALT_INV_Equal54~0_combout\,
	datad => \ALT_INV_Equal18~0_combout\,
	dataf => \ALT_INV_TXPIN~37_combout\,
	combout => \BITCOUNT~1_combout\);

-- Location: LABCELL_X17_Y6_N45
\Equal52~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal52~1_combout\ = ( !BITCOUNT(31) & ( (BITCOUNT(2) & (!BITCOUNT(7) & (BITCOUNT(4) & !BITCOUNT(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(7),
	datac => ALT_INV_BITCOUNT(4),
	datad => ALT_INV_BITCOUNT(0),
	dataf => ALT_INV_BITCOUNT(31),
	combout => \Equal52~1_combout\);

-- Location: LABCELL_X17_Y6_N36
\Equal52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal52~0_combout\ = ( \Equal52~1_combout\ & ( \LessThan3~3_combout\ & ( (\LessThan3~1_combout\ & (\Equal32~0_combout\ & (\LessThan3~0_combout\ & \LessThan3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~1_combout\,
	datab => \ALT_INV_Equal32~0_combout\,
	datac => \ALT_INV_LessThan3~0_combout\,
	datad => \ALT_INV_LessThan3~2_combout\,
	datae => \ALT_INV_Equal52~1_combout\,
	dataf => \ALT_INV_LessThan3~3_combout\,
	combout => \Equal52~0_combout\);

-- Location: LABCELL_X17_Y6_N15
\Equal50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal50~0_combout\ = ( !BITCOUNT(3) & ( (!BITCOUNT(2) & BITCOUNT(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(2),
	datad => ALT_INV_BITCOUNT(5),
	dataf => ALT_INV_BITCOUNT(3),
	combout => \Equal50~0_combout\);

-- Location: MLABCELL_X19_Y6_N57
\Equal50~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal50~2_combout\ = ( !BITCOUNT(31) & ( BITCOUNT(4) & ( (BITCOUNT(1) & (!BITCOUNT(0) & !BITCOUNT(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_BITCOUNT(1),
	datac => ALT_INV_BITCOUNT(0),
	datad => ALT_INV_BITCOUNT(7),
	datae => ALT_INV_BITCOUNT(31),
	dataf => ALT_INV_BITCOUNT(4),
	combout => \Equal50~2_combout\);

-- Location: LABCELL_X17_Y6_N0
\Equal50~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal50~1_combout\ = ( \Equal50~2_combout\ & ( \LessThan3~3_combout\ & ( (\LessThan3~1_combout\ & (\Equal50~0_combout\ & (\LessThan3~0_combout\ & \LessThan3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~1_combout\,
	datab => \ALT_INV_Equal50~0_combout\,
	datac => \ALT_INV_LessThan3~0_combout\,
	datad => \ALT_INV_LessThan3~2_combout\,
	datae => \ALT_INV_Equal50~2_combout\,
	dataf => \ALT_INV_LessThan3~3_combout\,
	combout => \Equal50~1_combout\);

-- Location: LABCELL_X17_Y6_N30
\Equal49~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal49~1_combout\ = ( !BITCOUNT(31) & ( (!BITCOUNT(7) & (BITCOUNT(4) & (!BITCOUNT(2) & BITCOUNT(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(7),
	datab => ALT_INV_BITCOUNT(4),
	datac => ALT_INV_BITCOUNT(2),
	datad => ALT_INV_BITCOUNT(0),
	dataf => ALT_INV_BITCOUNT(31),
	combout => \Equal49~1_combout\);

-- Location: LABCELL_X17_Y6_N39
\Equal49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal49~0_combout\ = ( \LessThan3~3_combout\ & ( \Equal49~1_combout\ & ( (\LessThan3~1_combout\ & (\Equal32~0_combout\ & (\LessThan3~2_combout\ & \LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~1_combout\,
	datab => \ALT_INV_Equal32~0_combout\,
	datac => \ALT_INV_LessThan3~2_combout\,
	datad => \ALT_INV_LessThan3~0_combout\,
	datae => \ALT_INV_LessThan3~3_combout\,
	dataf => \ALT_INV_Equal49~1_combout\,
	combout => \Equal49~0_combout\);

-- Location: LABCELL_X17_Y3_N48
\Equal39~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal39~1_combout\ = ( BITCOUNT(0) & ( BITCOUNT(1) & ( (!BITCOUNT(31) & (!BITCOUNT(7) & (BITCOUNT(2) & !BITCOUNT(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(31),
	datab => ALT_INV_BITCOUNT(7),
	datac => ALT_INV_BITCOUNT(2),
	datad => ALT_INV_BITCOUNT(4),
	datae => ALT_INV_BITCOUNT(0),
	dataf => ALT_INV_BITCOUNT(1),
	combout => \Equal39~1_combout\);

-- Location: LABCELL_X17_Y5_N6
\Equal47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal47~0_combout\ = ( \Equal39~1_combout\ & ( \Equal40~0_combout\ & ( (\LessThan3~3_combout\ & (\LessThan3~0_combout\ & (\LessThan3~1_combout\ & \LessThan3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~3_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \ALT_INV_LessThan3~1_combout\,
	datad => \ALT_INV_LessThan3~2_combout\,
	datae => \ALT_INV_Equal39~1_combout\,
	dataf => \ALT_INV_Equal40~0_combout\,
	combout => \Equal47~0_combout\);

-- Location: LABCELL_X17_Y6_N54
\Equal48~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal48~1_combout\ = ( !BITCOUNT(31) & ( (!BITCOUNT(2) & (BITCOUNT(4) & (!BITCOUNT(7) & !BITCOUNT(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(4),
	datac => ALT_INV_BITCOUNT(7),
	datad => ALT_INV_BITCOUNT(0),
	dataf => ALT_INV_BITCOUNT(31),
	combout => \Equal48~1_combout\);

-- Location: LABCELL_X17_Y6_N18
\Equal48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal48~0_combout\ = ( \Equal48~1_combout\ & ( \Equal32~0_combout\ & ( (\LessThan3~1_combout\ & (\LessThan3~0_combout\ & (\LessThan3~3_combout\ & \LessThan3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~1_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \ALT_INV_LessThan3~3_combout\,
	datad => \ALT_INV_LessThan3~2_combout\,
	datae => \ALT_INV_Equal48~1_combout\,
	dataf => \ALT_INV_Equal32~0_combout\,
	combout => \Equal48~0_combout\);

-- Location: LABCELL_X17_Y6_N12
\Equal51~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal51~1_combout\ = ( !BITCOUNT(31) & ( (!BITCOUNT(7) & (BITCOUNT(4) & (BITCOUNT(0) & BITCOUNT(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(7),
	datab => ALT_INV_BITCOUNT(4),
	datac => ALT_INV_BITCOUNT(0),
	datad => ALT_INV_BITCOUNT(1),
	dataf => ALT_INV_BITCOUNT(31),
	combout => \Equal51~1_combout\);

-- Location: LABCELL_X17_Y6_N3
\Equal51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal51~0_combout\ = ( \LessThan3~3_combout\ & ( \Equal51~1_combout\ & ( (\LessThan3~1_combout\ & (\Equal50~0_combout\ & (\LessThan3~2_combout\ & \LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~1_combout\,
	datab => \ALT_INV_Equal50~0_combout\,
	datac => \ALT_INV_LessThan3~2_combout\,
	datad => \ALT_INV_LessThan3~0_combout\,
	datae => \ALT_INV_LessThan3~3_combout\,
	dataf => \ALT_INV_Equal51~1_combout\,
	combout => \Equal51~0_combout\);

-- Location: LABCELL_X18_Y4_N27
\TXPIN~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~1_combout\ = ( !\Equal48~0_combout\ & ( !\Equal51~0_combout\ & ( (!\Equal52~0_combout\ & (!\Equal50~1_combout\ & (!\Equal49~0_combout\ & !\Equal47~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal52~0_combout\,
	datab => \ALT_INV_Equal50~1_combout\,
	datac => \ALT_INV_Equal49~0_combout\,
	datad => \ALT_INV_Equal47~0_combout\,
	datae => \ALT_INV_Equal48~0_combout\,
	dataf => \ALT_INV_Equal51~0_combout\,
	combout => \TXPIN~1_combout\);

-- Location: LABCELL_X17_Y3_N30
\Equal33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal33~1_combout\ = ( !BITCOUNT(4) & ( (!BITCOUNT(31) & (!BITCOUNT(7) & (!BITCOUNT(2) & BITCOUNT(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(31),
	datab => ALT_INV_BITCOUNT(7),
	datac => ALT_INV_BITCOUNT(2),
	datad => ALT_INV_BITCOUNT(0),
	dataf => ALT_INV_BITCOUNT(4),
	combout => \Equal33~1_combout\);

-- Location: LABCELL_X17_Y3_N21
\Equal33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal33~0_combout\ = ( \Equal32~0_combout\ & ( \Equal33~1_combout\ & ( (\LessThan3~1_combout\ & (\LessThan3~3_combout\ & (\LessThan3~0_combout\ & \LessThan3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~1_combout\,
	datab => \ALT_INV_LessThan3~3_combout\,
	datac => \ALT_INV_LessThan3~0_combout\,
	datad => \ALT_INV_LessThan3~2_combout\,
	datae => \ALT_INV_Equal32~0_combout\,
	dataf => \ALT_INV_Equal33~1_combout\,
	combout => \Equal33~0_combout\);

-- Location: MLABCELL_X19_Y3_N27
\Equal34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal34~0_combout\ = ( BITCOUNT(5) & ( !BITCOUNT(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_BITCOUNT(3),
	dataf => ALT_INV_BITCOUNT(5),
	combout => \Equal34~0_combout\);

-- Location: LABCELL_X17_Y5_N54
\TXPIN~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~45_combout\ = ( BITCOUNT(0) & ( BITCOUNT(4) & ( (!BITCOUNT(31) & (!BITCOUNT(7) & (BITCOUNT(2) & !BITCOUNT(1)))) ) ) ) # ( !BITCOUNT(0) & ( BITCOUNT(4) & ( (!BITCOUNT(31) & (!BITCOUNT(7) & (BITCOUNT(2) & BITCOUNT(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(31),
	datab => ALT_INV_BITCOUNT(7),
	datac => ALT_INV_BITCOUNT(2),
	datad => ALT_INV_BITCOUNT(1),
	datae => ALT_INV_BITCOUNT(0),
	dataf => ALT_INV_BITCOUNT(4),
	combout => \TXPIN~45_combout\);

-- Location: LABCELL_X17_Y5_N9
\TXPIN~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~4_combout\ = ( \TXPIN~45_combout\ & ( \Equal8~0_combout\ & ( (\LessThan3~3_combout\ & (\LessThan3~0_combout\ & (\LessThan3~2_combout\ & \LessThan3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~3_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \ALT_INV_LessThan3~2_combout\,
	datad => \ALT_INV_LessThan3~1_combout\,
	datae => \ALT_INV_TXPIN~45_combout\,
	dataf => \ALT_INV_Equal8~0_combout\,
	combout => \TXPIN~4_combout\);

-- Location: LABCELL_X17_Y5_N51
\Equal36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal36~0_combout\ = ( \Equal32~0_combout\ & ( (BITCOUNT(2) & (!BITCOUNT(4) & (!BITCOUNT(0) & \Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(4),
	datac => ALT_INV_BITCOUNT(0),
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal32~0_combout\,
	combout => \Equal36~0_combout\);

-- Location: MLABCELL_X19_Y3_N54
\Equal35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal35~0_combout\ = ( \Equal34~0_combout\ & ( \Equal0~0_combout\ & ( (BITCOUNT(0) & (!BITCOUNT(2) & (BITCOUNT(1) & !BITCOUNT(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(0),
	datab => ALT_INV_BITCOUNT(2),
	datac => ALT_INV_BITCOUNT(1),
	datad => ALT_INV_BITCOUNT(4),
	datae => \ALT_INV_Equal34~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal35~0_combout\);

-- Location: LABCELL_X17_Y6_N57
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( !BITCOUNT(31) & ( (!BITCOUNT(2) & (!BITCOUNT(4) & (!BITCOUNT(7) & !BITCOUNT(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(4),
	datac => ALT_INV_BITCOUNT(7),
	datad => ALT_INV_BITCOUNT(0),
	dataf => ALT_INV_BITCOUNT(31),
	combout => \Equal2~2_combout\);

-- Location: LABCELL_X17_Y6_N21
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( BITCOUNT(1) & ( \Equal2~2_combout\ & ( (\LessThan3~1_combout\ & (\LessThan3~0_combout\ & (\LessThan3~2_combout\ & \LessThan3~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~1_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \ALT_INV_LessThan3~2_combout\,
	datad => \ALT_INV_LessThan3~3_combout\,
	datae => ALT_INV_BITCOUNT(1),
	dataf => \ALT_INV_Equal2~2_combout\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X18_Y3_N0
\TXPIN~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~5_combout\ = ( !\Equal35~0_combout\ & ( \Equal2~0_combout\ & ( (!\Equal33~0_combout\ & (!\Equal34~0_combout\ & (!\TXPIN~4_combout\ & !\Equal36~0_combout\))) ) ) ) # ( !\Equal35~0_combout\ & ( !\Equal2~0_combout\ & ( (!\Equal33~0_combout\ & 
-- (!\TXPIN~4_combout\ & !\Equal36~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal33~0_combout\,
	datab => \ALT_INV_Equal34~0_combout\,
	datac => \ALT_INV_TXPIN~4_combout\,
	datad => \ALT_INV_Equal36~0_combout\,
	datae => \ALT_INV_Equal35~0_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \TXPIN~5_combout\);

-- Location: LABCELL_X18_Y4_N42
\BITCOUNT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BITCOUNT~2_combout\ = ( \TXPIN~1_combout\ & ( \TXPIN~5_combout\ & ( (!\BITCOUNT~0_combout\ & (!\BITCOUNT~7_combout\ & (\TXPIN~19_combout\ & \BITCOUNT~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BITCOUNT~0_combout\,
	datab => \ALT_INV_BITCOUNT~7_combout\,
	datac => \ALT_INV_TXPIN~19_combout\,
	datad => \ALT_INV_BITCOUNT~1_combout\,
	datae => \ALT_INV_TXPIN~1_combout\,
	dataf => \ALT_INV_TXPIN~5_combout\,
	combout => \BITCOUNT~2_combout\);

-- Location: LABCELL_X18_Y4_N33
\BITCOUNT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BITCOUNT~3_combout\ = ( \BITCOUNT~2_combout\ & ( !\TXPIN~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_TXPIN~0_combout\,
	dataf => \ALT_INV_BITCOUNT~2_combout\,
	combout => \BITCOUNT~3_combout\);

-- Location: FF_X18_Y6_N2
\BITCOUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~17_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(0));

-- Location: LABCELL_X18_Y6_N3
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( BITCOUNT(1) ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~10\ = CARRY(( BITCOUNT(1) ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_BITCOUNT(1),
	cin => \Add3~18\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: FF_X18_Y6_N5
\BITCOUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~9_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(1));

-- Location: LABCELL_X18_Y6_N6
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( BITCOUNT(2) ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( BITCOUNT(2) ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_BITCOUNT(2),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: FF_X18_Y6_N8
\BITCOUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~13_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(2));

-- Location: LABCELL_X18_Y6_N9
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( BITCOUNT(3) ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~2\ = CARRY(( BITCOUNT(3) ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(3),
	cin => \Add3~14\,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: FF_X18_Y6_N11
\BITCOUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~1_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(3));

-- Location: LABCELL_X18_Y6_N12
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( BITCOUNT(4) ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~22\ = CARRY(( BITCOUNT(4) ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_BITCOUNT(4),
	cin => \Add3~2\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: FF_X18_Y6_N14
\BITCOUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~21_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(4));

-- Location: FF_X18_Y6_N17
\BITCOUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add3~5_sumout\,
	sclr => \BITCOUNT~3_combout\,
	ena => \BITCOUNT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BITCOUNT(5));

-- Location: LABCELL_X17_Y4_N57
\Equal16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = ( \Equal0~0_combout\ & ( BITCOUNT(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(4),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal16~0_combout\);

-- Location: LABCELL_X17_Y4_N24
\TXPIN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~0_combout\ = ( BITCOUNT(2) & ( \Equal16~0_combout\ & ( (!BITCOUNT(5) & ((!BITCOUNT(1) & (BITCOUNT(3) & !BITCOUNT(0))) # (BITCOUNT(1) & (!BITCOUNT(3) & BITCOUNT(0))))) ) ) ) # ( !BITCOUNT(2) & ( \Equal16~0_combout\ & ( (!BITCOUNT(5) & BITCOUNT(3)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000100000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(5),
	datab => ALT_INV_BITCOUNT(1),
	datac => ALT_INV_BITCOUNT(3),
	datad => ALT_INV_BITCOUNT(0),
	datae => ALT_INV_BITCOUNT(2),
	dataf => \ALT_INV_Equal16~0_combout\,
	combout => \TXPIN~0_combout\);

-- Location: LABCELL_X18_Y4_N30
\State~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \State~10_combout\ = ( \State~9_combout\ & ( ((!\State.Tx~q\) # (!\BITCOUNT~2_combout\)) # (\TXPIN~0_combout\) ) ) # ( !\State~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_TXPIN~0_combout\,
	datac => \ALT_INV_State.Tx~q\,
	datad => \ALT_INV_BITCOUNT~2_combout\,
	dataf => \ALT_INV_State~9_combout\,
	combout => \State~10_combout\);

-- Location: FF_X18_Y4_N32
\State.Gen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \State~10_combout\,
	ena => \RUN~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Gen~q\);

-- Location: LABCELL_X17_Y4_N45
\State.Func~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State.Func~0_combout\ = !\State.Gen~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.Gen~q\,
	combout => \State.Func~0_combout\);

-- Location: FF_X18_Y4_N17
\State.Func\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \State.Func~0_combout\,
	sload => VCC,
	ena => \RUN~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.Func~q\);

-- Location: LABCELL_X18_Y4_N6
\RUN~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RUN~1_combout\ = ( \EN~input_o\ & ( (\RUN~2_combout\ & \RUN~1_combout\) ) ) # ( !\EN~input_o\ & ( (!\RUN~2_combout\) # (\RUN~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RUN~2_combout\,
	datac => \ALT_INV_RUN~1_combout\,
	dataf => \ALT_INV_EN~input_o\,
	combout => \RUN~1_combout\);

-- Location: LABCELL_X21_Y4_N0
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( A(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~30\ = CARRY(( A(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(0),
	cin => GND,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X21_Y4_N33
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (A(1) & A(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(1),
	datad => ALT_INV_A(0),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X15_Y4_N30
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( B(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~26\ = CARRY(( B(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(0),
	cin => GND,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X21_Y4_N45
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( A(3) & ( (A(6) & (A(4) & A(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(6),
	datab => ALT_INV_A(4),
	datac => ALT_INV_A(2),
	dataf => ALT_INV_A(3),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X15_Y4_N6
\B[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[7]~0_combout\ = ( \LessThan0~0_combout\ & ( \RUN~2_combout\ & ( (\State.Func~q\ & ((!A(7)) # ((!A(5)) # (!\LessThan0~2_combout\)))) ) ) ) # ( !\LessThan0~0_combout\ & ( \RUN~2_combout\ & ( \State.Func~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(7),
	datab => ALT_INV_A(5),
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_State.Func~q\,
	datae => \ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_RUN~2_combout\,
	combout => \B[7]~0_combout\);

-- Location: FF_X15_Y4_N32
\B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \LessThan1~1_combout\,
	ena => \B[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(0));

-- Location: LABCELL_X15_Y4_N33
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( B(1) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( B(1) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(1),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X15_Y4_N35
\B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \LessThan1~1_combout\,
	ena => \B[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(1));

-- Location: LABCELL_X15_Y4_N36
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( B(2) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~22\ = CARRY(( B(2) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(2),
	cin => \Add0~30\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X15_Y4_N38
\B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \LessThan1~1_combout\,
	ena => \B[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(2));

-- Location: LABCELL_X15_Y4_N39
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( B(3) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~10\ = CARRY(( B(3) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(3),
	cin => \Add0~22\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X15_Y4_N41
\B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \LessThan1~1_combout\,
	ena => \B[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(3));

-- Location: LABCELL_X15_Y4_N24
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( B(2) & ( B(3) & ( (B(0) & B(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B(0),
	datac => ALT_INV_B(1),
	datae => ALT_INV_B(2),
	dataf => ALT_INV_B(3),
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X15_Y4_N42
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( B(4) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( B(4) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(4),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X15_Y4_N44
\B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \LessThan1~1_combout\,
	ena => \B[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(4));

-- Location: LABCELL_X15_Y4_N45
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( B(5) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( B(5) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(5),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X15_Y4_N47
\B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \LessThan1~1_combout\,
	ena => \B[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(5));

-- Location: LABCELL_X15_Y4_N48
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( B(6) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~6\ = CARRY(( B(6) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(6),
	cin => \Add0~18\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X15_Y4_N50
\B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \LessThan1~1_combout\,
	ena => \B[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(6));

-- Location: LABCELL_X15_Y4_N51
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( B(7) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_B(7),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X15_Y4_N53
\B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \LessThan1~1_combout\,
	ena => \B[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(7));

-- Location: LABCELL_X15_Y4_N12
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( B(5) & ( B(7) & ( (\LessThan1~0_combout\ & (B(4) & B(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => ALT_INV_B(4),
	datac => ALT_INV_B(6),
	datae => ALT_INV_B(5),
	dataf => ALT_INV_B(7),
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X21_Y4_N30
\A[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A[1]~0_combout\ = ( \RUN~2_combout\ & ( (\State.Func~q\ & (((\LessThan0~2_combout\ & \LessThan0~1_combout\)) # (\LessThan1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001001100110000000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datab => \ALT_INV_State.Func~q\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_LessThan1~1_combout\,
	dataf => \ALT_INV_RUN~2_combout\,
	combout => \A[1]~0_combout\);

-- Location: FF_X21_Y4_N2
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \LessThan0~3_combout\,
	ena => \A[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: LABCELL_X21_Y4_N3
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( A(1) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( A(1) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(1),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X21_Y4_N5
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \LessThan0~3_combout\,
	ena => \A[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: LABCELL_X21_Y4_N6
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( A(2) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~14\ = CARRY(( A(2) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(2),
	cin => \Add1~26\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X21_Y4_N8
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \LessThan0~3_combout\,
	ena => \A[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: LABCELL_X21_Y4_N9
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( A(3) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( A(3) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(3),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X21_Y4_N11
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \LessThan0~3_combout\,
	ena => \A[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: LABCELL_X21_Y4_N12
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( A(4) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( A(4) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(4),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X21_Y4_N14
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \LessThan0~3_combout\,
	ena => \A[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: LABCELL_X21_Y4_N15
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( A(5) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~2\ = CARRY(( A(5) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(5),
	cin => \Add1~22\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X21_Y4_N17
\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \LessThan0~3_combout\,
	ena => \A[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

-- Location: LABCELL_X21_Y4_N18
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( A(6) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~10\ = CARRY(( A(6) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(6),
	cin => \Add1~2\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X21_Y4_N20
\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \LessThan0~3_combout\,
	ena => \A[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

-- Location: LABCELL_X21_Y4_N21
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( A(7) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_A(7),
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\);

-- Location: FF_X21_Y4_N23
\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \LessThan0~3_combout\,
	ena => \A[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

-- Location: LABCELL_X21_Y4_N42
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( A(5) & ( (A(7) & \LessThan0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_A(7),
	datad => \ALT_INV_LessThan0~0_combout\,
	dataf => ALT_INV_A(5),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X21_Y4_N51
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \LessThan0~2_combout\ & ( \LessThan0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X18_Y4_N39
\RUN~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RUN~3_combout\ = ( \LessThan0~3_combout\ & ( !\RUN~1_combout\ $ (((!\RUN~2_combout\) # (\State.Func~q\))) ) ) # ( !\LessThan0~3_combout\ & ( !\RUN~2_combout\ $ (!\RUN~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001010111101010000101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.Func~q\,
	datac => \ALT_INV_RUN~2_combout\,
	datad => \ALT_INV_RUN~1_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \RUN~3_combout\);

-- Location: FF_X18_Y4_N41
\RUN~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \RUN~3_combout\,
	clrn => \RUN~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RUN~_emulated_q\);

-- Location: LABCELL_X18_Y4_N57
\RUN~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RUN~2_combout\ = ( \RUN~1_combout\ & ( (!\RUN~2_combout\ & (!\EN~input_o\)) # (\RUN~2_combout\ & ((!\RUN~_emulated_q\))) ) ) # ( !\RUN~1_combout\ & ( (!\RUN~2_combout\ & (!\EN~input_o\)) # (\RUN~2_combout\ & ((\RUN~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110001011100010111000101110111000101110001011100010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_EN~input_o\,
	datab => \ALT_INV_RUN~2_combout\,
	datac => \ALT_INV_RUN~_emulated_q\,
	dataf => \ALT_INV_RUN~1_combout\,
	combout => \RUN~2_combout\);

-- Location: LABCELL_X18_Y4_N0
\PRESCL[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRESCL[31]~0_combout\ = ( \State.Tx~q\ & ( \RUN~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RUN~2_combout\,
	dataf => \ALT_INV_State.Tx~q\,
	combout => \PRESCL[31]~0_combout\);

-- Location: MLABCELL_X19_Y3_N24
\TXPIN~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~39_combout\ = ( \LessThan2~7_combout\ & ( (\PRESCL[31]~0_combout\ & (!\TXPIN~37_combout\ & !\TXPIN~38_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PRESCL[31]~0_combout\,
	datac => \ALT_INV_TXPIN~37_combout\,
	datad => \ALT_INV_TXPIN~38_combout\,
	dataf => \ALT_INV_LessThan2~7_combout\,
	combout => \TXPIN~39_combout\);

-- Location: LABCELL_X17_Y4_N9
\TXPIN~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~40_combout\ = ( BITCOUNT(0) & ( (\Equal0~2_combout\ & (!BITCOUNT(2) & \Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~2_combout\,
	datac => ALT_INV_BITCOUNT(2),
	datad => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_BITCOUNT(0),
	combout => \TXPIN~40_combout\);

-- Location: LABCELL_X17_Y4_N30
\TXPIN~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~41_combout\ = ( \TXPIN~40_combout\ & ( (!\TXPIN~reg0_q\) # ((\PRESCL[31]~0_combout\ & \LessThan2~7_combout\)) ) ) # ( !\TXPIN~40_combout\ & ( (!\TXPIN~reg0_q\ & ((!\PRESCL[31]~0_combout\) # (!\LessThan2~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000011110000111100111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PRESCL[31]~0_combout\,
	datac => \ALT_INV_TXPIN~reg0_q\,
	datad => \ALT_INV_LessThan2~7_combout\,
	dataf => \ALT_INV_TXPIN~40_combout\,
	combout => \TXPIN~41_combout\);

-- Location: MLABCELL_X19_Y4_N9
\Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = ( !BITCOUNT(1) & ( (BITCOUNT(3) & !BITCOUNT(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(3),
	datac => ALT_INV_BITCOUNT(5),
	dataf => ALT_INV_BITCOUNT(1),
	combout => \Equal8~1_combout\);

-- Location: LABCELL_X17_Y4_N18
\TXPIN~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~33_combout\ = ( BITCOUNT(2) & ( (!BITCOUNT(4) & (\Equal8~1_combout\ & \Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010001000000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(4),
	datab => \ALT_INV_Equal8~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => ALT_INV_BITCOUNT(2),
	combout => \TXPIN~33_combout\);

-- Location: LABCELL_X17_Y4_N42
\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( \Equal0~0_combout\ & ( (BITCOUNT(2) & (!BITCOUNT(0) & (!BITCOUNT(4) & BITCOUNT(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(0),
	datac => ALT_INV_BITCOUNT(4),
	datad => ALT_INV_BITCOUNT(1),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal6~0_combout\);

-- Location: LABCELL_X18_Y4_N54
\InA[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \InA[7]~0_combout\ = ( !\State.Gen~q\ & ( \RUN~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RUN~2_combout\,
	dataf => \ALT_INV_State.Gen~q\,
	combout => \InA[7]~0_combout\);

-- Location: FF_X17_Y4_N23
\InB[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => B(2),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InB[2]~_Duplicate_1_q\);

-- Location: FF_X17_Y4_N44
\OldInB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InB[2]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInB(2));

-- Location: LABCELL_X17_Y4_N39
\DATA[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA[2]~9_combout\ = ( !OldInB(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_OldInB(2),
	combout => \DATA[2]~9_combout\);

-- Location: LABCELL_X18_Y4_N9
\DATA[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA[31]~0_combout\ = ( \RUN~2_combout\ & ( \State.Func~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.Func~q\,
	dataf => \ALT_INV_RUN~2_combout\,
	combout => \DATA[31]~0_combout\);

-- Location: FF_X17_Y4_N41
\DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \DATA[2]~9_combout\,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(2));

-- Location: FF_X17_Y5_N59
\InB[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => B(0),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InB[0]~_Duplicate_1_q\);

-- Location: FF_X17_Y5_N40
\OldInB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InB[0]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInB(0));

-- Location: FF_X18_Y4_N2
\DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OldInB(0),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(0));

-- Location: FF_X17_Y4_N19
\InB[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => B(1),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InB[1]~_Duplicate_1_q\);

-- Location: FF_X17_Y4_N50
\OldInB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InB[1]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInB(1));

-- Location: FF_X17_Y4_N14
\DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OldInB(1),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(1));

-- Location: LABCELL_X17_Y4_N12
\TXPIN~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~34_combout\ = ( DATA(1) & ( \Equal8~1_combout\ & ( (\Equal0~1_combout\ & (BITCOUNT(2) & ((BITCOUNT(0)) # (DATA(0))))) ) ) ) # ( !DATA(1) & ( \Equal8~1_combout\ & ( (\Equal0~1_combout\ & (BITCOUNT(2) & (DATA(0) & !BITCOUNT(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => ALT_INV_BITCOUNT(2),
	datac => ALT_INV_DATA(0),
	datad => ALT_INV_BITCOUNT(0),
	datae => ALT_INV_DATA(1),
	dataf => \ALT_INV_Equal8~1_combout\,
	combout => \TXPIN~34_combout\);

-- Location: LABCELL_X17_Y4_N48
\TXPIN~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~35_combout\ = ( \Equal8~0_combout\ & ( !\TXPIN~34_combout\ & ( ((!\Equal6~0_combout\) # (DATA(2))) # (\TXPIN~33_combout\) ) ) ) # ( !\Equal8~0_combout\ & ( !\TXPIN~34_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110111011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TXPIN~33_combout\,
	datab => \ALT_INV_Equal6~0_combout\,
	datad => ALT_INV_DATA(2),
	datae => \ALT_INV_Equal8~0_combout\,
	dataf => \ALT_INV_TXPIN~34_combout\,
	combout => \TXPIN~35_combout\);

-- Location: MLABCELL_X19_Y3_N36
\TXPIN~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~36_combout\ = ( BITCOUNT(0) & ( !BITCOUNT(5) & ( (BITCOUNT(3) & (!BITCOUNT(2) & (!BITCOUNT(1) & \Equal0~1_combout\))) ) ) ) # ( !BITCOUNT(0) & ( !BITCOUNT(5) & ( (BITCOUNT(1) & (\Equal0~1_combout\ & (!BITCOUNT(3) $ (!BITCOUNT(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(3),
	datab => ALT_INV_BITCOUNT(2),
	datac => ALT_INV_BITCOUNT(1),
	datad => \ALT_INV_Equal0~1_combout\,
	datae => ALT_INV_BITCOUNT(0),
	dataf => ALT_INV_BITCOUNT(5),
	combout => \TXPIN~36_combout\);

-- Location: LABCELL_X17_Y3_N6
\TXPIN~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~32_combout\ = ( BITCOUNT(3) & ( \Equal0~1_combout\ & ( (!BITCOUNT(2) & (!BITCOUNT(5) & (!BITCOUNT(0) $ (BITCOUNT(1))))) ) ) ) # ( !BITCOUNT(3) & ( \Equal0~1_combout\ & ( (BITCOUNT(0) & (BITCOUNT(2) & (!BITCOUNT(5) & BITCOUNT(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100001000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(0),
	datab => ALT_INV_BITCOUNT(2),
	datac => ALT_INV_BITCOUNT(5),
	datad => ALT_INV_BITCOUNT(1),
	datae => ALT_INV_BITCOUNT(3),
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \TXPIN~32_combout\);

-- Location: MLABCELL_X19_Y5_N0
\TXPIN~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~25_combout\ = ( BITCOUNT(0) & ( \Equal8~0_combout\ & ( (BITCOUNT(2) & (!BITCOUNT(1) & (!BITCOUNT(4) & \Equal0~0_combout\))) ) ) ) # ( !BITCOUNT(0) & ( \Equal8~0_combout\ & ( (BITCOUNT(2) & (!BITCOUNT(4) & \Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(1),
	datac => ALT_INV_BITCOUNT(4),
	datad => \ALT_INV_Equal0~0_combout\,
	datae => ALT_INV_BITCOUNT(0),
	dataf => \ALT_INV_Equal8~0_combout\,
	combout => \TXPIN~25_combout\);

-- Location: MLABCELL_X19_Y4_N48
\Equal27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~0_combout\ = ( BITCOUNT(4) & ( !BITCOUNT(2) & ( (\Equal8~0_combout\ & (BITCOUNT(0) & (BITCOUNT(1) & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~0_combout\,
	datab => ALT_INV_BITCOUNT(0),
	datac => ALT_INV_BITCOUNT(1),
	datad => \ALT_INV_Equal0~0_combout\,
	datae => ALT_INV_BITCOUNT(4),
	dataf => ALT_INV_BITCOUNT(2),
	combout => \Equal27~0_combout\);

-- Location: MLABCELL_X19_Y4_N0
\Equal25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~0_combout\ = ( \Equal0~0_combout\ & ( (!BITCOUNT(2) & (BITCOUNT(0) & (BITCOUNT(4) & \Equal8~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(0),
	datac => ALT_INV_BITCOUNT(4),
	datad => \ALT_INV_Equal8~1_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal25~0_combout\);

-- Location: MLABCELL_X19_Y4_N15
\Equal24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal24~0_combout\ = ( \Equal0~0_combout\ & ( (\Equal8~1_combout\ & (!BITCOUNT(2) & (!BITCOUNT(0) & BITCOUNT(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~1_combout\,
	datab => ALT_INV_BITCOUNT(2),
	datac => ALT_INV_BITCOUNT(0),
	datad => ALT_INV_BITCOUNT(4),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal24~0_combout\);

-- Location: MLABCELL_X19_Y4_N18
\Equal26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal26~0_combout\ = ( \Equal8~0_combout\ & ( \Equal0~0_combout\ & ( (BITCOUNT(4) & (BITCOUNT(1) & (!BITCOUNT(2) & !BITCOUNT(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(4),
	datab => ALT_INV_BITCOUNT(1),
	datac => ALT_INV_BITCOUNT(2),
	datad => ALT_INV_BITCOUNT(0),
	datae => \ALT_INV_Equal8~0_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal26~0_combout\);

-- Location: FF_X21_Y4_N55
\InA[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => A(3),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InA[3]~_Duplicate_1_q\);

-- Location: FF_X19_Y4_N29
\OldInA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InA[3]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInA(3));

-- Location: FF_X19_Y4_N59
\DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OldInA(3),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(11));

-- Location: MLABCELL_X19_Y5_N18
\Equal23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = ( \Equal0~0_combout\ & ( BITCOUNT(0) & ( (\Equal2~1_combout\ & (BITCOUNT(4) & (BITCOUNT(2) & BITCOUNT(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~1_combout\,
	datab => ALT_INV_BITCOUNT(4),
	datac => ALT_INV_BITCOUNT(2),
	datad => ALT_INV_BITCOUNT(1),
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => ALT_INV_BITCOUNT(0),
	combout => \Equal23~0_combout\);

-- Location: MLABCELL_X19_Y4_N57
\TXPIN~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~23_combout\ = ( !\Equal23~0_combout\ & ( (!\Equal25~0_combout\ & (!\Equal24~0_combout\ & (\Equal26~0_combout\ & DATA(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal25~0_combout\,
	datab => \ALT_INV_Equal24~0_combout\,
	datac => \ALT_INV_Equal26~0_combout\,
	datad => ALT_INV_DATA(11),
	dataf => \ALT_INV_Equal23~0_combout\,
	combout => \TXPIN~23_combout\);

-- Location: FF_X19_Y3_N47
\InA[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => A(5),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InA[5]~_Duplicate_1_q\);

-- Location: FF_X19_Y3_N40
\OldInA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InA[5]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInA(5));

-- Location: FF_X18_Y4_N19
\DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OldInA(5),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(13));

-- Location: MLABCELL_X19_Y4_N36
\TXPIN~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~21_combout\ = ( \Equal8~1_combout\ & ( DATA(13) & ( (BITCOUNT(2) & (!BITCOUNT(0) & (BITCOUNT(4) & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(0),
	datac => ALT_INV_BITCOUNT(4),
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal8~1_combout\,
	dataf => ALT_INV_DATA(13),
	combout => \TXPIN~21_combout\);

-- Location: MLABCELL_X19_Y4_N6
\TXPIN~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~20_combout\ = ( !\Equal23~0_combout\ & ( (!\Equal24~0_combout\ & (!\Equal26~0_combout\ & !\Equal25~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal24~0_combout\,
	datac => \ALT_INV_Equal26~0_combout\,
	datad => \ALT_INV_Equal25~0_combout\,
	dataf => \ALT_INV_Equal23~0_combout\,
	combout => \TXPIN~20_combout\);

-- Location: FF_X19_Y4_N11
\InA[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => A(4),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InA[4]~_Duplicate_1_q\);

-- Location: FF_X19_Y4_N25
\OldInA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InA[4]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInA(4));

-- Location: FF_X19_Y4_N44
\DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OldInA(4),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(12));

-- Location: FF_X18_Y5_N58
\InA[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => A(1),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InA[1]~_Duplicate_1_q\);

-- Location: FF_X19_Y5_N22
\OldInA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InA[1]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInA(1));

-- Location: LABCELL_X21_Y5_N3
\DATA[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA[9]~7_combout\ = ( !OldInA(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_OldInA(1),
	combout => \DATA[9]~7_combout\);

-- Location: FF_X18_Y4_N8
\DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \DATA[9]~7_combout\,
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(9));

-- Location: FF_X17_Y5_N16
\InA[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => A(0),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InA[0]~_Duplicate_1_q\);

-- Location: FF_X17_Y5_N47
\OldInA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InA[0]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInA(0));

-- Location: MLABCELL_X19_Y4_N54
\DATA[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA[8]~6_combout\ = ( !OldInA(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_OldInA(0),
	combout => \DATA[8]~6_combout\);

-- Location: FF_X19_Y4_N55
\DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \DATA[8]~6_combout\,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(8));

-- Location: FF_X17_Y4_N5
\InA[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => A(2),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InA[2]~_Duplicate_1_q\);

-- Location: FF_X17_Y4_N29
\OldInA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InA[2]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInA(2));

-- Location: FF_X18_Y4_N22
\DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OldInA(2),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(10));

-- Location: MLABCELL_X19_Y4_N24
\TXPIN~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~22_combout\ = ( \Equal25~0_combout\ & ( \Equal23~0_combout\ & ( !DATA(8) ) ) ) # ( !\Equal25~0_combout\ & ( \Equal23~0_combout\ & ( !DATA(8) ) ) ) # ( \Equal25~0_combout\ & ( !\Equal23~0_combout\ & ( (!\Equal24~0_combout\ & ((DATA(10)))) # 
-- (\Equal24~0_combout\ & (!DATA(9))) ) ) ) # ( !\Equal25~0_combout\ & ( !\Equal23~0_combout\ & ( (!DATA(9) & \Equal24~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000011111010101011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_DATA(9),
	datab => ALT_INV_DATA(8),
	datac => ALT_INV_DATA(10),
	datad => \ALT_INV_Equal24~0_combout\,
	datae => \ALT_INV_Equal25~0_combout\,
	dataf => \ALT_INV_Equal23~0_combout\,
	combout => \TXPIN~22_combout\);

-- Location: MLABCELL_X19_Y4_N42
\TXPIN~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~24_combout\ = ( DATA(12) & ( !\TXPIN~22_combout\ & ( (!\TXPIN~23_combout\ & ((!\TXPIN~20_combout\) # ((!\Equal27~0_combout\ & !\TXPIN~21_combout\)))) ) ) ) # ( !DATA(12) & ( !\TXPIN~22_combout\ & ( (!\TXPIN~23_combout\ & (((!\TXPIN~21_combout\) # 
-- (!\TXPIN~20_combout\)) # (\Equal27~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000100110011001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal27~0_combout\,
	datab => \ALT_INV_TXPIN~23_combout\,
	datac => \ALT_INV_TXPIN~21_combout\,
	datad => \ALT_INV_TXPIN~20_combout\,
	datae => ALT_INV_DATA(12),
	dataf => \ALT_INV_TXPIN~22_combout\,
	combout => \TXPIN~24_combout\);

-- Location: MLABCELL_X19_Y5_N9
\Equal21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = ( BITCOUNT(4) & ( (BITCOUNT(2) & (\Equal0~0_combout\ & (\Equal0~2_combout\ & BITCOUNT(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => ALT_INV_BITCOUNT(0),
	dataf => ALT_INV_BITCOUNT(4),
	combout => \Equal21~0_combout\);

-- Location: MLABCELL_X19_Y5_N6
\Equal20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal20~0_combout\ = ( \Equal0~2_combout\ & ( (BITCOUNT(2) & (\Equal0~0_combout\ & (BITCOUNT(4) & !BITCOUNT(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => \ALT_INV_Equal0~0_combout\,
	datac => ALT_INV_BITCOUNT(4),
	datad => ALT_INV_BITCOUNT(0),
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal20~0_combout\);

-- Location: FF_X17_Y4_N55
\InB[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => B(7),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InB[7]~_Duplicate_1_q\);

-- Location: FF_X17_Y4_N52
\OldInB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InB[7]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInB(7));

-- Location: FF_X19_Y5_N26
\DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OldInB(7),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(7));

-- Location: MLABCELL_X19_Y5_N24
\TXPIN~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~27_combout\ = ( DATA(7) & ( !\Equal15~0_combout\ & ( (!\Equal18~1_combout\ & (!\Equal17~0_combout\ & (!\Equal16~1_combout\ & \Equal19~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal18~1_combout\,
	datab => \ALT_INV_Equal17~0_combout\,
	datac => \ALT_INV_Equal16~1_combout\,
	datad => \ALT_INV_Equal19~0_combout\,
	datae => ALT_INV_DATA(7),
	dataf => \ALT_INV_Equal15~0_combout\,
	combout => \TXPIN~27_combout\);

-- Location: FF_X19_Y4_N34
\InB[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => B(6),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InB[6]~_Duplicate_1_q\);

-- Location: FF_X19_Y5_N20
\OldInB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InB[6]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInB(6));

-- Location: MLABCELL_X19_Y5_N54
\DATA[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA[6]~8_combout\ = !OldInB(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_OldInB(6),
	combout => \DATA[6]~8_combout\);

-- Location: FF_X19_Y5_N55
\DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \DATA[6]~8_combout\,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(6));

-- Location: MLABCELL_X19_Y5_N57
\TXPIN~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~28_combout\ = ( !\Equal15~0_combout\ & ( (\Equal18~1_combout\ & (!\Equal17~0_combout\ & (!DATA(6) & !\Equal16~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal18~1_combout\,
	datab => \ALT_INV_Equal17~0_combout\,
	datac => ALT_INV_DATA(6),
	datad => \ALT_INV_Equal16~1_combout\,
	dataf => \ALT_INV_Equal15~0_combout\,
	combout => \TXPIN~28_combout\);

-- Location: FF_X17_Y3_N28
\InB[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => B(5),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InB[5]~_Duplicate_1_q\);

-- Location: FF_X19_Y5_N5
\OldInB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InB[5]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInB(5));

-- Location: FF_X19_Y5_N29
\DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OldInB(5),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(5));

-- Location: FF_X17_Y4_N1
\InB[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => B(4),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InB[4]~_Duplicate_1_q\);

-- Location: FF_X17_Y4_N7
\OldInB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InB[4]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInB(4));

-- Location: FF_X19_Y5_N52
\DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OldInB(4),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(4));

-- Location: FF_X17_Y4_N59
\InB[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => B(3),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InB[3]~_Duplicate_1_q\);

-- Location: FF_X19_Y5_N47
\OldInB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InB[3]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInB(3));

-- Location: FF_X19_Y5_N38
\DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OldInB(3),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(3));

-- Location: MLABCELL_X19_Y5_N36
\TXPIN~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~29_combout\ = ( DATA(3) & ( \Equal15~0_combout\ ) ) # ( DATA(3) & ( !\Equal15~0_combout\ & ( (!\Equal16~1_combout\ & (DATA(5) & ((\Equal17~0_combout\)))) # (\Equal16~1_combout\ & (((DATA(4))))) ) ) ) # ( !DATA(3) & ( !\Equal15~0_combout\ & ( 
-- (!\Equal16~1_combout\ & (DATA(5) & ((\Equal17~0_combout\)))) # (\Equal16~1_combout\ & (((DATA(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011000000110101001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_DATA(5),
	datab => ALT_INV_DATA(4),
	datac => \ALT_INV_Equal16~1_combout\,
	datad => \ALT_INV_Equal17~0_combout\,
	datae => ALT_INV_DATA(3),
	dataf => \ALT_INV_Equal15~0_combout\,
	combout => \TXPIN~29_combout\);

-- Location: MLABCELL_X19_Y5_N30
\TXPIN~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~26_combout\ = ( !\Equal15~0_combout\ & ( (!\Equal17~0_combout\ & (!\Equal19~0_combout\ & (!\Equal18~1_combout\ & !\Equal16~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal17~0_combout\,
	datab => \ALT_INV_Equal19~0_combout\,
	datac => \ALT_INV_Equal18~1_combout\,
	datad => \ALT_INV_Equal16~1_combout\,
	dataf => \ALT_INV_Equal15~0_combout\,
	combout => \TXPIN~26_combout\);

-- Location: MLABCELL_X19_Y5_N42
\TXPIN~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~30_combout\ = ( !\TXPIN~29_combout\ & ( \TXPIN~26_combout\ & ( (!\Equal21~0_combout\ & (!\Equal20~0_combout\ & (!\TXPIN~27_combout\ & !\TXPIN~28_combout\))) ) ) ) # ( !\TXPIN~29_combout\ & ( !\TXPIN~26_combout\ & ( (!\TXPIN~27_combout\ & 
-- !\TXPIN~28_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal21~0_combout\,
	datab => \ALT_INV_Equal20~0_combout\,
	datac => \ALT_INV_TXPIN~27_combout\,
	datad => \ALT_INV_TXPIN~28_combout\,
	datae => \ALT_INV_TXPIN~29_combout\,
	dataf => \ALT_INV_TXPIN~26_combout\,
	combout => \TXPIN~30_combout\);

-- Location: LABCELL_X18_Y3_N27
\TXPIN~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~10_combout\ = ( BITCOUNT(3) & ( BITCOUNT(2) & ( (BITCOUNT(5) & (!BITCOUNT(0) & (!BITCOUNT(1) & \Equal0~1_combout\))) ) ) ) # ( !BITCOUNT(3) & ( BITCOUNT(2) & ( (BITCOUNT(5) & (\Equal0~1_combout\ & ((BITCOUNT(1)) # (BITCOUNT(0))))) ) ) ) # ( 
-- BITCOUNT(3) & ( !BITCOUNT(2) & ( (BITCOUNT(5) & (!BITCOUNT(1) & \Equal0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101000000000000000101010000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(5),
	datab => ALT_INV_BITCOUNT(0),
	datac => ALT_INV_BITCOUNT(1),
	datad => \ALT_INV_Equal0~1_combout\,
	datae => ALT_INV_BITCOUNT(3),
	dataf => ALT_INV_BITCOUNT(2),
	combout => \TXPIN~10_combout\);

-- Location: LABCELL_X17_Y3_N3
\TXPIN~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~8_combout\ = ( !BITCOUNT(2) & ( \Equal0~0_combout\ & ( (BITCOUNT(5) & (!BITCOUNT(4) & (BITCOUNT(1) & BITCOUNT(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(5),
	datab => ALT_INV_BITCOUNT(4),
	datac => ALT_INV_BITCOUNT(1),
	datad => ALT_INV_BITCOUNT(3),
	datae => ALT_INV_BITCOUNT(2),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \TXPIN~8_combout\);

-- Location: DSP_X16_Y3_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "1",
	ax_width => 8,
	ay_scan_in_clock => "1",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "0",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult0~8_ACLR_bus\,
	clk => \Mult0~8_CLK_bus\,
	ena => \Mult0~8_ENA_bus\,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: FF_X18_Y3_N40
\DATA[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OUT1(7),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(23));

-- Location: MLABCELL_X19_Y3_N51
\Equal40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal40~1_combout\ = ( BITCOUNT(5) & ( (!BITCOUNT(1) & BITCOUNT(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_BITCOUNT(1),
	datad => ALT_INV_BITCOUNT(3),
	dataf => ALT_INV_BITCOUNT(5),
	combout => \Equal40~1_combout\);

-- Location: LABCELL_X18_Y4_N3
\DATA[22]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA[22]~2_combout\ = !OUT1(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_OUT1(6),
	combout => \DATA[22]~2_combout\);

-- Location: FF_X18_Y4_N4
\DATA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \DATA[22]~2_combout\,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(22));

-- Location: MLABCELL_X19_Y3_N30
\TXPIN~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~6_combout\ = ( BITCOUNT(0) & ( \Equal0~1_combout\ & ( (DATA(23) & (!BITCOUNT(2) & \Equal40~1_combout\)) ) ) ) # ( !BITCOUNT(0) & ( \Equal0~1_combout\ & ( (!BITCOUNT(2) & (\Equal40~1_combout\ & !DATA(22))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_DATA(23),
	datab => ALT_INV_BITCOUNT(2),
	datac => \ALT_INV_Equal40~1_combout\,
	datad => ALT_INV_DATA(22),
	datae => ALT_INV_BITCOUNT(0),
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \TXPIN~6_combout\);

-- Location: FF_X18_Y4_N25
\DATA[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OUT1(9),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(25));

-- Location: MLABCELL_X19_Y4_N3
\TXPIN~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~43_combout\ = ( BITCOUNT(1) & ( (BITCOUNT(2) & (!BITCOUNT(4) & ((DATA(25)) # (BITCOUNT(0))))) ) ) # ( !BITCOUNT(1) & ( (BITCOUNT(2) & (BITCOUNT(0) & !BITCOUNT(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010101000000000001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(0),
	datac => ALT_INV_DATA(25),
	datad => ALT_INV_BITCOUNT(4),
	dataf => ALT_INV_BITCOUNT(1),
	combout => \TXPIN~43_combout\);

-- Location: LABCELL_X17_Y4_N33
\DATA[24]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA[24]~3_combout\ = !OUT1(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_OUT1(8),
	combout => \DATA[24]~3_combout\);

-- Location: FF_X18_Y4_N53
\DATA[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \DATA[24]~3_combout\,
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(24));

-- Location: MLABCELL_X19_Y3_N12
\TXPIN~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~9_combout\ = ( DATA(24) & ( \Equal0~0_combout\ & ( (!BITCOUNT(0) & (\Equal40~0_combout\ & \TXPIN~43_combout\)) ) ) ) # ( !DATA(24) & ( \Equal0~0_combout\ & ( (\TXPIN~43_combout\ & ((!BITCOUNT(0) & (\Equal40~0_combout\)) # (BITCOUNT(0) & 
-- ((\Equal40~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001001110000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(0),
	datab => \ALT_INV_Equal40~0_combout\,
	datac => \ALT_INV_Equal40~1_combout\,
	datad => \ALT_INV_TXPIN~43_combout\,
	datae => ALT_INV_DATA(24),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \TXPIN~9_combout\);

-- Location: LABCELL_X17_Y3_N18
\Equal39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal39~0_combout\ = ( \Equal34~0_combout\ & ( \Equal39~1_combout\ & ( (\LessThan3~1_combout\ & (\LessThan3~3_combout\ & (\LessThan3~2_combout\ & \LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~1_combout\,
	datab => \ALT_INV_LessThan3~3_combout\,
	datac => \ALT_INV_LessThan3~2_combout\,
	datad => \ALT_INV_LessThan3~0_combout\,
	datae => \ALT_INV_Equal34~0_combout\,
	dataf => \ALT_INV_Equal39~1_combout\,
	combout => \Equal39~0_combout\);

-- Location: FF_X17_Y3_N47
\DATA[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OUT1(4),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(20));

-- Location: LABCELL_X17_Y3_N12
\Equal38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal38~1_combout\ = ( !BITCOUNT(7) & ( BITCOUNT(1) & ( (!BITCOUNT(0) & (!BITCOUNT(4) & (!BITCOUNT(31) & BITCOUNT(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(0),
	datab => ALT_INV_BITCOUNT(4),
	datac => ALT_INV_BITCOUNT(31),
	datad => ALT_INV_BITCOUNT(2),
	datae => ALT_INV_BITCOUNT(7),
	dataf => ALT_INV_BITCOUNT(1),
	combout => \Equal38~1_combout\);

-- Location: LABCELL_X17_Y3_N54
\Equal38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal38~0_combout\ = ( \Equal34~0_combout\ & ( \Equal38~1_combout\ & ( (\LessThan3~2_combout\ & (\LessThan3~0_combout\ & (\LessThan3~1_combout\ & \LessThan3~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~2_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \ALT_INV_LessThan3~1_combout\,
	datad => \ALT_INV_LessThan3~3_combout\,
	datae => \ALT_INV_Equal34~0_combout\,
	dataf => \ALT_INV_Equal38~1_combout\,
	combout => \Equal38~0_combout\);

-- Location: FF_X17_Y3_N2
\DATA[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OUT1(3),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(19));

-- Location: FF_X17_Y3_N44
\DATA[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OUT1(5),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(21));

-- Location: LABCELL_X17_Y3_N39
\Equal37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal37~1_combout\ = ( !BITCOUNT(4) & ( (!BITCOUNT(31) & (!BITCOUNT(7) & (BITCOUNT(2) & BITCOUNT(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(31),
	datab => ALT_INV_BITCOUNT(7),
	datac => ALT_INV_BITCOUNT(2),
	datad => ALT_INV_BITCOUNT(0),
	dataf => ALT_INV_BITCOUNT(4),
	combout => \Equal37~1_combout\);

-- Location: LABCELL_X17_Y3_N57
\Equal37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal37~0_combout\ = ( \Equal32~0_combout\ & ( \Equal37~1_combout\ & ( (\LessThan3~2_combout\ & (\LessThan3~0_combout\ & (\LessThan3~3_combout\ & \LessThan3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~2_combout\,
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => \ALT_INV_LessThan3~3_combout\,
	datad => \ALT_INV_LessThan3~1_combout\,
	datae => \ALT_INV_Equal32~0_combout\,
	dataf => \ALT_INV_Equal37~1_combout\,
	combout => \Equal37~0_combout\);

-- Location: LABCELL_X17_Y3_N42
\TXPIN~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~11_combout\ = ( DATA(21) & ( \Equal37~0_combout\ & ( DATA(19) ) ) ) # ( !DATA(21) & ( \Equal37~0_combout\ & ( DATA(19) ) ) ) # ( DATA(21) & ( !\Equal37~0_combout\ & ( (!\Equal38~0_combout\ & (\Equal39~0_combout\)) # (\Equal38~0_combout\ & 
-- ((DATA(20)))) ) ) ) # ( !DATA(21) & ( !\Equal37~0_combout\ & ( (DATA(20) & \Equal38~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100110101001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal39~0_combout\,
	datab => ALT_INV_DATA(20),
	datac => \ALT_INV_Equal38~0_combout\,
	datad => ALT_INV_DATA(19),
	datae => ALT_INV_DATA(21),
	dataf => \ALT_INV_Equal37~0_combout\,
	combout => \TXPIN~11_combout\);

-- Location: LABCELL_X17_Y3_N36
\TXPIN~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~7_combout\ = ( !\Equal37~0_combout\ & ( (!\Equal39~0_combout\ & !\Equal38~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal39~0_combout\,
	datad => \ALT_INV_Equal38~0_combout\,
	dataf => \ALT_INV_Equal37~0_combout\,
	combout => \TXPIN~7_combout\);

-- Location: LABCELL_X18_Y3_N36
\TXPIN~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~12_combout\ = ( !\TXPIN~11_combout\ & ( \TXPIN~7_combout\ & ( (!\TXPIN~8_combout\ & (!\TXPIN~6_combout\ & ((!\TXPIN~9_combout\) # (\TXPIN~10_combout\)))) ) ) ) # ( !\TXPIN~11_combout\ & ( !\TXPIN~7_combout\ & ( (!\TXPIN~8_combout\ & 
-- ((!\TXPIN~9_combout\) # (\TXPIN~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001000100000000000000000011000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TXPIN~10_combout\,
	datab => \ALT_INV_TXPIN~8_combout\,
	datac => \ALT_INV_TXPIN~6_combout\,
	datad => \ALT_INV_TXPIN~9_combout\,
	datae => \ALT_INV_TXPIN~11_combout\,
	dataf => \ALT_INV_TXPIN~7_combout\,
	combout => \TXPIN~12_combout\);

-- Location: LABCELL_X17_Y3_N33
\DATA[17]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA[17]~4_combout\ = ( !OUT1(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_OUT1(1),
	combout => \DATA[17]~4_combout\);

-- Location: FF_X17_Y3_N34
\DATA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \DATA[17]~4_combout\,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(17));

-- Location: FF_X17_Y5_N32
\DATA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OUT1(2),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(18));

-- Location: LABCELL_X17_Y5_N30
\TXPIN~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~14_combout\ = ( DATA(18) & ( \Equal32~0_combout\ & ( (BITCOUNT(2) & (!BITCOUNT(0) & (!BITCOUNT(4) & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(2),
	datab => ALT_INV_BITCOUNT(0),
	datac => ALT_INV_BITCOUNT(4),
	datad => \ALT_INV_Equal0~0_combout\,
	datae => ALT_INV_DATA(18),
	dataf => \ALT_INV_Equal32~0_combout\,
	combout => \TXPIN~14_combout\);

-- Location: FF_X19_Y4_N31
\InA[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => A(6),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InA[6]~_Duplicate_1_q\);

-- Location: FF_X17_Y4_N26
\OldInA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InA[6]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInA(6));

-- Location: LABCELL_X17_Y4_N0
\DATA[14]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA[14]~5_combout\ = ( !OldInA(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_OldInA(6),
	combout => \DATA[14]~5_combout\);

-- Location: FF_X17_Y4_N17
\DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \DATA[14]~5_combout\,
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(14));

-- Location: FF_X17_Y3_N10
\InA[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => A(7),
	sload => VCC,
	ena => \InA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InA[7]~_Duplicate_1_q\);

-- Location: FF_X17_Y5_N37
\OldInA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \InA[7]~_Duplicate_1_q\,
	sload => VCC,
	ena => \PRESCL[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OldInA(7));

-- Location: FF_X17_Y5_N35
\DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OldInA(7),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(15));

-- Location: LABCELL_X17_Y5_N42
\TXPIN~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~46_combout\ = ( BITCOUNT(1) & ( BITCOUNT(0) & ( (BITCOUNT(3) & !BITCOUNT(5)) ) ) ) # ( !BITCOUNT(1) & ( BITCOUNT(0) & ( (BITCOUNT(3) & (!DATA(14) & !BITCOUNT(5))) ) ) ) # ( BITCOUNT(1) & ( !BITCOUNT(0) & ( (BITCOUNT(3) & (DATA(15) & !BITCOUNT(5))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000001000100000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(3),
	datab => ALT_INV_DATA(14),
	datac => ALT_INV_DATA(15),
	datad => ALT_INV_BITCOUNT(5),
	datae => ALT_INV_BITCOUNT(1),
	dataf => ALT_INV_BITCOUNT(0),
	combout => \TXPIN~46_combout\);

-- Location: LABCELL_X17_Y3_N24
\TXPIN~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~15_combout\ = ( \TXPIN~46_combout\ & ( \Equal0~0_combout\ & ( (!BITCOUNT(2) & (!BITCOUNT(0) & (\Equal32~0_combout\ & !BITCOUNT(4)))) # (BITCOUNT(2) & (((BITCOUNT(4))))) ) ) ) # ( !\TXPIN~46_combout\ & ( \Equal0~0_combout\ & ( (!BITCOUNT(0) & 
-- (!BITCOUNT(2) & (\Equal32~0_combout\ & !BITCOUNT(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(0),
	datab => ALT_INV_BITCOUNT(2),
	datac => \ALT_INV_Equal32~0_combout\,
	datad => ALT_INV_BITCOUNT(4),
	datae => \ALT_INV_TXPIN~46_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \TXPIN~15_combout\);

-- Location: FF_X18_Y3_N23
\DATA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OUT1(0),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(16));

-- Location: LABCELL_X18_Y3_N21
\TXPIN~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~16_combout\ = ( \Equal2~0_combout\ & ( (!\Equal33~0_combout\ & (\Equal34~0_combout\ & (!\TXPIN~4_combout\ & DATA(16)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal33~0_combout\,
	datab => \ALT_INV_Equal34~0_combout\,
	datac => \ALT_INV_TXPIN~4_combout\,
	datad => ALT_INV_DATA(16),
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \TXPIN~16_combout\);

-- Location: LABCELL_X18_Y3_N18
\TXPIN~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~13_combout\ = ( \Equal2~0_combout\ & ( (!\Equal34~0_combout\ & (!\Equal33~0_combout\ & !\TXPIN~4_combout\)) ) ) # ( !\Equal2~0_combout\ & ( (!\Equal33~0_combout\ & !\TXPIN~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal34~0_combout\,
	datac => \ALT_INV_Equal33~0_combout\,
	datad => \ALT_INV_TXPIN~4_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \TXPIN~13_combout\);

-- Location: LABCELL_X18_Y3_N48
\TXPIN~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~17_combout\ = ( !\TXPIN~16_combout\ & ( \TXPIN~13_combout\ & ( (!\TXPIN~15_combout\ & ((!\Equal35~0_combout\ & ((!\TXPIN~14_combout\))) # (\Equal35~0_combout\ & (DATA(17))))) ) ) ) # ( !\TXPIN~16_combout\ & ( !\TXPIN~13_combout\ & ( 
-- !\TXPIN~15_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011010001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_DATA(17),
	datab => \ALT_INV_Equal35~0_combout\,
	datac => \ALT_INV_TXPIN~14_combout\,
	datad => \ALT_INV_TXPIN~15_combout\,
	datae => \ALT_INV_TXPIN~16_combout\,
	dataf => \ALT_INV_TXPIN~13_combout\,
	combout => \TXPIN~17_combout\);

-- Location: LABCELL_X18_Y3_N6
\TXPIN~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~3_combout\ = ( \Equal0~1_combout\ & ( BITCOUNT(1) & ( (BITCOUNT(5) & (BITCOUNT(2) & ((!BITCOUNT(0)) # (!BITCOUNT(3))))) ) ) ) # ( \Equal0~1_combout\ & ( !BITCOUNT(1) & ( (BITCOUNT(5) & (((BITCOUNT(0) & BITCOUNT(2))) # (BITCOUNT(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010001010100000000000000000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_BITCOUNT(5),
	datab => ALT_INV_BITCOUNT(0),
	datac => ALT_INV_BITCOUNT(3),
	datad => ALT_INV_BITCOUNT(2),
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => ALT_INV_BITCOUNT(1),
	combout => \TXPIN~3_combout\);

-- Location: LABCELL_X18_Y3_N54
\TXPIN~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~2_combout\ = ( \State~8_combout\ & ( \TXPIN~1_combout\ & ( (!\TXPIN~reg0_q\) # (((\Equal54~0_combout\ & \Equal18~0_combout\)) # (\Equal53~0_combout\)) ) ) ) # ( !\State~8_combout\ & ( \TXPIN~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111100111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal54~0_combout\,
	datab => \ALT_INV_TXPIN~reg0_q\,
	datac => \ALT_INV_Equal53~0_combout\,
	datad => \ALT_INV_Equal18~0_combout\,
	datae => \ALT_INV_State~8_combout\,
	dataf => \ALT_INV_TXPIN~1_combout\,
	combout => \TXPIN~2_combout\);

-- Location: FF_X17_Y6_N50
\DATA[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OUT1(10),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(26));

-- Location: FF_X18_Y4_N46
\DATA[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OUT1(11),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(27));

-- Location: FF_X18_Y4_N11
\DATA[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OUT1(12),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(28));

-- Location: FF_X18_Y4_N55
\DATA[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OUT1(15),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(31));

-- Location: FF_X18_Y4_N59
\DATA[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => OUT1(13),
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(29));

-- Location: LABCELL_X17_Y4_N6
\DATA[30]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA[30]~1_combout\ = ( !OUT1(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_OUT1(14),
	combout => \DATA[30]~1_combout\);

-- Location: FF_X18_Y4_N28
\DATA[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	asdata => \DATA[30]~1_combout\,
	sload => VCC,
	ena => \DATA[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DATA(30));

-- Location: LABCELL_X17_Y6_N27
\TXPIN~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~44_combout\ = ( \Equal50~1_combout\ & ( DATA(30) & ( DATA(29) ) ) ) # ( !\Equal50~1_combout\ & ( DATA(30) & ( (\Equal52~0_combout\ & (DATA(31) & !\Equal51~0_combout\)) ) ) ) # ( \Equal50~1_combout\ & ( !DATA(30) & ( DATA(29) ) ) ) # ( 
-- !\Equal50~1_combout\ & ( !DATA(30) & ( ((\Equal52~0_combout\ & DATA(31))) # (\Equal51~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000011110000111100010001000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal52~0_combout\,
	datab => ALT_INV_DATA(31),
	datac => ALT_INV_DATA(29),
	datad => \ALT_INV_Equal51~0_combout\,
	datae => \ALT_INV_Equal50~1_combout\,
	dataf => ALT_INV_DATA(30),
	combout => \TXPIN~44_combout\);

-- Location: LABCELL_X17_Y6_N48
\TXPIN~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~47_combout\ = ( !\Equal48~0_combout\ & ( (!\Equal47~0_combout\ & (((!\Equal49~0_combout\ & (\TXPIN~44_combout\)) # (\Equal49~0_combout\ & ((DATA(28))))))) # (\Equal47~0_combout\ & (DATA(26))) ) ) # ( \Equal48~0_combout\ & ( (((!\Equal47~0_combout\ 
-- & ((DATA(27)))) # (\Equal47~0_combout\ & (DATA(26))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_DATA(26),
	datab => \ALT_INV_Equal49~0_combout\,
	datac => ALT_INV_DATA(27),
	datad => ALT_INV_DATA(28),
	datae => \ALT_INV_Equal48~0_combout\,
	dataf => \ALT_INV_Equal47~0_combout\,
	datag => \ALT_INV_TXPIN~44_combout\,
	combout => \TXPIN~47_combout\);

-- Location: LABCELL_X18_Y3_N30
\TXPIN~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~18_combout\ = ( \TXPIN~2_combout\ & ( \TXPIN~47_combout\ & ( (\TXPIN~17_combout\ & ((!\TXPIN~5_combout\) # ((\TXPIN~12_combout\ & \TXPIN~3_combout\)))) ) ) ) # ( !\TXPIN~2_combout\ & ( \TXPIN~47_combout\ & ( (\TXPIN~17_combout\ & 
-- ((!\TXPIN~5_combout\) # ((\TXPIN~12_combout\ & \TXPIN~3_combout\)))) ) ) ) # ( \TXPIN~2_combout\ & ( !\TXPIN~47_combout\ & ( (\TXPIN~17_combout\ & ((!\TXPIN~5_combout\) # ((\TXPIN~12_combout\ & \TXPIN~3_combout\)))) ) ) ) # ( !\TXPIN~2_combout\ & ( 
-- !\TXPIN~47_combout\ & ( (\TXPIN~17_combout\ & ((!\TXPIN~5_combout\) # (\TXPIN~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100000011000100110000001100010011000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TXPIN~12_combout\,
	datab => \ALT_INV_TXPIN~17_combout\,
	datac => \ALT_INV_TXPIN~5_combout\,
	datad => \ALT_INV_TXPIN~3_combout\,
	datae => \ALT_INV_TXPIN~2_combout\,
	dataf => \ALT_INV_TXPIN~47_combout\,
	combout => \TXPIN~18_combout\);

-- Location: LABCELL_X18_Y3_N42
\TXPIN~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~31_combout\ = ( \TXPIN~30_combout\ & ( \TXPIN~18_combout\ & ( (\TXPIN~19_combout\ & (!\TXPIN~25_combout\ & !\TXPIN~24_combout\)) ) ) ) # ( !\TXPIN~30_combout\ & ( \TXPIN~18_combout\ & ( !\TXPIN~25_combout\ ) ) ) # ( \TXPIN~30_combout\ & ( 
-- !\TXPIN~18_combout\ & ( (\TXPIN~19_combout\ & (!\TXPIN~25_combout\ & ((!\TXPIN~0_combout\) # (!\TXPIN~24_combout\)))) ) ) ) # ( !\TXPIN~30_combout\ & ( !\TXPIN~18_combout\ & ( !\TXPIN~25_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000010100000100000011110000111100000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TXPIN~19_combout\,
	datab => \ALT_INV_TXPIN~0_combout\,
	datac => \ALT_INV_TXPIN~25_combout\,
	datad => \ALT_INV_TXPIN~24_combout\,
	datae => \ALT_INV_TXPIN~30_combout\,
	dataf => \ALT_INV_TXPIN~18_combout\,
	combout => \TXPIN~31_combout\);

-- Location: LABCELL_X18_Y3_N12
\TXPIN~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \TXPIN~42_combout\ = ( \TXPIN~32_combout\ & ( \TXPIN~31_combout\ & ( (!\TXPIN~41_combout\ & ((!\TXPIN~39_combout\) # (!\TXPIN~36_combout\))) ) ) ) # ( !\TXPIN~32_combout\ & ( \TXPIN~31_combout\ & ( (!\TXPIN~39_combout\ & !\TXPIN~41_combout\) ) ) ) # ( 
-- \TXPIN~32_combout\ & ( !\TXPIN~31_combout\ & ( (!\TXPIN~41_combout\ & ((!\TXPIN~39_combout\) # (!\TXPIN~36_combout\))) ) ) ) # ( !\TXPIN~32_combout\ & ( !\TXPIN~31_combout\ & ( (!\TXPIN~41_combout\ & ((!\TXPIN~39_combout\) # ((\TXPIN~35_combout\ & 
-- !\TXPIN~36_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001000110011001000100010001000100010001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TXPIN~39_combout\,
	datab => \ALT_INV_TXPIN~41_combout\,
	datac => \ALT_INV_TXPIN~35_combout\,
	datad => \ALT_INV_TXPIN~36_combout\,
	datae => \ALT_INV_TXPIN~32_combout\,
	dataf => \ALT_INV_TXPIN~31_combout\,
	combout => \TXPIN~42_combout\);

-- Location: FF_X18_Y3_N14
\TXPIN~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_in~inputCLKENA0_outclk\,
	d => \TXPIN~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TXPIN~reg0_q\);

-- Location: LABCELL_X2_Y59_N0
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


