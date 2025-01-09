library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rachel_ruddy_counter is
	port(
		enable : in std_logic;
		reset : in std_logic;
		clk    : in std_logic;
		count  : out std_logic_vector(2 downto 0)
	);
end rachel_ruddy_counter;

architecture Behavioural of rachel_ruddy_counter is
	signal count_reg : unsigned(2 downto 0) := (others => '0');
begin
	process (clk, reset)
	begin
		if reset = '0' then
			count_reg <= (others => '0');
		elsif rising_edge(clk) then
			if enable = '1' then
				if count_reg = "111" then
					count_reg <= (others => '0');
				else
					count_reg <= count_reg + 1;
				end if;
			end if;
		end if;
	end process;

	count <= std_logic_vector(count_reg);
end Behavioural;