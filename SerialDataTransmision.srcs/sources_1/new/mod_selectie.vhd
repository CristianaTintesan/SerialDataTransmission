library	IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mod_selectie is
	port(selectii:in std_logic_vector(0 to 1);
		iesire:out std_logic);
end mod_selectie;

architecture a of mod_selectie is
begin
	process(selectii)
	begin  
		if (selectii="00") then
			iesire<='0';	
		elsif (selectii="01") then	 
			iesire<='0';
		elsif 	(selectii="10") then	 
			iesire<='1';
		elsif (selectii="11") then
			iesire<='0';	
		end if;	
	end process; 
end a;
