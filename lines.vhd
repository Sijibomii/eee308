library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity lines is
	port (
		x0, y0, x1, y1 : in integer;
		x_p, y_p : out integer
		);
end lines;

architecture datapath of lines is
	signal sx_p : integer;
	signal sy_p : integer;

	begin
	
	
	process
		variable dx: integer;
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
	end process;
	x_p<= sx_p;
	y_p<=sy_p;
end architecture datapath;