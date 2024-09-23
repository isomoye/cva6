module axi_to_axi_lite (
	clk_i,
	rst_ni,
	test_i,
	slv_req_i,
	slv_resp_o,
	mst_req_o,
	mst_resp_i
);
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:20:13
	parameter [31:0] AxiAddrWidth = 32'd0;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:21:13
	parameter [31:0] AxiDataWidth = 32'd0;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:22:13
	parameter [31:0] AxiIdWidth = 32'd0;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:23:13
	parameter [31:0] AxiUserWidth = 32'd0;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:24:13
	parameter [31:0] AxiMaxWriteTxns = 32'd0;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:25:13
	parameter [31:0] AxiMaxReadTxns = 32'd0;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:26:13
	parameter [0:0] FallThrough = 1'b1;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:27:26
	// removed localparam type full_req_t
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:28:26
	// removed localparam type full_resp_t
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:29:26
	// removed localparam type lite_req_t
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:30:26
	// removed localparam type lite_resp_t
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:32:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:33:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:34:3
	input wire test_i;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:36:3
	input wire slv_req_i;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:37:3
	output wire slv_resp_o;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:39:3
	output wire mst_req_o;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:40:3
	input wire mst_resp_i;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:43:3
	wire filtered_req;
	wire splitted_req;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:44:3
	wire filtered_resp;
	wire splitted_resp;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:47:3
	axi_atop_filter_BF115 #(
		.AxiIdWidth(AxiIdWidth),
		.AxiMaxWriteTxns(AxiMaxWriteTxns)
	) i_axi_atop_filter(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.slv_req_i(slv_req_i),
		.slv_resp_o(slv_resp_o),
		.mst_req_o(filtered_req),
		.mst_resp_i(filtered_resp)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:62:3
	axi_burst_splitter_6D8A9 #(
		.MaxReadTxns(AxiMaxReadTxns),
		.MaxWriteTxns(AxiMaxWriteTxns),
		.AddrWidth(AxiAddrWidth),
		.DataWidth(AxiDataWidth),
		.IdWidth(AxiIdWidth),
		.UserWidth(AxiUserWidth)
	) i_axi_burst_splitter(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.slv_req_i(filtered_req),
		.slv_resp_o(filtered_resp),
		.mst_req_o(splitted_req),
		.mst_resp_i(splitted_resp)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:81:3
	axi_to_axi_lite_id_reflect_8F333 #(
		.AxiIdWidth(AxiIdWidth),
		.AxiMaxWriteTxns(AxiMaxWriteTxns),
		.AxiMaxReadTxns(AxiMaxReadTxns),
		.FallThrough(FallThrough)
	) i_axi_to_axi_lite_id_reflect(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.test_i(test_i),
		.slv_req_i(splitted_req),
		.slv_resp_o(splitted_resp),
		.mst_req_o(mst_req_o),
		.mst_resp_i(mst_resp_i)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:103:3
endmodule
module axi_to_axi_lite_id_reflect_8F333 (
	clk_i,
	rst_ni,
	test_i,
	slv_req_i,
	slv_resp_o,
	mst_req_o,
	mst_resp_i
);
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:118:13
	parameter [31:0] AxiIdWidth = 32'd0;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:119:13
	parameter [31:0] AxiMaxWriteTxns = 32'd0;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:120:13
	parameter [31:0] AxiMaxReadTxns = 32'd0;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:121:13
	parameter [0:0] FallThrough = 1'b1;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:122:26
	// removed localparam type full_req_t
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:123:26
	// removed localparam type full_resp_t
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:124:26
	// removed localparam type lite_req_t
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:125:26
	// removed localparam type lite_resp_t
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:127:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:128:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:129:3
	input wire test_i;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:131:3
	input wire slv_req_i;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:132:3
	output wire slv_resp_o;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:134:3
	output wire mst_req_o;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:135:3
	input wire mst_resp_i;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:137:3
	// removed localparam type id_t
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:140:3
	wire aw_full;
	wire aw_empty;
	wire aw_push;
	wire aw_pop;
	wire ar_full;
	wire ar_empty;
	wire ar_push;
	wire ar_pop;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:141:3
	wire [AxiIdWidth - 1:0] aw_reflect_id;
	wire [AxiIdWidth - 1:0] ar_reflect_id;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:143:3
	assign slv_resp_o = '{
		aw_ready: mst_resp_i.aw_ready & ~aw_full,
		w_ready: mst_resp_i.w_ready,
		b: '{
			id: aw_reflect_id,
			resp: mst_resp_i.b.resp,
			default: 1'sb0
		},
		b_valid: mst_resp_i.b_valid & ~aw_empty,
		ar_ready: mst_resp_i.ar_ready & ~ar_full,
		r: '{
			id: ar_reflect_id,
			data: mst_resp_i.r.data,
			resp: mst_resp_i.r.resp,
			last: 1'b1,
			default: 1'sb0
		},
		r_valid: mst_resp_i.r_valid & ~ar_empty,
		default: 1'sb0
	};
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:165:3
	assign aw_push = mst_req_o.aw_valid & slv_resp_o.aw_ready;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:166:3
	assign aw_pop = slv_resp_o.b_valid & mst_req_o.b_ready;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:167:3
	fifo_v3_F9D8C_B67E5 #(
		.dtype_AxiIdWidth(AxiIdWidth),
		.FALL_THROUGH(FallThrough),
		.DEPTH(AxiMaxWriteTxns)
	) i_aw_id_fifo(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.testmode_i(test_i),
		.full_o(aw_full),
		.empty_o(aw_empty),
		.usage_o(),
		.data_i(slv_req_i.aw.id),
		.push_i(aw_push),
		.data_o(aw_reflect_id),
		.pop_i(aw_pop)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:186:3
	assign ar_push = mst_req_o.ar_valid & slv_resp_o.ar_ready;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:187:3
	assign ar_pop = slv_resp_o.r_valid & mst_req_o.r_ready;
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:188:3
	fifo_v3_F9D8C_B67E5 #(
		.dtype_AxiIdWidth(AxiIdWidth),
		.FALL_THROUGH(FallThrough),
		.DEPTH(AxiMaxReadTxns)
	) i_ar_id_fifo(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.testmode_i(test_i),
		.full_o(ar_full),
		.empty_o(ar_empty),
		.usage_o(),
		.data_i(slv_req_i.ar.id),
		.push_i(ar_push),
		.data_o(ar_reflect_id),
		.pop_i(ar_pop)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:206:3
	assign mst_req_o = '{
		aw: '{
			addr: slv_req_i.aw.addr,
			prot: slv_req_i.aw.prot
		},
		aw_valid: slv_req_i.aw_valid & ~aw_full,
		w: '{
			data: slv_req_i.w.data,
			strb: slv_req_i.w.strb
		},
		w_valid: slv_req_i.w_valid,
		b_ready: slv_req_i.b_ready & ~aw_empty,
		ar: '{
			addr: slv_req_i.ar.addr,
			prot: slv_req_i.ar.prot
		},
		ar_valid: slv_req_i.ar_valid & ~ar_full,
		r_ready: slv_req_i.r_ready & ~ar_empty,
		default: 1'sb0
	};
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:230:3
	// removed an assertion item
	// aw_atop : assume property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(slv_req_i.aw_valid |-> slv_req_i.aw.atop == '0)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:232:5
	// 	$fatal(1, "Module does not support atomics. Value observed: %0b", slv_req_i.aw.atop);
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:233:3
	// removed an assertion item
	// aw_axi_len : assume property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(slv_req_i.aw_valid |-> slv_req_i.aw.len == '0)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:235:5
	// 	$fatal(1, "AW request length has to be zero. Value observed: %0b", slv_req_i.aw.len);
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:236:3
	// removed an assertion item
	// w_axi_last : assume property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(slv_req_i.w_valid |-> slv_req_i.w.last == 1'b1)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:238:5
	// 	$fatal(1, "W last signal has to be one. Value observed: %0b", slv_req_i.w.last);
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:239:3
	// removed an assertion item
	// ar_axi_len : assume property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(slv_req_i.ar_valid |-> slv_req_i.ar.len == '0)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_to_axi_lite.sv:241:5
	// 	$fatal(1, "AR request length has to be zero. Value observed: %0b", slv_req_i.ar.len);
	// end
endmodule
// removed module with interface ports: axi_to_axi_lite_intf
