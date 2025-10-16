## LEDs
	#a_OUT	
	set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { out_a_out[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
	set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { out_a_out[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
	set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { out_a_out[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
	set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { out_a_out[3] }]; #IO_L8P_T1_D11_14 Sch=led[3]
	#b_out
	set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { out_b_out[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
	set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { out_b_out[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
	set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { out_b_out[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
	set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { out_b_out[3] }]; #IO_L8P_T1_D11_14 Sch=led[3]



##Input
	#din_in
	set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { din_in[0] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
	set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { din_in[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
	set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { din_in[2] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]
	set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { din_in[3] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]
 
	#read_b_in
	set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { read_b_in[0] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
	set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { read_b_in[1] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
	
	#read_a_in
	set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { read_a_in[0] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
	set_property -dict { PACKAGE_PIN T8   IOSTANDARD LVCMOS33 } [get_ports { read_a_in[1] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
	
	#write_address_in
	set_property -dict { PACKAGE_PIN U8   IOSTANDARD LVCMOS33 } [get_ports { write_address_in[0] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
	set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { write_address_in[1] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
	set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { write_address_in[2] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]#remove
	set_property -dict { PACKAGE_PIN H6   IOSTANDARD LVCMOS33 } [get_ports { write_address_in[3] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]#remove

		#reset
	set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
	
	#clk
	set_property -dict { PACKAGE_PIN V10    IOSTANDARD LVCMOS33 } [get_ports { clk }];
	set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk]


	#write
	set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { write }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]


	#clock
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk]
#$set_property -dict { PACKAGE_PIN V10    IOSTANDARD LVCMOS33 } [get_ports { clk }];
