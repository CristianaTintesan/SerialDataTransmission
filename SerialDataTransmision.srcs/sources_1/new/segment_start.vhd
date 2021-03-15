library	IEEE;
use IEEE.STD_LOGIC_1164.all;

entity segment_start is
	port(bit_start:in std_logic;			
		intrare:in std_logic_vector(0 to 5);
		iesire:out std_logic_vector(0 to 6));
end segment_start;

architecture a of segment_start is
begin
	iesire(0)<=bit_start;
	iesire(1 to 6)<=intrare(0 to 5);
end a;
