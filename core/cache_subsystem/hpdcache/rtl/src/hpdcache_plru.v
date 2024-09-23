module hpdcache_plru (
	clk_i,
	rst_ni,
	updt_i,
	updt_set_i,
	updt_way_i,
	repl_i,
	repl_set_i,
	repl_dir_valid_i,
	repl_updt_plru_i,
	victim_way_o
);
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:30:15
	parameter [31:0] SETS = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:31:15
	parameter [31:0] WAYS = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:33:21
	// removed localparam type set_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:34:21
	// removed localparam type way_vector_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:41:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:42:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:45:5
	input wire updt_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:46:5
	input wire [$clog2(SETS) - 1:0] updt_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:47:5
	input wire [WAYS - 1:0] updt_way_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:50:5
	input wire repl_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:51:5
	input wire [$clog2(SETS) - 1:0] repl_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:52:5
	input wire [WAYS - 1:0] repl_dir_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:53:5
	input wire repl_updt_plru_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:55:5
	output wire [WAYS - 1:0] victim_way_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:61:5
	reg [(SETS * WAYS) - 1:0] plru_q;
	reg [(SETS * WAYS) - 1:0] plru_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:62:5
	wire [WAYS - 1:0] updt_plru;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:63:5
	wire [WAYS - 1:0] repl_plru;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:64:5
	wire [WAYS - 1:0] used_victim_way;
	wire [WAYS - 1:0] unused_victim_way;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:69:5
	hpdcache_prio_1hot_encoder #(.N(WAYS)) used_victim_select_i(
		.val_i(~plru_q[repl_set_i * WAYS+:WAYS]),
		.val_o(used_victim_way)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:75:5
	hpdcache_prio_1hot_encoder #(.N(WAYS)) unused_victim_select_i(
		.val_i(~repl_dir_valid_i),
		.val_o(unused_victim_way)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:82:5
	assign victim_way_o = (|unused_victim_way ? unused_victim_way : used_victim_way);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:87:5
	assign updt_plru = plru_q[updt_set_i * WAYS+:WAYS] | updt_way_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:88:5
	assign repl_plru = plru_q[repl_set_i * WAYS+:WAYS] | victim_way_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:90:5
	always @(*) begin : plru_update_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:92:9
		plru_d = plru_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:94:9
		case (1'b1)
			repl_i:
				if (repl_updt_plru_i) begin
					begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:100:21
						if (&repl_plru)
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:101:25
							plru_d[repl_set_i * WAYS+:WAYS] = victim_way_o;
						else
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:103:25
							plru_d[repl_set_i * WAYS+:WAYS] = repl_plru;
					end
				end
			updt_i:
				if (&updt_plru)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:112:21
					plru_d[updt_set_i * WAYS+:WAYS] = updt_way_i;
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:114:21
					plru_d[updt_set_i * WAYS+:WAYS] = updt_plru;
			default:
				;
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:126:5
	always @(posedge clk_i or negedge rst_ni) begin : lru_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:128:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:129:12
			plru_q <= 1'sb0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:131:12
			if (updt_i || repl_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv:132:15
				plru_q <= plru_d;
	end
	initial _sv2v_0 = 0;
endmodule
