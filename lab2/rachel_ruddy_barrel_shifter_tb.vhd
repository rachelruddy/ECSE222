library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rachel_ruddy_barrel_shifter_tb is
end rachel_ruddy_barrel_shifter_tb;

architecture Testbench of rachel_ruddy_barrel_shifter_tb is
--
--signal X, stage1 : std_logic_vector(3 downto 0) := "0000";
--signal sel: std_logic_vector(1 downto 0) := "00";
--signal Y_behavioral: std_logic_vector(3 downto 0); 


signal X, stage1 : std_logic_vector(3 downto 0);
signal sel: std_logic_vector(1 downto 0);
signal Y_behavioral: std_logic_vector(3 downto 0); 

	component rachel_ruddy_barrel_shifter_behavioral
		Port (
			X : in std_logic_vector(3 downto 0);
			sel : in std_logic_vector(1 downto 0);
			Y : out std_logic_vector(3 downto 0)
		);
	end component;
--	
--	component rachel_ruddy_barrel_shifter_structural
--		Port (
--			X : in std_logic_vector(3 downto 0);
--			sel : in std_logic_vector(1 downto 0);
--			stage1 : inout std_logic_vector (3 downto 0);
--			Y : out std_logic_vector(3 downto 0)
--		);
--	end component;
	
	
begin
--i1: rachel_ruddy_barrel_shifter_structural port map (X => X, sel => sel, stage1 => stage1, Y => Y_structural);
	
i2: rachel_ruddy_barrel_shifter_behavioral port map (X => X, sel => sel, Y => Y_behavioral);


generate_test: PROCESS
BEGIN
	FOR i IN 0 to 4 LOOP
		sel <= std_logic_vector(to_unsigned(i,2));
			FOR j IN 0 to 16 LOOP
				X <= std_logic_vector(to_unsigned(j,4));
			WAIT FOR 10 ns ;
			END LOOP;
	END LOOP;
	WAIT FOR 10 ns;
	WAIT;
END PROCESS generate_test;

end Testbench;

