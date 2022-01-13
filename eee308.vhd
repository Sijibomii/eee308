library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
library std;
use ieee.std_logic_textio.all;
use std.textio.all;


--6 degrees per second 0.10472 radian
entity eee308 is
--generics are a local form of constant which 
--can be assigned a value when we instantiate a component
generic(clock_image_Width  : INTEGER := 226; -- Width of image in memory
        clock_image_Height : INTEGER := 223; -- Height of image in memory
	
		  sec_hand_image_Width  : INTEGER := 1; -- Width of image in memory
        sec_hand_image_Height : INTEGER := 100; -- Height of image in memory
		  
		  min_hand_image_Width  : INTEGER := 1; -- Width of image in memory
        min_hand_image_Height : INTEGER := 80; -- Height of image in memory
		  
		  hour_hand_image_Width  : INTEGER := 1; -- Width of image in memory
        hour_hand_image_Height : INTEGER := 60; -- Height of image in memory
		  
        dataSize     : INTEGER := 11;  -- MSB of each row in memory
		  --clock and hour
        addressSize  : integer := 15;
		  --minutes and second
		  addressSize2  : integer := 12);

port(clk50MHz  : in std_logic;
     r         : out std_logic_vector(3 downto 0);
     g         : out std_logic_vector(3 downto 0);
     b         : out std_logic_vector(3 downto 0);
     hsync     : out std_logic;
     vsync     : out std_logic);

end entity eee308;

architecture display of eee308 is
-- Parameters for a 640x480 display
	constant hfp480p  : integer   := 16;
	constant hsp480p  : integer   := 96;
	constant hbp480p  : integer   := 48;
	constant hva480p  : integer   := 640;
	constant vfp480p  : integer   := 10;
	constant vsp480p  : integer   := 2;
	constant vbp480p  : integer   := 33;
	constant vva480p  : integer   := 480;
	
--for each second store the starting and ending point of each hand
---- STORES THE LIST OF COLORED PIXELS FOR EACH POSITION
-------------------------TYPES--------------------------------------------------
--set the number of pixels for each hand 50 for now
	type SEC_X is array (0 to 50) of integer range 0 to 640;
	type SEC_Y is array (0 to 50) of integer range 0 to 480;

	type MIN_X is array (0 to 50) of integer range 0 to 640;
	type MIN_Y is array (0 to 50) of integer range 0 to 480;

	type HR_X is array (0 to 50) of integer range 0 to 640;
	type HR_Y is array (0 to 50) of integer range 0 to 480;

	type RETURN_ARRAY is array (0 to 1) of integer;--0 x, y 1

---------------------FUNCTION---------------------------------------------------
function getNextCoord(x0 : integer := 0;
                        y0 : integer := 0;
								x1 : integer := 0;
								y1 : integer := 0) return RETURN_ARRAY is
		signal sx_p : integer;
		signal sy_p : integer;
      variable dy: integer;
		variable sx: integer;
		variable sy: integer;
		variable err : integer := 0;
		variable e2  : integer := 0;
    begin
        if x1-x0 > 0 then
			dx := x1-x0;
			sx := 1;
		else
			dx := x0-x1;
			sx := -1;
		end if;
		
		if y1-y0 > 0 then
			dy := y1-y0;
			sy := 1;
		else
			dy := y0-y1;
			sy := -1;
		end if;
		err:= dx+dy;
		e2 := err+err;
		if (e2 >= dy) then 
		sx_p <= x0 + sx;
		sy_p <= y0;
		end if;
		if (e2 <= dx) then
		 sy_p <= y0 + sy;
		sx_p <= x0;
		end if;
        return (sx_p, sy_p);
    end function;

-----------------------------seconds---------------------------------------------------
	--every one second get the current 
	--variable CURR: INT_ARRAY(0 to 9);

--for I in 0 to 50 loop
--	--check if I is one
--	if (I = 1) then
--	
--	else
--	end if;
--end loop;
	
	

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
											 
	imRead_min: work.minutes_hand port map(address => data_address2, ----minutes hand
                                  clock    => sync2_clk,
                                  q        => raw_data_min);
											 
	imRead_hr: work.minutes_hand port map(address => data_address2, ----minutes hand
                                  clock    => sync2_clk,
                                  q        => raw_data_hr);
											 
