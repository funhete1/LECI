library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AddSub4 is 
	port(a : in std_logic_vector(3 downto 0);
			b : in std_logic_vector(3 downto 0);
			sub: in std_logic;
			cout: out std_logic;
			s : out std_logic_vector(3 downto 0));
end AddSub4;

--architecture Structural of AddSub4 is 
--	signal s_b : std_logic_vector(3 downto 0);
--	signal s_cout: std_logic;
--begin 
--	
--	sig_sub: entity work.MuxG2_1(Behavioral)
--					generic map(N => 4)
--					port map(input0 => b,
--								sel => sub,
--								output => s_b);
--	
--	result: entity work.Adder4(Structural)
--					port map(a => a,
--								b => s_b,
--								cin => not(sub),
--								s => s,
--								cout => s_cout);
--	
--	Cout_fix: cout <= s_cout when (sub = '0') else
--								not(s_cout);
--								
--end Structural;


architecture Behavioral of AddSub4 is 

	signal s_a, s_b, s_s : unsigned(4 downto 0);
	
begin
	s_a <= '0' & unsigned(a);
	s_b <= '0' & unsigned(b);
	s_s <= (s_a + s_b ) when (sub = '0') else 
			 (s_a - s_b);
			 
	s <= std_logic_vector(s_s(3 downto 0));
	cout <= s_s(4);
end Behavioral;
