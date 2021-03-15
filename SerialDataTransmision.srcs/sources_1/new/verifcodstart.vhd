library	IEEE;
use IEEE.STD_LOGIC_1164.all;

entity verifcodstart is
	port(intrare1:in std_logic_vector(0 to 5);
		intrare2:in std_logic_vector(0 to 5):="110000";
		iesire:out std_logic:='1');
end verifcodstart; 

architecture a of verifcodstart is
begin 
	process	(intrare1,intrare2)
	begin
		if (intrare1=intrare2) then
			iesire<='1';
		else
			iesire<='0';  
		end if;	  
	end process;
end a;