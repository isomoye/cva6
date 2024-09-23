module rstgen (
	clk_i,
	rst_ni,
	test_mode_i,
	rst_no,
	init_no
);
	// Trace: vendor/pulp-platform/common_cells/src/rstgen.sv:14:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen.sv:15:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen.sv:16:5
	input wire test_mode_i;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen.sv:17:5
	output wire rst_no;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen.sv:18:5
	output wire init_no;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen.sv:21:5
	rstgen_bypass i_rstgen_bypass(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.rst_test_mode_ni(rst_ni),
		.test_mode_i(test_mode_i),
		.rst_no(rst_no),
		.init_no(init_no)
	);
endmodule
