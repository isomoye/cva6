module cluster_clock_and2 (
	clk0_i,
	clk1_i,
	clk_o
);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:12:3
	input wire clk0_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:13:3
	input wire clk1_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:14:3
	output wire clk_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:17:3
	tc_clk_and2 i_tc_clk_and2(
		.clk0_i(clk0_i),
		.clk1_i(clk1_i),
		.clk_o(clk_o)
	);
endmodule
module cluster_clock_buffer (
	clk_i,
	clk_o
);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:26:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:27:3
	output wire clk_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:30:3
	tc_clk_buffer i_tc_clk_buffer(
		.clk_i(clk_i),
		.clk_o(clk_o)
	);
endmodule
module cluster_clock_gating (
	clk_i,
	en_i,
	test_en_i,
	clk_o
);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:39:4
	input wire clk_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:40:4
	input wire en_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:41:4
	input wire test_en_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:42:4
	output wire clk_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:45:3
	tc_clk_gating i_tc_clk_gating(
		.clk_i(clk_i),
		.en_i(en_i),
		.test_en_i(test_en_i),
		.clk_o(clk_o)
	);
endmodule
module cluster_clock_inverter (
	clk_i,
	clk_o
);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:55:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:56:3
	output wire clk_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:59:3
	tc_clk_inverter i_tc_clk_inverter(
		.clk_i(clk_i),
		.clk_o(clk_o)
	);
endmodule
module cluster_clock_mux2 (
	clk0_i,
	clk1_i,
	clk_sel_i,
	clk_o
);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:67:3
	input wire clk0_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:68:3
	input wire clk1_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:69:3
	input wire clk_sel_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:70:3
	output wire clk_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:73:3
	tc_clk_mux2 i_tc_clk_mux2(
		.clk0_i(clk0_i),
		.clk1_i(clk1_i),
		.clk_sel_i(clk_sel_i),
		.clk_o(clk_o)
	);
endmodule
module cluster_clock_xor2 (
	clk0_i,
	clk1_i,
	clk_o
);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:83:3
	input wire clk0_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:84:3
	input wire clk1_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:85:3
	output wire clk_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/deprecated/cluster_clk_cells.sv:88:3
	tc_clk_xor2 i_tc_clk_xor2(
		.clk0_i(clk0_i),
		.clk1_i(clk1_i),
		.clk_o(clk_o)
	);
endmodule
