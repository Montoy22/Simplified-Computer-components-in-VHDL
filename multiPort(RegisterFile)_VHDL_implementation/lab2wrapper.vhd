library IEEE;
use IEEE.std_logic_1164.all;
--entity register
entity reg is
port(
	clk, write, reset: in std_logic;
	d:in std_logic_vector(3 downto 0); 
	output: out std_logic_vector(3 downto 0)
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
	demux_out1,demux_out2,demux_out3,demux_out0: out std_logic_vector(3 downto 0); 
	demux_in: in std_logic_vector(3 downto 0);
	sel:in std_logic_vector(1 downto 0)
);
end demux;

--architecture demux
architecture arch_demux of demux is
begin
	
	process(sel, demux_in)
	begin	
		if(sel(1)='0' and sel(0)='0') then
				demux_out0<=demux_in;
		elsif(sel(1)='0'and sel(0)='1') then
				demux_out1<=demux_in;
		elsif(sel(1)='1'and sel(0)='0') then
				demux_out2<=demux_in;
		else
				demux_out3<=demux_in;
		end if;
	end process;

end arch_demux;


----------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
--entity mux
entity mux is
port( 
	mux_in1,mux_in2,mux_in3,mux_in0:in std_logic_vector(3 downto 0); 
	mux_out:out std_logic_vector(3 downto 0);
	sel:in std_logic_vector(1 downto 0)
);
end mux;

--architecture mux
architecture arch_mux of mux is
begin
	mux_out<= mux_in0 when(sel = "00") else
		 mux_in1 when(sel = "01") else
		 mux_in2 when(sel = "10") else
		 mux_in3 when(sel = "11");
end arch_mux;


-- 32 x 32 register file
-- two read ports, one write port with write enable
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
entity regfile is
port( 
	din_in: in std_logic_vector(3 downto 0);
	reset : in std_logic;
	clk: in std_logic;
	write : in std_logic;
	read_a_in : in std_logic_vector(1 downto 0);
	read_b_in : in std_logic_vector(1 downto 0);
	write_address_in : in std_logic_vector(1 downto 0);
	out_a_out : out std_logic_vector(3 downto 0);
	out_b_out : out std_logic_vector(3 downto 0)
);
end regfile ;

architecture arch_regfile of regfile is
signal mux_sig_in1,mux_sig_in2,mux_sig_in3,mux_sig_in0:std_logic_vector(3 downto 0);
signal demux_sig_out1,demux_sig_out2,demux_sig_out3,demux_sig_out0:std_logic_vector(3 downto 0);
begin

--connecting mux A to registers
mltpA: entity work.mux port map(
mux_in1=>mux_sig_in1,mux_in2=>mux_sig_in2,mux_in3=>mux_sig_in3,mux_in0=>mux_sig_in0, sel =>read_a_in, mux_out=>out_a_out);

--connecting mux B to registers
mltpB: entity work.mux port map(
mux_in1=>mux_sig_in1,mux_in2=>mux_sig_in2,mux_in3=>mux_sig_in3,mux_in0=>mux_sig_in0, sel =>read_b_in, mux_out=>out_b_out);

--connecting demux to registers
dmltp: entity work.demux port 
map(demux_in=>din_in, sel=>write_address_in,demux_out1=>demux_sig_out1,demux_out2=>demux_sig_out2,demux_out3=>demux_sig_out3,demux_out0=>demux_sig_out0);

--All registers(x32)
reg0:entity work.reg port map(d=>demux_sig_out0,clk=>clk,write =>write,reset=>reset,output=>mux_sig_in0);
reg1:entity work.reg port map(d=>demux_sig_out1,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in1);
reg2:entity work.reg port map(d=>demux_sig_out2,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in2);
reg3:entity work.reg port map(d=>demux_sig_out3,clk=>clk,write =>write, reset=>reset,output=>mux_sig_in3);

end arch_regfile;
