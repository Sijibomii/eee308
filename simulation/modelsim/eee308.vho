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

-- DATE "01/10/2022 23:21:14"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eee308 IS
    PORT (
	clk50MHz : IN std_logic;
	r : OUT std_logic_vector(3 DOWNTO 0);
	g : OUT std_logic_vector(3 DOWNTO 0);
	b : OUT std_logic_vector(3 DOWNTO 0);
	hsync : OUT std_logic;
	vsync : OUT std_logic
	);
END eee308;

-- Design Ports Information
-- r[0]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- r[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- r[2]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- r[3]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- g[0]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- g[1]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- g[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- g[3]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[0]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[1]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- b[3]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hsync	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vsync	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk50MHz	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF eee308 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_g : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hsync : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a80_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a80_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a68_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a68_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a92_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a92_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \disp_clk|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a81_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a81_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a69_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a93_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a93_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a82_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a82_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a70_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a70_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a94_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a94_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a83_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a83_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a71_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a71_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a95_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a95_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a76_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a76_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a64_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a64_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a88_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a88_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a77_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a77_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a65_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a65_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a89_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a89_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a78_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a78_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a66_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a66_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a79_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a79_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a67_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a91_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a91_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a72_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a84_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a73_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a73_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a85_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a85_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a74_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a74_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a86_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a86_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_hr|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a75_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a75_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a87_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a87_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \disp_clk|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \vposition[0]~32_combout\ : std_logic;
SIGNAL \vposition[28]~89\ : std_logic;
SIGNAL \vposition[29]~90_combout\ : std_logic;
SIGNAL \hposition[0]~32_combout\ : std_logic;
SIGNAL \hposition[0]~33\ : std_logic;
SIGNAL \hposition[1]~34_combout\ : std_logic;
SIGNAL \hposition[1]~35\ : std_logic;
SIGNAL \hposition[2]~36_combout\ : std_logic;
SIGNAL \hposition[2]~37\ : std_logic;
SIGNAL \hposition[3]~38_combout\ : std_logic;
SIGNAL \hposition[3]~39\ : std_logic;
SIGNAL \hposition[4]~40_combout\ : std_logic;
SIGNAL \hposition[4]~41\ : std_logic;
SIGNAL \hposition[5]~42_combout\ : std_logic;
SIGNAL \hposition[5]~43\ : std_logic;
SIGNAL \hposition[6]~44_combout\ : std_logic;
SIGNAL \hposition[6]~45\ : std_logic;
SIGNAL \hposition[7]~46_combout\ : std_logic;
SIGNAL \hposition[7]~47\ : std_logic;
SIGNAL \hposition[8]~48_combout\ : std_logic;
SIGNAL \hposition[8]~49\ : std_logic;
SIGNAL \hposition[9]~50_combout\ : std_logic;
SIGNAL \hposition[9]~51\ : std_logic;
SIGNAL \hposition[10]~52_combout\ : std_logic;
SIGNAL \hposition[10]~53\ : std_logic;
SIGNAL \hposition[11]~54_combout\ : std_logic;
SIGNAL \hposition[11]~55\ : std_logic;
SIGNAL \hposition[12]~56_combout\ : std_logic;
SIGNAL \hposition[12]~57\ : std_logic;
SIGNAL \hposition[13]~58_combout\ : std_logic;
SIGNAL \hposition[13]~59\ : std_logic;
SIGNAL \hposition[14]~60_combout\ : std_logic;
SIGNAL \hposition[14]~61\ : std_logic;
SIGNAL \hposition[15]~62_combout\ : std_logic;
SIGNAL \hposition[15]~63\ : std_logic;
SIGNAL \hposition[16]~64_combout\ : std_logic;
SIGNAL \hposition[16]~65\ : std_logic;
SIGNAL \hposition[17]~66_combout\ : std_logic;
SIGNAL \hposition[17]~67\ : std_logic;
SIGNAL \hposition[18]~68_combout\ : std_logic;
SIGNAL \hposition[18]~69\ : std_logic;
SIGNAL \hposition[19]~70_combout\ : std_logic;
SIGNAL \hposition[19]~71\ : std_logic;
SIGNAL \hposition[20]~72_combout\ : std_logic;
SIGNAL \hposition[20]~73\ : std_logic;
SIGNAL \hposition[21]~74_combout\ : std_logic;
SIGNAL \hposition[21]~75\ : std_logic;
SIGNAL \hposition[22]~76_combout\ : std_logic;
SIGNAL \hposition[22]~77\ : std_logic;
SIGNAL \hposition[23]~78_combout\ : std_logic;
SIGNAL \hposition[23]~79\ : std_logic;
SIGNAL \hposition[24]~80_combout\ : std_logic;
SIGNAL \hposition[24]~81\ : std_logic;
SIGNAL \hposition[25]~82_combout\ : std_logic;
SIGNAL \hposition[25]~83\ : std_logic;
SIGNAL \hposition[26]~84_combout\ : std_logic;
SIGNAL \hposition[26]~85\ : std_logic;
SIGNAL \hposition[27]~86_combout\ : std_logic;
SIGNAL \hposition[27]~87\ : std_logic;
SIGNAL \hposition[28]~88_combout\ : std_logic;
SIGNAL \hposition[28]~89\ : std_logic;
SIGNAL \hposition[29]~90_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \hposition[29]~91\ : std_logic;
SIGNAL \hposition[30]~92_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \hposition[30]~93\ : std_logic;
SIGNAL \hposition[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \vposition[29]~91\ : std_logic;
SIGNAL \vposition[30]~92_combout\ : std_logic;
SIGNAL \vposition[30]~93\ : std_logic;
SIGNAL \vposition[31]~94_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \vposition[0]~33\ : std_logic;
SIGNAL \vposition[1]~34_combout\ : std_logic;
SIGNAL \vposition[1]~35\ : std_logic;
SIGNAL \vposition[2]~36_combout\ : std_logic;
SIGNAL \vposition[2]~37\ : std_logic;
SIGNAL \vposition[3]~38_combout\ : std_logic;
SIGNAL \vposition[3]~39\ : std_logic;
SIGNAL \vposition[4]~40_combout\ : std_logic;
SIGNAL \vposition[4]~41\ : std_logic;
SIGNAL \vposition[5]~42_combout\ : std_logic;
SIGNAL \vposition[5]~43\ : std_logic;
SIGNAL \vposition[6]~44_combout\ : std_logic;
SIGNAL \vposition[6]~45\ : std_logic;
SIGNAL \vposition[7]~46_combout\ : std_logic;
SIGNAL \vposition[7]~47\ : std_logic;
SIGNAL \vposition[8]~48_combout\ : std_logic;
SIGNAL \vposition[8]~49\ : std_logic;
SIGNAL \vposition[9]~50_combout\ : std_logic;
SIGNAL \vposition[9]~51\ : std_logic;
SIGNAL \vposition[10]~52_combout\ : std_logic;
SIGNAL \vposition[10]~53\ : std_logic;
SIGNAL \vposition[11]~54_combout\ : std_logic;
SIGNAL \vposition[11]~55\ : std_logic;
SIGNAL \vposition[12]~56_combout\ : std_logic;
SIGNAL \vposition[12]~57\ : std_logic;
SIGNAL \vposition[13]~58_combout\ : std_logic;
SIGNAL \vposition[13]~59\ : std_logic;
SIGNAL \vposition[14]~60_combout\ : std_logic;
SIGNAL \vposition[14]~61\ : std_logic;
SIGNAL \vposition[15]~62_combout\ : std_logic;
SIGNAL \vposition[15]~63\ : std_logic;
SIGNAL \vposition[16]~64_combout\ : std_logic;
SIGNAL \vposition[16]~65\ : std_logic;
SIGNAL \vposition[17]~66_combout\ : std_logic;
SIGNAL \vposition[17]~67\ : std_logic;
SIGNAL \vposition[18]~68_combout\ : std_logic;
SIGNAL \vposition[18]~69\ : std_logic;
SIGNAL \vposition[19]~70_combout\ : std_logic;
SIGNAL \vposition[19]~71\ : std_logic;
SIGNAL \vposition[20]~72_combout\ : std_logic;
SIGNAL \vposition[20]~73\ : std_logic;
SIGNAL \vposition[21]~74_combout\ : std_logic;
SIGNAL \vposition[21]~75\ : std_logic;
SIGNAL \vposition[22]~76_combout\ : std_logic;
SIGNAL \vposition[22]~77\ : std_logic;
SIGNAL \vposition[23]~78_combout\ : std_logic;
SIGNAL \vposition[23]~79\ : std_logic;
SIGNAL \vposition[24]~80_combout\ : std_logic;
SIGNAL \vposition[24]~81\ : std_logic;
SIGNAL \vposition[25]~82_combout\ : std_logic;
SIGNAL \vposition[25]~83\ : std_logic;
SIGNAL \vposition[26]~84_combout\ : std_logic;
SIGNAL \vposition[26]~85\ : std_logic;
SIGNAL \vposition[27]~86_combout\ : std_logic;
SIGNAL \vposition[27]~87\ : std_logic;
SIGNAL \vposition[28]~88_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \process_0~15_combout\ : std_logic;
SIGNAL \process_0~16_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \data_address2[2]~11_combout\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \data_address2[2]~12\ : std_logic;
SIGNAL \data_address2[3]~13_combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \data_address2[3]~14\ : std_logic;
SIGNAL \data_address2[4]~15_combout\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \data_address2[4]~16\ : std_logic;
SIGNAL \data_address2[5]~17_combout\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \data_address2[5]~18\ : std_logic;
SIGNAL \data_address2[6]~19_combout\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \data_address2[6]~20\ : std_logic;
SIGNAL \data_address2[7]~21_combout\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \data_address2[7]~22\ : std_logic;
SIGNAL \data_address2[8]~23_combout\ : std_logic;
SIGNAL \Add11~17\ : std_logic;
SIGNAL \Add11~18_combout\ : std_logic;
SIGNAL \data_address2[8]~24\ : std_logic;
SIGNAL \data_address2[9]~25_combout\ : std_logic;
SIGNAL \Add11~19\ : std_logic;
SIGNAL \Add11~20_combout\ : std_logic;
SIGNAL \data_address2[9]~26\ : std_logic;
SIGNAL \data_address2[10]~27_combout\ : std_logic;
SIGNAL \Add11~21\ : std_logic;
SIGNAL \Add11~22_combout\ : std_logic;
SIGNAL \data_address2[10]~28\ : std_logic;
SIGNAL \data_address2[11]~29_combout\ : std_logic;
SIGNAL \Add11~23\ : std_logic;
SIGNAL \Add11~24_combout\ : std_logic;
SIGNAL \data_address2[11]~30\ : std_logic;
SIGNAL \data_address2[12]~31_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~19\ : std_logic;
SIGNAL \Add8~21\ : std_logic;
SIGNAL \Add8~23\ : std_logic;
SIGNAL \Add8~25\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~28_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][11]~11_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][10]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][9]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][8]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][11]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][7]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][10]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][6]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][9]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~7_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][7]~12_combout\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][6]~10_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Add8~26_combout\ : std_logic;
SIGNAL \Add8~24_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Add8~22_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \data_address[1]~16\ : std_logic;
SIGNAL \data_address[2]~18\ : std_logic;
SIGNAL \data_address[3]~20\ : std_logic;
SIGNAL \data_address[4]~22\ : std_logic;
SIGNAL \data_address[5]~24\ : std_logic;
SIGNAL \data_address[6]~26\ : std_logic;
SIGNAL \data_address[7]~28\ : std_logic;
SIGNAL \data_address[8]~30\ : std_logic;
SIGNAL \data_address[9]~32\ : std_logic;
SIGNAL \data_address[10]~34\ : std_logic;
SIGNAL \data_address[11]~36\ : std_logic;
SIGNAL \data_address[12]~38\ : std_logic;
SIGNAL \data_address[13]~40\ : std_logic;
SIGNAL \data_address[14]~42\ : std_logic;
SIGNAL \data_address[15]~43_combout\ : std_logic;
SIGNAL \data_address[13]~39_combout\ : std_logic;
SIGNAL \data_address[14]~41_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\ : std_logic;
SIGNAL \data_address[0]~45_combout\ : std_logic;
SIGNAL \data_address[1]~15_combout\ : std_logic;
SIGNAL \data_address[2]~17_combout\ : std_logic;
SIGNAL \data_address[3]~19_combout\ : std_logic;
SIGNAL \data_address[4]~21_combout\ : std_logic;
SIGNAL \data_address[5]~23_combout\ : std_logic;
SIGNAL \data_address[6]~25_combout\ : std_logic;
SIGNAL \data_address[7]~27_combout\ : std_logic;
SIGNAL \data_address[8]~29_combout\ : std_logic;
SIGNAL \data_address[9]~31_combout\ : std_logic;
SIGNAL \data_address[10]~33_combout\ : std_logic;
SIGNAL \data_address[11]~35_combout\ : std_logic;
SIGNAL \data_address[12]~37_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a44~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~2_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~3_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a92~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a80~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a68~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a56~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~0_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~1_combout\ : std_logic;
SIGNAL \r~0_combout\ : std_logic;
SIGNAL \r~1_combout\ : std_logic;
SIGNAL \r[0]~reg0_q\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~6_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a45~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~7_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a93~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a57~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a69~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~4_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a81~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~5_combout\ : std_logic;
SIGNAL \r~2_combout\ : std_logic;
SIGNAL \r~3_combout\ : std_logic;
SIGNAL \r[1]~reg0_q\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a82~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a70~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a58~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~8_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a94~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~9_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a46~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~10_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~11_combout\ : std_logic;
SIGNAL \r~4_combout\ : std_logic;
SIGNAL \r~5_combout\ : std_logic;
SIGNAL \r[2]~reg0_q\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a47~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~14_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~15_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a83~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a95~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a71~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a59~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~12_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~13_combout\ : std_logic;
SIGNAL \r~6_combout\ : std_logic;
SIGNAL \r~7_combout\ : std_logic;
SIGNAL \r[3]~reg0_q\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~18_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a40~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~19_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a88~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a64~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a52~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~16_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a76~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~17_combout\ : std_logic;
SIGNAL \g~0_combout\ : std_logic;
SIGNAL \g~1_combout\ : std_logic;
SIGNAL \g[0]~reg0_q\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a89~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a53~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a65~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~20_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a77~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~21_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~22_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a41~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~23_combout\ : std_logic;
SIGNAL \g~2_combout\ : std_logic;
SIGNAL \g~3_combout\ : std_logic;
SIGNAL \g[1]~reg0_q\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~26_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a42~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~27_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a78~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a66~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a54~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~24_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a90~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~25_combout\ : std_logic;
SIGNAL \g~4_combout\ : std_logic;
SIGNAL \g~5_combout\ : std_logic;
SIGNAL \g[2]~reg0_q\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~30_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a43~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~31_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a67~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a55~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~28_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a91~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a79~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~29_combout\ : std_logic;
SIGNAL \g~6_combout\ : std_logic;
SIGNAL \g~7_combout\ : std_logic;
SIGNAL \g[3]~reg0_q\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~34_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~35_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a84~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a60~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a48~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~32_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a72~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~33_combout\ : std_logic;
SIGNAL \b~0_combout\ : std_logic;
SIGNAL \b~1_combout\ : std_logic;
SIGNAL \b[0]~reg0_q\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a61~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a49~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~36_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a73~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a85~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~37_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~38_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~39_combout\ : std_logic;
SIGNAL \b~2_combout\ : std_logic;
SIGNAL \b~3_combout\ : std_logic;
SIGNAL \b[1]~reg0_q\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~42_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~43_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a62~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a50~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~40_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a74~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a86~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~41_combout\ : std_logic;
SIGNAL \b~4_combout\ : std_logic;
SIGNAL \b~5_combout\ : std_logic;
SIGNAL \b[2]~reg0_q\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a87~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a51~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a63~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~44_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a75~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~45_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~46_combout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \imRead_clk|altsyncram_component|auto_generated|mux2|_~47_combout\ : std_logic;
SIGNAL \b~6_combout\ : std_logic;
SIGNAL \b~7_combout\ : std_logic;
SIGNAL \b[3]~reg0_q\ : std_logic;
SIGNAL \process_0~17_combout\ : std_logic;
SIGNAL \process_0~18_combout\ : std_logic;
SIGNAL \hsync~reg0_q\ : std_logic;
SIGNAL \process_0~19_combout\ : std_logic;
SIGNAL \process_0~20_combout\ : std_logic;
SIGNAL \process_0~21_combout\ : std_logic;
SIGNAL \vsync~reg0_q\ : std_logic;
SIGNAL \imRead_hr|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL vposition : std_logic_vector(31 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \disp_clk|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL hposition : std_logic_vector(31 DOWNTO 0);
SIGNAL \imRead_clk|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL data_address2 : std_logic_vector(12 DOWNTO 0);
SIGNAL data_address : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk50MHz <= clk50MHz;
r <= ww_r;
g <= ww_g;
b <= ww_b;
hsync <= ww_hsync;
vsync <= ww_vsync;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\imRead_hr|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (data_address2(12) & data_address2(11) & data_address2(10) & data_address2(9) & data_address2(8) & data_address2(7) & data_address2(6) & data_address2(5) & 
data_address2(4) & data_address2(3) & data_address2(2) & data_address2(1) & data_address2(0));

\imRead_hr|altsyncram_component|auto_generated|q_a\(8) <= \imRead_hr|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a80_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a80~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a80_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a68_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a68~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a68_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a56~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a92_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a92~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a92_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a32~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a44~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\(0);

\disp_clk|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk50MHz~inputclkctrl_outclk\);

\disp_clk|altpll_component|auto_generated|wire_pll1_clk\(0) <= \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(0);
\disp_clk|altpll_component|auto_generated|wire_pll1_clk\(1) <= \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(1);
\disp_clk|altpll_component|auto_generated|wire_pll1_clk\(2) <= \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(2);
\disp_clk|altpll_component|auto_generated|wire_pll1_clk\(3) <= \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(3);
\disp_clk|altpll_component|auto_generated|wire_pll1_clk\(4) <= \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\(4);

\imRead_hr|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (data_address2(12) & data_address2(11) & data_address2(10) & data_address2(9) & data_address2(8) & data_address2(7) & data_address2(6) & data_address2(5) & 
data_address2(4) & data_address2(3) & data_address2(2) & data_address2(1) & data_address2(0));

\imRead_hr|altsyncram_component|auto_generated|q_a\(9) <= \imRead_hr|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a81_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a81~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a81_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a69_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a69~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a57~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a93_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a93~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a93_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a33~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a45~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\(0);

\imRead_hr|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (data_address2(12) & data_address2(11) & data_address2(10) & data_address2(9) & data_address2(8) & data_address2(7) & data_address2(6) & data_address2(5) & 
data_address2(4) & data_address2(3) & data_address2(2) & data_address2(1) & data_address2(0));

\imRead_hr|altsyncram_component|auto_generated|q_a\(10) <= \imRead_hr|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a82_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a82~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a82_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a70_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a70~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a70_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a58~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a94_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a94~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a94_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a34~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a46~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\(0);

\imRead_hr|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (data_address2(12) & data_address2(11) & data_address2(10) & data_address2(9) & data_address2(8) & data_address2(7) & data_address2(6) & data_address2(5) & 
data_address2(4) & data_address2(3) & data_address2(2) & data_address2(1) & data_address2(0));

\imRead_hr|altsyncram_component|auto_generated|q_a\(11) <= \imRead_hr|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a83_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a83~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a83_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a71_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a71~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a71_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a59~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a95_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a95~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a95_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a35~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a47~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\(0);

\imRead_hr|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (data_address2(12) & data_address2(11) & data_address2(10) & data_address2(9) & data_address2(8) & data_address2(7) & data_address2(6) & data_address2(5) & 
data_address2(4) & data_address2(3) & data_address2(2) & data_address2(1) & data_address2(0));

\imRead_hr|altsyncram_component|auto_generated|q_a\(4) <= \imRead_hr|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a76_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a76~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a76_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a64_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a64~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a64_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a52~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a88_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a88~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a88_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a28~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a40~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\(0);

\imRead_hr|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (data_address2(12) & data_address2(11) & data_address2(10) & data_address2(9) & data_address2(8) & data_address2(7) & data_address2(6) & data_address2(5) & 
data_address2(4) & data_address2(3) & data_address2(2) & data_address2(1) & data_address2(0));

\imRead_hr|altsyncram_component|auto_generated|q_a\(5) <= \imRead_hr|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a77_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a77~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a77_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a65_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a65~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a65_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a53~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a89_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a89~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a89_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a29~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a41~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\(0);

\imRead_hr|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (data_address2(12) & data_address2(11) & data_address2(10) & data_address2(9) & data_address2(8) & data_address2(7) & data_address2(6) & data_address2(5) & 
data_address2(4) & data_address2(3) & data_address2(2) & data_address2(1) & data_address2(0));

\imRead_hr|altsyncram_component|auto_generated|q_a\(6) <= \imRead_hr|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a78_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a78~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a78_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a66_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a66~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a66_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a54~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a90~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a30~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a42~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\(0);

\imRead_hr|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (data_address2(12) & data_address2(11) & data_address2(10) & data_address2(9) & data_address2(8) & data_address2(7) & data_address2(6) & data_address2(5) & 
data_address2(4) & data_address2(3) & data_address2(2) & data_address2(1) & data_address2(0));

\imRead_hr|altsyncram_component|auto_generated|q_a\(7) <= \imRead_hr|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a79_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a79~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a79_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a67_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a67~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a55~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a91_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a91~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a91_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a31~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a43~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(0);

\imRead_hr|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (data_address2(12) & data_address2(11) & data_address2(10) & data_address2(9) & data_address2(8) & data_address2(7) & data_address2(6) & data_address2(5) & 
data_address2(4) & data_address2(3) & data_address2(2) & data_address2(1) & data_address2(0));

\imRead_hr|altsyncram_component|auto_generated|q_a\(0) <= \imRead_hr|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a72_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a72~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a60~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a48~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a84_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a84~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a36~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);

\imRead_hr|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (data_address2(12) & data_address2(11) & data_address2(10) & data_address2(9) & data_address2(8) & data_address2(7) & data_address2(6) & data_address2(5) & 
data_address2(4) & data_address2(3) & data_address2(2) & data_address2(1) & data_address2(0));

\imRead_hr|altsyncram_component|auto_generated|q_a\(1) <= \imRead_hr|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a73_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a73~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a73_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a61~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a49~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a85_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a85~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a85_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a37~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);

\imRead_hr|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (data_address2(12) & data_address2(11) & data_address2(10) & data_address2(9) & data_address2(8) & data_address2(7) & data_address2(6) & data_address2(5) & 
data_address2(4) & data_address2(3) & data_address2(2) & data_address2(1) & data_address2(0));

\imRead_hr|altsyncram_component|auto_generated|q_a\(2) <= \imRead_hr|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a74_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a74~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a74_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a62~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a50~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a86_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a86~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a86_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a26~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a38~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\(0);

\imRead_hr|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (data_address2(12) & data_address2(11) & data_address2(10) & data_address2(9) & data_address2(8) & data_address2(7) & data_address2(6) & data_address2(5) & 
data_address2(4) & data_address2(3) & data_address2(2) & data_address2(1) & data_address2(0));

\imRead_hr|altsyncram_component|auto_generated|q_a\(3) <= \imRead_hr|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a75_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a75~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a75_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a63~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a51~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a87_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a87~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a87_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a27~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\imRead_clk|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (data_address(12) & data_address(11) & data_address(10) & data_address(9) & data_address(8) & data_address(7) & data_address(6) & data_address(5) & 
data_address(4) & data_address(3) & data_address(2) & data_address(1) & data_address(0));

\imRead_clk|altsyncram_component|auto_generated|ram_block1a39~portadataout\ <= \imRead_clk|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\(0);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \disp_clk|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);

-- Location: LCCOMB_X44_Y42_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X18_Y0_N30
\r[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_r(0));

-- Location: IOOBUF_X0_Y12_N9
\r[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_r(1));

-- Location: IOOBUF_X16_Y0_N16
\r[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_r(2));

-- Location: IOOBUF_X16_Y0_N23
\r[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_r(3));

-- Location: IOOBUF_X0_Y9_N2
\g[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_g(0));

-- Location: IOOBUF_X0_Y15_N9
\g[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_g(1));

-- Location: IOOBUF_X0_Y3_N9
\g[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_g(2));

-- Location: IOOBUF_X0_Y3_N2
\g[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_g(3));

-- Location: IOOBUF_X0_Y13_N2
\b[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_b(0));

-- Location: IOOBUF_X0_Y15_N2
\b[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_b(1));

-- Location: IOOBUF_X0_Y23_N2
\b[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_b(2));

-- Location: IOOBUF_X0_Y18_N9
\b[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_b(3));

-- Location: IOOBUF_X0_Y18_N2
\hsync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hsync~reg0_q\,
	devoe => ww_devoe,
	o => ww_hsync);

-- Location: IOOBUF_X0_Y13_N9
\vsync~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vsync~reg0_q\,
	devoe => ww_devoe,
	o => ww_vsync);

-- Location: IOIBUF_X78_Y29_N22
\clk50MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: CLKCTRL_G9
\clk50MHz~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50MHz~inputclkctrl_outclk\);

-- Location: PLL_1
\disp_clk|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 11,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 147,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 74,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 74,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 236,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \disp_clk|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \disp_clk|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \disp_clk|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \disp_clk|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y29_N0
\vposition[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[0]~32_combout\ = vposition(0) $ (VCC)
-- \vposition[0]~33\ = CARRY(vposition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vposition(0),
	datad => VCC,
	combout => \vposition[0]~32_combout\,
	cout => \vposition[0]~33\);

-- Location: LCCOMB_X45_Y28_N24
\vposition[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[28]~88_combout\ = (vposition(28) & (\vposition[27]~87\ $ (GND))) # (!vposition(28) & (!\vposition[27]~87\ & VCC))
-- \vposition[28]~89\ = CARRY((vposition(28) & !\vposition[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(28),
	datad => VCC,
	cin => \vposition[27]~87\,
	combout => \vposition[28]~88_combout\,
	cout => \vposition[28]~89\);

-- Location: LCCOMB_X45_Y28_N26
\vposition[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[29]~90_combout\ = (vposition(29) & (!\vposition[28]~89\)) # (!vposition(29) & ((\vposition[28]~89\) # (GND)))
-- \vposition[29]~91\ = CARRY((!\vposition[28]~89\) # (!vposition(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(29),
	datad => VCC,
	cin => \vposition[28]~89\,
	combout => \vposition[29]~90_combout\,
	cout => \vposition[29]~91\);

-- Location: LCCOMB_X47_Y30_N0
\hposition[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[0]~32_combout\ = hposition(0) $ (VCC)
-- \hposition[0]~33\ = CARRY(hposition(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hposition(0),
	datad => VCC,
	combout => \hposition[0]~32_combout\,
	cout => \hposition[0]~33\);

-- Location: FF_X47_Y30_N1
\hposition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[0]~32_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(0));

-- Location: LCCOMB_X47_Y30_N2
\hposition[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[1]~34_combout\ = (hposition(1) & (!\hposition[0]~33\)) # (!hposition(1) & ((\hposition[0]~33\) # (GND)))
-- \hposition[1]~35\ = CARRY((!\hposition[0]~33\) # (!hposition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(1),
	datad => VCC,
	cin => \hposition[0]~33\,
	combout => \hposition[1]~34_combout\,
	cout => \hposition[1]~35\);

-- Location: FF_X47_Y30_N3
\hposition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[1]~34_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(1));

-- Location: LCCOMB_X47_Y30_N4
\hposition[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[2]~36_combout\ = (hposition(2) & (\hposition[1]~35\ $ (GND))) # (!hposition(2) & (!\hposition[1]~35\ & VCC))
-- \hposition[2]~37\ = CARRY((hposition(2) & !\hposition[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(2),
	datad => VCC,
	cin => \hposition[1]~35\,
	combout => \hposition[2]~36_combout\,
	cout => \hposition[2]~37\);

-- Location: FF_X47_Y30_N5
\hposition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[2]~36_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(2));

-- Location: LCCOMB_X47_Y30_N6
\hposition[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[3]~38_combout\ = (hposition(3) & (!\hposition[2]~37\)) # (!hposition(3) & ((\hposition[2]~37\) # (GND)))
-- \hposition[3]~39\ = CARRY((!\hposition[2]~37\) # (!hposition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(3),
	datad => VCC,
	cin => \hposition[2]~37\,
	combout => \hposition[3]~38_combout\,
	cout => \hposition[3]~39\);

-- Location: FF_X47_Y30_N7
\hposition[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[3]~38_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(3));

-- Location: LCCOMB_X47_Y30_N8
\hposition[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[4]~40_combout\ = (hposition(4) & (\hposition[3]~39\ $ (GND))) # (!hposition(4) & (!\hposition[3]~39\ & VCC))
-- \hposition[4]~41\ = CARRY((hposition(4) & !\hposition[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(4),
	datad => VCC,
	cin => \hposition[3]~39\,
	combout => \hposition[4]~40_combout\,
	cout => \hposition[4]~41\);

-- Location: FF_X47_Y30_N9
\hposition[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[4]~40_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(4));

-- Location: LCCOMB_X47_Y30_N10
\hposition[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[5]~42_combout\ = (hposition(5) & (!\hposition[4]~41\)) # (!hposition(5) & ((\hposition[4]~41\) # (GND)))
-- \hposition[5]~43\ = CARRY((!\hposition[4]~41\) # (!hposition(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(5),
	datad => VCC,
	cin => \hposition[4]~41\,
	combout => \hposition[5]~42_combout\,
	cout => \hposition[5]~43\);

-- Location: FF_X47_Y30_N11
\hposition[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[5]~42_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(5));

-- Location: LCCOMB_X47_Y30_N12
\hposition[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[6]~44_combout\ = (hposition(6) & (\hposition[5]~43\ $ (GND))) # (!hposition(6) & (!\hposition[5]~43\ & VCC))
-- \hposition[6]~45\ = CARRY((hposition(6) & !\hposition[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(6),
	datad => VCC,
	cin => \hposition[5]~43\,
	combout => \hposition[6]~44_combout\,
	cout => \hposition[6]~45\);

-- Location: FF_X47_Y30_N13
\hposition[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[6]~44_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(6));

-- Location: LCCOMB_X47_Y30_N14
\hposition[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[7]~46_combout\ = (hposition(7) & (!\hposition[6]~45\)) # (!hposition(7) & ((\hposition[6]~45\) # (GND)))
-- \hposition[7]~47\ = CARRY((!\hposition[6]~45\) # (!hposition(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(7),
	datad => VCC,
	cin => \hposition[6]~45\,
	combout => \hposition[7]~46_combout\,
	cout => \hposition[7]~47\);

-- Location: FF_X47_Y30_N15
\hposition[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[7]~46_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(7));

-- Location: LCCOMB_X47_Y30_N16
\hposition[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[8]~48_combout\ = (hposition(8) & (\hposition[7]~47\ $ (GND))) # (!hposition(8) & (!\hposition[7]~47\ & VCC))
-- \hposition[8]~49\ = CARRY((hposition(8) & !\hposition[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(8),
	datad => VCC,
	cin => \hposition[7]~47\,
	combout => \hposition[8]~48_combout\,
	cout => \hposition[8]~49\);

-- Location: FF_X47_Y30_N17
\hposition[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[8]~48_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(8));

-- Location: LCCOMB_X47_Y30_N18
\hposition[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[9]~50_combout\ = (hposition(9) & (!\hposition[8]~49\)) # (!hposition(9) & ((\hposition[8]~49\) # (GND)))
-- \hposition[9]~51\ = CARRY((!\hposition[8]~49\) # (!hposition(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(9),
	datad => VCC,
	cin => \hposition[8]~49\,
	combout => \hposition[9]~50_combout\,
	cout => \hposition[9]~51\);

-- Location: FF_X47_Y30_N19
\hposition[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[9]~50_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(9));

-- Location: LCCOMB_X47_Y30_N20
\hposition[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[10]~52_combout\ = (hposition(10) & (\hposition[9]~51\ $ (GND))) # (!hposition(10) & (!\hposition[9]~51\ & VCC))
-- \hposition[10]~53\ = CARRY((hposition(10) & !\hposition[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(10),
	datad => VCC,
	cin => \hposition[9]~51\,
	combout => \hposition[10]~52_combout\,
	cout => \hposition[10]~53\);

-- Location: FF_X47_Y30_N21
\hposition[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[10]~52_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(10));

-- Location: LCCOMB_X47_Y30_N22
\hposition[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[11]~54_combout\ = (hposition(11) & (!\hposition[10]~53\)) # (!hposition(11) & ((\hposition[10]~53\) # (GND)))
-- \hposition[11]~55\ = CARRY((!\hposition[10]~53\) # (!hposition(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(11),
	datad => VCC,
	cin => \hposition[10]~53\,
	combout => \hposition[11]~54_combout\,
	cout => \hposition[11]~55\);

-- Location: FF_X47_Y30_N23
\hposition[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[11]~54_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(11));

-- Location: LCCOMB_X47_Y30_N24
\hposition[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[12]~56_combout\ = (hposition(12) & (\hposition[11]~55\ $ (GND))) # (!hposition(12) & (!\hposition[11]~55\ & VCC))
-- \hposition[12]~57\ = CARRY((hposition(12) & !\hposition[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(12),
	datad => VCC,
	cin => \hposition[11]~55\,
	combout => \hposition[12]~56_combout\,
	cout => \hposition[12]~57\);

-- Location: FF_X47_Y30_N25
\hposition[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[12]~56_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(12));

-- Location: LCCOMB_X47_Y30_N26
\hposition[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[13]~58_combout\ = (hposition(13) & (!\hposition[12]~57\)) # (!hposition(13) & ((\hposition[12]~57\) # (GND)))
-- \hposition[13]~59\ = CARRY((!\hposition[12]~57\) # (!hposition(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(13),
	datad => VCC,
	cin => \hposition[12]~57\,
	combout => \hposition[13]~58_combout\,
	cout => \hposition[13]~59\);

-- Location: FF_X47_Y30_N27
\hposition[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[13]~58_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(13));

-- Location: LCCOMB_X47_Y30_N28
\hposition[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[14]~60_combout\ = (hposition(14) & (\hposition[13]~59\ $ (GND))) # (!hposition(14) & (!\hposition[13]~59\ & VCC))
-- \hposition[14]~61\ = CARRY((hposition(14) & !\hposition[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(14),
	datad => VCC,
	cin => \hposition[13]~59\,
	combout => \hposition[14]~60_combout\,
	cout => \hposition[14]~61\);

-- Location: FF_X47_Y30_N29
\hposition[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[14]~60_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(14));

-- Location: LCCOMB_X47_Y30_N30
\hposition[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[15]~62_combout\ = (hposition(15) & (!\hposition[14]~61\)) # (!hposition(15) & ((\hposition[14]~61\) # (GND)))
-- \hposition[15]~63\ = CARRY((!\hposition[14]~61\) # (!hposition(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(15),
	datad => VCC,
	cin => \hposition[14]~61\,
	combout => \hposition[15]~62_combout\,
	cout => \hposition[15]~63\);

-- Location: FF_X47_Y30_N31
\hposition[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[15]~62_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(15));

-- Location: LCCOMB_X47_Y29_N0
\hposition[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[16]~64_combout\ = (hposition(16) & (\hposition[15]~63\ $ (GND))) # (!hposition(16) & (!\hposition[15]~63\ & VCC))
-- \hposition[16]~65\ = CARRY((hposition(16) & !\hposition[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(16),
	datad => VCC,
	cin => \hposition[15]~63\,
	combout => \hposition[16]~64_combout\,
	cout => \hposition[16]~65\);

-- Location: FF_X47_Y29_N1
\hposition[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[16]~64_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(16));

-- Location: LCCOMB_X47_Y29_N2
\hposition[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[17]~66_combout\ = (hposition(17) & (!\hposition[16]~65\)) # (!hposition(17) & ((\hposition[16]~65\) # (GND)))
-- \hposition[17]~67\ = CARRY((!\hposition[16]~65\) # (!hposition(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(17),
	datad => VCC,
	cin => \hposition[16]~65\,
	combout => \hposition[17]~66_combout\,
	cout => \hposition[17]~67\);

-- Location: FF_X47_Y29_N3
\hposition[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[17]~66_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(17));

-- Location: LCCOMB_X47_Y29_N4
\hposition[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[18]~68_combout\ = (hposition(18) & (\hposition[17]~67\ $ (GND))) # (!hposition(18) & (!\hposition[17]~67\ & VCC))
-- \hposition[18]~69\ = CARRY((hposition(18) & !\hposition[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(18),
	datad => VCC,
	cin => \hposition[17]~67\,
	combout => \hposition[18]~68_combout\,
	cout => \hposition[18]~69\);

-- Location: FF_X47_Y29_N5
\hposition[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[18]~68_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(18));

-- Location: LCCOMB_X47_Y29_N6
\hposition[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[19]~70_combout\ = (hposition(19) & (!\hposition[18]~69\)) # (!hposition(19) & ((\hposition[18]~69\) # (GND)))
-- \hposition[19]~71\ = CARRY((!\hposition[18]~69\) # (!hposition(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(19),
	datad => VCC,
	cin => \hposition[18]~69\,
	combout => \hposition[19]~70_combout\,
	cout => \hposition[19]~71\);

-- Location: FF_X47_Y29_N7
\hposition[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[19]~70_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(19));

-- Location: LCCOMB_X47_Y29_N8
\hposition[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[20]~72_combout\ = (hposition(20) & (\hposition[19]~71\ $ (GND))) # (!hposition(20) & (!\hposition[19]~71\ & VCC))
-- \hposition[20]~73\ = CARRY((hposition(20) & !\hposition[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(20),
	datad => VCC,
	cin => \hposition[19]~71\,
	combout => \hposition[20]~72_combout\,
	cout => \hposition[20]~73\);

-- Location: FF_X47_Y29_N9
\hposition[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[20]~72_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(20));

-- Location: LCCOMB_X47_Y29_N10
\hposition[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[21]~74_combout\ = (hposition(21) & (!\hposition[20]~73\)) # (!hposition(21) & ((\hposition[20]~73\) # (GND)))
-- \hposition[21]~75\ = CARRY((!\hposition[20]~73\) # (!hposition(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(21),
	datad => VCC,
	cin => \hposition[20]~73\,
	combout => \hposition[21]~74_combout\,
	cout => \hposition[21]~75\);

-- Location: FF_X47_Y29_N11
\hposition[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[21]~74_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(21));

-- Location: LCCOMB_X47_Y29_N12
\hposition[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[22]~76_combout\ = (hposition(22) & (\hposition[21]~75\ $ (GND))) # (!hposition(22) & (!\hposition[21]~75\ & VCC))
-- \hposition[22]~77\ = CARRY((hposition(22) & !\hposition[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(22),
	datad => VCC,
	cin => \hposition[21]~75\,
	combout => \hposition[22]~76_combout\,
	cout => \hposition[22]~77\);

-- Location: FF_X47_Y29_N13
\hposition[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[22]~76_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(22));

-- Location: LCCOMB_X47_Y29_N14
\hposition[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[23]~78_combout\ = (hposition(23) & (!\hposition[22]~77\)) # (!hposition(23) & ((\hposition[22]~77\) # (GND)))
-- \hposition[23]~79\ = CARRY((!\hposition[22]~77\) # (!hposition(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(23),
	datad => VCC,
	cin => \hposition[22]~77\,
	combout => \hposition[23]~78_combout\,
	cout => \hposition[23]~79\);

-- Location: FF_X47_Y29_N15
\hposition[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[23]~78_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(23));

-- Location: LCCOMB_X47_Y29_N16
\hposition[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[24]~80_combout\ = (hposition(24) & (\hposition[23]~79\ $ (GND))) # (!hposition(24) & (!\hposition[23]~79\ & VCC))
-- \hposition[24]~81\ = CARRY((hposition(24) & !\hposition[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(24),
	datad => VCC,
	cin => \hposition[23]~79\,
	combout => \hposition[24]~80_combout\,
	cout => \hposition[24]~81\);

-- Location: FF_X47_Y29_N17
\hposition[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[24]~80_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(24));

-- Location: LCCOMB_X47_Y29_N18
\hposition[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[25]~82_combout\ = (hposition(25) & (!\hposition[24]~81\)) # (!hposition(25) & ((\hposition[24]~81\) # (GND)))
-- \hposition[25]~83\ = CARRY((!\hposition[24]~81\) # (!hposition(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(25),
	datad => VCC,
	cin => \hposition[24]~81\,
	combout => \hposition[25]~82_combout\,
	cout => \hposition[25]~83\);

-- Location: FF_X47_Y29_N19
\hposition[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[25]~82_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(25));

-- Location: LCCOMB_X47_Y29_N20
\hposition[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[26]~84_combout\ = (hposition(26) & (\hposition[25]~83\ $ (GND))) # (!hposition(26) & (!\hposition[25]~83\ & VCC))
-- \hposition[26]~85\ = CARRY((hposition(26) & !\hposition[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(26),
	datad => VCC,
	cin => \hposition[25]~83\,
	combout => \hposition[26]~84_combout\,
	cout => \hposition[26]~85\);

-- Location: FF_X47_Y29_N21
\hposition[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[26]~84_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(26));

-- Location: LCCOMB_X47_Y29_N22
\hposition[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[27]~86_combout\ = (hposition(27) & (!\hposition[26]~85\)) # (!hposition(27) & ((\hposition[26]~85\) # (GND)))
-- \hposition[27]~87\ = CARRY((!\hposition[26]~85\) # (!hposition(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(27),
	datad => VCC,
	cin => \hposition[26]~85\,
	combout => \hposition[27]~86_combout\,
	cout => \hposition[27]~87\);

-- Location: FF_X47_Y29_N23
\hposition[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[27]~86_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(27));

-- Location: LCCOMB_X47_Y29_N24
\hposition[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[28]~88_combout\ = (hposition(28) & (\hposition[27]~87\ $ (GND))) # (!hposition(28) & (!\hposition[27]~87\ & VCC))
-- \hposition[28]~89\ = CARRY((hposition(28) & !\hposition[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(28),
	datad => VCC,
	cin => \hposition[27]~87\,
	combout => \hposition[28]~88_combout\,
	cout => \hposition[28]~89\);

-- Location: FF_X47_Y29_N25
\hposition[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[28]~88_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(28));

-- Location: LCCOMB_X47_Y29_N26
\hposition[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[29]~90_combout\ = (hposition(29) & (!\hposition[28]~89\)) # (!hposition(29) & ((\hposition[28]~89\) # (GND)))
-- \hposition[29]~91\ = CARRY((!\hposition[28]~89\) # (!hposition(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(29),
	datad => VCC,
	cin => \hposition[28]~89\,
	combout => \hposition[29]~90_combout\,
	cout => \hposition[29]~91\);

-- Location: FF_X47_Y29_N27
\hposition[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[29]~90_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(29));

-- Location: LCCOMB_X46_Y29_N10
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!hposition(28) & (!hposition(29) & (!hposition(26) & !hposition(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(28),
	datab => hposition(29),
	datac => hposition(26),
	datad => hposition(27),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X46_Y29_N30
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!hposition(22) & (!hposition(24) & (!hposition(23) & !hposition(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(22),
	datab => hposition(24),
	datac => hposition(23),
	datad => hposition(25),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X46_Y29_N28
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!hposition(19) & (!hposition(21) & (!hposition(20) & !hposition(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(19),
	datab => hposition(21),
	datac => hposition(20),
	datad => hposition(18),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X46_Y29_N26
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!hposition(17) & (!hposition(16) & (!hposition(15) & !hposition(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(17),
	datab => hposition(16),
	datac => hposition(15),
	datad => hposition(14),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y28_N0
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!hposition(13) & (!hposition(11) & (!hposition(12) & !hposition(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(13),
	datab => hposition(11),
	datac => hposition(12),
	datad => hposition(10),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X46_Y29_N8
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~3_combout\ & (\LessThan0~2_combout\ & (\LessThan0~1_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X47_Y29_N28
\hposition[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[30]~92_combout\ = (hposition(30) & (\hposition[29]~91\ $ (GND))) # (!hposition(30) & (!\hposition[29]~91\ & VCC))
-- \hposition[30]~93\ = CARRY((hposition(30) & !\hposition[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(30),
	datad => VCC,
	cin => \hposition[29]~91\,
	combout => \hposition[30]~92_combout\,
	cout => \hposition[30]~93\);

-- Location: FF_X47_Y29_N29
\hposition[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[30]~92_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(30));

-- Location: LCCOMB_X46_Y29_N12
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~5_combout\ & (\LessThan0~4_combout\ & !hposition(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datac => \LessThan0~4_combout\,
	datad => hposition(30),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X46_Y29_N14
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ((!hposition(7) & (!hposition(5) & !hposition(6)))) # (!hposition(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(7),
	datab => hposition(8),
	datac => hposition(5),
	datad => hposition(6),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X47_Y29_N30
\hposition[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hposition[31]~94_combout\ = hposition(31) $ (\hposition[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(31),
	cin => \hposition[30]~93\,
	combout => \hposition[31]~94_combout\);

-- Location: FF_X47_Y29_N31
\hposition[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hposition[31]~94_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hposition(31));

-- Location: LCCOMB_X46_Y29_N16
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!hposition(31) & (((!\LessThan0~7_combout\ & hposition(9))) # (!\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \LessThan0~7_combout\,
	datac => hposition(31),
	datad => hposition(9),
	combout => \LessThan0~8_combout\);

-- Location: FF_X45_Y28_N27
\vposition[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[29]~90_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(29));

-- Location: LCCOMB_X45_Y28_N28
\vposition[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[30]~92_combout\ = (vposition(30) & (\vposition[29]~91\ $ (GND))) # (!vposition(30) & (!\vposition[29]~91\ & VCC))
-- \vposition[30]~93\ = CARRY((vposition(30) & !\vposition[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(30),
	datad => VCC,
	cin => \vposition[29]~91\,
	combout => \vposition[30]~92_combout\,
	cout => \vposition[30]~93\);

-- Location: FF_X45_Y28_N29
\vposition[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[30]~92_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(30));

-- Location: LCCOMB_X45_Y28_N30
\vposition[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[31]~94_combout\ = vposition(31) $ (\vposition[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(31),
	cin => \vposition[30]~93\,
	combout => \vposition[31]~94_combout\);

-- Location: FF_X45_Y28_N31
\vposition[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[31]~94_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(31));

-- Location: LCCOMB_X49_Y29_N30
\LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (((!vposition(0) & !vposition(1))) # (!vposition(3))) # (!vposition(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(0),
	datab => vposition(2),
	datac => vposition(1),
	datad => vposition(3),
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X49_Y29_N10
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (!vposition(7) & (!vposition(6) & (!vposition(8) & !vposition(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(7),
	datab => vposition(6),
	datac => vposition(8),
	datad => vposition(5),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X49_Y29_N0
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = ((!vposition(4) & (\LessThan1~8_combout\ & \LessThan1~7_combout\))) # (!vposition(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(4),
	datab => vposition(9),
	datac => \LessThan1~8_combout\,
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X46_Y28_N0
\LessThan1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (!vposition(31) & ((!\LessThan1~9_combout\) # (!\LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~6_combout\,
	datab => vposition(31),
	datac => \LessThan1~9_combout\,
	combout => \LessThan1~10_combout\);

-- Location: FF_X45_Y29_N1
\vposition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[0]~32_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(0));

-- Location: LCCOMB_X45_Y29_N2
\vposition[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[1]~34_combout\ = (vposition(1) & (!\vposition[0]~33\)) # (!vposition(1) & ((\vposition[0]~33\) # (GND)))
-- \vposition[1]~35\ = CARRY((!\vposition[0]~33\) # (!vposition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(1),
	datad => VCC,
	cin => \vposition[0]~33\,
	combout => \vposition[1]~34_combout\,
	cout => \vposition[1]~35\);

-- Location: FF_X45_Y29_N3
\vposition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[1]~34_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(1));

-- Location: LCCOMB_X45_Y29_N4
\vposition[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[2]~36_combout\ = (vposition(2) & (\vposition[1]~35\ $ (GND))) # (!vposition(2) & (!\vposition[1]~35\ & VCC))
-- \vposition[2]~37\ = CARRY((vposition(2) & !\vposition[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(2),
	datad => VCC,
	cin => \vposition[1]~35\,
	combout => \vposition[2]~36_combout\,
	cout => \vposition[2]~37\);

-- Location: FF_X45_Y29_N5
\vposition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[2]~36_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(2));

-- Location: LCCOMB_X45_Y29_N6
\vposition[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[3]~38_combout\ = (vposition(3) & (!\vposition[2]~37\)) # (!vposition(3) & ((\vposition[2]~37\) # (GND)))
-- \vposition[3]~39\ = CARRY((!\vposition[2]~37\) # (!vposition(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(3),
	datad => VCC,
	cin => \vposition[2]~37\,
	combout => \vposition[3]~38_combout\,
	cout => \vposition[3]~39\);

-- Location: FF_X45_Y29_N7
\vposition[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[3]~38_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(3));

-- Location: LCCOMB_X45_Y29_N8
\vposition[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[4]~40_combout\ = (vposition(4) & (\vposition[3]~39\ $ (GND))) # (!vposition(4) & (!\vposition[3]~39\ & VCC))
-- \vposition[4]~41\ = CARRY((vposition(4) & !\vposition[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(4),
	datad => VCC,
	cin => \vposition[3]~39\,
	combout => \vposition[4]~40_combout\,
	cout => \vposition[4]~41\);

-- Location: FF_X45_Y29_N9
\vposition[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[4]~40_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(4));

-- Location: LCCOMB_X45_Y29_N10
\vposition[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[5]~42_combout\ = (vposition(5) & (!\vposition[4]~41\)) # (!vposition(5) & ((\vposition[4]~41\) # (GND)))
-- \vposition[5]~43\ = CARRY((!\vposition[4]~41\) # (!vposition(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(5),
	datad => VCC,
	cin => \vposition[4]~41\,
	combout => \vposition[5]~42_combout\,
	cout => \vposition[5]~43\);

-- Location: FF_X45_Y29_N11
\vposition[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[5]~42_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(5));

-- Location: LCCOMB_X45_Y29_N12
\vposition[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[6]~44_combout\ = (vposition(6) & (\vposition[5]~43\ $ (GND))) # (!vposition(6) & (!\vposition[5]~43\ & VCC))
-- \vposition[6]~45\ = CARRY((vposition(6) & !\vposition[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(6),
	datad => VCC,
	cin => \vposition[5]~43\,
	combout => \vposition[6]~44_combout\,
	cout => \vposition[6]~45\);

-- Location: FF_X45_Y29_N13
\vposition[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[6]~44_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(6));

-- Location: LCCOMB_X45_Y29_N14
\vposition[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[7]~46_combout\ = (vposition(7) & (!\vposition[6]~45\)) # (!vposition(7) & ((\vposition[6]~45\) # (GND)))
-- \vposition[7]~47\ = CARRY((!\vposition[6]~45\) # (!vposition(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(7),
	datad => VCC,
	cin => \vposition[6]~45\,
	combout => \vposition[7]~46_combout\,
	cout => \vposition[7]~47\);

-- Location: FF_X45_Y29_N15
\vposition[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[7]~46_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(7));

-- Location: LCCOMB_X45_Y29_N16
\vposition[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[8]~48_combout\ = (vposition(8) & (\vposition[7]~47\ $ (GND))) # (!vposition(8) & (!\vposition[7]~47\ & VCC))
-- \vposition[8]~49\ = CARRY((vposition(8) & !\vposition[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(8),
	datad => VCC,
	cin => \vposition[7]~47\,
	combout => \vposition[8]~48_combout\,
	cout => \vposition[8]~49\);

-- Location: FF_X45_Y29_N17
\vposition[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[8]~48_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(8));

-- Location: LCCOMB_X45_Y29_N18
\vposition[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[9]~50_combout\ = (vposition(9) & (!\vposition[8]~49\)) # (!vposition(9) & ((\vposition[8]~49\) # (GND)))
-- \vposition[9]~51\ = CARRY((!\vposition[8]~49\) # (!vposition(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(9),
	datad => VCC,
	cin => \vposition[8]~49\,
	combout => \vposition[9]~50_combout\,
	cout => \vposition[9]~51\);

-- Location: FF_X45_Y29_N19
\vposition[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[9]~50_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(9));

-- Location: LCCOMB_X45_Y29_N20
\vposition[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[10]~52_combout\ = (vposition(10) & (\vposition[9]~51\ $ (GND))) # (!vposition(10) & (!\vposition[9]~51\ & VCC))
-- \vposition[10]~53\ = CARRY((vposition(10) & !\vposition[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(10),
	datad => VCC,
	cin => \vposition[9]~51\,
	combout => \vposition[10]~52_combout\,
	cout => \vposition[10]~53\);

-- Location: FF_X45_Y29_N21
\vposition[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[10]~52_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(10));

-- Location: LCCOMB_X45_Y29_N22
\vposition[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[11]~54_combout\ = (vposition(11) & (!\vposition[10]~53\)) # (!vposition(11) & ((\vposition[10]~53\) # (GND)))
-- \vposition[11]~55\ = CARRY((!\vposition[10]~53\) # (!vposition(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(11),
	datad => VCC,
	cin => \vposition[10]~53\,
	combout => \vposition[11]~54_combout\,
	cout => \vposition[11]~55\);

-- Location: FF_X45_Y29_N23
\vposition[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[11]~54_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(11));

-- Location: LCCOMB_X45_Y29_N24
\vposition[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[12]~56_combout\ = (vposition(12) & (\vposition[11]~55\ $ (GND))) # (!vposition(12) & (!\vposition[11]~55\ & VCC))
-- \vposition[12]~57\ = CARRY((vposition(12) & !\vposition[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(12),
	datad => VCC,
	cin => \vposition[11]~55\,
	combout => \vposition[12]~56_combout\,
	cout => \vposition[12]~57\);

-- Location: FF_X45_Y29_N25
\vposition[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[12]~56_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(12));

-- Location: LCCOMB_X45_Y29_N26
\vposition[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[13]~58_combout\ = (vposition(13) & (!\vposition[12]~57\)) # (!vposition(13) & ((\vposition[12]~57\) # (GND)))
-- \vposition[13]~59\ = CARRY((!\vposition[12]~57\) # (!vposition(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(13),
	datad => VCC,
	cin => \vposition[12]~57\,
	combout => \vposition[13]~58_combout\,
	cout => \vposition[13]~59\);

-- Location: FF_X45_Y29_N27
\vposition[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[13]~58_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(13));

-- Location: LCCOMB_X45_Y29_N28
\vposition[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[14]~60_combout\ = (vposition(14) & (\vposition[13]~59\ $ (GND))) # (!vposition(14) & (!\vposition[13]~59\ & VCC))
-- \vposition[14]~61\ = CARRY((vposition(14) & !\vposition[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(14),
	datad => VCC,
	cin => \vposition[13]~59\,
	combout => \vposition[14]~60_combout\,
	cout => \vposition[14]~61\);

-- Location: FF_X45_Y29_N29
\vposition[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[14]~60_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(14));

-- Location: LCCOMB_X45_Y29_N30
\vposition[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[15]~62_combout\ = (vposition(15) & (!\vposition[14]~61\)) # (!vposition(15) & ((\vposition[14]~61\) # (GND)))
-- \vposition[15]~63\ = CARRY((!\vposition[14]~61\) # (!vposition(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(15),
	datad => VCC,
	cin => \vposition[14]~61\,
	combout => \vposition[15]~62_combout\,
	cout => \vposition[15]~63\);

-- Location: FF_X45_Y29_N31
\vposition[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[15]~62_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(15));

-- Location: LCCOMB_X45_Y28_N0
\vposition[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[16]~64_combout\ = (vposition(16) & (\vposition[15]~63\ $ (GND))) # (!vposition(16) & (!\vposition[15]~63\ & VCC))
-- \vposition[16]~65\ = CARRY((vposition(16) & !\vposition[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(16),
	datad => VCC,
	cin => \vposition[15]~63\,
	combout => \vposition[16]~64_combout\,
	cout => \vposition[16]~65\);

-- Location: FF_X45_Y28_N1
\vposition[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[16]~64_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(16));

-- Location: LCCOMB_X45_Y28_N2
\vposition[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[17]~66_combout\ = (vposition(17) & (!\vposition[16]~65\)) # (!vposition(17) & ((\vposition[16]~65\) # (GND)))
-- \vposition[17]~67\ = CARRY((!\vposition[16]~65\) # (!vposition(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(17),
	datad => VCC,
	cin => \vposition[16]~65\,
	combout => \vposition[17]~66_combout\,
	cout => \vposition[17]~67\);

-- Location: FF_X45_Y28_N3
\vposition[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[17]~66_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(17));

-- Location: LCCOMB_X45_Y28_N4
\vposition[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[18]~68_combout\ = (vposition(18) & (\vposition[17]~67\ $ (GND))) # (!vposition(18) & (!\vposition[17]~67\ & VCC))
-- \vposition[18]~69\ = CARRY((vposition(18) & !\vposition[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(18),
	datad => VCC,
	cin => \vposition[17]~67\,
	combout => \vposition[18]~68_combout\,
	cout => \vposition[18]~69\);

-- Location: FF_X45_Y28_N5
\vposition[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[18]~68_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(18));

-- Location: LCCOMB_X45_Y28_N6
\vposition[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[19]~70_combout\ = (vposition(19) & (!\vposition[18]~69\)) # (!vposition(19) & ((\vposition[18]~69\) # (GND)))
-- \vposition[19]~71\ = CARRY((!\vposition[18]~69\) # (!vposition(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(19),
	datad => VCC,
	cin => \vposition[18]~69\,
	combout => \vposition[19]~70_combout\,
	cout => \vposition[19]~71\);

-- Location: FF_X45_Y28_N7
\vposition[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[19]~70_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(19));

-- Location: LCCOMB_X45_Y28_N8
\vposition[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[20]~72_combout\ = (vposition(20) & (\vposition[19]~71\ $ (GND))) # (!vposition(20) & (!\vposition[19]~71\ & VCC))
-- \vposition[20]~73\ = CARRY((vposition(20) & !\vposition[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(20),
	datad => VCC,
	cin => \vposition[19]~71\,
	combout => \vposition[20]~72_combout\,
	cout => \vposition[20]~73\);

-- Location: FF_X45_Y28_N9
\vposition[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[20]~72_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(20));

-- Location: LCCOMB_X45_Y28_N10
\vposition[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[21]~74_combout\ = (vposition(21) & (!\vposition[20]~73\)) # (!vposition(21) & ((\vposition[20]~73\) # (GND)))
-- \vposition[21]~75\ = CARRY((!\vposition[20]~73\) # (!vposition(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(21),
	datad => VCC,
	cin => \vposition[20]~73\,
	combout => \vposition[21]~74_combout\,
	cout => \vposition[21]~75\);

-- Location: FF_X45_Y28_N11
\vposition[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[21]~74_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(21));

-- Location: LCCOMB_X45_Y28_N12
\vposition[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[22]~76_combout\ = (vposition(22) & (\vposition[21]~75\ $ (GND))) # (!vposition(22) & (!\vposition[21]~75\ & VCC))
-- \vposition[22]~77\ = CARRY((vposition(22) & !\vposition[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(22),
	datad => VCC,
	cin => \vposition[21]~75\,
	combout => \vposition[22]~76_combout\,
	cout => \vposition[22]~77\);

-- Location: FF_X45_Y28_N13
\vposition[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[22]~76_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(22));

-- Location: LCCOMB_X45_Y28_N14
\vposition[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[23]~78_combout\ = (vposition(23) & (!\vposition[22]~77\)) # (!vposition(23) & ((\vposition[22]~77\) # (GND)))
-- \vposition[23]~79\ = CARRY((!\vposition[22]~77\) # (!vposition(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(23),
	datad => VCC,
	cin => \vposition[22]~77\,
	combout => \vposition[23]~78_combout\,
	cout => \vposition[23]~79\);

-- Location: FF_X45_Y28_N15
\vposition[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[23]~78_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(23));

-- Location: LCCOMB_X45_Y28_N16
\vposition[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[24]~80_combout\ = (vposition(24) & (\vposition[23]~79\ $ (GND))) # (!vposition(24) & (!\vposition[23]~79\ & VCC))
-- \vposition[24]~81\ = CARRY((vposition(24) & !\vposition[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(24),
	datad => VCC,
	cin => \vposition[23]~79\,
	combout => \vposition[24]~80_combout\,
	cout => \vposition[24]~81\);

-- Location: FF_X45_Y28_N17
\vposition[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[24]~80_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(24));

-- Location: LCCOMB_X45_Y28_N18
\vposition[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[25]~82_combout\ = (vposition(25) & (!\vposition[24]~81\)) # (!vposition(25) & ((\vposition[24]~81\) # (GND)))
-- \vposition[25]~83\ = CARRY((!\vposition[24]~81\) # (!vposition(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(25),
	datad => VCC,
	cin => \vposition[24]~81\,
	combout => \vposition[25]~82_combout\,
	cout => \vposition[25]~83\);

-- Location: FF_X45_Y28_N19
\vposition[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[25]~82_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(25));

-- Location: LCCOMB_X45_Y28_N20
\vposition[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[26]~84_combout\ = (vposition(26) & (\vposition[25]~83\ $ (GND))) # (!vposition(26) & (!\vposition[25]~83\ & VCC))
-- \vposition[26]~85\ = CARRY((vposition(26) & !\vposition[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(26),
	datad => VCC,
	cin => \vposition[25]~83\,
	combout => \vposition[26]~84_combout\,
	cout => \vposition[26]~85\);

-- Location: FF_X45_Y28_N21
\vposition[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[26]~84_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(26));

-- Location: LCCOMB_X45_Y28_N22
\vposition[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \vposition[27]~86_combout\ = (vposition(27) & (!\vposition[26]~85\)) # (!vposition(27) & ((\vposition[26]~85\) # (GND)))
-- \vposition[27]~87\ = CARRY((!\vposition[26]~85\) # (!vposition(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(27),
	datad => VCC,
	cin => \vposition[26]~85\,
	combout => \vposition[27]~86_combout\,
	cout => \vposition[27]~87\);

-- Location: FF_X45_Y28_N23
\vposition[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[27]~86_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(27));

-- Location: FF_X45_Y28_N25
\vposition[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \vposition[28]~88_combout\,
	sclr => \LessThan1~10_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => vposition(28));

-- Location: LCCOMB_X46_Y28_N10
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!vposition(28) & (!vposition(27) & (!vposition(29) & !vposition(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(28),
	datab => vposition(27),
	datac => vposition(29),
	datad => vposition(26),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X46_Y28_N26
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!vposition(16) & (!vposition(15) & (!vposition(14) & !vposition(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(16),
	datab => vposition(15),
	datac => vposition(14),
	datad => vposition(17),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X47_Y28_N28
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!vposition(11) & (!vposition(13) & (!vposition(12) & !vposition(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(11),
	datab => vposition(13),
	datac => vposition(12),
	datad => vposition(10),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X46_Y28_N4
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!vposition(20) & (!vposition(19) & (!vposition(18) & !vposition(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(20),
	datab => vposition(19),
	datac => vposition(18),
	datad => vposition(21),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X46_Y28_N6
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!vposition(23) & (!vposition(25) & (!vposition(24) & !vposition(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(23),
	datab => vposition(25),
	datac => vposition(24),
	datad => vposition(22),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X46_Y28_N24
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~1_combout\ & (\LessThan1~0_combout\ & (\LessThan1~2_combout\ & \LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \LessThan1~0_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X46_Y28_N12
\LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (\LessThan1~5_combout\ & (!vposition(30) & \LessThan1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~5_combout\,
	datab => vposition(30),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X46_Y29_N20
\process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\LessThan0~5_combout\ & (\LessThan0~4_combout\ & (!hposition(31) & !hposition(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \LessThan0~4_combout\,
	datac => hposition(31),
	datad => hposition(30),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X46_Y28_N22
\process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\LessThan1~6_combout\ & (!vposition(31) & (!vposition(9) & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~6_combout\,
	datab => vposition(31),
	datac => vposition(9),
	datad => \process_0~0_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X49_Y29_N18
\process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (vposition(7) & ((vposition(1)) # ((vposition(3)) # (vposition(0))))) # (!vposition(7) & (vposition(1) & (vposition(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(7),
	datab => vposition(1),
	datac => vposition(3),
	datad => vposition(0),
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X49_Y29_N28
\process_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (vposition(7) & ((vposition(8)) # ((vposition(6) & vposition(5))))) # (!vposition(7) & (vposition(8) & ((vposition(6)) # (vposition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(7),
	datab => vposition(6),
	datac => vposition(8),
	datad => vposition(5),
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X49_Y29_N24
\process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (vposition(5) & ((vposition(2)) # (vposition(4)))) # (!vposition(5) & (vposition(2) & vposition(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vposition(5),
	datac => vposition(2),
	datad => vposition(4),
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X49_Y29_N22
\process_0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (\process_0~11_combout\ & (!vposition(8) & ((\process_0~10_combout\) # (\process_0~9_combout\)))) # (!\process_0~11_combout\ & (vposition(8) & ((!\process_0~9_combout\) # (!\process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~10_combout\,
	datab => \process_0~11_combout\,
	datac => vposition(8),
	datad => \process_0~9_combout\,
	combout => \process_0~12_combout\);

-- Location: LCCOMB_X50_Y30_N30
\process_0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = (hposition(0) & (!hposition(2) & hposition(1))) # (!hposition(0) & (hposition(2) & !hposition(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hposition(0),
	datac => hposition(2),
	datad => hposition(1),
	combout => \process_0~13_combout\);

-- Location: LCCOMB_X46_Y29_N6
\process_0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (hposition(5) & (hposition(6) & (hposition(8) & !hposition(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(5),
	datab => hposition(6),
	datac => hposition(8),
	datad => hposition(9),
	combout => \process_0~14_combout\);

-- Location: LCCOMB_X46_Y29_N0
\process_0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~15_combout\ = (\process_0~14_combout\ & (!hposition(4) & (hposition(7) & !hposition(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~14_combout\,
	datab => hposition(4),
	datac => hposition(7),
	datad => hposition(3),
	combout => \process_0~15_combout\);

-- Location: LCCOMB_X49_Y30_N18
\process_0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~16_combout\ = (\process_0~1_combout\ & (\process_0~12_combout\ & (\process_0~13_combout\ & \process_0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \process_0~12_combout\,
	datac => \process_0~13_combout\,
	datad => \process_0~15_combout\,
	combout => \process_0~16_combout\);

-- Location: LCCOMB_X50_Y30_N2
\process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (!hposition(3) & (((!hposition(1) & !hposition(0))) # (!hposition(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(1),
	datab => hposition(0),
	datac => hposition(2),
	datad => hposition(3),
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X49_Y30_N24
\process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = ((!hposition(5) & ((\process_0~5_combout\) # (!hposition(4))))) # (!hposition(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(4),
	datab => hposition(6),
	datac => hposition(5),
	datad => \process_0~5_combout\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X51_Y30_N12
\process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\process_0~6_combout\ & (!hposition(7) & (!hposition(8) & hposition(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => hposition(7),
	datac => hposition(8),
	datad => hposition(9),
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X51_Y30_N24
\process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (vposition(7) & (!vposition(8) & ((vposition(5)) # (vposition(6))))) # (!vposition(7) & (((vposition(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(7),
	datab => vposition(5),
	datac => vposition(6),
	datad => vposition(8),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X46_Y30_N24
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (hposition(4) & (hposition(5) & hposition(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hposition(4),
	datac => hposition(5),
	datad => hposition(6),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X50_Y30_N0
\process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\LessThan3~0_combout\ & ((hposition(1)) # ((hposition(2)) # (hposition(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(1),
	datab => \LessThan3~0_combout\,
	datac => hposition(2),
	datad => hposition(3),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X51_Y30_N10
\process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (hposition(8) & (!hposition(9) & ((\process_0~3_combout\) # (hposition(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => hposition(7),
	datac => hposition(8),
	datad => hposition(9),
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X51_Y30_N30
\process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\process_0~2_combout\ & (\process_0~1_combout\ & ((\process_0~7_combout\) # (\process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~7_combout\,
	datab => \process_0~2_combout\,
	datac => \process_0~1_combout\,
	datad => \process_0~4_combout\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X50_Y30_N4
\Add11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = (vposition(0) & (hposition(0) $ (VCC))) # (!vposition(0) & (hposition(0) & VCC))
-- \Add11~1\ = CARRY((vposition(0) & hposition(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(0),
	datab => hposition(0),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: FF_X50_Y30_N5
\data_address2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add11~0_combout\,
	ena => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address2(0));

-- Location: LCCOMB_X50_Y30_N6
\Add11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (hposition(1) & ((vposition(1) & (\Add11~1\ & VCC)) # (!vposition(1) & (!\Add11~1\)))) # (!hposition(1) & ((vposition(1) & (!\Add11~1\)) # (!vposition(1) & ((\Add11~1\) # (GND)))))
-- \Add11~3\ = CARRY((hposition(1) & (!vposition(1) & !\Add11~1\)) # (!hposition(1) & ((!\Add11~1\) # (!vposition(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(1),
	datab => vposition(1),
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: FF_X50_Y30_N7
\data_address2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \Add11~2_combout\,
	ena => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address2(1));

-- Location: LCCOMB_X50_Y30_N8
\Add11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = ((vposition(2) $ (hposition(2) $ (!\Add11~3\)))) # (GND)
-- \Add11~5\ = CARRY((vposition(2) & ((hposition(2)) # (!\Add11~3\))) # (!vposition(2) & (hposition(2) & !\Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(2),
	datab => hposition(2),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X54_Y30_N8
\data_address2[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address2[2]~11_combout\ = \Add11~4_combout\ $ (VCC)
-- \data_address2[2]~12\ = CARRY(\Add11~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datad => VCC,
	combout => \data_address2[2]~11_combout\,
	cout => \data_address2[2]~12\);

-- Location: FF_X54_Y30_N9
\data_address2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address2[2]~11_combout\,
	ena => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address2(2));

-- Location: LCCOMB_X50_Y30_N10
\Add11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (hposition(3) & ((vposition(3) & (\Add11~5\ & VCC)) # (!vposition(3) & (!\Add11~5\)))) # (!hposition(3) & ((vposition(3) & (!\Add11~5\)) # (!vposition(3) & ((\Add11~5\) # (GND)))))
-- \Add11~7\ = CARRY((hposition(3) & (!vposition(3) & !\Add11~5\)) # (!hposition(3) & ((!\Add11~5\) # (!vposition(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(3),
	datab => vposition(3),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X54_Y30_N10
\data_address2[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address2[3]~13_combout\ = (\Add11~6_combout\ & (\data_address2[2]~12\ & VCC)) # (!\Add11~6_combout\ & (!\data_address2[2]~12\))
-- \data_address2[3]~14\ = CARRY((!\Add11~6_combout\ & !\data_address2[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add11~6_combout\,
	datad => VCC,
	cin => \data_address2[2]~12\,
	combout => \data_address2[3]~13_combout\,
	cout => \data_address2[3]~14\);

-- Location: FF_X54_Y30_N11
\data_address2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address2[3]~13_combout\,
	ena => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address2(3));

-- Location: LCCOMB_X50_Y30_N12
\Add11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = ((hposition(4) $ (vposition(4) $ (!\Add11~7\)))) # (GND)
-- \Add11~9\ = CARRY((hposition(4) & ((vposition(4)) # (!\Add11~7\))) # (!hposition(4) & (vposition(4) & !\Add11~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(4),
	datab => vposition(4),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X54_Y30_N12
\data_address2[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address2[4]~15_combout\ = (\Add11~8_combout\ & ((GND) # (!\data_address2[3]~14\))) # (!\Add11~8_combout\ & (\data_address2[3]~14\ $ (GND)))
-- \data_address2[4]~16\ = CARRY((\Add11~8_combout\) # (!\data_address2[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~8_combout\,
	datad => VCC,
	cin => \data_address2[3]~14\,
	combout => \data_address2[4]~15_combout\,
	cout => \data_address2[4]~16\);

-- Location: FF_X54_Y30_N13
\data_address2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address2[4]~15_combout\,
	ena => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address2(4));

-- Location: LCCOMB_X50_Y30_N14
\Add11~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (hposition(5) & ((vposition(5) & (\Add11~9\ & VCC)) # (!vposition(5) & (!\Add11~9\)))) # (!hposition(5) & ((vposition(5) & (!\Add11~9\)) # (!vposition(5) & ((\Add11~9\) # (GND)))))
-- \Add11~11\ = CARRY((hposition(5) & (!vposition(5) & !\Add11~9\)) # (!hposition(5) & ((!\Add11~9\) # (!vposition(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(5),
	datab => vposition(5),
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X54_Y30_N14
\data_address2[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address2[5]~17_combout\ = (\Add11~10_combout\ & (\data_address2[4]~16\ & VCC)) # (!\Add11~10_combout\ & (!\data_address2[4]~16\))
-- \data_address2[5]~18\ = CARRY((!\Add11~10_combout\ & !\data_address2[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datad => VCC,
	cin => \data_address2[4]~16\,
	combout => \data_address2[5]~17_combout\,
	cout => \data_address2[5]~18\);

-- Location: FF_X54_Y30_N15
\data_address2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address2[5]~17_combout\,
	ena => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address2(5));

-- Location: LCCOMB_X50_Y30_N16
\Add11~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = ((hposition(6) $ (vposition(6) $ (!\Add11~11\)))) # (GND)
-- \Add11~13\ = CARRY((hposition(6) & ((vposition(6)) # (!\Add11~11\))) # (!hposition(6) & (vposition(6) & !\Add11~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(6),
	datab => vposition(6),
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X54_Y30_N16
\data_address2[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address2[6]~19_combout\ = (\Add11~12_combout\ & (\data_address2[5]~18\ $ (GND))) # (!\Add11~12_combout\ & (!\data_address2[5]~18\ & VCC))
-- \data_address2[6]~20\ = CARRY((\Add11~12_combout\ & !\data_address2[5]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add11~12_combout\,
	datad => VCC,
	cin => \data_address2[5]~18\,
	combout => \data_address2[6]~19_combout\,
	cout => \data_address2[6]~20\);

-- Location: FF_X54_Y30_N17
\data_address2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address2[6]~19_combout\,
	ena => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address2(6));

-- Location: LCCOMB_X50_Y30_N18
\Add11~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = (hposition(7) & ((vposition(7) & (\Add11~13\ & VCC)) # (!vposition(7) & (!\Add11~13\)))) # (!hposition(7) & ((vposition(7) & (!\Add11~13\)) # (!vposition(7) & ((\Add11~13\) # (GND)))))
-- \Add11~15\ = CARRY((hposition(7) & (!vposition(7) & !\Add11~13\)) # (!hposition(7) & ((!\Add11~13\) # (!vposition(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(7),
	datab => vposition(7),
	datad => VCC,
	cin => \Add11~13\,
	combout => \Add11~14_combout\,
	cout => \Add11~15\);

-- Location: LCCOMB_X54_Y30_N18
\data_address2[7]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address2[7]~21_combout\ = (\Add11~14_combout\ & (!\data_address2[6]~20\)) # (!\Add11~14_combout\ & ((\data_address2[6]~20\) # (GND)))
-- \data_address2[7]~22\ = CARRY((!\data_address2[6]~20\) # (!\Add11~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add11~14_combout\,
	datad => VCC,
	cin => \data_address2[6]~20\,
	combout => \data_address2[7]~21_combout\,
	cout => \data_address2[7]~22\);

-- Location: FF_X54_Y30_N19
\data_address2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address2[7]~21_combout\,
	ena => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address2(7));

-- Location: LCCOMB_X50_Y30_N20
\Add11~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = ((vposition(8) $ (hposition(8) $ (!\Add11~15\)))) # (GND)
-- \Add11~17\ = CARRY((vposition(8) & ((hposition(8)) # (!\Add11~15\))) # (!vposition(8) & (hposition(8) & !\Add11~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(8),
	datab => hposition(8),
	datad => VCC,
	cin => \Add11~15\,
	combout => \Add11~16_combout\,
	cout => \Add11~17\);

-- Location: LCCOMB_X54_Y30_N20
\data_address2[8]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address2[8]~23_combout\ = (\Add11~16_combout\ & ((GND) # (!\data_address2[7]~22\))) # (!\Add11~16_combout\ & (\data_address2[7]~22\ $ (GND)))
-- \data_address2[8]~24\ = CARRY((\Add11~16_combout\) # (!\data_address2[7]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~16_combout\,
	datad => VCC,
	cin => \data_address2[7]~22\,
	combout => \data_address2[8]~23_combout\,
	cout => \data_address2[8]~24\);

-- Location: FF_X54_Y30_N21
\data_address2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address2[8]~23_combout\,
	ena => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address2(8));

-- Location: LCCOMB_X50_Y30_N22
\Add11~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~18_combout\ = (hposition(9) & ((vposition(9) & (\Add11~17\ & VCC)) # (!vposition(9) & (!\Add11~17\)))) # (!hposition(9) & ((vposition(9) & (!\Add11~17\)) # (!vposition(9) & ((\Add11~17\) # (GND)))))
-- \Add11~19\ = CARRY((hposition(9) & (!vposition(9) & !\Add11~17\)) # (!hposition(9) & ((!\Add11~17\) # (!vposition(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(9),
	datab => vposition(9),
	datad => VCC,
	cin => \Add11~17\,
	combout => \Add11~18_combout\,
	cout => \Add11~19\);

-- Location: LCCOMB_X54_Y30_N22
\data_address2[9]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address2[9]~25_combout\ = (\Add11~18_combout\ & (!\data_address2[8]~24\)) # (!\Add11~18_combout\ & ((\data_address2[8]~24\) # (GND)))
-- \data_address2[9]~26\ = CARRY((!\data_address2[8]~24\) # (!\Add11~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add11~18_combout\,
	datad => VCC,
	cin => \data_address2[8]~24\,
	combout => \data_address2[9]~25_combout\,
	cout => \data_address2[9]~26\);

-- Location: FF_X54_Y30_N23
\data_address2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address2[9]~25_combout\,
	ena => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address2(9));

-- Location: LCCOMB_X50_Y30_N24
\Add11~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~20_combout\ = ((vposition(10) $ (hposition(10) $ (!\Add11~19\)))) # (GND)
-- \Add11~21\ = CARRY((vposition(10) & ((hposition(10)) # (!\Add11~19\))) # (!vposition(10) & (hposition(10) & !\Add11~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(10),
	datab => hposition(10),
	datad => VCC,
	cin => \Add11~19\,
	combout => \Add11~20_combout\,
	cout => \Add11~21\);

-- Location: LCCOMB_X54_Y30_N24
\data_address2[10]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address2[10]~27_combout\ = (\Add11~20_combout\ & ((GND) # (!\data_address2[9]~26\))) # (!\Add11~20_combout\ & (\data_address2[9]~26\ $ (GND)))
-- \data_address2[10]~28\ = CARRY((\Add11~20_combout\) # (!\data_address2[9]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add11~20_combout\,
	datad => VCC,
	cin => \data_address2[9]~26\,
	combout => \data_address2[10]~27_combout\,
	cout => \data_address2[10]~28\);

-- Location: FF_X54_Y30_N25
\data_address2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address2[10]~27_combout\,
	ena => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address2(10));

-- Location: LCCOMB_X50_Y30_N26
\Add11~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~22_combout\ = (vposition(11) & ((hposition(11) & (\Add11~21\ & VCC)) # (!hposition(11) & (!\Add11~21\)))) # (!vposition(11) & ((hposition(11) & (!\Add11~21\)) # (!hposition(11) & ((\Add11~21\) # (GND)))))
-- \Add11~23\ = CARRY((vposition(11) & (!hposition(11) & !\Add11~21\)) # (!vposition(11) & ((!\Add11~21\) # (!hposition(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(11),
	datab => hposition(11),
	datad => VCC,
	cin => \Add11~21\,
	combout => \Add11~22_combout\,
	cout => \Add11~23\);

-- Location: LCCOMB_X54_Y30_N26
\data_address2[11]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address2[11]~29_combout\ = (\Add11~22_combout\ & (\data_address2[10]~28\ & VCC)) # (!\Add11~22_combout\ & (!\data_address2[10]~28\))
-- \data_address2[11]~30\ = CARRY((!\Add11~22_combout\ & !\data_address2[10]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~22_combout\,
	datad => VCC,
	cin => \data_address2[10]~28\,
	combout => \data_address2[11]~29_combout\,
	cout => \data_address2[11]~30\);

-- Location: FF_X54_Y30_N27
\data_address2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address2[11]~29_combout\,
	ena => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address2(11));

-- Location: LCCOMB_X50_Y30_N28
\Add11~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add11~24_combout\ = hposition(12) $ (vposition(12) $ (!\Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(12),
	datab => vposition(12),
	cin => \Add11~23\,
	combout => \Add11~24_combout\);

-- Location: LCCOMB_X54_Y30_N28
\data_address2[12]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address2[12]~31_combout\ = \data_address2[11]~30\ $ (\Add11~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add11~24_combout\,
	cin => \data_address2[11]~30\,
	combout => \data_address2[12]~31_combout\);

-- Location: FF_X54_Y30_N29
\data_address2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address2[12]~31_combout\,
	ena => \process_0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address2(12));

-- Location: M9K_X73_Y28_N0
\imRead_hr|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000060000000006000000000600000000070000000008800000000980000000090000000000000000000D000000000D00000000040000000019C000000000C000000008800000001880000000008000000008000000000000000000080000000010000000000C000000000D0000000005000000000100000000010",
	mem_init1 => X"000000000000000000000000000010000000000000000000000000000090000000000000000000000000000000000000017000000001F0000000012800000001F000000001F800000000F00000000060000000000000000000000000000108000000008000000000900000000040000000004000000000400000000040000000000000000000500000000180000000018800000000900000000090000000008000000000800000000088000000009000000001800000000188000000000000000000400000000060000000007000000000600000000060000000007000000000D000000000F800000000F800000000F000000001D800000001C8000000018800",
	mem_init0 => X"000000E800000000F000000000F8000000007800000000F00000000060000000002000000000600000000060000000006000000000600000000070000000019C00000000DC00000000D000000001C00000000208000000060600000002060000000606000000060200000003020000000204000000030400000003040000000100000000018800000001880000000188000000009800000000D000000000D000000000D000000000D000000000E000000000700000000060000000006000000000600000000060000000006000000000600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/hand3e_40x131.mif",
	init_file_layout => "port_a",
	logical_ram_name => "minutes_hand:imRead_hr|altsyncram:altsyncram_component|altsyncram_b9r3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \imRead_hr|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_hr|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X49_Y28_N2
\Add8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = hposition(1) $ (VCC)
-- \Add8~1\ = CARRY(hposition(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hposition(1),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X49_Y28_N4
\Add8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (hposition(2) & (\Add8~1\ & VCC)) # (!hposition(2) & (!\Add8~1\))
-- \Add8~3\ = CARRY((!hposition(2) & !\Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(2),
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X49_Y28_N6
\Add8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (hposition(3) & ((GND) # (!\Add8~3\))) # (!hposition(3) & (\Add8~3\ $ (GND)))
-- \Add8~5\ = CARRY((hposition(3)) # (!\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(3),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X49_Y28_N8
\Add8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (hposition(4) & (!\Add8~5\)) # (!hposition(4) & ((\Add8~5\) # (GND)))
-- \Add8~7\ = CARRY((!\Add8~5\) # (!hposition(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(4),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X49_Y28_N10
\Add8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (hposition(5) & (\Add8~7\ $ (GND))) # (!hposition(5) & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((hposition(5) & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(5),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X49_Y28_N12
\Add8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (hposition(6) & (!\Add8~9\)) # (!hposition(6) & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!hposition(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(6),
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X49_Y28_N14
\Add8~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (hposition(7) & ((GND) # (!\Add8~11\))) # (!hposition(7) & (\Add8~11\ $ (GND)))
-- \Add8~13\ = CARRY((hposition(7)) # (!\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(7),
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X49_Y28_N16
\Add8~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (hposition(8) & (!\Add8~13\)) # (!hposition(8) & ((\Add8~13\) # (GND)))
-- \Add8~15\ = CARRY((!\Add8~13\) # (!hposition(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(8),
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: LCCOMB_X49_Y28_N18
\Add8~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = (hposition(9) & ((GND) # (!\Add8~15\))) # (!hposition(9) & (\Add8~15\ $ (GND)))
-- \Add8~17\ = CARRY((hposition(9)) # (!\Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(9),
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: LCCOMB_X49_Y28_N20
\Add8~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = (hposition(10) & (\Add8~17\ & VCC)) # (!hposition(10) & (!\Add8~17\))
-- \Add8~19\ = CARRY((!hposition(10) & !\Add8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(10),
	datad => VCC,
	cin => \Add8~17\,
	combout => \Add8~18_combout\,
	cout => \Add8~19\);

-- Location: LCCOMB_X49_Y28_N22
\Add8~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~20_combout\ = (hposition(11) & ((GND) # (!\Add8~19\))) # (!hposition(11) & (\Add8~19\ $ (GND)))
-- \Add8~21\ = CARRY((hposition(11)) # (!\Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(11),
	datad => VCC,
	cin => \Add8~19\,
	combout => \Add8~20_combout\,
	cout => \Add8~21\);

-- Location: LCCOMB_X49_Y28_N24
\Add8~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~22_combout\ = (hposition(12) & (\Add8~21\ & VCC)) # (!hposition(12) & (!\Add8~21\))
-- \Add8~23\ = CARRY((!hposition(12) & !\Add8~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hposition(12),
	datad => VCC,
	cin => \Add8~21\,
	combout => \Add8~22_combout\,
	cout => \Add8~23\);

-- Location: LCCOMB_X49_Y28_N26
\Add8~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~24_combout\ = (hposition(13) & ((GND) # (!\Add8~23\))) # (!hposition(13) & (\Add8~23\ $ (GND)))
-- \Add8~25\ = CARRY((hposition(13)) # (!\Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(13),
	datad => VCC,
	cin => \Add8~23\,
	combout => \Add8~24_combout\,
	cout => \Add8~25\);

-- Location: LCCOMB_X49_Y28_N28
\Add8~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~26_combout\ = (hposition(14) & (\Add8~25\ & VCC)) # (!hposition(14) & (!\Add8~25\))
-- \Add8~27\ = CARRY((!hposition(14) & !\Add8~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(14),
	datad => VCC,
	cin => \Add8~25\,
	combout => \Add8~26_combout\,
	cout => \Add8~27\);

-- Location: LCCOMB_X49_Y28_N30
\Add8~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add8~28_combout\ = hposition(15) $ (\Add8~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hposition(15),
	cin => \Add8~27\,
	combout => \Add8~28_combout\);

-- Location: LCCOMB_X47_Y28_N0
\Add9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = vposition(5) $ (VCC)
-- \Add9~1\ = CARRY(vposition(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(5),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X47_Y28_N2
\Add9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (vposition(6) & (\Add9~1\ & VCC)) # (!vposition(6) & (!\Add9~1\))
-- \Add9~3\ = CARRY((!vposition(6) & !\Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(6),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X47_Y28_N4
\Add9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (vposition(7) & (\Add9~3\ $ (GND))) # (!vposition(7) & (!\Add9~3\ & VCC))
-- \Add9~5\ = CARRY((vposition(7) & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(7),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X50_Y29_N30
\Mult0|mult_core|romout[1][11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][11]~11_combout\ = (\Add9~4_combout\ & ((\Add9~2_combout\) # (\Add9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~2_combout\,
	datac => \Add9~4_combout\,
	datad => \Add9~0_combout\,
	combout => \Mult0|mult_core|romout[1][11]~11_combout\);

-- Location: LCCOMB_X50_Y29_N0
\Mult0|mult_core|romout[1][10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][10]~combout\ = (\Add9~2_combout\ & ((\Add9~0_combout\) # ((vposition(4) & !\Add9~4_combout\)))) # (!\Add9~2_combout\ & (((\Add9~4_combout\ & !\Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(4),
	datab => \Add9~2_combout\,
	datac => \Add9~4_combout\,
	datad => \Add9~0_combout\,
	combout => \Mult0|mult_core|romout[1][10]~combout\);

-- Location: LCCOMB_X50_Y29_N26
\Mult0|mult_core|romout[1][9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][9]~0_combout\ = (vposition(4) & ((\Add9~4_combout\ $ (\Add9~0_combout\)))) # (!vposition(4) & (!\Add9~0_combout\ & ((\Add9~2_combout\) # (\Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(4),
	datab => \Add9~2_combout\,
	datac => \Add9~4_combout\,
	datad => \Add9~0_combout\,
	combout => \Mult0|mult_core|romout[1][9]~0_combout\);

-- Location: LCCOMB_X50_Y29_N2
\Mult0|mult_core|romout[1][8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][8]~1_combout\ = \Add9~4_combout\ $ (((!vposition(4) & ((\Add9~2_combout\) # (\Add9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(4),
	datab => \Add9~2_combout\,
	datac => \Add9~4_combout\,
	datad => \Add9~0_combout\,
	combout => \Mult0|mult_core|romout[1][8]~1_combout\);

-- Location: LCCOMB_X49_Y29_N26
\Mult0|mult_core|romout[0][11]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][11]~3_combout\ = (vposition(3) & ((vposition(2)) # (vposition(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vposition(2),
	datac => vposition(1),
	datad => vposition(3),
	combout => \Mult0|mult_core|romout[0][11]~3_combout\);

-- Location: LCCOMB_X50_Y29_N28
\Mult0|mult_core|romout[1][7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][7]~2_combout\ = \Add9~2_combout\ $ (((vposition(4)) # (\Add9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(4),
	datab => \Add9~2_combout\,
	datad => \Add9~0_combout\,
	combout => \Mult0|mult_core|romout[1][7]~2_combout\);

-- Location: LCCOMB_X49_Y29_N12
\Mult0|mult_core|romout[0][10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][10]~5_combout\ = (vposition(2) & ((vposition(1)) # ((vposition(0) & !vposition(3))))) # (!vposition(2) & (((!vposition(1) & vposition(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(0),
	datab => vposition(2),
	datac => vposition(1),
	datad => vposition(3),
	combout => \Mult0|mult_core|romout[0][10]~5_combout\);

-- Location: LCCOMB_X51_Y29_N0
\Mult0|mult_core|romout[1][6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][6]~4_combout\ = \Add9~0_combout\ $ (vposition(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~0_combout\,
	datad => vposition(4),
	combout => \Mult0|mult_core|romout[1][6]~4_combout\);

-- Location: LCCOMB_X46_Y29_N2
\Mult0|mult_core|romout[0][9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][9]~6_combout\ = (vposition(0) & (vposition(3) $ (((vposition(1)))))) # (!vposition(0) & (!vposition(1) & ((vposition(3)) # (vposition(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(0),
	datab => vposition(3),
	datac => vposition(2),
	datad => vposition(1),
	combout => \Mult0|mult_core|romout[0][9]~6_combout\);

-- Location: LCCOMB_X49_Y29_N6
\Mult0|mult_core|romout[0][8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~7_combout\ = vposition(3) $ (((!vposition(0) & ((vposition(2)) # (vposition(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(0),
	datab => vposition(2),
	datac => vposition(1),
	datad => vposition(3),
	combout => \Mult0|mult_core|romout[0][8]~7_combout\);

-- Location: LCCOMB_X49_Y29_N16
\Mult0|mult_core|romout[0][7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~8_combout\ = vposition(2) $ (((vposition(0)) # (vposition(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(0),
	datab => vposition(1),
	datac => vposition(2),
	combout => \Mult0|mult_core|romout[0][7]~8_combout\);

-- Location: LCCOMB_X49_Y29_N2
\Mult0|mult_core|romout[0][6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~9_combout\ = vposition(0) $ (vposition(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(0),
	datac => vposition(1),
	combout => \Mult0|mult_core|romout[0][6]~9_combout\);

-- Location: LCCOMB_X50_Y29_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (vposition(4) & (vposition(0) $ (VCC))) # (!vposition(4) & (vposition(0) & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((vposition(4) & vposition(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(4),
	datab => vposition(0),
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X50_Y29_N6
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|romout[0][6]~9_combout\ & ((\Add9~0_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\Add9~0_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|romout[0][6]~9_combout\ & ((\Add9~0_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Add9~0_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|romout[0][6]~9_combout\ & (!\Add9~0_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[0][6]~9_combout\ & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][6]~9_combout\,
	datab => \Add9~0_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X50_Y29_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|romout[0][7]~8_combout\ $ (\Add9~2_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|romout[0][7]~8_combout\ & ((\Add9~2_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # (!\Mult0|mult_core|romout[0][7]~8_combout\ & (\Add9~2_combout\ 
-- & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][7]~8_combout\,
	datab => \Add9~2_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X50_Y29_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\Add9~4_combout\ & ((\Mult0|mult_core|romout[0][8]~7_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\Mult0|mult_core|romout[0][8]~7_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\Add9~4_combout\ & ((\Mult0|mult_core|romout[0][8]~7_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[0][8]~7_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\Add9~4_combout\ & (!\Mult0|mult_core|romout[0][8]~7_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Add9~4_combout\ & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult0|mult_core|romout[0][8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~4_combout\,
	datab => \Mult0|mult_core|romout[0][8]~7_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X50_Y29_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|romout[0][9]~6_combout\ $ (vposition(4) $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|romout[0][9]~6_combout\ & ((vposition(4)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # (!\Mult0|mult_core|romout[0][9]~6_combout\ & (vposition(4) & 
-- !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][9]~6_combout\,
	datab => vposition(4),
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X50_Y29_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|romout[0][10]~5_combout\ & ((\Mult0|mult_core|romout[1][6]~4_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\Mult0|mult_core|romout[1][6]~4_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\Mult0|mult_core|romout[0][10]~5_combout\ & ((\Mult0|mult_core|romout[1][6]~4_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|romout[1][6]~4_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|romout[0][10]~5_combout\ & (!\Mult0|mult_core|romout[1][6]~4_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\Mult0|mult_core|romout[0][10]~5_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\Mult0|mult_core|romout[1][6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][10]~5_combout\,
	datab => \Mult0|mult_core|romout[1][6]~4_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X50_Y29_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\Mult0|mult_core|romout[0][11]~3_combout\ $ (\Mult0|mult_core|romout[1][7]~2_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|romout[0][11]~3_combout\ & ((\Mult0|mult_core|romout[1][7]~2_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\Mult0|mult_core|romout[0][11]~3_combout\ & (\Mult0|mult_core|romout[1][7]~2_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][11]~3_combout\,
	datab => \Mult0|mult_core|romout[1][7]~2_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X50_Y29_N18
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\Mult0|mult_core|romout[1][8]~1_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|romout[1][8]~1_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\Mult0|mult_core|romout[1][8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][8]~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X50_Y29_N20
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = (\Mult0|mult_core|romout[1][9]~0_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (GND))) # (!\Mult0|mult_core|romout[1][9]~0_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\Mult0|mult_core|romout[1][9]~0_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][9]~0_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X50_Y29_N22
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\Mult0|mult_core|romout[1][10]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\Mult0|mult_core|romout[1][10]~combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\Mult0|mult_core|romout[1][10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][10]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X50_Y29_N24
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = \Mult0|mult_core|romout[1][11]~11_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][11]~11_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\);

-- Location: LCCOMB_X47_Y28_N6
\Add9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (vposition(8) & (\Add9~5\ & VCC)) # (!vposition(8) & (!\Add9~5\))
-- \Add9~7\ = CARRY((!vposition(8) & !\Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(8),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X47_Y28_N8
\Add9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (vposition(9) & ((GND) # (!\Add9~7\))) # (!vposition(9) & (\Add9~7\ $ (GND)))
-- \Add9~9\ = CARRY((vposition(9)) # (!\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(9),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X47_Y28_N10
\Add9~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (vposition(10) & (\Add9~9\ & VCC)) # (!vposition(10) & (!\Add9~9\))
-- \Add9~11\ = CARRY((!vposition(10) & !\Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(10),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X47_Y28_N30
\Mult0|mult_core|romout[2][7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][7]~12_combout\ = \Add9~10_combout\ $ (((\Add9~6_combout\) # (\Add9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datac => \Add9~8_combout\,
	datad => \Add9~10_combout\,
	combout => \Mult0|mult_core|romout[2][7]~12_combout\);

-- Location: LCCOMB_X47_Y28_N12
\Add9~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (vposition(11) & ((GND) # (!\Add9~11\))) # (!vposition(11) & (\Add9~11\ $ (GND)))
-- \Add9~13\ = CARRY((vposition(11)) # (!\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(11),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X47_Y28_N14
\Add9~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (vposition(12) & (\Add9~13\ & VCC)) # (!vposition(12) & (!\Add9~13\))
-- \Add9~15\ = CARRY((!vposition(12) & !\Add9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(12),
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X47_Y28_N16
\Add9~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (vposition(13) & ((GND) # (!\Add9~15\))) # (!vposition(13) & (\Add9~15\ $ (GND)))
-- \Add9~17\ = CARRY((vposition(13)) # (!\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => vposition(13),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X47_Y28_N18
\Add9~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = \Add9~17\ $ (!vposition(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => vposition(14),
	cin => \Add9~17\,
	combout => \Add9~18_combout\);

-- Location: LCCOMB_X47_Y28_N20
\Mult0|mult_core|romout[2][6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][6]~10_combout\ = \Add9~8_combout\ $ (\Add9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~8_combout\,
	datad => \Add9~6_combout\,
	combout => \Mult0|mult_core|romout[2][6]~10_combout\);

-- Location: LCCOMB_X47_Y28_N22
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ = (\Add9~6_combout\ & (\Add9~14_combout\ $ (VCC))) # (!\Add9~6_combout\ & (\Add9~14_combout\ & VCC))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\ = CARRY((\Add9~6_combout\ & \Add9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~6_combout\,
	datab => \Add9~14_combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\);

-- Location: LCCOMB_X47_Y28_N24
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|romout[2][6]~10_combout\ & ((\Add9~16_combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\ & VCC)) # (!\Add9~16_combout\ & 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|romout[2][6]~10_combout\ & ((\Add9~16_combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # (!\Add9~16_combout\ & 
-- ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|romout[2][6]~10_combout\ & (!\Add9~16_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[2][6]~10_combout\ & 
-- ((!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\) # (!\Add9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][6]~10_combout\,
	datab => \Add9~16_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\);

-- Location: LCCOMB_X47_Y28_N26
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ = \Mult0|mult_core|romout[2][7]~12_combout\ $ (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\ $ (!\Add9~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][7]~12_combout\,
	datad => \Add9~18_combout\,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X51_Y28_N6
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\Add9~6_combout\ $ (VCC))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & 
-- (\Add9~6_combout\ & VCC))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & \Add9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \Add9~6_combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X51_Y28_N8
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Add9~8_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\Add9~8_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Add9~8_combout\ & 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\Add9~8_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\Add9~8_combout\ & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (!\Add9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Add9~8_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X51_Y28_N10
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\Add9~10_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\Add9~10_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # 
-- (!\Add9~10_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~10_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X51_Y28_N12
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\Add9~12_combout\ & (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Add9~12_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\Add9~12_combout\ & 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\Add9~12_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\Add9~12_combout\ & !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (!\Add9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datab => \Add9~12_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X51_Y28_N14
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ $ 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datab => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X51_Y28_N16
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)))) # 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & 
-- !\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X51_Y28_N18
\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ $ 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\,
	cin => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\);

-- Location: LCCOMB_X50_Y28_N0
\data_address[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[1]~15_combout\ = (\Add8~0_combout\ & (vposition(0) $ (VCC))) # (!\Add8~0_combout\ & (vposition(0) & VCC))
-- \data_address[1]~16\ = CARRY((\Add8~0_combout\ & vposition(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => vposition(0),
	datad => VCC,
	combout => \data_address[1]~15_combout\,
	cout => \data_address[1]~16\);

-- Location: LCCOMB_X50_Y28_N2
\data_address[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[2]~17_combout\ = (vposition(1) & ((\Add8~2_combout\ & (\data_address[1]~16\ & VCC)) # (!\Add8~2_combout\ & (!\data_address[1]~16\)))) # (!vposition(1) & ((\Add8~2_combout\ & (!\data_address[1]~16\)) # (!\Add8~2_combout\ & 
-- ((\data_address[1]~16\) # (GND)))))
-- \data_address[2]~18\ = CARRY((vposition(1) & (!\Add8~2_combout\ & !\data_address[1]~16\)) # (!vposition(1) & ((!\data_address[1]~16\) # (!\Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(1),
	datab => \Add8~2_combout\,
	datad => VCC,
	cin => \data_address[1]~16\,
	combout => \data_address[2]~17_combout\,
	cout => \data_address[2]~18\);

-- Location: LCCOMB_X50_Y28_N4
\data_address[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[3]~19_combout\ = ((vposition(2) $ (\Add8~4_combout\ $ (!\data_address[2]~18\)))) # (GND)
-- \data_address[3]~20\ = CARRY((vposition(2) & ((\Add8~4_combout\) # (!\data_address[2]~18\))) # (!vposition(2) & (\Add8~4_combout\ & !\data_address[2]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => vposition(2),
	datab => \Add8~4_combout\,
	datad => VCC,
	cin => \data_address[2]~18\,
	combout => \data_address[3]~19_combout\,
	cout => \data_address[3]~20\);

-- Location: LCCOMB_X50_Y28_N6
\data_address[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[4]~21_combout\ = (\Add8~6_combout\ & ((vposition(3) & (\data_address[3]~20\ & VCC)) # (!vposition(3) & (!\data_address[3]~20\)))) # (!\Add8~6_combout\ & ((vposition(3) & (!\data_address[3]~20\)) # (!vposition(3) & ((\data_address[3]~20\) # 
-- (GND)))))
-- \data_address[4]~22\ = CARRY((\Add8~6_combout\ & (!vposition(3) & !\data_address[3]~20\)) # (!\Add8~6_combout\ & ((!\data_address[3]~20\) # (!vposition(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~6_combout\,
	datab => vposition(3),
	datad => VCC,
	cin => \data_address[3]~20\,
	combout => \data_address[4]~21_combout\,
	cout => \data_address[4]~22\);

-- Location: LCCOMB_X50_Y28_N8
\data_address[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[5]~23_combout\ = ((\Add8~8_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (!\data_address[4]~22\)))) # (GND)
-- \data_address[5]~24\ = CARRY((\Add8~8_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\) # (!\data_address[4]~22\))) # (!\Add8~8_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & 
-- !\data_address[4]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \data_address[4]~22\,
	combout => \data_address[5]~23_combout\,
	cout => \data_address[5]~24\);

-- Location: LCCOMB_X50_Y28_N10
\data_address[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[6]~25_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add8~10_combout\ & (\data_address[5]~24\ & VCC)) # (!\Add8~10_combout\ & (!\data_address[5]~24\)))) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add8~10_combout\ & (!\data_address[5]~24\)) # (!\Add8~10_combout\ & ((\data_address[5]~24\) # (GND)))))
-- \data_address[6]~26\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (!\Add8~10_combout\ & !\data_address[5]~24\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((!\data_address[5]~24\) # 
-- (!\Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Add8~10_combout\,
	datad => VCC,
	cin => \data_address[5]~24\,
	combout => \data_address[6]~25_combout\,
	cout => \data_address[6]~26\);

-- Location: LCCOMB_X50_Y28_N12
\data_address[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[7]~27_combout\ = ((\Add8~12_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (!\data_address[6]~26\)))) # (GND)
-- \data_address[7]~28\ = CARRY((\Add8~12_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\) # (!\data_address[6]~26\))) # (!\Add8~12_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- !\data_address[6]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~12_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \data_address[6]~26\,
	combout => \data_address[7]~27_combout\,
	cout => \data_address[7]~28\);

-- Location: LCCOMB_X50_Y28_N14
\data_address[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[8]~29_combout\ = (\Add8~14_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\data_address[7]~28\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\data_address[7]~28\)))) # 
-- (!\Add8~14_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\data_address[7]~28\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\data_address[7]~28\) # (GND)))))
-- \data_address[8]~30\ = CARRY((\Add8~14_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\data_address[7]~28\)) # (!\Add8~14_combout\ & ((!\data_address[7]~28\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~14_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \data_address[7]~28\,
	combout => \data_address[8]~29_combout\,
	cout => \data_address[8]~30\);

-- Location: LCCOMB_X50_Y28_N16
\data_address[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[9]~31_combout\ = ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ $ (\Add8~16_combout\ $ (!\data_address[8]~30\)))) # (GND)
-- \data_address[9]~32\ = CARRY((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & ((\Add8~16_combout\) # (!\data_address[8]~30\))) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & 
-- (\Add8~16_combout\ & !\data_address[8]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \Add8~16_combout\,
	datad => VCC,
	cin => \data_address[8]~30\,
	combout => \data_address[9]~31_combout\,
	cout => \data_address[9]~32\);

-- Location: LCCOMB_X50_Y28_N18
\data_address[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[10]~33_combout\ = (\Add8~18_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (\data_address[9]~32\ & VCC)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & 
-- (!\data_address[9]~32\)))) # (!\Add8~18_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (!\data_address[9]~32\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & 
-- ((\data_address[9]~32\) # (GND)))))
-- \data_address[10]~34\ = CARRY((\Add8~18_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & !\data_address[9]~32\)) # (!\Add8~18_combout\ & ((!\data_address[9]~32\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~18_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \data_address[9]~32\,
	combout => \data_address[10]~33_combout\,
	cout => \data_address[10]~34\);

-- Location: LCCOMB_X50_Y28_N20
\data_address[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[11]~35_combout\ = ((\Add8~20_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (!\data_address[10]~34\)))) # (GND)
-- \data_address[11]~36\ = CARRY((\Add8~20_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\) # (!\data_address[10]~34\))) # (!\Add8~20_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & !\data_address[10]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~20_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \data_address[10]~34\,
	combout => \data_address[11]~35_combout\,
	cout => \data_address[11]~36\);

-- Location: LCCOMB_X50_Y28_N22
\data_address[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[12]~37_combout\ = (\Add8~22_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\data_address[11]~36\ & VCC)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- (!\data_address[11]~36\)))) # (!\Add8~22_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\data_address[11]~36\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & 
-- ((\data_address[11]~36\) # (GND)))))
-- \data_address[12]~38\ = CARRY((\Add8~22_combout\ & (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & !\data_address[11]~36\)) # (!\Add8~22_combout\ & ((!\data_address[11]~36\) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~22_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \data_address[11]~36\,
	combout => \data_address[12]~37_combout\,
	cout => \data_address[12]~38\);

-- Location: LCCOMB_X50_Y28_N24
\data_address[13]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[13]~39_combout\ = ((\Add8~24_combout\ $ (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ $ (!\data_address[12]~38\)))) # (GND)
-- \data_address[13]~40\ = CARRY((\Add8~24_combout\ & ((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\) # (!\data_address[12]~38\))) # (!\Add8~24_combout\ & 
-- (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & !\data_address[12]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~24_combout\,
	datab => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \data_address[12]~38\,
	combout => \data_address[13]~39_combout\,
	cout => \data_address[13]~40\);

-- Location: LCCOMB_X50_Y28_N26
\data_address[14]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[14]~41_combout\ = (\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & ((\Add8~26_combout\ & (\data_address[13]~40\ & VCC)) # (!\Add8~26_combout\ & (!\data_address[13]~40\)))) # 
-- (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & ((\Add8~26_combout\ & (!\data_address[13]~40\)) # (!\Add8~26_combout\ & ((\data_address[13]~40\) # (GND)))))
-- \data_address[14]~42\ = CARRY((\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\Add8~26_combout\ & !\data_address[13]~40\)) # (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & 
-- ((!\data_address[13]~40\) # (!\Add8~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Add8~26_combout\,
	datad => VCC,
	cin => \data_address[13]~40\,
	combout => \data_address[14]~41_combout\,
	cout => \data_address[14]~42\);

-- Location: LCCOMB_X50_Y28_N28
\data_address[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[15]~43_combout\ = \Add8~28_combout\ $ (\data_address[14]~42\ $ (!\Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~28_combout\,
	datad => \Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cin => \data_address[14]~42\,
	combout => \data_address[15]~43_combout\);

-- Location: FF_X50_Y28_N29
\data_address[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[15]~43_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(15));

-- Location: FF_X50_Y28_N25
\data_address[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[13]~39_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(13));

-- Location: FF_X50_Y28_N27
\data_address[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[14]~41_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(14));

-- Location: LCCOMB_X50_Y24_N22
\imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\ = (!data_address(15) & (data_address(13) & !data_address(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_address(15),
	datac => data_address(13),
	datad => data_address(14),
	combout => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\);

-- Location: LCCOMB_X51_Y30_N8
\data_address[0]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_address[0]~45_combout\ = (\process_0~8_combout\ & (hposition(0))) # (!\process_0~8_combout\ & ((data_address(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => hposition(0),
	datac => data_address(0),
	combout => \data_address[0]~45_combout\);

-- Location: FF_X51_Y30_N9
\data_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(0));

-- Location: FF_X50_Y28_N1
\data_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[1]~15_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(1));

-- Location: FF_X50_Y28_N3
\data_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[2]~17_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(2));

-- Location: FF_X50_Y28_N5
\data_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[3]~19_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(3));

-- Location: FF_X50_Y28_N7
\data_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[4]~21_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(4));

-- Location: FF_X50_Y28_N9
\data_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[5]~23_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(5));

-- Location: FF_X50_Y28_N11
\data_address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[6]~25_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(6));

-- Location: FF_X50_Y28_N13
\data_address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[7]~27_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(7));

-- Location: FF_X50_Y28_N15
\data_address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[8]~29_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(8));

-- Location: FF_X50_Y28_N17
\data_address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[9]~31_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(9));

-- Location: FF_X50_Y28_N19
\data_address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[10]~33_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(10));

-- Location: FF_X50_Y28_N21
\data_address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[11]~35_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(11));

-- Location: FF_X50_Y28_N23
\data_address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \data_address[12]~37_combout\,
	ena => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_address(12));

-- Location: M9K_X73_Y16_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a20\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFC5F0FEFFFFB5F7FFFFFF0BFFEFEBF7FFFFFFFFFFFFFFFFFFFFFFFFFFF6773F8B7F7B037FFFFFCFBFBDACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FDFED6FF7E2DFFFFFFBE7FFFE3FDFFFFFFFFFFFFFFFFFFFFFFFFFFF1EFFFA877FE43FFFFFFB1EFFFF69E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FE03E7FF3FFFFFFEEFFEFEDFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFA247F14EFFFB7FFFFFFF9BFF7DE60FFFFFFFFFFFFFFFFFFFFFFFFFFFE853FCF91EFF29FFFFFFFBFFC6FA73FFFFFFFFFFFFFFFFFFFFFFFFFFFD8AFF07E17F5FFFFFFFFDDBBD7853FFFFFFFFFFFFFFFFFFFFFFFFFFFFF97FC7FE7FCC7FFFFFFEDFC2FFC17FFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFE9767FFFFFFFFFBFA7FF6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFC7BEFFFFFFFE09AFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF21EFFFFFFFFFA707FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6DFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9FFFFFFFFFFEFFBFFFFFFFFFFEFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFD3FFFFFFFFFF5FBFFFFFFFFFEDFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFB1FFFFFFFFFF8FFFFFFBDFFFF9BFFFFFFFFFFFFFFFF6FFA1FFFFFFF7FC59FFFFFFFEFDFFBFFFFFFFFF1FFFFFFFFFFFFFFFFF3FF17FFFFF7CED3BFFFFFFFFFE9FFFFFFFFFFFC7FFFFFFFFFFFFFFF",
	mem_init1 => X"FCFFE5FFFFFFCAF1AFFFFFFFFFFDE17FFFFFFFFF1FFFFFFFFFFFFFFFFE3FF97FFFFF797BFBFFFFFFFFBFD93FFFFFFFFF8FFFFFFFFFFFFFFFFF8FFC7FFFFFFF0117FFFFFFFFEF4F3FBFFFFFFFE3FFFFFFFFFFFFFFFFC7FF1FFFFFFFFFEDFFFFFFFFFDDEBFFFFFFFFFF8BFFFFFFFFFFFFFFFF3FFE7FFFFFFFFDFFFFFFFFFFFFF4FFFFFFFFFFF2FFFFFFFFFFFFFFFFCFFFCFFFFFFFEF3FFFFFFFFFFFEFDFFFFFFFFFFCBFFFFFFFFFFFFFFFFBFFE3FFFFFFFF5FFFFFFFFFFFFFEBE3FFFFFFFE2FBFFFDFFFDFFFFFFE7BFCFFFFFEFFEFFFFFFFFFFFFFF8F67FFFFFFFFBFFFFFBFFFFFFFFFF9FF4BFFFFF9FC3FFFFFFFFFFFFFE9F3FFFFFFFE9FFFFFC3D67E1FFFFCBF",
	mem_init0 => X"F2FFFFFD2FB7FFFFFFFFFFFFFE27FEFFFFFFB3F7FFFF30FFFFFFFE0FFEBFFFFFABDFFFFFFFFFFFFFFFCCFFFFFFFFF57FFFFD6D17F7FFFFAA7F9F7FFFFF2BFFFFFFFFFFFFF7F03F5FFFFFFF1FFFF7FA59F5FFFFE10FC3FFFFFFEFFFFFFFFFFFFFFFFC0FFFFFFFFF32FFFFFFFAFC7FFFFAD3EB37FFFFB0FFFFFFFFFFFFFFFE8BFDFFFFFFC03FFFBFE5FF86FFFEC07B53FFFFD5F7FFFFFFFFFFFFFFF37EFFFFFFE0FFFFFFF07F65FFFFF6FFBBFF53F83FFFFFFFFFFFFFFFFEAE8FFFF5E9FFFFF7F05FF97FFFFAFFA9FFF77FBFFFFFFFFFFFFFFFFF49CBFFFFB7DBFFFFF56DFE5FFFF8FFF2FF7F7FFFFFFFFFFFFFFFFFFFB903FEFFFFFFFFFFFF9FFF17FFFEFFFDFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: FF_X50_Y24_N25
\imRead_clk|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => data_address(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imRead_clk|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: FF_X52_Y23_N7
\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \imRead_clk|altsyncram_component|auto_generated|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: LCCOMB_X50_Y24_N12
\imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\ = (!data_address(15) & (data_address(13) & data_address(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_address(15),
	datac => data_address(13),
	datad => data_address(14),
	combout => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\);

-- Location: M9K_X73_Y11_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a44\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF97FFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA717FFFFF1FFFFF9EEFFFFF96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE4FFFFFC7FFFFEAFFFFFFF37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA585FFFE3AFFFFFA2F7FFFF1F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1F2FFFFCF7FFFFFB6FFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF08CFFFDEFBFFFFFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8DFFFDFD3FFFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECDFFFAB9FFFFFBF77FFFF7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE86FFFFFF9FFFFEFFFFFFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD3FFFE9",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFF5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFC97DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE3FFFD357FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA87FFFF3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF845FFFD71FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADFFFEFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE77FF9FFBF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1BFE1FBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFECDFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EABFFEFCFFC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F3FFE317FE48DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73FFFB8FFF8E1FFAE97FFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFD61DFF3A7FFE7FFFF8E2FFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFB931776E0FFFCFFFF6FFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFDFF7FFFFFFFFFFFFFFFF7FFFFFFCBFFFBFFFF7B8FFFFFFFFFFFFFFFFDDD5FFFFFFFFFFFFFFFFB4F8FFFF5FFF4FFFFDFDBFFFFFFFFFFFFFFFF780FFFFFFFFFFFFFFFFED3E9CFFC7FFD3FFEDB7FFFFFFFFFFFFFFFFFF9ABFFFFFFFFFFFFFFFFDCFFDFF79FFF3FFFFE7FFFFFFFFFFFFFFFFFFDA3FFFFFFFFFFFFFFFFF9F2FFFFD0FFE0439EB8FFFFFFFFFFFFFFFFFFE50FFFFFFFFFFFFFFFFF173F53E0FFF7D1BFCBFFFFFFFFFFFFFFFFFF4BF7FFFFFFFFFFFFFFFFB061A0023FFD9F49FCFFFFFFFFFFFFFFFFFFB383FFFFFFFFFFFFFFFFFDC976005FFF4FFFF17FFFFFFFFFFFFFFFFFDFA47FFFFFFFFFFFFFFFFE3F4FFFD7FFD3FFFE3FBFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\);

-- Location: LCCOMB_X50_Y24_N0
\imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\ = (!data_address(15) & (!data_address(13) & data_address(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_address(15),
	datac => data_address(13),
	datad => data_address(14),
	combout => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\);

-- Location: M9K_X33_Y6_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a32\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFE89C7FFFBFFFEFFFF27AFFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFFFFFFF87E3FFFD3FFF3FFFF3D3FFFFFFFFFFFFFFFF37FFFFFFFFFFFFFFFFFFF2FC7FFFC7FFDFFFF3A4FFFFFFFFFFFFFFFFF6ED7FFFFFFFFFFFFFFFFA3F6FFFEBBFF7FFFE147FFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFF865FBFF9FFFAFFFDC53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE359FFFCBFFE5DFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA06FFC69FFFD47DEF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE27FFC83FFF457F6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFF7FFFFE7DEFFFFBFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFE1F3FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6FFFDFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFD7FFEFF7FFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7FFFDE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFF2D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F9FFFEA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0AFFFFC67FFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF68FFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FFFEFFF7FFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFBFFFFFFF7FBFFFFD7FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDFFFFFFFFFAFFFFF9FEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFF7FFFFEFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD7FFBFFFFBF87FFFD6FBFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD86FFFFFFFF7E3FFFFE87FFFFEE093FFFFFFFFFFFFFFFFFFFFFFFFFFFB9FFC5FFFFF12FFFFF8AAFFFFC0D0FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFEA24BFFEFFF711BFFFFE2FFFFFFE023FFFFFFFFFFFFFFFFFFFFFFFFFF74E0FE8FFFFB80FFFFFFBFFFFFD06BFFFFFFFFFFFFFFFFFFFFFFFFFFF67BBF87FFFFDC7FFFFEFFFFFFF7AD5FFFFFFFFFFFFFFFFFFFFFFFFFFFBF7FE3FFFFFFBFFFFFE7BFFFFFF73FFFFFFFFFFFFFFFFFFFFFFFFFFF4FC9FEFFFFEDAFFFFFD7E7FFFFFA9EFFFFFFFFFFFFFFFFFFFFFFFFFFC3F97DBFFFEFFBFFFFFDF9BFFFF8AFBFFFFFFFFFFFFFFFFFFFFFFFFFF97FFF6FFFFF7FFFFFFEFFFFFFFF5EFFFFFFFFFFFFFFFFFFFFFFFFFFFC5F7FFBFFFFD69FFFFFEFBFFFFE777FFFFFFFFFFFFFFFFFFFFFFFFFFF17E7FAFFFE5F57FFFFF7CCFFFFEBFEFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: LCCOMB_X50_Y24_N2
\imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3) = (!data_address(15) & (!data_address(13) & !data_address(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_address(15),
	datac => data_address(13),
	datad => data_address(14),
	combout => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3));

-- Location: M9K_X5_Y13_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFD7CBFFFFFFFFFFFFFFFFFFFFFDDFFFBFFFFFFFD7FFC5FFFFFFDFFFFFF9E3FFFFFFFFFFFFFFFFFFBDFEDFFDBBFFFFFFA6FFF17FFFFFFCFBFFFF05EFFFFFFFFFFFFFFFFDE7EAF9FFBEFFFFFFF5DFDC7FFFFF7BF7FAFFF377FFFFFFFFFFFFFFFFB7EBFA2FCFFFFFFFB87C5F9FFFFFFFEBFE7FF3FEFFFFFFFFFFFFFFFFFFF3FD3FC9FFFFFFFC9FAFC63F7FFFFE3FE2EC3FFFFFFFFFFFFFFFFFFFF73E7FD5FFFFFFFFCDF2FC87FFFFFF26FED75FFFFFFFFFFFFFFFFFFFFF635FFB7FFFFFFEE819FDE5FFFFFFEDEE1F0FFFFFFFFFFFFFFFFFFFFFBA53FC1FFFFFFFC9783F137FFFFFEEBF9296FFFFFFFFFFFFFFFFFFFFFF79FFAFFFFFFFE6C79FDBF7FF7FFFEBFF47",
	mem_init2 => X"7FFFFFFFFFFFFFFFFFFFFFFA2FC7FFFFFFFFF0EFFB7FFF8FFFA5FE93BFFFFFFFFFFFFFFFFFFFFDF697C1FFFFFFFFD59FFE77FFF7FFFC3F83FFFFFFFFFFFFFFFFFFFFFFFFE2F8FFFFFFFFFFB7DFB7FFFFFFB78DBDFEFFFFFFFFFFFFFFFFFFFFFFFCEC7FBFFFFDFFEFFFFFFFFD7F9EF1E1BFFFFFFFFFFFFFFFFFFFFFFFFFEF2BC7BFDFFFFFEBFFFFEDBFDFFE735FFFFFFFFFFFFFFFFFFFFFFFFDF4EFB3FFFFFFFFF3FFFF7BFDDAFFA77FFFFFFFFFFFFFFFFFFFFFFFFFF795D8EFF7FFFFFFBDFFFFFDDD7EE1FFFFFFFFFFFFFFFFFFFFFFFFFFFF1D9F1F53FFFFFFFFFFF9ED3FEFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8FF5FFFFFFBBFFFFFDAFE5CEFF6FFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFEFD6BEBFAFFFFDFFFFFFE3FEADFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDFF9FEDFFFCFFFFE3F87BD09D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD9FFEDBBF3FC3FEFA7EF73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5F9FCFFAFDFF6FF3FE6C67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF069FFFFEFF7FDFFCFF1F21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7177FD7FFFDFFEFFDFDB877FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFF29EFFE3FFFD7FF7F5577FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C5B97FEFFBF1FFEEE77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4AAFFBFEFF7FF6287FFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFF2F6BFFBFFF1D7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A7C01E3BAB1D3FFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFEE7E014E76F49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECBE975C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD427FFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFF0E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFF0FCFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X50_Y24_N6
\imRead_clk|altsyncram_component|auto_generated|address_reg_a[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\ = data_address(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data_address(14),
	combout => \imRead_clk|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\);

-- Location: FF_X50_Y24_N7
\imRead_clk|altsyncram_component|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \imRead_clk|altsyncram_component|auto_generated|address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imRead_clk|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: LCCOMB_X50_Y24_N8
\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\ = \imRead_clk|altsyncram_component|auto_generated|address_reg_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \imRead_clk|altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\);

-- Location: FF_X50_Y24_N9
\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1));

-- Location: LCCOMB_X52_Y13_N20
\imRead_clk|altsyncram_component|auto_generated|mux2|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~2_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a32~portadataout\) # 
-- ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & 
-- !\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a32~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~2_combout\);

-- Location: LCCOMB_X52_Y13_N22
\imRead_clk|altsyncram_component|auto_generated|mux2|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~3_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~2_combout\ & 
-- ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a44~portadataout\))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~2_combout\ & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a20~portadataout\)))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead_clk|altsyncram_component|auto_generated|mux2|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a20~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a44~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|mux2|_~2_combout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~3_combout\);

-- Location: LCCOMB_X50_Y24_N30
\imRead_clk|altsyncram_component|auto_generated|address_reg_a[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\ = data_address(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data_address(15),
	combout => \imRead_clk|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\);

-- Location: FF_X50_Y24_N31
\imRead_clk|altsyncram_component|auto_generated|address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \imRead_clk|altsyncram_component|auto_generated|address_reg_a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imRead_clk|altsyncram_component|auto_generated|address_reg_a\(2));

-- Location: FF_X50_Y24_N19
\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \imRead_clk|altsyncram_component|auto_generated|address_reg_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2));

-- Location: LCCOMB_X50_Y24_N28
\imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\ = (data_address(15) & (data_address(13) & data_address(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_address(15),
	datac => data_address(13),
	datad => data_address(14),
	combout => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\);

-- Location: M9K_X53_Y10_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a92\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a92_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a92_PORTADATAOUT_bus\);

-- Location: LCCOMB_X50_Y24_N4
\imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\ = (data_address(15) & (!data_address(13) & data_address(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_address(15),
	datac => data_address(13),
	datad => data_address(14),
	combout => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\);

-- Location: M9K_X53_Y15_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a80\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF37C32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BF0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a80_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a80_PORTADATAOUT_bus\);

-- Location: LCCOMB_X50_Y24_N18
\imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\ = (data_address(13) & (data_address(15) & !data_address(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_address(13),
	datab => data_address(15),
	datad => data_address(14),
	combout => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\);

-- Location: M9K_X33_Y13_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a68\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"1DD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5C03F078178FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF19A88C64C717E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77B1FBF9FF11376FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F7BA7EBFF7F4FFA8C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9B6FFF7FDFF79E8443FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D40DFCFF8FF9FCFF97048FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F377FBDFEBFD7F3FF3FE2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2E3FDFF8FE5DE7F7FFDC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF34FDFFD7F3F97F1",
	mem_init2 => X"FD3F8713FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF41FF3FE7F3FE9FA7F7FEBFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFDB7F7BFAFF3DB799FCF76FE01FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFE7E7FA7F3FFFEBFFFFBFEBFC87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0DE77E9FBFFFFDFFFFFFE1FCE0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2BDFF5FFFF3FEBFFFFFFB7FED93FFFFFFFFFFFFFFFFFFFFFFFFFFFFB0FEEF37FEFDFFCFF1FF7E2FC6E6FBFFFFFFFFFFFFFFFFFFFFFFFFFFD76FFFEFFFFFFFEDFFFFFFEFF5D753FFFFFFFFFFFFFFFFFFFFFFFFFFF02EFFFFFFFFFFFCBF3DDFF7F4FF80AFFFFFFFFFFFFFFFFFFFFFFDF7E0FDFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFE7FCF3EFFFFFFFFFFFFFFFFFFFFFFFFE8BEFFFFFFFFFFFC37FFFFFFFFFFF7937FFFFFFFFFFFFFFFFFFFFFF3B5FBBBFFFFFFFFDAD45FFFFFFFFFFCDDCFFFFFFFFFFFFFFFFFFFFFFFFD7FDEFFFFFFFFFFDA3FFFFFFFFDFC3F93FFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFC6FBFFFFFFFFFF9EFC37FFFFFFFFFFFFFFFFFFFFDC5AEFBFFFFFFFFFE0EFFFFFFFFFFFADF46BFFFFFFFFFFFFFFFFFFFFFCDBFF4BFFFFFFFFFEBC7FFFFFFFFFFFFEBEFFFFFFFFFFFFFFFFFFFFFED75FFE7FFFFFFFFF2FAFFFFFFFFFFBFDAE0FFFFFFFFFFFFFFFFFFFFF03C7FE1FFFFFFFFFCB61FFFFFFFFFDFFCFFD7FFFFFFFFFFFFFFFFFEFE6EEBBFAFFFFFFFFE0F7FFFFFFFFF",
	mem_init0 => X"E1D67DBFBFFFFFFFFFFFFFFFFEFFFFD67F1FFFFFFFFF8AE5FFFFFFFFBCFFFFD177FFFFFFFFFFFFFFFFE65DFEBBF3FFFFFFFFFF017FFFFFFFFFFFFBEC8FFFFFFFFFFFFFFFFFFF2DEF97FF15BFFFFFFD2BBFFFFFFFFFFBF7FF17FFFFFFFFFFFFFFFFFF9AEFFFDFA4FFFFFFFF6D47FFFFFFFFBFFCFF7F7FFFFFFFFFFFFFFFFFC6D7BF3F7083FFFFFFB45DFFFFFFFFFDEFFF5B47FFFFFFFFFFFFFFFFFAEEFBBFFEC1FFFFFFBFF7FFFFFFFFFA75FFF3E9FFFFFFFFFFFFFFDFF16FC7FFF83A5FFFFFF9FD5FFFFFFFFE37FFFFFEFDFFFFFFFFFFFFFFAE7DFB7FFE3F7FFFFFFCFF87FFFFFFFF8BFFF7EF8FFFFFFFFFFFFFFFF63F7FDFFFE7D1FFFFFFF56FFFFFFFFFF3F7",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a68_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a68_PORTADATAOUT_bus\);

-- Location: LCCOMB_X50_Y24_N26
\imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\ = (data_address(15) & (!data_address(13) & !data_address(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_address(15),
	datac => data_address(13),
	datad => data_address(14),
	combout => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\);

-- Location: M9K_X53_Y9_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a56\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFA3FFFFFFFFFFFFFFD45F9DFFFC0FFFFFFFFFB71FFFFFFFFFEFFFFDBFFEFFFFFFFFFFFFFFEA81FDFFFF57FFFFFFFFD23FFFFFFFFFC7FFFF9FF85FFFFFFFFFFFFFFD5F7AFFFFF2F6FFFFFF6F67FFFFFFFFEFFFFFFFFC75FFFFFFFFFFFFFCDFCFDFFFF943FFFFFFFFFEFFFFFFFFF9BFFFFFFD78BFFFFFFFFFFFFFA761FFEFFEB6FFFFFFFFBFFFFFFFFFFE5FFFFFFF7E1FFFFFFFFFFFFFEFFC7FFFFFD113FFFFFFFFFFFFFFFFFF1EFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFCEFFFFFFFFFFFFFFFFFF787FFFFFFE7F4FFFFFFFFFFFFE65FFFFFFFFFFCFFFFFFFFFFFFFFFFFFBCFFFFFFFFDD37FFFFFFFFFFFF2DF7FFFFFFFFBFFFFFFFFFFFFFFFFFDBFFFFFFF",
	mem_init2 => X"FFF97FFFFFFFFFFFFA5FBFFFFFFFFAFFFFFFFFFFFFFFFFFBE6EFFFFFFFFEBFFFFFFFFFFFF4FB7BFFFFFFF79FFFFFFFFFFFFFFFFFE9FF7FFFFE7AB7FFFFFFFFFFF977F7FFFFFFC48FFFFFFFFFFFFFFFFFF776FFFFFFFF4EB7FFFFFFFFFCFE577FFFFFED87FFFFFFFFFFFFFFFFEC49FFFFFFFFC5C7FFFFFFFFFFC4EFEDFFFFF692FFFFFFFFFFFFFFFFFF8003FFFFFFF7E7FFFFFFFFFFFADBF5FFFFFFFFFFFFFFFFFFFFFFFFFF93FCFFFFFFFDFFFFFFFFFFFFE1FFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFC3EBFFFFFFFFFCFFFFFFFFFEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFF5FFFFFFFFFE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FE7FFFFFFFFDC0FBF7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFDAFFFFFFFFE953F7FF7FFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFEF0DFFFFFFFFFFFDFFFFFFFFFFFFFFFF7FFFFFFFFFFFFEB4BFFFFFF7B6FFAFD1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAF1ADFFFFFFFF6F7FB3F173FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFE51D7FFFFFFFFFF6EDBA7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE87D2EF0FFFFFFFF15F4CB41FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD39F09FFDFFFFFFFEB3FCDF38B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CBB9FFBFFFFFFFF27FFDFCB41FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDD356F3B",
	mem_init0 => X"FFFFFFF877F7CC8CA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E5FFFBFBFFFFFFFF6FFFFD5F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BAFF7837FFFFFF785FFFF876FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1D9FFFE61FFFFFFCF97FFFE7CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F93FFEDFFFFFFFF9F7FFFF4EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFF9F07FFFFFDBFFFFFD79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE487FFFDEBFFFFFEBBFFFFF55BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA4BFFFF3CFFFFFF1FBFFFFD3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF37FFDBF3FFFFFEBCFFFFF587FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAFFFFDFCFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y13_N0
\imRead_clk|altsyncram_component|auto_generated|mux2|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~0_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a68~portadataout\)) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a56~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a68~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a56~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~0_combout\);

-- Location: LCCOMB_X52_Y13_N10
\imRead_clk|altsyncram_component|auto_generated|mux2|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~1_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~0_combout\ & 
-- (\imRead_clk|altsyncram_component|auto_generated|ram_block1a92~portadataout\)) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~0_combout\ & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a80~portadataout\))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|mux2|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a92~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a80~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|mux2|_~0_combout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~1_combout\);

-- Location: LCCOMB_X52_Y13_N8
\r~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~0_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~1_combout\))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- (\imRead_clk|altsyncram_component|auto_generated|mux2|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|mux2|_~3_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \imRead_clk|altsyncram_component|auto_generated|mux2|_~1_combout\,
	combout => \r~0_combout\);

-- Location: LCCOMB_X50_Y21_N0
\r~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~1_combout\ = (\process_0~16_combout\ & (((\imRead_hr|altsyncram_component|auto_generated|q_a\(8))))) # (!\process_0~16_combout\ & (\process_0~8_combout\ & ((\r~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datab => \process_0~8_combout\,
	datac => \imRead_hr|altsyncram_component|auto_generated|q_a\(8),
	datad => \r~0_combout\,
	combout => \r~1_combout\);

-- Location: FF_X50_Y21_N1
\r[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[0]~reg0_q\);

-- Location: M9K_X33_Y32_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a21\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFC5F07C3FFFF5F7FFFFFF1BFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E3F2FFFF353FFFFFFCBFFFFE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E8FC3FFFEE3FFFFFFFFBFFFFE7E3FFFFFFFFFFFFFFFFFFFFFFFFFFFCFABF1B7FFF47FFFFFFFBFFFFF3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F0FC43FFFE3FFFFFFFC7FFFFABC5FFFFFFFFFFFFFFFFFFFFFFFFFFFA407F06FFFFB7FFFFFFF1FFF7F4217FFFFFFFFFFFFFFFFFFFFFFFFFFF053FC5FBFFD7FFFFFFFEBFF07FF47FFFFFFFFFFFFFFFFFFFFFFFFFFFE83FF0FE7FF9FFFFFFFFDFFD5FC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FFCBFE3F87FFFFFFFFBFA0FF40FFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFF9BF7FFFFFFFFDBD3FFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47AFFFFFFFFF9DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E7FFFFFFFFE507FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3FFFFFFFFFFACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4FFFFFFFFFF4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFF7FFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9FFFFFFFFFFAFFFFFFFFFFFFBBFFFFFFFFFFFFFFFF9FFE7FFFFFFFFF8FFFFFFFFFFFDF9FFFFFFFFFE0FFFFFFFFFFFFFFFFC3FF1FFFFFFFDFF7FFFFFFFFFFCBFFFFFFFFFFF83FFFFFFFFFFFFFFF",
	mem_init1 => X"F0FFE7FFFFFFE3FAFFFFFFFFFFF950FFFFFFFFFE0FFFFFFFFFFFFFFFFC3FF9FFFFFFFD1FFFFFFFFFFFFF387FFFFFFFFF8BFFFFFFFFFFFFFFFF0FFE7FFFFFFFC73FFFFFFFFFFFE3FFFFFFFFFFE2FFFFFFFFFFFFFFFFC3FF9FFFFFFFF5AFFFFFFFFFFFFEBFFFFFFFFFF8FFFFFFFFFFFFFFFFF0FFC7FFFFFFFE17FFFFFFFFFFFF5FFFFFFFFFFF3FFFFFFFFFFFFFFFFC3FF0FFFFFFFFE7FFFFFFFFFFFFEDFFFFFFFFFFCFFFFFFFFFFFFFFFFF8FFC3FFFFFFFF4FFFFFFFFFFFFFAFFBFFFFFFFF3FFFFFFFFFFFFFFFFE3FF0FFFFFE7FAFFFFFFFFFFFFFFDF87FFFFFFFCFFFFFFFFFFFFFFFFF8FFC3FFFFF2FE3FFFFFFFFFFFFFEBE1FFFFFFFF9FFFFFE00EFE3FFFFE7F",
	mem_init0 => X"F0FFFFFF3EFFFFFFFFFFFFFFFC66FFFFFFFFF7FFFFFF20DF77FFFF9FFEBFFFFFC9CFFFFFFFFFFFFFFF04FFFFFFFFE4FFFFFF6C17D5FFFFE5DF8FFFFFFE07FFFFFFFFFFFFFFF07FFFFFFFF91BFFFF808BF57FFFF177C41FFFFF49FFFFFFFFFFFFFFFD1FFFFFFFFE13FFFFFFCBFC5FFFFE11F917FFFFF1FFFFFFFFFFFFFFFFC7FBFFFFFF833FFFFFE47F8FFFFFC37E11FFFFF97FFFFFFFFFFFFFFFF2FDBFFFFFE0FFFFFFF03FE7FFFFA5FF9BFFF7FE3FFFFFFFFFFFFFFFFF9F9FFFFFF97FFFFFF07FF9FFFFEAFFEBFFFDFE3FFFFFFFFFFFFFFFFFCFCFFFFFFE7FFFFFFA6FFE7FFFFEBFEEFFFE1F3FFFFFFFFFFFFFFFFFF9E7FFFFFFFFFFFFFF3FFF9FFFFFFFFCFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y27_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a9\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF30FFFFFFFFFFFFFFFFFFFF5FFFFFBFFFFFFFFDFFFE7FFFFFFFFFFFFFD07FFFFFFFFFFFFFFFFFFF0FFFFFEFFFFFFFFEBFFF9FFFFFFFFFFFFFF85FFFFFFFFFFFFFFFFFFFF1FEFFFFFFFFFFFF5FEFE7FFFFFFFE7FEFFE2FFFFFFFFFFFFFFFFFFFFABFE7FCFFFFFFFF07C3F1FFFFFFFF9FFFFF97FFFFFFFFFFFFFFFFFFFFB7D7FE3FFFFFFFEBF1FC7DFFFFFFCFFA7F87FFFFFFFFFFFFFFFFFFFFFBE0FF9FFFFFFFF8BA7F48FFFFFFF8FF5FF5FFFFFFFFFFFFFFFFFFFFFD09FFF7FFFFFFFE84BFD4DFFFFFFFFFF1F1FFFFFFFFFFFFFFFFFFFFFFC37FE3FFFFFFFFF787F05FFFFFFFCBFCE07FFFFFFFFFFFFFFFFFFFFFFEBFFAFFFFFFFFF469FDBFFFFFFFF5FFCCF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFF8FFC7FFFFFFFFE0DFFBFFFFFFFFE7FE87FFFFFFFFFFFFFFFFFFFFFFFE1FC3FFFFFFFFFF77FEFFFFFFFFFC7FD3FFFFFFFFFFFFFFFFFFFFFFFFF378FFFFFFFFFFFFFFFFFFFFFFFF9FD5FFFFFFFFFFFFFFFFFFFFFFFFFEBCFFFFFFFFFFFFFFFFFFFFFBDFE1E1FFFFFFFFFFFFFFFFFFFFFFFFFFB43FE3FFFFFFFFFFFFFFFFFFCFFA42FFFFFFFFFFFFFFFFFFFFFFFFFFFEBFF7FFFFFFFFFCFFFFFFFFF6FD13FFFFFFFFFFFFFFFFFFFFFFFFFFFFA3FCFFBFFFFFFFBFFFFFFDFF3FF1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDE7FD3FFFFFF8FFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFF699FFCFFFFFFFBFFFFFF7FFFE2FFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFF5D7FE7FEFFFFCFFFFFFE3FEADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95FF3FEBFFFEBFFFF7F97F78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE1F9FF5FF7FAFFFF7FFBFE07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60EBFEBFEFFBF7FD3FE7E4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF874FFBFFBFEFFFF8FF1E17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF457FCFFEFFBF7FEDFFF9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF101FDFE3F6FF3FB7ED43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80B17FEFDFFCFF5A657FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4ABFFBF7FF3FC408FFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFEF0E58FDFFFCFD75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7C1C63CBF1C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E01CFF6FD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53F9FF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE141FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y21_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a33\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFF97FFFFFFFFFFFFFFFFF8F83FFFFFFFFFFFF07ABFFFFFFFFFFFFFFFFF57FFFFFFFFFFFFFFFFFA7E0FFFE3FFF7FFFF7E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFC3FFF8FFFCFFFF5BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E1FFFEBFFF3FFFE145FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FDFFFF8FFFBFFFF805FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE83FFFEFFFE1E7FF51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD04FFFE9FFF847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2FFF4A3FFF5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF37FFD72FFFAFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFE71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFF2DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBFFFE27FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4FFFFF567FFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF61BFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF39FFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFC7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBFFFFFFFFFFC7FFFF7EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFF7FFFFFE3FFFFC67FFFFFE013FFFFFFFFFFFFFFFFFFFFFFFFFFF88DFC7FFFFC3AFFFFF81BFFFF8001FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFA36FF9FFFFE54FFFFFF2DFFFFEE027FFFFFFFFFFFFFFFFFFFFFFFFFFF0F1FE3FFFFD81FFFFFE3FFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFCFE7F8FFFFFECFFFFFFBFFFFFFFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFD3F0FE3FFFFFF1FFFFFC7FFFFFFF47FFFFFFFFFFFFFFFFFFFFFFFFFFF47E3F8FFFFFFE7FFFFFFFFFFFFF49FFFFFFFFFFFFFFFFFFFFFFFFFFFE3F9FE3FFFFFEFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFF17F5F8FFFFFF6FFFFFFBFFFFFFF17FFFFFFFFFFFFFFFFFFFFFFFFFFFC5FD7C3FFFFFCFFFFFFEFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF17C5F0FFFF1F7FFFFFFEDFFFFF23FFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N0
\imRead_clk|altsyncram_component|auto_generated|mux2|_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~6_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a33~portadataout\) # 
-- (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a9~portadataout\ & 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \imRead_clk|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a33~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~6_combout\);

-- Location: M9K_X33_Y7_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a45\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF3FDFFFFD53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE31FFFFFF3FFFFFFBFFFFFF15FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E1FFFFF0BFFFFF9EFFFFFD37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47CFFFFE73FFFFFE2BFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3E1FFFF8E7FFFFF3EFFFFFEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80C7FFFD8AFFFFF7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECDFFFFDF1FFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC8FFFFFF87FFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3FFFFFFFBFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFE9",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFF9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E7FFFF37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE88FFFFCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE65FFFD7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79FFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFDFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEDF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFEE9FFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FFFEFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F3FFF517FEC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFDB9FFF9F5FFA407FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF217FF943FFE7FFFD1E3FFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFF830FFFFCFFFCFFFF278F",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE835FFFEBFFFBFFFE3E8FFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFF8727FFF9FFFDFFFF8FFBFFFFFFFFFFFFFFFFE01FFFFFFFFFFFFFFFFFE3E1FFFF7FFFFFFFC9FFFFFFFFFFFFFFFFFFF9A7FFFFFFFFFFFFFFFFF4FFFFFFDFFFEFFFF43FFFFFFFFFFFFFFFFFFFC37FFFFFFFFFFFFFFFF8EEFFFFF7FFD0007E99FFFFFFFFFFFFFFFFFFC47FFFFFFFFFFFFFFFFF160F2FE1FFFFD1B7E07FFFFFFFFFFFFFFFFFE13FFFFFFFFFFFFFFFFFE063E0027FFFC777F01FFFFFFFFFFFFFFFFFF187FFFFFFFFFFFFFFFFE95178005FFFDFFFFC3FFFFFFFFFFFFFFFFFFDA0FFFFFFFFFFFFFFFFFA1C1FFFF7FFFFFFFC7F5FFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N10
\imRead_clk|altsyncram_component|auto_generated|mux2|_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~7_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~6_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a45~portadataout\) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~6_combout\ & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a21~portadataout\ & 
-- ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~6_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a45~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~7_combout\);

-- Location: M9K_X33_Y29_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a93\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a93_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a93_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y31_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a57\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFA7FFFFFFFFFFFFFFF49FFFFFFC1FFFFFFFFFD61FFFFFFFFFC7FFFFFFE7FFFFFFFFFFFFFFFA07FFFFFF7FFFFFFFFFE0E7FFFFFFFFC5FFFFFFF03FFFFFFFFFFFFFFF723FFFFFFAFFFFFFFFFC3FFFFFFFFFF2FFFFFFF53FFFFFFFFFFFFFFFEFDFFFFFF813BFFFFFFDFFFFFFFFFFFCFFFFFFFC70FFFFFFFFFFFFFFAFE3FFFFFF963FFFFFFFFFFFFFFFFFFF1FFFFFFD1E1FFFFFFFFFFFFFEBFEFFFFFFC103FFFFFFFFFFFFFFFFFF1FFFFFFF9FEFFFFFFFFFFFFFF5FFBFFFFFFB83FFFFFFFFFFFFFFFFFFE3FFFFFFFFF5FFFFFFFFFFFFFCFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFEAFFFFFFFFFF1FFFFFFFFFFFFD7FFFFFFFFFFE1FFFFFFFFFFFFFFFFFF17FFFFFF",
	mem_init2 => X"FFFC3FFFFFFFFFFFEA5FFFFFFFFFFCFFFFFFFFFFFFFFFFFFC3FFFFFFFFFE0FFFFFFFFFFFFC2FFFFFFFFEF11FFFFFFFFFFFFFFFFFE9FFFFFFFFFF95FFFFFFFFFFFFB7BFFFFFFFC48FFFFFFFFFFFFFFFFFFD093FFFFFFF88BFFFFFFFFFFFFECFFFFFFFFC05FFFFFFFFFFFFFFFFFE1BFFFFFFFF875FFFFFFFFFFF4FF7FFFFFFFD027FFFFFFFFFFFFFFFFF8003FFFFFFF7E7FFFFFFFFFFFBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3FCFFFFFFFCFEFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C03FFFFFFFFFCFFFFFFFFFF97EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FAFFFFFFFFFFC5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FFFFFFFFF9A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67FFFFFFFFC34FFFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE347FFFFFFFF6F5BFF97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8BBFFFFFFFFE7E5FFF1F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57F7FFFFFFFFDFFEFFA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2FE09F9FFFFFFFF8FFFFFA1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F0FFEDFFFFFFFCBFFFFD001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E9DDFFDFFFFFFFF7FFFFF4153FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93FB1FFFA",
	mem_init0 => X"FFFFFFFE4FFFFF0067FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E1FFFF1FFFFFFFEB7FFFFF3E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97E3FFF80FFFFFFF6A5FFFF8FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F9FFF849FFFFFFCB7FFFFE3EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87D3FFF4DFFFFFFFBF5FFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7E3FFFDB1FFFFFFFFFFFFFF78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF451BFFEFCFFFFFFFBFFFFFFD4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB47FFFFF9FFFFFFDFFFFFFF0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC22FFFFFE1FFFFFDBFFFFFFD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32BFFFFF87FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y26_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a69\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"1DCB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC03F078172FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88AD03E508717BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEB69BF7F97F3BB39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AAFFEFF5FE7FC8C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99BFFFE3FD7F9FFB003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FC7FDFF3FC7F9F453FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76AFF9FEFFDFF3FE3F829FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA673FFBFDFF7FE7FEFE247FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6FD7F5FE7FDFF3",
	mem_init2 => X"FD3FCE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FF2FE3FBFFBFF7FBFE7E05FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC83FDBFBFFBFFFF7F97F3FE23FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF85EFFAFE7FFFF3FFFF3FEFFC47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FF5FF9FFFFFF9FFFFFFF1FE709FFFFFFFFFFFFFFFFFFFFFFFFFFFFDF1FFFFFFFFFFFF3FFFFFFF7F2F91FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFA7FFFFFFFF8FFFFFFEFF8FF0BFFFFFFFFFFFFFFFFFFFFFFFFFFF93FFFDFFFFFFFFEFFFFFFFFFE5FE1BFFFFFFFFFFFFFFFFFFFFFFFFFFD0BFFEFFFFFFFFF8FFFFFFFFFDFF807FFFFFFFFFFFFFFFFFFFFFFFFFC0F7FFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFE5A7FFFFFFFFFFFFFFFFFFFFFFFFF87EFFFFFFFFFFFF5FFFFFFFFFFFFBF2FFFFFFFFFFFFFFFFFFFFFFFFFDFF2FFFFFFFFFFFD6FFFFFFFFFFFCFE7FFFFFFFFFFFFFFFFFFFFFFFF07FD7FFFFFFFFFF139FFFFFFFFFFEBF83FFFFFFFFFFFFFFFFFFFFFFFD0FFDFFFFFFFFFFD2CBFFFFFFFFFF9FF83FFFFFFFFFFFFFFFFFFFFFFF6FFE9FFFFFFFFFF175FFFFFFFFFFEFFC57FFFFFFFFFFFFFFFFFFFFFEFD7FCFFFFFFFFFFEFC7FFFFFFFFFD3FEB07FFFFFFFFFFFFFFFFFFFFFD70FFCFFFFFFFFFF3F87FFFFFFFFF2FFFF2FFFFFFFFFFFFFFFFFFFFFC7E7FE1FFFFFFFFFCFE3FFFFFFFFF97FCBD5FFFFFFFFFFFFFFFFFFFFD3FEFFEFFFFFFFFFF0FC7FFFFFFFF",
	mem_init0 => X"E7FF7FEFFFFFFFFFFFFFFFFFFFFFBFFEFF9FFFFFFFFFCBE1FFFFFFFFF4FEFFF7FFFFFFFFFFFFFFFFFFFE1FFEFFFFFFFFFFFFE9F97FFFFFFFFD7FFFFE8FFFFFFFFFFFFFFFFFFFA9FFDFFFEBFFFFFFFF2A9FFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFEB47FFFFA1BFFFFFFFE1CFFFFFFFFFFFFFFF503FFFFFFFFFFFFFFFFFF1E7FDFFF09FFFFFFFF921FFFFFFFFEEFFFF8BC7FFFFFFFFFFFFFFFFFAFCBFBFE840FFFFFFF7FD7FFFFFFFFE3FFFE3F8FFFFFFFFFFFFFFFFF97F8FFFF83E7FFFFFFFFF7FFFFFFFFF2FFFF6FC7FFFFFFFFFFFFFFFFC7FD7FFFEBF37FFFFFFFF0FFFFFFFFF8FFFFE7F8FFFFFFFFFFFFFFFFF3FFBFFFF4FF3FFFFFFA7EBFFFFFFFFF1FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a69_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N28
\imRead_clk|altsyncram_component|auto_generated|mux2|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~4_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a69~portadataout\))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a57~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datab => \imRead_clk|altsyncram_component|auto_generated|ram_block1a57~portadataout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a69~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~4_combout\);

-- Location: M9K_X33_Y24_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a81\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF383F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDFF0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a81_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a81_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N14
\imRead_clk|altsyncram_component|auto_generated|mux2|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~5_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~4_combout\ & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a93~portadataout\) # 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~4_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a81~portadataout\ & 
-- \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a93~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~4_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a81~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~5_combout\);

-- Location: LCCOMB_X34_Y23_N12
\r~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~2_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~5_combout\))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- (\imRead_clk|altsyncram_component|auto_generated|mux2|_~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|mux2|_~7_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|mux2|_~5_combout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2),
	combout => \r~2_combout\);

-- Location: M9K_X53_Y30_N0
\imRead_hr|altsyncram_component|auto_generated|ram_block1a9\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000009000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000100000000010000000000000000000000000000000000000000000000000F80000000178000000027400000003FC00000001F800000001F800000000600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000080000000000000000000000000000040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/hand3e_40x131.mif",
	init_file_layout => "port_a",
	logical_ram_name => "minutes_hand:imRead_hr|altsyncram:altsyncram_component|altsyncram_b9r3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \imRead_hr|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_hr|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N16
\r~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~3_combout\ = (\process_0~16_combout\ & (((\imRead_hr|altsyncram_component|auto_generated|q_a\(9))))) # (!\process_0~16_combout\ & ((\r~2_combout\) # ((!\process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~2_combout\,
	datab => \process_0~16_combout\,
	datac => \process_0~8_combout\,
	datad => \imRead_hr|altsyncram_component|auto_generated|q_a\(9),
	combout => \r~3_combout\);

-- Location: FF_X34_Y23_N17
\r[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \r~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[1]~reg0_q\);

-- Location: M9K_X53_Y28_N0
\imRead_hr|altsyncram_component|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000060000000006000000001F000000001F800000001F800000000F0000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/hand3e_40x131.mif",
	init_file_layout => "port_a",
	logical_ram_name => "minutes_hand:imRead_hr|altsyncram:altsyncram_component|altsyncram_b9r3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \imRead_hr|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_hr|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y15_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a82\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF600F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a82_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a82_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y20_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a70\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"E238FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63FC0F87E89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7537FFBF38E97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4977FFFEFF7DCC5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8597FDFEBFFFF372FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC66F3FFFFAFFFFF47F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFEFFFFFAFBABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC95FFFFF7FAFFFFFFFFD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58EDFC7FFFEBFD7F8FFEBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BFEFFAFFFFAFFD",
	mem_init2 => X"FEFFBFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EFF5FFBFDFE7FC7FDFFFF79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF35FFE3FDFE7F8FFFFEFFCFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7997FDFE3FFFEFFFFFDFF7FF79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FBFE7FFFFFFAFFFFFFFDFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFC3FDFFFFFFEFFFFFFF8FF5F6BFFFFFFFFFFFFFFFFFFFFFFFFFFFF8DFFDFFFFFFFFFBFFFFFFF7FFFF73FFFFFFFFFFFFFFFFFFFFFFFFFFFECFFE1FFFFFFFFE3FFFFFFFFEBFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFCF4FFFFFFFFFFFFFFFFFFFFFFBFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFEEBFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFF3FFA5FFFFFFFFFFFFFFFFFFFFFFFFFE7F9FFFFFFFFFFFF8FFFFFFFFFFFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFAFFDFFFFFFFFFFFA8FFFFFFFFFFFBFDBFFFFFFFFFFFFFFFFFFFFFFFFFBFEFFFFFFFFFFFEDFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFAFFFE7FFFFFFFFFCCF3FFFFFFFFFFEFFFBFFFFFFFFFFFFFFFFFFFFFFCB7FF7FFFFFFFFFFEFAFFFFFFFFFF9FFFAFFFFFFFFFFFFFFFFFFFFFFE0EFFD3FFFFFFFFF93F9FFFFFFFFFEFFF4FFFFFFFFFFFFFFFFFFFFFFFAFEFFBFFFFFFFFFFDFF7FFFFFFFFFDFF87DFFFFFFFFFFFFFFFFFFFFFFFF9FFDFFFFFFFFFF7FFFFFFFFFFFA7FF3CBFFFFFFFFFFFFFFFFFFFFEFF97FF7FFFFFFFFFFFBFFFFFFFFF",
	mem_init0 => X"DFFFBF93FFFFFFFFFFFFFFFFFFFE5FF1FFEFFFFFFFFFB3DFFFFFFFFFF3FF9FFA7FFFFFFFFFFFFFFFFFFFE7FE3FFFFFFFFFFFF666FFFFFFFFFE7FF7FD6FFFFFFFFFFFFFFFFFFFDEFFFFFFC7FFFFFFFED57FFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFD3AFFFFFFE3FFFFFFFDEBFFFFFFFFFFFFFFFAFBFFFFFFFFFFFFFFFFFEDFBFFFFCF6FFFFFFFF6BDFFFFFFFFF1FFFFF7B7FFFFFFFFFFFFFFFFF4FF7FFFF79EFFFFFFFFFA7FFFFFFFF9BFFFFDF6FFFFFFFFFFFFFFFFFE7FF7FFFBBDBFFFFFFFFCBFFFFFFFFFDFFFF0FF9FFFFFFFFFFFFFFFFFFFFBFFFFDF4FFFFFFE0FFFFFFFFFFFF7FFFE7FF3FFFFFFFFFFFFFFFFCFFFFFFFBFEFFFFFFFD9D3FFFFFFFFEFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a70_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a70_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y28_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a58\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFF5FFFFFFFFFFFFFFFF31FFFFFFFDFFFFFFFFFA9FFFFFFFFFF37FFFFFFF9FFFFFFFFFFFFFFF9FFFFFFFFAFFFFFFFFFFF9FFFFFFFFFDBFFFFFFEFFFFFFFFFFFFFFFFCBDFFFFFFEDF1FFFFFFFDD7FFFFFFFFFDFFFFFFF20FFFFFFFFFFFFFFF1FA7FFFFFBF83FFFFFFFFFFFFFFFFFFB3FFFFFFFBEFFFFFFFFFFFFFFD7EFFFFFFF69CFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFF3FDFFFFFFFEFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFD7FFFFFFFFFFFFE3FFFFFFFFFD5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFBFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFE5FFFFFFFFFFDFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFE5BFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD3FFFFFFFEF1DFFFFFFFFFFFFFFFFFE7FFFFFFFFFFE9FFFFFFFFFFFE70FFFFFFFFFB77FFFFFFFFFFFFFFFFF27FFFFFFFFF737FFFFFFFFFFE3FAFFFFFFFF3FBFFFFFFFFFFFFFFFFFDE40FFFFFFFBFBFFFFFFFFFFFBFFFFFFFFFF802FFFFFFFFFFFFFFFFFF7FFFFFFFFFF9E9FFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC03FFFFFFFFFD7FFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FDFFFFFFFFFF39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFFFFFFA1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FFFFFFFFFFFF7FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFF1F27FFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF37FFFFFFFFDFFAFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2BCBFFFFFFFF3FE17FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FF73FFFFFFFFFFFFFF1F9E03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF16F77FE3FFFFFFFD7FFDFEFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF735E7FFEFFFFFFFF8FFFFFBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECA7FFFFD",
	mem_init0 => X"FFFFFFF9BFFFFE7857FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDEFFFFFA3FFFFFFF4BFFFFEFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFFBFFFFFFFF899FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFBA7FFFFFFD7C7FFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFCBEFFFFFFF7FBFFFFBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBEDFFFEF7FFFFFF87FFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF67FFFFF3FFFFFF7FFFFFFA57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4B9FFFFFFFFFFFFBFFFFFFED7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFFFFFEFFFFFFC7FFFFFFABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD7FFFFFF7FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y20_N20
\imRead_clk|altsyncram_component|auto_generated|mux2|_~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~8_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a70~portadataout\)) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a58~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a70~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a58~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~8_combout\);

-- Location: M9K_X33_Y12_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a94\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a94_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a94_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y20_N14
\imRead_clk|altsyncram_component|auto_generated|mux2|_~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~9_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~8_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a94~portadataout\) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~8_combout\ & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a82~portadataout\ & 
-- ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a82~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~8_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a94~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~9_combout\);

-- Location: M9K_X33_Y36_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a46\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFDFFFFFFEABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFFFFFFFFFFC5FFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EFFFFFFB7FFFFE63FFFFFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB7FFFF4CFFFFFD53FFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFF33FFFFFEB17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBFFFFE59FFFFF8FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE133FFFFBEFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC37FFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF7",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FFFFEC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77FFFF2C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CBFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFF1FFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFE1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFD03FFEA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70FFFFDE7FFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77FFC46FFFFFBFFDBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFF71BFFFFFFFCFDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFEFFFAFFFFDFB3",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E9FFFF3FFE3FFFDFF6FFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFF77DFFFFFFFFAFFFF7FC7FFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFF7FFFFFFFFFFFFFFFFFFFE5BFFFFFFFFFFFFFFFFFAFFFFFFFFFF8FFFF3FFFFFFFFFFFFFFFFFFFC7CFFFFFFFFFFFFFFFFFF2FFFFFFFFFEFFFDF67FFFFFFFFFFFFFFFFFFBBBFFFFFFFFFFFFFFFFEF9FEFFE7FFF82E47FEFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFF9F9F9FFDFFFE477DEFFFFFFFFFFFFFFFFFFFF67BFFFFFFFFFFFFFFFFE6AE6FFFBFFFAFFFFBFFFFFFFFFFFFFFFFFFFE5EFFFFFFFFFFFFFFFFF9FFFFFFFFFFE3FFFD9FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y20_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFEFFFFFFFFFFFFFFFFFFFFF8BFFFFFFFFFFFFFE27FFFBFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFD3FFFEFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFEFFFFFF8FFFFFFFEBFFFFBFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFF97F97FBFFFFFFFFF7DFFEFFFFFFFFFFF9FF67FFFFFFFFFFFFFFFFFFFF47EFFFFFFFFFFFF7FEFFBDFFFFFFD3FDFFBBFFFFFFFFFFFFFFFFFFFFE5FFFFEFFFFFFFFB7DFFB7FFFFFFFFFF3FEBFFFFFFFFFFFFFFFFFFFFFEFE7F87FFFFFFFE7F4FEB1FFFFFFE3FFFEFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFFFFFFFFC87FFFBFFFFFFFF7FF7FFFFFFFFFFFFFFFFFFFFFFFFD7FFDFFFFFFFFFB97FE7FFFFFFFFBFF33F",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFF7FFB7FFFFFFFFF71FF4FFFFFFFFE9FE7BFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFD7FFFFFFFFFFFBDFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF7FE9FFFFFFFFFFFFFFFFFFFFFFFFFD4BFFBFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFDFFFFFFFFFFFFFFFFFFFDFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFF94FFDFFFFFFFFFEFFFFFFFFF1FF7C7FFFFFFFFFFFFFFFFFFFFFFFFFFF9DFB7FFFFFFFFE3FFFFFFFFEFFEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7FFFEFFFFFFFEFFFFFFC7FC7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF176FF3FFFFFFE3FFFFFF8FF3FD3FFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFF26FFFFF9FFFFAFFFFFFFFFF7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FFFFF7FFFF3FFFDFFAFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DFE7FAFE3FCFE7F1FF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1DE7FD7FDFE3F8FEBFFFEB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78FFFDFF7F8FE3FFFFEDEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFFFDFE3F8FE3FE66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF1FEFF8FEBFC7F2B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF6EFFDFE3FAFFBC9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEB55FF7F8FEBFDFF5FFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFF4F13BFE3F9F228BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD183C30C140E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1FE3009037FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C0600E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y4_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a34\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFF86FFFFFFFFFFFFFFFFFE6FFFFFFDFFF8FFFF7F97FFFFFFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFDBEFFFFFBFFEBFFFE9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FFFFFFEFFFAFFFFA73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFEBFFFFEBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF772FFFFEFFFDFFFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFFFF3FFFDFFFFEF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFFDEEFFFFB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D7FF35FFFFA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFC8DFFF9FFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFF523FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E7FFFDD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5FFFFB1FFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E3FFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6FFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEFFFFFFFFFFBFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38FF8FFFFFFEFFFFFFB9FFFFF1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFF71FDBFFFFF7CFFFFFFE7FFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFDD37FEFFFFFAD3FFFFFD7FFFFF1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEFFFFFFFD7FFFFFF9BFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFFFFFFFFEBFFFFFF7FFFFFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFEDFFFFFFFFFFFFFF3BFFFFFFFFFFFFFFFFFFFFFFFFFFFB7FFFFFFFFFF9FFFFFF0FFFFFFFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFDDFEFFFFFFFFF7FFFFFE7FFFFFFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FEBFFFFFFFF8FFFFFFCFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFAFFFFFFFFD7FFFFFF1D7FFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFBFFFFFF3FBFFFFFFDF1FFFF5FFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y20_N16
\imRead_clk|altsyncram_component|auto_generated|mux2|_~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~10_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a34~portadataout\))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a10~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a34~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~10_combout\);

-- Location: M9K_X53_Y34_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a22\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFDBFFFFFFFFCF8FFFFFFF74FFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FDFFFFFFECFFFFFFFFF4FFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDF7FFFFFFF9CFFFFFFFCFFFFF9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFD3FE47FFF3FFFFFFFE5FFFFECFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFD7F9FFFFFFFFFFFFFFFFFFFFFFFFFFFDD7FFFA7FFF8FFFFFFFF6FFFFFB7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADFF9FDFFEFFFFFFFFF7FFB7C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CFFEFFFFF6FFFFFFFFE7FA9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFF7F1BFFFFFFFFFFF7FFFFFFEFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFEFE9FFFFFFFFC7CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEB7DFFFFFFFFFFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE77BFFFFFFFFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3FFFFFFFFFD37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB7FFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFF87FFFFFFFFFFFFFFFFFFFC3FFFFFFFFFB7FFFFFFFFFFAFDFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFF6FFFFFFFEFEFFFFFFFFFFFF7C3FFFFFFFFFBFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFBFFFFFFEFFDFFFFFFFFFFFA7EFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFEFFFFFFFAF8FFFFFFFFFFFFD7FFFFFFFFFFB7FFFFFFFFFFFFFFFFFFFFBFFFFFFFFAFFFFFFFFFFFFFC7FFFFFFFFFEDFFFFFFFFFFFFFFFFFFFFEFFFFFFFF25FFFFFFFFFFFF97FFFFFFFFFFB7FFFFFFFFFFFFFFFFFFFFBFFFFFFFFE7FFFFFFFFFFFF2FFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFF3FFFFFFFFFFF7FFFFFFFFFFFFFFFF7FFFFFFFFFFFFBFFFFFFFFFFFFFD7FFFFFFFFFFDFFFFFFFFFFFFFFFFDFFFFFFFFFEFFD7FFFFFFFFFFFFF3FFFFFFFFFFF7FFFFFFFFFFFFFFFF7FFFFFFFFF4FFBFFFFFFFFFFFFFE7DDFFFFFFFF7FFFFFFFFE7C3FFFFDFF",
	mem_init0 => X"FFFFFFFCFE3FFFFFFFFFFFFFFFA8FFFFFFFFCFFFFFF8DF1F0FFFFF7FFD7FFFFFF73FFFFFFFFFFFFFFFFB7FFFFFFFFA0FFFFE93EFCBFFFFDFFF7FFFFFFDBFFFFFFFFFFFFFFFEFFFFFFFFFFEE7FFFF8077F2FFFFFE87FBDFFFFF37FFFFFFFFFFFFFFFEFFFFFFFFFFEDFFFFFFF4FDBFFFFDEDF6E7FFFFEEFFFFFFFFFFFFFFFFBFFBFFFFFFFEFFFFFFFBFFFFFFFF3FFDEDFFFFFE7FFFFFFFFFFFFFFFF5FC7FFFFFFFFFFFFFF7FFFBFFFFD9FF6FFFFFFFBFFFFFFFFFFFFFFFFF7E7FFFFFFE7FFFFFFFBFFEFFFFF5FFD3FFF2FFFFFFFFFFFFFFFFFFFFD73FFFFFFE7FFFFFF99FFFBFFFFD7FF1FFFEFFDFFFFFFFFFFFFFFFFFFA9FFFFFFFFFFFFFFEDFFFEFFFFFFFFF7F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y20_N10
\imRead_clk|altsyncram_component|auto_generated|mux2|_~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~11_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~10_combout\ & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a46~portadataout\) # 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~10_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a22~portadataout\ & 
-- \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a46~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~10_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~11_combout\);

-- Location: LCCOMB_X34_Y20_N28
\r~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~4_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\imRead_clk|altsyncram_component|auto_generated|mux2|_~9_combout\)) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~9_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \imRead_clk|altsyncram_component|auto_generated|mux2|_~11_combout\,
	combout => \r~4_combout\);

-- Location: LCCOMB_X34_Y20_N24
\r~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~5_combout\ = (\process_0~16_combout\ & (((\imRead_hr|altsyncram_component|auto_generated|q_a\(10))))) # (!\process_0~16_combout\ & (\process_0~8_combout\ & ((\r~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datab => \process_0~8_combout\,
	datac => \imRead_hr|altsyncram_component|auto_generated|q_a\(10),
	datad => \r~4_combout\,
	combout => \r~5_combout\);

-- Location: FF_X34_Y20_N25
\r[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \r~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[2]~reg0_q\);

-- Location: M9K_X33_Y5_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a47\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF1FFFFFFE07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8787FFFFF1FFFFFC3FFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F1FFFFFC7FFFFF01FFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC7FFFF81FFFFF881FFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1FFFF803FFFFE78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8707FFFE3CFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFF3FFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFFFFCFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFF1FFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFF3",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFE01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00FFFF907FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF833FFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF3FFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFF801FFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFE20FFF003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFE01FFF8FFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FF8E7FFE3FFFE1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFF9FFF9FFFF0FC7",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C3FFFE7FFE7FFFC3F1FFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFF8F87FFF8FFF9FFFF0FFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFC3FFFFFE3FFE7FFFC3FFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFF1FFFFFF8FFF9FFFF87FFFFFFFFFFFFFFFFFFE00FFFFFFFFFFFFFFFFFC71FFFFE3FFE0003E03FFFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF001F0018FFF8000FC0FFFFFFFFFFFFFFFFFFC00FFFFFFFFFFFFFFFFFC003C0003FFE3883F03FFFFFFFFFFFFFFFFFF803FFFFFFFFFFFFFFFFF070F0000FFF9FFFF87FFFFFFFFFFFFFFFFFFE01FFFFFFFFFFFFFFFFFC3E1FFFE3FFE7FFFE3FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y34_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a23\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFE3F0FC3FFFC3CFFFFFFF807FFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC3F0FFFF023FFFFFFE07FFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F0FC3FFFF01FFFFFFF87FFFFC7E1FFFFFFFFFFFFFFFFFFFFFFFFFFF87C7F00FFFF87FFFFFFF3FFFFF1F87FFFFFFFFFFFFFFFFFFFFFFFFFFE1E1FC01FFFF1FFFFFFFC7FFFFC3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFC387F01FFFFCFFFFFFFF9FFFBF0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFF003FC3FBFFE3FFFFFFFE3FFCFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFE01FF1FC3FF9FFFFFFFF8FFC3FC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFC7F87FC7FFFFFFFF1FC1FF81FFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFF07F3FFFFFFFFE7E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F8FFFFFFFFF8E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C7FFFFFFFFF20FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFC7FFFFFFFFFFFC7FFFFFFFFFFFFFFFF0FFFFFFFFFFFFFCFFFFFFFFFFF1FFFFFFFFFFFF1FFFFFFFFFFFFFFFFC3FF8FFFFFFFDFE3FFFFFFFFFFE3E7FFFFFFFFFC7FFFFFFFFFFFFFFF",
	mem_init1 => X"F0FFC3FFFFFFF1F1FFFFFFFFFFFCE1FFFFFFFFFF1FFFFFFFFFFFFFFFFC3FF0FFFFFFFC3C7FFFFFFFFFFF00FFFFFFFFFFC7FFFFFFFFFFFFFFFF0FFC3FFFFFFF863FFFFFFFFFFFE0FFFFFFFFFFF1FFFFFFFFFFFFFFFFC3FF0FFFFFFFF81FFFFFFFFFFFFC7FFFFFFFFFFC7FFFFFFFFFFFFFFFF0FFC3FFFFFFFF0FFFFFFFFFFFFF9FFFFFFFFFFE1FFFFFFFFFFFFFFFFC3FF0FFFFFFFFE3FFFFFFFFFFFFE3FFFFFFFFFF87FFFFFFFFFFFFFFFF0FFC3FFFFFFFF1FFFFFFFFFFFFFC7FFFFFFFFFE1FFFFFFFFFFFFFFFFC3FF0FFFFFFFF8FFFFFFFFFFFFFF8FCFFFFFFFF87FFFFFFFFFFFFFFFF0FFC3FFFFF9FC7FFFFFFFFFFFFFF1E3FFFFFFFE1FFFFFE001FFFFFFFC3F",
	mem_init0 => X"F0FFFFFE1F1FFFFFFFFFFFFFFC71FFFFFFFF87FFFFF8003F8FFFFF0FFC3FFFFFC38FFFFFFFFFFFFFFF80FFFFFFFFE1FFFFFE000FE3FFFFC3FF0FFFFFF847FFFFFFFFFFFFFFF07FFFFFFFF803FFFFFF83F8FFFFF00FC03FFFFF83FFFFFFFFFFFFFFFE3FFFFFFFFE00FFFFFFE1FE3FFFFC03F00FFFFFF1FFFFFFFFFFFFFFFFC7FFFFFFFF81FFFFFFF07F0FFFFF00FC03FFFFF8FFFFFFFFFFFFFFFFF8FE7FFFFFE1FFFFFFF83FC3FFFFC3FF07FFE7FC7FFFFFFFFFFFFFFFFE1F1FFFFFF8FFFFFFF81FF0FFFFF1FFC7FFF8FE1FFFFFFFFFFFFFFFFFE38FFFFFFFBFFFFFFC1FFC3FFFFC7FF1FFFF1F0FFFFFFFFFFFFFFFFFFC47FFFFFFFFFFFFFC0FFF0FFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y37_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a11\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFC387FFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFF0FFFC3FFFFFFFFFFFFF8C3FFFFFFFFFFFFFFFFFFE1FFFFFE7FFFFFFF87FFF0FFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFC3FF3FF1FFFFFFFE1FFFC3FFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFC7FCFFC7FFFFFFF8FE3F0FFFFFFFF1FF3FF8FFFFFFFFFFFFFFFFFFFFF8FE3FE3FFFFFFFE1F0FC03FFFFFFE7FC7FC7FFFFFFFFFFFFFFFFFFFFF0F1FF1FFFFFFFF87C3F007FFFFFF8FF8FC3FFFFFFFFFFFFFFFFFFFFFE18FFCFFFFFFFFF0E1FC03FFFFFFF1FE3E1FFFFFFFFFFFFFFFFFFFFFFC07FE3FFFFFFFFC007F07FFFFFFFC7FC70FFFFFFFFFFFFFFFFFFFFFFF81FF1FFFFFFFFF803FC3FFFFFFFF8FF887",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFF87FCFFFFFFFFFF83FF1FFFFFFFFF3FF07FFFFFFFFFFFFFFFFFFFFFFFF0FE3FFFFFFFFFFFFFFFFFFFFFFFC7FC3FFFFFFFFFFFFFFFFFFFFFFFFE0F1FFFFFFFFFFFFFFFFFFFFFFFF8FC3FFFFFFFFFFFFFFFFFFFFFFFFFE1C7FFFFFFFFFFFFFFFFFFFFFFFE3E1FFFFFFFFFFFFFFFFFFFFFFFFFFC03FE7FFFFFFFFFFFFFFFFFFE7FC60FFFFFFFFFFFFFFFFFFFFFFFFFFFC1FF1FFFFFFFFF9FFFFFFFFF9FF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FCFFFFFFFFFE7FFFFFFFFE3FE07FFFFFFFFFFFFFFFFFFFFFFFFFFFF83E3FE7FFFFFF9FFFFFFE7F8FF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFF839FF9FFFFFFE7FFFFFF9FF1F07FFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFF807FC7FFFFFF9FFFFFFE3FC703FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FF1FE3FFFE7FFFE7FCFF803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FCFF9FFFF9FFFF9FF1FE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83F3FE7F8FE7F9FE7FC7F03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF818FF1FE3F9FE7F8FF9E07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF803FC7F8FE7F9FF3FE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07F3FF3F9FE7FCFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01CFF8FE7F9FF1F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FE3F9FE7FE003FFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFF800FCFE7F8FC007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0003F9FE0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y3_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a35\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFC07FFFFFFFFFFFFFFFFF1F87FFF8FFF9FFFF8FC7FFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFFFC7F1FFFE7FFE7FFFC3E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F87FFF9FFF9FFFF8787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E1FFFE7FFE7FFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F87FFF9FFF8FFFFC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FFFE7FFE207FF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FFE11FFF801FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFF807FFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFCFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF3FFFE01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC18FFFF8FFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFCFFFFF9F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FF0FFFFFFF3FFFFE70FFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFFFF003FE3FFFFCF9FFFFF803FFFFC001FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFC387F0FFFFF027FFFFE03FFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFFFE1F1FC3FFFFE01FFFFFC7FFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFF87C3F0FFFFFF07FFFFF1FFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFE1F0FC3FFFFFF3FFFFFC7FFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFF8FC3F0FFFFFFCFFFFFF9FFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFE3F0FC3FFFFFE3FFFFFE3FFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC3F0FFFFFF9FFFFFF8FFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F0FC3FFFFFE7FFFFFF3EFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC3F0FFFFFF1FFFFFFC63FFFF87FFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N26
\imRead_clk|altsyncram_component|auto_generated|mux2|_~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~14_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a35~portadataout\))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a11~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a35~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~14_combout\);

-- Location: LCCOMB_X34_Y23_N20
\imRead_clk|altsyncram_component|auto_generated|mux2|_~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~15_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~14_combout\ & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a47~portadataout\) # 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~14_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & 
-- \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a47~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|mux2|_~14_combout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~15_combout\);

-- Location: M9K_X5_Y24_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a83\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a83_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a83_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y30_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a95\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a95_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a95_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y26_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a71\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0008FF3FC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800FE3FCFF9E003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE004FF8FF3FC7FC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01F1FE3FCFF1FF380FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FC7F8FF3FC7FCFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808FF1FE3FCFF1FE3FC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81F3FE7F8FF3FCFF9FF103FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FC7F9FE3FCFF3",
	mem_init2 => X"FE7FCF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FF9FE7F8FF3FCFF1FE3F83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF823FE7F8FFFFCFFFFC7F9FF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83CFF8FFFFFFF3FFFFFFC7F883FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83F1FF3FFFFFFCFFFFFFF3FE383FFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FE7FFFFFFFFF3FFFFFFCFF9F87FFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FF8FFFFFFFFFCFFFFFFFBFC7F87FFFFFFFFFFFFFFFFFFFFFFFFFFFC07FF3FFFFFFFFF3FFFFFFFFF3FF07FFFFFFFFFFFFFFFFFFFFFFFFFFE19FFDFFFFFFFFFFFFFFFFFFF8FFC0FFFFFFFFFFFFFFFFFFFFFFFFFFE1E3FFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFE30FFFFFFFFFFFFFFFFFFFFFFFFFF0FC7FFFFFFFFFFFFFFFFFFFFFFFF1E1FFFFFFFFFFFFFFFFFFFFFFFFF07F1FFFFFFFFFFF01FFFFFFFFFFFC7E1FFFFFFFFFFFFFFFFFFFFFFFF87FE3FFFFFFFFFF801FFFFFFFFFFE3FC3FFFFFFFFFFFFFFFFFFFFFFFC1FF8FFFFFFFFFFE107FFFFFFFFFF1FF87FFFFFFFFFFFFFFFFFFFFFFE03FF1FFFFFFFFFF0F0FFFFFFFFFFC7FE07FFFFFFFFFFFFFFFFFFFFFF187FE7FFFFFFFFFC7E3FFFFFFFFFE3FF10FFFFFFFFFFFFFFFFFFFFFF0F1FF8FFFFFFFFFE1F8FFFFFFFFFF1FF8E1FFFFFFFFFFFFFFFFFFFFF87E3FF3FFFFFFFFF87E1FFFFFFFFFCFFC7E3FFFFFFFFFFFFFFFFFFFFC3FC7FC7FFFFFFFFE1F87FFFFFFFF",
	mem_init0 => X"E3FE1FC7FFFFFFFFFFFFFFFFFFFE1FF8FF8FFFFFFFFFC7E1FFFFFFFFF9FFCFF8FFFFFFFFFFFFFFFFFFFF03FF7FE7FFFFFFFFF0F07FFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFC001FFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFC71FFFFFC07FFFFFFF8007FFFFFFFFFFFFFF8C7FFFFFFFFFFFFFFFFFE3E1FFFFE007FFFFFFF863FFFFFFFFFFFFFFC78FFFFFFFFFFFFFFFFFF1FC3FFFF061FFFFFFFFF8FFFFFFFFFC7FFFE3F1FFFFFFFFFFFFFFFFF8FF8FFFFC7C3FFFFFFFFE3FFFFFFFFE1FFFF9FE3FFFFFFFFFFFFFFFFC3FF7FFFE1F8FFFFFFF1F0FFFFFFFFF87FFFFFFC7FFFFFFFFFFFFFFFE1FFFFFFF87FFFFFFFFC387FFFFFFFFE1FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a71_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a71_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y33_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a59\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFF8FFFFFFFFFFFFFFFF83FFFFFFE3FFFFFFFFF001FFFFFFFFF8FFFFFFFE1FFFFFFFFFFFFFFFC43FFFFFF87FFFFFFFFE00FFFFFFFFFE3FFFFFFF03FFFFFFFFFFFFFFE387FFFFFE1FFFFFFFFFE0FFFFFFFFFF0FFFFFFF8C7FFFFFFFFFFFFFF1F0FFFFFFC3C7FFFFFFFFFFFFFFFFFFC7FFFFFF871FFFFFFFFFFFFFF8FF1FFFFFF001FFFFFFFFFFFFFFFFFFE1FFFFFFE3E3FFFFFFFFFFFFFC7FEFFFFFFE007FFFFFFFFFFFFFFFFFF8FFFFFFF9FC7FFFFFFFFFFFFF1FFFFFFFFFE31FFFFFFFFFFFFFFFFFFC3FFFFFFFFF8FFFFFFFFFFFFF8FFFFFFFFFFFC7FFFFFFFFFFFFFFFFFF1FFFFFFFFFE3FFFFFFFFFFFFC1FFFFFFFFFFF1FFFFFFFFFFFFFFFFFF8FFFFFFF",
	mem_init2 => X"FFFC7FFFFFFFFFFFF03FFFFFFFFFFC7FFFFFFFFFFFFFFFFFC3FFFFFFFFFF0FFFFFFFFFFFF887FFFFFFFF0E3FFFFFFFFFFFFFFFFFF1FFFFFFFFFF03FFFFFFFFFFFC787FFFFFFF800FFFFFFFFFFFFFFFFFF8FFFFFFFFFF847FFFFFFFFFFF1F1FFFFFFFE003FFFFFFFFFFFFFFFFFC000FFFFFFFC38FFFFFFFFFFF8FE7FFFFFFFFFDFFFFFFFFFFFFFFFFFF0003FFFFFFF3F3FFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFC7FFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FC7FFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFCC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFE383FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFF9F87FF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF071FFFFFFFFC7F07FE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87E7FFFFFFFE3FF0FF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87F8FFFFFFFF8FFE3FE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01F83FF3FFFFFFFE7FFEFE0047FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3FFC7FFFFFFF1FFFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8307BFFF1",
	mem_init0 => X"FFFFFFFC1FFFFF878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F0FFFFC7FFFFFFE01FFFFE1F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FC3FFFC0FFFFFFF9C3FFFF878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F0FFFC13FFFFFFE78FFFFE1C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FC3FFE1C7FFFFFF1FBFFFF873FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F0FFF9F9FFFFFFCFFFFFFE18FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8387FFFFE7FFFFFE3FFFFFF8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFF8FFFFFF8FFFFFFE31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFFFF3FFFFFE7FFFFFF84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFCFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N22
\imRead_clk|altsyncram_component|auto_generated|mux2|_~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~12_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a71~portadataout\) # 
-- ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a59~portadataout\ & 
-- !\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a71~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a59~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~12_combout\);

-- Location: LCCOMB_X34_Y23_N8
\imRead_clk|altsyncram_component|auto_generated|mux2|_~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~13_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~12_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a95~portadataout\) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~12_combout\ & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a83~portadataout\ & 
-- ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a83~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|ram_block1a95~portadataout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|mux2|_~12_combout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~13_combout\);

-- Location: LCCOMB_X34_Y23_N30
\r~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~6_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~13_combout\))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- (\imRead_clk|altsyncram_component|auto_generated|mux2|_~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~15_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|mux2|_~13_combout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2),
	combout => \r~6_combout\);

-- Location: M9K_X53_Y27_N0
\imRead_hr|altsyncram_component|auto_generated|ram_block1a11\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F000000000F800000001F800000001F800000001F800000000F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/hand3e_40x131.mif",
	init_file_layout => "port_a",
	logical_ram_name => "minutes_hand:imRead_hr|altsyncram:altsyncram_component|altsyncram_b9r3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \imRead_hr|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_hr|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N18
\r~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r~7_combout\ = (\process_0~16_combout\ & (((\imRead_hr|altsyncram_component|auto_generated|q_a\(11))))) # (!\process_0~16_combout\ & (\r~6_combout\ & (\process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r~6_combout\,
	datab => \process_0~16_combout\,
	datac => \process_0~8_combout\,
	datad => \imRead_hr|altsyncram_component|auto_generated|q_a\(11),
	combout => \r~7_combout\);

-- Location: FF_X34_Y23_N19
\r[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \r~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r[3]~reg0_q\);

-- Location: M9K_X73_Y26_N0
\imRead_hr|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000000060000000006000000000300000000018000000000800000000100000000010000000009000000000D00000000040000000000C000000000C0000000088000000000800000000080000000008000000000000000000000000000100000000008000000000D0000000001000000000100000000010",
	mem_init1 => X"00000000000000000000000000001000000000000000000000000000001000000000000000000000000000004000000001400000000170000000017800000001B800000001B8000000007000000000600000000000000000000000000000080000000080000000000000000000000000000000000000000000000000400000000000000000001000000000800000000008000000001000000000800000000080000000000000000000080000000000000000018000000001080000000040000000004000000000000000000010000000000000000000400000000010000000009000000000980000000098000000000000000000800000000188000000000800",
	mem_init0 => X"0000000800000000000000000088000000001800000000900000000040000000004000000000600000000060000000004000000000200000000030000000010C000000009C000000009000000001000000000200000000040600000004020000000402000000040200000004020000000200000000020000000002040000000000000000000800000000080000000008000000000800000000900000000090000000001000000000D0000000004000000000700000000060000000006000000000600000000020000000002000000000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/hand3e_40x131.mif",
	init_file_layout => "port_a",
	logical_ram_name => "minutes_hand:imRead_hr|altsyncram:altsyncram_component|altsyncram_b9r3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \imRead_hr|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_hr|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y18_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a28\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFEA9EDFFFBFFF6FFFF65BBFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFFFFFFFCDE0FFFCCBFF3FFFF3D3FFFFFFFFFFFFFFFF37FFFFFFFFFFFFFFFFFF62FFB7F0F2FFDFFFD325FFFFFFFFFFFFFFFFF6ED7FFFFFFFFFFFFFFFDABF0FFFDBBFFF7FEE187FFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFF7E5CBFC6FFFAEFFD971FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE704FF79DFFE59FFF44FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86EFFF366FFC07DEFB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF747FF28EBFF447F6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8FFFDD3FFFF7DEFFFFBFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFE9F3FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF7FD346FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFE35BFEFF7FFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7DFBFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DFFFCE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB7FFF0C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC9FFFCB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96FFFFC07FFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8EBFFFE77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8A7FFF8FF7FFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFBFFFFFFF7BDFFFFF3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDFFFFFFFFF47FFFF9FEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFBF7FFFFEEFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDC7FFBFFFFBC27FFFDFFBFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC27FFFFFFFF7EDFFFFFA7FFFFFFC93FFFFFFFFFFFFFFFFFFFFFFFFFFF9CFFC5FFFFF51FFFFF8AAFFFFE010FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFEA52BFFEFFF778BFFFFE2FFFFFFF823FFFFFFFFFFFFFFFFFFFFFFFFFF72B0FECFFFFAEFFFFFFCBFFFFFD8CBFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFBF57FFFFF47FFFFEFFFFFFF7BBDFFFFFFFFFFFFFFFFFFFFFFFFFFF7E1FC5FFFFEE3FFFFFE7BFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC5F17FFFEFF3FFFFD7E7FFFFF49EFFFFFFFFFFFFFFFFFFFFFFFFFFF5F47C1FFFAFBF3FFFFDF9BFFFFA2FBFFFFFFFFFFFFFFFFFFFFFFFFFF57D3F07FFEF358FFFFEFFFFFFFD5EFFFFFFFFFFFFFFFFFFFFFFFFFFFC5FDFE3FFFFD59FFFFFEFBFFFFE7F7FFFFFFFFFFFFFFFFFFFFFFFFFFF17D7F8FFFEDC53FFFFF7CCFFFFF7FEFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y36_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFD7CBFFFFFFFFFFFFFFFFFFFFFDDFFFBFFFFFFFD77FC5FFFFFFDFFFFFF9E3FFFFFF3FFFFFFFFFFFA0FEDFFDBBFFFFFFAEFFF17FFFFFFCFBFFFF05EFFFFF81FFFFFFFFFDC67AF9FFBEFFFFFFF55FDC7FFFFF7BF7FAFFB377FFFFE03FFFFFFFFFB7C7FB2FCFFFFFFFB87C5F9FFFFFFFEBFE7FF3F6FFFFF81FFFFFFFFFFFF7FD6FD9FFFFFFFC9FABC63F7FFFFE3FE0EC3FFFFFFFCFFFFFFFFFFFF73E8EDFFFFFFFFFCDF6FCA7FFFFFF26FED75FFFFFFFFFFFFFFFFFFFFF23CEA97FFFFFFEE81BFFC5FFFFFFEDEE1F0FFFFFFFFFFFFFFFFFFFFF9A0FFD9FFFFFFFC9783F137FFFFFEE3FA296FFFFFFFFFFFFFFFFFFFFFF69FF3F7FFFFFE6C79FFBF7FF7FFFEBFF47",
	mem_init2 => X"7FFFFFFFFFFFFFFFFFFFFFF56FBFFFFFFFFFF0EFFB7FFF8FFFA5FE83BFFFFFFFFFFFFFFFFFFFFDF6BFD0FBFFFFFFD59FFE37FFF7FFFC3F9BFFFFFFFFFFFFFFFFFFFFFFFFCAFCFBFFFFFFFFB7D7B7FFFFFFB78DBDFEFFFFFFFFFFFFFFFFFFFFFFFC0C7FBFFFFDFFEFFFFFFFFD7F9EF1F1BFFFFFFFFFFFFFFFFFFFFFFFFFE24AF7BFDFFFFFE2FFFFEDBFDFFE735FFFFFFFFFFFFFFFFFFFFFFFFDB5EFB2FFFFFFFFF3FFFF7BFDDAFFA77FFFFFFFFFFFFFFFFFFFFFFFFFE7D1D86FF7FFFFFFFDFFFFFDDD7EE1FFFFFFFFFFFFFFFFFFFFFFFFFFFF161B9F53FFFFFFEF7FF9ED3FEFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFBD7DDFF5FFFFFFBBFFFFFDAFE5C4FF6FFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFF796BEBFAFFFFDFFFFFFE3FEADFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFEB7FF9FEDFFFCFFFFE3F87BF09D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D97EEDFBF3FC3F2DA3EF95FFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFEE9C1BDBFAFCFF6FF7FDACF5FFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFE2B9FF1FEFF7FDFF8FCF90DFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFE335B9CDFFFDFFEFFD5D84B3FFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFEFF7FBEBDF3FFFD7F57D5476FFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFEF7A0FD7FEFFBF1FBC3AD7FBFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFC6AAFFBFEFF7FF5087FFFFFFFFFFFFFFF",
	mem_init0 => X"F3FFFFFFFFFFFFFFFFFFEFB7B6AA10FDBFFF0DFBDFBFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFF1A5F36E3BAB1D3FFFFFFFFFFFFFFFFCF03FFFFFFFFFFFFFFFFFFFFFFEE7FCA7E76F49FFFFFFFFFFFFFFFFFF780FFFFFFFFFFFFFFFFFFFFFFFFFE0A4975C4FFFFFFFFFFFFFFFFFF83003FFFFFFFFFFFFFFFFFFFFFFFFFFFD9427FFFFFFFFFFFFFFFFFFFF8800FFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFF03180F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y22_N26
\imRead_clk|altsyncram_component|auto_generated|mux2|_~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~18_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a28~portadataout\)) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a4~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a28~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~18_combout\);

-- Location: M9K_X53_Y29_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a40\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF97FEFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7B7FFFFB1FFFFF9EEFFFFFD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5BFEFE87F7FF8AFFFFFFF37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1DD5FFFE70F9FFFB2F7FFFF1F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DCFFFFC43FFFFBA6FFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58EFFFDE1C77FFFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF1DFFFDE8DFFFFDFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFA92FFFFFDF77FFFF7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA86FFFFDF2F7FFA3FFFFFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFFFFFDFCBDFFED",
	mem_init2 => X"7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCB7FFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73BFFFEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADFFF857DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC716FFF3D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8CDBFFC7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8EDEFFD7BFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDB7FFF17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA77FE9FFBF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC6FFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF39BFE1F3FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47FFB7FFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEABFE0DFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EA8FFFFDFFE0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECBEFFE317FE4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73FFDB2FFFAE1FFA4E7FFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFDE35771573FE7FFFF3D2FFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFAC3A524C67FFEFFFF3FF7",
	mem_init0 => X"FFFFFFFFFFFFFFFFDFF7FFFFFFFFFFFFFFFF79FFFBF83FFFBFFFA7A0FFFFFFFFFFFFFFFFDDD5FFFFFFFFFFFFFFFFBCE9FFFA77FF5BFDE9FB3FFFFFFFFFFFFFFFF780FFFFFFFFFFFFFFFFEF57DCCFD5FFC3FFEEF7FFFFFFFFFFFFFFFFFF9ABFFFFFFFFFFFFFFFF74DEFCF268FFBFFFFCECFFFFFFFFFFFFFFFFFDA3FFFFFFFFFFFFFFFFFA72FF5FC4FFE009968CFFFFFFFFFFFFFFFFFFE50FFFFFFFFFFFFFFFFF9E5F593D7FF7C6B74BFFFFFFFFFFFFFFFFFF4BF7FFFFFFFFFFFFFFFFB911B4FFDFFD8689FBDFFFFFFFFFFFFFFFFFB383FFFFFFFFFFFFFFFFFBC32E076DFF6FFFF0FFFFFFFFFFFFFFFFFFDFA47FFFFFFFFFFFFFFFFE3E2FFF29FFD3FFEE3FBFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y22_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a16\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFC571FC3FFFB5D3FFFFFF0BFFEFE7F6FFFFFFFFFFFFFFFFFFFFFFFFFFF7773F3B7F7B0F7FFFFFCFBFBDA8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F9FC06FF6E7DFFFFFFBE7FFFEBF1FFFFFFFFFFFFFFFFFFFFFFFFFFF8EDFF0476FE29FFFFFFB1EFFFF2997FFFFFFFFFFFFFFFFFFFFFFFFFFDEE4FDC3E7FE3FFFFFFEEFFEFEDFC7BFFFFFFFFFFFFFFFFFFFFFFFFFE4207F4CEFFFB7FFFFFFF9BFF7DC88FFFFFFFFFFFFFFFFFFFFFFFFFFFE9C1FDE91EE729FFFFFFFBFFC6ECDBBFFFFFFFFFFFFFFFFFFFFFFFFFEF90FF47E17B3BBFFFFFFDDBBD7973FFFFFFFFFFFFFFFFFFFFFFFFFFFFEB7FDFFE3FD43FFFFFFEDFD2FFC17FFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFDE769FFFFFFFFB737FF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5616FFFFFFFE0997FFEFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFF22EB3FFFFFFFA787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FD1BFFFFFFFFE37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20CE7FFFFFFFE7FBFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFABFFFFFFFFFF5FBFFFFFFFFFEDFFFFFFFFFFFFFFFFFBFFFFFFFFFFFD91B7FFFFFFFF8FFFFFFBDFFFFBBFFFFFFFFFFFFFFFF6FF91FFFFFFF7DD087FFFFFFEFEFFBFFFFFFFFF1FFFFFFFFFFFFFFFFEBFF97FFFFF79EC5BFFFFFFFFFEBDFFFFFFFFFFC7FFFFFFFFFFFFFFF",
	mem_init1 => X"F8FFE5FFFFFFC0588FFFFFFFFFFEE97FFFFFFFFF3FFFFFFFFFFFFFFFFC3FF17FFFFF792AFBFFFFFFFFBFDD3FFFFFFFFF8FFFFFFFFFFFFFFFFF0FFC7FFFFFFF4196FFFFFFFFFF77BFBFFFFFFFE3FFFFFFFFFFFFFFFFC3FF9FFFFFFFFDB9FFFFFFFFFDDA9FFFFFFFFFFCBFFFFFFFFFFFFFFFF8FFE7FFFFFFF717FFFFFFFFFFFDCFFFFFFFFFFF2FFFFFFFFFFFFFFFFF7FF0FFFFFFFE9FFBFFFFFFFFFEF9FFFFFFFFFFCBFFFFFFFFFFFFFFFFDFFC3FFFFFFFADFDFFFFFFFFFFFEBE7AFFFFFFE6FBFFFDFFFDFFFFFFE7BF4FFFFFEFFEBFFFFFFFFFFFFF8F4FFFFFFFFFBFFFFFB7FFFFFFFFF9FF4BFFFFFCFF3FFFFFFFFFFFFFEFE05FFFFFFE9FFFFFC2C67E1FFFFCBF",
	mem_init0 => X"F2FFFFFD2F97FFFFFFFFFFFFFEEF7CFFFFFFB3F7FFFFAAFFFFFFFE0FFEBFFFFFABD7FFFFFFFFFFFFFF9FEB7FFFFFF53FFFFDE897F7FFFFAA7F9F7FFFFDB7FFFFFFFFFFFFF7F26F5FFFFFFF1FFFFFF8E9F5FFFFE10FC3FFFFFFEBDFFFFFFFFFFFFFFC0F7FFFFFFF32FFFFFEDEFC7FFFFAD3EB37FFFFB07FFFFFFFFFFFFFFEA1F9FFFFFFC03FFFBFE5FF86FFFEC07B53FFFFD5E7FFFFFFFFFFFFFFF3FCFFFFFFE0FFFFFFE7FF65FFFFF6FFBBFF53F8BFFFFFFFFFFFFFFFFEEA4FEFF5E9EFFFF7F35FF97FFFFAFFA9FFF57F7FFFFFFFFFFFFFFFFF5F4BFFFFB7DBFFFFF57DFE5FFFF8FFF2FF7E7FBFFFFFFFFFFFFFFFFFBFA7FEFFFFEFFFFFFFDFFF17FFFEFFFDFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y22_N4
\imRead_clk|altsyncram_component|auto_generated|mux2|_~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~19_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~18_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a40~portadataout\)) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~18_combout\ & (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a16~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|mux2|_~18_combout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a40~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~19_combout\);

-- Location: M9K_X53_Y17_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a88\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a88_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a88_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y22_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a64\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFD5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C03F1FC3D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1AA88E76AB90B9FFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFEFE6B1F7F97F8B2A7FBF9FFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFBF9F7B87EBFB7F5FE90E3DBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9A6FFFFF9E7B0FE6A37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D432EC7FCFF7FCFF9E0186FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F376FB8FEBFDFF1FFBFE27FFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFC2CB7FFFAFEADF7F2DD0BCFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFF34FDFF77FBF97F3",
	mem_init2 => X"FE3F0A25FFFFFFFFFFFF07FFFFFFFFFFFFFFFFED742FF3FE7F3FFFF87F7FE5F86FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDB6F7BFAFF3DF799FCF72FE3BFFBFFFFFFFFFFFFFFFFFFFFFFFFFDFB07E7FA7F3FFFEB3FFFBFE9F56DFFBFFFFFFFFFFFFFFFFFFFFFFFFFFD2DF57E9FBFFFFEFFFFFFED6F605FFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2BDBF5FFFF3FF7FFFFFFB7F9D1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAEEEF37FEFDFFB7F3FF7E8FD6E8F3FFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFEFFFFFFFE5AFFFFFEFE7565FFFFFFFFFFFFFFFFFFFFFFFFFFFF3ACFFFFFFFFFFFC9F3DDFF564FB322FFFFFFFFFFFFFFFFFFFFFFDF6E1FDFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFE7CE626FFFFFFFFFFFFFFFFFFFFFFFFEEBEEFFFFFFFFFFCA7FFFFFFFFFFB5927FFFFFFFFFFFFFFFFFFFFFF3B47BBBFFFFFFFFDAD41FFFFFFFFFBED6DFFFFFFFFFFFFFFFFFFFFFFFFE7FDEFFFFFFFFFFD17FFFFFFFFDFFAE93FFFFFFFFFFFFFFFFFFFFFFF90FFDFFFFFFFFFFC5BBFFFFFFFFFF3EFC37FFFFFFFFFFFFFFFFFFFFDCAAAEBFFFFFFFFFE0AD7FFFFFFFFFE5F76BFFFFFFFFFFFFFFFFFFFFFCC9FF4BFFFFFFFFFEBC7FFFFFFFFFEAF6FFFFFFFFFFFFFFFFFFFFFFFED71FFE3FFFFFFFFF2B6FFFFFFFFFF1D9260FFFFFFFFFFFFFFFFFFFFF22C7FFBFFFFFFFFFCB61FFFFFFFFF9FECF777FFFFFFFFFFFFFFFFFCFE6EEBBC6FFFFFFFFE0F4FFFFFFFFF",
	mem_init0 => X"E1D67D83BFFFFFFFFFFFFFFFFEFFEFD67B9FFFFFFFFF8AE1FFFFFFFFB4FFFFDBF7FFFFFFFFFFFFFFFFE65DFEBBF9FFFFFFFFFF037FFFFFFFCDFFFBEDB7FFFFFFFFFFFFFFFFFF29EF97FF05BFFFFFFD0BBFFFFFFFF7FBF7F6D3FFFFFFFFFFFFFFFFFFCAEFFFDF90DFFFFFFF6FE7FFFFFFFFAFFCFF7ADFFFFFFFFFFFFFFFFFC4C7BF3F408BFFFFFFB45DFFFFFFFFF5EFFF5B87FFFFFFFFFFFFFFFFFBEAFBBFFE10FFFFFFBFD7FFFFFFFFEA75FFE5E9FFFFFFFFFFFFFFDFF16FC7FFFAB87FFFFFF9FD5FFFFFFFFE77FFFFEC7DFFFFFFFFFFFFFFAE7DFB7FFC3BBFFFFFFCFF47FFFFFFFF9BFFF66BBFFFFFFFFFFFFFFFF46F7FDFFFE7DBFFFFFFF5AFFFFFFFFFD3F7",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a64_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a64_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y21_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a52\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFEFA3FFFFFFFFFFFFFFD45F9DFFFE0FF7FFFFFFBD1FFFFFFFFF8FFFFDB94EBFFFFFFFFFFFFFEAC11DFFFF777FFFFFFFD3BFFFFFFFFFE7FFFF9DB05FFFFFFFFFFFFFFD177AFFFFEAEAFFFFFF6FD7FFFFFFFFEFFFFFFDF475FFFFFFFFFFFFFCDF8EDFFFFED1BFFFFFFFFEFFFFFFFFF9BFFFF6FAF8BFFFFFFFFFFFFFA763FFEFFDFF5FFFFFFFBFFFFFFFFFFA3FFFFFFE3C4FFFFFFFFFFFFFEFFC7FFFFFED6BFFFFFFFFFFFFFFFFFF96FFFFFFFEDBFFFFFFFFFFFFBFFFFFFFFFD8CEFFFFFFFFFFFFFFFFF7BFFFFFFFE79DFFFFFFFFFFFFE45FFFFFFFDFAFFFFFFFFFFFFFFFFFFFB4BFFFFFFFDC36FFFFFFFFFFFD2DF7FFFFFFFF3FFFFFFFFFFFFFFFFFD37FFFFFF",
	mem_init2 => X"FFF8FFFFFFFFFFFFFA5FBFFFFFFFF9FFFFFFFFFFFFFFFFFBECEFFFFFFFFB1BFFFFFFFFFFF57B7BFFFFFF7D9FFFFFFFFFFFFFFFFFE8FF7FFFFE7BDFFFFFFFFFFFB977F7FFFFFF848FFFFFFFFFFFFFFFFFFFD6FFFFFFFF0AA7FFFFFFFFFCFE577FFFFFED87FFFFFFFFFFFFFFFFEC6DFFFFFFFF8BE7FFFFFFFFFFC4EFEDFFFFF292FFFFFFFFFFFFFFFFFF8003FFFFFFF7E5F7BFFFFFFFDADBF5FFFFFFFFFFFFFFFFFFFFFFFFFF9FFCFFFFFFFFFFAFFFFFFFFFE1BFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFCFCBFFFFFFFFDCFFFFFFFFFAF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFBFFFFFFF7B1FFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"9F7FFFFFFFFDD0FBF7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF92FFFFFFFFED43F7FF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4FFFFFFFFEF65FFFDFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFF63FFFFFF7BEDFFFD77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBBFAD4A53BFFFFFF6E6FB3FD73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FF7F5D7BFFFFFFFFFF7EDBF733FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7D4BF687FFFFFF15F4CB495FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2BF20EF17FFFFFFD33FEDE00F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA7FB97FC7FFFFFFF27EFDFE171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5935EBB9",
	mem_init0 => X"BFFFFFF8D7F7CD9CE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F7FEEB977FFFFFFB2FFFFD3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72AE77864FFFFFF785FFFFE6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4DD7FF667FFFFFFCF07FFFD16EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF039BFFECD5FFFFFF9F7FFFF46BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE7FFF9FE3FFFFFDBFFFFFDF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9043FFFD4F1FFFFEBBFFFFF74BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE12AFFFF3D87FFFF1FFFFFFD5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF657FFDB26FFFFFEBCBFFFF5CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAA3FFDFBFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y22_N22
\imRead_clk|altsyncram_component|auto_generated|mux2|_~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~16_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a64~portadataout\)) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a52~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a64~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a52~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~16_combout\);

-- Location: M9K_X53_Y22_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a76\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE27F0A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBF0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a76_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a76_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y22_N24
\imRead_clk|altsyncram_component|auto_generated|mux2|_~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~17_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~16_combout\ & 
-- (\imRead_clk|altsyncram_component|auto_generated|ram_block1a88~portadataout\)) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~16_combout\ & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a76~portadataout\))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|mux2|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a88~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|mux2|_~16_combout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a76~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~17_combout\);

-- Location: LCCOMB_X52_Y22_N6
\g~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g~0_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~17_combout\))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- (\imRead_clk|altsyncram_component|auto_generated|mux2|_~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~19_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \imRead_clk|altsyncram_component|auto_generated|mux2|_~17_combout\,
	combout => \g~0_combout\);

-- Location: LCCOMB_X52_Y22_N16
\g~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g~1_combout\ = (\process_0~16_combout\ & (((\imRead_hr|altsyncram_component|auto_generated|q_a\(4))))) # (!\process_0~16_combout\ & (\process_0~8_combout\ & ((\g~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \imRead_hr|altsyncram_component|auto_generated|q_a\(4),
	datac => \process_0~16_combout\,
	datad => \g~0_combout\,
	combout => \g~1_combout\);

-- Location: FF_X52_Y22_N17
\g[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \g~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g[0]~reg0_q\);

-- Location: M9K_X73_Y30_N0
\imRead_hr|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000100000000010000000000000000000000000000000000000004000000000F80000000170000000022C00000003F400000001F800000001F800000000600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/hand3e_40x131.mif",
	init_file_layout => "port_a",
	logical_ram_name => "minutes_hand:imRead_hr|altsyncram:altsyncram_component|altsyncram_b9r3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \imRead_hr|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_hr|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y27_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a89\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a89_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a89_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y23_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a53\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFA7FFFFFFFFFFFFFFF49FFFFFFE1FFFFFFFFFDE1FFFFFFFFFC7FFFFFFE7FFFFFFFFFFFFFFFA47FFFFFF5FFFFFFFFFE167FFFFFFFFE5FFFFFFF03FFFFFFFFFFFFFFF723FFFFFF2F7FFFFFFFCAFFFFFFFFFF2FFFFFFF53FFFFFFFFFFFFFFFEFDFFFFFFE83BFFFFFFDFFFFFFFFFFFCFFFFFFFEF0FFFFFFFFFFFFFFAFE1FFFFFEDF3FFFFFFFFFFFFFFFFFFF3FFFFFFD1E5FFFFFFFFFFFFFEBFEFFFFFFED6BFFFFFFFFFFFFFFFFFF9FFFFFFF9FAFFFFFFFFFFFFFF5FFBFFFFFFB83FFFFFFFFFFFFFFFFFFDBFFFFFFFFFCFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAFFFFFFFFFF1FFFFFFFFFFFFD7FFFFFFFFFFE1FFFFFFFFFFFFFFFFFF17FFFFFF",
	mem_init2 => X"FFFCBFFFFFFFFFFFEA5FFFFFFFFFFDFFFFFFFFFFFFFFFFFFCBFFFFFFFFFF0FFFFFFFFFFFFD2FFFFFFFFEF91FFFFFFFFFFFFFFFFFE9FFFFFFFFFEDDFFFFFFFFFFFFB7BFFFFFFFC48FFFFFFFFFFFFFFFFFF5893FFFFFFF88BFFFFFFFFFFFFECFFFFFFFFC05FFFFFFFFFFFFFFFFFE3FFFFFFFFF8D7FFFFFFFFFFF4FF7FFFFFFFD027FFFFFFFFFFFFFFFFF8003FFFFFFF7E7FFFFFFFFFFFBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFCFFFFFFFEFEFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7003FFFFFFFFFCFFFFFFFFFFB7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FBFFFFFFFFFFD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FFFFFFFFFDA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63FFFFFFFFC32FFFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF767FFFFFFFFEF5FFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECBBFFFFFFFFE7E5FFFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFE5BDFFFFFFFFFDFEEFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5FE48FFFFFFFFFF8FFFFFA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEAF2FFEDFFFFFFFDBFFFFD005FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEADDDDFF9FFFFFFFF7FFFFF6163FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3FB17F7A",
	mem_init0 => X"FFFFFFFECFFFFE1027FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3FFFF1BFFFFFFEB7FFFFF1E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97E3FFF84FFFFFFF6A5FFFFEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5FDFFF84FFFFFFFCB7FFFFF3CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87DBFFF4DFFFFFFFBF5FFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE3FFFDBFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF555BFFEFCBFFFFFFBFFFFFFF4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA67FFFFF8FFFFFFDFBFFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD26FFFFFE5FFFFFDBFFFFFFDC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32BFFFFFB7FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y25_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a65\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFCF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC03F1FC3F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8AAD01F720F163FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE369BF3F97FB1BB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AAFFEFF5FF7FD8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99BFFFEBFD7F1FED2A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF835FC7F9FF5FC7F97443FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76AFF9FEFFD7F3FEBF82DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA67BFDBFFFFDFF7FEFE27BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6FD7F7FEFFDFF1",
	mem_init2 => X"FF3FC6A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2FF2FE3FBFEDFF7FBFE3E05FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC83FDBFBFFBFBFF7F97F3FE19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF85EFFAFE7FFFF3FFFF3FEFFD2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FE5FF9FFFFFFBFFFFFFFDFD709FFFFFFFFFFFFFFFFFFFFFFFFFFFFDF1FFFFFFFFFFFE7FFFFFFF7F3F9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFA7FFFFFFFFBFFFFFFE7F9FF8BFFFFFFFFFFFFFFFFFFFFFFFFFFF9B7FFDFFFFFFFFEFFFFFFFFFE7FE17FFFFFFFFFFFFFFFFFFFFFFFFFFD33FFEFFFFFFFFF8FFFFFFFFFDFFB27FFFFFFFFFFFFFFFFFFFFFFFFFC1F7FFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFC5A7FFFFFFFFFFFFFFFFFFFFFFFFFE7EFFFFFFFFFFFFDFFFFFFFFFFFFBF2FFFFFFFFFFFFFFFFFFFFFFFFFDFF2FFFFFFFFFFFD6FFFFFFFFFFFEFC6FFFFFFFFFFFFFFFFFFFFFFFF27FD7FFFFFFFFFF12DFFFFFFFFFFD3F83FFFFFFFFFFFFFFFFFFFFFFFD0FFDFFFFFFFFFFD3CBFFFFFFFFFFBFF83FFFFFFFFFFFFFFFFFFFFFFFCFFF9FFFFFFFFFF175FFFFFFFFFFAFFF57FFFFFFFFFFFFFFFFFFFFFEFD7FCFFFFFFFFFFEFC7FFFFFFFFFD3FEF17FFFFFFFFFFFFFFFFFFFFFD70FFCFFFFFFFFFF3FC7FFFFFFFFF2FFFF2FFFFFFFFFFFFFFFFFFFFFE7E7FFBFFFFFFFFFCFE3FFFFFFFFF97FCBD7FFFFFFFFFFFFFFFFFFFFD3FEFFEBFFFFFFFFF0FC7FFFFFFFF",
	mem_init0 => X"E7FF7FEFFFFFFFFFFFFFFFFFFFFFBFFEFF1FFFFFFFFFCBE1FFFFFFFFF4FEFFFD7FFFFFFFFFFFFFFFFFFE1FFEFFF7FFFFFFFFE9FB7FFFFFFFFD7FFFFFBFFFFFFFFFFFFFFFFFFFA9FFDFFFEBFFFFFFFF2A9FFFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFAB47FFFFB1BFFFFFFFE36FFFFFFFFFFFFFFF50BFFFFFFFFFFFFFFFFFF1E7FDFFF097FFFFFFF921FFFFFFFFEEFFFF8B47FFFFFFFFFFFFFFFFFBFCBFBFE850FFFFFFF7FD7FFFFFFFFE3FFFE7F8FFFFFFFFFFFFFFFFF97F8FFFFABE5FFFFFFFFF7FFFFFFFFF6FFFF6FC7FFFFFFFFFFFFFFFFC7FD7FFFEBFB7FFFFFFFF4FFFFFFFFF9FFFFE7FBFFFFFFFFFFFFFFFFF7FFBFFFF4FF9FFFFFFA76BFFFFFFFFF1FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a65_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a65_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N24
\imRead_clk|altsyncram_component|auto_generated|mux2|_~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~20_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a65~portadataout\) # 
-- (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a53~portadataout\ & 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a53~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a65~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~20_combout\);

-- Location: M9K_X33_Y19_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a77\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF380F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5FF0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a77_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a77_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N2
\imRead_clk|altsyncram_component|auto_generated|mux2|_~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~21_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~20_combout\ & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a89~portadataout\) # 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~20_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a77~portadataout\ & 
-- \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a89~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~20_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a77~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~21_combout\);

-- Location: M9K_X73_Y18_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a17\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFC5F17C3FFFF5F7FFFFFF1BFFFFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7E3F1FFFF35FFFFFFFCBFFFFE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E8FC3FFFEE6FFFFFFFFBFFFFEFE3FFFFFFFFFFFFFFFFFFFFFFFFFFF4FABF1F7FFF6FFFFFFFFBFFFFF3FCFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F4FD83FFFE3FFFFFFFC7FFFFABC5FFFFFFFFFFFFFFFFFFFFFFFFFFFE407F4EFFFFB7FFFFFFF1FFF7F4A97FFFFFFFFFFFFFFFFFFFFFFFFFFF1D3FD5FBFFD7FFFFFFFEBFF07FBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFC93FF4FE7FFBFFFFFFFFDFFD5FD21FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFD3FE3F97FFFFFFFFBFB0FF40FFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFED3E7FFFFFFFFDBD2FFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57AFFFFFFFFF9DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE7FFFFFFFFE587FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAFFFFFFFFFFAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4FFFFFFFFFF4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFF7FFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9FFFFFFFFFFAFFFFFFFFFFFF9BFFFFFFFFFFFFFFFF9FFF7FFFFFFFFF9FFFFFFFFFFFFF9FFFFFFFFFE0FFFFFFFFFFFFFFFFCBFF9FFFFFFFCFF3FFFFFFFFFFC9FFFFFFFFFFF83FFFFFFFFFFFFFFF",
	mem_init1 => X"F0FFE7FFFFFFE3F2FFFFFFFFFFFB58FFFFFFFFFE2FFFFFFFFFFFFFFFFC3FF9FFFFFFFD1FFFFFFFFFFFFF3C7FFFFFFFFF8BFFFFFFFFFFFFFFFF0FFE7FFFFFFF87BFFFFFFFFFFFD37FFFFFFFFFE2FFFFFFFFFFFFFFFFC3FF1FFFFFFFF5BFFFFFFFFFFFFEBFFFFFFFFFFCFFFFFFFFFFFFFFFFF8FFC7FFFFFFFE17FFFFFFFFFFFFDFFFFFFFFFFF3FFFFFFFFFFFFFFFFF3FF0FFFFFFFFEBFFFFFFFFFFFFEDFFFFFFFFFFCFFFFFFFFFFFFFFFFFCFFC3FFFFFFFFCFFFFFFFFFFFFFAFFFFFFFFFFF7FFFFFFFFFFFFFFFFE3FF0FFFFFE7FAFFFFFFFFFFFFFFDF8FFFFFFFFCFFFFFFFFFFFFFFFFF8FFC3FFFFF6FD3FFFFFFFFFFFFFEDE1FFFFFFFF9FFFFFE00EFE3FFFFE7F",
	mem_init0 => X"F0FFFFFF3EFFFFFFFFFFFFFFFCAEFFFFFFFFF7FFFFFFAADF77FFFF9FFEBFFFFFC9CFFFFFFFFFFFFFFF17FFFFFFFFE4FFFFFFEC97D5FFFFE5DF8FFFFFFE93FFFFFFFFFFFFFFF23FFFFFFFF91BFFFF802BF57FFFF177C41FFFFF49FFFFFFFFFFFFFFFD1FFFFFFFFE13FFFFFFCFFC5FFFFE11F917FFFFF1FFFFFFFFFFFFFFFFE7FBFFFFFF833FFFFFE47F8FFFFFC37E11FFFFF97FFFFFFFFFFFFFFFF27DBFFFFFE0FFFFFFF7BFE7FFFFA5FF9BFFF7FEBFFFFFFFFFFFFFFFFFDFDFFFFFF97FFFFFF37FF9FFFFEAFFEBFFFDFE7FFFFFFFFFFFFFFFFFD9CFFFFFFE7FFFFFFA7FFE7FFFFEBFEEFFFE1F3FFFFFFFFFFFFFFFFFFF43FFFFFFFFFFFFFF7FFF9FFFFFFFFCFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y38_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF30FFFFFFFFFFFFFFFFFFFF5FFFFFBFFFFFFFFDFFFE7FFFFFFFFFFFFFD07FFFFFFFFFFFFFFFFFFF0FFFFFEFFFFFFFFE3FFF9FFFFFFFFFFFFFF85FFFFFFFFFFFFFFFFFFFF0FEFFFFFFFFFFFF5FEFE7FFFFFFFE7FEFFE2FFFFFFFFFFFFFFFFFFFFAFFF7FCFFFFFFFF07C3F1FFFFFFFF9FFFFF97FFFFFFFFFFFFFFFFFFFFF7D3FF3FFFFFFFEBF1FC7DFFFFFFCFFA7F87FFFFFFFFFFFFFFFFFFFFFBE8FF3FFFFFFFF8BA3F4AFFFFFFF8FF5FF5FFFFFFFFFFFFFFFFFFFFFD01FFF7FFFFFFFE849FF4DFFFFFFFFFF1F1FFFFFFFFFFFFFFFFFFFFFFC3BFFBFFFFFFFFF787F05FFFFFFFCBFEE07FFFFFFFFFFFFFFFFFFFFFFEBFFBFFFFFFFFF469FFBFFFFFFFF5FFCCF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFE0DFFBFFFFFFFFE7FE87FFFFFFFFFFFFFFFFFFFFFFFE37D3FFFFFFFFFF77FEFFFFFFFFFC7FCBFFFFFFFFFFFFFFFFFFFFFFFFFB7CFFFFFFFFFFFFFFFFFFFFFFFF9FD5FFFFFFFFFFFFFFFFFFFFFFFFFEBCFFFFFFFFFFFFFFFFFFFFFBDFE1F1FFFFFFFFFFFFFFFFFFFFFFFFFFB47FD3FFFFFFFFFFFFFFFFFFCFFA42FFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF7FFFFFFFFFCFFFFFFFFF6FD13FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FCFFBFFFFFFFFFFFFFFDFF3FF1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEFFD3FFFFFF8FFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFF79CFFCFFFFFFFBFFFFFF7FFFE2FFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFE5D7FE7FEFFFFCFFFFFFE3FEADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7FF3FEBFFFEBFFFF7F97F58FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE1F9FF5FF7FAFFFF7FFBFE83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF48EBFFBFEFEBF7FD7FFFEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE4FFBFFBFEFFFF8FFFE1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65FFC7FEFFBF7FEDFFFD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D3FDFF3F6FF3FB7ED43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0F57FEFDFFCFF5B6D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6ABFFBF7FF3FC508FFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFEF8E48FDFFFCFDF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F2A63CBF1C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FCBFFF6FD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53F9FF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE141FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y4_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a29\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFF97FFFFFFFFFFFFFFFFFAFABFFFFFFFFFFFF47BBFFFFFFFFFFFFFFFFF57FFFFFFFFFFFFFFFFFEFE0FFFEFFFF7FFFF7E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFBFFFBFFFCFFFF5BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE1FFFFBFFFBFFFE1C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77DFFFFEFFFBFFFF925FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA87FFFFBFFE1E7FF55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6CFFCFFFFF847FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFF6AFFFF5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF37FFDF2FFFBFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97FFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF2DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4EBFFFE37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDBFFFF567FFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1BFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFF8FFFFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFFFFC7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBFFFFFFFFFFE7FFFFEEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6FFF7FFFFFEFFFFFD47FFFFEFC13FFFFFFFFFFFFFFFFFFFFFFFFFFF8CDFC7FFFFC7BFFFFF81BFFFFA001FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFA64FF9FFFFE3CFFFFFF2DFFFFEF827FFFFFFFFFFFFFFFFFFFFFFFFFFF2E1FE7FFFFDEEFFFFFE3FFFFFF703FFFFFFFFFFFFFFFFFFFFFFFFFFFD7A7FDFFFFFCCFFFFFFBFFFFFFFFB7FFFFFFFFFFFFFFFFFFFFFFFFFFD7F0FE7FFFFFF1FFFFFC7FFFFFFF4BFFFFFFFFFFFFFFFFFFFFFFFFFFFD7E7F9FFFFFDB7FFFFFFFFFFFFF09FFFFFFFFFFFFFFFFFFFFFFFFFFFD7FDFE3FFFFFEBFFFFFFFFFFFFFA1FFFFFFFFFFFFFFFFFFFFFFFFFFFF57F5F8FFFFFF6FFFFFFBFFFFFFF17FFFFFFFFFFFFFFFFFFFFFFFFFFFC5F57C3FFFFFDFFFFFFEFFFFFFE37FFFFFFFFFFFFFFFFFFFFFFFFFFFF17D5F0FFFF9F7FFFFFFEDFFFFF37FFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y22_N0
\imRead_clk|altsyncram_component|auto_generated|mux2|_~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~22_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a29~portadataout\) # 
-- (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a5~portadataout\ & 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a29~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~22_combout\);

-- Location: M9K_X33_Y14_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a41\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF3FDFFFFDD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3BFFFFFF3FFFFFFBFFFFFF55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5F0FFFFF0BFFFFF9EFFFFFD37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9FFFFE33FFFFFF2BFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1EDFFFF8E7FFFFF3EFFFFFEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0E7FFFD8EFFFFF7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDFFFFDFDFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD9DFFFFFA7FFFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3FFFFFFF9FFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7FFFD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C7FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECDFFFD71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFDFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFEE9FFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FFFFFFFFDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFF517FEC4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFDBBFFFBF5FFA467FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA37FF913FFE7FFFD2F3FFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFC3AFFFFAFFFEFFFF378F",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE835FFFEBFFFBFFFE3E8FFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFF0737FFFBFFFCFFFF8FDBFFFFFFFFFFFFFFFFE01FFFFFFFFFFFFFFFFFC7F5FFFE7FFFFFFFEDFFFFFFFFFFFFFFFFFFF9A7FFFFFFFFFFFFFFFFD4FFDFFFBFFF6FFFF4BFFFFFFFFFFFFFFFFFFFC37FFFFFFFFFFFFFFFFAEEFFFFF3FFD0087E9DFFFFFFFFFFFFFFFFFFC47FFFFFFFFFFFFFFFFF9E4F27FCFFFFD7B7E07FFFFFFFFFFFFFFFFFE13FFFFFFFFFFFFFFFFFE973F4FFBFFFC7F7F31FFFFFFFFFFFFFFFFFF187FFFFFFFFFFFFFFFFEB5370077FFFFFFFFCBFFFFFFFFFFFFFFFFFFDA0FFFFFFFFFFFFFFFFFA1C3FFFDFFFFFFFFC7F5FFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y22_N10
\imRead_clk|altsyncram_component|auto_generated|mux2|_~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~23_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~22_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a41~portadataout\) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~22_combout\ & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a17~portadataout\ & 
-- ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~22_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a41~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~23_combout\);

-- Location: LCCOMB_X52_Y22_N12
\g~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g~2_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\imRead_clk|altsyncram_component|auto_generated|mux2|_~21_combout\)) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \imRead_clk|altsyncram_component|auto_generated|mux2|_~21_combout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|mux2|_~23_combout\,
	combout => \g~2_combout\);

-- Location: LCCOMB_X52_Y22_N2
\g~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g~3_combout\ = (\process_0~16_combout\ & (((\imRead_hr|altsyncram_component|auto_generated|q_a\(5))))) # (!\process_0~16_combout\ & (((\g~2_combout\)) # (!\process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \imRead_hr|altsyncram_component|auto_generated|q_a\(5),
	datac => \process_0~16_combout\,
	datad => \g~2_combout\,
	combout => \g~3_combout\);

-- Location: FF_X52_Y22_N3
\g[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \g~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g[1]~reg0_q\);

-- Location: M9K_X53_Y26_N0
\imRead_hr|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000006000000001F000000001F000000001F800000000F0000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/hand3e_40x131.mif",
	init_file_layout => "port_a",
	logical_ram_name => "minutes_hand:imRead_hr|altsyncram:altsyncram_component|altsyncram_b9r3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \imRead_hr|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_hr|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y35_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFEFFFFFFFFFFFFFFFFFFFFF8BFFFFFFFFFFFFFE27FFFBFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFD3FFFEFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFEFFFFFF8FFFFFFFEBFFFFBFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFF93F87FBFFFFFFFFF7DFFEFFFFFFFFFFF9FF67FFFFFFFFFFFFFFFFFFFF07EFFEFFFFFFFFF7FEFFBDFFFFFFD3FDFFBBFFFFFFFFFFFFFFFFFFFFE5F7FFCFFFFFFFFB7DFFB5FFFFFFFFFF3FEBFFFFFFFFFFFFFFFFFFFFFEFE7F87FFFFFFFE7F4FCB1FFFFFFE3FFFEFFFFFFFFFFFFFFFFFFFFFFFFE3FE7FFFFFFFFC87FFFBFFFFFFFF7FD7FFFFFFFFFFFFFFFFFFFFFFFFD7FFCFFFFFFFFFB97FC7FFFFFFFFBFF33F",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFF2FF8FFFFFFFFFF71FF4FFFFFFFFE9FE7BFFFFFFFFFFFFFFFFFFFFFFFFC7EFFFFFFFFFFFFFFD7FFFFFFFFFFFB5FFFFFFFFFFFFFFFFFFFFFFFFF5FBFFFFFFFFFFFFFFFFFFFFFFFF7FE9FFFFFFFFFFFFFFFFFFFFFFFFFD4BFFBFFFFFFFFFFFFFFFFFFFFFFFCEFFFFFFFFFFFFFFFFFFFFFFFFFFEBBFCFFFFFFFFFFFFFFFFFFFDFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFF84FFDFFFFFFFFFEFFFFFFFFF1FF7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFDDFB7FFFFFFFFE7FFFFFFFFEFFEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97F7FEFFFFFFFEFFFFFFC7FC7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF072FF3FFFFFFE3FFFFFF8FF3FD3FFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFF26FFFFF9FFFFAFFFFFFFFFF7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBFFFFF7FFFF3FFFDFFAFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DFE7FAFE3FCFE7F1FF7FF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF15E7FC7FDFF3F8FEFFE7E27FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF50FFFDFF7F8FE3FFFF0DE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA7FFFFDFE3F8FE3FE62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA29F1FFFF8FEBFC7F2B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2AFFDFE3FAFFBD93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE955FF7F8FEBFDEF5FFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFF4713BFE3F9F220BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD180E10C140E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0340009037FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C0600E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y3_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a30\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFF86FFFFFFFFFFFFFFFFFE4FD7FFFDFFF8FFFF3F87FFFFFFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFF93EFFFFF7FFEBFFFE9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FC7FFFDFFFAFFFFA72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFE3FFE3FFFFE3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF072FFFF8FFFDFFFFEDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FBFFFE3FFFDFFFFEB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA92FFDF8FFFFB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF497FF153FFFA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFC0DFFF8FFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFF523FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E7FFFDC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE35FFFFB1FFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF983FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4FFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEFFFFFFFFFF9FFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18FF8FFFFFFE3FFFFEB9FFFFF03EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF31FDBFFFFF3DFFFFFFE7FFFFDFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFD937FEFFFFF853FFFFFD7FFFFF07DFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEEFFBFFFFD11FFFFF9BFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFFAFFFFFEBFFFFFF7FFFFFFFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFBFFFFFEDFFFFFFFFFFFFFF33FFFFFFFFFFFFFFFFFFFFFFFFFFF27FBFEFFFFFF8FFFFFF0FFFFFFFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFC9FAFFFFFFFFF7FFFFFE7FFFFFF9EFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FEBFFFFFFFF8FFFFFFCFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFAFFFFFFFFC7FFFFFF1D7FFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFF6FEBFFFFFFBFBFFFFFFDF1FFFF4BFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N28
\imRead_clk|altsyncram_component|auto_generated|mux2|_~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~26_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a30~portadataout\))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a6~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a30~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~26_combout\);

-- Location: M9K_X53_Y7_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a42\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFDFFFFFFE2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF4FFFFFFFFFFFFC5FFFFFFABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFB7FFFFE63FFFFFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7FFFF4CFFFFFC53FFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFF3FFFF33FFFFFEB17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB9FFFFE5DFFFFF8FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE123FFFFBE3FFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC26FFFFFFD7FFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFF3",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8FFFFEC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73FFFF287FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF943FFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFF1FFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFE1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFC03FFEA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF703FFFDE7FFBB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77FFC44FFFDFBFFDB97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CFFF70BFFFFFFFCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC5FFFFCFFF8FFFFCFB3",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E9FFFF3FFE3FFFDFF6FFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFF77CFFFFDFFFAFFFF7FC7FFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFBEBFFFFFFFE3FFFD3FFFFFFFFFFFFFFFFFFFE5BFFFFFFFFFFFFFFFFFAFFFFFFDFFF8FFFF37FFFFFFFFFFFFFFFFFFC7CFFFFFFFFFFFFFFFFFD2FFFFFFFFFEFF7DF63FFFFFFFFFFFFFFFFFFBBBFFFFFFFFFFFFFFFFE71BEFFFBFFF82847FEFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFF968F8B007FFE47FDECFFFFFFFFFFFFFFFFFFF67BFFFFFFFFFFFFFFFFE4AC6FF89FFF8FFFFB7FFFFFFFFFFFFFFFFFFE5EFFFFFFFFFFFFFFFFF9FFDFFFF7FFE3FFFD9FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y31_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a18\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFDBFEFFFFFFCF8FFFFFFF74FFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FDFFEFFFECF3FFFFFFF4FFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDF7FFFFFFF98FFFFFFFCFFFFF93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFD3FE07FFF17FFFFFFE5FFFFECFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBFE7FFFFFFFFFFFFFFFFFFFD7F9FFFFFFFFFFFFFFFFFFFFFFFFFFF9D7FFB27FFF8FFFFFFFF6FFFFFBF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFE2DFE9FDFFEFFFFFFFFF7FFB7C437FFFFFFFFFFFFFFFFFFFFFFFFFFFF6CFFAFFFFF4FFFFFFFFE7FA9FADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFE7F1BFEFFFFFFFFF7FEFFFFEFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFAFE9FFFFFFFFC7CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA7DFFFFFFFFFFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE57BFFFFFFFFE97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53FFFFFFFFFD17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB7FFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFF87FFFFFFFFFFFFFFFFFFFD3FFFFFFFFFA7FFFFFFFFFF8FDFFFFFFFFFEFFFFFFFFFFFFFFFFFF7FFEFFFFFFFEFEFFFFFFFFFFFF7C3FFFFFFFFFBFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFBFFFFFFEFFDFFFFFFFFFFF876FFFFFFFFFEDFFFFFFFFFFFFFFFFFFFFEFFFFFFFAF8FFFFFFFFFFFFD3FFFFFFFFFFB7FFFFFFFFFFFFFFFFFFFFBFFFFFFFFA7FFFFFFFFFFFEC7FFFFFFFFFEDFFFFFFFFFFFFFFFFFFFFEFFFFFFFF24FFFFFFFFFFFF97FFFFFFFFFFF7FFFFFFFFFFFFFFFF7FFFBFFFFFFFFE7FFFFFFFFFFFFAFFFFFFFFFFFDFFFFFFFFFFFFFFFFCFFFFFFFFFFFFD7FFFFFFFFFFFFF3FFFFFFFFFFF7FFFFFFFFFFFFFFFF3FFFFFFFFFFFF3FFFFFFFFFFFFFD7FBFFFFFFFF9FFFFFFFFFFFFFFFFDFFFFFFFFFEFFD7FFFFFFFFFFFFF3FF7FFFFFFFF7FFFFFFFFFFFFFFFF7FFFFFFFFF0FEBFFFFFFFFFFFFFE3DDFFFFFFFF7FFFFFFFFE7C3FFFFDFF",
	mem_init0 => X"FFFFFFFCFE3FFFFFFFFFFFFFFF20FFFFFFFFCFFFFFF8551F0FFFFF7FFD7FFFFFF73FFFFFFFFFFFFFFFE87FFFFFFFFA0FFFFE136FCBFFFFDFFF7FFFFFFD2FFFFFFFFFFFFFFFEDFFFFFFFFFEE7FFFF8057F2FFFFFE87FBDFFFFF37FFFFFFFFFFFFFFFEFFFFFFFFFFEDFFFFFFF0FDBFFFFDEDF6E7FFFFEEFFFFFFFFFFFFFFFF9FFBFFFFFFFEFFFFFFFBFFFFFFFF3FFDEDFFFFFE7FFFFFFFFFFFFFFFF5FC7FFFFFFFFFFFFFF07FFBFFFFD9FF6FFFFFFF3FFFFFFFFFFFFFFFFF3E3FFFFFFE7FFFFFFCBFFEFFFFF5FFD3FFF2FFBFFFFFFFFFFFFFFFFFC73FFFFFFE7FFFFFF98FFFBFFFFD7FF1FFFEFFDFFFFFFFFFFFFFFFFFFC9FFFFFFFFFFFFFFE9FFFEFFFFFFFFF7F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N30
\imRead_clk|altsyncram_component|auto_generated|mux2|_~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~27_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~26_combout\ & 
-- (\imRead_clk|altsyncram_component|auto_generated|ram_block1a42~portadataout\)) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~26_combout\ & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a18~portadataout\))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead_clk|altsyncram_component|auto_generated|mux2|_~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~26_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a42~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~27_combout\);

-- Location: M9K_X53_Y20_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a78\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF600F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a78_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a78_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y21_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a66\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"003CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63FC0E03C0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5537FE9D30E97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4977FFFEFFFDC45FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8597FDFEBFEFF270FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC66F3FF7FAFFFFF0557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCFFFFFFFEBFFFFAFBABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC95FFFFF7FAFFFFF7FFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58E5FC7FDFE3FC7F8FFE85FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BFEFF8FF7FAFFD",
	mem_init2 => X"FCFFBFD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3CFF5FFBFDFE3FC7FDFFFF79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF35FFE3FDFE7F8FFFFEFFCFFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7997FDFE3FFFEFFFFFDFF7FE51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1FBFE7FFFFFF8FFFFFFF1FEFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFC3FDFFFFFFEBFFFFFF8FF4F67FFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFDFFFFFFFFF8FFFFFFF7FEFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFE4FFE1FFFFFFFFE3FFFFFFFFE9FFEBFFFFFFFFFFFFFFFFFFFFFFFFFFCC4FFFFFFFFFFFFFFFFFFFFFFBFFCD7FFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFF3FFA5FFFFFFFFFFFFFFFFFFFFFFFFFE1F9FFFFFFFFFFFF0FFFFFFFFFFFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFAFFDFFFFFFFFFFFA8FFFFFFFFFFF9FDBFFFFFFFFFFFFFFFFFFFFFFFFDBFEFFFFFFFFFFFEDBFFFFFFFFFFEFFFDFFFFFFFFFFFFFFFFFFFFFFFAFFFE7FFFFFFFFFCDF3FFFFFFFFFFCFFFBFFFFFFFFFFFFFFFFFFFFFFC37FF7FFFFFFFFFFEFAFFFFFFFFFF9FFCAFFFFFFFFFFFFFFFFFFFFFFE0EFFD3FFFFFFFFF93F9FFFFFFFFFEFFF0EFFFFFFFFFFFFFFFFFFFFFFAFEFFBFFFFFFFFFFDFB7FFFFFFFFFDFF87DFFFFFFFFFFFFFFFFFFFFFDFF9FE7FFFFFFFFFF7FFFFFFFFFFFA7FF3C9FFFFFFFFFFFFFFFFFFFFEFF97FF7FFFFFFFFFFFBFFFFFFFFF",
	mem_init0 => X"DFFFBF93FFFFFFFFFFFFFFFFFFFE5FF1FFEFFFFFFFFFB3DFFFFFFFFFF3FF9FF27FFFFFFFFFFFFFFFFFFFE7FE3FFFFFFFFFFFF664FFFFFFFFFE7FF7FC5FFFFFFFFFFFFFFFFFFFDEFFFFFFC7FFFFFFFED57FFFFFFFFFFFFFFE3FFFFFFFFFFFFFFFFFFFD3AFFFFFEE3FFFFFFFDC9FFFFFFFFFFFFFFFAF3FFFFFFFFFFFFFFFFFEDFBFFFFCF6FFFFFFFF6BDFFFFFFFFF1FFFFF7B7FFFFFFFFFFFFFFFFF5FF7FFFF78EFFFFFFFFFA7FFFFFFFF9BFFFF9F6FFFFFFFFFFFFFFFFFE7FF7FFF93DBFFFFFFFFCBFFFFFFFFF9FFFF0FF9FFFFFFFFFFFFFFFFFFFFBFFFFDFCFFFFFFE0FBFFFFFFFFFE7FFFE7FC3FFFFFFFFFFFFFFFF8FFFFFFFBFE7FFFFFFD9D3FFFFFFFFEFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a66_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a66_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y23_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a54\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFF5FFFFFFFFFFFFFFFF31FFFFFFDDFFFFFFFFFA1FFFFFFFFFF37FFFFFFF9FFFFFFFFFFFFFFF9BFFFFFFFAFFFFFFFFFFE9FFFFFFFFFFBFFFFFFEFFFFFFFFFFFFFFFFCBDFFFFFFEDF1FFFFFFFD57FFFFFFFFFDFFFFFFF20FFFFFFFFFFFFFFF1FA7FFFFFD783FFFFFFFFFFFFFFFFFFB3FFFFFFD3EFFFFFFFFFFFFFFD7EFFFFFFF20CFFFFFFFFFFFFFFFFFFFDFFFFFFCFFBFFFFFFFFFFFFFF3FDFFFFFFD297FFFFFFFFFFFFFFFFFF67FFFFFFFFD7FFFFFFFFFFFFE3FFFFFFFFFD5DFFFFFFFFFFFFFFFFFFE7FFFFFFFFF3FFFFFFFFFFFFFBFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFE5FFFFFFFFFFDFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFF",
	mem_init2 => X"FFFF7FFFFFFFFFFFE5BFFFFFFFFFFAFFFFFFFFFFFFFFFFFFF7FFFFFFFFFEFFFFFFFFFFFFFAD3FFFFFFFEF9DFFFFFFFFFFFFFFFFFE7FFFFFFFFFFA1FFFFFFFFFFFE70FFFFFFFFFB77FFFFFFFFFFFFFFFFF2FFFFFFFFFF737FFFFFFFFFFE3FAFFFFFFFF3FBFFFFFFFFFFFFFFFFFDC00FFFFFFFB79FFFFFFFFFFFBFFFFFFFFFF802FFFFFFFFFFFFFFFFFF7FFFFFFFFFF9E9FFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFFFFFFDFD7FFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FCFFFFFFFFFF29FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFFFFFFE1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FFFFFFFFFFFD7FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8DFFFFFFFFF9F23FF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB37FFFFFFFFDFFAFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23C3FFFFFFFF3FE17F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4FF33F9FFFFFFFFFFFF1F9601FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF14F57FE3FFFFFFFC7FFDFEFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF521E7FFEFFFFFFFF8FFFFF9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCA7FFFFD",
	mem_init0 => X"FFFFFFF93FFFFE6857FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDFDFFFFA3FFFFFFF4BFFFFEFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFFBBFFFFFFF899FFFF9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF2FFFBA1FFFFFFD7C7FFFEFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFCBEFFFFFFF7FBFFFFBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3EDFFFEF9FFFFFF87FFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF27FFFFF3FFFFFF7FFFFFF857FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE499FFFFFFFFFFFFBFFFFFFE93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED9FFFFFEBFFFFFC7FFFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD7FFFFFC7FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N16
\imRead_clk|altsyncram_component|auto_generated|mux2|_~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~24_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1)) # 
-- ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a66~portadataout\)))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a54~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a66~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a54~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~24_combout\);

-- Location: M9K_X53_Y23_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a90\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N10
\imRead_clk|altsyncram_component|auto_generated|mux2|_~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~25_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~24_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a90~portadataout\) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~24_combout\ & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a78~portadataout\ & 
-- (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a78~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~24_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a90~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~25_combout\);

-- Location: LCCOMB_X52_Y23_N0
\g~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g~4_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~25_combout\))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- (\imRead_clk|altsyncram_component|auto_generated|mux2|_~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \imRead_clk|altsyncram_component|auto_generated|mux2|_~27_combout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|mux2|_~25_combout\,
	combout => \g~4_combout\);

-- Location: LCCOMB_X52_Y23_N8
\g~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g~5_combout\ = (\process_0~16_combout\ & (\imRead_hr|altsyncram_component|auto_generated|q_a\(6))) # (!\process_0~16_combout\ & (((\process_0~8_combout\ & \g~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_hr|altsyncram_component|auto_generated|q_a\(6),
	datab => \process_0~8_combout\,
	datac => \process_0~16_combout\,
	datad => \g~4_combout\,
	combout => \g~5_combout\);

-- Location: FF_X52_Y23_N9
\g[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \g~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g[2]~reg0_q\);

-- Location: M9K_X53_Y25_N0
\imRead_hr|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F000000000F800000001F800000001F800000001F800000000F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/hand3e_40x131.mif",
	init_file_layout => "port_a",
	logical_ram_name => "minutes_hand:imRead_hr|altsyncram:altsyncram_component|altsyncram_b9r3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \imRead_hr|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_hr|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y11_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFC387FFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFF0FFFC3FFFFFFFFFFFFF8C3FFFFFFFFFFFFFFFFFFE1FFFFFE7FFFFFFF87FFF0FFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFC3FF3FF1FFFFFFFE1FFFC3FFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFC7FCFFC7FFFFFFF8FE3F0FFFFFFFF1FF3FF8FFFFFFFFFFFFFFFFFFFFF8FE3FE3FFFFFFFE1F0FC03FFFFFFE7FC7FC7FFFFFFFFFFFFFFFFFFFFF0F1FF1FFFFFFFF87C3F007FFFFFF8FF8FC3FFFFFFFFFFFFFFFFFFFFFE18FFCFFFFFFFFF0E1FC03FFFFFFF1FE3E1FFFFFFFFFFFFFFFFFFFFFFC07FE3FFFFFFFFC007F07FFFFFFFC7FC70FFFFFFFFFFFFFFFFFFFFFFF81FF1FFFFFFFFF803FC3FFFFFFFF8FF887",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFF87FC7FFFFFFFFF83FF1FFFFFFFFF3FF07FFFFFFFFFFFFFFFFFFFFFFFF0FE3FFFFFFFFFFFFFFFFFFFFFFFC7FC3FFFFFFFFFFFFFFFFFFFFFFFFE0F1FFFFFFFFFFFFFFFFFFFFFFFF8FC3FFFFFFFFFFFFFFFFFFFFFFFFFE1C7FFFFFFFFFFFFFFFFFFFFFFFE3E1FFFFFFFFFFFFFFFFFFFFFFFFFFC03FE7FFFFFFFFFFFFFFFFFFE7FC60FFFFFFFFFFFFFFFFFFFFFFFFFFFC1FF1FFFFFFFFF9FFFFFFFFF9FF80FFFFFFFFFFFFFFFFFFFFFFFFFFFF83FCFFFFFFFFFE3FFFFFFFFE3FE07FFFFFFFFFFFFFFFFFFFFFFFFFFFF83E3FE7FFFFFF9FFFFFFE7F8FF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFF839FF9FFFFFFE7FFFFFF9FF1F07FFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFF807FC7FFFFFF9FFFFFFE3FC703FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FF1FE3FFFE7FFFE7FCFF803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FCFF9FFFF9FFFF9FF1FE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83F3FE7F8FE7F9FE3FC7F03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF818FF1FE3F9FE7F8FF9E07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF803FC7F8FE7F9FF3FE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07F3FE3F9FE7FCFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01CFF8FE7F9FF1E00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FE3F9FE7FE003FFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFF800FCFE7F8FC007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001F9FE0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y9_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a31\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFC07FFFFFFFFFFFFFFFFF1F87FFF8FFF9FFFF8FC7FFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFFFC7F1FFFE3FFE7FFFC3E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F87FFF8FFF9FFFF8787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E1FFFE7FFE7FFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F87FFF9FFF8FFFFC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FFFE7FFE207FF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FFE01FFF801FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFF807FFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFCFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF3FFFE01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC08FFFF8FFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFCFFFFF1F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FF0FFFFFFF3FFFFE70FFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFFFF003FE3FFFFCF8FFFFF803FFFFC001FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFC387F0FFFFF027FFFFE03FFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFFFE1F1FC3FFFFE01FFFFFC7FFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFF87C3F0FFFFFF07FFFFF1FFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFE1F0FC3FFFFFF3FFFFFC7FFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFF8FC3F0FFFFFFCFFFFFF9FFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFE3F0FC3FFFFFE3FFFFFE3FFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC3F0FFFFFF9FFFFFF8FFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F0FC3FFFFFE7FFFFFF3EFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC3F0FFFF7F1FFFFFFC63FFFF87FFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y13_N30
\imRead_clk|altsyncram_component|auto_generated|mux2|_~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~30_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a31~portadataout\) # 
-- (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a7~portadataout\ & 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a31~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~30_combout\);

-- Location: M9K_X53_Y5_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a43\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF1FFFFFFE07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8787FFFFF1FFFFFC3FFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E1FFFFFC7FFFFF01FFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC7FFFF81FFFFF881FFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1FFFF803FFFFE78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8707FFFE38FFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFF3FFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFFFFCFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFF1FFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFF3",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFE01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00FFFF907FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF833FFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF3FFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFF801FFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFE20FFF003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFE01FFF8FFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FF8E7FFE3FFFE1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFF9FFF9FFFF0FC7",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C3FFFE7FFE7FFFC3F1FFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFF8F87FFF8FFF9FFFF0FFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFC3FFFFFE3FFE7FFFC3FFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFF1FFFFFF8FFF9FFFF87FFFFFFFFFFFFFFFFFFE00FFFFFFFFFFFFFFFFFC71FFFFE3FFE0003E03FFFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF001F0000FFF8000FC0FFFFFFFFFFFFFFFFFFC00FFFFFFFFFFFFFFFFFC003C0003FFE3803F03FFFFFFFFFFFFFFFFFF803FFFFFFFFFFFFFFFFF070F0000FFF9FFFF87FFFFFFFFFFFFFFFFFFE01FFFFFFFFFFFFFFFFFC3E1FFFE3FFE7FFFE3FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y15_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a19\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFE3F0FC3FFFC3CFFFFFFF807FFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC3F0FFFF023FFFFFFE07FFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F0FC3FFFF01FFFFFFF87FFFFC7E1FFFFFFFFFFFFFFFFFFFFFFFFFFF87C7F00FFFF87FFFFFFF3FFFFF1F87FFFFFFFFFFFFFFFFFFFFFFFFFFE1E1FC01FFFF1FFFFFFFC7FFFFC3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFC387F01FFFFCFFFFFFFF9FFFBF070FFFFFFFFFFFFFFFFFFFFFFFFFFFF003FC3FBFFE3FFFFFFFE3FFCFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFE01FF1FC3FF9FFFFFFFF8FFC3FC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFC7F87FC7FFFFFFFF1FC1FF81FFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFF07F3FFFFFFFFE7E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F8FFFFFFFFF8E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C7FFFFFFFFF20FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFC7FFFFFFFFFFFC7FFFFFFFFFFFFFFFF0FFEFFFFFFFFFFCFFFFFFFFFFF1FFFFFFFFFFFF1FFFFFFFFFFFFFFFFC3FF0FFFFFFFDFE3FFFFFFFFFFE3E7FFFFFFFFFC7FFFFFFFFFFFFFFF",
	mem_init1 => X"F0FFC3FFFFFFF1F1FFFFFFFFFFFCE1FFFFFFFFFF1FFFFFFFFFFFFFFFFC3FF0FFFFFFFC3C7FFFFFFFFFFF00FFFFFFFFFFC7FFFFFFFFFFFFFFFF0FFC3FFFFFFF863FFFFFFFFFFFE0FFFFFFFFFFF1FFFFFFFFFFFFFFFFC3FF0FFFFFFFF81FFFFFFFFFFFFC7FFFFFFFFFF87FFFFFFFFFFFFFFFF0FFC3FFFFFFFF0FFFFFFFFFFFFF1FFFFFFFFFFE1FFFFFFFFFFFFFFFFC3FF0FFFFFFFFE3FFFFFFFFFFFFE3FFFFFFFFFF87FFFFFFFFFFFFFFFF0FFC3FFFFFFFF1FFFFFFFFFFFFFC7FFFFFFFFFE1FFFFFFFFFFFFFFFFC3FF0FFFFFFFF8FFFFFFFFFFFFFF8FCFFFFFFFF87FFFFFFFFFFFFFFFF0FFC3FFFFF9FC7FFFFFFFFFFFFFF1E3FFFFFFFE1FFFFFE001FFFFFFFC3F",
	mem_init0 => X"F0FFFFFE1F1FFFFFFFFFFFFFFC71FFFFFFFF87FFFFF8003F8FFFFF0FFC3FFFFFC38FFFFFFFFFFFFFFF80FFFFFFFFE1FFFFFE000FE3FFFFC3FF0FFFFFF847FFFFFFFFFFFFFFF07FFFFFFFF803FFFFFF83F8FFFFF00FC03FFFFF83FFFFFFFFFFFFFFFE3FFFFFFFFE00FFFFFFE1FE3FFFFC03F00FFFFFF1FFFFFFFFFFFFFFFFC7FFFFFFFF81FFFFFFF07F0FFFFF00FC03FFFFF8FFFFFFFFFFFFFFFFF8FE7FFFFFE1FFFFFFF83FC3FFFFC3FF07FFE7FC7FFFFFFFFFFFFFFFFE1F1FFFFFF8FFFFFFF81FF0FFFFF1FFC7FFF8FE1FFFFFFFFFFFFFFFFFE38FFFFFFFBFFFFFFC1FFC3FFFFC7FF1FFFF1F0FFFFFFFFFFFFFFFFFF847FFFFFFFFFFFFFC0FFF0FFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y13_N24
\imRead_clk|altsyncram_component|auto_generated|mux2|_~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~31_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~30_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a43~portadataout\)) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~30_combout\ & (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a19~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|mux2|_~30_combout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a43~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~31_combout\);

-- Location: M9K_X53_Y8_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a67\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0008FF3FC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800FE3FCFF1E003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE004FF8FF3FC7FC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01F1FE3FCFF1FF380FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FC7F8FF3FC7FCFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808FF1FE3FCFF1FE3FC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81F3FE7F8FF3FCFF9FF103FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FC7F9FE3FCFF3",
	mem_init2 => X"FE7FCF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FF9FE7F8FF3FCFF1FE3F83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF823FE7F8FFFFCFFFFC7F9FF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83CFF8FFFFFFF3FFFFFFC7F883FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83F1FF3FFFFFFCFFFFFFF3FE383FFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FE7FFFFFFFFF3FFFFFFCFF9F83FFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FF8FFFFFFFFFCFFFFFFFBFC7F07FFFFFFFFFFFFFFFFFFFFFFFFFFFC07FF3FFFFFFFFF3FFFFFFFFF3FF07FFFFFFFFFFFFFFFFFFFFFFFFFFE19FFDFFFFFFFFFFFFFFFFFFF8FFC0FFFFFFFFFFFFFFFFFFFFFFFFFFE0E3FFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFE30FFFFFFFFFFFFFFFFFFFFFFFFFF0FC7FFFFFFFFFFFFFFFFFFFFFFFF1E1FFFFFFFFFFFFFFFFFFFFFFFFF07F1FFFFFFFFFFF01FFFFFFFFFFFC7E1FFFFFFFFFFFFFFFFFFFFFFFF87FE3FFFFFFFFFF801FFFFFFFFFFE3FC3FFFFFFFFFFFFFFFFFFFFFFFC1FF8FFFFFFFFFFE007FFFFFFFFFF1FF87FFFFFFFFFFFFFFFFFFFFFFE03FF1FFFFFFFFFF0F0FFFFFFFFFFC7FE07FFFFFFFFFFFFFFFFFFFFFF187FE7FFFFFFFFFC7E3FFFFFFFFFE3FF10FFFFFFFFFFFFFFFFFFFFFF0F1FF8FFFFFFFFFE1F8FFFFFFFFFF1FF8E1FFFFFFFFFFFFFFFFFFFFF87E3FF1FFFFFFFFF87E1FFFFFFFFFCFFC7E3FFFFFFFFFFFFFFFFFFFFC3FC7FC7FFFFFFFFE1F87FFFFFFFF",
	mem_init0 => X"E3FE1FC7FFFFFFFFFFFFFFFFFFFE1FF8FF8FFFFFFFFFC7E1FFFFFFFFF9FFCFF8FFFFFFFFFFFFFFFFFFFF03FF7FE7FFFFFFFFF0F07FFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFC001FFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFC71FFFFFC07FFFFFFF8007FFFFFFFFFFFFFF8C7FFFFFFFFFFFFFFFFFE3E1FFFFE007FFFFFFF863FFFFFFFFFFFFFFC78FFFFFFFFFFFFFFFFFF0FC3FFFF061FFFFFFFFF8FFFFFFFFFC7FFFE3F1FFFFFFFFFFFFFFFFF8FF8FFFFC7C3FFFFFFFFE3FFFFFFFFE1FFFF9FE3FFFFFFFFFFFFFFFFC3FF7FFFE1F0FFFFFFF1F0FFFFFFFFF87FFFFFFC7FFFFFFFFFFFFFFFE1FFFFFFF87FFFFFFFFC387FFFFFFFFE1FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a67_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y12_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a55\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFF8FFFFFFFFFFFFFFFF83FFFFFFE3FFFFFFFFF001FFFFFFFFF8FFFFFFFE1FFFFFFFFFFFFFFFC43FFFFFF87FFFFFFFFE00FFFFFFFFFC3FFFFFFF03FFFFFFFFFFFFFFE387FFFFFE1FFFFFFFFFE0FFFFFFFFFF0FFFFFFF8C7FFFFFFFFFFFFFF1F0FFFFFF83C7FFFFFFFFFFFFFFFFFFC7FFFFFF871FFFFFFFFFFFFFF8FF1FFFFFF001FFFFFFFFFFFFFFFFFFE1FFFFFFE3E3FFFFFFFFFFFFFC7FEFFFFFFE007FFFFFFFFFFFFFFFFFF8FFFFFFF9FC7FFFFFFFFFFFFF1FFFFFFFFFE31FFFFFFFFFFFFFFFFFFC3FFFFFFFFF8FFFFFFFFFFFFF8FFFFFFFFFFFC7FFFFFFFFFFFFFFFFFF1FFFFFFFFFE3FFFFFFFFFFFFC1FFFFFFFFFFF1FFFFFFFFFFFFFFFFFF8FFFFFFF",
	mem_init2 => X"FFFC7FFFFFFFFFFFF03FFFFFFFFFFC7FFFFFFFFFFFFFFFFFC3FFFFFFFFFF0FFFFFFFFFFFF887FFFFFFFF063FFFFFFFFFFFFFFFFFF1FFFFFFFFFF03FFFFFFFFFFFC787FFFFFFF800FFFFFFFFFFFFFFFFFF87FFFFFFFFF847FFFFFFFFFFF1F1FFFFFFFE003FFFFFFFFFFFFFFFFFC000FFFFFFFC38FFFFFFFFFFF8FE7FFFFFFFFFDFFFFFFFFFFFFFFFFFF0003FFFFFFF3F3FFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFC7FFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FC7FFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFF8C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFE383FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFF1F87FF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF071FFFFFFFFC7F07FE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87E7FFFFFFFE3FF0FF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF87F8FFFFFFFF8FFE3FE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01F83FF3FFFFFFFE7FFEFE0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3FFC7FFFFFFF1FFFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8307BFFF1",
	mem_init0 => X"FFFFFFFC1FFFFF878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E0FFFFC7FFFFFFE01FFFFE1F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FC3FFFC0FFFFFFF9C3FFFF878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F0FFFC13FFFFFFE78FFFFE1C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FC3FFE1C7FFFFFF1FBFFFF873FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F0FFF9F1FFFFFFCFFFFFFE18FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8387FFFFE7FFFFFE3FFFFFF8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFF8FFFFFF8FFFFFFE31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFFFF3FFFFFE7FFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFCFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y13_N26
\imRead_clk|altsyncram_component|auto_generated|mux2|_~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~28_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a67~portadataout\) # 
-- ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- \imRead_clk|altsyncram_component|auto_generated|ram_block1a55~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a67~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a55~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~28_combout\);

-- Location: M9K_X73_Y14_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a91\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a91_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a91_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y13_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a79\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a79_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a79_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y13_N12
\imRead_clk|altsyncram_component|auto_generated|mux2|_~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~29_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~28_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a91~portadataout\)) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1)))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~28_combout\ & (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a79~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|mux2|_~28_combout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a91~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a79~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~29_combout\);

-- Location: LCCOMB_X52_Y13_N2
\g~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g~6_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~29_combout\))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- (\imRead_clk|altsyncram_component|auto_generated|mux2|_~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~31_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \imRead_clk|altsyncram_component|auto_generated|mux2|_~29_combout\,
	combout => \g~6_combout\);

-- Location: LCCOMB_X52_Y23_N2
\g~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \g~7_combout\ = (\process_0~16_combout\ & (((\imRead_hr|altsyncram_component|auto_generated|q_a\(7))))) # (!\process_0~16_combout\ & (\process_0~8_combout\ & ((\g~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datab => \process_0~8_combout\,
	datac => \imRead_hr|altsyncram_component|auto_generated|q_a\(7),
	datad => \g~6_combout\,
	combout => \g~7_combout\);

-- Location: FF_X52_Y23_N3
\g[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \g~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \g[3]~reg0_q\);

-- Location: M9K_X73_Y10_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a36\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF97FEFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7B7FFEFF1FFFFF9EEFFFFFD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF5BFEFE87F7FFAAFFFFFFF37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1DD5FFFE70FDFFFA2F7FFFF1F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DCFFFFCD7FFFFBA6FFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58EFFFDE1DFFFFFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE1DFFFDECDFFFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFA92FFFFFDF77FFFF7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA6FFF7DF2FFFFABFFFFFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFFFF7CFCBDFFE9",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCF7FFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73BFFFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADFFF857DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF16FFF3D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8CDBFFC7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E5EFFD79FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDB7FFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFFEFFAFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA77FF9FFBF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC6FFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF39BFE1FBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47FFB7FFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEABFECDFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EA8FFFFCDFE09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECBEFFE317BE4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73FFDB2FFFAE1FFA4E7FFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFDE35771573FE7FFFF3D2FFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFAC3A524C67FFEFFFF3FF7",
	mem_init0 => X"FFFFFFFFFFFFFFFFDFF7FFFFFFFFFFFFFFFF78F7FBF83FFFBFFFA7A1FFFFFFFFFFFFFFFFDDD5FFFFFFFFFFFFFFFFBCE9FFFA77FF4BFDE9FB3FFFFFFFFFFFFFFFF780FFFFFFFFFFFFFFFFEF57DCCFD5FFD3FFEEF7FFFFFFFFFFFFFFFFFF9ABFFFFFFFFFFFFFFFF64DEFCF268FF3FFFFCECFFFFFFFFFFFFFFFFFDA3FFFFFFFFFFFFFFFFFA72FF5FC4FFE0499E9CFFFFFFFFFFFFFFFFFFE50FFFFFFFFFFFFFFFFF9E5F593D7FF7C2BF4BFFFFFFFFFFFFFFFFFF4BF7FFFFFFFFFFFFFFFFB911B4FEDFFD9609F9DFFFFFFFFFFFFFFFFFB383FFFFFFFFFFFFFFFFFBC32E036DFF6FFFF1FF7FFFFFFFFFFFFFFFDFA47FFFFFFFFFFFFFFFFE3E2FFFABFFD3FFFE3FBFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y11_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFD7CBFFFFFFFFFFFFFFFFFFFFFCCFDFBF7FFFFFC77FC5FFFFE9DFFFDFFDE2FFFFFFFFFFFFFFFFF7A0FEDFFFF9FFFFFFBEFFF17FFFFDFCF3FF7E41EFFFFFC3FFFFFFFFFDC67AF9BFBEFFFFFFF55FDF5FFFFF7BF7FAFFB377FFFFE07FFFFFFFFFB7C7FBAFDFFFFFFFB4745FD7FFFFFFEBFE7FF3F7FFFFE00FFFFFFFFFFFFFFDCFD9FFFFFFF49FABC63F7F7FFC3DE0EC3FFFFFFE00FFFFFFFFFFF71E8EDFFFFFFFFFCDF6FC87FFFFFD4EFED77FFFFFFE000FFFFFFFFFFF23CEA97FFFFFFEFA19FFC5FFFFFFEDEE170FFFFFFF8003FFFFFFFFFF920FFD9FFFFFFFC87A3F13FFFFFFEE3FA316FFFFFFE000FFFFFFFFFFFF69FF3F7FFFFFE64E9FFBF7FF7FFF6BDF43",
	mem_init2 => X"7FFFFFF8003FFFFFFFFFFFB56FBFFFFFFFFFF0EFFB7FFF8FFFA5FE83BFFFFFFE000FFFFFFFFFFDFEBFD0FBFFFFFFD59FFE77FFF7FDDD3FBBFFFFFFFF8003FFFFFFFFFFF7CAFCFBFFFFFFFFB3DFB7FFFDFFB78DADFEFFFFFFE000FFFFFFFFFFFFFC0C7EBFF7FDFFEFFFFFFEFD7F9EF4B8BFFFFFFFF8003FFFFFFFFFFFFFE24AFBBFD7FFFFE3FFFFEDBFD7FEF34FFFFFFFFE000FFFFFFFFFFFFDB5EFA2EFFFFFFFF3FFFF79FDDAFFAF7FFFFFFFFF0003FFFFFFFFFFFFE7D1D86FF7FFFFDFFDFFFEBD5D7EE1FFFFFFFFFF8000FFFFFFFFFFFFFF161B9F57FFFFFFFFFFF9ED3BEDE43FFFFFFFFFE0003FFFFFFFFFFFFFBD7DDBD5DFFFFF3BFFFFFDAFE4C5FF6FFFFF",
	mem_init1 => X"FFF8000FFFFFFFFFFFFFFFF796BEBFAFFFFDFFFFDFE3F6EFFE6FFFFFFFFE0003FFFFFFFFFFFFFFFEB7FF1FEDFFFDFFFFC3F87BF0BD7FFFFFFFFF8000FFFFFFFFFFFFFFFFFF2D97EE7BBF7FC3F2DA3EF95FFFFFFFFFFFC0003FFFFFFFFFFFFFFFFEE9C1BDBFAFDFF6FF7FDACF5FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFE2B9FF1BEFF7FD7F8FCF90DFFFFFFFFFFFFC0003FFFFFFFFFFFFFFFFE335B9CDFAFFFFEFFD5D84B3FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFEF77FBEBDF3FFFE7F5FD5476FFFFFFFFFFFFC0003FFFFFFFFFFFFFFFFE77A0ED77EFFBF3FBC3AD7FBFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFC6AAFFBFEFF3FF50A7FFFFFFFFFFFFFF8",
	mem_init0 => X"0003FFFFFFFFFFFFFFFFEFB7B68218FFBFFE0DEFDFBFFFFFFFFFFFFE0000FFFFFFFFFFFFFFFFFFFFFF3A5F32E3BAB1D3FFFFFFFFFFFFFFFFC0003FFFFFFFFFFFFFFFFFFFFFEE4F8A7E76B49FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFDFE0A496576FFFFFFFFFFFFFFFFFFF80003FFFFFFFFFFFFFFFFFFFFFFFFFFD9407FFF7FFFFFFFFFFFFFFFFE0800FFFFFFFFFFFFFFFFFFFFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFF8F803FFFFFFFFFFFFFFFFFFFFFFFFFFFCFEEFFEFFFFFFFFFFFFFFFFF83F00FFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFF000C03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFF010100",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y12_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a24\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFEA9EDFFFBFFF6FFFF25BBFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFFFFFFFCDE0FFFCCBFF3FFFF3D3FFFFFFFFFFFFFFFF37FFFFFFFFFFFFFFFFFF62FFB7F0D2FFDFFFD3A5FFFFFFFFFFFFFFFFF6ED7FFFFFFFFFFFFFFFDABF0FFFDBBFF77FEE187FFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFF7E5CBFC6FFFAFFFD971FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE704FF7D9FFE5DFFF44FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86EFFF347FFD47DEFB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF747FF686BFF457F6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8FFFDD3FFFF7DEFFFFBFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFE9F3FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF7FD347FFDFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFE35BFEFF7FFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFDF3AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95FFFCE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDB7FFF0C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC9FFFCA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF16FFFFC27FFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8EBFFFE77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8AFFFEAFF7FFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFBFFDBFFF7FDFFFFF3FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDFFFFFFFFF47FFFF9FEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDBF7FFFEEFFFFFFFFFFFFFFEFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCFFFB7FFF3C27FFFDFFBFFFFBFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFC27FFFFFFDFFEDFFFFF87FFFFFFC33FFFFFFFFFFFFFFFFFFFFFFFFFFF9CFEC1FFFFB51FFFFF8AAFFFFE011FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFEA52BFB6FFF778BFFFFE2FFFFFFF823FFFFFFFFFFFFFFFFFFFFFFFFFF72B1DECBFFFAEFFFFFFC9FFFFFD8CBFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFBF57FFFFF57FFFFEFFFFFFF7BBDFFFFFFFFFFFFFFFFFFFFFFFFFFF7E1FC5FFFFEE1FCFFFE73FFFFFF7F7FFFFFFFFFFFFFFFFFFFFFFFFFFDFC5F07FFFEFD01FFFD7E7FFFFF49EFFFFFFFFFFFFFFFFFFFFFFFFFFF5F47D1FFF8FBE07FFFDF9BFFFFA2FBFFFFFFFFFFFFFFFFFFFFFFFFFF57D3F47FFEF1581FFFEFFEFFFFD5EFFFFFFFFFFFFFFFFFFFFFFFFFFFC5FDFE3FFFFC5107FFFED9FFFFE7F7FFFFFFFFFFFFFFFFFFFFFFFFFFF17D7FAFFFE8C5BF3FFF7DCFFFFF7FEFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y13_N16
\imRead_clk|altsyncram_component|auto_generated|mux2|_~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~34_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a24~portadataout\) # 
-- (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a0~portadataout\ & 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a24~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~34_combout\);

-- Location: M9K_X73_Y17_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a12\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFC571FCBFFF31D3FCFFFF0BFFEFE7F6FFFFFFFFFFFFFFFFFFFFFFFFFFF7777F3BFF7B0F7FFFFFCFBFBD28CFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F8FC46FF6C7DFFFFFFAE7FFFCBF1FFFFFFFFFFFFFFFFFFFFFFFFFFF8EDFF2476FE297F3FFFB1EFFFF2997FFFFFFFFFFFFFFFFFFFFFFFFFFDEE4FCC3E7FE3FFCFFFEFDFEFF8FC7BFFFFFFFFFFFFFFFFFFFFFFFFFE4207F4CEF7FB7703FFFF9BFF7DC88FFFFFFFFFFFFFFFFFFFFFFFFFFFE9C1FDE91EC7A9C0FFFFFBFBC6ECDBBFFFFFFFFFFFFFFFFFFFFFFFFFEF90BF47F17BBB803FFFFDD9A55973FFFFFFFFFFFFFFFFFFFFFFFFFFF7EB7FDEFE3ED4380FFFFE5F52FDC57FFFFFFBFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFDE769FFFFFFFFF737F77FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFE5616FFFFFFFE1997FFEFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFF22EB3FFFFFFFAE87FFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FD3FFFFFFFFFE37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20CE7FFFFFFFC6FBFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFABFFFFFFFFFF5FBFFFFFFFFFEFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFD91B7FFFFFFFF8FFFFFF99FFFFBBFFFFFFFFFFFFFFFF6FF9BFFFFFFF7DD087FFFFFFEFEFFBFFFFFFFFF2FFFFFFFFFFFFFFFFEBFFB7FFFFE79EC5BFFFFFFFFEEBDFFFFFFFFFFCFFFFFFFFFFFFFFFF",
	mem_init1 => X"F8FFEDFFFFFED0588FFFFFFFFFFEEB7FFFFFFFFF3FFFFFFFFFFFFFFFFE3FF17FFFFF792AFBFFFFFFFFBBDD3FFFFFFFFF8FFFFFFFFFFFFFFFFF0FFC5FFFFFFF4196FFFFFFFFEF77BFBFFFFFFFE3FFFFFFFFFFFFFFFFC3FF9FFFFFFFBDB9FFFFFFFFFDDA9BFFFFFFFFFCBFFFFFFFFFFFFFFFF9FFE7FFFFFFF717FFFFFFFFFF6DCFFFFFFFFFFF2FFFFFFFFFFFFFFFFE7FF1FFFFFFFE9FFBFFFFFFFFFEF9FFFFFFFFFFCBFFFFFFFFFFFFFFFFDFFC3FFFFFFFADFDFFFFFFFFFFF8BE7AFFFFFFE6FBFFFDFFFDFFFFFFE3BF4FFFFFEEFEBFFFFFFFFFFFFF9F4FFFFFFFFDBFFFFFB7FFFFFFFFF9F74BFFFFF4FF3FFFFFFFFFFFFFFFE05FFFFFFEBFFBFFC2C77E1FFFFCFF",
	mem_init0 => X"F2FFFFFD2F97FFFFFFFFFFFFFAEF7CFFFFFFB3F7FFFBAABFF7FFFE0FFEBFFFFF8BD7FFFFFFFFFFFFFF9FEB7FFFFFF53BFFFDE897D7FFFFA23F9F7FFFFD97FFFFFFFFFFFFF7F26F5FFFFFFD1FDFF7F8E9F5FFFFEB0FA2FFFFFFEBDFFFFFFFFFFFFDFC0F7FFFFFFF1AFFFFFEDFFC7FFFFA93E917FFFFA07FFFFFFFFFFFFFFEA1F9FFFFFFC0BFFFBFE4FF96FFFEC05B53FFFFD467FFFFFFFFFFFFFFF3FCFFFFFFE0FFFFFF67FD65FFFFE6FBB1FF53F8BFFFFFFFFFFFFFFFFEEA4FCFF5E9AFFFF7F35FF97FFFF8FF81FFF5777FFFFFFFFFFFFFFFFF5F4BFFFFB6FBFFFFF57DFE5FFFF8FFF3FF7E7FBFFFFFFFFFFFFFFFFFBFA7FEFFFFEFFFFFFFDFFF17FFFEFFFDFD",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y13_N18
\imRead_clk|altsyncram_component|auto_generated|mux2|_~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~35_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~34_combout\ & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a36~portadataout\) # 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~34_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a12~portadataout\ & 
-- \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a36~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~34_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~35_combout\);

-- Location: M9K_X33_Y10_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a84\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a84_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y9_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a60\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFD5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C13F1FC3D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1AA88776AB90B9FFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFEFEEB1E5F97F8B2A7FBF9FFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFBF9F7B0FEBFB7F5FE90E3FBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1A6FFFFF9E7B0FE6A37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D532EC7DCFF7FCFF9E048EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F176FB8FEBFDFF1FFBFE27FFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFF7C2CB7FFFAFEADF7F2DD0DCFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFF04DDFF77FBF97F3",
	mem_init2 => X"FEB70A25FFFFFFFFFFFF87FFFFFFFFFFFFFFFFED741FF3FE7717FFF8FF3FE5F86FFFFFFFFFFFFFFFFFFFFFFFFFFFF7FDBDB6F7BFAFF3CF7997CF72FE3BFFBFFFFFFFFFFFFFFFFFFFFFFFFF9FB07E7FA7F3FFBEB3FFFBEE9F56DFFBFFFFFFFFFFFFFFFFFFFFFFFFFFD2DE57E9FBFFFFEFFFFFFBD6F605FFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2BDFF5FFFF3FF7FFFEFFB7D9D1CFFFFFFFFFFFFFFFFFFFFFFFFFFF7BAFEEF37FEFDFFB7F1FF3E8FD6E8F3FFFFFFFFFFFFFFFFFFFFFFFFFF9FEFFFEFFFFFF7E587FF7FEFEF565FFFFFFFFFFFFFFFFFFFFFFFFFFFE3ACFFFFFFFDFFDC9F3DDFF564FB322FFFFFFFFFFFFFFFFFFFFFFDF6E5F9FFFFFFFFFFFDFFFFFFF",
	mem_init1 => X"FFE1CE626FBFFFFFFFFFFFFFFFFFFFFFFAEAAEFFFFFFFFFFCA7FFFFFFFFFFB5926DFFFFFFFFFFFFFFFFFFFFF3B47BBBFFFFFFFFDAD41FFFFFFFFFBED6DBFFFFFFFFFFFFFFFFFFFFFFFE7FDEFFFFFFFFFFF17FFFFFFFFDFFAE95FFFFFFFFFFFFFFFFFFFFFFFD0FD9FFFFFFFFFFC5BBFFFFFFFFFF3EFC17FFFFFFFFFFFFFFFFFFFFDC8AAFBFFFFFFFFFE0AD7FFFFFFFFFE5F7EBFFFFFFFFFFFFFFFFFFFFFCC9FF4BFFFFFFFFFFBC7FFFFFFFFFCAF6FDFFFFFFFFFFFFFFFFFFFFFED71FFE7FFFFFFFFF2B67FFFFFFFFD1D9260FFFFFFFFFFFFFFFFFFFFF23C7FFBFFFFFFFFFCB61FFFFFFFFF8FECF777FFFFFFFFFFFFFFFFFCFE6EEBB46FFFFFFFFE0F4FFFFFFFFF",
	mem_init0 => X"FBD65D83BFFFFFFFFFFFFFFFFEFFFFD67F9FFFFFFFFF8AE1FFFFFFFF34FFFFDBF7FFFFFFFFFFFFFFFFE65DFEBBF9FFFFFFFFFF037FFFFFFFCDFF7BEDB7FFFFFFFFFFFFFFFFFF2DEF97FF05BFFFFFFD0B9FFFFFFFF7FBF7F6D3FFFFFFFFFFFFFFFFFFCAEFFFDF90DFFFFFFF6FE7FFFFFFFFAFFCFF7ADFFFFFFFFFFFFFFFFFC6C7BF3F408BFFFFFFB45DFFFFFFFFF5EFFF5B87FFFFFFFFFFFFFFFFFAEEFBBFFE10FFFFFFBFD5FFFFFFFFEA75FFE5E9FFFFFFFFFFFFFFDFF16FC7FFFAB81FFFFFF9FD5FFFFFFFFE77FFFFEC7DFFFFFFFFFFFFFFAE7DFB7FFC3BBFFFFFFCFF47FFFFFFFF9BFFF66BBFFFFFFFFFFFFFFFF62F7FDFFFE7D9FFFFFFF5ABFFFFFFFFD3F7",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y13_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a48\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFEFA3FFFFFFFFFFFFFFD45F9DFFFE0FF7FFFFFFBD1FFFFFFFFD87FFFDB947BFFFFFFFFFFFFFEAC1BDFFFF777FFFFFFFD3BFFFFFFFFFE7FFFF9DB35FFFFFFFFFFFFFFD1F7AFFFFEAEAFFFFFF6FD7FFFFFFFFEEDFFFFDF475FFFFFFFFFFFFFCDFCFDFFFFED1BFFFFFFFFEFFFFFFFFF9BFFFF6FAF8BFFFFFFFFFFFFFA761FFEFFDFF4FFFFFFFBFFDFFFFFFFA3FFFFFFE1C6FFFFFFFFFFFFFEFFC7FFFFFE90BFFFFFFFFFFFFFFFFBF96FFFFFF6EDBFFFFFFFFFFFFFFFFFFFFFFF8CEFFFFFFFFFFFFFFFFF7BFFFFFFFE79DFFFFFFFFFFFFE65FFFFFFFDFAFFFFFFFFFFFFFFFFFFFB4BFFFFFFFDC36FFFFFFFFFFFF2DF7FFFFFFFF3FFFFFFFFFFFFFFFFED37FFFFFF",
	mem_init2 => X"FFF8FFFFFFFFFFFFFA5FBFFFFFFFF9FFFFFFFFFFFFFFFFFBECEFBFFFFFFB1BFFFFFFFFFFF57B7BFFFFFFFD9FFFFFFFFFFFFFFFFFEAFF7FFFFE73DFFFFFFFFFFFB977F7FFFFFF848FFFFFFFFFFFFFFFFFFFD6FFFFFFFF0AA7FFFFFFFFFCFE577FFFFFED87FFFFFFFFFFFFFFFFEC6DFEFFFFFF8BE7FFFFFFFFFFC4EFEDFFFFF292FFFFFFFFFFFFFFFFFF8003FFFFFFF7E5F7BFFFFFFFFADBF5FFFFFFFFFFFFFFFFFFFFFFFFFF1FFC7FFFFFFFFFAFFFFFFFFFE1BFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFCFCBFFFFFFFFDCFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFBFFFFFFF7B1FFFFFFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"9F7FFFFFFFFDC0FBF7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF92FFFFFFFFE953F7FF7FFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4FFFFFFFFEF45FFFDFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFF63FFFFFF7B6FFAFD77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBBFAD4A5FBFFFFFF6E7F93FD73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FF7F5D7BFFFFFFFFFF6EDBF733FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7D4BF697FFFFFF15F4C9C95FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2BF20EF57FFFFFFE33FCDE00F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA7FB17FC7FFFFFFF27FF5FE171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5935EBB9",
	mem_init0 => X"BFFFFFF877F7CD9CE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F7F6EB9FFFFFFFFB2FFFFD3E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72A677925FFFFFF785FFFFE6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4DD7FF167FFFFFFCF87FFFD16AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF039BFFE4DDFFFFFF9F7FFFF469FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE7FFF9FE3FFFFFDBFFFFFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9043FFFD4FFFFFFEBBFFFFF74BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE12AFFFF3DBFFFFF1FFFFFFD5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF657FFDB26FFFFFEBCFFFFF5CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAA3FFDFBFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y13_N28
\imRead_clk|altsyncram_component|auto_generated|mux2|_~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~32_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a60~portadataout\) # 
-- ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- \imRead_clk|altsyncram_component|auto_generated|ram_block1a48~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a60~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a48~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~32_combout\);

-- Location: M9K_X53_Y14_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a72\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE27F0A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF070",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a72_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y13_N6
\imRead_clk|altsyncram_component|auto_generated|mux2|_~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~33_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~32_combout\ & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a84~portadataout\) # 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~32_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- \imRead_clk|altsyncram_component|auto_generated|ram_block1a72~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a84~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~32_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a72~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~33_combout\);

-- Location: LCCOMB_X52_Y13_N4
\b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b~0_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~33_combout\))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- (\imRead_clk|altsyncram_component|auto_generated|mux2|_~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~35_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \imRead_clk|altsyncram_component|auto_generated|mux2|_~33_combout\,
	combout => \b~0_combout\);

-- Location: M9K_X73_Y25_N0
\imRead_hr|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000600000000060000000002000000000300000000008000000001000000000100000000010000000009000000000D000000000400000000014000000000C000000008000000000000000000000000000000800000000080000000000000000010800000000C000000000D0000000003000000000100000000010",
	mem_init1 => X"00000000000000000000000000001000000000000000000000000000001000000000000000000000000000000000000001B8000000017800000000A4000000010C00000000380000000148000000000000000000000000000000000000000800000000000000000010000000001000000000000000000000000000005000000000200000000070000000009000000000080000000010000000009000000000800000000088000000001800000000100000000198000000010C000000004000000000500000000030000000003000000000200000000060000000007000000000F000000000D800000000F800000000D8000000009800000001D8000000009800",
	mem_init0 => X"00000098000000009800000000F800000000F800000000F0000000006000000000200000000060000000006000000000600000000030000000006000000001F400000000FC00000000D000000001C8000000031C000000061C00000006040000000786000000078400000007360000000306000000030C000000038C00000001DC00000001C800000000D800000000F800000000F800000000F000000000F0000000007000000000F000000000F000000000700000000070000000006000000000400000000060000000000000000000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/hand3e_40x131.mif",
	init_file_layout => "port_a",
	logical_ram_name => "minutes_hand:imRead_hr|altsyncram:altsyncram_component|altsyncram_b9r3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \imRead_hr|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_hr|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X50_Y21_N18
\b~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b~1_combout\ = (\process_0~16_combout\ & (((\imRead_hr|altsyncram_component|auto_generated|q_a\(0))))) # (!\process_0~16_combout\ & (\process_0~8_combout\ & (\b~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datab => \process_0~8_combout\,
	datac => \b~0_combout\,
	datad => \imRead_hr|altsyncram_component|auto_generated|q_a\(0),
	combout => \b~1_combout\);

-- Location: FF_X50_Y21_N19
\b[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b[0]~reg0_q\);

-- Location: M9K_X5_Y19_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a61\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFCF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC13F1FC3F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8AAD00F720F163FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E9BF3F97FB1BB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AA7FEFF5FF7FD8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99BFFFEBFD7F1FED2A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF935FC7F9FF5FC7F97453FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF76AFF9FEFFD7F3FEBF82DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA67BFDBFFFFDFF7FEFE25BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6FD7F7FEFFDFF1",
	mem_init2 => X"FFBFC6A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FF2FE3FBFEDFFFFBFE3E05FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC83FDBFBFFBFBFF7F97F3FE19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF85EFFAFE7FFFF3FFFF3FEFFD2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FF5FF9FFFFFFBFFFFFFEDFD709FFFFFFFFFFFFFFFFFFFFFFFFFFFFDF1FFFFFFFFFFFE7FFFFFFF7F3F9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFA7FFFFFFFFBFFFFFFE7F9FF8BFFFFFFFFFFFFFFFFFFFFFFFFFFF9B7FFDFFFFFFFFEFFFFFFFFFEFFE17FFFFFFFFFFFFFFFFFFFFFFFFFFD33FFEFFFFFFFFF8FFFFFFFFFDFFB27FFFFFFFFFFFFFFFFFFFFFFFFFC5F7FFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFC5A7FFFFFFFFFFFFFFFFFFFFFFFFFE7EFFFFFFFFFFFFDFFFFFFFFFFFFBF2FFFFFFFFFFFFFFFFFFFFFFFFFDFF2FFFFFFFFFFFD6FFFFFFFFFFFEFC6FFFFFFFFFFFFFFFFFFFFFFFF27FD7FFFFFFFFFF32DFFFFFFFFFFD3F87FFFFFFFFFFFFFFFFFFFFFFFD0FFDFFFFFFFFFFD3CBFFFFFFFFFFBFF83FFFFFFFFFFFFFFFFFFFFFFFEFFE9FFFFFFFFFF175FFFFFFFFFFAFFFD7FFFFFFFFFFFFFFFFFFFFFEFD7FCFFFFFFFFFFFFC7FFFFFFFFFD3FEF17FFFFFFFFFFFFFFFFFFFFFD70FFCFFFFFFFFFF3FC7FFFFFFFFF2FFFF2FFFFFFFFFFFFFFFFFFFFFE7E7FFBFFFFFFFFFCFE3FFFFFFFFF97FCBD7FFFFFFFFFFFFFFFFFFFFD3FEFFEBFFFFFFFFF0FC7FFFFFFFF",
	mem_init0 => X"FDFF7FEFFFFFFFFFFFFFFFFFFFFFBFFEFF1FFFFFFFFFCBE1FFFFFFFFF4FEFFFD7FFFFFFFFFFFFFFFFFFE1FFEFFF7FFFFFFFFE9FB7FFFFFFFFD7FFFFFBFFFFFFFFFFFFFFFFFFFA9FFDFFFEBFFFFFFFF2A9FFFFFFFFFFFFFFFC3FFFFFFFFFFFFFFFFFFAB47FFFFB1BFFFFFFFE36FFFFFFFFFFFFFFF50BFFFFFFFFFFFFFFFFFF1E7FDFFF097FFFFFFF921FFFFFFFFEEFFFF8B47FFFFFFFFFFFFFFFFFAFCBFBFE850FFFFFFF7FD7FFFFFFFFE3FFFE7F8FFFFFFFFFFFFFFFFF97F8FFFFABE7FFFFFFFFF7FFFFFFFFF6FFFF6FC7FFFFFFFFFFFFFFFFC7FD7FFFEBFB7FFFFFFFF4FFFFFFFFF9FFFFE7FBFFFFFFFFFFFFFFFFF3FFBFFFF4FFBFFFFFFA76BFFFFFFFFF1FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y17_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a49\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFA7FFFFFFFFFFFFFFF49FFFFFFE1FFFFFFFFFDE1FFFFFFFFFC7FFFFFFE6FFFFFFFFFFFFFFFA47FFFFFF5FFFFFFFFFE167FFFFFFFFE5FFFFFFF33FFFFFFFFFFFFFFF723FFFFFF2F7FFFFFFFCAFFFFFFFFFF2FFFFFFF53FFFFFFFFFFFFFFFEFDFFFFFFE83BFFFFFFDFFFFFFFFFFFCFFFFFFFEF0FFFFFFFFFFFFFFAFE3FFFFFEDF3FFFFFFFFFFFFFFFFFFF3FFFFFFD1E7FFFFFFFFFFFFFEBFEFFFFFFE90BFFFFFFFFFFFFFFFFFF9FFFFFFF9FAFFFFFFFFFFFFFF5FFBFFFFFFB83FFFFFFFFFFFFFFFFFFDBFFFFFFFFFCFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAFFFFFFFFFF1FFFFFFFFFFFFD7FFFFFFFFFFE1FFFFFFFFFFFFFFFFFF17FFFFFF",
	mem_init2 => X"FFFCBFFFFFFFFFFFEA5FFFFFFFFFFDFFFFFFFFFFFFFFFFFFCBFFFFFFFFFF0FFFFFFFFFFFFD2FFFFFFFFEF91FFFFFFFFFFFFFFFFFEBFFFFFFFFFEDDFFFFFFFFFFFFB7BFFFFFFFC48FFFFFFFFFFFFFFFFFF5893FFFFFFF88BFFFFFFFFFFFFECFFFFFFFFC05FFFFFFFFFFFFFFFFFE3FFFFFFFFF8D7FFFFFFFFFFF4FF7FFFFFFFD027FFFFFFFFFFFFFFFFF8003FFFFFFF7E7FFFFFFFFFFFBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFCFFFFFFFEFEFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7003FFFFFFFFFCFFFFFFFFFFB7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFFFD4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FBFFFFFFFFFFC5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FFFFFFFFF9A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63FFFFFFFFC30FFFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF767FFFFFFFF6F5BFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECBBFFFFFFFFE7E5FFFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFE5BDFFFFFFFFFDFFEFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5FE48FFFFFFFFFF8FFFFF29FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEAF2FFEDFFFFFFFCBFFFFD005FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEADDDDFF9FFFFFFFF7FFFFF6163FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3FB17F7A",
	mem_init0 => X"FFFFFFFE4FFFFE1027FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3FFFF1BFFFFFFEB7FFFFF1E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97E3FFF90FFFFFFF6A5FFFFEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5FDFFF94FFFFFFFCB7FFFFF3CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87DBFFF4DFFFFFFFBF5FFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE3FFFDBFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF555BFFEFCBFFFFFFBFFFFFFF4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA67FFFFF8FFFFFFDFBFFFFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD26FFFFFE5FFFFFDBFFFFFFDC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF32BFFFFFB7FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y20_N6
\imRead_clk|altsyncram_component|auto_generated|mux2|_~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~36_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a61~portadataout\)) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a49~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a61~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a49~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~36_combout\);

-- Location: M9K_X5_Y16_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a73\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF380F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5FF0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a73_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a73_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y16_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a85\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a85_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a85_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y20_N8
\imRead_clk|altsyncram_component|auto_generated|mux2|_~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~37_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~36_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a85~portadataout\) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~36_combout\ & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a73~portadataout\ & 
-- ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|mux2|_~36_combout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|ram_block1a73~portadataout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a85~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~37_combout\);

-- Location: M9K_X33_Y8_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a37\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF3FDFFFFDD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3BFFFFFF3FFFFFFBFFFFFF55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5F0FFFFF0BFFFFF9EFFFFFD37FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9FFFFE33FFFFFE2BFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1EDFFFF8E7FFFFF3EFFFFFEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0E7FFFD8EFFFFF7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDFFFFDFDFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD9DFFFFFA7FFFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1FFFFFFF9FFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FFFF99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7FFFD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C7FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC5FFFD73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFDFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFEDF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFEE9FFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FFFFFFFFDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFF517FEC4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFDBBFFFBF5FFA467FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA37FF913FFE7FFFD2F3FFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFC3AFFFFAFFFEFFFF378F",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE835FFFEBFFFBFFFE3E9FFFFFFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFF0737FFFBFFFDFFFF8FDBFFFFFFFFFFFFFFFFE01FFFFFFFFFFFFFFFFFC7F5FFFE7FFFFFFFEDFFFFFFFFFFFFFFFFFFF9A7FFFFFFFFFFFFFFFFD4FFDFFFBFFFEFFFF4BFFFFFFFFFFFFFFFFFFFC37FFFFFFFFFFFFFFFFAEEFFFFF3FFD0087E9DFFFFFFFFFFFFFFFFFFC47FFFFFFFFFFFFFFFFF9E4F27FCFFFFD3B7E07FFFFFFFFFFFFFFFFFE13FFFFFFFFFFFFFFFFFE973F4FEBFFFC777F11FFFFFFFFFFFFFFFFFF187FFFFFFFFFFFFFFFFEB5370037FFFFFFFFCBFFFFFFFFFFFFFFFFFFDA0FFFFFFFFFFFFFFFFFA1C3FFFDFFFFFFFFC7F5FFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y18_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a13\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFC5F17C3FFFF5F7FFFFFF1BFFFFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7E7F1F7FF35FFFFFFFCBFFFFE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E8FC3FFFEE6FFFFFFFFBFFFFEFE3FFFFFFFFFFFFFFFFFFFFFFFFFFF4FABF1F7FFF6FFFFFFFFBFFFFF3FCFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F4FC83FFFE3FFFFFFFD7FFFEABC5FFFFFFFFFFFFFFFFFFFFFFFFFFFE407F4EFFFFB7FFFFFFF1FFF7F4A97FFFFFFFFFFFFFFFFFFFFFFFFFFF1D3FD5FBFFDFFFFFFFFEBFF07FBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFC93FF4FF7FF3FFFFFFFFDFFD5FD21FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFD3FE3F97FFFFFFFFBFB0FF44FFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFED3E7FFFFFFFFDFD2FFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57AFFFFFFFFF8DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE7FFFFFFFFED87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAFFFFFFFFFFAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4FFFFFFFFFF4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFF7FFFFFFFFFFFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9FFFFFFFFFFAFFFFFFFFFFFF9BFFFFFFFFFFFFFFFF9FFFDFFFFFFFFF9FFFFFFFFFFFFF9FFFFFFFFFE2FFFFFFFFFFFFFFFFCBFFBFFFFFFFCFF3FFFFFFFFFFC9FFFFFFFFFFF8BFFFFFFFFFFFFFFF",
	mem_init1 => X"F0FFEFFFFFFFF3F2FFFFFFFFFFFB5AFFFFFFFFFE2FFFFFFFFFFFFFFFFC3FF9FFFFFFFD1FFFFFFFFFFFFF3C7FFFFFFFFF8BFFFFFFFFFFFFFFFF0FFE7FFFFFFF87BFFFFFFFFFFFD37FFFFFFFFFE2FFFFFFFFFFFFFFFFC3FF1FFFFFFFF5BFFFFFFFFFFFFEBFFFFFFFFFFCFFFFFFFFFFFFFFFFF8FFC7FFFFFFFE17FFFFFFFFFFFFDFFFFFFFFFFF3FFFFFFFFFFFFFFFFE3FF1FFFFFFFFEBFFFFFFFFFFFFEDFFFFFFFFFFCFFFFFFFFFFFFFFFFFCFFC3FFFFFFFFCFFFFFFFFFFFFFAFFFFFFFFFFF7FFFFFFFFFFFFFFFFE3FF0FFFFFE7FAFFFFFFFFFFFFFFCF8FFFFFFFFCFFFFFFFFFFFFFFFFF8FFC3FFFFF6FD3FFFFFFFFFFFFFFDE1FFFFFFFFBFFFFFE00FFE3FFFFE3F",
	mem_init0 => X"F0FFFFFF3EFFFFFFFFFFFFFFFCAEFFFFFFFFF7FFFFFFAADF77FFFF9FFEBFFFFFC9CFFFFFFFFFFFFFFF17FFFFFFFFE4FFFFFFEC97D5FFFFE5DF8FFFFFFE93FFFFFFFFFFFFFFF23FFFFFFFF91BFFFF802BF57FFFFB77E41FFFFF49FFFFFFFFFFFFFFFD1FFFFFFFFE1BFFFFFFCEFC5FFFFE11F917FFFFF1FFFFFFFFFFFFFFFFE7FBFFFFFF83BFFFFFE47F9FFFFFC37E11FFFFF97FFFFFFFFFFFFFFFF27DBFFFFFE0FFFFFFF7BFE7FFFFA5FF9BFFF7FEBFFFFFFFFFFFFFFFFFDFDFFFFFF97FFFFFF37FF9FFFFEAFFEBFFFDFE7FFFFFFFFFFFFFFFFFD9CFFFFFFE5FFFFFFA7FFE7FFFFEBFEFFFFE1F3FFFFFFFFFFFFFFFFFFF43FFFFFFFFFFFFFF7FFF9FFFFFFFFCFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y17_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a25\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFF97FFFFFFFFFFFFFFFFFAFABFFFFFFFFFFFF07BBFFFFFFFFFFFFFFFFF57FFFFFFFFFFFFFFFFFEFE0FFFEFFFF7FFFF7E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFBFFF9FFFCFFFF5BDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFE1FFFFBFFF3FFFE1C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77DFFFFEFFFBFFFF925FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA87FFFFFFFE1E7FF55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6CFFCFDFFF847FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFF6A7FFF5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF37FFDF2FFFBFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97FFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFE71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF2DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4EBFFFE27FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BFFFF567FFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7BFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1BFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFF8FFFFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFFFFC7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB7FFFFFFFFFE7FFFFEEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6FFF7FFFF7EFFFFFD67FFFFEFC33FFFFFFFFFFFFFFFFFFFFFFFFFFF8CDFC7FFFFC7BFFFFF81BFFFFA000FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFA64FF9FFFFE3CFFFFFF2DFFFFEF827FFFFFFFFFFFFFFFFFFFFFFFFFFF2E0FE7FFFFDEEFFFFFE3FFFFFF703FFFFFFFFFFFFFFFFFFFFFFFFFFFD7A7FDFFFFFCDFFFFFFBFFFFFFFFB7FFFFFFFFFFFFFFFFFFFFFFFFFFD7F0FE7FFFFFF1FFFFFC7FFFFFFF4BFFFFFFFFFFFFFFFFFFFFFFFFFFFD7E7F8FFFFFDB7FFFFFFFFFFFFF09FFFFFFFFFFFFFFFFFFFFFFFFFFFD7FDFE3FFFFFEBFFFFFFFFFFFFFA1FFFFFFFFFFFFFFFFFFFFFFFFFFFF57F5F8FFFFFF6FFFFFFBFFFFFFF17FFFFFFFFFFFFFFFFFFFFFFFFFFFC5F57C3FFFFFDFFFFFFEFFFFFFE37FFFFFFFFFFFFFFFFFFFFFFFFFFFF17D5F0FFFF9F77FFFFFECFFFFF37FFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y14_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF30FFFFFFFFFFFFFFFFFFFF5FFFFFBFFFFFFFFDFFFE7FFFFFFFFFFFFF907FFFFFFFFFFFFFFFFFFF0FFFFFCBFFFFFFFF3FFF9FFFFFFFFFFFFFFC5FFFFFFFFFFFFFFFFFFFF0FEFFFFFFFFFFFF5FEFD7FFFFFFFE7FEFFE2FFFFFFFFFFFFFFFFFFFFAFFFFFDFFFFFFFF47C3F5FFFFFFFF9FFFFF97EFFFFFFFFFFFFFFFFFFF77DBFF3FFFFFFFEBF1FC7DFFFFFFCFFA7F87FFFFFFFFFFFFFFFFFFFFFBE8FF3FFFFFFFF8BA3F48FFFFFFFC7F5FF7FFFFFFFFFFFFFFFFFFFFFD01FFF7FFFFFFFFA4BFF4DFFFFFFFFFF1F1FFFFFFFFFFFFFFFFFFFFFFC3BFFBFFFFFFFFF7A7F057FFFFFFCBFEF07FFFFFFFFFFFFFFFFFFFFFFEBFFBFFFFFFFFF4E9FFBFFFFFFFF5FFCCF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFDBFFFFFFFFFFFE0DFFBFFFFFFFFE7FE87FFFFFFFFFFFFFFFFFFFFFFF637D3FFFFFFFFFF77FEFFFFFFFFFD7FEBFFFFFFFFFFFFFFFFFFFFFFFFFB7CFFFFFFFFFFFFFFFFFFFFFFFF9FD5FFFFFFFFFFFFFFFFFFFFFFFFFEBCFFFFFFFFFFFFFFFFFFFFFBDFE5F9FFFFFFFFFFFFFFFFFFFFFFFFFFB47FDBFFFFFFFFFFFFFFFFFFCFFAC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF7FFFFFFFFFCFFFFFFFFF6FD1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FCFFBFFFFFFFFFFFFFFDFF3FF1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEFFD7FFFFFF8FFFFFFFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFF79CFFCFFFFFFFBFFFFFF7FFFE3FFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFE5D7FE7FEFFFFCFFFFFFE3FEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7FF3FEBFFFFBFFFF7F97F58DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE1F9FF5DF7FEFFFF7FFBFE83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF48EBFFBFEFFBF7FD7FFFEDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE4FFBFFBFEFFFF8FFFE1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65FFC7FEFDBF7FEDFFFD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D3FDFF3F6FD3FBFED43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0F57FEFDFFEFF5B6D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6ABFFBF7FF3FC50AFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFEF8E48FDFFFCFDF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDE7F2E63CBF1C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F8BFFF6FD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53F9FF1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE141FFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y20_N26
\imRead_clk|altsyncram_component|auto_generated|mux2|_~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~38_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a25~portadataout\) # 
-- ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a1~portadataout\ & 
-- !\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a25~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~38_combout\);

-- Location: LCCOMB_X34_Y20_N12
\imRead_clk|altsyncram_component|auto_generated|mux2|_~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~39_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~38_combout\ & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a37~portadataout\) # 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~38_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & 
-- \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a37~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|mux2|_~38_combout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~39_combout\);

-- Location: LCCOMB_X34_Y20_N22
\b~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b~2_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\imRead_clk|altsyncram_component|auto_generated|mux2|_~37_combout\)) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~37_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \imRead_clk|altsyncram_component|auto_generated|mux2|_~39_combout\,
	combout => \b~2_combout\);

-- Location: M9K_X73_Y24_N0
\imRead_hr|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000080000000000000000000000000000000000000000000000009000000000080000000000000000000800000000080000000008000000000000000000000000000008000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000001000000000100000000000000000000000000000000000000060000000004000000000E0000000020800000003B80000000130000000003000000000600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000040000000000000000000000000000000000000000000000000100000000008000000000000000000000000000000000000000000000000020000000002000000000000000000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/hand3e_40x131.mif",
	init_file_layout => "port_a",
	logical_ram_name => "minutes_hand:imRead_hr|altsyncram:altsyncram_component|altsyncram_b9r3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \imRead_hr|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_hr|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y20_N18
\b~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b~3_combout\ = (\process_0~16_combout\ & (((\imRead_hr|altsyncram_component|auto_generated|q_a\(1))))) # (!\process_0~16_combout\ & ((\b~2_combout\) # ((!\process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~2_combout\,
	datab => \process_0~8_combout\,
	datac => \imRead_hr|altsyncram_component|auto_generated|q_a\(1),
	datad => \process_0~16_combout\,
	combout => \b~3_combout\);

-- Location: FF_X34_Y20_N19
\b[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b[1]~reg0_q\);

-- Location: M9K_X53_Y37_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFEFFFFFFFFFFFFFFFFFFFFF8BFFFFFFFFFFFFFE27FFFBFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFC3FFFEFFFFFFFFFFFFFFB9FFFFFFFFFFFFFFFFFFFEFFFFFF8FFFFFFFEBFFFEBFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFF93F8FFAFFFFFFFFB7DFFAFFFFFFFFFFF9FF67FFFFFFFFFFFFFFFFFFFF07E7FEFFFFFFFFF7FEFFBDFFFFFFD3FDFFBBFFFFFFFFFFFFFFFFFFFFE5F7FFCFFFFFFFFB7DFFB7FFFFFFFBFF3FE9FFFFFFFFFFFFFFFFFFFFFEFE7F87FFFFFFFF5F4FCB1FFFFFFE3FFFEFFFFFFFFFFFFFFFFFFFFFFFFE3FE7FFFFFFFFC85FFFBFFFFFFFF7FD6FFFFFFFFFFFFFFFFFFFFFFFFD7FFCFFFFFFFFFB17FC7FFFFFFFFBFF33F",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFF2FF8FFFFFFFFFF71FF4FFFFFFFFE9FE7BFFFFFFFFFFFFFFFFFFFFFFFFC7EFFFFFFFFFFFFFFD7FFFFFFFFEFF95FFFFFFFFFFFFFFFFFFFFFFFFF5FBFFFFFFFFFFFFFFFFFFFFFFFF7FE9FFFFFFFFFFFFFFFFFFFFFFFFFD4BFFBFFFFFFFFFFFFFFFFFFFFFFBC6FFFFFFFFFFFFFFFFFFFFFFFFFFEBBFC7FFFFFFFFFFFFFFFFFFDFFD7DFFFFFFFFFFFFFFFFFFFFFFFFFFF84FFDFFFFFFFFFEFFFFFFFFF1FF747FFFFFFFFFFFFFFFFFFFFFFFFFFFDDFB7FFFFFFFFE7FFFFFFFFEFFEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97F7FEBFFFFFFEFFFFFFC7FC7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF072FF3FFFFFFE3FFFFFF8FF3FC3FFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFF26FFFFF9FFFFAFFFFFFFFFF387FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBFFFFF7FFFE3FFFDFFAFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DFE7FAFE3F8FE7F1FF7FF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF15E7FC7FDFE3F8FEFFE7E27FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF50FFFDFF7F8FE3FFFF0DE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA7FFFFDFE3F8FE3FE62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA29F1FFFF8FEBFCFF2B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2AFFDFE3F8FFBD93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE955FF7F8FEBFDEF7FFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFF4713BFE3F9F220BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD180E10C140E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0740009037FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C0600F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y24_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a26\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFF86FFFFFFFFFFFFFFFFFE4FD7FFFDFFF8FFFF7F87FFFFFFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFF93EFFFFF7FFEBFFFE9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FC7FFFFFFFAFFFFA72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFE3FFEBFFFFE3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF072FFFF8FFFDFFFFEDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FBFFFE3FFFDFFFFEB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA92FFDFAFFFFB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF497FF15BFFFA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFC0DFFF8FFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFF523FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E7FFFDD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEB5FFFFB1FFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF983FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4FFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEFFFFFFFFFF9FFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18FF8FFFFFFE3FFFFEB9FFFFF03CFFFFFFFFFFFFFFFFFFFFFFFFFFFFF31FDBFFFFF3DFFFFFFE7FFFFDFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFD937FEFFFFF853FFFFFD7FFFFF07DFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEEFFBFFFFD11FFFFF9BFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFFAFFFFFEAFFFFFF7FFFFFFFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFBFFFFFEDFFFFFFFFFFFFFF33FFFFFFFFFFFFFFFFFFFFFFFFFFF27FBFFFFFFFF8FFFFFF0FFFFFFFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFC9FAFFFFFFFFF7FFFFFE7FFFFFF9EFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FEBFFFFFFFF8FFFFFFCFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFAFFFFFFFFC7FFFFFF1D7FFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFF6FEBFFFFFFBFBFFFFFFDF1FFFF4BFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N14
\imRead_clk|altsyncram_component|auto_generated|mux2|_~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~42_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a26~portadataout\))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a2~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a26~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~42_combout\);

-- Location: M9K_X33_Y35_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a38\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFDFFFFFFE2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF4FFFFFFFFFFFFC5FFFFFFABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFB7FFFFE63FFFFFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7FFFF4CFFFFFD53FFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFF3FFFF33FFFFFEB17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB9FFFFE5DFFFFF8FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE123FFFFBE3FFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC26FFFFFFD7FFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFFFFFFFFFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFF7",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8FFFFEC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73FFFF287FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94BFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFF1FFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7FFE1BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFC03FFEA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF703FFFDE7FFBB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77FFC44FFFDFBFFDB97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5CFFF70BFFFFFFFCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC5FFFFCFFF8FFFFCFB3",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E9FFFF3FFE3FFFDFF7FFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFF77CFFFFDFFFAFFFF7FC7FFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFBEBFFFFFFFE3FFFD3FFFFFFFFFFFFFFFFFFFE5BFFFFFFFFFFFFFFFFFAFFFFFFDFFF8FFFF37FFFFFFFFFFFFFFFFFFC7CFFFFFFFFFFFFFFFFFD2FFFFFFFFFEFF7DF63FFFFFFFFFFFFFFFFFFBBBFFFFFFFFFFFFFFFFE71BEFFFBFFF82C47FEFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFF968F8B017FFE477DEEFFFFFFFFFFFFFFFFFFF67BFFFFFFFFFFFFFFFFE4AC6FFC9FFF8FFFFB7FFFFFFFFFFFFFFFFFFE5EFFFFFFFFFFFFFFFFF9FFDFFFF7FFE3FFFD9FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y20_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFDBFEFFFFFFCF8FFFFFFF74FFFFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FDBFEFFFECF3FFFFFFF4FFFFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDF7FFFFFFF98FFFFFFFCFFFFF93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFD3FE07FFF17FFFFFFE5FFFFECFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBFF7FFFFFFFFFFFFFEFFFFFD7F9FFFFFFFFFFFFFFFFFFFFFFFFFFF9D7FFB27FFF8FFFFFFFF6FFFFFBF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFE2DFE9FDFFE7FFFFFFFF7FFB7C437FFFFFFFFFFFFFFFFFFFFFFFFFFFF6CFFAFEFFF4FFFFFFFFE7FA9FADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEFFE7F1BFEFFFFFFFFF7FEFFFFAFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFAFE9FFFFFFFFC3CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEA7DFFFFFFFFFFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE57BFFFFFFFFE17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF53FFFFFFFFFD17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB7FFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFF87FFFFFFFFFFFFFFFFFFFDBFFFFFFFFFA7FFFFFFFFFF8FDFFFFFFFFFEDFFFFFFFFFFFFFFFFF7FFCFFFFFFFEFEFFFFFFFFFFFF7C3FFFFFFFFFB7FFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFF3FFFFFFFFFDFFFFFFFFFFF874FFFFFFFFFEDFFFFFFFFFFFFFFFFFFFFEFFFFFFFAF8FFFFFFFFFFFFD3FFFFFFFFFFB7FFFFFFFFFFFFFFFFFFFFBFFFFFFFFA7FFFFFFFFFFFEC7FFFFFFFFFEDFFFFFFFFFFFFFFFFFFFFEFFFFFFFF24FFFFFFFFFFFF97FFFFFFFFFFF7FFFFFFFFFFFFFFFF7FFFBFFFFFFFFE7FFFFFFFFFFFFAFFFFFFFFFFFDFFFFFFFFFFFFFFFFDFFFEFFFFFFFFD7FFFFFFFFFFFFF3FFFFFFFFFFF7FFFFFFFFFFFFFFFF3FFFFFFFFFFFF3FFFFFFFFFFFFFD7FBFFFFFFFF9FFFFFFFFFFFFFFFFDFFFFFFFFFEFFD7FFFFFFFFFFFFF3FF7FFFFFFFF7FFFFFFFFFFFFFFFF7FFFFFFFFF0FEBFFFFFFFFFFFFFF3DDFFFFFFFF5FFFFFFFFF7C3FFFFDFF",
	mem_init0 => X"FFFFFFFCFE3FFFFFFFFFFFFFFF20FFFFFFFFCFFFFFF8551F0FFFFF7FFD7FFFFFF73FFFFFFFFFFFFFFFE87FFFFFFFFA0FFFFE136FCBFFFFDFFF7FFFFFFD2FFFFFFFFFFFFFFFEDFFFFFFFFFEE7FFFF8057F2FFFFF487DBDFFFFF37FFFFFFFFFFFFFFFEFFFFFFFFFFE5FFFFFFF0FDBFFFFDEDF6E7FFFFEEFFFFFFFFFFFFFFFF9FFBFFFFFFFE7FFFFFFBFFEFFFFF3FFDEDFFFFFE7FFFFFFFFFFFFFFFF5FC7FFFFFFFFFFFFFF07FFBFFFFD9FF6FFFFFFF3FFFFFFFFFFFFFFFFF3E3FFFFFFE7FFFFFFCBFFEFFFFF5FFD3FFF2FFBFFFFFFFFFFFFFFFFFC73FFFFFFE7FFFFFF98FFFBFFFFD7FF0FFFEFFDFFFFFFFFFFFFFFFFFFC9FFFFFFFFFFFFFFE9FFFEFFFFFFFFF7F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N24
\imRead_clk|altsyncram_component|auto_generated|mux2|_~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~43_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~42_combout\ & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a38~portadataout\) # 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0))))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~42_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a14~portadataout\ & 
-- \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|mux2|_~42_combout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|ram_block1a38~portadataout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~43_combout\);

-- Location: M9K_X5_Y23_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a62\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"003CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63EC0E03C0DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5537FE9D30E97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4177FFFEFFFDC45FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8597FDFEBFEFF270FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC66F3FF7FAFFFFF0557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACFFFFFFFEBFFFFAFBABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC95FFFFF7FAFFFFF7FFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58E5FC7FDFE3FC7F8FFEA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BFEFF8FF7FAFFD",
	mem_init2 => X"FC7FBFD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EFF5FFBFDFE3FCFFDFFFF79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF35FFE3FDFE7F8FFFFEFFCFFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7997FDFE3FFFEFFFFFDFF7FE51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1FBFE7FFFFFF8FFFFFFF1FEFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFC3FDFFFFFFEBFFFFFF8FF4F67FFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFDFFFFFFFFF8FFFFFFF7FEFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFE4FFE1FFFFFFFFE3FFFFFFFFE1FFEBFFFFFFFFFFFFFFFFFFFFFFFFFFCC4FFFFFFFFFFFFFFFFFFFFFFBFFCD7FFFFFFFFFFFFFFFFFFFFFFFFFFBEBFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFF3FFA5FFFFFFFFFFFFFFFFFFFFFFFFFE1F9FFFFFFFFFFFF0FFFFFFFFFFFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFAFFDFFFFFFFFFFFA8FFFFFFFFFFF9FDBFFFFFFFFFFFFFFFFFFFFFFFFDBFEFFFFFFFFFFFCDBFFFFFFFFFFEFFF9FFFFFFFFFFFFFFFFFFFFFFFAFFFE7FFFFFFFFFCDF3FFFFFFFFFFCFFFBFFFFFFFFFFFFFFFFFFFFFFC37FF7FFFFFFFFFFEFAFFFFFFFFFF9FFC2FFFFFFFFFFFFFFFFFFFFFFE0EFFD3FFFFFFFFF83F9FFFFFFFFFEFFF0EFFFFFFFFFFFFFFFFFFFFFFAFEFFBFFFFFFFFFFDFB7FFFFFFFFFDFF87DFFFFFFFFFFFFFFFFFFFFFDFF9FE7FFFFFFFFFF7FFFFFFFFFFFA7FF3C9FFFFFFFFFFFFFFFFFFFFEFF97FF7FFFFFFFFFFFBFFFFFFFFF",
	mem_init0 => X"C7FFBF93FFFFFFFFFFFFFFFFFFFE5FF1FFEFFFFFFFFFB3DFFFFFFFFFF3FF9FF27FFFFFFFFFFFFFFFFFFFE7FE3FFFFFFFFFFFF664FFFFFFFFFE7FF7FC5FFFFFFFFFFFFFFFFFFFDEFFFFFFC7FFFFFFFED57FFFFFFFFFFFFFFE3FFFFFFFFFFFFFFFFFFFD3AFFFFFEE3FFFFFFFDC9FFFFFFFFFFFFFFFAF3FFFFFFFFFFFFFFFFFEDFBFFFFCF6FFFFFFFF6BDFFFFFFFFF1FFFFF7B7FFFFFFFFFFFFFFFFF4FF7FFFF78EFFFFFFFFFA7FFFFFFFF9BFFFF9F6FFFFFFFFFFFFFFFFFE7FF7FFF93DBFFFFFFFFCBFFFFFFFFF9FFFF0FF9FFFFFFFFFFFFFFFFFFFFBFFFFDFCFFFFFFE0FBFFFFFFFFFE7FFFE7FC3FFFFFFFFFFFFFFFFCFFFFFFFBFE7FFFFFFD9D3FFFFFFFFEFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y32_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a50\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFF5FFFFFFFFFFFFFFFF31FFFFFFDDFFFFFFFFFA1FFFFFFFFFF37FFFFFFF9FFFFFFFFFFFFFFF9BFFFFFFFAFFFFFFFFFFE9FFFFFFFFFFBFFFFFFECFFFFFFFFFFFFFFFCBDFFFFFFEDF1FFFFFFFD57FFFFFFFFFDFFFFFFF20FFFFFFFFFFFFFFF1FA7FFFFFD783FFFFFFFFFFFFFFFFFFB3FFFFFFD3EFFFFFFFFFFFFFFD7EFFFFFFF20CFFFFFFFFFFFFFFFFFFFDFFFFFFCFF9FFFFFFFFFFFFFF3FDFFFFFFD6F7FFFFFFFFFFFFFFFFFF67FFFFFFFFD7FFFFFFFFFFFFE3FFFFFFFFFD5DFFFFFFFFFFFFFFFFFFE7FFFFFFFFF3FFFFFFFFFFFFFBFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFE5FFFFFFFFFFDFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFF",
	mem_init2 => X"FFFF7FFFFFFFFFFFE5BFFFFFFFFFFAFFFFFFFFFFFFFFFFFFF7FFFFFFFFFEFFFFFFFFFFFFFAD3FFFFFFFEF9DFFFFFFFFFFFFFFFFFE5FFFFFFFFFFA1FFFFFFFFFFFE70FFFFFFFFFB77FFFFFFFFFFFFFFFFF2FFFFFFFFFF737FFFFFFFFFFE3FAFFFFFFFF3FBFFFFFFFFFFFFFFFFFDC00FFFFFFFB79FFFFFFFFFFFBFFFFFFFFFF802FFFFFFFFFFFFFFFFFF7FFFFFFFFFF9E9FFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFFFFFFDFD7FFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FCFFFFFFFFFF39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBFFFFFFFFFA1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9FFFFFFFFFFFF7FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8DFFFFFFFFF1F27FF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB37FFFFFFFFDFFAFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23C3FFFFFFFF3FE17F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4FF33F9FFFFFFFFFFFF1F9601FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF14F57FE3FFFFFFFD7FFDFEFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF521E7FFEFFFFFFFF8FFFFF9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCA7FFFFD",
	mem_init0 => X"FFFFFFF9BFFFFE6857FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDFDFFFFA3FFFFFFF4BFFFFEFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFFAFFFFFFFF899FFFF9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF2FFFAA1FFFFFFD7C7FFFEFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFCBEFFFFFFF7FBFFFFBE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3EDFFFEF9FFFFFF87FFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF27FFFFF3FFFFFF7FFFFFF857FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE499FFFFFFFFFFFFBFFFFFFE93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED9FFFFFEBFFFFFC7FFFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD7FFFFFC7FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N26
\imRead_clk|altsyncram_component|auto_generated|mux2|_~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~40_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a62~portadataout\) # 
-- ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a50~portadataout\ & 
-- !\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datab => \imRead_clk|altsyncram_component|auto_generated|ram_block1a62~portadataout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a50~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~40_combout\);

-- Location: M9K_X53_Y19_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a74\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF600F",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a74_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a74_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y31_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a86\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a86_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a86_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N12
\imRead_clk|altsyncram_component|auto_generated|mux2|_~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~41_combout\ = (\imRead_clk|altsyncram_component|auto_generated|mux2|_~40_combout\ & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a86~portadataout\)) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1)))) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~40_combout\ & (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & 
-- (\imRead_clk|altsyncram_component|auto_generated|ram_block1a74~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|mux2|_~40_combout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a74~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a86~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~41_combout\);

-- Location: LCCOMB_X52_Y23_N18
\b~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b~4_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~41_combout\))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- (\imRead_clk|altsyncram_component|auto_generated|mux2|_~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imRead_clk|altsyncram_component|auto_generated|mux2|_~43_combout\,
	datac => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datad => \imRead_clk|altsyncram_component|auto_generated|mux2|_~41_combout\,
	combout => \b~4_combout\);

-- Location: M9K_X73_Y27_N0
\imRead_hr|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000600000000178000000016800000001F000000000F0000000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/hand3e_40x131.mif",
	init_file_layout => "port_a",
	logical_ram_name => "minutes_hand:imRead_hr|altsyncram:altsyncram_component|altsyncram_b9r3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \imRead_hr|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_hr|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y23_N20
\b~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b~5_combout\ = (\process_0~16_combout\ & (((\imRead_hr|altsyncram_component|auto_generated|q_a\(2))))) # (!\process_0~16_combout\ & (\process_0~8_combout\ & (\b~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \b~4_combout\,
	datac => \process_0~16_combout\,
	datad => \imRead_hr|altsyncram_component|auto_generated|q_a\(2),
	combout => \b~5_combout\);

-- Location: FF_X52_Y23_N21
\b[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b[2]~reg0_q\);

-- Location: M9K_X73_Y21_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a87\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode490w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a87_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a87_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y33_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a51\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFF8FFFFFFFFFFFFFFFF83FFFFFFE3FFFFFFFFF001FFFFFFFFF8FFFFFFFE1FFFFFFFFFFFFFFFC43FFFFFF87FFFFFFFFE00FFFFFFFFFC3FFFFFFF03FFFFFFFFFFFFFFE387FFFFFE1FFFFFFFFFE0FFFFFFFFFF0FFFFFFF8C7FFFFFFFFFFFFFF1F0FFFFFF83C7FFFFFFFFFFFFFFFFFFC7FFFFFF871FFFFFFFFFFFFFF8FF1FFFFFF001FFFFFFFFFFFFFFFFFFE1FFFFFFE3E3FFFFFFFFFFFFFC7FEFFFFFFE007FFFFFFFFFFFFFFFFFF8FFFFFFF9FC7FFFFFFFFFFFFF1FFFFFFFFFE31FFFFFFFFFFFFFFFFFFC3FFFFFFFFF8FFFFFFFFFFFFF8FFFFFFFFFFFC7FFFFFFFFFFFFFFFFFF1FFFFFFFFFE3FFFFFFFFFFFFC1FFFFFFFFFFF1FFFFFFFFFFFFFFFFFF8FFFFFFF",
	mem_init2 => X"FFFC7FFFFFFFFFFFF03FFFFFFFFFFC7FFFFFFFFFFFFFFFFFC3FFFFFFFFFF0FFFFFFFFFFFF887FFFFFFFF063FFFFFFFFFFFFFFFFFF1FFFFFFFFFF03FFFFFFFFFFFC787FFFFFFF800FFFFFFFFFFFFFFFFFF87FFFFFFFFF847FFFFFFFFFFF1F1FFFFFFFE003FFFFFFFFFFFFFFFFFC000FFFFFFFC38FFFFFFFFFFF8FE7FFFFFFFFFDFFFFFFFFFFFFFFFFFF0003FFFFFFF3F3FFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFFFFFFFFC7FFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FC7FFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFCC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFE383FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFF9F87FF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF071FFFFFFFFC7F07FE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87E7FFFFFFFE3FF0FF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFF87F8FFFFFFFF8FFE3FE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01F83FF3FFFFFFFE7FFEFE0007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003C3FFC7FFFFFFF1FFFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8307BFFF1",
	mem_init0 => X"FFFFFFFC1FFFFF878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E0FFFFC7FFFFFFE01FFFFE1F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FC3FFFC0FFFFFFF9C3FFFF878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F0FFFC13FFFFFFE78FFFFE1C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FC3FFE1C7FFFFFF1FBFFFF873FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1F0FFF9F1FFFFFFCFFFFFFE18FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8387FFFFE7FFFFFE3FFFFFF8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFF8FFFFFF8FFFFFFE31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFFFF3FFFFFE7FFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFCFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode457w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\);

-- Location: M9K_X5_Y22_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a63\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0008FF3FC000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800FE3FCFF1E003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE004FF8FF3FC7FC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01F1FE3FCFF1FF380FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03FC7F8FF3FC7FCFC07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808FF1FE3FCFF1FE3FC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81F3FE7F8FF3FCFF9FF103FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FC7F9FE3FCFF3",
	mem_init2 => X"FE7FCF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FF9FE7F8FF3FC7F1FE3F83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF823FE7F8FFFFCFFFFC7F9FF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83CFF8FFFFFFF3FFFFFFC7F883FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83F1FF3FFFFFFCFFFFFFF3FE383FFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FE7FFFFFFFFF3FFFFFFCFF9F83FFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FF8FFFFFFFFFCFFFFFFFBFC7F07FFFFFFFFFFFFFFFFFFFFFFFFFFFC07FF3FFFFFFFFF3FFFFFFFFF3FF07FFFFFFFFFFFFFFFFFFFFFFFFFFE19FFDFFFFFFFFFFFFFFFFFFF8FFC0FFFFFFFFFFFFFFFFFFFFFFFFFFE0E3FFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFE30FFFFFFFFFFFFFFFFFFFFFFFFFF0FC7FFFFFFFFFFFFFFFFFFFFFFFF1E1FFFFFFFFFFFFFFFFFFFFFFFFF07F1FFFFFFFFFFF01FFFFFFFFFFFC7E1FFFFFFFFFFFFFFFFFFFFFFFF87FE3FFFFFFFFFF801FFFFFFFFFFE3FC3FFFFFFFFFFFFFFFFFFFFFFFC1FF8FFFFFFFFFFE007FFFFFFFFFF1FF87FFFFFFFFFFFFFFFFFFFFFFE03FF1FFFFFFFFFF0F0FFFFFFFFFFC7FE07FFFFFFFFFFFFFFFFFFFFFF187FE7FFFFFFFFFC7E3FFFFFFFFFE3FF10FFFFFFFFFFFFFFFFFFFFFF0F1FF8FFFFFFFFFE1F8FFFFFFFFFF1FF8E1FFFFFFFFFFFFFFFFFFFFF87E3FF1FFFFFFFFF87E1FFFFFFFFFCFFC7E3FFFFFFFFFFFFFFFFFFFFC3FC7FC7FFFFFFFFE1F87FFFFFFFF",
	mem_init0 => X"E3FE1FC7FFFFFFFFFFFFFFFFFFFE1FF8FF8FFFFFFFFFC7E1FFFFFFFFF9FFCFF8FFFFFFFFFFFFFFFFFFFF03FF7FE7FFFFFFFFF0F07FFFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFC001FFFFFFFFFFFFFFF01FFFFFFFFFFFFFFFFFFC71FFFFFC07FFFFFFF8007FFFFFFFFFFFFFF8C7FFFFFFFFFFFFFFFFFE3E1FFFFE007FFFFFFF863FFFFFFFFFFFFFFC78FFFFFFFFFFFFFFFFFF1FC3FFFF061FFFFFFFFF8FFFFFFFFFC7FFFE3F1FFFFFFFFFFFFFFFFF8FF8FFFFC7C3FFFFFFFFE3FFFFFFFFE1FFFF9FE3FFFFFFFFFFFFFFFFC3FF7FFFE1F0FFFFFFF1F0FFFFFFFFF87FFFFFFC7FFFFFFFFFFFFFFFE1FFFFFFF87FFFFFFFFC387FFFFFFFFE1FF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode468w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y22_N30
\imRead_clk|altsyncram_component|auto_generated|mux2|_~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~44_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead_clk|altsyncram_component|auto_generated|ram_block1a63~portadataout\) # 
-- (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a51~portadataout\ & 
-- ((!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a51~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a63~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~44_combout\);

-- Location: M9K_X53_Y16_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a75\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode479w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a75_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a75_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y22_N8
\imRead_clk|altsyncram_component|auto_generated|mux2|_~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~45_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~44_combout\ & 
-- (\imRead_clk|altsyncram_component|auto_generated|ram_block1a87~portadataout\)) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~44_combout\ & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a75~portadataout\))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (((\imRead_clk|altsyncram_component|auto_generated|mux2|_~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a87~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \imRead_clk|altsyncram_component|auto_generated|mux2|_~44_combout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a75~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~45_combout\);

-- Location: M9K_X53_Y32_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a39\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFF1FFFFFFE07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8787FFFFF1FFFFFC3FFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E1FFFFFC7FFFFF01FFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC7FFFF81FFFFF881FFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1FFFF803FFFFE78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8707FFFE38FFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFF3FFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFFFFCFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFF1FFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFF3",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFE01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00FFFF907FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF833FFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF3FFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFF801FFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFE20FFF003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFE01FFF8FFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807FF8E7FFE3FFFE1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FFFF9FFF9FFFF0FC7",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C3FFFE7FFE7FFFC3F0FFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFF8F87FFF8FFF9FFFF0FFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFC3FFFFFE3FFE7FFFC3FFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFF1FFFFFF8FFF9FFFF87FFFFFFFFFFFFFFFFFFE00FFFFFFFFFFFFFFFFFC71FFFFE3FFE0003E03FFFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFF001F0000FFF8000FC0FFFFFFFFFFFFFFFFFFC00FFFFFFFFFFFFFFFFFC003C0003FFE3883F03FFFFFFFFFFFFFFFFFF803FFFFFFFFFFFFFFFFF070F0000FFF9FFFF87FFFFFFFFFFFFFFFFFFE01FFFFFFFFFFFFFFFFFC3E1FFFE3FFE7FFFE3FFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode446w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y18_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFC387FFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFF0FFFC3FFFFFFFFFFFFF8C3FFFFFFFFFFFFFFFFFFE1FFFFFE7FFFFFFF87FFF0FFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFC3FF3FF1FFFFFFFE1FFFC3FFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFFFC7FC7FC7FFFFFFF8FE3F0FFFFFFFF1FF3FF8FFFFFFFFFFFFFFFFFFFFF8FE3FE3FFFFFFFE1F0FC03FFFFFFE7FC7FC7FFFFFFFFFFFFFFFFFFFFF0F1FF1FFFFFFFF87C3F007FFFFFF8FF8FC3FFFFFFFFFFFFFFFFFFFFFE18FFCFFFFFFFFE0E1FC03FFFFFFF1FE3E1FFFFFFFFFFFFFFFFFFFFFFC07FE3FFFFFFFFC007F07FFFFFFFC7FC70FFFFFFFFFFFFFFFFFFFFFFF81FF1FFFFFFFFF803FC3FFFFFFFF8FF887",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFF87FC7FFFFFFFFF83FF1FFFFFFFFF3FF07FFFFFFFFFFFFFFFFFFFFFFFF0FE3FFFFFFFFFFFFFFFFFFFFFFFC7FC3FFFFFFFFFFFFFFFFFFFFFFFFE0F1FFFFFFFFFFFFFFFFFFFFFFFF8FC3FFFFFFFFFFFFFFFFFFFFFFFFFE1C7FFFFFFFFFFFFFFFFFFFFFFFE3E1FFFFFFFFFFFFFFFFFFFFFFFFFFC03FE7FFFFFFFFFFFFFFFFFFE7FC60FFFFFFFFFFFFFFFFFFFFFFFFFFFC1FF1FFFFFFFFF9FFFFFFFFF9FF80FFFFFFFFFFFFFFFFFFFFFFFFFFFF83FCFFFFFFFFFE3FFFFFFFFE3FE07FFFFFFFFFFFFFFFFFFFFFFFFFFFF83E3FE7FFFFFF9FFFFFFE7F8FF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFF839FF9FFFFFFE7FFFFFF9FF1F07FFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFF807FC7FFFFFF9FFFFFFE3FC703FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FF1FE3FFFE7FFFE7FCFF803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FCFF9FFFF9FFFF9FF1FE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83F3FE7F8FE7F9FE3FC7F03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF818FF1FE3F9FE7F8FF9E07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF803FC7F8FE7F9FF3FE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC07F3FE3F9FE7FC7F80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01CFF8FE7F9FF1E00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FE3F9FE7FE001FFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFF800FCFE7F8FC007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001F9FE0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode406w\(3),
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y6_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a27\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFC07FFFFFFFFFFFFFFFFF1F87FFF8FFF9FFFF8FC7FFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFFFC7F1FFFE3FFE7FFFC3E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F87FFF8FFF9FFFF8787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E1FFFE7FFE7FFFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F87FFF9FFF8FFFFC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003FFFE7FFE207FF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC01FFE01FFF801FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFF807FFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFCFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF3FFFE01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC08FFFF8FFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFCFFFFF1F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FF0FFFFFFF3FFFFE70FFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFFFF003FE3FFFFCF8FFFFF803FFFFC001FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFC387F0FFFFF027FFFFE03FFFFF0007FFFFFFFFFFFFFFFFFFFFFFFFFFE1F1FC3FFFFE01FFFFFC7FFFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFF87C3F0FFFFFF07FFFFF1FFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFE1F0FC3FFFFFF3FFFFFC7FFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFF8FC3F0FFFFFFCFFFFFF9FFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFE3F0FC3FFFFFE3FFFFFE3FFFFFFC1FFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC3F0FFFFFF9FFFFFF8FFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F0FC3FFFFFE7FFFFFF3EFFFFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC3F0FFFF7F1FFFFFFC63FFFF87FFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode435w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y22_N18
\imRead_clk|altsyncram_component|auto_generated|mux2|_~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~46_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a27~portadataout\))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1) & (\imRead_clk|altsyncram_component|auto_generated|ram_block1a3~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead_clk|altsyncram_component|auto_generated|ram_block1a27~portadataout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(1),
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~46_combout\);

-- Location: M9K_X73_Y19_N0
\imRead_clk|altsyncram_component|auto_generated|ram_block1a15\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFE3F0FC3FFFC3CFFFFFFF807FFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FC3F0FFFF023FFFFFFE07FFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F0FC3FFFF01FFFFFFF87FFFFC7E1FFFFFFFFFFFFFFFFFFFFFFFFFFF87C7F00FFFF87FFFFFFF3FFFFF1F87FFFFFFFFFFFFFFFFFFFFFFFFFFE1E1FC01FFFF1FFFFFFFC7FFFFC3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFC387F01FFFFCFFFFFFFF9FFFBF070FFFFFFFFFFFFFFFFFFFFFFFFFFFF003FC3FBFFE3FFFFFFFE3FFCFE003FFFFFFFFFFFFFFFFFFFFFFFFFFFE01FF1FC3FF9FFFFFFFF8FFC3FC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFC7F87FC7FFFFFFFF1FC1FF81FFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFF07F3FFFFFFFFE7E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F8FFFFFFFFF8E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C7FFFFFFFFF20FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFC7FFFFFFFFFFFC7FFFFFFFFFFFFFFFF0FFE7FFFFFFFFFCFFFFFFFFFFF1FFFFFFFFFFFF1FFFFFFFFFFFFFFFFC3FF0FFFFFFFDFE3FFFFFFFFFFE3E7FFFFFFFFFC7FFFFFFFFFFFFFFF",
	mem_init1 => X"F0FFC3FFFFFFE1F1FFFFFFFFFFFCE1FFFFFFFFFF1FFFFFFFFFFFFFFFFC3FF0FFFFFFFC3C7FFFFFFFFFFF00FFFFFFFFFFC7FFFFFFFFFFFFFFFF0FFC3FFFFFFF863FFFFFFFFFFFE0FFFFFFFFFFF1FFFFFFFFFFFFFFFFC3FF0FFFFFFFF81FFFFFFFFFFFFC7FFFFFFFFFF87FFFFFFFFFFFFFFFF0FFC3FFFFFFFF0FFFFFFFFFFFFF1FFFFFFFFFFE1FFFFFFFFFFFFFFFFC3FF0FFFFFFFFE3FFFFFFFFFFFFE3FFFFFFFFFF87FFFFFFFFFFFFFFFF0FFC3FFFFFFFF1FFFFFFFFFFFFFC7FFFFFFFFFE1FFFFFFFFFFFFFFFFC3FF0FFFFFFFF8FFFFFFFFFFFFFF8FCFFFFFFFF87FFFFFFFFFFFFFFFF0FFC3FFFFF9FC7FFFFFFFFFFFFFE1E3FFFFFFFE1FFFFFE000FFFFFFFC3F",
	mem_init0 => X"F0FFFFFE1F1FFFFFFFFFFFFFFC71FFFFFFFF87FFFFF8003F8FFFFF0FFC3FFFFFC38FFFFFFFFFFFFFFF80FFFFFFFFE1FFFFFE000FE3FFFFC3FF0FFFFFF847FFFFFFFFFFFFFFF07FFFFFFFF803FFFFFF83F8FFFFF00FC03FFFFF83FFFFFFFFFFFFFFFE3FFFFFFFFE00FFFFFFE1FE3FFFFC03F00FFFFFF1FFFFFFFFFFFFFFFFC7FFFFFFFF81FFFFFFF07F0FFFFF00FC03FFFFF8FFFFFFFFFFFFFFFFF8FE7FFFFFE1FFFFFFF83FC3FFFFC3FF07FFE7FC7FFFFFFFFFFFFFFFFE1F1FFFFFF8FFFFFFF81FF0FFFFF1FFC7FFF8FE1FFFFFFFFFFFFFFFFFE38FFFFFFFBFFFFFFC1FFC3FFFFC7FF1FFFF1F0FFFFFFFFFFFFFFFFFF847FFFFFFFFFFFFFC0FFF0FFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/download_226x223.mif",
	init_file_layout => "port_a",
	logical_ram_name => "image_clock:imRead_clk|altsyncram:altsyncram_component|altsyncram_0mr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \imRead_clk|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	portaaddr => \imRead_clk|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_clk|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y22_N20
\imRead_clk|altsyncram_component|auto_generated|mux2|_~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \imRead_clk|altsyncram_component|auto_generated|mux2|_~47_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~46_combout\ & 
-- (\imRead_clk|altsyncram_component|auto_generated|ram_block1a39~portadataout\)) # (!\imRead_clk|altsyncram_component|auto_generated|mux2|_~46_combout\ & ((\imRead_clk|altsyncram_component|auto_generated|ram_block1a15~portadataout\))))) # 
-- (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0) & (((\imRead_clk|altsyncram_component|auto_generated|mux2|_~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \imRead_clk|altsyncram_component|auto_generated|ram_block1a39~portadataout\,
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datac => \imRead_clk|altsyncram_component|auto_generated|mux2|_~46_combout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	combout => \imRead_clk|altsyncram_component|auto_generated|mux2|_~47_combout\);

-- Location: LCCOMB_X52_Y22_N14
\b~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b~6_combout\ = (\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & (\imRead_clk|altsyncram_component|auto_generated|mux2|_~45_combout\)) # (!\imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2) & 
-- ((\imRead_clk|altsyncram_component|auto_generated|mux2|_~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \imRead_clk|altsyncram_component|auto_generated|out_address_reg_a\(2),
	datac => \imRead_clk|altsyncram_component|auto_generated|mux2|_~45_combout\,
	datad => \imRead_clk|altsyncram_component|auto_generated|mux2|_~47_combout\,
	combout => \b~6_combout\);

-- Location: M9K_X73_Y29_N0
\imRead_hr|altsyncram_component|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F000000000F000000001F000000001F800000001F800000000F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./e/hand3e_40x131.mif",
	init_file_layout => "port_a",
	logical_ram_name => "minutes_hand:imRead_hr|altsyncram:altsyncram_component|altsyncram_b9r3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \imRead_hr|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \imRead_hr|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X52_Y22_N28
\b~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b~7_combout\ = (\process_0~16_combout\ & (((\imRead_hr|altsyncram_component|auto_generated|q_a\(3))))) # (!\process_0~16_combout\ & (\process_0~8_combout\ & (\b~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \b~6_combout\,
	datac => \process_0~16_combout\,
	datad => \imRead_hr|altsyncram_component|auto_generated|q_a\(3),
	combout => \b~7_combout\);

-- Location: FF_X52_Y22_N29
\b[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b[3]~reg0_q\);

-- Location: LCCOMB_X46_Y29_N18
\process_0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~17_combout\ = (hposition(9)) # ((hposition(6) & (hposition(4) & hposition(5))) # (!hposition(6) & (!hposition(4) & !hposition(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(6),
	datab => hposition(4),
	datac => hposition(5),
	datad => hposition(9),
	combout => \process_0~17_combout\);

-- Location: LCCOMB_X46_Y29_N24
\process_0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~18_combout\ = (hposition(7)) # ((\process_0~17_combout\) # ((hposition(8)) # (!\process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hposition(7),
	datab => \process_0~17_combout\,
	datac => hposition(8),
	datad => \process_0~0_combout\,
	combout => \process_0~18_combout\);

-- Location: FF_X46_Y29_N25
\hsync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \process_0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hsync~reg0_q\);

-- Location: LCCOMB_X49_Y29_N8
\process_0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~19_combout\ = (vposition(1) & vposition(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => vposition(1),
	datac => vposition(3),
	combout => \process_0~19_combout\);

-- Location: LCCOMB_X49_Y29_N20
\process_0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~20_combout\ = (vposition(4)) # (((vposition(2)) # (!\LessThan1~7_combout\)) # (!\process_0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => vposition(4),
	datab => \process_0~19_combout\,
	datac => vposition(2),
	datad => \LessThan1~7_combout\,
	combout => \process_0~20_combout\);

-- Location: LCCOMB_X46_Y28_N8
\process_0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~21_combout\ = ((vposition(31)) # ((vposition(9)) # (\process_0~20_combout\))) # (!\LessThan1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~6_combout\,
	datab => vposition(31),
	datac => vposition(9),
	datad => \process_0~20_combout\,
	combout => \process_0~21_combout\);

-- Location: FF_X46_Y28_N9
\vsync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \disp_clk|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \process_0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vsync~reg0_q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


