module ariane (
	clk_i,
	rst_ni,
	boot_addr_i,
	hart_id_i,
	irq_i,
	ipi_i,
	time_irq_i,
	debug_req_i,
	rvfi_probes_o,
	noc_req_o,
	noc_resp_i
);
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: corev_apu/src/ariane.sv:18:13
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: corev_apu/src/ariane.sv:19:18
	// removed localparam type rvfi_probes_instr_t
	// Trace: corev_apu/src/ariane.sv:20:18
	// removed localparam type rvfi_probes_csr_t
	// Trace: corev_apu/src/ariane.sv:21:18
	// removed localparam type rvfi_probes_t
	// Trace: corev_apu/src/ariane.sv:26:19
	// removed localparam type readregflags_t
	// Trace: corev_apu/src/ariane.sv:27:19
	// removed localparam type writeregflags_t
	// Trace: corev_apu/src/ariane.sv:28:19
	// removed localparam type id_t
	// Trace: corev_apu/src/ariane.sv:29:19
	// removed localparam type hartid_t
	// Trace: corev_apu/src/ariane.sv:30:19
	// removed localparam type x_compressed_req_t
	// Trace: corev_apu/src/ariane.sv:31:19
	// removed localparam type x_compressed_resp_t
	// Trace: corev_apu/src/ariane.sv:32:19
	// removed localparam type x_issue_req_t
	// Trace: corev_apu/src/ariane.sv:33:19
	// removed localparam type x_issue_resp_t
	// Trace: corev_apu/src/ariane.sv:34:19
	// removed localparam type x_register_t
	// Trace: corev_apu/src/ariane.sv:35:19
	// removed localparam type x_commit_t
	// Trace: corev_apu/src/ariane.sv:36:19
	// removed localparam type x_result_t
	// Trace: corev_apu/src/ariane.sv:37:19
	// removed localparam type cvxif_req_t
	// Trace: corev_apu/src/ariane.sv:38:19
	// removed localparam type cvxif_resp_t
	// Trace: corev_apu/src/ariane.sv:40:13
	localparam cva6_config_pkg_CVA6ConfigAxiAddrWidth = 64;
	localparam ariane_axi_AddrWidth = cva6_config_pkg_CVA6ConfigAxiAddrWidth;
	parameter [31:0] AxiAddrWidth = ariane_axi_AddrWidth;
	// Trace: corev_apu/src/ariane.sv:41:13
	localparam cva6_config_pkg_CVA6ConfigAxiDataWidth = 64;
	localparam ariane_axi_DataWidth = cva6_config_pkg_CVA6ConfigAxiDataWidth;
	parameter [31:0] AxiDataWidth = ariane_axi_DataWidth;
	// Trace: corev_apu/src/ariane.sv:42:13
	localparam cva6_config_pkg_CVA6ConfigAxiIdWidth = 4;
	localparam ariane_axi_IdWidth = cva6_config_pkg_CVA6ConfigAxiIdWidth;
	parameter [31:0] AxiIdWidth = ariane_axi_IdWidth;
	// Trace: corev_apu/src/ariane.sv:43:18
	// removed localparam type ariane_axi_addr_t
	// removed localparam type ariane_axi_id_t
	localparam cva6_config_pkg_CVA6ConfigXlen = 64;
	localparam cva6_config_pkg_CVA6ConfigDataUserWidth = cva6_config_pkg_CVA6ConfigXlen;
	localparam ariane_axi_UserWidth = cva6_config_pkg_CVA6ConfigDataUserWidth;
	// removed localparam type ariane_axi_user_t
	// removed localparam type axi_pkg_burst_t
	// removed localparam type axi_pkg_cache_t
	// removed localparam type axi_pkg_len_t
	// removed localparam type axi_pkg_prot_t
	// removed localparam type axi_pkg_qos_t
	// removed localparam type axi_pkg_region_t
	// removed localparam type axi_pkg_size_t
	// removed localparam type ariane_axi_ar_chan_t
	// removed localparam type axi_ar_chan_t
	// Trace: corev_apu/src/ariane.sv:44:18
	// removed localparam type axi_pkg_atop_t
	// removed localparam type ariane_axi_aw_chan_t
	// removed localparam type axi_aw_chan_t
	// Trace: corev_apu/src/ariane.sv:45:18
	// removed localparam type ariane_axi_data_t
	localparam ariane_axi_StrbWidth = 8;
	// removed localparam type ariane_axi_strb_t
	// removed localparam type ariane_axi_w_chan_t
	// removed localparam type axi_w_chan_t
	// Trace: corev_apu/src/ariane.sv:46:18
	// removed localparam type ariane_axi_req_t
	// removed localparam type noc_req_t
	// Trace: corev_apu/src/ariane.sv:47:18
	// removed localparam type axi_pkg_resp_t
	// removed localparam type ariane_axi_b_chan_t
	// removed localparam type ariane_axi_r_chan_t
	// removed localparam type ariane_axi_resp_t
	// removed localparam type noc_resp_t
	// Trace: corev_apu/src/ariane.sv:49:3
	input wire clk_i;
	// Trace: corev_apu/src/ariane.sv:50:3
	input wire rst_ni;
	// Trace: corev_apu/src/ariane.sv:52:3
	input wire [CVA6Cfg[17070-:32] - 1:0] boot_addr_i;
	// Trace: corev_apu/src/ariane.sv:53:3
	input wire [CVA6Cfg[17102-:32] - 1:0] hart_id_i;
	// Trace: corev_apu/src/ariane.sv:56:3
	input wire [1:0] irq_i;
	// Trace: corev_apu/src/ariane.sv:57:3
	input wire ipi_i;
	// Trace: corev_apu/src/ariane.sv:59:3
	input wire time_irq_i;
	// Trace: corev_apu/src/ariane.sv:60:3
	input wire debug_req_i;
	// Trace: corev_apu/src/ariane.sv:63:3
	output wire [1:0] rvfi_probes_o;
	// Trace: corev_apu/src/ariane.sv:65:3
	output wire [469:0] noc_req_o;
	// Trace: corev_apu/src/ariane.sv:66:3
	input wire [209:0] noc_resp_i;
	// Trace: corev_apu/src/ariane.sv:69:3
	wire [(((((((17 + CVA6Cfg[127-:32]) + 1) + ((32 + CVA6Cfg[127-:32]) + CVA6Cfg[255-:32])) + 1) + (((CVA6Cfg[127-:32] + CVA6Cfg[255-:32]) + (CVA6Cfg[287-:32] * CVA6Cfg[223-:32])) + (CVA6Cfg[287-:32] + CVA6Cfg[95-:32]))) + 1) + (((CVA6Cfg[127-:32] + CVA6Cfg[255-:32]) + 0) >= 0 ? (CVA6Cfg[127-:32] + CVA6Cfg[255-:32]) + 1 : 1 - ((CVA6Cfg[127-:32] + CVA6Cfg[255-:32]) + 0))) + 0:0] cvxif_req;
	// Trace: corev_apu/src/ariane.sv:70:3
	reg [(((35 + ((1 + (CVA6Cfg[63-:32] >= 0 ? CVA6Cfg[63-:32] + 1 : 1 - CVA6Cfg[63-:32])) + (CVA6Cfg[287-:32] + CVA6Cfg[95-:32]))) + 2) + ((((CVA6Cfg[127-:32] + CVA6Cfg[255-:32]) + CVA6Cfg[191-:32]) + 5) + (CVA6Cfg[63-:32] >= 0 ? CVA6Cfg[63-:32] + 1 : 1 - CVA6Cfg[63-:32]))) - 1:0] cvxif_resp;
	// Trace: corev_apu/src/ariane.sv:72:3
	cva6_4956D_8351D #(
		.axi_ar_chan_t_ariane_axi_AddrWidth(ariane_axi_AddrWidth),
		.axi_ar_chan_t_ariane_axi_IdWidth(ariane_axi_IdWidth),
		.axi_ar_chan_t_ariane_axi_UserWidth(ariane_axi_UserWidth),
		.axi_aw_chan_t_ariane_axi_AddrWidth(ariane_axi_AddrWidth),
		.axi_aw_chan_t_ariane_axi_IdWidth(ariane_axi_IdWidth),
		.axi_aw_chan_t_ariane_axi_UserWidth(ariane_axi_UserWidth),
		.axi_w_chan_t_ariane_axi_DataWidth(ariane_axi_DataWidth),
		.axi_w_chan_t_ariane_axi_StrbWidth(ariane_axi_StrbWidth),
		.axi_w_chan_t_ariane_axi_UserWidth(ariane_axi_UserWidth),
		.cvxif_req_t_CVA6Cfg(CVA6Cfg),
		.cvxif_resp_t_CVA6Cfg(CVA6Cfg),
		.hartid_t_CVA6Cfg(CVA6Cfg),
		.id_t_CVA6Cfg(CVA6Cfg),
		.noc_req_t_ariane_axi_AddrWidth(ariane_axi_AddrWidth),
		.noc_req_t_ariane_axi_DataWidth(ariane_axi_DataWidth),
		.noc_req_t_ariane_axi_IdWidth(ariane_axi_IdWidth),
		.noc_req_t_ariane_axi_StrbWidth(ariane_axi_StrbWidth),
		.noc_req_t_ariane_axi_UserWidth(ariane_axi_UserWidth),
		.noc_resp_t_ariane_axi_DataWidth(ariane_axi_DataWidth),
		.noc_resp_t_ariane_axi_IdWidth(ariane_axi_IdWidth),
		.noc_resp_t_ariane_axi_UserWidth(ariane_axi_UserWidth),
		.readregflags_t_CVA6Cfg(CVA6Cfg),
		.writeregflags_t_CVA6Cfg(CVA6Cfg),
		.x_commit_t_CVA6Cfg(CVA6Cfg),
		.x_compressed_req_t_CVA6Cfg(CVA6Cfg),
		.x_issue_req_t_CVA6Cfg(CVA6Cfg),
		.x_issue_resp_t_CVA6Cfg(CVA6Cfg),
		.x_register_t_CVA6Cfg(CVA6Cfg),
		.x_result_t_CVA6Cfg(CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) i_cva6(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.boot_addr_i(boot_addr_i),
		.hart_id_i(hart_id_i),
		.irq_i(irq_i),
		.ipi_i(ipi_i),
		.time_irq_i(time_irq_i),
		.debug_req_i(debug_req_i),
		.rvfi_probes_o(rvfi_probes_o),
		.cvxif_req_o(cvxif_req),
		.cvxif_resp_i(cvxif_resp),
		.noc_req_o(noc_req_o),
		.noc_resp_i(noc_resp_i)
	);
	// Trace: corev_apu/src/ariane.sv:111:3
	generate
		if (CVA6Cfg[16539]) begin : gen_example_coprocessor
			// Trace: corev_apu/src/ariane.sv:112:5
			// rewrote reg-to-output bindings
			wire [((35 + ((1 + (CVA6Cfg[63-:32] >= 0 ? CVA6Cfg[63-:32] + 1 : 1 - CVA6Cfg[63-:32])) + (CVA6Cfg[287-:32] + CVA6Cfg[95-:32]))) + 2) + ((((CVA6Cfg[127-:32] + CVA6Cfg[255-:32]) + CVA6Cfg[191-:32]) + 5) + (CVA6Cfg[63-:32] >= 0 ? CVA6Cfg[63-:32] + 1 : 1 - CVA6Cfg[63-:32])):1] sv2v_tmp_i_cvxif_coprocessor_cvxif_resp_o;
			always @(*) cvxif_resp = sv2v_tmp_i_cvxif_coprocessor_cvxif_resp_o;
			cvxif_example_coprocessor_093E4_50DC6 #(
				.cvxif_req_t_CVA6Cfg(CVA6Cfg),
				.cvxif_resp_t_CVA6Cfg(CVA6Cfg),
				.hartid_t_CVA6Cfg(CVA6Cfg),
				.id_t_CVA6Cfg(CVA6Cfg),
				.readregflags_t_CVA6Cfg(CVA6Cfg),
				.writeregflags_t_CVA6Cfg(CVA6Cfg),
				.x_commit_t_CVA6Cfg(CVA6Cfg),
				.x_compressed_req_t_CVA6Cfg(CVA6Cfg),
				.x_issue_req_t_CVA6Cfg(CVA6Cfg),
				.x_issue_resp_t_CVA6Cfg(CVA6Cfg),
				.x_register_t_CVA6Cfg(CVA6Cfg),
				.x_result_t_CVA6Cfg(CVA6Cfg),
				.NrRgprPorts(CVA6Cfg[16433-:32]),
				.XLEN(CVA6Cfg[17102-:32])
			) i_cvxif_coprocessor(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.cvxif_req_i(cvxif_req),
				.cvxif_resp_o(sv2v_tmp_i_cvxif_coprocessor_cvxif_resp_o)
			);
		end
		else begin : genblk1
			// Trace: corev_apu/src/ariane.sv:135:5
			always @(*) begin
				if (_sv2v_0)
					;
				// Trace: corev_apu/src/ariane.sv:136:7
				cvxif_resp = 1'sb0;
				// Trace: corev_apu/src/ariane.sv:137:7
				cvxif_resp[35 + (((1 + (CVA6Cfg[63-:32] >= 0 ? CVA6Cfg[63-:32] + 1 : 1 - CVA6Cfg[63-:32])) + (CVA6Cfg[287-:32] + CVA6Cfg[95-:32])) + (((((CVA6Cfg[127-:32] + CVA6Cfg[255-:32]) + CVA6Cfg[191-:32]) + 5) + (CVA6Cfg[63-:32] >= 0 ? CVA6Cfg[63-:32] + 1 : 1 - CVA6Cfg[63-:32])) + 1))] = 1'b1;
				// Trace: corev_apu/src/ariane.sv:138:7
				cvxif_resp[1 + (((1 + (CVA6Cfg[63-:32] >= 0 ? CVA6Cfg[63-:32] + 1 : 1 - CVA6Cfg[63-:32])) + (CVA6Cfg[287-:32] + CVA6Cfg[95-:32])) + (((((CVA6Cfg[127-:32] + CVA6Cfg[255-:32]) + CVA6Cfg[191-:32]) + 5) + (CVA6Cfg[63-:32] >= 0 ? CVA6Cfg[63-:32] + 1 : 1 - CVA6Cfg[63-:32])) + 1))] = 1'b1;
				// Trace: corev_apu/src/ariane.sv:139:7
				cvxif_resp[((((CVA6Cfg[127-:32] + CVA6Cfg[255-:32]) + CVA6Cfg[191-:32]) + 5) + (CVA6Cfg[63-:32] >= 0 ? CVA6Cfg[63-:32] + 1 : 1 - CVA6Cfg[63-:32])) + 1] = 1'b1;
			end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