--	imRead_hr: work.hour_hand port map(address => data_address, ----hour hand
--                                  clock    => sync2_clk,
--                                  q        => raw_data_hr);
											 
	process(sync2_clk)
	
	--clock positining details
	variable hcentre            : integer := hfp + hsp + hbp + (hva/2);
	variable vcentre            : integer := vfp + vsp + vbp + (vva/2);
	variable image_hstart       : integer := 370;	
	variable image_hstop        : integer := image_hstart + clock_image_Width;
	variable image_vstart       : integer := 160;
	variable image_vstop        : integer := image_vstart + clock_image_Height;
	variable image_pixel_col    : integer := 0;
	variable image_pixel_row    : integer := 0;
	variable image_pixel_number : integer := 0;
	
	--initial hands positing details
	--hr
	variable hr_hcentre            : integer := hfp + hsp + hbp + (hva/2);
	variable hr_vcentre            : integer := vfp + vsp + vbp + (vva/2);
	variable hr_image_hstart       : integer := 483;	
	variable hr_image_hstop        : integer := hr_image_hstart + hour_hand_image_Width;
	variable hr_image_vstart       : integer := 225;
	variable hr_image_vstop        : integer := hr_image_vstart + hour_hand_image_Height;
	variable hr_image_pixel_col    : integer := 0;
   variable hr_image_pixel_row    : integer := 0;
	variable hr_image_pixel_number : integer := 0;
	
	--min
	variable min_hcentre            : integer := hfp + hsp + hbp + (hva/2);
	variable min_vcentre            : integer := vfp + vsp + vbp + (vva/2);
	variable min_image_hstart       : integer := 483;	
	variable min_image_hstop        : integer := min_image_hstart + min_hand_image_Width;
	variable min_image_vstart       : integer := 200;
	variable min_image_vstop        : integer := min_image_vstart + min_hand_image_Height;
	--variable min_image_pixel_col    : real:=0.0;
	variable min_image_pixel_col    : integer := 0;
   variable min_image_pixel_row    : integer := 0;
	variable min_image_pixel_number : integer := 0;
	
	--sec
	variable sec_hcentre            : integer := hfp + hsp + hbp + (hva/2);
	variable sec_vcentre            : integer := vfp + vsp + vbp + (vva/2);
	variable sec_image_hstart       : integer := 483;	
	variable sec_image_hstop        : integer := sec_image_hstart + sec_hand_image_Width;
	variable sec_image_vstart       : integer := 205;
	variable sec_image_vstop        : integer := sec_image_vstart + sec_hand_image_Height;
	variable sec_image_pixel_col    : integer := 0;
   variable sec_image_pixel_row    : integer := 0;
	variable sec_image_pixel_number : integer := 0;
	
	variable mem_Address_clk        : unsigned(addressSize downto 0) := (others=>'0'); ---memory for clock image
	variable mem_Address_min       : unsigned(addressSize2 downto 0) := (others=>'0'); ---memory for minutes image
	variable mem_Address_hr       : unsigned(addressSize2 downto 0) := (others=>'0'); ---memory for hour image
	variable mem_Address_sec        : unsigned(addressSize2 downto 0) := (others=>'0'); ---memory for sec image
	
	--	variable imgOffset          : integer := 4;
	variable increx1  : integer := 1;
	begin
	if rising_edge(sync2_clk) then
			-- Always increment the horizontal position counter with each active clock pulse
			hposition <= hposition + 1;
			
			-- When horizontal position counter gets to the last pixel in a row, go back
			-- to zero and increment the vertical counter (i.e. go to start of next line)
			if hposition >= (hfp+hsp+hbp+hva) then
				hposition <= 0;
				-- when vertical position counter gets to the end of rows, go back to the
				-- start of the first row
				if vposition >= (vfp+vsp+vbp+vva) then
					vposition <= 0;
				else
					vposition <= vposition + 1;
				end if;
			end if;
			
			
			-- Generate horizontal synch pulse whenever the hposition is between the front
			-- porch and the back porch
			if (hposition >= hfp) and (hposition < (hfp+hsp)) then
				hsync <= '0';
			else
				hsync <= '1';
			end if;

			-- Generate vertical synch pulse whenever the vposition is between the front
			-- porch and the back porch
			if (vposition >= vfp) and (vposition < (vfp+vsp)) then
				vsync <= '0';
			else
				vsync <= '1';
			end if;
			
			
			
			
			-- Now to put things up on the display
			-- Where do we want to put things?
			-- Let's put the image in our memory in the centre of the screen starting
			-- from the 100th row. We first determine the bounds in which the image will be
			-- displayed and then tell it what memory address to read from in order to 
			-- display the contents of the memory onto the display.
			-- The central pixel of the visible area is 
			
