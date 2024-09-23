module rstgen_bypass (
	clk_i,
	rst_ni,
	rst_test_mode_ni,
	test_mode_i,
	rst_no,
	init_no
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:16:15
	parameter [31:0] NumRegs = 4;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:18:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:19:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:20:5
	input wire rst_test_mode_ni;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:21:5
	input wire test_mode_i;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:22:5
	output reg rst_no;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:23:5
	output reg init_no;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:27:5
	reg rst_n;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:29:5
	reg [NumRegs - 1:0] synch_regs_q;
	// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:31:5
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:32:9
		if (test_mode_i == 1'b0) begin
			// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:33:13
			rst_n = rst_ni;
			// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:34:13
			rst_no = synch_regs_q[NumRegs - 1];
			// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:35:13
			init_no = synch_regs_q[NumRegs - 1];
		end
		else begin
			// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:37:13
			rst_n = rst_test_mode_ni;
			// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:38:13
			rst_no = rst_test_mode_ni;
			// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:39:13
			init_no = 1'b1;
		end
	end
	// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:43:5
	always @(posedge clk_i or negedge rst_n)
		// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:44:9
		if (~rst_n)
			// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:45:13
			synch_regs_q <= 0;
		else
			// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:47:13
			synch_regs_q <= {synch_regs_q[NumRegs - 2:0], 1'b1};
	// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:52:5
	initial begin : p_assertions
		// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:53:9
		if (NumRegs < 1) begin
			// Trace: vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:53:26
			$display("Fatal [%0t] vendor/pulp-platform/common_cells/src/rstgen_bypass.sv:53:26 - rstgen_bypass.p_assertions.<unnamed_block>\n msg: ", $time, "At least one register is required.");
			$finish(1);
		end
	end
	initial _sv2v_0 = 0;
endmodule
