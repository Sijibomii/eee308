library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eee308 is
--generics are a local form of constant which 
--can be assigned a value when we instantiate a component
generic(image_Width  : INTEGER := 20; -- Width of image in memory
        image_Height : INTEGER := 20; -- Height of image in memory
	
		  fr1_image_Width  : INTEGER := 20; -- Width of image in memory
        fr1_image_Height : INTEGER := 20; -- Height of image in memory
		  
        dataSize     : INTEGER := 11;  -- MSB of each row in memory
        addressSize  : integer := 15 );

port(clk50MHz  : in std_logic;
     SW	:in std_logic_vector(9 downto 0);
     r         : out std_logic_vector(3 downto 0);
     g         : out std_logic_vector(3 downto 0);
     b         : out std_logic_vector(3 downto 0);
     hsync     : out std_logic;
     vsync     : out std_logic);

end entity eee308;

architecture display of ee3308 is
-- Parameters for a 640x480 display
	constant hfp480p  : integer   := 16;
	constant hsp480p  : integer   := 96;
	constant hbp480p  : integer   := 48;
	constant hva480p  : integer   := 640;
	constant vfp480p  : integer   := 10;
	constant vsp480p  : integer   := 2;
	constant vbp480p  : integer   := 33;
	constant vva480p  : integer   := 480;

-- Signals that will hold the front port etc that we will acutally use
	signal   hfp      : integer; -- horizontal front porch
	signal   hsp      : integer; -- horizontal sync pulse
	signal   hbp      : integer; -- horizontal back porch
	signal   hva      : integer; -- horizontal visible area
	signal   vfp      : integer; -- vertical front porch
	signal   vsp      : integer; -- vertical sync pulse
	signal   vbp      : integer; -- vertical back porch
	signal   vva      : integer; -- vertical visible area
	
-- Signal to hold the clock we will use for the display
	signal   sync2_clk : std_logic := '0';
	
	
	-- Signals for each of the clocks available to us
	signal   clk25      : std_logic := '0';
	signal   clk65      : std_logic := '0';
	signal   clk_move   : std_logic := '0';
	
	
	-- Signals to hold the present horizontal and vertical positions.
	signal   hposition  : integer   := 0;
	signal   vposition  : integer   := 0;
	
	-- Signals to hold the present memory address to be read and the data read
	signal data_address : std_logic_vector(addressSize downto 0) := (others=>'0');


end architecture display;