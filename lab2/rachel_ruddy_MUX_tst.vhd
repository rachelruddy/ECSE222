library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rachel_ruddy_MUX_tst is
end rachel_ruddy_MUX_tst;

architecture Testbench of rachel_ruddy_MUX_tst is
     component MUX_2to1 is
          Port ( A : in std_logic;
                    B : in std_logic;
                    S : in std_logic;
                    Y : in std_logic);
end component;

signal A, B, S : std_logic := '0';
signal Y_structural, Y_behavioral : std_logic;

begin
i1 : entity work.rachel_ruddy_MUX_structural
      port map (A => A, B => B, S => S, Y => Y_structural);
i2 : entity work.rachel_ruddy_MUX_behavioral
     port map (A => A, B => B, S => S, Y => Y_behavioral);

process
begin
	--test case 1: expect Y=0
	A <= '0'; B <= '0'; S <= '0';
	wait for 10 ns;

	--test case 2: expect Y=0
	A <= '0'; B <= '0'; S <= '1';
	wait for 10 ns;

	--test case 3: expect Y=0
	A <= '0'; B <= '1'; S <= '0';
	wait for 10 ns;

	--test case 4: expect Y=1
	A <= '0'; B <= '1'; S <= '1';
	wait for 10 ns;

	--test case 5: expect Y=1
	A <= '1'; B <= '0'; S <= '0';
	wait for 10 ns;

	--test case 6: expect Y=0
	A <= '1'; B <= '0'; S <= '1';
	wait for 10 ns;

	--test case 7: expect Y=1
	A <= '1'; B <= '1'; S <= '0';
	wait for 10 ns;

	--test case 8: expect Y=1
	A <= '1'; B <= '1'; S <= '1';
	wait for 10 ns;

	wait;
end process;

end Testbench;