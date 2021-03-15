library	IEEE;
use IEEE.STD_LOGIC_1164.all;

entity sumacontrol is
	port(intrare:in std_logic_vector(0 to 15);
		iesire:out std_logic_vector(0 to 3));
end sumacontrol;

architecture suma of sumacontrol is
begin
	process(intrare) is
	begin
		iesire(0)<=intrare(0) xor intrare(4) xor intrare(8) xor intrare(12);
		iesire(1)<=intrare(1) xor intrare(5) xor intrare(9) xor intrare(13);
		iesire(2)<=intrare(2) xor intrare(6) xor intrare(10) xor intrare(14);
		iesire(3)<=intrare(3) xor intrare(7) xor intrare(11) xor intrare(15);
	end process;
end suma;