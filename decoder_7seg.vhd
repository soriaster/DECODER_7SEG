library ieee;
use ieee.std_logic_1164.all;
entity decoder_7seg is
port(
	bcd: in  bit_vector(3 downto 0);
	clki:in std_logic;
	led: out bit_vector(6 downto 0)
	);
end decoder_7seg;
architecture archiconv of decoder_7seg is
	begin
	conv: process (clki,bcd)
	begin
	if clki 'event and clki='1'then
	case bcd is
		when "0000"=> led <="0000001"; --0
		when "0001"=> led <="1001111"; --1
		when "0010"=> led <="0010010"; --2
		when "0011"=> led <="0000110"; --3
		when "0100"=> led <="1001100"; --4
		when "0101"=> led <="0100100"; --5
		when "0110"=> led <="0100000"; --6
		when "0111"=> led <="0001111"; --7
		when "1000"=> led <="0000000"; --8
		when "1001"=> led <="0000100"; --9
		when others => led <= "1111111";
end case;
end if;
end process conv;
end archiconv;