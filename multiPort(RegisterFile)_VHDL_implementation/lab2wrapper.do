add wave *
force clk 0
force	write 1
force	write_address_in "00"
force	din_in "1011"
run 2
force clk 1
force	write 0
force	read_a_in "00"
run 2
force clk 0
force	write 0
force	write_address_in "01"
force	din_in "0001"
run 2
force clk 1
force	write 1
force	read_b_in "01"
run 2
force clk 0
run 2
force clk 1
force	write 1
run 2
force clk 0
force	din_in "0000"
run 2
force clk 1
force	din_in "1111"
run 2
force clk 0
force	write 0 
force	din_in "0110"
run 2
force clk 1
run 2
force clk 0
force	write 1
force	write_address_in "10"
run 2
force clk 1
force	din_in "0010"
run 2
force clk 0
force	write_address_in "11"
run 2
force clk 1
force	din_in "1111"
run 2
force clk 0
force	write_address_in "00"
run 2
force clk 1
force	din "1110"
run 2
force clk 0
run 2
force clk 1
force	write 0
force	read_a_in "10"
force	read_b_in "11"
run 2
force clk 0
run 2
force clk 1
run 2
force clk 0
run 2
force clk 1
force	read_a_in "00"
force	read_b_in "01"
run 2
force clk 0
force reset 1
run 2
force clk 1
force reset 0
run 2
force clk 0
force	write 1
force	write_address_in "00"
force	din "1010"
run 2
force clk 1
run 2
force clk 0
force	reset 1
run 2
force clk 1
run 2

