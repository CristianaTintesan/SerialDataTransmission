library	IEEE;
use IEEE.STD_LOGIC_1164.all;

entity generator is
	port(codstart:in std_logic_vector(0 to 5):="110000";
		data1:in std_logic_vector(0 to 15):="1110000011010101";	
		data2:in std_logic_vector(0 to 15):="1100101011000101";	
		reset:in std_logic:='1';
		mode:in std_logic_vector(0 to 1);
		clk:in std_logic;
		iesire:out std_logic);
end generator;		  

architecture a of generator is	
	component mux_pachete is
		port(data1:in std_logic_vector(0 to 15);
			data2:in std_logic_vector(0 to 15);
			selectie:in std_logic;
			iesire:out std_logic_vector(0 to 15));
	end component mux_pachete;
	
	component mod_selectie is
		port(selectii:in std_logic_vector(0 to 1);
			iesire:out std_logic);
	end component mod_selectie;
	
	component divizor_de_frecventa is 
		port ( CLK_IN : in std_logic;
			CLK_OUT : out std_logic);
	end component divizor_de_frecventa;
	
	component sumacontrol is
		port(intrare:in std_logic_vector(0 to 15); iesire:out std_logic_vector(0 to 3));
	end component sumacontrol;
	
	component pachet_date is
		port(reset:in std_logic:='1';
			clk:in std_logic;
			codstart:in std_logic_vector(0 to 6);
			date:in std_logic_vector(0 to 15);
			sumacontrol:in std_logic_vector(0 to 3);	
			iesire:out std_logic);
	end component pachet_date;
	
	component segment_start is
		port (bit_start:in std_logic;			
			intrare:in std_logic_vector(0 to 5);
			iesire:out std_logic_vector(0 to 6));
	end component segment_start;
	
	signal s1:std_logic;
	signal s2:std_logic_vector(0 to 6);
	signal s3:std_logic_vector(0 to 15);
	signal s4:std_logic_vector(0 to 3);
	signal s5:std_logic;
	signal s6:std_logic_vector(0 to 3);
	
begin 
	c1:mod_selectie port map(mode,s1);
	c2:segment_start port map(bit_start=>s1,intrare=>codstart,iesire=>s2);
	c3:mux_pachete port map(data1=>data1,data2=>data2,selectie=>mode(1),iesire=>s3);
	c4:sumacontrol port map(intrare=>s3,iesire=>s4);
	s5<=mode(0) and mode(1);
	s6<=s4 xor s5&s5&s5&s5;
	
	c5:pachet_date port map(reset=>reset,clk=>clk,codstart=>s2,date=>s3,sumacontrol=>s6,iesire=>iesire);
end a;