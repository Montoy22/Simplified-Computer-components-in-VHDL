## LEDs
	#next_pc_out
	set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { next_pc_out[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
	set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { next_pc_out[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
	set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { next_pc_out[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
	


##Input
	#rs
	set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { rs_in[0] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
	set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { rs_in[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
	#rt
	set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { rt_in[0] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
	set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { rt_in[1] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]
	#PC_in
	set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { pc_in[0] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]
	set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { pc_in[1] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
	set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { pc_in[2] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
	
	#target address in
	set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { target_address_in[0] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
	set_property -dict { PACKAGE_PIN T8   IOSTANDARD LVCMOS33 } [get_ports { target_address_in[1] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
	set_property -dict { PACKAGE_PIN U8   IOSTANDARD LVCMOS33 } [get_ports { target_address_in[2] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
	
	#branch type
	set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { branch_type[0] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
	set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { branch_type[1] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]#remove

	#pc_sel
	set_property -dict { PACKAGE_PIN H6   IOSTANDARD LVCMOS33 } [get_ports { PC_sel[0] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]#remove
	set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { PC_sel[1] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
	



