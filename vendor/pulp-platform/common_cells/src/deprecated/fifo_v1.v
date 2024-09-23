module fifo (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	threshold_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:15:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:16:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:17:15
	parameter [31:0] DEPTH = 8;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:18:15
	parameter [31:0] THRESHOLD = 1;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:19:20
	// removed localparam type dtype
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:21:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:22:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:23:5
	input wire flush_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:24:5
	input wire testmode_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:26:5
	output wire full_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:27:5
	output wire empty_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:28:5
	output wire threshold_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:30:5
	input wire [DATA_WIDTH - 1:0] data_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:31:5
	input wire push_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:33:5
	output wire [DATA_WIDTH - 1:0] data_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:34:5
	input wire pop_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v1.sv:36:5
	fifo_v2_2D55D_D5824 #(
		.dtype_DATA_WIDTH(DATA_WIDTH),
		.FALL_THROUGH(FALL_THROUGH),
		.DATA_WIDTH(DATA_WIDTH),
		.DEPTH(DEPTH),
		.ALM_FULL_TH(THRESHOLD)
	) impl(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i),
		.testmode_i(testmode_i),
		.full_o(full_o),
		.empty_o(empty_o),
		.alm_full_o(threshold_o),
		.alm_empty_o(),
		.data_i(data_i),
		.push_i(push_i),
		.data_o(data_o),
		.pop_i(pop_i)
	);
endmodule
