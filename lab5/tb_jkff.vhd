library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_jkff is
end tb_jkff;

architecture behavior of tb_jkff is

    -- Component Declaration for the Unit Under Test (UUT)
    component rachel_ruddy_jkff
        port(
            clk : in std_logic;
            J : in std_logic;
            K : in std_logic;
            Q : out std_logic
        );
    end component;

    -- Signals for connecting to UUT
    signal clk : std_logic := '0';
    signal J : std_logic := '0';
    signal K : std_logic := '0';
    signal Q : std_logic;


begin

    uut: rachel_ruddy_jkff
        port map (
            clk => clk,
            J => J,
            K => K,
            Q => Q
        );

    clock_generation : process
    begin
        clk <= '1';
        wait for 5 ns;
        clk <= '0';
        wait for 5 ns;
    end process clock_generation;

    stimulus_process : process
    begin
        -- Test Case 1: No change (J = 0, K = 0)
        J <= '0'; K <= '0';
        wait for 10 ns;  

        -- Test Case 2: Reset (J = 0, K = 1)
        J <= '0'; K <= '1';
        wait for 10 ns;  

        -- Test Case 3: Set (J = 1, K = 0)
        J <= '1'; K <= '0';
        wait for 10 ns; 

        -- Test Case 4: Toggle (J = 1, K = 1)
        J <= '1'; K <= '1';
        wait for 10 ns;
		  
		  J <= '1'; K <= '1';
        wait for 10 ns;

        -- Test Case 5: No change (J = 0, K = 0)
        J <= '0'; K <= '0';
        wait for 10 ns;

        -- Test Case 6: Reset again (J = 0, K = 1)
        J <= '0'; K <= '1';
        wait for 10 ns;

        -- Test Case 7: Set again (J = 1, K = 0)
        J <= '1'; K <= '0';
        wait for 10 ns;

        -- Test Case 8: Toggle again (J = 1, K = 1)
        J <= '1'; K <= '1';
        wait for 10 ns;

       
        wait for 100 ns;  

    end process stimulus_process;

end behavior;
