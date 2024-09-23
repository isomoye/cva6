module stream_register_11179 (
	clk_i,
	rst_ni,
	clr_i,
	testmode_i,
	valid_i,
	ready_o,
	data_i,
	valid_o,
	ready_i,
	data_o
);
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:15:20
	// removed localparam type T
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:17:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:18:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:19:5
	input wire clr_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:20:5
	input wire testmode_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:22:5
	input wire valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:23:5
	output wire ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:24:5
	input wire [7:0] data_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:26:5
	output wire valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:27:5
	input wire ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:28:5
	output wire [7:0] data_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:31:5
	wire fifo_empty;
	wire fifo_full;
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:34:5
	fifo_v2_BC5B2 #(
		.FALL_THROUGH(1'b0),
		.DATA_WIDTH(8),
		.DEPTH(1)
	) i_fifo(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(clr_i),
		.testmode_i(testmode_i),
		.full_o(fifo_full),
		.empty_o(fifo_empty),
		.alm_full_o(),
		.alm_empty_o(),
		.data_i(data_i),
		.push_i(valid_i & ~fifo_full),
		.data_o(data_o),
		.pop_i(ready_i & ~fifo_empty)
	);
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:54:5
	assign ready_o = ~fifo_full;
	// Trace: vendor/pulp-platform/common_cells/src/stream_register.sv:55:5
	assign valid_o = ~fifo_empty;
endmodule
