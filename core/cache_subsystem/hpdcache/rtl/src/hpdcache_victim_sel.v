module hpdcache_victim_sel_BB955_FDD36 (
	clk_i,
	rst_ni,
	updt_i,
	updt_set_i,
	updt_way_i,
	repl_i,
	repl_set_i,
	repl_dir_valid_i,
	repl_updt_i,
	victim_way_o
);
	// removed localparam type hpdcache_set_t_hpdcache_set_t_hpdcache_set_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_set_t_hpdcache_set_t_hpdcache_set_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_way_vector_t_hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_way_vector_t_hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// removed import hpdcache_pkg::*;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:31:15
	// removed localparam type hpdcache_pkg_hpdcache_victim_sel_policy_t
	// removed localparam type hpdcache_pkg_hpdcache_user_cfg_t
	// removed localparam type hpdcache_pkg_hpdcache_cfg_t
	parameter [1349:0] HPDcacheCfg = 1'sb0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:33:20
	// removed localparam type hpdcache_set_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:34:20
	// removed localparam type hpdcache_way_vector_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:41:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:42:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:45:5
	input wire updt_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:46:5
	input wire [hpdcache_set_t_hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] updt_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:47:5
	input wire [hpdcache_way_vector_t_hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] updt_way_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:50:5
	input wire repl_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:51:5
	input wire [hpdcache_set_t_hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] repl_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:52:5
	input wire [hpdcache_way_vector_t_hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] repl_dir_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:53:5
	input wire repl_updt_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:55:5
	output wire [hpdcache_way_vector_t_hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] victim_way_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:59:1
	generate
		if (HPDcacheCfg[1221-:32] == 1) begin : gen_single_way_victim_sel
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:60:5
			assign victim_way_o = 1'b1;
		end
		else if (HPDcacheCfg[1061] == 1'b0) begin : gen_random_victim_sel
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:63:5
			reg [hpdcache_way_vector_t_hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] random_victim_way;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:64:5
			wire [hpdcache_way_vector_t_hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] unused_victim_way;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:65:5
			wire [7:0] lfsr_val;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:66:5
			wire sel_random;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:68:5
			assign sel_random = ~(|unused_victim_way);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:70:5
			hpdcache_lfsr #(.WIDTH(8)) lfsr_i(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.shift_i(repl_i & sel_random),
				.val_o(lfsr_val)
			);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:79:5
			always @(*) begin : random_way_encoder_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:81:9
				random_victim_way = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:82:9
				begin : sv2v_autoblock_1
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:82:14
					reg signed [31:0] i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:82:14
					for (i = 0; i < HPDcacheCfg[1221-:32]; i = i + 1)
						begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:83:13
							random_victim_way[i] = i == (lfsr_val % HPDcacheCfg[1221-:32]);
						end
				end
			end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:87:5
			hpdcache_prio_1hot_encoder #(.N(HPDcacheCfg[1221-:32])) unused_victim_select_i(
				.val_i(~repl_dir_valid_i),
				.val_o(unused_victim_way)
			);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:94:5
			assign victim_way_o = (sel_random ? random_victim_way : unused_victim_way);
		end
		else if (HPDcacheCfg[1061] == 1'b1) begin : gen_plru_victim_sel
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:97:5
			hpdcache_plru #(
				.SETS(HPDcacheCfg[1253-:32]),
				.WAYS(HPDcacheCfg[1221-:32])
			) plru_i(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.updt_i(updt_i),
				.updt_set_i(updt_set_i),
				.updt_way_i(updt_way_i),
				.repl_i(repl_i),
				.repl_set_i(repl_set_i),
				.repl_dir_valid_i(repl_dir_valid_i),
				.repl_updt_plru_i(repl_updt_i),
				.victim_way_o(victim_way_o)
			);
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv:118:5
	initial begin : victim_sel_assert
		
	end
	initial _sv2v_0 = 0;
endmodule
