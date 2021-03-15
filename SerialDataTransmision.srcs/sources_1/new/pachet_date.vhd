library	IEEE;
use IEEE.STD_LOGIC_1164.all; 
						
entity pachet_date is
	port(reset:in std_logic:='1';
		clk:in std_logic;
		codstart:in std_logic_vector(0 to 6);
		date:in std_logic_vector(0 to 15);
		sumacontrol:in std_logic_vector(0 to 3);	
		iesire:out std_logic);
end pachet_date;

architecture arh of pachet_date is

begin	
	process (clk,reset)
	variable i:integer;
	begin
		if (reset='1') then
				i:=0;
		elsif(clk'event and clk='1') then
				i:=i+1;
				case i is
					when 1 => iesire<=codstart(0);
					when 2 => iesire<=codstart(1);
					when 3 => iesire<=codstart(2);
					when 4 => iesire<=codstart(3);
					when 5 => iesire<=codstart(4);
					when 6 => iesire<=codstart(5);
					when 7 => iesire<=codstart(6);
					when 8 => iesire<=date(0);			
					when 9 => iesire<=date(1);
					when 10 => iesire<=date(2);
					when 11 => iesire<=date(3);
					when 12 => iesire<=date(4);
					when 13 => iesire<=date(5);
					when 14 => iesire<=date(6);
					when 15 => iesire<=date(7);
					when 16 => iesire<=date(8);
					when 17 => iesire<=date(9);
					when 18 => iesire<=date(10);
					when 19 => iesire<=date(11);
					when 20 => iesire<=date(12);
					when 21 => iesire<=date(13);
					when 22 => iesire<=date(14);
					when 23 => iesire<=date(15);
					when 24 => iesire<=sumacontrol(0);
					when 25 => iesire<=sumacontrol(1);
					when 26 => iesire<=sumacontrol(2);
					when 27 => iesire<=sumacontrol(3);	
					when others => NULL;
				end case;
			end if;
	end process;
end arh;	