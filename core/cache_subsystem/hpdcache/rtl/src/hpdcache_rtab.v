module hpdcache_rtab_6946D_40145 (
	clk_i,
	rst_ni,
	empty_o,
	full_o,
	check_i,
	check_nline_i,
	check_hit_o,
	alloc_i,
	alloc_and_link_i,
	alloc_req_i,
	alloc_mshr_hit_i,
	alloc_mshr_full_i,
	alloc_mshr_ready_i,
	alloc_wbuf_hit_i,
	alloc_wbuf_not_ready_i,
	pop_try_valid_o,
	pop_try_i,
	pop_try_req_o,
	pop_try_ptr_o,
	pop_commit_i,
	pop_commit_ptr_i,
	pop_rback_i,
	pop_rback_ptr_i,
	pop_rback_mshr_hit_i,
	pop_rback_mshr_full_i,
	pop_rback_mshr_ready_i,
	pop_rback_wbuf_hit_i,
	pop_rback_wbuf_not_ready_i,
	wbuf_addr_o,
	wbuf_is_read_o,
	wbuf_hit_open_i,
	wbuf_hit_pend_i,
	wbuf_hit_sent_i,
	wbuf_not_ready_i,
	miss_ready_i,
	refill_i,
	refill_nline_i,
	cfg_single_entry_i
);
	// removed localparam type hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_addr_t_hpdcache_req_addr_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_addr_t_hpdcache_req_addr_t_HPDcacheCfg = 0;
	// removed localparam type rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg_type
	parameter [1349:0] rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg = 0;
	// removed localparam type rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5_type
	parameter integer rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5 = 0;
	reg _sv2v_0;
	// removed import hpdcache_pkg::*;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:31:15
	// removed localparam type hpdcache_pkg_hpdcache_victim_sel_policy_t
	// removed localparam type hpdcache_pkg_hpdcache_user_cfg_t
	// removed localparam type hpdcache_pkg_hpdcache_cfg_t
	parameter [1349:0] HPDcacheCfg = 1'sb0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:33:20
	// removed localparam type hpdcache_nline_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:35:20
	// removed localparam type hpdcache_req_addr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:37:20
	// removed localparam type rtab_ptr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:38:20
	// removed localparam type rtab_entry_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:46:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:47:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:50:5
	output wire empty_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:51:5
	output wire full_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:56:5
	input wire check_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:57:5
	input wire [hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] check_nline_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:58:5
	output wire check_hit_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:62:5
	input wire alloc_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:63:5
	input wire alloc_and_link_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:64:5
	input wire [((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1:0] alloc_req_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:65:5
	input wire alloc_mshr_hit_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:66:5
	input wire alloc_mshr_full_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:67:5
	input wire alloc_mshr_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:68:5
	input wire alloc_wbuf_hit_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:69:5
	input wire alloc_wbuf_not_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:73:5
	output reg pop_try_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:74:5
	input wire pop_try_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:75:5
	output wire [((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1:0] pop_try_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:76:5
	output wire [rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5 - 1:0] pop_try_ptr_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:80:5
	input wire pop_commit_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:81:5
	input wire [rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5 - 1:0] pop_commit_ptr_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:85:5
	input wire pop_rback_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:86:5
	input wire [rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5 - 1:0] pop_rback_ptr_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:87:5
	input wire pop_rback_mshr_hit_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:88:5
	input wire pop_rback_mshr_full_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:89:5
	input wire pop_rback_mshr_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:90:5
	input wire pop_rback_wbuf_hit_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:91:5
	input wire pop_rback_wbuf_not_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:95:5
	output wire [hpdcache_req_addr_t_hpdcache_req_addr_t_HPDcacheCfg[1317-:32] - 1:0] wbuf_addr_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:96:5
	output wire wbuf_is_read_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:97:5
	input wire wbuf_hit_open_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:98:5
	input wire wbuf_hit_pend_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:99:5
	input wire wbuf_hit_sent_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:100:5
	input wire wbuf_not_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:103:5
	input wire miss_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:106:5
	input wire refill_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:107:5
	input wire [hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] refill_nline_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:110:5
	input wire cfg_single_entry_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:116:5
	localparam signed [31:0] N = $signed(HPDcacheCfg[671-:32]);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:118:5
	function automatic [rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5 - 1:0] sv2v_cast_1A8A8;
		input reg [rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5 - 1:0] inp;
		sv2v_cast_1A8A8 = inp;
	endfunction
	function automatic [rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5 - 1:0] rtab_bv_to_index;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:119:13
		input reg [N - 1:0] bv;
		reg [0:1] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:120:9
			begin : sv2v_autoblock_1
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:120:14
				reg signed [31:0] i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:120:14
				begin : sv2v_autoblock_2
					reg signed [31:0] _sv2v_value_on_break;
					for (i = 0; i < N; i = i + 1)
						if (_sv2v_jump < 2'b10) begin
							_sv2v_jump = 2'b00;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:121:13
							if (bv[i]) begin
								rtab_bv_to_index = sv2v_cast_1A8A8(i);
								_sv2v_jump = 2'b11;
							end
							_sv2v_value_on_break = i;
						end
					if (!(_sv2v_jump < 2'b10))
						i = _sv2v_value_on_break;
					if (_sv2v_jump != 2'b11)
						_sv2v_jump = 2'b00;
				end
			end
			if (_sv2v_jump == 2'b00) begin
				rtab_bv_to_index = 0;
				_sv2v_jump = 2'b11;
			end
		end
	endfunction
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:126:5
	function automatic [N - 1:0] rtab_index_to_bv;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:127:13
		input reg [rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5 - 1:0] index;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:128:9
		reg [N - 1:0] bv;
		begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:130:9
			begin : sv2v_autoblock_3
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:130:14
				reg signed [31:0] i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:130:14
				for (i = 0; i < N; i = i + 1)
					begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:131:13
						bv[i] = sv2v_cast_1A8A8(i) == index;
					end
			end
			rtab_index_to_bv = bv;
		end
	endfunction
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:136:5
	function automatic rtab_mshr_set_equal;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:137:13
		input reg [hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] x;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:138:13
		input reg [hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] y;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:139:9
		if (HPDcacheCfg[963-:32] > 1)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:140:13
			rtab_mshr_set_equal = x[0+:HPDcacheCfg[191-:32]] == y[0+:HPDcacheCfg[191-:32]];
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:142:13
			rtab_mshr_set_equal = 1'b1;
	endfunction
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:146:5
	function automatic [N - 1:0] rtab_next;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:146:48
		input reg [(N * rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5) - 1:0] next;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:146:73
		input reg [rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5 - 1:0] x;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:147:9
		rtab_next = rtab_index_to_bv(next[x * rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5+:rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5]);
	endfunction
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:150:5
	// removed localparam type rtab_pop_try_state_e
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:159:5
	reg [((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? (N * (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2)) - 1 : (N * (1 - (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 0)):((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 0 : ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1)] req_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:160:5
	reg [(N * rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5) - 1:0] next_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:162:5
	reg [31:0] pop_try_state_q;
	reg [31:0] pop_try_state_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:163:5
	reg [N - 1:0] pop_try_next_q;
	reg [N - 1:0] pop_try_next_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:165:5
	reg [N - 1:0] valid_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:166:5
	wire [N - 1:0] valid_set;
	wire [N - 1:0] valid_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:167:5
	wire [N - 1:0] alloc_valid_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:168:5
	wire [N - 1:0] pop_commit_valid_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:171:5
	reg [N - 1:0] head_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:172:5
	wire [N - 1:0] head_set;
	wire [N - 1:0] head_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:173:5
	wire [N - 1:0] alloc_head_set;
	wire [N - 1:0] alloc_head_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:174:5
	wire [N - 1:0] pop_try_head_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:175:5
	wire [N - 1:0] pop_commit_head_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:176:5
	wire [N - 1:0] pop_rback_head_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:179:5
	reg [N - 1:0] tail_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:180:5
	wire [N - 1:0] tail_set;
	wire [N - 1:0] tail_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:181:5
	wire [N - 1:0] alloc_tail_set;
	wire [N - 1:0] alloc_tail_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:184:5
	reg [N - 1:0] deps_mshr_hit_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:185:5
	wire [N - 1:0] deps_mshr_hit_set;
	wire [N - 1:0] deps_mshr_hit_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:186:5
	wire [N - 1:0] alloc_deps_mshr_hit_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:187:5
	wire [N - 1:0] pop_rback_deps_mshr_hit_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:190:5
	reg [N - 1:0] deps_mshr_full_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:191:5
	wire [N - 1:0] deps_mshr_full_set;
	wire [N - 1:0] deps_mshr_full_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:192:5
	wire [N - 1:0] alloc_deps_mshr_full_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:193:5
	wire [N - 1:0] pop_rback_deps_mshr_full_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:196:5
	reg [N - 1:0] deps_mshr_ready_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:197:5
	wire [N - 1:0] deps_mshr_ready_set;
	wire [N - 1:0] deps_mshr_ready_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:198:5
	wire [N - 1:0] alloc_deps_mshr_ready_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:199:5
	wire [N - 1:0] pop_rback_deps_mshr_ready_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:202:5
	reg [N - 1:0] deps_wbuf_hit_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:203:5
	wire [N - 1:0] deps_wbuf_hit_set;
	wire [N - 1:0] deps_wbuf_hit_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:204:5
	wire [N - 1:0] alloc_deps_wbuf_hit_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:205:5
	wire [N - 1:0] pop_rback_deps_wbuf_hit_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:208:5
	reg [N - 1:0] deps_wbuf_not_ready_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:209:5
	wire [N - 1:0] deps_wbuf_not_ready_set;
	wire [N - 1:0] deps_wbuf_not_ready_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:210:5
	wire [N - 1:0] alloc_deps_wbuf_not_ready_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:211:5
	wire [N - 1:0] pop_rback_deps_wbuf_not_ready_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:213:5
	wire [N - 1:0] nodeps;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:214:5
	wire [(N * hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32]) - 1:0] nline;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:215:5
	wire [(N * hpdcache_req_addr_t_hpdcache_req_addr_t_HPDcacheCfg[1317-:32]) - 1:0] addr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:216:5
	wire [N - 1:0] is_read;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:217:5
	wire [N - 1:0] check_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:218:5
	wire [N - 1:0] match_check_nline;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:219:5
	wire [N - 1:0] match_check_tail;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:220:5
	wire [N - 1:0] match_refill_nline;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:221:5
	wire [N - 1:0] match_refill_mshr_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:223:5
	wire [N - 1:0] free;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:224:5
	wire [N - 1:0] free_alloc;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:225:5
	wire alloc;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:227:5
	wire [N - 1:0] pop_rback_ptr_bv;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:228:5
	wire [N - 1:0] pop_try_bv;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:229:5
	wire [N - 1:0] ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:231:5
	genvar _gv_gen_i_5;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:237:5
	assign nodeps = ~((((deps_mshr_hit_q | deps_mshr_full_q) | deps_mshr_ready_q) | deps_wbuf_hit_q) | deps_wbuf_not_ready_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:243:5
	assign ready = (valid_q & head_q) & nodeps;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:245:5
	assign free = ~valid_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:248:5
	hpdcache_prio_1hot_encoder #(.N(N)) free_encoder_i(
		.val_i(free),
		.val_o(free_alloc)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:256:5
	assign empty_o = &(~valid_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:257:5
	assign full_o = &valid_q | (|valid_q & cfg_single_entry_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:262:5
	// removed localparam type hpdcache_pkg_hpdcache_req_op_t
	// removed localparam type hpdcache_pkg_hpdcache_req_size_t
	// removed localparam type _sv2v_keep_enum_for_params
	function automatic hpdcache_pkg_is_cmo_prefetch;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:254:13
		input reg [3:0] op;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:255:13
		input reg [2:0] sz;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:256:9
		case (op)
			4'hf:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:258:17
				hpdcache_pkg_is_cmo_prefetch = sz == 3'h5;
			default:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:261:17
				hpdcache_pkg_is_cmo_prefetch = 1'b0;
		endcase
	endfunction
	function automatic hpdcache_pkg_is_load;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:97:38
		input reg [3:0] op;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:98:9
		case (op)
			4'h0: hpdcache_pkg_is_load = 1'b1;
			default: hpdcache_pkg_is_load = 1'b0;
		endcase
	endfunction
	generate
		for (_gv_gen_i_5 = 0; _gv_gen_i_5 < N; _gv_gen_i_5 = _gv_gen_i_5 + 1) begin : gen_check
			localparam gen_i = _gv_gen_i_5;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:264:13
			assign addr[gen_i * hpdcache_req_addr_t_hpdcache_req_addr_t_HPDcacheCfg[1317-:32]+:hpdcache_req_addr_t_hpdcache_req_addr_t_HPDcacheCfg[1317-:32]] = {req_q[((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? (gen_i * ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1 : (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)) : (((gen_i * ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1 : (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))) + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1) >= 2 ? rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 0 : 3 - (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))) - 1)-:((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1) >= 2 ? rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 0 : 3 - (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))], req_q[((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? (gen_i * ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) : (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))))) : (((gen_i * ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) : (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))))) + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) >= ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) ? ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) - ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))))) + 1 : (((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) - (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))))) + 1)) - 1)-:((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) >= ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) ? ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) - ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))))) + 1 : (((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) - (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))))) + 1)]};
			assign nline[gen_i * hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32]+:hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32]] = addr[(gen_i * hpdcache_req_addr_t_hpdcache_req_addr_t_HPDcacheCfg[1317-:32]) + HPDcacheCfg[447-:32]+:HPDcacheCfg[383-:32]];
			assign match_check_nline[gen_i] = check_nline_i == nline[gen_i * hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32]+:hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32]];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:269:13
			assign is_read[gen_i] = hpdcache_pkg_is_load(req_q[((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? (gen_i * ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))) : (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) : (((gen_i * ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))) : (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) + ((4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))) >= ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))) ? ((4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))) - ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))) + 1 : (((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))) - (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) + 1)) - 1)-:((4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))) >= ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))) ? ((4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))) - ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))) + 1 : (((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))) - (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) + 1)]) | hpdcache_pkg_is_cmo_prefetch(req_q[((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? (gen_i * ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))) : (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) : (((gen_i * ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))) : (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) + ((4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))) >= ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))) ? ((4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))) - ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))) + 1 : (((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))) - (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) + 1)) - 1)-:((4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))) >= ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))) ? ((4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))) - ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))) + 1 : (((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))) - (4 + ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) + 1)], req_q[((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? (gen_i * ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))) : (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))) : (((gen_i * ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))) : (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))) + ((3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))) >= (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))) ? ((3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))) - (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))) + 1 : ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))) - (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))) + 1)) - 1)-:((3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))) >= (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))) ? ((3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))) - (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))) + 1 : ((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))) - (3 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))) + 1)]);
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:274:5
	assign check_hit = valid_q & match_check_nline;
	assign check_hit_o = |check_hit;
	assign match_check_tail = check_hit & tail_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:281:5
	assign alloc = alloc_i | alloc_and_link_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:284:5
	assign alloc_valid_set = free_alloc & {N {alloc}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:289:5
	assign alloc_head_set = free_alloc & {N {alloc_i}};
	assign alloc_tail_set = alloc_valid_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:295:5
	assign alloc_head_rst = free_alloc & {N {alloc_and_link_i}};
	assign alloc_tail_rst = match_check_tail & {N {alloc_and_link_i}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:299:5
	assign alloc_deps_mshr_hit_set = alloc_valid_set & {N {alloc_mshr_hit_i}};
	assign alloc_deps_mshr_full_set = alloc_valid_set & {N {alloc_mshr_full_i}};
	assign alloc_deps_mshr_ready_set = alloc_valid_set & {N {alloc_mshr_ready_i}};
	assign alloc_deps_wbuf_hit_set = alloc_valid_set & {N {alloc_wbuf_hit_i}};
	assign alloc_deps_wbuf_not_ready_set = alloc_valid_set & {N {alloc_wbuf_not_ready_i}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:311:5
	wire [N - 1:0] wbuf_rd_pending;
	wire [N - 1:0] wbuf_wr_pending;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:312:5
	wire [N - 1:0] wbuf_rd_gnt;
	wire [N - 1:0] wbuf_wr_gnt;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:313:5
	wire [1:0] wbuf_pending;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:314:5
	wire [1:0] wbuf_gnt;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:315:5
	wire wbuf_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:316:5
	wire [N - 1:0] wbuf_sel;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:318:5
	assign wbuf_rd_pending = (valid_q & head_q) & deps_wbuf_hit_q;
	assign wbuf_wr_pending = (valid_q & head_q) & deps_wbuf_not_ready_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:322:5
	hpdcache_rrarb #(.N(N)) wbuf_rd_pending_arb_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(wbuf_rd_pending),
		.gnt_o(wbuf_rd_gnt),
		.ready_i(wbuf_gnt[0] & wbuf_ready)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:332:5
	hpdcache_rrarb #(.N(N)) wbuf_wr_pending_arb_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(wbuf_wr_pending),
		.gnt_o(wbuf_wr_gnt),
		.ready_i(wbuf_gnt[1] & wbuf_ready)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:342:5
	assign wbuf_pending = {|wbuf_wr_gnt, |wbuf_rd_gnt};
	assign wbuf_ready = |(pop_try_bv & (wbuf_rd_gnt | wbuf_wr_gnt));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:345:5
	hpdcache_fxarb #(.N(2)) wbuf_pending_arb_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(wbuf_pending),
		.gnt_o(wbuf_gnt),
		.ready_i(wbuf_ready)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:355:5
	assign wbuf_sel = (wbuf_gnt[0] ? wbuf_rd_gnt : (wbuf_gnt[1] ? wbuf_wr_gnt : {N {1'sb0}}));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:358:5
	hpdcache_mux #(
		.NINPUT(N),
		.DATA_WIDTH(hpdcache_req_addr_t_hpdcache_req_addr_t_HPDcacheCfg[1317-:32]),
		.ONE_HOT_SEL(1'b1)
	) wbuf_pending_addr_mux_i(
		.data_i(addr),
		.sel_i(wbuf_sel),
		.data_o(wbuf_addr_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:368:5
	hpdcache_mux #(
		.NINPUT(N),
		.DATA_WIDTH(1),
		.ONE_HOT_SEL(1'b1)
	) wbuf_pending_is_read_mux_i(
		.data_i(is_read),
		.sel_i(wbuf_sel),
		.data_o(wbuf_is_read_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:379:5
	assign deps_wbuf_hit_rst = wbuf_sel & ~{N {(wbuf_hit_open_i | wbuf_hit_pend_i) | wbuf_hit_sent_i}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:381:5
	assign deps_wbuf_not_ready_rst = wbuf_sel & ~{N {wbuf_not_ready_i}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:387:5
	assign deps_mshr_ready_rst = {N {miss_ready_i}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:392:5
	generate
		for (_gv_gen_i_5 = 0; _gv_gen_i_5 < N; _gv_gen_i_5 = _gv_gen_i_5 + 1) begin : gen_match_refill
			localparam gen_i = _gv_gen_i_5;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:394:13
			assign match_refill_mshr_set[gen_i] = rtab_mshr_set_equal(refill_nline_i, nline[gen_i * hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32]+:hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32]]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:396:13
			assign match_refill_nline[gen_i] = refill_nline_i == nline[gen_i * hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32]+:hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32]];
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:401:5
	assign deps_mshr_full_rst = {N {refill_i}} & match_refill_mshr_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:402:5
	assign deps_mshr_hit_rst = {N {refill_i}} & match_refill_nline;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:408:5
	reg [N - 1:0] pop_sel;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:412:5
	wire [N - 1:0] pop_gnt;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:413:5
	reg pop_head;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:415:5
	hpdcache_rrarb #(.N(N)) pop_arb_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(ready),
		.gnt_o(pop_gnt),
		.ready_i(pop_head)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:425:5
	always @(*) begin : req_valid_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:427:9
		case (pop_try_state_q)
			32'd0:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:428:32
				pop_try_valid_o = |ready;
			32'd1:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:429:32
				pop_try_valid_o = 1'b1;
			32'd2:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:430:32
				pop_try_valid_o = 1'b1;
			default:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:431:32
				pop_try_valid_o = 1'b0;
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:435:5
	always @(*) begin : pop_entry_sel_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:437:9
		pop_try_state_d = pop_try_state_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:438:9
		pop_try_next_d = pop_try_next_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:439:9
		pop_head = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:440:9
		pop_sel = 1'sb0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:442:9
		case (pop_try_state_q)
			32'd0: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:446:17
				pop_sel = pop_gnt;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:447:17
				if (!pop_rback_i && pop_try_valid_o) begin
					begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:448:21
						if (pop_try_i) begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:452:25
							pop_head = 1'b1;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:453:25
							if ((pop_gnt & ~tail_q) != 0) begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:454:29
								pop_try_state_d = 32'd1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:455:29
								pop_try_next_d = rtab_next(next_q, pop_try_ptr_o);
							end
						end
					end
				end
			end
			32'd1: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:461:17
				pop_sel = pop_try_next_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:462:17
				if (pop_rback_i)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:463:21
					pop_try_state_d = 32'd0;
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:465:21
					if (pop_try_i) begin
						begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:469:25
							if ((pop_try_next_q & ~tail_q) != 0) begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:470:29
								pop_try_state_d = 32'd1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:471:29
								pop_try_next_d = rtab_next(next_q, pop_try_ptr_o);
							end
							else
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:473:29
								pop_try_state_d = 32'd0;
						end
					end
					else
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:478:25
						pop_try_state_d = 32'd2;
			end
			32'd2: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:485:17
				pop_sel = pop_try_next_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:486:17
				if (pop_try_i) begin
					begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:487:21
						if ((pop_try_next_q & ~tail_q) != 0) begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:488:25
							pop_try_state_d = 32'd1;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:489:25
							pop_try_next_d = rtab_next(next_q, pop_try_ptr_o);
						end
						else
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:491:25
							pop_try_state_d = 32'd0;
					end
				end
			end
			default:
				;
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:500:5
	assign pop_commit_head_set = 1'sb0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:502:5
	hpdcache_mux #(
		.NINPUT(N),
		.DATA_WIDTH(1 * ((((((((((0 + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32]) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2)),
		.ONE_HOT_SEL(1'b1)
	) pop_mux_i(
		.data_i(req_q),
		.sel_i(pop_sel),
		.data_o(pop_try_req_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:513:5
	assign pop_try_bv = pop_sel & {N {pop_try_i}};
	assign pop_try_head_rst = pop_try_bv;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:519:5
	assign pop_try_ptr_o = rtab_bv_to_index(pop_sel);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:526:5
	assign pop_commit_valid_rst = {N {pop_commit_i}} & rtab_index_to_bv(pop_commit_ptr_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:532:5
	assign pop_rback_ptr_bv = rtab_index_to_bv(pop_rback_ptr_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:534:5
	assign pop_rback_head_set = {N {pop_rback_i}} & pop_rback_ptr_bv;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:536:5
	assign pop_rback_deps_mshr_hit_set = ({N {pop_rback_i}} & pop_rback_ptr_bv) & {N {pop_rback_mshr_hit_i}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:538:5
	assign pop_rback_deps_mshr_full_set = ({N {pop_rback_i}} & pop_rback_ptr_bv) & {N {pop_rback_mshr_full_i}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:540:5
	assign pop_rback_deps_mshr_ready_set = ({N {pop_rback_i}} & pop_rback_ptr_bv) & {N {pop_rback_mshr_ready_i}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:542:5
	assign pop_rback_deps_wbuf_hit_set = ({N {pop_rback_i}} & pop_rback_ptr_bv) & {N {pop_rback_wbuf_hit_i}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:544:5
	assign pop_rback_deps_wbuf_not_ready_set = ({N {pop_rback_i}} & pop_rback_ptr_bv) & {N {pop_rback_wbuf_not_ready_i}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:551:5
	assign head_set = (alloc_head_set | pop_commit_head_set) | pop_rback_head_set;
	assign head_rst = alloc_head_rst | pop_try_head_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:554:5
	assign tail_set = alloc_tail_set;
	assign tail_rst = alloc_tail_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:557:5
	assign valid_set = alloc_valid_set;
	assign valid_rst = pop_commit_valid_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:560:5
	assign deps_mshr_hit_set = alloc_deps_mshr_hit_set | pop_rback_deps_mshr_hit_set;
	assign deps_mshr_full_set = alloc_deps_mshr_full_set | pop_rback_deps_mshr_full_set;
	assign deps_mshr_ready_set = alloc_deps_mshr_ready_set | pop_rback_deps_mshr_ready_set;
	assign deps_wbuf_hit_set = alloc_deps_wbuf_hit_set | pop_rback_deps_wbuf_hit_set;
	assign deps_wbuf_not_ready_set = alloc_deps_wbuf_not_ready_set | pop_rback_deps_wbuf_not_ready_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:567:5
	always @(posedge clk_i or negedge rst_ni) begin : rtab_valid_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:569:9
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:570:13
			valid_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:571:13
			head_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:572:13
			tail_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:573:13
			deps_mshr_hit_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:574:13
			deps_mshr_full_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:575:13
			deps_mshr_ready_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:576:13
			deps_wbuf_hit_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:577:13
			deps_wbuf_not_ready_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:578:13
			next_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:580:13
			valid_q <= (~valid_q & valid_set) | (valid_q & ~valid_rst);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:584:13
			head_q <= (~head_q & head_set) | (head_q & ~head_rst);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:587:13
			tail_q <= (~tail_q & tail_set) | (tail_q & ~tail_rst);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:591:13
			deps_mshr_hit_q <= (~deps_mshr_hit_q & deps_mshr_hit_set) | (deps_mshr_hit_q & ~deps_mshr_hit_rst);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:593:13
			deps_mshr_full_q <= (~deps_mshr_full_q & deps_mshr_full_set) | (deps_mshr_full_q & ~deps_mshr_full_rst);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:595:13
			deps_mshr_ready_q <= (~deps_mshr_ready_q & deps_mshr_ready_set) | (deps_mshr_ready_q & ~deps_mshr_ready_rst);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:597:13
			deps_wbuf_hit_q <= (~deps_wbuf_hit_q & deps_wbuf_hit_set) | (deps_wbuf_hit_q & ~deps_wbuf_hit_rst);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:599:13
			deps_wbuf_not_ready_q <= (~deps_wbuf_not_ready_q & deps_wbuf_not_ready_set) | (deps_wbuf_not_ready_q & ~deps_wbuf_not_ready_rst);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:603:13
			begin : sv2v_autoblock_4
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:603:18
				reg signed [31:0] i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:603:18
				for (i = 0; i < N; i = i + 1)
					begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:604:17
						if (alloc_and_link_i && match_check_tail[i])
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:605:21
							next_q[i * rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5+:rtab_ptr_t_hpdcache_rtab_i_sv2v_pfunc_EB1A5] <= rtab_bv_to_index(free_alloc);
					end
			end
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:611:5
	always @(posedge clk_i or negedge rst_ni) begin : pop_try_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:613:9
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:614:13
			pop_try_state_q <= 32'd0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:615:13
			pop_try_next_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:617:13
			pop_try_state_q <= pop_try_state_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:618:13
			pop_try_next_q <= pop_try_next_d;
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:622:5
	always @(posedge clk_i) begin : rtab_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:624:9
		begin : sv2v_autoblock_5
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:624:14
			reg signed [31:0] i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:624:14
			for (i = 0; i < N; i = i + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:626:13
					if (valid_set[i])
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:627:17
						req_q[((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 0 : ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) + (i * ((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1)))+:((((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + rtab_entry_t_hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))] <= alloc_req_i;
				end
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:636:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(check_i |-> $onehot0(match_check_tail))
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:638:21
	// 	$error("rtab: more than one entry matching");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:640:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(alloc_and_link_i |-> check_i & check_hit_o)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:642:21
	// 	$error("rtab: alloc and link shall be performed in case of check hit");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:644:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(alloc_and_link_i |-> {alloc_req_i.addr_tag, alloc_req_i.addr_offset[HPDcacheCfg.clOffsetWidth+:HPDcacheCfg.setWidth]} == check_nline_i)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:649:21
	// 	$error("rtab: nline for alloc and link shall match the one being checked");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:651:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(alloc_i |-> !alloc_and_link_i)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:653:21
	// 	$error("rtab: only one allocation per cycle is allowed");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:656:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(pop_try_i |-> ##(1) pop_commit_i | pop_rback_i)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:658:21
	// 	$error("rtab: a pop try shall be followed by a commit or rollback");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:661:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(pop_commit_i |-> valid_q[pop_commit_ptr_i])
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:663:21
	// 	$error("rtab: commiting an invalid entry");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:665:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(pop_rback_i |-> valid_q[pop_rback_ptr_i])
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:667:21
	// 	$error("rtab: rolling-back an invalid entry");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:669:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(pop_rback_i |-> !pop_try_i)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:671:21
	// 	$error("rtab: cache shall not accept a new request while rolling back");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:673:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(alloc |-> ~full_o)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:675:21
	// 	$error("rtab: trying to allocate while the table is full");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:677:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(alloc_and_link_i |-> ~cfg_single_entry_i)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv:679:21
	// 	$error("rtab: trying to link a request in single entry mode");
	// end
	initial _sv2v_0 = 0;
endmodule
