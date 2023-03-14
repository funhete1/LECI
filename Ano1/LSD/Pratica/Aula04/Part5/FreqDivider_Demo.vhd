library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FreqDivider_Demo is
	port (CLOCK_50 : in std_logic;
			k : in std_logic_vector(31 downto 0);
			SW : in std_logic_vector(7 downto 0);
			HEX0 : out std_logic_vector(6 downto 0));
end FreqDivider_Demo;

architecture Structural of FreqDivider_Demo is
	signal s_clk : std_logic;
	signal s_count : std_logic_vector(3 downto 0);
begin 
	
	frequency: entity work.FreqDivider(Behavioral)
							port map(clkIn => CLOCK_50,
										k => x"017D7840", -- to set the frequency to 1Hz just change to 02FAF080
										clkOut => s_clk);
										
	counter: entity work.CounterUpDown4(Behavioral)
							port map(clk => s_clk,
										reset => SW(0),
										enable => SW(1),
										UpDown => SW(2),	
										dataIn => SW(6 downto 3),
										load   => SW(7),
										count => s_count);
										
	display: entity work.Bin7SegDecoder(Behavioral)
							port map(binInput => s_count,
										enable => SW(1),
										decOut_n => HEX0);
				
end Structural;