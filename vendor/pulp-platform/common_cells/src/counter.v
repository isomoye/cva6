module counter (
	clk_i,
	rst_ni,
	clear_i,
	en_i,
	load_i,
	down_i,
	d_i,
	q_o,
	overflow_o
);
	// Trace: vendor/pulp-platform/common_cells/src/counter.sv:15:15
	parameter [31:0] WIDTH = 4;
	// Trace: vendor/pulp-platform/common_cells/src/counter.sv:16:15
	parameter [0:0] STICKY_OVERFLOW = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/counter.sv:18:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/counter.sv:19:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/counter.sv:20:5
	input wire clear_i;
	// Trace: vendor/pulp-platform/common_cells/src/counter.sv:21:5
	input wire en_i;
	// Trace: vendor/pulp-platform/common_cells/src/counter.sv:22:5
	input wire load_i;
	// Trace: vendor/pulp-platform/common_cells/src/counter.sv:23:5
	input wire down_i;
	// Trace: vendor/pulp-platform/common_cells/src/counter.sv:24:5
	input wire [WIDTH - 1:0] d_i;
	// Trace: vendor/pulp-platform/common_cells/src/counter.sv:25:5
	output wire [WIDTH - 1:0] q_o;
	// Trace: vendor/pulp-platform/common_cells/src/counter.sv:26:5
	output wire overflow_o;
	// Trace: vendor/pulp-platform/common_cells/src/counter.sv:28:5
	delta_counter #(
		.WIDTH(WIDTH),
		.STICKY_OVERFLOW(STICKY_OVERFLOW)
	) i_counter(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.clear_i(clear_i),
		.en_i(en_i),
		.load_i(load_i),
		.down_i(down_i),
		.delta_i({{WIDTH - 1 {1'b0}}, 1'b1}),
		.d_i(d_i),
		.q_o(q_o),
		.overflow_o(overflow_o)
	);
endmodule
