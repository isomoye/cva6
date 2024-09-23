module axi_delayer (
	clk_i,
	rst_ni,
	slv_req_i,
	slv_resp_o,
	mst_req_o,
	mst_resp_i
);
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:19:18
	// removed localparam type aw_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:20:19
	// removed localparam type w_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:21:19
	// removed localparam type b_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:22:18
	// removed localparam type ar_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:23:19
	// removed localparam type r_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:25:22
	// removed localparam type req_t
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:26:21
	// removed localparam type resp_t
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:28:13
	parameter [0:0] StallRandomInput = 0;
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:29:13
	parameter [0:0] StallRandomOutput = 0;
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:30:13
	parameter [31:0] FixedDelayInput = 1;
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:31:13
	parameter [31:0] FixedDelayOutput = 1;
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:33:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:34:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:36:3
	input wire slv_req_i;
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:37:3
	output wire slv_resp_o;
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:39:3
	output wire mst_req_o;
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:40:3
	input wire mst_resp_i;
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:43:3
	stream_delay_15388 #(
		.StallRandom(StallRandomInput),
		.FixedDelay(FixedDelayInput)
	) i_stream_delay_aw(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.payload_i(slv_req_i.aw),
		.ready_o(slv_resp_o.aw_ready),
		.valid_i(slv_req_i.aw_valid),
		.payload_o(mst_req_o.aw),
		.ready_i(mst_resp_i.aw_ready),
		.valid_o(mst_req_o.aw_valid)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:59:3
	stream_delay_15388 #(
		.StallRandom(StallRandomInput),
		.FixedDelay(FixedDelayInput)
	) i_stream_delay_ar(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.payload_i(slv_req_i.ar),
		.ready_o(slv_resp_o.ar_ready),
		.valid_i(slv_req_i.ar_valid),
		.payload_o(mst_req_o.ar),
		.ready_i(mst_resp_i.ar_ready),
		.valid_o(mst_req_o.ar_valid)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:75:3
	stream_delay_15388 #(
		.StallRandom(StallRandomInput),
		.FixedDelay(FixedDelayInput)
	) i_stream_delay_w(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.payload_i(slv_req_i.w),
		.ready_o(slv_resp_o.w_ready),
		.valid_i(slv_req_i.w_valid),
		.payload_o(mst_req_o.w),
		.ready_i(mst_resp_i.w_ready),
		.valid_o(mst_req_o.w_valid)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:91:3
	stream_delay_15388 #(
		.StallRandom(StallRandomOutput),
		.FixedDelay(FixedDelayOutput)
	) i_stream_delay_b(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.payload_i(mst_resp_i.b),
		.ready_o(mst_req_o.b_ready),
		.valid_i(mst_resp_i.b_valid),
		.payload_o(slv_resp_o.b),
		.ready_i(slv_req_i.b_ready),
		.valid_o(slv_resp_o.b_valid)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_delayer.sv:107:4
	stream_delay_15388 #(
		.StallRandom(StallRandomOutput),
		.FixedDelay(FixedDelayOutput)
	) i_stream_delay_r(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.payload_i(mst_resp_i.r),
		.ready_o(mst_req_o.r_ready),
		.valid_i(mst_resp_i.r_valid),
		.payload_o(slv_resp_o.r),
		.ready_i(slv_req_i.r_ready),
		.valid_o(slv_resp_o.r_valid)
	);
endmodule
// removed module with interface ports: axi_delayer_intf
