module fifo_v2_264A2 (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	alm_full_o,
	alm_empty_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:17:15
	parameter [31:0] ALM_EMPTY_TH = 1;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:18:15
	parameter [31:0] ALM_FULL_TH = 1;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:19:20
	// removed localparam type dtype
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:21:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:23:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:24:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:25:5
	input wire flush_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:26:5
	input wire testmode_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:28:5
	output wire full_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:29:5
	output wire empty_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:30:5
	output wire alm_full_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:31:5
	output wire alm_empty_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:33:5
	input wire [31:0] data_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:34:5
	input wire push_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:36:5
	output wire [31:0] data_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:37:5
	input wire pop_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:40:5
	wire [ADDR_DEPTH - 1:0] usage;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:43:5
	generate
		if (DEPTH == 0) begin : genblk1
			// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:44:9
			assign alm_full_o = 1'b0;
			// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:45:9
			assign alm_empty_o = 1'b0;
		end
		else begin : genblk1
			// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:47:9
			assign alm_full_o = usage >= ALM_FULL_TH[ADDR_DEPTH - 1:0];
			// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:48:9
			assign alm_empty_o = usage <= ALM_EMPTY_TH[ADDR_DEPTH - 1:0];
		end
	endgenerate
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:51:5
	fifo_v3_4D453 #(
		.FALL_THROUGH(FALL_THROUGH),
		.DATA_WIDTH(DATA_WIDTH),
		.DEPTH(DEPTH)
	) i_fifo_v3(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i),
		.testmode_i(testmode_i),
		.full_o(full_o),
		.empty_o(empty_o),
		.usage_o(usage),
		.data_i(data_i),
		.push_i(push_i),
		.data_o(data_o),
		.pop_i(pop_i)
	);
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:72:9
endmodule
module fifo_v2_2D55D_D5824 (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	alm_full_o,
	alm_empty_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	// removed localparam type dtype_DATA_WIDTH_type
	parameter [31:0] dtype_DATA_WIDTH = 0;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:17:15
	parameter [31:0] ALM_EMPTY_TH = 1;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:18:15
	parameter [31:0] ALM_FULL_TH = 1;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:19:20
	// removed localparam type dtype
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:21:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:23:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:24:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:25:5
	input wire flush_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:26:5
	input wire testmode_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:28:5
	output wire full_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:29:5
	output wire empty_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:30:5
	output wire alm_full_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:31:5
	output wire alm_empty_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:33:5
	input wire [dtype_DATA_WIDTH - 1:0] data_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:34:5
	input wire push_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:36:5
	output wire [dtype_DATA_WIDTH - 1:0] data_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:37:5
	input wire pop_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:40:5
	wire [ADDR_DEPTH - 1:0] usage;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:43:5
	generate
		if (DEPTH == 0) begin : genblk1
			// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:44:9
			assign alm_full_o = 1'b0;
			// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:45:9
			assign alm_empty_o = 1'b0;
		end
		else begin : genblk1
			// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:47:9
			assign alm_full_o = usage >= ALM_FULL_TH[ADDR_DEPTH - 1:0];
			// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:48:9
			assign alm_empty_o = usage <= ALM_EMPTY_TH[ADDR_DEPTH - 1:0];
		end
	endgenerate
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:51:5
	fifo_v3_19420_E888C #(
		.dtype_dtype_DATA_WIDTH(dtype_DATA_WIDTH),
		.FALL_THROUGH(FALL_THROUGH),
		.DATA_WIDTH(DATA_WIDTH),
		.DEPTH(DEPTH)
	) i_fifo_v3(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i),
		.testmode_i(testmode_i),
		.full_o(full_o),
		.empty_o(empty_o),
		.usage_o(usage),
		.data_i(data_i),
		.push_i(push_i),
		.data_o(data_o),
		.pop_i(pop_i)
	);
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:72:9
endmodule
module fifo_v2_BC5B2 (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	alm_full_o,
	alm_empty_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:17:15
	parameter [31:0] ALM_EMPTY_TH = 1;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:18:15
	parameter [31:0] ALM_FULL_TH = 1;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:19:20
	// removed localparam type dtype
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:21:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:23:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:24:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:25:5
	input wire flush_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:26:5
	input wire testmode_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:28:5
	output wire full_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:29:5
	output wire empty_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:30:5
	output wire alm_full_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:31:5
	output wire alm_empty_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:33:5
	input wire [7:0] data_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:34:5
	input wire push_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:36:5
	output wire [7:0] data_o;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:37:5
	input wire pop_i;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:40:5
	wire [ADDR_DEPTH - 1:0] usage;
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:43:5
	generate
		if (DEPTH == 0) begin : genblk1
			// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:44:9
			assign alm_full_o = 1'b0;
			// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:45:9
			assign alm_empty_o = 1'b0;
		end
		else begin : genblk1
			// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:47:9
			assign alm_full_o = usage >= ALM_FULL_TH[ADDR_DEPTH - 1:0];
			// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:48:9
			assign alm_empty_o = usage <= ALM_EMPTY_TH[ADDR_DEPTH - 1:0];
		end
	endgenerate
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:51:5
	fifo_v3_B0153 #(
		.FALL_THROUGH(FALL_THROUGH),
		.DATA_WIDTH(DATA_WIDTH),
		.DEPTH(DEPTH)
	) i_fifo_v3(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i),
		.testmode_i(testmode_i),
		.full_o(full_o),
		.empty_o(empty_o),
		.usage_o(usage),
		.data_i(data_i),
		.push_i(push_i),
		.data_o(data_o),
		.pop_i(pop_i)
	);
	// Trace: vendor/pulp-platform/common_cells/src/deprecated/fifo_v2.sv:72:9
endmodule
