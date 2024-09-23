module stream_arbiter_337DA_DE37F (
	clk_i,
	rst_ni,
	inp_data_i,
	inp_valid_i,
	inp_ready_o,
	oup_data_o,
	oup_valid_o,
	oup_ready_i
);
	// removed localparam type DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth_type
	// removed localparam type DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth_type
	// removed localparam type DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth = 0;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:17:25
	// removed localparam type DATA_T
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:18:15
	parameter integer N_INP = -1;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:19:25
	parameter ARBITER = "rr";
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:21:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:22:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:24:5
	input wire [(N_INP * (((DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth + DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth) + 35) + DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth)) - 1:0] inp_data_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:25:5
	input wire [N_INP - 1:0] inp_valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:26:5
	output wire [N_INP - 1:0] inp_ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:28:5
	output wire [(((DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth + DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth) + 35) + DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth) - 1:0] oup_data_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:29:5
	output wire oup_valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:30:5
	input wire oup_ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:33:3
	stream_arbiter_flushable_37F8F_875C7 #(
		.DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth(DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth),
		.DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth(DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth),
		.DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth(DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth),
		.N_INP(N_INP),
		.ARBITER(ARBITER)
	) i_arb(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.inp_data_i(inp_data_i),
		.inp_valid_i(inp_valid_i),
		.inp_ready_o(inp_ready_o),
		.oup_data_o(oup_data_o),
		.oup_valid_o(oup_valid_o),
		.oup_ready_i(oup_ready_i)
	);
endmodule
module stream_arbiter_7FBF2_D2A6A (
	clk_i,
	rst_ni,
	inp_data_i,
	inp_valid_i,
	inp_ready_o,
	oup_data_o,
	oup_valid_o,
	oup_ready_i
);
	// removed localparam type DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth_type
	// removed localparam type DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth_type
	// removed localparam type DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth = 0;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:17:25
	// removed localparam type DATA_T
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:18:15
	parameter integer N_INP = -1;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:19:25
	parameter ARBITER = "rr";
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:21:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:22:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:24:5
	input wire [(N_INP * (((DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth + DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth) + 29) + DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth)) - 1:0] inp_data_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:25:5
	input wire [N_INP - 1:0] inp_valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:26:5
	output wire [N_INP - 1:0] inp_ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:28:5
	output wire [(((DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth + DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth) + 29) + DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth) - 1:0] oup_data_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:29:5
	output wire oup_valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:30:5
	input wire oup_ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter.sv:33:3
	stream_arbiter_flushable_8C8FF_D36F8 #(
		.DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth(DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth),
		.DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth(DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth),
		.DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth(DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth),
		.N_INP(N_INP),
		.ARBITER(ARBITER)
	) i_arb(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.inp_data_i(inp_data_i),
		.inp_valid_i(inp_valid_i),
		.inp_ready_o(inp_ready_o),
		.oup_data_o(oup_data_o),
		.oup_valid_o(oup_valid_o),
		.oup_ready_i(oup_ready_i)
	);
endmodule
