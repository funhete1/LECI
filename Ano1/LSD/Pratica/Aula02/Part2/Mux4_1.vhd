library ieee;
use ieee.std_logic_1164.all;

entity Mux4_1 is 
	port(dataIn : in std_logic_vector(3 downto 0);
			sel   : in std_logic_vector(1 downto 0);
			dataOut: out std_logic);
end Mux4_1;


--architecture Structural of Mux4_1 is
--	signal s_out : std_logic_vector(1 downto 0);
--begin 
--	mux2_1_1: entity work.Mux2_1(Behavioral)
--					port map(dataIn => dataIn(1 downto 0),
--								sel => sel(0),
--								dataOut => s_out(0));
--								
--	mux2_1_2: entity work.Mux2_1(Behavioral)
--					port map(dataIn => dataIn(3 downto 2),
--								sel => sel(0),
--								dataOut => s_out(1));
--	
--	mux2_1_3: entity work.Mux2_1(Behavioral)
--					port map(dataIn => s_out,
--								sel => sel(1),
--								dataOut => dataOut);
--end Structural;

architecture Behavioral of Mux4_1 is
begin 
	dataOut <= dataIn(0) when (sel = "00") else	
				  dataIn(1) when (sel = "01") else 
				  dataIn(2) when (sel = "10") else
				  dataIn(3) when (sel = "11") else 
				  '0';
end Behavioral;

