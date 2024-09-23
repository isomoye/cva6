module dmi_cdc (
	tck_i,
	trst_ni,
	jtag_dmi_req_i,
	jtag_dmi_ready_o,
	jtag_dmi_valid_i,
	jtag_dmi_resp_o,
	jtag_dmi_valid_o,
	jtag_dmi_ready_i,
	clk_i,
	rst_ni,
	core_dmi_req_o,
	core_dmi_valid_o,
	core_dmi_ready_i,
	core_dmi_resp_i,
	core_dmi_ready_o,
	core_dmi_valid_i
);
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:21:3
	input wire tck_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:22:3
	input wire trst_ni;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:24:3
	// removed localparam type dm_dtm_op_e
	// removed localparam type dm_dmi_req_t
	input wire [40:0] jtag_dmi_req_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:25:3
	output wire jtag_dmi_ready_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:26:3
	input wire jtag_dmi_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:28:3
	// removed localparam type dm_dmi_resp_t
	output wire [33:0] jtag_dmi_resp_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:29:3
	output wire jtag_dmi_valid_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:30:3
	input wire jtag_dmi_ready_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:33:3
	input wire clk_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:34:3
	input wire rst_ni;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:36:3
	output wire [40:0] core_dmi_req_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:37:3
	output wire core_dmi_valid_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:38:3
	input wire core_dmi_ready_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:40:3
	input wire [33:0] core_dmi_resp_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:41:3
	output wire core_dmi_ready_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:42:3
	input wire core_dmi_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:45:3
	cdc_2phase_1A17D i_cdc_req(
		.src_rst_ni(trst_ni),
		.src_clk_i(tck_i),
		.src_data_i(jtag_dmi_req_i),
		.src_valid_i(jtag_dmi_valid_i),
		.src_ready_o(jtag_dmi_ready_o),
		.dst_rst_ni(rst_ni),
		.dst_clk_i(clk_i),
		.dst_data_o(core_dmi_req_o),
		.dst_valid_o(core_dmi_valid_o),
		.dst_ready_i(core_dmi_ready_i)
	);
	// Trace: corev_apu/riscv-dbg/src/dmi_cdc.sv:59:3
	cdc_2phase_ED5E8 i_cdc_resp(
		.src_rst_ni(rst_ni),
		.src_clk_i(clk_i),
		.src_data_i(core_dmi_resp_i),
		.src_valid_i(core_dmi_valid_i),
		.src_ready_o(core_dmi_ready_o),
		.dst_rst_ni(trst_ni),
		.dst_clk_i(tck_i),
		.dst_data_o(jtag_dmi_resp_o),
		.dst_valid_o(jtag_dmi_valid_o),
		.dst_ready_i(jtag_dmi_ready_i)
	);
endmodule
