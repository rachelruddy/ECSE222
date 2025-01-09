library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rachel_ruddy_jkff is
    port(
        clk : in std_logic;
        J : in std_logic;
        K : in std_logic;
        Q : out std_logic
    );
end rachel_ruddy_jkff;

architecture Behavioral of rachel_ruddy_jkff is

    signal Q_int : std_logic := '0'; -- internal signal to hold the state

begin
    process(clk)
    begin
        if rising_edge(clk) then
            case (std_logic_vector'(J & K)) is 
                when "00" =>  -- No change
                    Q_int <= Q_int;
                when "01" =>  -- Reset
                    Q_int <= '0';
                when "10" =>  -- Set
                    Q_int <= '1';
                when "11" =>  -- Toggle
                    Q_int <= not Q_int;
                when others =>  
                    Q_int <= Q_int; 
            end case;
        end if;
    end process;
 
    Q <= Q_int;

end Behavioral;
