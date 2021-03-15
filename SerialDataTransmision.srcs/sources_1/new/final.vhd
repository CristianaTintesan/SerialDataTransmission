library	IEEE;
use IEEE.STD_LOGIC_1164.all;

entity final is
	port(start,clk:in std_logic;
		reset:in std_logic:='1';
		mode:in std_logic_vector(0 to 1);
		SS,SM,SC:out std_logic);
end final;

architecture a of final is
	
	component det is
		port(intrare,clk:in std_logic;
			reset:in std_logic:='1';
			SS,SM,SC:out std_logic);
	end component det;
	
	component generator is
		port(codstart:in std_logic_vector(0 to 5):="110000";
			data1:in std_logic_vector(0 to 15):="1110000011010101";
			data2:in std_logic_vector(0 to 15):="1100101011000101";
			reset:in std_logic:='1';
			mode:in std_logic_vector(0 to 1);
			clk:in std_logic;
			iesire:out std_logic);
	end component generator;
	
	component divizor is 
		port(CLK_IN:in std_logic;
			CLK_OUT:out std_logic);
	end component divizor;
	
	signal s1,s2,sclk:std_logic;
begin
	s1<=clk and start;
	c1:divizor port map(CLK_IN=>s1,CLK_OUT=>sclk);
	c2:generator port map(reset=>reset,mode=>mode,clk=>s1,iesire=>s2);
	c3:det port map(intrare=>s2,clk=>s1,reset=>reset,SS=>SS,SM=>SM,SC=>SC);		   --in ISE in c2 si c3 se va inlocui s1 cu sclk din cauza divizorului
end a;