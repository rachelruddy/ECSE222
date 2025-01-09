library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity rachel_ruddy_clock_divider is
    port (
        enable  : in  std_logic;
        reset   : in  std_logic;  -- Asynchronous active low
        clk     : in  std_logic;
        en_out  : out std_logic
    );
end rachel_ruddy_clock_divider;

architecture Behavioral of rachel_ruddy_clock_divider is
    signal counter : integer := 49999999;
    signal en_out_internal : std_logic := '0';  -- Internal signal for en_out

begin
    -- Assign internal signal to en_out
    en_out <= en_out_internal;

    process(clk)
    begin
        if reset = '0' then  -- Asynchronous reset
            counter <= 49999999;
            en_out_internal <= '0';  -- Reset en_out when reset is active
        elsif rising_edge(clk) then
            if enable = '0' then
                -- Keep counter value if enable is off, and reset if needed
                if reset = '0' then
                    counter <= 49999999;
                end if;
            elsif enable = '1' then
                if reset = '0' then
                    counter <= 49999999;
                else
                    if counter = 0 then
                        counter <= 49999999;
                        en_out_internal <= '1';  -- Set en_out when counter reaches 0
                    else
                        counter <= counter - 1;
                        en_out_internal <= '0';  -- Reset en_out while counting
                    end if;
                end if;
            end if;
        end if;
    end process;

end Behavioral;

