add wave *
force	pc_in 			X"00000000"
force	branch_type		"00"
force	PC_sel			"00"
force	rs_in	 		X"000000F0"
force	rt_in	 		X"0001010"
force	target_address_in	X"00000030"
run 2
force	pc_in 			X"00000000"
force	branch_type		"00"
force	PC_sel			"01"
force	target_address_in	X"00000030"
run 2
force	pc_in 			X"00000000"
force	branch_type		"00"
force	PC_sel			"10"
force	target_address_in	X"00000030"
run 2
force	pc_in 			X"00000000"
force	branch_type		"00"
force	PC_sel			"11"
force	target_address_in	X"00000030"
run 2


force	pc_in 			X"00000000"
force	branch_type		"01"
force	PC_sel			"00"
force	rs_in	 		X"000000F0"
force	rt_in	 		X"0001010"
force	target_address_in	X"00000030"
run 2
force	pc_in 			X"00000000"
force	branch_type		"01"
force	PC_sel			"00"
force	rs_in	 		X"000000F0"
force	rt_in	 		X"00000F0"
force	target_address_in	X"00000030"
run 2

force	pc_in 			X"00000000"
force	branch_type		"10"
force	PC_sel			"00"
force	rs_in	 		X"000000F0"
force	rt_in	 		X"0001010"
force	target_address_in	X"0000FF30"
run 2
force	pc_in 			X"00000000"
force	branch_type		"10"
force	PC_sel			"00"
force	rs_in	 		X"000000F0"
force	rt_in	 		X"00000F0"
force	target_address_in	X"0000FF30"
run 2

force	pc_in 			X"00000000"
force	branch_type		"11"
force	PC_sel			"00"
force	rs_in	 		X"000000F0"
force	target_address_in	X"0000FF30"
run 2
force	pc_in 			X"00000000"
force	branch_type		"11"
force	PC_sel			"00"
force	rs_in	 		X"A00000F0"
force	target_address_in	X"0000FF30"
run 2
