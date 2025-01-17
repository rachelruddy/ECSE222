library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity tb_3bit_up_counter is
end tb_3bit_up_counter;


architecture behavioral of tb_3bit_up_counter is


component rachel_ruddy_wrapper is
	Port (enable   : in std_logic;
			reset    : in std_logic;
			clk      : in std_logic;
			HEX0     : out std_logic_vector (6 downto 0));
end component;


	signal enable : std_logic;
	signal reset  : std_logic;
	signal clk    : std_logic;
	signal HEX0   : std_logic_vector (6 downto 0);
	constant clk_period : time := 20 ns;


begin


	i1: rachel_ruddy_wrapper port map  (enable, reset, clk, HEX0);
	
	clk_process: process
	begin
		clk <= '0';
		wait for clk_period / 2;
		clk <= '1';
		wait for clk_period / 2;
	end process;
	
	stim_process: process
	begin
		reset <= '0';
		enable <= '0';
		wait for 40 ns;
		
		reset <= '1';
		enable <= '1';
		wait for 10 sec;
		
		reset <= '0';
		wait for 100 ns;
		
		enable <= '0';
		wait for 100 ns;
		
		reset <= '0';
		wait for 100 ns;
		wait;
	end process;
	
end behavioral;