library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity rachel_ruddy_barrel_shifter_structural is
    Port (X          : in std_logic_vector (3 downto 0);
          sel        : in std_logic_vector (1 downto 0);
          stage1     : inout std_logic_vector (3 downto 0);
          Y          : out std_logic_vector (3 downto 0));
end rachel_ruddy_barrel_shifter_structural;


architecture Structural of rachel_ruddy_barrel_shifter_structural is

	component rachel_ruddy_MUX_structural
		Port (A,B,S : in std_logic;
				Y : out std_logic);
	end component;

begin

    mux0_stage1: rachel_ruddy_MUX_structural 
        port map (
            A => X(0),
            B => X(2),
            S => sel(1),
            Y => stage1(0)
        );

    mux1_stage1: rachel_ruddy_MUX_structural 
        port map (
            A => X(1),
            B => X(3),
            S => sel(1),
            Y => stage1(1)
        );

    mux2_stage1: rachel_ruddy_MUX_structural 
        port map (
            A => X(2),
            B => X(0),
            S => sel(1),
            Y => stage1(2)
        );

    mux3_stage1: rachel_ruddy_MUX_structural 
        port map (
            A => X(3),
            B => X(1),
            S => sel(1),
            Y => stage1(3)
        );
----------------------------------------------------------


    mux0_stage2: rachel_ruddy_MUX_structural 
        port map (
            A => stage1(0),
            B => stage1(3),
            S => sel(0),
            Y => Y(0)
        );

    mux1_stage2: rachel_ruddy_MUX_structural 
        port map (
            A => stage1(1),
            B => stage1(0),
            S => sel(0),
            Y => Y(1)
        );

    mux2_stage2: rachel_ruddy_MUX_structural 
        port map (
            A => stage1(2),
            B => stage1(1),
            S => sel(0),
            Y => Y(2)
        );
		  
	 mux3_stage2: rachel_ruddy_MUX_structural 
	  port map (
			A => stage1(3),
			B => stage1(2),
			S => sel(0),
			Y => Y(3)
	  );	  
	
end Structural;