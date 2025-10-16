add wave *
force	pc_in 			"000"
force	branch_type		"00"
force	PC_sel			"00"
force	rs_in	 		"01"
force	rt_in	 		"01"
force	target_address_in	"010"
run 2

force	pc_in 			"000"
force	branch_type		"00"
force	PC_sel			"01"
force	rs_in	 		"01"
force	rt_in	 		"01"
force	target_address_in	"010"
run 2

force	pc_in 			"000"
force	branch_type		"00"
force	PC_sel			"10"
force	rs_in	 		"01"
force	rt_in	 		"01"
force	target_address_in	"010"
run 2

force	pc_in 			"000"
force	branch_type		"01"
force	PC_sel			"00"
force	rs_in	 		"01"
force	rt_in	 		"01"
force	target_address_in	"010"
run 2
force	pc_in 			"000"
force	branch_type		"01"
force	PC_sel			"00"
force	rs_in	 		"01"
force	rt_in	 		"00"
force	target_address_in	"010"
run 2

force	pc_in 			"000"
force	branch_type		"10"
force	PC_sel			"00"
force	rs_in	 		"01"
force	rt_in	 		"01"
force	target_address_in	"010"
run 2
force	pc_in 			"000"
force	branch_type		"10"
force	PC_sel			"00"
force	rs_in	 		"01"
force	rt_in	 		"00"
force	target_address_in	"010"
run 2

force	pc_in 			"000"
force	branch_type		"11"
force	PC_sel			"00"
force	rs_in	 		"01"
force	rt_in	 		"01"
force	target_address_in	"010"
run 2
force	pc_in 			"000"
force	branch_type		"11"
force	PC_sel			"00"
force	rs_in	 		"11"
force	rt_in	 		"01"
force	target_address_in	"010"
run 2
