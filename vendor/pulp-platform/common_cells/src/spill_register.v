module spill_register_736F9 (
	clk_i,
	rst_ni,
	valid_i,
	ready_o,
	data_i,
	valid_o,
	ready_i,
	data_o
);
	// Trace: vendor/pulp-platform/common_cells/src/spill_register.sv:18:18
	// removed localparam type T
	// Trace: vendor/pulp-platform/common_cells/src/spill_register.sv:19:13
	parameter [0:0] Bypass = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register.sv:21:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register.sv:22:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register.sv:23:3
	input wire valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register.sv:24:3
	output wire ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register.sv:25:3
	input wire data_i;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register.sv:26:3
	output wire valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register.sv:27:3
	input wire ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register.sv:28:3
	output wire data_o;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register.sv:31:3
	spill_register_flushable_D072E #(.Bypass(Bypass)) spill_register_flushable_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.valid_i(valid_i),
		.flush_i(1'b0),
		.ready_o(ready_o),
		.data_i(data_i),
		.valid_o(valid_o),
		.ready_i(ready_i),
		.data_o(data_o)
	);
endmodule
