library	IEEE;
use IEEE.STD_LOGIC_1164.all;

entity pachet_primire is
	port(reset:in std_logic:='1';
		clk:in std_logic;
		bitstart:out std_logic:='0';
		codstart:out std_logic_vector(0 to 5):="110000";
		date:out std_logic_vector(0 to 15);
		sumacontrol:out std_logic_vector(0 to 3);
		enable:out std_logic:='0';
		intrare:in std_logic;
		iesire:out std_logic:='0');
end pachet_primire;

architecture arh of pachet_primire is
begin	
	process (clk,reset)
	variable i:integer:=-1;
	begin
		if (reset='1') then	
				i:=-1;
				iesire<='0';
				enable<='0';
		elsif(clk'event and clk='1') then	 
			  	i:=i+1;
				case i is
					when 1 => bitstart<=intrare;
					when 2 => codstart(0)<=intrare;
					when 3 => codstart(1)<=intrare;
					when 4 => codstart(2)<=intrare;
					when 5 => codstart(3)<=intrare;
					when 6 => codstart(4)<=intrare;
					when 7 => codstart(5)<=intrare;
								
					when 8 => date(0)<=intrare;
								iesire<='1';
								
					when 9 => date(1)<=intrare;
							
					 when 10 => date(2)<=intrare;
					 		
					 when 11 => date(3)<=intrare;
					 	 		
					 when 12 => date(4)<=intrare;
					 				
					 when 13 => date(5)<=intrare;
								 
					 when 14 => date(6)<=intrare;
					 			
					 when 15 => date(7)<=intrare;
					 			
					 when 16 => date(8)<=intrare;
					 			
					 when 17 => date(9)<=intrare;
					 		
					 when 18 => date(10)<=intrare;
					 		
					 when 19 => date(11)<=intrare;
					 			
					 when 20 => date(12)<=intrare;
					 				 
					 when 21 => date(13)<=intrare;
					  		
					 when 22 => date(14)<=intrare;
								   
					 when 23 => date(15)<=intrare;
					 			
					 when 24 => sumacontrol(0)<=intrare;
					  				 
					 when 25 => sumacontrol(1)<=intrare;
					   					  
					 when 26 => sumacontrol(2)<=intrare;
					 			
					 when 27 => sumacontrol(3)<=intrare;
					 			
					 when 28 => enable<='1';
					 when others=>NULL;
				end case;
		end if;
	end process;
end arh;	