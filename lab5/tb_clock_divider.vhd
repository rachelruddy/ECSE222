library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Testbench entity with name tb_clock_divider
entity tb_clock_divider is
end tb_clock_divider;

architecture behavior of tb_clock_divider is

    -- Component declaration of the design under test (DUT)
    component rachel_ruddy_clock_divider
        port (
            enable  : in  std_logic;
            reset   : in  std_logic;
            clk     : in  std_logic;
            en_out  : out std_logic
        );
    end component;

    -- Signals for connecting to the DUT
    signal clk     : std_logic := '0';
    signal reset   : std_logic := '1';  -- Start with reset active low
    signal enable  : std_logic := '0';
    signal en_out  : std_logic := '0';  -- Initialize en_out to '0'

    -- Clock period for the simulation (e.g., 20 ns for a 50 MHz clock)
    constant clk_period : time := 20 ns;

begin

    -- Instantiate the DUT (rachel_ruddy_clock_divider)
    uut: rachel_ruddy_clock_divider
        port map (
            enable  => enable,
            reset   => reset,
            clk     => clk,
            en_out  => en_out
        );

    -- Clock generation process
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    -- Test stimulus
    stim_proc: process
    begin
        -- Apply initial conditions
        reset <= '0';  -- Start with reset active (active low reset)
        enable <= '0'; -- Disable clock divider initially
        wait for 40 ns;  -- Wait for a few clock cycles

        -- Release reset and enable clock divider
        reset <= '1';  -- Deactivate reset (reset inactive high)
        enable <= '1'; -- Enable the clock divider
        wait for 1 sec;  -- Run for some time to observe the output

        -- Simulate a reset while enable is active
        reset <= '0';  -- Activate reset (reset active low)
        wait for 40 ns;  -- Wait for a few clock cycles

        reset <= '1';  -- Deactivate reset again
        wait for 200 ns;  -- Run for some time to observe the output

        -- Disable the clock divider
        enable <= '0'; -- Disable the clock divider
        wait for 100 ns;

        -- Test the behavior after disabling the clock divider
        reset <= '0';  -- Activate reset again (reset active low)
        wait for 40 ns;  -- Wait for a few clock cycles
        wait;
    end process;

end behavior;

