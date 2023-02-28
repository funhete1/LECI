library ieee;
use ieee.std_logic_1164.all;

entity Display_Demo is
	port(SW   : in std_logic_vector(3 downto 0);
			KEY : in std_logic_vector(0 downto 0);
			LEDR: out std_logic_vector(6 downto 0);
			LEDG: out std_logic_vector(3 downto 0);
			HEX : out std_logic_vector(6 downto 0));
end Display_Demo;

architecture Structural of Display_Demo is
	signal s_out : std_logic_vector(6 downto 0);
begin 	
	system_core: entity work.Bin7SegDecoder(Behavioral)
							port map(binInput => SW(3 downto 0),
										enable => KEY(0),
										decOut_n => s_out(6 downto 0));
	
	(HEX(6 downto 0))  <= s_out(6 downto 0);
	(LEDR(6 downto 0)) <= s_out(6 downto 0);
	(LEDG(3 downto 0)) <= SW(3 downto 0); --para inputs n funciona da msm forma
end Structural;