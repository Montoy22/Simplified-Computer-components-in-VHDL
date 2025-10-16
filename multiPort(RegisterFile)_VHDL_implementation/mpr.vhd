library IEEE;
use IEEE.std_logic_1164.all;
--entity register
entity reg is
port(
	clk, write, reset: in std_logic;
	d:in std_logic_vector(31 downto 0); 
	output: out std_logic_vector(31 downto 0)
);
end reg;
--architecture register
architecture arch_reg of reg is
begin
	process(clk, reset, write)
	begin
	if(reset = '1') then
		output<=(others=>'0');
	elsif(clk'event and clk ='1'and write='1') then		
		output<= d;
	end if;
	end process;
end arch_reg;

------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
--entity demux
entity demux is
port( 
	demux_out1,demux_out2,demux_out3,demux_out4,demux_out5,demux_out6,demux_out7,demux_out8,demux_out9,
	demux_out10,demux_out11,demux_out12,demux_out13,demux_out14,demux_out15,demux_out16,demux_out17,
	demux_out18,demux_out19,demux_out20,demux_out21,demux_out22,demux_out23,demux_out24,demux_out25,
	demux_out26,demux_out27,demux_out28,demux_out29,demux_out30,demux_out31,demux_out0: out std_logic_vector(31 downto 0); 
	demux_in: in std_logic_vector(31 downto 0);
	sel:in std_logic_vector(4 downto 0)
);
end demux;

--architecture demux
architecture arch_demux of demux is
signal init:std_logic_vector(31 downto 0):=(others=>'0');
begin		---how to solve problem of all write
	process(sel, demux_in)
	begin	
		if(sel(4)='0'and sel(3)='0' and sel(2)='0' and sel(1)='0' and sel(0)='0') then
				demux_out0<=demux_in;
		elsif(sel(4)='0'and sel(3)='0'and sel(2)='0'and sel(1)='0'and sel(0)='1') then
				demux_out1<=demux_in;
		elsif(sel(4)='0'and sel(3)='0'and sel(2)='0'and sel(1)='1'and sel(0)='0') then
				demux_out2<=demux_in;
		elsif(sel(4)='0'and sel(3)='0'and sel(2)='0'and sel(1)='1'and sel(0)='1') then
				demux_out3<=demux_in;
		elsif(sel(4)='0'and sel(3)='0'and sel(2)='1'and sel(1)='0'and sel(0)='0') then
				demux_out4<=demux_in;
		elsif(sel(4)='0'and sel(3)='0'and sel(2)='1'and sel(1)='0'and sel(0)='1') then
				demux_out5<=demux_in;
		elsif(sel(4)='0'and sel(3)='0'and sel(2)='1'and sel(1)='1'and sel(0)='0') then
				demux_out6<=demux_in;
		elsif(sel(4)='0'and sel(3)='0'and sel(2)='1'and sel(1)='1'and sel(0)='1') then
				demux_out7<=demux_in;
		elsif(sel(4)='0'and sel(3)='1'and sel(2)='0'and sel(1)='0'and sel(0)='0') then
				demux_out8<=demux_in;
		elsif(sel(4)='0'and sel(3)='1'and sel(2)='0'and sel(1)='0'and sel(0)='1') then
				demux_out9<=demux_in;
		elsif(sel(4)='0'and sel(3)='1'and sel(2)='0'and sel(1)='1'and sel(0)='0') then
				demux_out10<=demux_in;
		elsif(sel(4)='0'and sel(3)='1'and sel(2)='0'and sel(1)='1'and sel(0)='1') then
				demux_out11<=demux_in;
		elsif(sel(4)='0'and sel(3)='1'and sel(2)='1'and sel(1)='0'and sel(0)='0') then
				demux_out12<=demux_in;
		elsif(sel(4)='0'and sel(3)='1'and sel(2)='1'and sel(1)='0'and sel(0)='1') then
				demux_out13<=demux_in;
		elsif(sel(4)='0'and sel(3)='1'and sel(2)='1'and sel(1)='1'and sel(0)='0') then
				demux_out14<=demux_in;
		elsif(sel(4)='0'and sel(3)='1'and sel(2)='1'and sel(1)='1'and sel(0)='1') then
				demux_out15<=demux_in;
		elsif(sel(4)='1'and sel(3)='0'and sel(2)='0'and sel(1)='0'and sel(0)='0') then
				demux_out16<=demux_in;
		elsif(sel(4)='1'and sel(3)='0'and sel(2)='0'and sel(1)='0'and sel(0)='1') then
				demux_out17<=demux_in;
		elsif(sel(4)='1'and sel(3)='0'and sel(2)='0'and sel(1)='1'and sel(0)='0') then
				demux_out18<=demux_in;
		elsif(sel(4)='1'and sel(3)='0'and sel(2)='0'and sel(1)='1'and sel(0)='1') then
				demux_out19<=demux_in;
		elsif(sel(4)='1'and sel(3)='0'and sel(2)='1'and sel(1)='0'and sel(0)='0') then
				demux_out20<=demux_in;
		elsif(sel(4)='1'and sel(3)='0'and sel(2)='1'and sel(1)='0'and sel(0)='1') then
				demux_out21<=demux_in;
		elsif(sel(4)='1'and sel(3)='0'and sel(2)='1'and sel(1)='1'and sel(0)='0') then
				demux_out22<=demux_in;
		elsif(sel(4)='1'and sel(3)='0'and sel(2)='1'and sel(1)='1'and sel(0)='1') then
				demux_out23<=demux_in;
		elsif(sel(4)='1'and sel(3)='1'and sel(2)='0'and sel(1)='0'and sel(0)='0') then
				demux_out24<=demux_in;
		elsif(sel(4)='1'and sel(3)='1'and sel(2)='0'and sel(1)='0'and sel(0)='1') then
				demux_out25<=demux_in;
		elsif(sel(4)='1'and sel(3)='1'and sel(2)='0'and sel(1)='1'and sel(0)='0') then
				demux_out26<=demux_in;
		elsif(sel(4)='1'and sel(3)='1'and sel(2)='0'and sel(1)='1'and sel(0)='1') then
				demux_out27<=demux_in;
		elsif(sel(4)='1'and sel(3)='1'and sel(2)='1'and sel(1)='0'and sel(0)='0') then
				demux_out28<=demux_in;
		elsif(sel(4)='1'and sel(3)='1'and sel(2)='1'and sel(1)='0'and sel(0)='1') then
				demux_out29<=demux_in;
		elsif(sel(4)='1'and sel(3)='1'and sel(2)='1'and sel(1)='1'and sel(0)='0') then
				demux_out30<=demux_in;
		else
				demux_out31<=demux_in;
		end if;
	end process;

end arch_demux;


----------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
--entity mux
entity mux is
port( 
	mux_in1,mux_in2,mux_in3,mux_in4,mux_in5,mux_in6,mux_in7,mux_in8,mux_in9,
	mux_in10,mux_in11,mux_in12,mux_in13,mux_in14,mux_in15,mux_in16,mux_in17,
	mux_in18,mux_in19,mux_in20,mux_in21,mux_in22,mux_in23,mux_in24,mux_in25,
	mux_in26,mux_in27,mux_in28,mux_in29,mux_in30,mux_in31,mux_in0:in std_logic_vector(31 downto 0); 
	mux_out:out std_logic_vector(31 downto 0);
	sel:in std_logic_vector(4 downto 0)
);
end mux;

--architecture mux
architecture arch_mux of mux is
begin
	mux_out<= mux_in0 when(sel = "00000") else
		 mux_in1 when(sel = "00001") else
		 mux_in2 when(sel = "00010") else
		 mux_in3 when(sel = "00011") else
		 mux_in4 when(sel = "00100") else
		 mux_in5 when(sel = "00101") else
		 mux_in6 when(sel = "00110") else
		 mux_in7 when(sel = "00111") else
		 mux_in8 when(sel = "01000") else
		 mux_in9 when(sel = "01001") else
		 mux_in10 when(sel = "01010") else
		 mux_in11 when(sel = "01011") else
		 mux_in12 when(sel = "01100") else
		 mux_in13 when(sel = "01101") else
		 mux_in14 when(sel = "01110") else
		 mux_in15 when(sel = "01111") else
		 mux_in16 when(sel = "10000") else
		 mux_in17 when(sel = "10001") else
		 mux_in18 when(sel = "10010") else
		 mux_in19 when(sel = "10011") else
		 mux_in20 when(sel = "10100") else
		 mux_in21 when(sel = "10101") else
		 mux_in22 when(sel = "10110") else
		 mux_in23 when(sel = "10111") else
		 mux_in24 when(sel = "11000") else
		 mux_in25 when(sel = "11001") else
		 mux_in26 when(sel = "11010") else
		 mux_in27 when(sel = "11011") else
		 mux_in28 when(sel = "11100") else
		 mux_in29 when(sel = "11101") else
		 mux_in30 when(sel = "11110") else
		 mux_in31 when(sel = "11111");

end arch_mux;


-- 32 x 32 register file
-- two read ports, one write port with write enable
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
entity reg_file is
port( 
	din: in std_logic_vector(31 downto 0);
	reset : in std_logic;
	clk: in std_logic;
	write : in std_logic;
	read_a : in std_logic_vector(4 downto 0);
	read_b : in std_logic_vector(4 downto 0);
	write_address : in std_logic_vector(4 downto 0);
	out_a : out std_logic_vector(31 downto 0);
	out_b : out std_logic_vector(31 downto 0));
end reg_file ;

architecture arch_reg_file of reg_file is
signal mux_sig_in1,mux_sig_in2,mux_sig_in3,mux_sig_in4,mux_sig_in5,mux_sig_in6,mux_sig_in7,mux_sig_in8,mux_sig_in9,mux_sig_in10,mux_sig_in11,
mux_sig_in12,mux_sig_in13,mux_sig_in14,mux_sig_in15,mux_sig_in16,mux_sig_in17,mux_sig_in18,mux_sig_in19,mux_sig_in20,mux_sig_in21,mux_sig_in22,mux_sig_in23,mux_sig_in24,
mux_sig_in25,mux_sig_in26,mux_sig_in27,mux_sig_in28,mux_sig_in29,mux_sig_in30,mux_sig_in31,mux_sig_in0:std_logic_vector(31 downto 0);

signal demux_sig_out1,demux_sig_out2,demux_sig_out3,demux_sig_out4,demux_sig_out5,demux_sig_out6,demux_sig_out7,demux_sig_out8,demux_sig_out9,demux_sig_out10,demux_sig_out11,
demux_sig_out12,demux_sig_out13,demux_sig_out14,demux_sig_out15,demux_sig_out16,demux_sig_out17,demux_sig_out18,demux_sig_out19,demux_sig_out20,demux_sig_out21,demux_sig_out22,demux_sig_out23,demux_sig_out24,
demux_sig_out25,demux_sig_out26,demux_sig_out27,demux_sig_out28,demux_sig_out29,demux_sig_out30,demux_sig_out31,demux_sig_out0:std_logic_vector(31 downto 0);
begin

--connecting mux A to registers
mltpA: entity work.mux port map(
mux_in1=>mux_sig_in1,mux_in2=>mux_sig_in2,mux_in3=>mux_sig_in3,mux_in4=>mux_sig_in4,mux_in5=>mux_sig_in5,mux_in6=>mux_sig_in6,mux_in7=>mux_sig_in7,mux_in8=>mux_sig_in8,mux_in9=>mux_sig_in9,
mux_in10=>mux_sig_in10,mux_in11=>mux_sig_in11,mux_in12=>mux_sig_in12,mux_in13=>mux_sig_in13,mux_in14=>mux_sig_in14,mux_in15=>mux_sig_in15,mux_in16=>mux_sig_in16,mux_in17=>mux_sig_in17,mux_in18=>mux_sig_in18,
mux_in19=>mux_sig_in19,mux_in20=>mux_sig_in20,mux_in21=>mux_sig_in21,mux_in22=>mux_sig_in22,mux_in23=>mux_sig_in23,mux_in24=>mux_sig_in24,mux_in25=>mux_sig_in25,mux_in26=>mux_sig_in26,mux_in27=>mux_sig_in27,
mux_in28=>mux_sig_in28,mux_in29=>mux_sig_in29,mux_in30=>mux_sig_in30,mux_in31=>mux_sig_in31,mux_in0=>mux_sig_in0, sel =>read_a, mux_out=>out_a);

--connecting mux B to registers
mltpB: entity work.mux port map(
mux_in1=>mux_sig_in1,mux_in2=>mux_sig_in2,mux_in3=>mux_sig_in3,mux_in4=>mux_sig_in4,mux_in5=>mux_sig_in5,mux_in6=>mux_sig_in6,mux_in7=>mux_sig_in7,mux_in8=>mux_sig_in8,mux_in9=>mux_sig_in9,
mux_in10=>mux_sig_in10,mux_in11=>mux_sig_in11,mux_in12=>mux_sig_in12,mux_in13=>mux_sig_in13,mux_in14=>mux_sig_in14,mux_in15=>mux_sig_in15,mux_in16=>mux_sig_in16,mux_in17=>mux_sig_in17,mux_in18=>mux_sig_in18,
mux_in19=>mux_sig_in19,mux_in20=>mux_sig_in20,mux_in21=>mux_sig_in21,mux_in22=>mux_sig_in22,mux_in23=>mux_sig_in23,mux_in24=>mux_sig_in24,mux_in25=>mux_sig_in25,mux_in26=>mux_sig_in26,mux_in27=>mux_sig_in27,
mux_in28=>mux_sig_in28,mux_in29=>mux_sig_in29,mux_in30=>mux_sig_in30,mux_in31=>mux_sig_in31,mux_in0=>mux_sig_in0, sel =>read_b, mux_out=>out_b);

--connecting demux to registers
dmltp: entity work.demux port 
map(demux_in=>din, sel=>write_address,demux_out1=>demux_sig_out1,demux_out2=>demux_sig_out2,	demux_out3=>demux_sig_out3,demux_out4=>demux_sig_out4,demux_out5=>demux_sig_out5,demux_out6=>demux_sig_out6,demux_out7=>demux_sig_out7,demux_out8=>demux_sig_out8,demux_out9=>demux_sig_out9,
demux_out10=>demux_sig_out10,demux_out11=>demux_sig_out11,demux_out12=>demux_sig_out12,demux_out13=>demux_sig_out13,demux_out14=>demux_sig_out14,demux_out15=>demux_sig_out15,
demux_out16=>demux_sig_out16,demux_out17=>demux_sig_out17,demux_out18=>demux_sig_out18,demux_out19=>demux_sig_out19,demux_out20=>demux_sig_out20,demux_out21=>demux_sig_out21,
demux_out22=>demux_sig_out22,demux_out23=>demux_sig_out23,demux_out24=>demux_sig_out24,demux_out25=>demux_sig_out25,demux_out26=>demux_sig_out26,demux_out27=>demux_sig_out27,
demux_out28=>demux_sig_out28,demux_out29=>demux_sig_out29,demux_out30=>demux_sig_out30,demux_out31=>demux_sig_out31,demux_out0=>demux_sig_out0);

--All registers(x32)
reg0:entity work.reg port map(d=>demux_sig_out0,clk=>clk,write =>write,reset=>reset,output=>mux_sig_in0);
reg1:entity work.reg port map(d=>demux_sig_out1,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in1);
reg2:entity work.reg port map(d=>demux_sig_out2,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in2);
reg3:entity work.reg port map(d=>demux_sig_out3,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in3);
reg4:entity work.reg port map(d=>demux_sig_out4,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in4);
reg5:entity work.reg port map(d=>demux_sig_out5,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in5);
reg6:entity work.reg port map(d=>demux_sig_out6,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in6);
reg7:entity work.reg port map(d=>demux_sig_out7,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in7);
reg8:entity work.reg port map(d=>demux_sig_out8,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in8);
reg9:entity work.reg port map(d=>demux_sig_out9,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in9);
reg10:entity work.reg port map(d=>demux_sig_out10,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in10);
reg11:entity work.reg port map(d=>demux_sig_out11,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in11);
reg12:entity work.reg port map(d=>demux_sig_out12,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in12);
reg13:entity work.reg port map(d=>demux_sig_out13,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in13);
reg14:entity work.reg port map(d=>demux_sig_out14,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in14);
reg15:entity work.reg port map(d=>demux_sig_out15,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in15);
reg16:entity work.reg port map(d=>demux_sig_out16,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in16);
reg17:entity work.reg port map(d=>demux_sig_out17,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in17);
reg18:entity work.reg port map(d=>demux_sig_out18,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in18);
reg19:entity work.reg port map(d=>demux_sig_out19,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in19);
reg20:entity work.reg port map(d=>demux_sig_out20,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in20);
reg21:entity work.reg port map(d=>demux_sig_out21,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in21);
reg22:entity work.reg port map(d=>demux_sig_out22,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in22);
reg23:entity work.reg port map(d=>demux_sig_out23,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in23);
reg24:entity work.reg port map(d=>demux_sig_out24,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in24);
reg25:entity work.reg port map(d=>demux_sig_out25,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in25);
reg26:entity work.reg port map(d=>demux_sig_out26,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in26);
reg27:entity work.reg port map(d=>demux_sig_out27,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in27);
reg28:entity work.reg port map(d=>demux_sig_out28,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in28);
reg29:entity work.reg port map(d=>demux_sig_out29,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in29);
reg30:entity work.reg port map(d=>demux_sig_out30,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in30);
reg31:entity work.reg port map(d=>demux_sig_out31,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in31);
	

end arch_reg_file;
