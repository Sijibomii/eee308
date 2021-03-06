library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity timer is
	port
	(
		MAX10_CLK1_50	: in std_logic;
		clk		: out std_logic
--		LEDR		: out std_logic_vector(1 downto 0);
--		HEX0		: out std_logic_vector(0 to 6)
	);
end timer;

architecture Behavioral of timer is
	component Counter26bit port
	(		
		clk	: in std_logic;
		en		: in std_logic;
		clr	: in std_logic;
		q		: out std_logic_vector(25 downto 0)
	);
	end component;
	
--	component Counter4bit port
--	(		
--		clk	: in std_logic;
--		en		: in std_logic;
--		clr	: in std_logic;
--		q		: out std_logic_vector(3 downto 0)
--	);
--	end component;
	
	
	signal q_clk : std_logic_vector(25 downto 0);
	signal clr_clk : std_logic;
	--signal q_dig : std_logic_vector(3 downto 0);
	--signal clr_dig : std_logic;
begin

	clk_counter : process (MAX10_CLK1_50, q_clk)
	begin
		if MAX10_CLK1_50'event and MAX10_CLK1_50 = '0' then
			if q_clk >= 50000000 then
				clr_clk <= '0';
			else
				clr_clk <= '1';
			end if;
		end if;
	end process;
	
--	dig_counter : process (clr_clk, Q_dig)
--	begin
--		if clr_clk'event and clr_clk = '0' then
--			if Q_dig >= 9 then
--				clr_dig <= '0';
--			else
--				clr_dig <= '1';
--			end if;
--		end if;
--	end process;
	
	
	clk <= clr_clk;
	c26bit : Counter26bit port map ( MAX10_CLK1_50, '1', clr_clk, Q_clk );
	--c4bit : Counter4bit port map ( clr_clk, '1', clr_dig, Q_dig );
	
end Behavioral;