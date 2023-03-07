library ieee;
use ieee.std_logic_1164.all;

entity MuxG2_1 is
	generic(N: integer := 2);
	port( input0: in std_logic_vector(N-1 downto 0);
			sel :  in std_logic;
			output : out std_logic_vector(N-1 downto 0));
end MuxG2_1;

architecture Behavioral of MuxG2_1 is
begin 
	process(input0, sel)
	begin 
		if(sel = '0') then
			output <= input0;
		else
			output <= not(input0);
		end if;
	end process;
end Behavioral;