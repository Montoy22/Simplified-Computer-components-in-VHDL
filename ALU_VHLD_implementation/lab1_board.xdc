## LEDs
	#OUT	
	set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { output_out[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
	set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { output_out[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
	set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { output_out[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
	set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { output_out[3] }]; #IO_L8P_T1_D11_14 Sch=led[3]

	#overflow
	set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { overflow }]; #IO_L18P_T2_A12_D28_14 Sch=led[7]

	#zero
	set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { zero }]; #IO_L22P_T3_A05_D21_14 Sch=led[10]

##Input
	#x
	set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { x_in[0] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
	set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { x_in[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
	set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { x_in[2] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
	set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { x_in[3] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]
	
	#y
	set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { y_in[0] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
	set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { y_in[1] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
	set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { y_in[2] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
	set_property -dict { PACKAGE_PIN T8   IOSTANDARD LVCMOS33 } [get_ports { y_in[3] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]

	#func
	set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { func[1] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
	set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { func[0] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]

	#logic_func
	set_property -dict { PACKAGE_PIN H6   IOSTANDARD LVCMOS33 } [get_ports { logic_func[1] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
	set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { logic_func[0] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
	
	#add-sub
	set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { add_sub }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]

	#clock
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk]
#$set_property -dict { PACKAGE_PIN V10    IOSTANDARD LVCMOS33 } [get_ports { clk }];
