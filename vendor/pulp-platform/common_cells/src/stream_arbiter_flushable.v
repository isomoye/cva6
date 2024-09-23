module stream_arbiter_flushable_37F8F_875C7 (
	clk_i,
	rst_ni,
	flush_i,
	inp_data_i,
	inp_valid_i,
	inp_ready_o,
	oup_data_o,
	oup_valid_o,
	oup_ready_i
);
	// removed localparam type DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth_type
	// removed localparam type DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth_type
	// removed localparam type DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth = 0;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:17:25
	// removed localparam type DATA_T
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:18:15
	parameter integer N_INP = -1;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:19:25
	parameter ARBITER = "rr";
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:21:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:22:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:23:5
	input wire flush_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:25:5
	input wire [(N_INP * (((DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth + DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth) + 35) + DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth)) - 1:0] inp_data_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:26:5
	input wire [N_INP - 1:0] inp_valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:27:5
	output wire [N_INP - 1:0] inp_ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:29:5
	output wire [(((DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth + DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth) + 35) + DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth) - 1:0] oup_data_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:30:5
	output wire oup_valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:31:5
	input wire oup_ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:34:3
	generate
		if (ARBITER == "rr") begin : gen_rr_arb
			// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:35:5
			localparam [31:0] sv2v_uu_i_arbiter_NumIn = N_INP;
			localparam [31:0] sv2v_uu_i_arbiter_IdxWidth = (sv2v_uu_i_arbiter_NumIn > 32'd1 ? $unsigned($clog2(sv2v_uu_i_arbiter_NumIn)) : 32'd1);
			// removed localparam type sv2v_uu_i_arbiter_rr_i
			localparam [sv2v_uu_i_arbiter_IdxWidth - 1:0] sv2v_uu_i_arbiter_ext_rr_i_0 = 1'sb0;
			rr_arb_tree_FABBC_3CAE8 #(
				.DataType_DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth(DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth),
				.DataType_DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth(DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth),
				.DataType_DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth(DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth),
				.NumIn(N_INP),
				.ExtPrio(1'b0),
				.AxiVldRdy(1'b1),
				.LockIn(1'b1)
			) i_arbiter(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.flush_i(flush_i),
				.rr_i(sv2v_uu_i_arbiter_ext_rr_i_0),
				.req_i(inp_valid_i),
				.gnt_o(inp_ready_o),
				.data_i(inp_data_i),
				.gnt_i(oup_ready_i),
				.req_o(oup_valid_o),
				.data_o(oup_data_o),
				.idx_o()
			);
		end
		else if (ARBITER == "prio") begin : gen_prio_arb
			// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:56:5
			localparam [31:0] sv2v_uu_i_arbiter_NumIn = N_INP;
			localparam [31:0] sv2v_uu_i_arbiter_IdxWidth = (sv2v_uu_i_arbiter_NumIn > 32'd1 ? $unsigned($clog2(sv2v_uu_i_arbiter_NumIn)) : 32'd1);
			// removed localparam type sv2v_uu_i_arbiter_rr_i
			localparam [sv2v_uu_i_arbiter_IdxWidth - 1:0] sv2v_uu_i_arbiter_ext_rr_i_0 = 1'sb0;
			rr_arb_tree_FABBC_3CAE8 #(
				.DataType_DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth(DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth),
				.DataType_DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth(DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth),
				.DataType_DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth(DATA_T_DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth),
				.NumIn(N_INP),
				.ExtPrio(1'b1),
				.AxiVldRdy(1'b1),
				.LockIn(1'b1)
			) i_arbiter(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.flush_i(flush_i),
				.rr_i(sv2v_uu_i_arbiter_ext_rr_i_0),
				.req_i(inp_valid_i),
				.gnt_o(inp_ready_o),
				.data_i(inp_data_i),
				.gnt_i(oup_ready_i),
				.req_o(oup_valid_o),
				.data_o(oup_data_o),
				.idx_o()
			);
		end
		else begin : gen_arb_error
			// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:78:5
			initial begin
				$display("Fatal [elaboration] vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:78:5 - stream_arbiter_flushable.gen_arb_error\n msg: ", "Invalid value for parameter 'ARBITER'!");
				$finish(1);
			end
		end
	endgenerate
endmodule
module stream_arbiter_flushable_8C8FF_D36F8 (
	clk_i,
	rst_ni,
	flush_i,
	inp_data_i,
	inp_valid_i,
	inp_ready_o,
	oup_data_o,
	oup_valid_o,
	oup_ready_i
);
	// removed localparam type DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth_type
	// removed localparam type DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth_type
	// removed localparam type DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth = 0;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:17:25
	// removed localparam type DATA_T
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:18:15
	parameter integer N_INP = -1;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:19:25
	parameter ARBITER = "rr";
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:21:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:22:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:23:5
	input wire flush_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:25:5
	input wire [(N_INP * (((DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth + DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth) + 29) + DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth)) - 1:0] inp_data_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:26:5
	input wire [N_INP - 1:0] inp_valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:27:5
	output wire [N_INP - 1:0] inp_ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:29:5
	output wire [(((DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth + DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth) + 29) + DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth) - 1:0] oup_data_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:30:5
	output wire oup_valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:31:5
	input wire oup_ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:34:3
	generate
		if (ARBITER == "rr") begin : gen_rr_arb
			// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:35:5
			localparam [31:0] sv2v_uu_i_arbiter_NumIn = N_INP;
			localparam [31:0] sv2v_uu_i_arbiter_IdxWidth = (sv2v_uu_i_arbiter_NumIn > 32'd1 ? $unsigned($clog2(sv2v_uu_i_arbiter_NumIn)) : 32'd1);
			// removed localparam type sv2v_uu_i_arbiter_rr_i
			localparam [sv2v_uu_i_arbiter_IdxWidth - 1:0] sv2v_uu_i_arbiter_ext_rr_i_0 = 1'sb0;
			rr_arb_tree_35506_02E49 #(
				.DataType_DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth(DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth),
				.DataType_DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth(DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth),
				.DataType_DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth(DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth),
				.NumIn(N_INP),
				.ExtPrio(1'b0),
				.AxiVldRdy(1'b1),
				.LockIn(1'b1)
			) i_arbiter(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.flush_i(flush_i),
				.rr_i(sv2v_uu_i_arbiter_ext_rr_i_0),
				.req_i(inp_valid_i),
				.gnt_o(inp_ready_o),
				.data_i(inp_data_i),
				.gnt_i(oup_ready_i),
				.req_o(oup_valid_o),
				.data_o(oup_data_o),
				.idx_o()
			);
		end
		else if (ARBITER == "prio") begin : gen_prio_arb
			// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:56:5
			localparam [31:0] sv2v_uu_i_arbiter_NumIn = N_INP;
			localparam [31:0] sv2v_uu_i_arbiter_IdxWidth = (sv2v_uu_i_arbiter_NumIn > 32'd1 ? $unsigned($clog2(sv2v_uu_i_arbiter_NumIn)) : 32'd1);
			// removed localparam type sv2v_uu_i_arbiter_rr_i
			localparam [sv2v_uu_i_arbiter_IdxWidth - 1:0] sv2v_uu_i_arbiter_ext_rr_i_0 = 1'sb0;
			rr_arb_tree_35506_02E49 #(
				.DataType_DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth(DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth),
				.DataType_DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth(DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth),
				.DataType_DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth(DATA_T_DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth),
				.NumIn(N_INP),
				.ExtPrio(1'b1),
				.AxiVldRdy(1'b1),
				.LockIn(1'b1)
			) i_arbiter(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.flush_i(flush_i),
				.rr_i(sv2v_uu_i_arbiter_ext_rr_i_0),
				.req_i(inp_valid_i),
				.gnt_o(inp_ready_o),
				.data_i(inp_data_i),
				.gnt_i(oup_ready_i),
				.req_o(oup_valid_o),
				.data_o(oup_data_o),
				.idx_o()
			);
		end
		else begin : gen_arb_error
			// Trace: vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:78:5
			initial begin
				$display("Fatal [elaboration] vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv:78:5 - stream_arbiter_flushable.gen_arb_error\n msg: ", "Invalid value for parameter 'ARBITER'!");
				$finish(1);
			end
		end
	endgenerate
endmodule
