module hpdcache_fxarb (
	clk_i,
	rst_ni,
	req_i,
	gnt_o,
	ready_i
);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:31:15
	parameter [31:0] N = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:37:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:38:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:39:5
	input wire [N - 1:0] req_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:40:5
	output wire [N - 1:0] gnt_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:41:5
	input wire ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:47:5
	reg [N - 1:0] gnt_q;
	wire [N - 1:0] gnt;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:48:5
	reg wait_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:53:5
	hpdcache_prio_1hot_encoder #(.N(N)) prio_msk_i(
		.val_i(req_i),
		.val_o(gnt)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:58:5
	assign gnt_o = (wait_q ? gnt_q : gnt);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:63:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:65:9
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:66:13
			wait_q <= 1'b0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:67:13
			gnt_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:69:13
			wait_q <= ~ready_i & (wait_q | (|req_i));
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:70:13
			if ((!ready_i && !wait_q) && |req_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:71:17
				gnt_q <= gnt;
		end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:80:5
	// removed an assertion item
	// gnt_at_most_one_requester : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	$onehot0(gnt_o)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv:81:35
	// 	$error("arbiter: granting more than one requester");
	// end
endmodule
