library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity tb_counter is
end tb_counter;


architecture Behavioral of tb_counter is
	component rachel_ruddy_counter
		port( 
			enable : in std_logic; 
			reset : in std_logic; 
			clk : in std_logic; 
			count : out std_logic_vector(2 downto 0)); 
	end component;


	signal enable_tb : std_logic := '0';
	signal reset_tb : std_logic := '1';
	signal clk_tb : std_logic := '0'; 
	signal count_tb : std_logic_vector(2 downto 0);


	constant clk_period : time := 10 ns;


begin

	uut: rachel_ruddy_counter
		port map ( 
			enable => enable_tb,
			reset => reset_tb, 
			clk => clk_tb,
			count => count_tb
		);


	clk_process : process
	begin
		while true loop
			clk_tb <= '0';
			wait for clk_period / 2; 
			clk_tb <= '1'; 
			wait for clk_period / 2; 
		end loop; 
	end process;


	stimulus_process : process 
	begin
		-- Reset counter 
	reset_tb <= '0';
	wait for clk_period * 2;
	reset_tb <= '1'; 
	wait for clk_period * 2; 


	-- Enable counting 
	enable_tb <= '1'; 
	wait for clk_period * 10;

	reset_tb <= '0';
	wait for clk_period * 2;
	-- Disable counting
	enable_tb <= '0';
	wait for clk_period * 2;
	reset_tb <= '1';
	wait for clk_period * 2;


	-- Enable counting again 
	enable_tb <= '1';
	wait for clk_period * 10;


	 wait for clk_period * 20;


	wait;
	end process;
end Behavioral;

