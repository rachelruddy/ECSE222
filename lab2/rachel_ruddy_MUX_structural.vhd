library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity rachel_ruddy_MUX_structural is
     Port (A : in std_logic;
           B : in std_logic;
           S : in std_logic;
           Y : out std_logic);
end rachel_ruddy_MUX_structural;

architecture Structural of rachel_ruddy_MUX_structural is
     signal not_S : std_logic;
     signal A_and_not_S : std_logic;
     signal B_and_S : std_logic;
begin
     not_S <= not S;
     A_and_not_S <= A and not_S;
     B_and_S <= B and S;

     Y <= A_and_not_S or B_and_S;
end Structural;
