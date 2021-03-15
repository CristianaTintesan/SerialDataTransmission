library	IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux_pachete is
	port(data1:in std_logic_vector(0 to 15);
		data2:in std_logic_vector(0 to 15);
		selectie:in std_logic;
		iesire:out std_logic_vector(0 to 15));
end mux_pachete;

architecture arh of mux_pachete is
begin
	process(selectie,data1,data2)
	begin
		if 	(selectie='0')	then	 
			iesire<=data1;
		else iesire<=data2;	
		end if;	
	end process; 
end arh;
