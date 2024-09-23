module hpdcache_rrarb (
	clk_i,
	rst_ni,
	req_i,
	gnt_o,
	ready_i
);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:33:15
	parameter [31:0] N = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:39:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:40:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:41:5
	input wire [N - 1:0] req_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:42:5
	output wire [N - 1:0] gnt_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:43:5
	input wire ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:49:5
	reg [N - 1:0] gnt_q;
	wire [N - 1:0] gnt;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:50:5
	wire [N - 1:0] nxt;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:51:5
	reg wait_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:52:5
	wire [N - 1:0] mask;
	wire [N - 1:0] gnt_msk;
	wire [N - 1:0] gnt_nomsk;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:53:5
	wire pending;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:54:5
	genvar _gv_gen_i_1;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:60:5
	initial begin : initial_assertions
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:62:9
		begin : n_assertion
			
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:69:5
	generate
		if (N > 1) begin : gen_nxt_gt_1
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:71:13
			assign nxt = {gnt_q[N - 2:0], gnt_q[N - 1]};
		end
		else begin : gen_nxt_1
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:73:13
			assign nxt = gnt_q[0];
		end
	endgenerate
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		for (_gv_gen_i_1 = 0; _gv_gen_i_1 < sv2v_cast_32_signed(N); _gv_gen_i_1 = _gv_gen_i_1 + 1) begin : gen_mask
			localparam gen_i = _gv_gen_i_1;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:77:13
			assign mask[gen_i] = |nxt[gen_i:0];
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:84:5
	hpdcache_prio_1hot_encoder #(.N(N)) prio_msk_i(
		.val_i(req_i & mask),
		.val_o(gnt_msk)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:85:5
	hpdcache_prio_1hot_encoder #(.N(N)) prio_nomsk_i(
		.val_i(req_i),
		.val_o(gnt_nomsk)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:86:5
	assign gnt = (|gnt_msk ? gnt_msk : gnt_nomsk);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:91:5
	assign gnt_o = (wait_q ? gnt_q : gnt);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:96:5
	assign pending = |req_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:98:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:100:9
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:101:13
			wait_q <= 1'b0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:102:13
			gnt_q <= {1'b1, {N - 1 {1'b0}}};
		end
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:104:13
			wait_q <= ~ready_i & (wait_q | pending);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:105:13
			if (!wait_q && pending)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:106:17
				gnt_q <= gnt;
		end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:115:5
	// removed an assertion item
	// gnt_at_most_one_requester : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	$onehot0(gnt)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:116:33
	// 	$error("arbiter: granting more than one requester");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:117:5
	// removed an assertion item
	// gnt_q_exactly_one_requester : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	$onehot(gnt_q)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv:118:34
	// 	$error("arbiter: grant state is not one-hot");
	// end
endmodule
