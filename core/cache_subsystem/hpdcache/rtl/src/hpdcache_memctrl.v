module hpdcache_memctrl_712A3_4BE95 (
	clk_i,
	rst_ni,
	ready_o,
	dir_match_i,
	dir_match_set_i,
	dir_match_tag_i,
	dir_update_lru_i,
	dir_hit_way_o,
	dir_amo_match_i,
	dir_amo_match_set_i,
	dir_amo_match_tag_i,
	dir_amo_update_plru_i,
	dir_amo_hit_way_o,
	dir_refill_sel_victim_i,
	dir_refill_i,
	dir_refill_set_i,
	dir_refill_entry_i,
	dir_refill_updt_plru_i,
	dir_victim_way_o,
	dir_inval_check_i,
	dir_inval_nline_i,
	dir_inval_write_i,
	dir_inval_hit_o,
	dir_cmo_check_i,
	dir_cmo_check_set_i,
	dir_cmo_check_tag_i,
	dir_cmo_check_hit_way_o,
	dir_cmo_inval_i,
	dir_cmo_inval_set_i,
	dir_cmo_inval_way_i,
	data_req_read_i,
	data_req_read_set_i,
	data_req_read_size_i,
	data_req_read_word_i,
	data_req_read_data_o,
	data_req_write_i,
	data_req_write_enable_i,
	data_req_write_set_i,
	data_req_write_size_i,
	data_req_write_word_i,
	data_req_write_data_i,
	data_req_write_be_i,
	data_amo_write_i,
	data_amo_write_enable_i,
	data_amo_write_set_i,
	data_amo_write_size_i,
	data_amo_write_word_i,
	data_amo_write_data_i,
	data_amo_write_be_i,
	data_refill_i,
	data_refill_way_i,
	data_refill_set_i,
	data_refill_word_i,
	data_refill_data_i
);
	// removed localparam type hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_refill_be_t_hpdcache_refill_be_t_HPDcacheCfg_type
	// removed localparam type hpdcache_refill_be_t_hpdcache_refill_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_refill_be_t_hpdcache_refill_be_t_HPDcacheCfg = 0;
	parameter [1349:0] hpdcache_refill_be_t_hpdcache_refill_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_refill_data_t_hpdcache_refill_data_t_HPDcacheCfg_type
	// removed localparam type hpdcache_refill_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_refill_data_t_hpdcache_refill_data_t_HPDcacheCfg = 0;
	parameter [1349:0] hpdcache_refill_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_set_t_hpdcache_set_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_set_t_hpdcache_set_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_word_t_hpdcache_word_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_word_t_hpdcache_word_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// removed import hpdcache_pkg::*;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:31:15
	// removed localparam type hpdcache_pkg_hpdcache_victim_sel_policy_t
	// removed localparam type hpdcache_pkg_hpdcache_user_cfg_t
	// removed localparam type hpdcache_pkg_hpdcache_cfg_t
	parameter [1349:0] HPDcacheCfg = 1'sb0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:33:20
	// removed localparam type hpdcache_nline_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:34:20
	// removed localparam type hpdcache_tag_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:35:20
	// removed localparam type hpdcache_set_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:36:20
	// removed localparam type hpdcache_word_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:37:20
	// removed localparam type hpdcache_way_vector_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:38:20
	// removed localparam type hpdcache_dir_entry_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:40:20
	// removed localparam type hpdcache_data_word_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:41:20
	// removed localparam type hpdcache_data_be_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:43:20
	// removed localparam type hpdcache_req_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:44:20
	// removed localparam type hpdcache_req_be_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:46:20
	// removed localparam type hpdcache_refill_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:47:20
	// removed localparam type hpdcache_refill_be_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:56:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:57:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:62:5
	output wire ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:67:5
	input wire dir_match_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:68:5
	input wire [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] dir_match_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:69:5
	input wire [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] dir_match_tag_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:70:5
	input wire dir_update_lru_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:71:5
	output wire [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] dir_hit_way_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:73:5
	input wire dir_amo_match_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:74:5
	input wire [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] dir_amo_match_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:75:5
	input wire [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] dir_amo_match_tag_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:76:5
	input wire dir_amo_update_plru_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:77:5
	output wire [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] dir_amo_hit_way_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:79:5
	input wire dir_refill_sel_victim_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:80:5
	input wire dir_refill_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:81:5
	input wire [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] dir_refill_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:82:5
	input wire [(1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0:0] dir_refill_entry_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:83:5
	input wire dir_refill_updt_plru_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:84:5
	output wire [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] dir_victim_way_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:86:5
	input wire dir_inval_check_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:87:5
	input wire [hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] dir_inval_nline_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:88:5
	input wire dir_inval_write_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:89:5
	output wire dir_inval_hit_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:91:5
	input wire dir_cmo_check_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:92:5
	input wire [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] dir_cmo_check_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:93:5
	input wire [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] dir_cmo_check_tag_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:94:5
	output wire [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] dir_cmo_check_hit_way_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:96:5
	input wire dir_cmo_inval_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:97:5
	input wire [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] dir_cmo_inval_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:98:5
	input wire [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] dir_cmo_inval_way_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:103:5
	input wire data_req_read_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:104:5
	input wire [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] data_req_read_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:105:5
	// removed localparam type hpdcache_pkg_hpdcache_req_size_t
	input wire [2:0] data_req_read_size_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:106:5
	input wire [hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] data_req_read_word_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:107:5
	output wire [(hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] data_req_read_data_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:109:5
	input wire data_req_write_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:110:5
	input wire data_req_write_enable_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:111:5
	input wire [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] data_req_write_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:112:5
	input wire [2:0] data_req_write_size_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:113:5
	input wire [hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] data_req_write_word_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:114:5
	input wire [(hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] data_req_write_data_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:115:5
	input wire [(hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1157-:32] * (hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1285-:32] / 8)) - 1:0] data_req_write_be_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:117:5
	input wire data_amo_write_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:118:5
	input wire data_amo_write_enable_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:119:5
	input wire [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] data_amo_write_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:120:5
	input wire [2:0] data_amo_write_size_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:121:5
	input wire [hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] data_amo_write_word_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:122:5
	input wire [(hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] data_amo_write_data_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:123:5
	input wire [(hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1157-:32] * (hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1285-:32] / 8)) - 1:0] data_amo_write_be_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:125:5
	input wire data_refill_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:126:5
	input wire [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] data_refill_way_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:127:5
	input wire [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] data_refill_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:128:5
	input wire [hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] data_refill_word_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:129:5
	input wire [(hpdcache_refill_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32] * hpdcache_refill_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] data_refill_data_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:136:5
	localparam [31:0] HPDCACHE_DIR_RAM_WIDTH = (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:137:5
	localparam [31:0] HPDCACHE_DIR_RAM_ADDR_WIDTH = $clog2(HPDcacheCfg[1253-:32]);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:138:5
	localparam [31:0] HPDCACHE_DATA_RAM_ENTR_PER_SET = HPDcacheCfg[1189-:32] / HPDcacheCfg[995-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:140:5
	localparam [31:0] HPDCACHE_DATA_RAM_DEPTH = HPDcacheCfg[1253-:32] * HPDCACHE_DATA_RAM_ENTR_PER_SET;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:142:5
	localparam [31:0] HPDCACHE_DATA_RAM_WIDTH = HPDcacheCfg[1060-:32] * HPDcacheCfg[1285-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:144:5
	localparam [31:0] HPDCACHE_DATA_RAM_ADDR_WIDTH = $clog2(HPDCACHE_DATA_RAM_DEPTH);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:145:5
	localparam [31:0] HPDCACHE_DATA_REQ_RATIO = HPDcacheCfg[995-:32] / HPDcacheCfg[1157-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:147:5
	localparam [31:0] HPDCACHE_DATA_RAM_Y_CUTS = HPDcacheCfg[1221-:32] / HPDcacheCfg[1060-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:149:5
	localparam [31:0] HPDCACHE_DATA_RAM_X_CUTS = HPDcacheCfg[995-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:150:5
	localparam [31:0] HPDCACHE_ALL_CUTS = HPDCACHE_DATA_RAM_X_CUTS * HPDCACHE_DATA_RAM_Y_CUTS;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:152:5
	// removed localparam type hpdcache_dir_addr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:154:5
	// removed localparam type hpdcache_data_ram_addr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:155:5
	// removed localparam type hpdcache_data_ram_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:156:5
	// removed localparam type hpdcache_data_ram_be_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:157:5
	// removed localparam type hpdcache_data_ram_row_idx_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:158:5
	// removed localparam type hpdcache_data_ram_way_idx_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:159:5
	// removed localparam type hpdcache_data_row_enable_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:160:5
	// removed localparam type hpdcache_data_enable_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:162:5
	// removed localparam type hpdcache_data_entry_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:166:5
	// removed localparam type hpdcache_data_be_entry_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:170:5
	// removed localparam type hpdcache_data_addr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:183:5
	// removed localparam type hpdcache_pkg_hpdcache_uint32
	// removed localparam type hpdcache_pkg_hpdcache_uint
	function automatic [HPDCACHE_DATA_RAM_X_CUTS - 1:0] sv2v_cast_7060A;
		input reg [HPDCACHE_DATA_RAM_X_CUTS - 1:0] inp;
		sv2v_cast_7060A = inp;
	endfunction
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	function automatic [HPDCACHE_DATA_RAM_X_CUTS - 1:0] hpdcache_compute_data_ram_cs;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:184:13
		input reg [2:0] size_i;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:185:13
		input reg [hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] word_i;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:187:9
		localparam [31:0] OffWidth = (HPDcacheCfg[995-:32] > 1 ? $clog2(HPDcacheCfg[995-:32]) : 1);
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:190:9
		reg [HPDCACHE_DATA_RAM_X_CUTS - 1:0] ret;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:191:9
		reg [31:0] off;
		begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:193:9
			case (size_i)
				3'h0, 3'h1, 3'h2, 3'h3:
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:197:22
					ret = sv2v_cast_7060A({64 / HPDcacheCfg[1285-:32] {1'b1}});
				3'h4:
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:198:22
					ret = sv2v_cast_7060A({128 / HPDcacheCfg[1285-:32] {1'b1}});
				3'h5:
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:199:22
					ret = sv2v_cast_7060A({256 / HPDcacheCfg[1285-:32] {1'b1}});
				default:
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:200:22
					ret = sv2v_cast_7060A({512 / HPDcacheCfg[1285-:32] {1'b1}});
			endcase
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:203:9
			off = (HPDcacheCfg[995-:32] > 1 ? sv2v_cast_32(word_i[0+:OffWidth]) : 0);
			hpdcache_compute_data_ram_cs = sv2v_cast_7060A(ret << off);
		end
	endfunction
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:207:5
	function automatic [HPDCACHE_DATA_RAM_Y_CUTS - 1:0] hpdcache_way_to_data_ram_row;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:208:9
		input reg [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] way;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:209:9
		reg [HPDCACHE_DATA_RAM_Y_CUTS - 1:0] ret;
		begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:210:9
			begin : sv2v_autoblock_1
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:210:14
				reg [31:0] i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:210:14
				for (i = 0; i < HPDCACHE_DATA_RAM_Y_CUTS; i = i + 1)
					begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:211:13
						ret[i] = |way[i * HPDcacheCfg[1060-:32]+:HPDcacheCfg[1060-:32]];
					end
			end
			hpdcache_way_to_data_ram_row = ret;
		end
	endfunction
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:216:5
	function automatic [$clog2(HPDcacheCfg[1060-:32]) - 1:0] sv2v_cast_0E701;
		input reg [$clog2(HPDcacheCfg[1060-:32]) - 1:0] inp;
		sv2v_cast_0E701 = inp;
	endfunction
	function automatic [$clog2(HPDcacheCfg[1060-:32]) - 1:0] hpdcache_way_to_data_ram_word;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:217:13
		input reg [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] way;
		reg [0:1] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:218:9
			begin : sv2v_autoblock_2
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:218:14
				reg [31:0] i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:218:14
				begin : sv2v_autoblock_3
					reg [31:0] _sv2v_value_on_break;
					for (i = 0; i < HPDcacheCfg[1221-:32]; i = i + 1)
						if (_sv2v_jump < 2'b10) begin
							_sv2v_jump = 2'b00;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:219:13
							if (way[i]) begin
								hpdcache_way_to_data_ram_word = sv2v_cast_0E701(i % HPDcacheCfg[1060-:32]);
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
				hpdcache_way_to_data_ram_word = 0;
				_sv2v_jump = 2'b11;
			end
		end
	endfunction
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:224:5
	function automatic [HPDCACHE_DATA_RAM_ADDR_WIDTH - 1:0] sv2v_cast_63CD2;
		input reg [HPDCACHE_DATA_RAM_ADDR_WIDTH - 1:0] inp;
		sv2v_cast_63CD2 = inp;
	endfunction
	function automatic [HPDCACHE_DATA_RAM_ADDR_WIDTH - 1:0] hpdcache_set_to_data_ram_addr;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:225:13
		input reg [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] set;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:226:13
		input reg [hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] word;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:227:9
		reg [31:0] ret;
		begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:229:9
			ret = (sv2v_cast_32(set) * (HPDcacheCfg[1189-:32] / HPDcacheCfg[995-:32])) + (sv2v_cast_32(word) / HPDcacheCfg[995-:32]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:232:9
			hpdcache_set_to_data_ram_addr = sv2v_cast_63CD2(ret);
		end
	endfunction
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:238:5
	genvar _gv_gen_i_4;
	genvar _gv_gen_j_1;
	genvar _gv_gen_k_1;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:241:5
	reg init_q;
	reg init_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:242:5
	reg [HPDCACHE_DIR_RAM_ADDR_WIDTH - 1:0] init_set_q;
	reg [HPDCACHE_DIR_RAM_ADDR_WIDTH - 1:0] init_set_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:243:5
	reg [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] init_dir_cs;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:246:5
	reg [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] dir_req_set_q;
	wire [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] dir_req_set_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:247:5
	reg [HPDCACHE_DIR_RAM_ADDR_WIDTH - 1:0] dir_addr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:248:5
	reg [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] dir_cs;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:249:5
	reg [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] dir_we;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:250:5
	reg [(((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (HPDcacheCfg[1221-:32] * ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1)) - 1 : (HPDcacheCfg[1221-:32] * (1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) - 1)):(((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? 0 : (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0)] dir_wentry;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:251:5
	wire [(((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (HPDcacheCfg[1221-:32] * ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1)) - 1 : (HPDcacheCfg[1221-:32] * (1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) - 1)):(((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? 0 : (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0)] dir_rentry;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:252:5
	wire [HPDcacheCfg[1221-:32] - 1:0] dir_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:254:5
	reg [((HPDCACHE_DATA_RAM_Y_CUTS * HPDCACHE_DATA_RAM_X_CUTS) * HPDCACHE_DATA_RAM_ADDR_WIDTH) - 1:0] data_addr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:255:5
	reg [(HPDCACHE_DATA_RAM_Y_CUTS * HPDCACHE_DATA_RAM_X_CUTS) - 1:0] data_cs;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:256:5
	reg [(HPDCACHE_DATA_RAM_Y_CUTS * HPDCACHE_DATA_RAM_X_CUTS) - 1:0] data_we;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:257:5
	reg [(((HPDCACHE_DATA_RAM_Y_CUTS * HPDCACHE_DATA_RAM_X_CUTS) * HPDcacheCfg[1060-:32]) * (hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg[1285-:32] / 8)) - 1:0] data_wbyteenable;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:258:5
	reg [(((HPDCACHE_DATA_RAM_Y_CUTS * HPDCACHE_DATA_RAM_X_CUTS) * HPDcacheCfg[1060-:32]) * hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] data_wentry;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:259:5
	wire [(((HPDCACHE_DATA_RAM_Y_CUTS * HPDCACHE_DATA_RAM_X_CUTS) * HPDcacheCfg[1060-:32]) * hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] data_rentry;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:261:5
	reg data_write;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:262:5
	reg data_write_enable;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:263:5
	reg [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] data_write_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:264:5
	reg [2:0] data_write_size;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:265:5
	reg [hpdcache_word_t_hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] data_write_word;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:266:5
	reg [(hpdcache_refill_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32] * hpdcache_refill_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] data_write_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:267:5
	reg [(hpdcache_refill_be_t_hpdcache_refill_be_t_HPDcacheCfg[995-:32] * (hpdcache_refill_be_t_hpdcache_refill_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg[1285-:32] / 8)) - 1:0] data_write_be;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:269:5
	wire [(hpdcache_refill_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32] * hpdcache_refill_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] data_req_write_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:270:5
	wire [(hpdcache_refill_be_t_hpdcache_refill_be_t_HPDcacheCfg[995-:32] * (hpdcache_refill_be_t_hpdcache_refill_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg[1285-:32] / 8)) - 1:0] data_req_write_be;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:272:5
	wire [(hpdcache_refill_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32] * hpdcache_refill_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] data_amo_write_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:273:5
	wire [(hpdcache_refill_be_t_hpdcache_refill_be_t_HPDcacheCfg[995-:32] * (hpdcache_refill_be_t_hpdcache_refill_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg[1285-:32] / 8)) - 1:0] data_amo_write_be;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:275:5
	wire [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] data_way;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:277:5
	wire [HPDCACHE_DATA_RAM_Y_CUTS - 1:0] data_ram_row;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:278:5
	wire [$clog2(HPDcacheCfg[1060-:32]) - 1:0] data_ram_word;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:280:5
	wire [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] dir_inval_tag;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:281:5
	wire [hpdcache_set_t_hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] dir_inval_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:282:5
	wire [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] dir_inval_hit_way;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:287:5
	always @(*) begin : init_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:289:9
		init_dir_cs = 1'sb0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:290:9
		init_d = init_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:291:9
		init_set_d = init_set_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:293:9
		(* full_case, parallel_case *)
		case (init_q)
			1'b0: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:295:17
				init_d = sv2v_cast_32(init_set_q) == (HPDcacheCfg[1253-:32] - 1);
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:296:17
				init_set_d = init_set_q + 1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:297:17
				init_dir_cs = 1'sb1;
			end
			1'b1: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:301:17
				init_d = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:302:17
				init_set_d = init_set_q;
			end
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:307:5
	assign ready_o = init_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:309:5
	always @(posedge clk_i or negedge rst_ni) begin : init_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:311:9
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:312:13
			init_q <= 1'b0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:313:13
			init_set_q <= 0;
		end
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:315:13
			init_q <= init_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:316:13
			init_set_q <= init_set_d;
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:323:5
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:324:9
	genvar _gv_x_1;
	genvar _gv_y_1;
	genvar _gv_dir_w_1;
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		for (_gv_dir_w_1 = 0; _gv_dir_w_1 < sv2v_cast_32_signed(HPDcacheCfg[1221-:32]); _gv_dir_w_1 = _gv_dir_w_1 + 1) begin : gen_dir_sram
			localparam dir_w = _gv_dir_w_1;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:329:13
			hpdcache_sram #(
				.DATA_SIZE(HPDCACHE_DIR_RAM_WIDTH),
				.ADDR_SIZE(HPDCACHE_DIR_RAM_ADDR_WIDTH)
			) dir_sram(
				.clk(clk_i),
				.rst_n(rst_ni),
				.cs(dir_cs[dir_w]),
				.we(dir_we[dir_w]),
				.addr(dir_addr),
				.wdata(dir_wentry[(((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? 0 : (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) + (dir_w * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0)))+:(((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))]),
				.rdata(dir_rentry[(((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? 0 : (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) + (dir_w * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0)))+:(((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))])
			);
		end
		for (_gv_y_1 = 0; _gv_y_1 < sv2v_cast_32_signed(HPDCACHE_DATA_RAM_Y_CUTS); _gv_y_1 = _gv_y_1 + 1) begin : gen_data_sram_row
			localparam y = _gv_y_1;
			for (_gv_x_1 = 0; _gv_x_1 < sv2v_cast_32_signed(HPDCACHE_DATA_RAM_X_CUTS); _gv_x_1 = _gv_x_1 + 1) begin : gen_data_sram_col
				localparam x = _gv_x_1;
				if (HPDcacheCfg[996]) begin : gen_data_sram_wbyteenable
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:348:21
					hpdcache_sram_wbyteenable #(
						.DATA_SIZE(HPDCACHE_DATA_RAM_WIDTH),
						.ADDR_SIZE(HPDCACHE_DATA_RAM_ADDR_WIDTH)
					) data_sram(
						.clk(clk_i),
						.rst_n(rst_ni),
						.cs(data_cs[(y * HPDCACHE_DATA_RAM_X_CUTS) + x]),
						.we(data_we[(y * HPDCACHE_DATA_RAM_X_CUTS) + x]),
						.addr(data_addr[((y * HPDCACHE_DATA_RAM_X_CUTS) + x) * HPDCACHE_DATA_RAM_ADDR_WIDTH+:HPDCACHE_DATA_RAM_ADDR_WIDTH]),
						.wdata(data_wentry[hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * (((y * HPDCACHE_DATA_RAM_X_CUTS) + x) * HPDcacheCfg[1060-:32])+:hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * HPDcacheCfg[1060-:32]]),
						.wbyteenable(data_wbyteenable[(hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg[1285-:32] / 8) * (((y * HPDCACHE_DATA_RAM_X_CUTS) + x) * HPDcacheCfg[1060-:32])+:(hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg[1285-:32] / 8) * HPDcacheCfg[1060-:32]]),
						.rdata(data_rentry[hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * (((y * HPDCACHE_DATA_RAM_X_CUTS) + x) * HPDcacheCfg[1060-:32])+:hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * HPDcacheCfg[1060-:32]])
					);
				end
				else begin : gen_data_sram_wmask
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:362:21
					reg [(HPDcacheCfg[1060-:32] * hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] data_wmask;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:365:21
					always @(*) begin : data_wmask_comb
						if (_sv2v_0)
							;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:367:25
						begin : sv2v_autoblock_4
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:367:30
							reg signed [31:0] w;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:367:30
							for (w = 0; w < HPDcacheCfg[1060-:32]; w = w + 1)
								begin
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:368:29
									begin : sv2v_autoblock_5
										// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:368:34
										reg signed [31:0] b;
										// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:368:34
										for (b = 0; b < (HPDcacheCfg[1285-:32] / 8); b = b + 1)
											begin
												// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:369:33
												data_wmask[(w * hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) + (8 * b)+:8] = {8 {data_wbyteenable[(((((y * HPDCACHE_DATA_RAM_X_CUTS) + x) * HPDcacheCfg[1060-:32]) + w) * (hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg[1285-:32] / 8)) + b]}};
											end
									end
								end
						end
					end
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:374:21
					hpdcache_sram_wmask #(
						.DATA_SIZE(HPDCACHE_DATA_RAM_WIDTH),
						.ADDR_SIZE(HPDCACHE_DATA_RAM_ADDR_WIDTH)
					) data_sram(
						.clk(clk_i),
						.rst_n(rst_ni),
						.cs(data_cs[(y * HPDCACHE_DATA_RAM_X_CUTS) + x]),
						.we(data_we[(y * HPDCACHE_DATA_RAM_X_CUTS) + x]),
						.addr(data_addr[((y * HPDCACHE_DATA_RAM_X_CUTS) + x) * HPDCACHE_DATA_RAM_ADDR_WIDTH+:HPDCACHE_DATA_RAM_ADDR_WIDTH]),
						.wdata(data_wentry[hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * (((y * HPDCACHE_DATA_RAM_X_CUTS) + x) * HPDcacheCfg[1060-:32])+:hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * HPDcacheCfg[1060-:32]]),
						.wmask(data_wmask),
						.rdata(data_rentry[hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * (((y * HPDCACHE_DATA_RAM_X_CUTS) + x) * HPDcacheCfg[1060-:32])+:hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * HPDcacheCfg[1060-:32]])
					);
				end
			end
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:395:5
	assign dir_inval_set = dir_inval_nline_i[0+:HPDcacheCfg[415-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:396:5
	assign dir_inval_tag = dir_inval_nline_i[HPDcacheCfg[415-:32]+:HPDcacheCfg[351-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:398:5
	always @(*) begin : dir_ctrl_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:400:9
		case (1'b1)
			~init_q: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:403:17
				dir_addr = init_set_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:404:17
				dir_cs = init_dir_cs;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:405:17
				dir_we = 1'sb1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:406:17
				dir_wentry = 1'sb0;
			end
			dir_match_i: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:411:17
				dir_addr = dir_match_set_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:412:17
				dir_cs = 1'sb1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:413:17
				dir_we = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:414:17
				dir_wentry = 1'sb0;
			end
			dir_amo_match_i: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:419:17
				dir_addr = dir_amo_match_set_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:420:17
				dir_cs = 1'sb1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:421:17
				dir_we = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:422:17
				dir_wentry = 1'sb0;
			end
			dir_refill_sel_victim_i: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:427:17
				dir_addr = dir_refill_set_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:428:17
				dir_cs = 1'sb1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:429:17
				dir_we = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:430:17
				dir_wentry = 1'sb0;
			end
			dir_refill_i: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:435:17
				dir_addr = dir_refill_set_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:436:17
				dir_cs = dir_victim_way_o;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:437:17
				dir_we = dir_victim_way_o;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:438:17
				dir_wentry = {HPDcacheCfg[1221-:32] {dir_refill_entry_i}};
			end
			dir_inval_check_i: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:443:17
				dir_addr = dir_inval_set;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:444:17
				dir_cs = 1'sb1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:445:17
				dir_we = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:446:17
				dir_wentry = 1'sb0;
			end
			dir_inval_write_i: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:451:17
				dir_addr = dir_inval_set;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:452:17
				dir_cs = dir_inval_hit_way;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:453:17
				dir_we = dir_inval_hit_way;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:454:17
				dir_wentry = 1'sb0;
			end
			dir_cmo_check_i: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:459:17
				dir_addr = dir_cmo_check_set_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:460:17
				dir_cs = 1'sb1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:461:17
				dir_we = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:462:17
				dir_wentry = 1'sb0;
			end
			dir_cmo_inval_i: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:467:17
				dir_addr = dir_cmo_inval_set_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:468:17
				dir_cs = dir_cmo_inval_way_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:469:17
				dir_we = dir_cmo_inval_way_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:470:17
				dir_wentry = 1'sb0;
			end
			default: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:475:17
				dir_addr = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:476:17
				dir_cs = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:477:17
				dir_we = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:478:17
				dir_wentry = 1'sb0;
			end
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:486:5
	wire [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] req_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:487:5
	wire [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] amo_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:488:5
	wire [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] cmo_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:489:5
	wire [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] inval_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:491:5
	assign dir_req_set_d = (dir_match_i ? dir_match_set_i : (dir_amo_match_i ? dir_amo_match_set_i : (dir_cmo_check_i ? dir_cmo_check_set_i : (dir_inval_check_i ? dir_inval_set : dir_req_set_q))));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:497:5
	generate
		for (_gv_gen_i_4 = 0; _gv_gen_i_4 < sv2v_cast_32_signed(HPDcacheCfg[1221-:32]); _gv_gen_i_4 = _gv_gen_i_4 + 1) begin : gen_dir_match_tag
			localparam gen_i = _gv_gen_i_4;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:499:9
			assign req_hit[gen_i] = dir_rentry[(((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (gen_i * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0)) : (((gen_i * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0))) + ((hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) >= 1 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : 2 - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0))) - 1)-:((hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) >= 1 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : 2 - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0))] == dir_match_tag_i;
			assign amo_hit[gen_i] = dir_rentry[(((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (gen_i * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0)) : (((gen_i * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0))) + ((hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) >= 1 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : 2 - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0))) - 1)-:((hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) >= 1 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : 2 - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0))] == dir_amo_match_tag_i;
			assign cmo_hit[gen_i] = dir_rentry[(((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (gen_i * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0)) : (((gen_i * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0))) + ((hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) >= 1 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : 2 - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0))) - 1)-:((hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) >= 1 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : 2 - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0))] == dir_cmo_check_tag_i;
			assign inval_hit[gen_i] = dir_rentry[(((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (gen_i * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0)) : (((gen_i * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0))) + ((hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) >= 1 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : 2 - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0))) - 1)-:((hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) >= 1 ? hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : 2 - (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0))] == dir_inval_tag;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:504:9
			assign dir_hit_way_o[gen_i] = dir_rentry[(gen_i * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? 1 + (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) : ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) - (1 + (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0)))] & req_hit[gen_i];
			assign dir_amo_hit_way_o[gen_i] = dir_rentry[(gen_i * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? 1 + (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) : ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) - (1 + (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0)))] & amo_hit[gen_i];
			assign dir_cmo_check_hit_way_o[gen_i] = dir_rentry[(gen_i * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? 1 + (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) : ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) - (1 + (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0)))] & cmo_hit[gen_i];
			assign dir_inval_hit_way[gen_i] = dir_rentry[(gen_i * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? 1 + (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) : ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) - (1 + (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0)))] & inval_hit[gen_i];
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:510:5
	assign dir_inval_hit_o = |dir_inval_hit_way;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:515:5
	wire plru_updt;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:516:5
	wire [hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] plru_updt_way;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:518:5
	assign plru_updt = dir_update_lru_i | dir_amo_update_plru_i;
	assign plru_updt_way = (dir_update_lru_i ? dir_hit_way_o : dir_amo_hit_way_o);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:521:5
	generate
		for (_gv_gen_i_4 = 0; _gv_gen_i_4 < HPDcacheCfg[1221-:32]; _gv_gen_i_4 = _gv_gen_i_4 + 1) begin : gen_dir_valid_bv
			localparam gen_i = _gv_gen_i_4;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:522:9
			assign dir_valid[gen_i] = dir_rentry[(gen_i * (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? (1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 1 : 1 - ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0))) + (((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) >= 0 ? 1 + (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) : ((1 + hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0) - (1 + (hpdcache_dir_entry_t_hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0)))];
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:526:5
	hpdcache_victim_sel_BB955_FDD36 #(
		.hpdcache_set_t_hpdcache_set_t_hpdcache_set_t_HPDcacheCfg(hpdcache_set_t_hpdcache_set_t_HPDcacheCfg),
		.hpdcache_way_vector_t_hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg(hpdcache_way_vector_t_hpdcache_way_vector_t_HPDcacheCfg),
		.HPDcacheCfg(HPDcacheCfg)
	) victim_sel_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.updt_i(plru_updt),
		.updt_set_i(dir_req_set_q),
		.updt_way_i(plru_updt_way),
		.repl_i(dir_refill_i),
		.repl_set_i(dir_refill_set_i),
		.repl_dir_valid_i(dir_valid),
		.repl_updt_i(dir_refill_updt_plru_i),
		.victim_way_o(dir_victim_way_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:551:5
	generate
		if (HPDCACHE_DATA_REQ_RATIO > 1) begin : gen_upsize_data_req_write
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:553:9
			assign data_req_write_data = {HPDCACHE_DATA_REQ_RATIO {data_req_write_data_i}};
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:556:9
			hpdcache_demux #(
				.NOUTPUT(HPDCACHE_DATA_REQ_RATIO),
				.DATA_WIDTH(HPDcacheCfg[255-:32] / 8),
				.ONE_HOT_SEL(1'b0)
			) data_req_write_be_demux_i(
				.data_i(data_req_write_be_i),
				.sel_i(data_req_write_word_i[HPDcacheCfg[319-:32]+:$clog2(HPDCACHE_DATA_REQ_RATIO)]),
				.data_o(data_req_write_be)
			);
		end
		else begin : gen_eqsize_data_req_write
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:567:9
			assign data_req_write_data = data_req_write_data_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:568:9
			assign data_req_write_be = data_req_write_be_i;
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:572:5
	generate
		if (HPDCACHE_DATA_REQ_RATIO > 1) begin : gen_upsize_amo_req_write
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:573:9
			assign data_amo_write_data = {HPDCACHE_DATA_REQ_RATIO {data_amo_write_data_i}};
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:575:9
			hpdcache_demux #(
				.NOUTPUT(HPDCACHE_DATA_REQ_RATIO),
				.DATA_WIDTH(HPDcacheCfg[255-:32] / 8),
				.ONE_HOT_SEL(1'b0)
			) amo_be_demux_i(
				.data_i(data_amo_write_be_i),
				.sel_i(data_amo_write_word_i[HPDcacheCfg[319-:32]+:$clog2(HPDCACHE_DATA_REQ_RATIO)]),
				.data_o(data_amo_write_be)
			);
		end
		else begin : gen_eqsize_amo_req_write
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:586:9
			assign data_amo_write_data = data_amo_write_data_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:587:9
			assign data_amo_write_be = data_amo_write_be_i;
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:591:5
	function automatic [2:0] sv2v_cast_3;
		input reg [2:0] inp;
		sv2v_cast_3 = inp;
	endfunction
	always @(*) begin : data_write_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:593:9
		case (1'b1)
			data_refill_i: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:595:17
				data_write = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:596:17
				data_write_enable = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:597:17
				data_write_set = data_refill_set_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:598:17
				data_write_size = sv2v_cast_3($clog2(HPDcacheCfg[31-:32] / 8));
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:599:17
				data_write_word = data_refill_word_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:600:17
				data_write_data = data_refill_data_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:601:17
				data_write_be = 1'sb1;
			end
			data_req_write_i: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:605:17
				data_write = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:606:17
				data_write_enable = data_req_write_enable_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:607:17
				data_write_set = data_req_write_set_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:608:17
				data_write_size = data_req_write_size_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:609:17
				data_write_word = data_req_write_word_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:610:17
				data_write_data = data_req_write_data;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:611:17
				data_write_be = data_req_write_be;
			end
			data_amo_write_i: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:615:17
				data_write = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:616:17
				data_write_enable = data_amo_write_enable_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:617:17
				data_write_set = data_amo_write_set_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:618:17
				data_write_size = data_amo_write_size_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:619:17
				data_write_word = data_amo_write_word_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:620:17
				data_write_data = data_amo_write_data;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:621:17
				data_write_be = data_amo_write_be;
			end
			default: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:625:17
				data_write = 1'b0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:626:17
				data_write_enable = 1'b0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:627:17
				data_write_set = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:628:17
				data_write_size = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:629:17
				data_write_word = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:630:17
				data_write_data = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:631:17
				data_write_be = 1'sb0;
			end
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:637:5
	assign data_way = (data_refill_i ? data_refill_way_i : (data_amo_write_i ? dir_amo_hit_way_o : dir_hit_way_o));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:642:5
	assign data_ram_word = hpdcache_way_to_data_ram_word(data_way);
	assign data_ram_row = hpdcache_way_to_data_ram_row(data_way);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:645:5
	always @(*) begin : data_ctrl_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:647:9
		case (1'b1)
			data_req_read_i: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:650:17
				data_addr = {HPDCACHE_ALL_CUTS {hpdcache_set_to_data_ram_addr(data_req_read_set_i, data_req_read_word_i)}};
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:653:17
				data_we = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:654:17
				data_wbyteenable = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:655:17
				data_wentry = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:656:17
				begin : sv2v_autoblock_6
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:656:22
					reg [31:0] i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:656:22
					for (i = 0; i < HPDCACHE_DATA_RAM_Y_CUTS; i = i + 1)
						begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:657:21
							data_cs[i * HPDCACHE_DATA_RAM_X_CUTS+:HPDCACHE_DATA_RAM_X_CUTS] = hpdcache_compute_data_ram_cs(data_req_read_size_i, data_req_read_word_i);
						end
				end
			end
			data_write: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:664:17
				data_addr = {HPDCACHE_ALL_CUTS {hpdcache_set_to_data_ram_addr(data_write_set, data_write_word)}};
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:667:17
				begin : sv2v_autoblock_7
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:667:22
					reg [31:0] i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:667:22
					for (i = 0; i < HPDCACHE_DATA_RAM_Y_CUTS; i = i + 1)
						begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:668:21
							begin : sv2v_autoblock_8
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:668:26
								reg [31:0] j;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:668:26
								for (j = 0; j < HPDCACHE_DATA_RAM_X_CUTS; j = j + 1)
									begin
										// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:669:25
										data_wentry[hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * (((i * HPDCACHE_DATA_RAM_X_CUTS) + j) * HPDcacheCfg[1060-:32])+:hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * HPDcacheCfg[1060-:32]] = {HPDcacheCfg[1060-:32] {data_write_data[j * hpdcache_refill_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]+:hpdcache_refill_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]]}};
									end
							end
						end
				end
				begin : sv2v_autoblock_9
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:673:22
					reg [31:0] i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:673:22
					for (i = 0; i < HPDCACHE_DATA_RAM_Y_CUTS; i = i + 1)
						begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:674:21
							data_cs[i * HPDCACHE_DATA_RAM_X_CUTS+:HPDCACHE_DATA_RAM_X_CUTS] = hpdcache_compute_data_ram_cs(data_write_size, data_write_word);
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:676:21
							if (data_ram_row[i])
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:677:25
								data_we[i * HPDCACHE_DATA_RAM_X_CUTS+:HPDCACHE_DATA_RAM_X_CUTS] = (data_write_enable ? data_cs[i * HPDCACHE_DATA_RAM_X_CUTS+:HPDCACHE_DATA_RAM_X_CUTS] : {HPDCACHE_DATA_RAM_X_CUTS * 1 {1'sb0}});
							else
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:679:25
								data_we[i * HPDCACHE_DATA_RAM_X_CUTS+:HPDCACHE_DATA_RAM_X_CUTS] = 1'sb0;
							begin : sv2v_autoblock_10
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:683:26
								reg [31:0] j;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:683:26
								for (j = 0; j < HPDcacheCfg[995-:32]; j = j + 1)
									begin
										// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:684:25
										begin : sv2v_autoblock_11
											// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:684:30
											reg [31:0] k;
											// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:684:30
											for (k = 0; k < HPDcacheCfg[1060-:32]; k = k + 1)
												begin
													// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:685:29
													data_wbyteenable[((((i * HPDCACHE_DATA_RAM_X_CUTS) + j) * HPDcacheCfg[1060-:32]) + k) * (hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg[1285-:32] / 8)+:hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg[1285-:32] / 8] = (k == sv2v_cast_32(data_ram_word) ? data_write_be[j * (hpdcache_refill_be_t_hpdcache_refill_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg[1285-:32] / 8)+:hpdcache_refill_be_t_hpdcache_refill_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg[1285-:32] / 8] : {hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg[1285-:32] / 8 {1'sb0}});
												end
										end
									end
							end
						end
				end
			end
			default: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:694:17
				data_addr = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:695:17
				data_cs = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:696:17
				data_we = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:697:17
				data_wbyteenable = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:698:17
				data_wentry = 1'sb0;
			end
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:706:5
	wire [(((HPDCACHE_DATA_REQ_RATIO * HPDcacheCfg[1221-:32]) * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32]) * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] data_read_words;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:707:5
	wire [((HPDcacheCfg[1221-:32] * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32]) * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] data_read_req_word;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:710:5
	generate
		for (_gv_gen_i_4 = 0; _gv_gen_i_4 < sv2v_cast_32_signed(HPDCACHE_DATA_REQ_RATIO); _gv_gen_i_4 = _gv_gen_i_4 + 1) begin : gen_data_rentry_i
			localparam gen_i = _gv_gen_i_4;
			for (_gv_gen_j_1 = 0; _gv_gen_j_1 < sv2v_cast_32_signed(HPDcacheCfg[1221-:32]); _gv_gen_j_1 = _gv_gen_j_1 + 1) begin : gen_data_rentry_j
				localparam gen_j = _gv_gen_j_1;
				for (_gv_gen_k_1 = 0; _gv_gen_k_1 < sv2v_cast_32_signed(HPDcacheCfg[1157-:32]); _gv_gen_k_1 = _gv_gen_k_1 + 1) begin : gen_data_rentry_k
					localparam gen_k = _gv_gen_k_1;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:713:17
					assign data_read_words[((((gen_i * HPDcacheCfg[1221-:32]) + gen_j) * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32]) + gen_k) * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]+:hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]] = data_rentry[(((((gen_j / HPDcacheCfg[1060-:32]) * HPDCACHE_DATA_RAM_X_CUTS) + ((gen_i * HPDcacheCfg[1157-:32]) + gen_k)) * HPDcacheCfg[1060-:32]) + (gen_j % HPDcacheCfg[1060-:32])) * hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]+:hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]];
				end
			end
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:722:5
	generate
		if (HPDCACHE_DATA_REQ_RATIO > 1) begin : gen_req_width_lt_ram_width
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:723:9
			// removed localparam type data_req_word_t
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:724:9
			reg [$clog2(HPDCACHE_DATA_REQ_RATIO) - 1:0] data_read_req_word_index_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:726:9
			hpdcache_mux #(
				.NINPUT(HPDCACHE_DATA_REQ_RATIO),
				.DATA_WIDTH(HPDcacheCfg[255-:32] * HPDcacheCfg[1221-:32])
			) data_read_req_word_mux_i(
				.data_i(data_read_words),
				.sel_i(data_read_req_word_index_q),
				.data_o(data_read_req_word)
			);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:735:9
			always @(posedge clk_i) begin : data_req_read_word_ff
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:737:13
				data_read_req_word_index_q <= data_req_read_word_i[HPDcacheCfg[319-:32]+:$clog2(HPDCACHE_DATA_REQ_RATIO)];
			end
		end
		else begin : gen_req_width_eq_ram_width
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:745:9
			assign data_read_req_word = data_read_words;
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:749:5
	hpdcache_mux #(
		.NINPUT(HPDcacheCfg[1221-:32]),
		.DATA_WIDTH(HPDcacheCfg[255-:32]),
		.ONE_HOT_SEL(1'b1)
	) data_read_req_word_way_mux_i(
		.data_i(data_read_req_word),
		.sel_i(dir_hit_way_o),
		.data_o(data_req_read_data_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:762:5
	always @(posedge clk_i) begin : req_read_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:764:9
		if (((dir_match_i || dir_amo_match_i) || dir_cmo_check_i) || dir_inval_check_i)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:765:13
			dir_req_set_q <= dir_req_set_d;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:773:5
	// removed an assertion item
	// concurrent_dir_access_assert : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	$onehot0({dir_match_i, dir_amo_match_i, dir_refill_sel_victim_i, dir_refill_i, dir_inval_check_i, dir_inval_write_i, dir_cmo_check_i, dir_cmo_inval_i})
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:782:13
	// 	$error("hpdcache_memctrl: more than one process is accessing the cache directory");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:784:5
	// removed an assertion item
	// concurrent_data_access_assert : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	$onehot0({data_req_read_i, data_req_write_i, data_amo_write_i, data_refill_i})
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv:786:13
	// 	$error("hpdcache_memctrl: more than one process is accessing the cache data");
	// end
	initial _sv2v_0 = 0;
endmodule
