library	IEEE;
use IEEE.STD_LOGIC_1164.all;

entity verifsuma is
	port(intrare1:in std_logic_vector(0 to 3);
		intrare2:in std_logic_vector(0 to 3);
		iesire:out std_logic:='1');
end verifsuma; 

architecture arh of verifsuma is
begin 
	process	(intrare1,intrare2)
	begin
		if (intrare1=intrare2) then
			iesire<='1';
		else
			iesire<='0';  
		end if;	  
	end process;
end arh;

