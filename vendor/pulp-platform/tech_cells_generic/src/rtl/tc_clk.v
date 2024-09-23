module tc_clk_and2 (
	clk0_i,
	clk1_i,
	clk_o
);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:12:3
	input wire clk0_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:13:3
	input wire clk1_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:14:3
	output wire clk_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:17:3
	assign clk_o = clk0_i & clk1_i;
endmodule
module tc_clk_buffer (
	clk_i,
	clk_o
);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:22:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:23:3
	output wire clk_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:26:3
	assign clk_o = clk_i;
endmodule
module tc_clk_gating (
	clk_i,
	en_i,
	test_en_i,
	clk_o
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:37:13
	parameter [0:0] IS_FUNCTIONAL = 1'b1;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:39:4
	input wire clk_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:40:4
	input wire en_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:41:4
	input wire test_en_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:42:4
	output wire clk_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:45:3
	reg clk_en;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:47:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:48:5
		if (clk_i == 1'b0)
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:48:24
			clk_en <= en_i | test_en_i;
	end
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:51:3
	assign clk_o = clk_i & clk_en;
	initial _sv2v_0 = 0;
endmodule
module tc_clk_inverter (
	clk_i,
	clk_o
);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:56:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:57:3
	output wire clk_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:60:3
	assign clk_o = ~clk_i;
endmodule
module tc_clk_mux2 (
	clk0_i,
	clk1_i,
	clk_sel_i,
	clk_o
);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:75:3
	input wire clk0_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:76:3
	input wire clk1_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:77:3
	input wire clk_sel_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:78:3
	output wire clk_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:81:3
	assign clk_o = (clk_sel_i ? clk1_i : clk0_i);
endmodule
module tc_clk_xor2 (
	clk0_i,
	clk1_i,
	clk_o
);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:86:3
	input wire clk0_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:87:3
	input wire clk1_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:88:3
	output wire clk_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:91:3
	assign clk_o = clk0_i ^ clk1_i;
endmodule
module tc_clk_or2 (
	clk0_i,
	clk1_i,
	clk_o
);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:96:3
	input wire clk0_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:97:3
	input wire clk1_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:98:3
	output wire clk_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:101:3
	assign clk_o = clk0_i | clk1_i;
endmodule
module tc_clk_delay (
	in_i,
	out_o
);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:107:13
	parameter [31:0] Delay = 300ps;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:109:3
	input wire in_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:110:3
	output wire out_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_clk.sv:115:3
	assign #(Delay) out_o = in_i;
endmodule
