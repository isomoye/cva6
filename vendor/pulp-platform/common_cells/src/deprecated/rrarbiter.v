module rrarbiter (
	clk_i,
	rst_ni,
	flush_i,
	en_i,
	req_i,
	ack_o,
	vld_o,
	idx_o
);
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/rrarbiter.sv:25:13
	parameter [31:0] NUM_REQ = 64;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/rrarbiter.sv:26:13
	parameter [0:0] LOCK_IN = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/rrarbiter.sv:28:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/rrarbiter.sv:29:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/rrarbiter.sv:31:3
	input wire flush_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/rrarbiter.sv:32:3
	input wire en_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/rrarbiter.sv:33:3
	input wire [NUM_REQ - 1:0] req_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/rrarbiter.sv:35:3
	output wire [NUM_REQ - 1:0] ack_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/rrarbiter.sv:36:3
	output wire vld_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/rrarbiter.sv:37:3
	output wire [$clog2(NUM_REQ) - 1:0] idx_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/rrarbiter.sv:40:3
	wire req;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/rrarbiter.sv:41:3
	assign vld_o = |req_i & en_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/rrarbiter.sv:43:3
	localparam [31:0] sv2v_uu_i_rr_arb_tree_NumIn = NUM_REQ;
	localparam [31:0] sv2v_uu_i_rr_arb_tree_IdxWidth = (sv2v_uu_i_rr_arb_tree_NumIn > 32'd1 ? $unsigned($clog2(sv2v_uu_i_rr_arb_tree_NumIn)) : 32'd1);
	// removed localparam type sv2v_uu_i_rr_arb_tree_idx_t
	// removed localparam type sv2v_uu_i_rr_arb_tree_rr_i
	localparam [sv2v_uu_i_rr_arb_tree_IdxWidth - 1:0] sv2v_uu_i_rr_arb_tree_ext_rr_i_0 = 1'sb0;
	localparam [31:0] sv2v_uu_i_rr_arb_tree_DataWidth = 1;
	// removed localparam type sv2v_uu_i_rr_arb_tree_DataType
	// removed localparam type sv2v_uu_i_rr_arb_tree_data_i
	localparam [(sv2v_uu_i_rr_arb_tree_NumIn * sv2v_uu_i_rr_arb_tree_DataWidth) - 1:0] sv2v_uu_i_rr_arb_tree_ext_data_i_0 = 1'sb0;
	rr_arb_tree #(
		.NumIn(NUM_REQ),
		.DataWidth(1),
		.LockIn(LOCK_IN)
	) i_rr_arb_tree(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i),
		.rr_i(sv2v_uu_i_rr_arb_tree_ext_rr_i_0),
		.req_i(req_i),
		.gnt_o(ack_o),
		.data_i(sv2v_uu_i_rr_arb_tree_ext_data_i_0),
		.gnt_i(en_i & req),
		.req_o(req),
		.data_o(),
		.idx_o(idx_o)
	);
endmodule
