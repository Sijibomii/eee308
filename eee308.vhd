library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eee308 is
--generics are a local form of constant which 
--can be assigned a value when we instantiate a component
generic(clock_image_Width  : INTEGER := 226; -- Width of image in memory
        clock_image_Height : INTEGER := 223; -- Height of image in memory
	
		  sec_hand_image_Width  : INTEGER := 33; -- Width of image in memory
        sec_hand_image_Height : INTEGER := 201; -- Height of image in memory
		  
		  min_hand_image_Width  : INTEGER := 40; -- Width of image in memory
        min_hand_image_Height : INTEGER := 131; -- Height of image in memory
		  
		  hour_hand_image_Width  : INTEGER := 132; -- Width of image in memory
        hour_hand_image_Height : INTEGER := 288; -- Height of image in memory
		  
        dataSize     : INTEGER := 11;  -- MSB of each row in memory
		  --clock and hour
        addressSize  : integer := 15;
		  --minutes and second
		  addressSize2  : integer := 12);

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
	signal data_address2 : std_logic_vector(addressSize2 downto 0) := (others=>'0');
	
	-----------
	signal raw_data_sec     : std_logic_vector(dataSize downto 0)    := (others=>'0');
	signal raw_data_clk     : std_logic_vector(dataSize downto 0)    := (others=>'0');
	signal raw_data_hr     : std_logic_vector(dataSize downto 0)    := (others=>'0');
	signal raw_data_min     : std_logic_vector(dataSize downto 0)    := (others=>'0');
	
begin

	sync2_clk<= clk25   ;
	hfp      <= hfp480p ;
	hsp      <= hsp480p ;
	hbp      <= hbp480p ;
	hva      <= hva480p ;
	vfp      <= vfp480p ;
	vsp      <= vsp480p ;
	vbp      <= vbp480p ;
	vva      <= vva480p ;
	
	disp_clk: work.sync_clk port map(inclk0 => clk50MHz,
                                    c0     => clk25);
											
	imRead_clk: work.image_clock port map(address => data_address, ----clock image
                                  clock    => sync2_clk,
                                  q        => raw_data_clk);	
											 
	imRead_sec: work.seconds_hand port map(address => data_address2, ----seconds hand
                                  clock    => sync2_clk,
                                  q        => raw_data_sec);
											 
	imRead: work.minutes_hand port map(address => data_address2, ----minutes hand
                                  clock    => sync2_clk,
                                  q        => raw_data_min);
											 
	imRead: work.hour_hand port map(address => data_address, ----hour hand
                                  clock    => sync2_clk,
                                  q        => raw_data_hr);
											 
	process(sync2_clk)
	
	--clock positining details
	variable hcentre            : integer := hfp + hsp + hbp + (hva/2);
	variable vcentre            : integer := vfp + vsp + vbp + (vva/2);
	variable image_hstart       : integer := 460;	
	variable image_hstop        : integer := image_hstart + image_Width;
	variable image_vstart       : integer := 260;
	variable image_vstop        : integer := image_vstart + image_Height;
	variable image_pixel_col    : integer := 0;
	variable image_pixel_row    : integer := 0;
	variable image_pixel_number : integer := 0;
	
	--initial hands positing details
	--hr
	variable hr_hcentre            : integer := hfp + hsp + hbp + (hva/2);
	variable hr_vcentre            : integer := vfp + vsp + vbp + (vva/2);
	variable hr_image_hstart       : integer := 230;	
	variable hr_image_hstop        : integer := fr1_image_hstart + fr1_image_Width;
	variable hr_image_vstart       : integer := 90;
	variable hr_image_vstop        : integer := fr1_image_vstart + fr1_image_Height;
	variable hr_image_pixel_col    : integer := 0;
   variable hr_image_pixel_row    : integer := 0;
	variable hr_image_pixel_number : integer := 0;
	
	--min
	variable min_hcentre            : integer := hfp + hsp + hbp + (hva/2);
	variable min_vcentre            : integer := vfp + vsp + vbp + (vva/2);
	variable min_image_hstart       : integer := 230;	
	variable min_image_hstop        : integer := fr1_image_hstart + fr1_image_Width;
	variable min_image_vstart       : integer := 90;
	variable min_image_vstop        : integer := fr1_image_vstart + fr1_image_Height;
	variable min_image_pixel_col    : integer := 0;
   variable min_image_pixel_row    : integer := 0;
	variable min_image_pixel_number : integer := 0;
	
	--sec
	variable sec_hcentre            : integer := hfp + hsp + hbp + (hva/2);
	variable sec_vcentre            : integer := vfp + vsp + vbp + (vva/2);
	variable sec_image_hstart       : integer := 230;	
	variable sec_image_hstop        : integer := fr1_image_hstart + fr1_image_Width;
	variable sec_image_vstart       : integer := 90;
	variable sec_image_vstop        : integer := fr1_image_vstart + fr1_image_Height;
	variable sec_image_pixel_col    : integer := 0;
   variable sec_image_pixel_row    : integer := 0;
	variable sec_image_pixel_number : integer := 0;
	
	variable mem_Address_clk        : unsigned(addressSize downto 0) := (others=>'0'); ---memory for clock image
	variable mem_Address_min       : unsigned(addressSize2 downto 0) := (others=>'0'); ---memory for minutes image
	variable mem_Address_hr       : unsigned(addressSize downto 0) := (others=>'0'); ---memory for hour image
	variable mem_Address_min        : unsigned(addressSize2 downto 0) := (others=>'0'); ---memory for sec image
	
	--	variable imgOffset          : integer := 4;
	variable increx1  : integer := 1;
	begin
	
	end process;
end architecture display;