----------------clock image ---------------------------------------------------------
			if ((hposition >= image_hstart and hposition <= image_hstop) and (vposition >= image_vstart and vposition <= image_vstop)) then
				image_pixel_col := hposition - image_hstart;
				image_pixel_row := vposition - image_vstart;
				image_pixel_number := image_pixel_col + image_pixel_row*clock_image_Width;
				mem_Address_clk  := to_unsigned(image_pixel_number, mem_Address_clk'length);
				data_address <= std_logic_vector(mem_Address_clk);
				r <= raw_data_clk(11 downto 8);
				g <= raw_data_clk(7 downto 4);
				b <= raw_data_clk(3 downto 0);
			else
			   r <= x"2";
		      g <= x"2";
		      b <= x"2";
			end if;

--each second, generate array of all pixel that should be coloured black
------------------------------hour hand ----------------------------------------------------

		if ((hposition >= hr_image_hstart and hposition <= hr_image_hstop) and (vposition >= hr_image_vstart and vposition <= hr_image_vstop)) then
					hr_image_pixel_col := hposition - hr_image_hstart;
					hr_image_pixel_row := vposition - hr_image_vstart;
					hr_image_pixel_number := hr_image_pixel_col + hr_image_pixel_row*hour_hand_image_Width;
					mem_Address_hr  := to_unsigned(hr_image_pixel_number, mem_Address_hr'length);
					data_address2 <= std_logic_vector(mem_Address_hr);
					r <= raw_data_hr(11 downto 8);
					g <= raw_data_hr(7 downto 4);
					b <= raw_data_hr(3 downto 0);
													 
					end if;
------------------------------minute hand------------------------------------------

	if ((hposition >= min_image_hstart and hposition <= min_image_hstop) and (vposition >= min_image_vstart and vposition <= min_image_vstop)) then
					--this is what to rotate
					
					--min_image_pixel_col := sin(MATH_2_PI*(hposition - min_image_hstart));
					min_image_pixel_col := hposition - min_image_hstart;
					min_image_pixel_row := vposition - min_image_vstart;
					--------------------------------
					min_image_pixel_number := min_image_pixel_col + min_image_pixel_row*min_hand_image_Width;
					mem_Address_min  := to_unsigned(min_image_pixel_number, mem_Address_min'length);
					data_address2 <= std_logic_vector(mem_Address_min);
					
					r <= raw_data_min(11 downto 8);
					g <= raw_data_min(7 downto 4);
					b <= raw_data_min(3 downto 0);
													 
					end if;
-----------------------------seconds hand------------------------------------------------
		if ((hposition >= sec_image_hstart and hposition <= sec_image_hstop) and (vposition >= sec_image_vstart and vposition <= sec_image_vstop)) then
					sec_image_pixel_col := hposition - sec_image_hstart;
					sec_image_pixel_row := vposition - sec_image_vstart;
					sec_image_pixel_number := sec_image_pixel_col + sec_image_pixel_row*sec_hand_image_Width;
					mem_Address_sec  := to_unsigned(sec_image_pixel_number, mem_Address_sec'length);
					data_address2 <= std_logic_vector(mem_Address_sec);
					r <= raw_data_sec(11 downto 8);
					g <= raw_data_sec(7 downto 4);
					b <= raw_data_sec(3 downto 0);
													 
					end if;
		end if;
	end process;
end architecture display;