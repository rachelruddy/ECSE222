library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rachel_ruddy_barrel_shifter_behavioral is
    Port (
        X   : in std_logic_vector(3 downto 0);
        sel : in std_logic_vector(1 downto 0);
        Y   : out std_logic_vector(3 downto 0));
end rachel_ruddy_barrel_shifter_behavioral;

architecture Behavioral of rachel_ruddy_barrel_shifter_behavioral is
begin

    Y <= X when sel = "00" else    
         X(2 downto 0) & X(3) when sel = "01" else
         X(1 downto 0) & X(3 downto 2) when sel = "10" else
         X(0) & X(3 downto 1);
end Behavioral;