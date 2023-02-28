library ieee;
use ieee.std_logic_1164.all;

entity Display_Demo is
	port(SW   : in std_logic_vector(3 downto 0);
			KEY : in std_logic_vector(0 downto 0);
			LEDR: out std_logic_vector(6 downto 0);
			LEDG: out std_logic_vector(3 downto 0);
			HEX : out std_logic_vector(6 downto 0));
end DisplayDemo;

architecture Behavioral of DisplayDemo is 
begin 	
	system_core: entity work.Bin7SegDecoder(Behavioral)
							port map(binInput => SW(3 downto 0),
										enable => KEY(0),
										binInput => LEDG(3 downto 0),
										decOut_n => LEDR(6 downto 0),
										decOut_n => HEX(6 downto 0));
end Behavioral;