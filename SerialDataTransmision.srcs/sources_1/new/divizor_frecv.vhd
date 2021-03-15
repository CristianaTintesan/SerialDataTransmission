library	IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity divizor is 
	port(CLK_IN:in std_logic;
		CLK_OUT:out std_logic);
end divizor;

architecture arh of divizor is 
begin
	process (CLK_IN)
		variable var_CLK:std_logic_vector(0 to 26):=(others=>'0');
	begin  
		if (CLK_IN'event and CLK_IN='1') then 
			var_CLK:=var_CLK+1;
		end if;	
		CLK_OUT<=var_CLK(0);
	end process;
end arh;