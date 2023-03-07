library ieee;
use ieee.std_logic_1164.all;

entity BinBCD is 
	port(bin : in std_logic_vector(3 downto 0);
			bcd: out std_logic_vector(7 downto 0));
end BinBCD;


architecture Behavioral of BinBCD is
begin 
	bcd(7 downto 5) <= "000";
	bcd(4) <= (bin(3) and bin(2)) or (bin(3) and bin(1));
	bcd(3) <= ((bin(3) and not(bin(2))) and not(bin(1)));
	bcd(2) <= (not bin(3) and bin(2)) or (bin(2) and bin(1));
	bcd(1) <= (bin(3) and bin(2) and not bin(1)) or (not bin(3) and bin(1));
	bcd(0) <= bin(0);
end Behavioral;