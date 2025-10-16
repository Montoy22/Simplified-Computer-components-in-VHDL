library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use IEEE.NUMERIC_STD.all;

entity nau is 
port(
	rt_in,rs_in: in std_logic_vector(1 downto 0);
	pc_in: in std_logic_vector(2 downto 0); 
	target_address_in: in std_logic_vector(2 downto 0);
	branch_type, PC_sel: in std_logic_vector(1 downto 0);
	next_pc_out: out std_logic_vector(2 downto 0)
);
end nau;

architecture arch_nau of nau is--Next Address Unit
signal pc_sel_in0, pc_sel_in1, pc_sel_in2, pc_sel_out: std_logic_vector(2 downto 0);
signal branch_type_sel0, branch_type_sel1, branch_type_sel2, branch_type_sel3, branch_type_out, branch_result: std_logic_vector(2 downto 0);
signal xorResult: std_logic_vector(1 downto 0);
signal prev_next_pc_out: std_logic_vector(2 downto 0);
signal offset_32: signed(2 downto 0);
signal offset: signed(1 downto 0);


begin
	pc_sel_in0 <=std_logic_vector(signed(pc_in)+1);--(00) increasing pc by 1 to go next line
	pc_sel_in1 <=target_address_in;--(01) jump
	pc_sel_in2 <='0'&rs_in;--(10) jump register-
	
	
--for branch type
	xorResult <=rt_in xor rs_in;

-- for branch calculation

	process(rs_in, pc_in, target_address_in,branch_type,rt_in)
	begin
				offset_32 <= signed(target_address_in(2 downto 0));
				
				branch_result<= std_logic_vector(signed(pc_in)+1+ offset_32);
	end process;

	branch_type_sel2 <= pc_sel_in0 when (xorResult="00") else --branch type (10)bne
				branch_result;

	branch_type_sel1 <= branch_result when (xorResult="00") else --branch type (01)beq
				pc_sel_in0 ;

	branch_type_sel3 <= branch_result when (rs_in(1)='1') else --branch type (11)bltz
				pc_sel_in0 ;

	
	
--OUTPUT
	next_pc_out<= pc_sel_in0 when(PC_sel = "00" and branch_type= "00") else
		 	pc_sel_in1 when(PC_sel = "01" and branch_type= "00") else
			pc_sel_in2 when(PC_sel = "10" and branch_type= "00") else
			branch_type_sel1 when(PC_sel = "00" and branch_type= "01") else
			branch_type_sel2 when(PC_sel = "00" and branch_type= "10") else
			branch_type_sel3 when(PC_sel = "00" and branch_type= "11") else
			prev_next_pc_out;--keeps previous value

	process (PC_sel, branch_type,pc_sel_in0,pc_sel_in1,pc_sel_in2,branch_type_sel1,branch_type_sel2,branch_type_sel3)
    		begin
        if PC_sel = "00" and branch_type= "00" then
            prev_next_pc_out <= pc_sel_in0;
        elsif PC_sel = "01" and branch_type= "00" then
            prev_next_pc_out <= pc_sel_in1;
	elsif PC_sel = "10" and branch_type= "00" then
            prev_next_pc_out <= pc_sel_in2;
	elsif PC_sel = "00" and branch_type= "01" then
            prev_next_pc_out <= branch_type_sel1;
	elsif PC_sel = "00" and branch_type= "10" then
            prev_next_pc_out <= branch_type_sel2;
	elsif PC_sel = "00" and branch_type= "11" then
            prev_next_pc_out <= branch_type_sel3;
	else
		prev_next_pc_out <= prev_next_pc_out;
        end if;
    end process;

end arch_nau;

    
