module hpdcache_mshr_FE4BD_C5402 (
	clk_i,
	rst_ni,
	empty_o,
	full_o,
	check_i,
	check_set_i,
	check_tag_i,
	hit_o,
	alloc_i,
	alloc_cs_i,
	alloc_nline_i,
	alloc_req_id_i,
	alloc_src_id_i,
	alloc_word_i,
	alloc_need_rsp_i,
	alloc_is_prefetch_i,
	alloc_full_o,
	alloc_way_o,
	ack_i,
	ack_cs_i,
	ack_set_i,
	ack_way_i,
	ack_req_id_o,
	ack_src_id_o,
	ack_cache_set_o,
	ack_cache_tag_o,
	ack_word_o,
	ack_need_rsp_o,
	ack_is_prefetch_o
);
	// removed localparam type hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_set_t_hpdcache_set_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_set_t_hpdcache_set_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_word_t_hpdcache_word_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_word_t_hpdcache_word_t_HPDcacheCfg = 0;
	// removed localparam type mshr_set_t_HPDcacheCfg_type
	parameter [1349:0] mshr_set_t_HPDcacheCfg = 0;
	// removed localparam type mshr_way_t_HPDcacheCfg_type
	parameter [1349:0] mshr_way_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// removed import hpdcache_pkg::*;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:31:15
	// removed localparam type hpdcache_pkg_hpdcache_victim_sel_policy_t
	// removed localparam type hpdcache_pkg_hpdcache_user_cfg_t
	// removed localparam type hpdcache_pkg_hpdcache_cfg_t
	parameter [1349:0] HPDcacheCfg = 1'sb0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:32:20
	// removed localparam type hpdcache_nline_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:33:20
	// removed localparam type hpdcache_tag_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:34:20
	// removed localparam type hpdcache_set_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:35:20
	// removed localparam type hpdcache_word_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:37:20
	// removed localparam type hpdcache_req_tid_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:38:20
	// removed localparam type hpdcache_req_sid_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:40:20
	// removed localparam type mshr_way_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:41:20
	// removed localparam type mshr_set_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:49:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:50:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:53:5
	output wire empty_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:54:5
	output wire full_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:57:5
	input wire check_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:58:5
	input wire [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] check_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:59:5
	input wire [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] check_tag_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:60:5
	output reg hit_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:61:5
	input wire alloc_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:62:5
	input wire alloc_cs_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:63:5
	input wire [hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] alloc_nline_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:64:5
	input wire [hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] - 1:0] alloc_req_id_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:65:5
	input wire [hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] - 1:0] alloc_src_id_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:66:5
	input wire [hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] alloc_word_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:67:5
	input wire alloc_need_rsp_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:68:5
	input wire alloc_is_prefetch_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:69:5
	output reg alloc_full_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:70:5
	output reg [mshr_way_t_HPDcacheCfg[159-:32] - 1:0] alloc_way_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:73:5
	input wire ack_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:74:5
	input wire ack_cs_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:75:5
	input wire [mshr_set_t_HPDcacheCfg[191-:32] - 1:0] ack_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:76:5
	input wire [mshr_way_t_HPDcacheCfg[159-:32] - 1:0] ack_way_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:77:5
	output wire [hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] - 1:0] ack_req_id_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:78:5
	output wire [hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] - 1:0] ack_src_id_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:79:5
	output wire [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] ack_cache_set_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:80:5
	output wire [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] ack_cache_tag_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:81:5
	output wire [hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] ack_word_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:82:5
	output wire ack_need_rsp_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:83:5
	output wire ack_is_prefetch_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:89:5
	// removed localparam type mshr_entry_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:101:5
	localparam [31:0] HPDCACHE_MSHR_ENTRY_BITS = 1 * (((((0 + hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:103:5
	localparam [31:0] HPDCACHE_MSHR_RAM_ENTRY_BITS = (HPDcacheCfg[835] ? ((HPDCACHE_MSHR_ENTRY_BITS + 7) / 8) * 8 : HPDCACHE_MSHR_ENTRY_BITS);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:108:5
	// removed localparam type mshr_sram_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:113:5
	reg [(HPDcacheCfg[963-:32] * HPDcacheCfg[931-:32]) - 1:0] mshr_valid_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:114:5
	reg [((HPDcacheCfg[963-:32] * HPDcacheCfg[931-:32]) * hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32]) - 1:0] mshr_cache_set_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:116:5
	reg [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] check_cache_set_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:117:5
	wire [mshr_set_t_HPDcacheCfg[191-:32] - 1:0] check_set_st0;
	wire [mshr_set_t_HPDcacheCfg[191-:32] - 1:0] check_set_st1;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:118:5
	wire [mshr_set_t_HPDcacheCfg[191-:32] - 1:0] alloc_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:119:5
	reg [mshr_way_t_HPDcacheCfg[159-:32] - 1:0] ack_way_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:121:5
	reg [(HPDcacheCfg[963-:32] * HPDcacheCfg[931-:32]) - 1:0] mshr_valid_set;
	reg [(HPDcacheCfg[963-:32] * HPDcacheCfg[931-:32]) - 1:0] mshr_valid_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:122:5
	reg [(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (HPDcacheCfg[931-:32] * ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2)) - 1 : (HPDcacheCfg[931-:32] * (1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 0)):(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? 0 : (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1)] mshr_wentry;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:123:5
	reg [(HPDcacheCfg[931-:32] * HPDCACHE_MSHR_RAM_ENTRY_BITS) - 1:0] mshr_wdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:124:5
	reg [(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (HPDcacheCfg[931-:32] * ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2)) - 1 : (HPDcacheCfg[931-:32] * (1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 0)):(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? 0 : (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1)] mshr_rentry;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:125:5
	wire [(HPDcacheCfg[931-:32] * HPDCACHE_MSHR_RAM_ENTRY_BITS) - 1:0] mshr_rdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:127:5
	wire mshr_we;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:128:5
	wire mshr_cs;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:129:5
	wire [mshr_set_t_HPDcacheCfg[191-:32] - 1:0] mshr_addr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:130:5
	wire check;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:137:5
	assign check = check_i & ~alloc_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:139:5
	generate
		if (HPDcacheCfg[963-:32] > 1) begin : gen_alloc_mshr_sets_gt_1
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:140:7
			assign check_set_st0 = check_set_i[0+:HPDcacheCfg[191-:32]];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:141:7
			assign check_set_st1 = check_cache_set_q[0+:HPDcacheCfg[191-:32]];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:142:7
			assign alloc_set = alloc_nline_i[0+:HPDcacheCfg[191-:32]];
		end
		else begin : gen_alloc_mshr_sets_eq_1
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:144:7
			assign check_set_st0 = 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:145:7
			assign check_set_st1 = 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:146:7
			assign alloc_set = 1'sb0;
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:150:5
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	function automatic [mshr_way_t_HPDcacheCfg[159-:32] - 1:0] sv2v_cast_32B95;
		input reg [mshr_way_t_HPDcacheCfg[159-:32] - 1:0] inp;
		sv2v_cast_32B95 = inp;
	endfunction
	always @(*) begin : sv2v_autoblock_1
		reg [0:1] _sv2v_jump;
		_sv2v_jump = 2'b00;
		begin : sv2v_autoblock_2
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:152:9
			reg [mshr_way_t_HPDcacheCfg[159-:32] - 1:0] found_available_way;
			if (_sv2v_0)
				;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:154:9
			found_available_way = 0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:155:9
			begin : sv2v_autoblock_3
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:155:14
				reg [31:0] i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:155:14
				begin : sv2v_autoblock_4
					reg [31:0] _sv2v_value_on_break;
					for (i = 0; i < HPDcacheCfg[931-:32]; i = i + 1)
						if (_sv2v_jump < 2'b10) begin
							_sv2v_jump = 2'b00;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:156:13
							if (!mshr_valid_q[(i * HPDcacheCfg[963-:32]) + sv2v_cast_32_signed(alloc_set)]) begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:157:17
								found_available_way = sv2v_cast_32B95(i);
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:158:17
								_sv2v_jump = 2'b10;
							end
							_sv2v_value_on_break = i;
						end
					if (!(_sv2v_jump < 2'b10))
						i = _sv2v_value_on_break;
					if (_sv2v_jump != 2'b11)
						_sv2v_jump = 2'b00;
				end
			end
			if (_sv2v_jump == 2'b00)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:161:9
				alloc_way_o = found_available_way;
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:165:5
	always @(*) begin : sv2v_autoblock_5
		reg [0:1] _sv2v_jump;
		_sv2v_jump = 2'b00;
		begin : sv2v_autoblock_6
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:167:9
			reg found_available;
			if (_sv2v_0)
				;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:169:9
			found_available = 1'b0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:170:9
			begin : sv2v_autoblock_7
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:170:14
				reg [31:0] i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:170:14
				begin : sv2v_autoblock_8
					reg [31:0] _sv2v_value_on_break;
					for (i = 0; i < HPDcacheCfg[931-:32]; i = i + 1)
						if (_sv2v_jump < 2'b10) begin
							_sv2v_jump = 2'b00;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:171:13
							if (!mshr_valid_q[(i * HPDcacheCfg[963-:32]) + sv2v_cast_32_signed(check_set_st1)]) begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:172:17
								found_available = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:173:17
								_sv2v_jump = 2'b10;
							end
							_sv2v_value_on_break = i;
						end
					if (!(_sv2v_jump < 2'b10))
						i = _sv2v_value_on_break;
					if (_sv2v_jump != 2'b11)
						_sv2v_jump = 2'b00;
				end
			end
			if (_sv2v_jump == 2'b00)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:176:9
				alloc_full_o = ~found_available;
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:180:5
	assign mshr_we = alloc_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:183:5
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:185:9
		begin : sv2v_autoblock_9
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:185:14
			reg [31:0] i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:185:14
			for (i = 0; i < HPDcacheCfg[931-:32]; i = i + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:186:13
					mshr_wentry[(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (i * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))))) : (((i * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))))) + ((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) >= (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) ? ((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)))) + 1 : ((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) - (hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))))) + 1)) - 1)-:((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) >= (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) ? ((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)))) + 1 : ((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) - (hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))))) + 1)] = alloc_nline_i[HPDcacheCfg[415-:32]+:HPDcacheCfg[351-:32]];
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:187:13
					mshr_wentry[(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (i * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) : (((i * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))))) + ((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) >= (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)) ? ((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) - (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) + 1 : ((hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) + 1)) - 1)-:((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) >= (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)) ? ((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) - (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) + 1 : ((hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) + 1)] = alloc_req_id_i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:188:13
					mshr_wentry[(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (i * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) : (((i * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) + ((hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) >= (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2) ? ((hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) - (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)) + 1 : ((hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2) - (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) + 1)) - 1)-:((hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) >= (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2) ? ((hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) - (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)) + 1 : ((hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2) - (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) + 1)] = alloc_src_id_i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:189:13
					mshr_wentry[(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (i * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1 : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) : (((i * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1 : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) + ((hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1) >= 2 ? hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 0 : 3 - (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) - 1)-:((hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1) >= 2 ? hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 0 : 3 - (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))] = alloc_word_i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:190:13
					mshr_wentry[(i * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? 1 : (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 0)] = alloc_need_rsp_i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:191:13
					mshr_wentry[(i * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? 0 : (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1)] = alloc_is_prefetch_i;
				end
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:198:5
	// removed localparam type hpdcache_pkg_hpdcache_uint32
	// removed localparam type hpdcache_pkg_hpdcache_uint
	wire [31:0] mshr_alloc_slot;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:199:5
	wire [31:0] mshr_ack_slot;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:201:5
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	generate
		if ((HPDcacheCfg[963-:32] > 1) && (HPDcacheCfg[931-:32] > 1)) begin : gen_mshr_set_associative
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:203:9
			assign mshr_alloc_slot = sv2v_cast_32({alloc_way_o, alloc_set});
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:204:9
			assign mshr_ack_slot = sv2v_cast_32({ack_way_i, ack_set_i});
		end
		else if (HPDcacheCfg[963-:32] > 1) begin : gen_mshr_direct_mapped
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:206:9
			assign mshr_alloc_slot = sv2v_cast_32(alloc_set);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:207:9
			assign mshr_ack_slot = sv2v_cast_32(ack_set_i);
		end
		else if (HPDcacheCfg[931-:32] > 1) begin : gen_mshr_fully_associative
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:209:9
			assign mshr_alloc_slot = sv2v_cast_32(alloc_way_o);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:210:9
			assign mshr_ack_slot = sv2v_cast_32(ack_way_i);
		end
		else begin : gen_mshr_single_entry
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:212:9
			assign mshr_alloc_slot = 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:213:9
			assign mshr_ack_slot = 1'sb0;
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:216:5
	assign mshr_cs = (check_i | alloc_cs_i) | ack_cs_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:217:5
	assign mshr_addr = (ack_i ? ack_set_i : (alloc_i ? alloc_set : check_set_st0));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:219:5
	always @(*) begin : mshr_valid_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:221:9
		begin : sv2v_autoblock_10
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:221:14
			reg [31:0] i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:221:14
			for (i = 0; i < (HPDcacheCfg[963-:32] * HPDcacheCfg[931-:32]); i = i + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:222:13
					mshr_valid_rst[i] = (i == mshr_ack_slot ? ack_i : 1'b0);
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:223:13
					mshr_valid_set[i] = (i == mshr_alloc_slot ? alloc_i : 1'b0);
				end
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:230:5
	assign ack_cache_set_o = mshr_cache_set_q[mshr_ack_slot * hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32]+:hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:231:5
	assign ack_cache_tag_o = mshr_rentry[(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (ack_way_q * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))))) : (((ack_way_q * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))))) + ((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) >= (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) ? ((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)))) + 1 : ((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) - (hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))))) + 1)) - 1)-:((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) >= (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) ? ((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)))) + 1 : ((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) - (hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))))) + 1)];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:232:5
	assign ack_req_id_o = mshr_rentry[(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (ack_way_q * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) : (((ack_way_q * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))))) + ((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) >= (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)) ? ((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) - (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) + 1 : ((hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) + 1)) - 1)-:((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) >= (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)) ? ((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) - (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) + 1 : ((hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) + 1)];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:233:5
	assign ack_src_id_o = mshr_rentry[(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (ack_way_q * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) : (((ack_way_q * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) + ((hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) >= (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2) ? ((hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) - (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)) + 1 : ((hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2) - (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) + 1)) - 1)-:((hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) >= (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2) ? ((hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) - (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)) + 1 : ((hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2) - (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) + 1)];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:234:5
	assign ack_word_o = mshr_rentry[(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (ack_way_q * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1 : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)) : (((ack_way_q * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1 : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) + ((hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1) >= 2 ? hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 0 : 3 - (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) - 1)-:((hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1) >= 2 ? hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 0 : 3 - (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:235:5
	assign ack_need_rsp_o = mshr_rentry[(ack_way_q * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? 1 : (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 0)];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:236:5
	assign ack_is_prefetch_o = mshr_rentry[(ack_way_q * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? 0 : (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1)];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:241:5
	assign empty_o = ~|mshr_valid_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:242:5
	assign full_o = &mshr_valid_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:244:5
	always @(*) begin : hit_comb
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:246:9
		reg [HPDcacheCfg[931-:32] - 1:0] v_hit_way;
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:248:9
		begin : sv2v_autoblock_11
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:248:14
			reg [31:0] w;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:248:14
			for (w = 0; w < HPDcacheCfg[931-:32]; w = w + 1)
				begin : sv2v_autoblock_12
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:249:13
					reg v_valid;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:250:13
					reg v_match_set;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:251:13
					reg v_match_tag;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:252:13
					v_valid = mshr_valid_q[(w * HPDcacheCfg[963-:32]) + sv2v_cast_32_signed(check_set_st1)];
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:253:13
					v_match_set = mshr_cache_set_q[((w * HPDcacheCfg[963-:32]) + sv2v_cast_32_signed(check_set_st1)) * hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32]+:hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32]] == check_cache_set_q;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:255:13
					v_match_tag = mshr_rentry[(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (w * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))))) : (((w * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))) + (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))) : ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) - (hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))))) + ((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) >= (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) ? ((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)))) + 1 : ((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) - (hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))))) + 1)) - 1)-:((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) >= (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) ? ((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1)))) - (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2)))) + 1 : ((hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 2))) - (hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + (hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] + (hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] + (hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] + 1))))) + 1)] == check_tag_i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:256:13
					v_hit_way[w] = (v_valid && v_match_tag) && v_match_set;
				end
		end
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:259:9
		hit_o = |v_hit_way;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:265:5
	always @(posedge clk_i or negedge rst_ni) begin : mshr_ff_set
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:267:9
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:268:13
			mshr_valid_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:269:13
			ack_way_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:270:13
			check_cache_set_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:272:13
			mshr_valid_q <= (~mshr_valid_q & mshr_valid_set) | (mshr_valid_q & ~mshr_valid_rst);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:273:13
			if (ack_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:273:24
				ack_way_q <= ack_way_i;
			if (check)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:274:24
				check_cache_set_q <= check_set_i;
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:281:5
	generate
		if (HPDcacheCfg[835]) begin : gen_mshr_wbyteenable
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:282:9
			// removed localparam type mshr_sram_wbyteenable_t
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:283:9
			reg [(HPDcacheCfg[931-:32] * (HPDCACHE_MSHR_RAM_ENTRY_BITS / 8)) - 1:0] mshr_wbyteenable;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:285:9
			always @(*) begin : mshr_wbyteenable_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:287:13
				begin : sv2v_autoblock_13
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:287:18
					reg [31:0] i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:287:18
					for (i = 0; i < HPDcacheCfg[931-:32]; i = i + 1)
						begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:288:17
							mshr_wbyteenable[i * (HPDCACHE_MSHR_RAM_ENTRY_BITS / 8)+:HPDCACHE_MSHR_RAM_ENTRY_BITS / 8] = (sv2v_cast_32_signed(alloc_way_o) == i ? {(HPDCACHE_MSHR_RAM_ENTRY_BITS / 8) * 1 {1'sb1}} : {(HPDCACHE_MSHR_RAM_ENTRY_BITS / 8) * 1 {1'sb0}});
						end
				end
			end
			if (HPDcacheCfg[834]) begin : gen_mshr_regbank
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:293:13
				hpdcache_regbank_wbyteenable_1rw #(
					.DATA_SIZE(HPDcacheCfg[931-:32] * HPDCACHE_MSHR_RAM_ENTRY_BITS),
					.ADDR_SIZE(HPDcacheCfg[191-:32]),
					.DEPTH(HPDcacheCfg[963-:32])
				) mshr_mem(
					.clk(clk_i),
					.rst_n(rst_ni),
					.cs(mshr_cs),
					.we(mshr_we),
					.addr(mshr_addr),
					.wbyteenable(mshr_wbyteenable),
					.wdata(mshr_wdata),
					.rdata(mshr_rdata)
				);
			end
			else begin : gen_mshr_sram
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:308:13
				hpdcache_sram_wbyteenable #(
					.DATA_SIZE(HPDcacheCfg[931-:32] * HPDCACHE_MSHR_RAM_ENTRY_BITS),
					.ADDR_SIZE(HPDcacheCfg[191-:32]),
					.DEPTH(HPDcacheCfg[963-:32])
				) mshr_mem(
					.clk(clk_i),
					.rst_n(rst_ni),
					.cs(mshr_cs),
					.we(mshr_we),
					.addr(mshr_addr),
					.wbyteenable(mshr_wbyteenable),
					.wdata(mshr_wdata),
					.rdata(mshr_rdata)
				);
			end
		end
		else begin : gen_mshr_wmask
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:324:9
			// removed localparam type mshr_sram_wmask_t
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:325:9
			reg [(HPDcacheCfg[931-:32] * HPDCACHE_MSHR_RAM_ENTRY_BITS) - 1:0] mshr_wmask;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:327:9
			always @(*) begin : mshr_wmask_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:329:13
				begin : sv2v_autoblock_14
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:329:18
					reg [31:0] i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:329:18
					for (i = 0; i < HPDcacheCfg[931-:32]; i = i + 1)
						begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:330:17
							mshr_wmask[i * HPDCACHE_MSHR_RAM_ENTRY_BITS+:HPDCACHE_MSHR_RAM_ENTRY_BITS] = (sv2v_cast_32_signed(alloc_way_o) == i ? {HPDCACHE_MSHR_RAM_ENTRY_BITS * 1 {1'sb1}} : {HPDCACHE_MSHR_RAM_ENTRY_BITS * 1 {1'sb0}});
						end
				end
			end
			if (HPDcacheCfg[834]) begin : gen_mshr_regbank
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:335:13
				hpdcache_regbank_wmask_1rw #(
					.DATA_SIZE(HPDcacheCfg[931-:32] * HPDCACHE_MSHR_RAM_ENTRY_BITS),
					.ADDR_SIZE(HPDcacheCfg[191-:32]),
					.DEPTH(HPDcacheCfg[963-:32])
				) mshr_mem(
					.clk(clk_i),
					.rst_n(rst_ni),
					.cs(mshr_cs),
					.we(mshr_we),
					.addr(mshr_addr),
					.wmask(mshr_wmask),
					.wdata(mshr_wdata),
					.rdata(mshr_rdata)
				);
			end
			else begin : gen_mshr_sram
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:350:13
				hpdcache_sram_wmask #(
					.DATA_SIZE(HPDcacheCfg[931-:32] * HPDCACHE_MSHR_RAM_ENTRY_BITS),
					.ADDR_SIZE(HPDcacheCfg[191-:32]),
					.DEPTH(HPDcacheCfg[963-:32])
				) mshr_mem(
					.clk(clk_i),
					.rst_n(rst_ni),
					.cs(mshr_cs),
					.we(mshr_we),
					.addr(mshr_addr),
					.wmask(mshr_wmask),
					.wdata(mshr_wdata),
					.rdata(mshr_rdata)
				);
			end
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:367:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:369:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:370:11
			mshr_cache_set_q <= 1'sb0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:372:13
			if (alloc_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:373:17
				mshr_cache_set_q[mshr_alloc_slot * hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32]+:hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32]] <= alloc_nline_i[0+:HPDcacheCfg[415-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:378:5
	function automatic [HPDCACHE_MSHR_RAM_ENTRY_BITS - 1:0] sv2v_cast_17D5B;
		input reg [HPDCACHE_MSHR_RAM_ENTRY_BITS - 1:0] inp;
		sv2v_cast_17D5B = inp;
	endfunction
	function automatic [(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1)) - 1:0] sv2v_cast_62713;
		input reg [(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1)) - 1:0] inp;
		sv2v_cast_62713 = inp;
	endfunction
	always @(*) begin : ram_word_fitting_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:380:9
		begin : sv2v_autoblock_15
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:380:14
			reg [31:0] i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:380:14
			for (i = 0; i < HPDcacheCfg[931-:32]; i = i + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:381:13
					mshr_wdata[i * HPDCACHE_MSHR_RAM_ENTRY_BITS+:HPDCACHE_MSHR_RAM_ENTRY_BITS] = sv2v_cast_17D5B(mshr_wentry[(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? 0 : (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) + (i * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1)))+:(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))]);
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:382:13
					mshr_rentry[(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? 0 : (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) + (i * (((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1)))+:(((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1) >= 0 ? (((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 2 : 1 - ((((hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32]) + hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32]) + hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32]) + 1))] = sv2v_cast_62713(mshr_rdata[i * HPDCACHE_MSHR_RAM_ENTRY_BITS+:HPDCACHE_MSHR_ENTRY_BITS]);
				end
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:390:5
	// removed an assertion item
	// one_command_assert : assert property (@(posedge clk_i) 
	// 	ack_i -> !(alloc_i || check_i)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv:392:13
	// 	$error("MSHR: ack with concurrent alloc or check");
	// end
	initial _sv2v_0 = 0;
endmodule
