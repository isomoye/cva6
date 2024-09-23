module amo_buffer (
	clk_i,
	rst_ni,
	flush_i,
	valid_i,
	ready_o,
	amo_op_i,
	paddr_i,
	data_i,
	data_size_i,
	amo_req_o,
	amo_resp_i,
	amo_valid_commit_i,
	no_st_pending_i
);
	// Trace: core/amo_buffer.sv:18:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/amo_buffer.sv:20:5
	input wire clk_i;
	// Trace: core/amo_buffer.sv:21:5
	input wire rst_ni;
	// Trace: core/amo_buffer.sv:22:5
	input wire flush_i;
	// Trace: core/amo_buffer.sv:24:5
	input wire valid_i;
	// Trace: core/amo_buffer.sv:25:5
	output wire ready_o;
	// Trace: core/amo_buffer.sv:26:5
	// removed localparam type ariane_pkg_amo_t
	input wire [3:0] amo_op_i;
	// Trace: core/amo_buffer.sv:27:5
	input wire [CVA6Cfg[17038-:32] - 1:0] paddr_i;
	// Trace: core/amo_buffer.sv:28:5
	input wire [CVA6Cfg[17102-:32] - 1:0] data_i;
	// Trace: core/amo_buffer.sv:29:5
	input wire [1:0] data_size_i;
	// Trace: core/amo_buffer.sv:31:5
	// removed localparam type ariane_pkg_amo_req_t
	output wire [134:0] amo_req_o;
	// Trace: core/amo_buffer.sv:32:5
	// removed localparam type ariane_pkg_amo_resp_t
	input wire [64:0] amo_resp_i;
	// Trace: core/amo_buffer.sv:34:5
	input wire amo_valid_commit_i;
	// Trace: core/amo_buffer.sv:35:5
	input wire no_st_pending_i;
	// Trace: core/amo_buffer.sv:37:3
	wire flush_amo_buffer;
	// Trace: core/amo_buffer.sv:38:3
	wire amo_valid;
	// Trace: core/amo_buffer.sv:40:3
	// removed localparam type amo_op_t
	// Trace: core/amo_buffer.sv:47:3
	wire [((4 + CVA6Cfg[17038-:32]) + CVA6Cfg[17102-:32]) + 1:0] amo_data_in;
	wire [((4 + CVA6Cfg[17038-:32]) + CVA6Cfg[17102-:32]) + 1:0] amo_data_out;
	// Trace: core/amo_buffer.sv:50:3
	assign amo_req_o[134] = (no_st_pending_i & amo_valid_commit_i) & amo_valid;
	// Trace: core/amo_buffer.sv:51:3
	assign amo_req_o[133-:4] = amo_data_out[4 + (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1))-:((4 + (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1))) >= (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 2)) ? ((4 + (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1))) - (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 2))) + 1 : ((CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 2)) - (4 + (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1)))) + 1)];
	// Trace: core/amo_buffer.sv:52:3
	assign amo_req_o[129-:2] = amo_data_out[1-:2];
	// Trace: core/amo_buffer.sv:53:3
	assign amo_req_o[127-:64] = {{64 - CVA6Cfg[17038-:32] {1'b0}}, amo_data_out[CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1)-:((CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1)) >= (CVA6Cfg[17102-:32] + 2) ? ((CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1)) - (CVA6Cfg[17102-:32] + 2)) + 1 : ((CVA6Cfg[17102-:32] + 2) - (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1))) + 1)]};
	// Trace: core/amo_buffer.sv:54:3
	assign amo_req_o[63-:64] = {{64 - CVA6Cfg[17102-:32] {1'b0}}, amo_data_out[CVA6Cfg[17102-:32] + 1-:((CVA6Cfg[17102-:32] + 1) >= 2 ? CVA6Cfg[17102-:32] + 0 : 3 - (CVA6Cfg[17102-:32] + 1))]};
	// Trace: core/amo_buffer.sv:56:3
	assign amo_data_in[4 + (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1))-:((4 + (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1))) >= (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 2)) ? ((4 + (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1))) - (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 2))) + 1 : ((CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 2)) - (4 + (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1)))) + 1)] = amo_op_i;
	// Trace: core/amo_buffer.sv:57:3
	assign amo_data_in[CVA6Cfg[17102-:32] + 1-:((CVA6Cfg[17102-:32] + 1) >= 2 ? CVA6Cfg[17102-:32] + 0 : 3 - (CVA6Cfg[17102-:32] + 1))] = data_i;
	// Trace: core/amo_buffer.sv:58:3
	assign amo_data_in[CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1)-:((CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1)) >= (CVA6Cfg[17102-:32] + 2) ? ((CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1)) - (CVA6Cfg[17102-:32] + 2)) + 1 : ((CVA6Cfg[17102-:32] + 2) - (CVA6Cfg[17038-:32] + (CVA6Cfg[17102-:32] + 1))) + 1)] = paddr_i;
	// Trace: core/amo_buffer.sv:59:3
	assign amo_data_in[1-:2] = data_size_i;
	// Trace: core/amo_buffer.sv:63:3
	assign flush_amo_buffer = flush_i & !amo_valid_commit_i;
	// Trace: core/amo_buffer.sv:65:3
	cva6_fifo_v3_CA745_802D7 #(
		.dtype_CVA6Cfg(CVA6Cfg),
		.dtype_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.DEPTH(1),
		.FPGA_EN(CVA6Cfg[16876])
	) i_amo_fifo(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_amo_buffer),
		.testmode_i(1'b0),
		.full_o(amo_valid),
		.empty_o(ready_o),
		.usage_o(),
		.data_i(amo_data_in),
		.push_i(valid_i),
		.data_o(amo_data_out),
		.pop_i(amo_resp_i[64])
	);
endmodule
