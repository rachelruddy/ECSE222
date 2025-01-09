library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Asynchronous active low reset, so not dependent on the clock and active when reset = 0
-- Enable synchronous active high input, so dependent on clock and active when = 1
-- Should hold current count if en = 0

entity rachel_ruddy_wrapper is
	Port (enable  : in std_logic;
		   reset   : in std_logic;
			clk     : in std_logic;
			HEX0  : out std_logic_vector(6 downto 0));
end rachel_ruddy_wrapper;

architecture behavioral of rachel_ruddy_wrapper is

component rachel_ruddy_clock_divider is
    port (
        enable  : in  std_logic;
        reset   : in  std_logic;  -- Asynchronous active low
        clk     : in  std_logic;
        en_out  : out std_logic
    );
end component;

component rachel_ruddy_counter is
	port(
		enable : in std_logic;
		reset : in std_logic;
		clk    : in std_logic;
		count  : out std_logic_vector(2 downto 0)
	);
end component;

component seven_segment_decoder is
	Port (code        : in std_logic_vector (3 downto 0);
			segments_out: out std_logic_vector (6 downto 0));
end component;

signal count_en: std_logic;
signal count : std_logic_vector (2 downto 0);
signal decoded_count: std_logic_vector (6 downto 0);
signal count3bit: std_logic_vector (3 downto 0);
signal count3u : unsigned (3 downto 0);

begin

i1: rachel_ruddy_clock_divider port map (enable, reset, clk, count_en);
i2: rachel_ruddy_counter port map (count_en, reset, clk, count);
count3u <= '0' & unsigned(count);
count3bit <= std_logic_vector(count3u);
i3: seven_segment_decoder port map(count3bit, HEX0);

end behavioral;
	