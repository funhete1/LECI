library ieee;
use ieee.std_logic_1164.all;

entity Mux2_1 is 
	port(dataIn : in std_logic_vector(1 downto 0);
		  sel 	: in std_logic;
		  dataOut: out std_logic);
end Mux2_1;


architecture Behavioral of Mux2_1 is 
begin
	process(sel,dataIn)
	begin
	
	if(sel='0') then --os botao hex ta a 0 quando pressionado e 1 por 
		dataOut <= dataIn(0);
	else
		dataOut <= dataIn(1);
	end if;
	end process;
end Behavioral;