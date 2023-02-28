library ieee;
use ieee.std_logic_1164.all;

entity PEnc16_4 is 
	port(dataIn : in std_logic_vector(15 downto 0);
			validOut: out std_logic;
			dataOut: out std_logic_vector(3 downto 0));
end PEnc16_4;


architecture Structural of PENc16_4 is 
	signal s_validOut0 : std_logic;
	signal s_validOut1 : std_logic;
	signal s_validOut2 : std_logic;
	signal s_validOut3 : std_logic;


begin
	signal1: entity work.PEnc4_2(Behavioral)
					port map(decodeIn => dataIn(15 downto 12),
								validOut => s_validOut3,
								)