library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use ieee.numeric_std.all;

entity alu is
	port(
x, y : in std_logic_vector(31 downto 0);

-- two input operands(0 = add , 1 = sub)
	add_sub : in std_logic ;

-- 00 = AND, 01 = OR , 10 = XOR , 11 = NOR
	logic_func : in std_logic_vector(1 downto 0 ) ;

-- 00 = lui, 01 = setless , 10 = arith , 11 = logic
	func: in std_logic_vector(1 downto 0 ) ;

	output: out std_logic_vector(31 downto 0) ;
	overflow: out std_logic ;
	zero: out std_logic);
end alu ;

architecture arch_alu of alu is 
signal logic_unit_out, diff_sum: std_logic_vector(31 downto 0);

begin
	--adder substract
		process(x,y,add_sub)
		begin
		if(add_sub ='0') then
			diff_sum<= std_logic_vector(signed(x)+signed(y));
		elsif(add_sub='1') then
			diff_sum<= std_logic_vector(signed(x)-signed(y)); 
		end if;
		end process;
	--logic unit
		process(x,y,logic_func)
		begin
	  Casestatement:case logic_func is
			when "00" => logic_unit_out<= x and y;
			when "01" => logic_unit_out<= x or y;
			when "10" => logic_unit_out<= x xor y;
			when others => logic_unit_out<= x nor y;
			end case Casestatement;
		end process;
	--multiplexer
		output<= y when(func = "00") else
			 (31 downto 1 =>'0',others=> diff_sum(30)) when(func = "01") else --MSB of signed is the sign
			 diff_sum when (func = "10") else
			 logic_unit_out when(func = "11");
		
	--zero
		process(diff_sum)
		begin
		if(diff_sum="00000000000000000000000000000000") then
			zero<='1';
		else
			zero<='0';
		end if;
		end process;
	--overflow
		process(diff_sum, add_sub,x,y)
		begin
			if((diff_sum(31)='1'and x(31)='0'and y(31)='0'and add_sub='0')or(diff_sum(31)='0'and x(31)='1'and y(31)='1'and add_sub='0')) then--for sum
				overflow<='1';
			elsif((x(31)='0' and y(31)='1'and diff_sum(31)='1'and add_sub='1')or(x(31)='1' and y(31)='0'and diff_sum(31)='0'and add_sub='0')) then--for diff
				overflow<='1';
			else
				overflow<='0';
			end if;
		end process;
	
end arch_alu;	

