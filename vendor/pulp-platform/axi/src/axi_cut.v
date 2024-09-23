module axi_cut_883B1 (
	clk_i,
	rst_ni,
	slv_req_i,
	slv_resp_o,
	mst_req_o,
	mst_resp_i
);
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:22:13
	parameter [0:0] Bypass = 1'b0;
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:24:18
	// removed localparam type aw_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:25:19
	// removed localparam type w_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:26:19
	// removed localparam type b_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:27:18
	// removed localparam type ar_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:28:19
	// removed localparam type r_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:30:22
	// removed localparam type req_t
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:31:21
	// removed localparam type resp_t
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:33:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:34:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:36:3
	input wire slv_req_i;
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:37:3
	output wire slv_resp_o;
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:39:3
	output wire mst_req_o;
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:40:3
	input wire mst_resp_i;
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:44:3
	spill_register_736F9 #(.Bypass(Bypass)) i_reg_aw(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.valid_i(slv_req_i.aw_valid),
		.ready_o(slv_resp_o.aw_ready),
		.data_i(slv_req_i.aw),
		.valid_o(mst_req_o.aw_valid),
		.ready_i(mst_resp_i.aw_ready),
		.data_o(mst_req_o.aw)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:58:3
	spill_register_736F9 #(.Bypass(Bypass)) i_reg_w(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.valid_i(slv_req_i.w_valid),
		.ready_o(slv_resp_o.w_ready),
		.data_i(slv_req_i.w),
		.valid_o(mst_req_o.w_valid),
		.ready_i(mst_resp_i.w_ready),
		.data_o(mst_req_o.w)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:72:3
	spill_register_736F9 #(.Bypass(Bypass)) i_reg_b(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.valid_i(mst_resp_i.b_valid),
		.ready_o(mst_req_o.b_ready),
		.data_i(mst_resp_i.b),
		.valid_o(slv_resp_o.b_valid),
		.ready_i(slv_req_i.b_ready),
		.data_o(slv_resp_o.b)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:86:3
	spill_register_736F9 #(.Bypass(Bypass)) i_reg_ar(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.valid_i(slv_req_i.ar_valid),
		.ready_o(slv_resp_o.ar_ready),
		.data_i(slv_req_i.ar),
		.valid_o(mst_req_o.ar_valid),
		.ready_i(mst_resp_i.ar_ready),
		.data_o(mst_req_o.ar)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_cut.sv:100:3
	spill_register_736F9 #(.Bypass(Bypass)) i_reg_r(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.valid_i(mst_resp_i.r_valid),
		.ready_o(mst_req_o.r_ready),
		.data_i(mst_resp_i.r),
		.valid_o(slv_resp_o.r_valid),
		.ready_i(slv_req_i.r_ready),
		.data_o(slv_resp_o.r)
	);
endmodule
// removed module with interface ports: axi_cut_intf
// removed module with interface ports: axi_lite_cut_intf
