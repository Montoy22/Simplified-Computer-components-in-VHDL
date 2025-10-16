add wave *
force	add_sub 0
force	logic_func "00"
force	func "10"

force	x_in "0011"
force	y_in "0001"
run	2

force add_sub 1
force	x_in "1111"
force	y_in "0101"
run	2

force	x_in "1100"
force	y_in "0101"
run	2

force	x_in "1001"
force	y_in "0101"
run	2


force add_sub 0
force	x_in "1111"
force	y_in "1111"
run	2

force	x_in "1101"
force	y_in "1100"
run	2

force	x_in "0101"
force	y_in "0100"
run	2

force	x_in "1000"
force	y_in "1000"
run	2


force	add_sub 1
force	x_in "1111"
force	y_in "1100"
run	2

force	x_in "1101"
force	y_in "1100"
run	2

force	x_in "0011"
force	y_in "1101"
run	2

force	x_in "1111"
force	y_in "1111"
run	2

force	x_in "0111"
force	y_in "1111"
run	2

force	func "11"
force	x_in "1001"
force	y_in "1000"
run	2

force	logic_func "01"
force	x_in "1001"
force	y_in "1000"
run	2

force	logic_func "10"
force	x_in "1001"
force	y_in "1000"
run	2

force	logic_func "11"
force	x_in "1001"
force	y_in "1000"
run	2

force	func "01"
force	x_in "1001"
force	y_in "1000"
run	2

force	func "01"
force	x_in "1001"
force	y_in "1000"
run	2

force	func "00"
force	x_in "1001"
force	y_in "1000"
run	2

force	x_in "0011"
force	y_in "0001"
run	2

force	x_in "1111"
force	y_in "0101"
run	2

