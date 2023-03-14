library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FreqDivider is
	port (clkIn : in std_logic;
			k : in std_logic_vector(31 downto 0);
			clkOut: out std_logic);
end FreqDivider;

architecture Behavioral of FreqDivider is
	signal s_counter : unsigned(31 downto 0);
	signal s_halfway : unsigned(31 downto 0);
begin
	
	s_halfway <= (unsigned(k) /2);
	
	process(clkIn)
	begin	
	if(rising_edge(clkIn)) then
		s_counter <= S_counter +1;
		if(s_counter = (s_halfway) - 1) then 
			clkOut <=  '1';
		elsif(s_counter = (unsigned(k) - 1)) then 
			s_counter <= (others => '0');
			clkOut <= '0';
		end if;
	end if;
	end process;
end Behavioral;