add wave *
force clk 0
force	write 1
force	write_address "00000"
force	din "11100000000100011000000000011111"
run 2
force clk 1
force	write 0
force	read_a "00000"
run 2
force clk 0
force	write 0
force	write_address "00001"
force	din "00000000000000000000000000000001"
run 2
force clk 1
force	write 1
force	read_b "00001"
run 2
force clk 0
run 2
force clk 1
force	write 1
run 2
force clk 0
force	din "00000000000000000000000000000000"
run 2
force clk 1
force	din "00000000000000000000000000001111"
run 2
force clk 0
force	write 0 
force	din "00000000000000000000000011110000"
run 2
force clk 1
run 2
force clk 0
force	write 1
force	write_address "00010"
run 2
force clk 1
force	din "00000000000000000000000000000010"
run 2
force clk 0
force	write_address "00011"
run 2
force clk 1
force	din "00000000000000000000000000000011"
run 2
force clk 0
force	write_address "00100"
run 2
force clk 1
force	din "00000000000000000000000000000100"
run 2
force clk 0
run 2
force clk 1
force	write 0
force	read_a "00010"
force	read_b "00011"
run 2
force clk 0
run 2
force clk 1
run 2
force clk 0
run 2
force clk 1
force	read_a "00000"
force	read_b "00100"
run 2
force clk 0
force reset 1
run 2
force clk 1
force reset 0
run 2
force clk 0
force	write 1
force	write_address "00000"
force	din "11100000000100011000000000011111"
run 2
force clk 1

