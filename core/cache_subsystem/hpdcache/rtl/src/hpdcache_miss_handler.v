module hpdcache_miss_handler_9DAD1_9B062 (
	clk_i,
	rst_ni,
	mshr_empty_o,
	mshr_full_o,
	cfg_prefetch_updt_plru_i,
	mshr_check_i,
	mshr_check_offset_i,
	mshr_check_nline_i,
	mshr_check_hit_o,
	mshr_alloc_ready_o,
	mshr_alloc_i,
	mshr_alloc_cs_i,
	mshr_alloc_nline_i,
	mshr_alloc_full_o,
	mshr_alloc_tid_i,
	mshr_alloc_sid_i,
	mshr_alloc_word_i,
	mshr_alloc_need_rsp_i,
	mshr_alloc_is_prefetch_i,
	refill_req_ready_i,
	refill_req_valid_o,
	refill_busy_o,
	refill_sel_victim_o,
	refill_updt_plru_o,
	refill_set_o,
	refill_dir_entry_o,
	refill_victim_way_i,
	refill_write_dir_o,
	refill_write_data_o,
	refill_victim_way_o,
	refill_data_o,
	refill_word_o,
	refill_nline_o,
	refill_updt_rtab_o,
	inval_check_dir_o,
	inval_write_dir_o,
	inval_nline_o,
	inval_hit_i,
	refill_core_rsp_valid_o,
	refill_core_rsp_o,
	mem_req_ready_i,
	mem_req_valid_o,
	mem_req_o,
	mem_resp_ready_o,
	mem_resp_valid_i,
	mem_resp_i,
	mem_resp_inval_i,
	mem_resp_inval_nline_i
);
	// removed localparam type hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_nline_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_nline_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_refill_data_t_HPDcacheCfg_type
	// removed localparam type hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_refill_data_t_HPDcacheCfg = 0;
	parameter [1349:0] hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_offset_t_hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_offset_t_hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_set_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_set_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_way_vector_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_way_vector_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_word_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_word_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// removed import hpdcache_pkg::*;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:32:15
	// removed localparam type hpdcache_pkg_hpdcache_victim_sel_policy_t
	// removed localparam type hpdcache_pkg_hpdcache_user_cfg_t
	// removed localparam type hpdcache_pkg_hpdcache_cfg_t
	parameter [1349:0] HPDcacheCfg = 1'sb0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:34:20
	// removed localparam type hpdcache_nline_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:35:20
	// removed localparam type hpdcache_set_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:36:20
	// removed localparam type hpdcache_tag_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:37:20
	// removed localparam type hpdcache_word_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:39:20
	// removed localparam type hpdcache_way_vector_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:41:20
	// removed localparam type hpdcache_dir_entry_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:43:20
	// removed localparam type hpdcache_refill_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:45:20
	// removed localparam type hpdcache_req_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:46:20
	// removed localparam type hpdcache_req_offset_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:47:20
	// removed localparam type hpdcache_req_sid_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:48:20
	// removed localparam type hpdcache_req_tid_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:50:20
	// removed localparam type hpdcache_req_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:51:20
	// removed localparam type hpdcache_rsp_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:53:20
	// removed localparam type hpdcache_mem_id_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:54:20
	// removed localparam type hpdcache_mem_req_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:55:20
	// removed localparam type hpdcache_mem_resp_r_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:62:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:63:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:67:5
	output wire mshr_empty_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:68:5
	output wire mshr_full_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:73:5
	input wire cfg_prefetch_updt_plru_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:78:5
	input wire mshr_check_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:79:5
	input wire [hpdcache_req_offset_t_hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg[287-:32] - 1:0] mshr_check_offset_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:80:5
	input wire [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] mshr_check_nline_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:81:5
	output wire mshr_check_hit_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:87:5
	output reg mshr_alloc_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:88:5
	input wire mshr_alloc_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:89:5
	input wire mshr_alloc_cs_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:90:5
	input wire [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] mshr_alloc_nline_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:91:5
	output wire mshr_alloc_full_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:92:5
	input wire [hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] - 1:0] mshr_alloc_tid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:93:5
	input wire [hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] - 1:0] mshr_alloc_sid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:94:5
	input wire [hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] mshr_alloc_word_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:95:5
	input wire mshr_alloc_need_rsp_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:96:5
	input wire mshr_alloc_is_prefetch_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:99:5
	input wire refill_req_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:100:5
	output wire refill_req_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:101:5
	output wire refill_busy_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:102:5
	output reg refill_sel_victim_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:103:5
	output reg refill_updt_plru_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:104:5
	output reg [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] refill_set_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:105:5
	output wire [(1 + hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0:0] refill_dir_entry_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:106:5
	input wire [hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] refill_victim_way_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:107:5
	output reg refill_write_dir_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:108:5
	output reg refill_write_data_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:109:5
	output wire [hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] refill_victim_way_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:110:5
	output wire [(hpdcache_refill_data_t_HPDcacheCfg[995-:32] * hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] refill_data_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:111:5
	output wire [hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] refill_word_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:112:5
	output wire [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] refill_nline_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:113:5
	output reg refill_updt_rtab_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:115:5
	output reg inval_check_dir_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:116:5
	output reg inval_write_dir_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:117:5
	output wire [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] inval_nline_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:118:5
	input wire inval_hit_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:121:5
	output wire refill_core_rsp_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:122:5
	output wire [(((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1:0] refill_core_rsp_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:127:5
	input wire mem_req_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:128:5
	output reg mem_req_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:129:5
	output wire [((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] mem_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:131:5
	output reg mem_resp_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:132:5
	input wire mem_resp_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:133:5
	input wire [((2 + hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0:0] mem_resp_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:134:5
	input wire mem_resp_inval_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:135:5
	input wire [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] mem_resp_inval_nline_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:142:5
	localparam [31:0] REFILL_REQ_RATIO = HPDcacheCfg[995-:32] / HPDcacheCfg[1157-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:144:5
	// removed localparam type hpdcache_pkg_hpdcache_uint32
	// removed localparam type hpdcache_pkg_hpdcache_uint
	localparam [31:0] REFILL_LAST_CHUNK_WORD = HPDcacheCfg[1189-:32] - HPDcacheCfg[995-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:147:5
	// removed localparam type miss_req_fsm_e
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:152:5
	// removed localparam type refill_fsm_e
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:159:5
	// removed localparam type hpdcache_pkg_hpdcache_mem_error_e
	// removed localparam type mem_resp_metadata_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:166:5
	// removed localparam type mshr_way_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:167:5
	// removed localparam type mshr_set_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:172:5
	reg miss_req_fsm_q;
	reg miss_req_fsm_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:173:5
	reg [HPDcacheCfg[159-:32] - 1:0] mshr_alloc_way_q;
	wire [HPDcacheCfg[159-:32] - 1:0] mshr_alloc_way_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:174:5
	reg [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] mshr_alloc_nline_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:176:5
	reg [31:0] refill_fsm_q;
	reg [31:0] refill_fsm_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:177:5
	reg [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] refill_set_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:178:5
	reg [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] refill_tag_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:179:5
	reg [hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] refill_way_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:180:5
	reg [hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] - 1:0] refill_sid_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:181:5
	reg [hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] - 1:0] refill_tid_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:182:5
	reg [hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] refill_cnt_q;
	reg [hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] refill_cnt_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:183:5
	reg refill_need_rsp_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:184:5
	reg refill_is_prefetch_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:185:5
	reg [hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] refill_core_rsp_word_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:186:5
	reg refill_way_bypass;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:188:5
	wire [(((2 + hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) + 1) + hpdcache_nline_t_HPDcacheCfg[383-:32]) - 1:0] refill_fifo_resp_meta_wdata;
	wire [(((2 + hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) + 1) + hpdcache_nline_t_HPDcacheCfg[383-:32]) - 1:0] refill_fifo_resp_meta_rdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:189:5
	wire refill_fifo_resp_meta_w;
	wire refill_fifo_resp_meta_wok;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:190:5
	reg refill_fifo_resp_meta_r;
	wire refill_fifo_resp_meta_rok;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:192:5
	wire refill_fifo_resp_data_w;
	wire refill_fifo_resp_data_wok;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:193:5
	wire [(hpdcache_refill_data_t_HPDcacheCfg[995-:32] * hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] refill_fifo_resp_data_rdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:194:5
	reg refill_fifo_resp_data_r;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:196:5
	reg refill_core_rsp_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:197:5
	wire [(hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] refill_core_rsp_rdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:198:5
	reg [hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] - 1:0] refill_core_rsp_sid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:199:5
	reg [hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] - 1:0] refill_core_rsp_tid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:200:5
	reg refill_core_rsp_error;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:201:5
	reg [hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] refill_core_rsp_word;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:202:5
	wire [(((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1:0] refill_core_rsp;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:204:5
	wire refill_is_error;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:206:5
	wire [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] mshr_check_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:207:5
	wire [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] mshr_check_tag;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:208:5
	reg mshr_alloc;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:209:5
	reg mshr_alloc_cs;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:210:5
	reg mshr_ack;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:211:5
	reg mshr_ack_cs;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:212:5
	wire [HPDcacheCfg[191-:32] - 1:0] mshr_ack_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:213:5
	wire [HPDcacheCfg[159-:32] - 1:0] mshr_ack_way;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:214:5
	wire [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] mshr_ack_cache_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:215:5
	wire [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] mshr_ack_cache_tag;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:216:5
	wire [hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] - 1:0] mshr_ack_src_id;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:217:5
	wire [hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] - 1:0] mshr_ack_req_id;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:218:5
	wire [hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] mshr_ack_word;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:219:5
	wire mshr_ack_need_rsp;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:220:5
	wire mshr_ack_is_prefetch;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:221:5
	wire mshr_empty;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:226:5
	always @(*) begin : miss_req_fsm_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:228:9
		mshr_alloc_ready_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:229:9
		mshr_alloc = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:230:9
		mshr_alloc_cs = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:231:9
		mem_req_valid_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:233:9
		miss_req_fsm_d = miss_req_fsm_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:235:9
		(* full_case, parallel_case *)
		case (miss_req_fsm_q)
			1'b0: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:237:17
				mshr_alloc_ready_o = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:238:17
				mshr_alloc = mshr_alloc_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:239:17
				mshr_alloc_cs = mshr_alloc_cs_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:240:17
				if (mshr_alloc_i)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:241:21
					miss_req_fsm_d = 1'b1;
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:243:21
					miss_req_fsm_d = 1'b0;
			end
			1'b1: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:247:17
				mem_req_valid_o = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:248:17
				if (mem_req_ready_i)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:249:21
					miss_req_fsm_d = 1'b0;
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:251:21
					miss_req_fsm_d = 1'b1;
			end
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:257:5
	localparam [31:0] REFILL_REQ_SIZE = $clog2(HPDcacheCfg[575-:32] / 8);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:258:5
	localparam [31:0] REFILL_REQ_LEN = HPDcacheCfg[543-:32] / HPDcacheCfg[575-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:260:5
	assign mem_req_o[hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))-:((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) >= (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) - (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7))) + 1 : ((11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)))) + 1)] = {mshr_alloc_nline_q, {HPDcacheCfg[447-:32] {1'b0}}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:261:5
	// removed localparam type hpdcache_pkg_hpdcache_mem_len_t
	function automatic [7:0] sv2v_cast_8;
		input reg [7:0] inp;
		sv2v_cast_8 = inp;
	endfunction
	assign mem_req_o[11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)-:((11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) >= (3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) ? ((11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) - (3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7))) + 1 : ((3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) - (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) + 1)] = sv2v_cast_8(REFILL_REQ_LEN - 1);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:262:5
	// removed localparam type hpdcache_pkg_hpdcache_mem_size_t
	function automatic [2:0] sv2v_cast_3;
		input reg [2:0] inp;
		sv2v_cast_3 = inp;
	endfunction
	assign mem_req_o[3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)-:((3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) >= (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7) ? ((3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) + 1 : ((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7) - (3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) + 1)] = sv2v_cast_3(REFILL_REQ_SIZE);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:263:5
	// removed localparam type hpdcache_pkg_hpdcache_mem_command_e
	assign mem_req_o[6-:2] = 2'b00;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:264:5
	// removed localparam type hpdcache_pkg_hpdcache_mem_atomic_e
	assign mem_req_o[4-:4] = 4'b0000;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:265:5
	assign mem_req_o[0] = 1'b1;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:267:5
	function automatic [hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] sv2v_cast_CF630;
		input reg [hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] inp;
		sv2v_cast_CF630 = inp;
	endfunction
	generate
		if ((HPDcacheCfg[963-:32] > 1) && (HPDcacheCfg[931-:32] > 1)) begin : gen_mem_id_mshr_sets_and_ways_gt_1
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:269:9
			assign mem_req_o[hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6-:((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6) >= 7 ? hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 0 : 8 - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))] = sv2v_cast_CF630({mshr_alloc_way_q, mshr_alloc_nline_q[0+:HPDcacheCfg[191-:32]]});
		end
		else if (HPDcacheCfg[963-:32] > 1) begin : gen_mem_id_mshr_sets_gt_1
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:272:9
			assign mem_req_o[hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6-:((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6) >= 7 ? hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 0 : 8 - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))] = sv2v_cast_CF630(mshr_alloc_nline_q[0+:HPDcacheCfg[191-:32]]);
		end
		else if (HPDcacheCfg[931-:32] > 1) begin : gen_mem_id_mshr_ways_gt_1
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:275:9
			assign mem_req_o[hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6-:((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6) >= 7 ? hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 0 : 8 - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))] = sv2v_cast_CF630(mshr_alloc_way_q);
		end
		else begin : gen_mem_id_mshr_sets_and_ways_eq_1
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:277:9
			assign mem_req_o[hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6-:((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6) >= 7 ? hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 0 : 8 - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))] = 1'sb0;
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:280:5
	always @(posedge clk_i) begin : miss_req_fsm_internal_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:282:9
		if (mshr_alloc) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:283:13
			mshr_alloc_way_q <= mshr_alloc_way_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:284:13
			mshr_alloc_nline_q <= mshr_alloc_nline_i;
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:288:5
	always @(posedge clk_i or negedge rst_ni) begin : miss_req_fsm_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:290:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:291:13
			miss_req_fsm_q <= 1'b0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:293:13
			miss_req_fsm_q <= miss_req_fsm_d;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:302:5
	assign refill_req_valid_o = (refill_fsm_q == 32'd0 ? refill_fifo_resp_meta_rok : 1'b0);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:306:5
	assign refill_victim_way_o = (refill_way_bypass ? refill_victim_way_i : refill_way_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:308:5
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	function automatic [hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] sv2v_cast_F0093;
		input reg [hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] inp;
		sv2v_cast_F0093 = inp;
	endfunction
	always @(*) begin : miss_resp_fsm_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:311:9
		refill_sel_victim_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:312:9
		refill_updt_plru_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:313:9
		refill_set_o = 1'sb0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:314:9
		refill_write_dir_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:315:9
		refill_write_data_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:316:9
		refill_updt_rtab_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:317:9
		refill_cnt_d = refill_cnt_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:318:9
		refill_way_bypass = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:320:9
		inval_check_dir_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:321:9
		inval_write_dir_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:323:9
		refill_core_rsp_valid = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:324:9
		refill_core_rsp_sid = 1'sb0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:325:9
		refill_core_rsp_tid = 1'sb0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:326:9
		refill_core_rsp_error = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:327:9
		refill_core_rsp_word = 0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:329:9
		refill_fifo_resp_meta_r = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:330:9
		refill_fifo_resp_data_r = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:332:9
		mshr_ack_cs = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:333:9
		mshr_ack = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:335:9
		refill_fsm_d = refill_fsm_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:337:9
		case (refill_fsm_q)
			32'd0:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:341:17
				if (refill_fifo_resp_meta_rok) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:346:21
					mshr_ack_cs = ~refill_fifo_resp_meta_rdata[hpdcache_nline_t_HPDcacheCfg[383-:32] + 0];
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:349:21
					if (refill_req_ready_i) begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:350:25
						refill_sel_victim_o = 1'b1;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:351:25
						refill_set_o = mshr_ack_cache_set;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:353:25
						if (refill_fifo_resp_meta_rdata[hpdcache_nline_t_HPDcacheCfg[383-:32] + 0]) begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:355:29
							inval_check_dir_o = 1'b1;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:357:29
							refill_fsm_d = 32'd3;
						end
						else begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:361:29
							mshr_ack = ~refill_fifo_resp_meta_rdata[hpdcache_nline_t_HPDcacheCfg[383-:32] + 0];
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:364:29
							refill_cnt_d = 0;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:366:29
							refill_fsm_d = 32'd1;
						end
					end
				end
			32'd1: begin : sv2v_autoblock_1
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:376:17
				reg is_prefetch;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:377:17
				reg [31:0] core_rsp_word;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:380:17
				if (refill_cnt_q == 0) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:381:21
					core_rsp_word = sv2v_cast_32(mshr_ack_word) / HPDcacheCfg[995-:32];
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:383:21
					if (mshr_ack_need_rsp)
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:384:25
						refill_core_rsp_valid = core_rsp_word == 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:387:21
					refill_core_rsp_sid = mshr_ack_src_id;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:388:21
					refill_core_rsp_tid = mshr_ack_req_id;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:389:21
					refill_core_rsp_error = refill_is_error;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:390:21
					refill_core_rsp_word = sv2v_cast_F0093(sv2v_cast_32(mshr_ack_word) / HPDcacheCfg[1157-:32]);
				end
				else begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:393:21
					core_rsp_word = sv2v_cast_32(refill_core_rsp_word_q) / HPDcacheCfg[995-:32];
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:396:21
					if (refill_need_rsp_q) begin : sv2v_autoblock_2
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:397:25
						reg [31:0] refill_cnt;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:398:25
						refill_cnt = sv2v_cast_32(refill_cnt_q) / HPDcacheCfg[995-:32];
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:399:25
						refill_core_rsp_valid = core_rsp_word == refill_cnt;
					end
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:402:21
					refill_core_rsp_sid = refill_sid_q;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:403:21
					refill_core_rsp_tid = refill_tid_q;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:404:21
					refill_core_rsp_error = refill_is_error;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:405:21
					refill_core_rsp_word = sv2v_cast_F0093(sv2v_cast_32(refill_core_rsp_word_q) / HPDcacheCfg[1157-:32]);
				end
				if (refill_cnt_q == 0) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:411:21
					refill_set_o = mshr_ack_cache_set;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:412:21
					refill_way_bypass = 1'b1;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:413:21
					is_prefetch = mshr_ack_is_prefetch;
				end
				else begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:415:21
					refill_set_o = refill_set_q;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:416:21
					refill_way_bypass = 1'b0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:417:21
					is_prefetch = refill_is_prefetch_q;
				end
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:419:17
				refill_write_data_o = ~refill_is_error;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:422:17
				refill_fifo_resp_data_r = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:425:17
				refill_cnt_d = refill_cnt_q + sv2v_cast_F0093(HPDcacheCfg[995-:32]);
				if (sv2v_cast_32(refill_cnt_q) == REFILL_LAST_CHUNK_WORD) begin
					begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:428:21
						if (REFILL_LAST_CHUNK_WORD == 0)
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:432:25
							refill_fsm_d = 32'd2;
						else begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:435:25
							refill_write_dir_o = ~refill_is_error;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:441:25
							refill_updt_plru_o = ~refill_is_error & (~is_prefetch | cfg_prefetch_updt_plru_i);
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:445:25
							refill_updt_rtab_o = 1'b1;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:448:25
							refill_fifo_resp_meta_r = 1'b1;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:450:25
							refill_fsm_d = 32'd0;
						end
					end
				end
			end
			32'd2: begin : sv2v_autoblock_3
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:460:17
				reg is_prefetch;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:461:17
				is_prefetch = refill_is_prefetch_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:464:17
				refill_set_o = refill_set_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:465:17
				refill_way_bypass = 1'b0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:468:17
				refill_write_dir_o = ~refill_is_error;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:474:17
				refill_updt_plru_o = ~refill_is_error & (~is_prefetch | cfg_prefetch_updt_plru_i);
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:478:17
				refill_updt_rtab_o = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:481:17
				refill_fifo_resp_meta_r = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:483:17
				refill_fsm_d = 32'd0;
			end
			32'd3: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:491:17
				inval_write_dir_o = inval_hit_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:494:17
				refill_fifo_resp_meta_r = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:496:17
				refill_fsm_d = 32'd0;
			end
			default:
				;
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:507:5
	assign refill_is_error = refill_fifo_resp_meta_rdata[2 + (hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] + (hpdcache_nline_t_HPDcacheCfg[383-:32] + 0))-:((2 + (hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] + (hpdcache_nline_t_HPDcacheCfg[383-:32] + 0))) >= (hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] + (1 + (hpdcache_nline_t_HPDcacheCfg[383-:32] + 0))) ? ((2 + (hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] + (hpdcache_nline_t_HPDcacheCfg[383-:32] + 0))) - (hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] + (1 + (hpdcache_nline_t_HPDcacheCfg[383-:32] + 0)))) + 1 : ((hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] + (1 + (hpdcache_nline_t_HPDcacheCfg[383-:32] + 0))) - (2 + (hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] + (hpdcache_nline_t_HPDcacheCfg[383-:32] + 0)))) + 1)] == 2'b01;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:509:5
	assign refill_busy_o = refill_fsm_q != 32'd0;
	assign refill_nline_o = {refill_tag_q, refill_set_q};
	assign refill_word_o = refill_cnt_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:513:5
	assign inval_nline_o = refill_fifo_resp_meta_rdata[hpdcache_nline_t_HPDcacheCfg[383-:32] - 1-:hpdcache_nline_t_HPDcacheCfg[383-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:515:5
	assign mshr_check_tag = mshr_check_nline_i[HPDcacheCfg[415-:32]+:HPDcacheCfg[351-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:516:5
	assign mshr_check_set = mshr_check_offset_i[HPDcacheCfg[447-:32]+:HPDcacheCfg[415-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:518:5
	generate
		if (HPDcacheCfg[963-:32] > 1) begin : gen_mshr_set_gt_1
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:520:9
			assign mshr_ack_set = refill_fifo_resp_meta_rdata[(hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] + (hpdcache_nline_t_HPDcacheCfg[383-:32] + 0)) - (hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1)+:HPDcacheCfg[191-:32]];
			if (HPDcacheCfg[931-:32] > 1) begin : gen_mshr_ack_way_gt_1
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:522:13
				assign mshr_ack_way = refill_fifo_resp_meta_rdata[(hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] + (hpdcache_nline_t_HPDcacheCfg[383-:32] + 0)) - ((hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1) - HPDcacheCfg[191-:32])+:HPDcacheCfg[159-:32]];
			end
			else begin : gen_mshr_ack_way_eq_1
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:525:13
				assign mshr_ack_way = 1'sb0;
			end
		end
		else begin : gen_mshr_set_eq_1
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:529:9
			assign mshr_ack_set = 1'sb0;
			if (HPDcacheCfg[931-:32] > 1) begin : gen_mshr_ack_way_gt_1
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:531:13
				assign mshr_ack_way = refill_fifo_resp_meta_rdata[(hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] + (hpdcache_nline_t_HPDcacheCfg[383-:32] + 0)) - (hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1)+:HPDcacheCfg[159-:32]];
			end
			else begin : gen_mshr_ack_way_eq_1
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:533:13
				assign mshr_ack_way = 1'sb0;
			end
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:537:5
	assign refill_dir_entry_o[1 + (hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0)] = 1'b1;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:538:5
	assign refill_dir_entry_o[hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0-:((hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0) >= 1 ? hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0 : 2 - (hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] + 0))] = refill_tag_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:539:5
	assign refill_dir_entry_o[0] = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:541:5
	assign refill_core_rsp[(hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1))-:(((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1))) >= (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2)) ? (((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1))) - (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2))) + 1 : ((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2)) - ((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1)))) + 1)] = refill_core_rsp_rdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:542:5
	assign refill_core_rsp[hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1)-:((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1)) >= (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2) ? ((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1)) - (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2)) + 1 : ((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2) - (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1))) + 1)] = refill_core_rsp_sid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:543:5
	assign refill_core_rsp[hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1-:((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1) >= 2 ? hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 0 : 3 - (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1))] = refill_core_rsp_tid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:544:5
	assign refill_core_rsp[1] = refill_core_rsp_error;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:545:5
	assign refill_core_rsp[0] = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:547:5
	hpdcache_fifo_reg_77EEE_CBEAA #(
		.fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg(hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg),
		.FIFO_DEPTH(1),
		.FEEDTHROUGH(HPDcacheCfg[833])
	) i_refill_core_rsp_buf(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.w_i(refill_core_rsp_valid),
		.wok_o(),
		.wdata_i(refill_core_rsp),
		.r_i(1'b1),
		.rok_o(refill_core_rsp_valid_o),
		.rdata_o(refill_core_rsp_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:563:5
	generate
		if (REFILL_REQ_RATIO > 1) begin : gen_core_rsp_data_mux
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:564:9
			hpdcache_mux #(
				.NINPUT(REFILL_REQ_RATIO),
				.DATA_WIDTH(HPDcacheCfg[255-:32])
			) data_read_rsp_mux_i(
				.data_i(refill_data_o),
				.sel_i(refill_core_rsp_word[0+:$clog2(REFILL_REQ_RATIO)]),
				.data_o(refill_core_rsp_rdata)
			);
		end
		else begin : gen_core_rsp_eqsize
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:576:9
			assign refill_core_rsp_rdata = refill_data_o;
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:581:5
	function automatic [1:0] sv2v_cast_2;
		input reg [1:0] inp;
		sv2v_cast_2 = inp;
	endfunction
	function automatic [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] sv2v_cast_A0071;
		input reg [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] inp;
		sv2v_cast_A0071 = inp;
	endfunction
	assign refill_fifo_resp_meta_wdata = {sv2v_cast_2(mem_resp_i[2 + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))-:((2 + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))) >= (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1)) ? ((2 + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))) - (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1))) + 1 : ((hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1)) - (2 + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)))) + 1)]), sv2v_cast_CF630(mem_resp_i[hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)-:((hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)) >= (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1) ? ((hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)) - (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1)) + 1 : ((hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1) - (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))) + 1)]), mem_resp_inval_i, sv2v_cast_A0071(mem_resp_inval_nline_i)};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:588:5
	hpdcache_fifo_reg_39EDB_3F998 #(
		.fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg(hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg),
		.fifo_data_t_hpdcache_nline_t_HPDcacheCfg(hpdcache_nline_t_HPDcacheCfg),
		.FIFO_DEPTH($signed(HPDcacheCfg[832-:32]))
	) i_r_metadata_fifo(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.w_i(refill_fifo_resp_meta_w),
		.wok_o(refill_fifo_resp_meta_wok),
		.wdata_i(refill_fifo_resp_meta_wdata),
		.r_i(refill_fifo_resp_meta_r),
		.rok_o(refill_fifo_resp_meta_rok),
		.rdata_o(refill_fifo_resp_meta_rdata)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:604:5
	generate
		if (HPDcacheCfg[575-:32] < HPDcacheCfg[31-:32]) begin : gen_upsize_mem_data
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:606:9
			hpdcache_data_upsize #(
				.WR_WIDTH(HPDcacheCfg[575-:32]),
				.RD_WIDTH(HPDcacheCfg[31-:32]),
				.DEPTH($signed(HPDcacheCfg[832-:32]) * (HPDcacheCfg[543-:32] / HPDcacheCfg[31-:32]))
			) i_rdata_upsize(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.w_i(refill_fifo_resp_data_w),
				.wlast_i(mem_resp_i[0]),
				.wok_o(refill_fifo_resp_data_wok),
				.wdata_i(mem_resp_i[hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0-:((hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0) >= 1 ? hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0 : 2 - (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))]),
				.r_i(refill_fifo_resp_data_r),
				.rok_o(),
				.rdata_o(refill_fifo_resp_data_rdata)
			);
		end
		else if (HPDcacheCfg[575-:32] > HPDcacheCfg[31-:32]) begin : gen_downsize_mem_data
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:625:9
			hpdcache_data_downsize #(
				.WR_WIDTH(HPDcacheCfg[575-:32]),
				.RD_WIDTH(HPDcacheCfg[31-:32]),
				.DEPTH($signed(HPDcacheCfg[832-:32]) * (HPDcacheCfg[543-:32] / HPDcacheCfg[575-:32]))
			) i_rdata_downsize(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.w_i(refill_fifo_resp_data_w),
				.wok_o(refill_fifo_resp_data_wok),
				.wdata_i(mem_resp_i[hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0-:((hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0) >= 1 ? hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0 : 2 - (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))]),
				.r_i(refill_fifo_resp_data_r),
				.rok_o(),
				.rdata_o(refill_fifo_resp_data_rdata)
			);
		end
		else begin : gen_eqsize_mem_data
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:643:9
			hpdcache_fifo_reg_49514_9F998 #(
				.fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg(hpdcache_refill_data_t_HPDcacheCfg),
				.fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg(hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg),
				.FIFO_DEPTH($signed(HPDcacheCfg[832-:32]))
			) i_rdata_fifo(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.w_i(refill_fifo_resp_data_w),
				.wok_o(refill_fifo_resp_data_wok),
				.wdata_i(mem_resp_i[hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0-:((hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0) >= 1 ? hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0 : 2 - (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))]),
				.r_i(refill_fifo_resp_data_r),
				.rok_o(),
				.rdata_o(refill_fifo_resp_data_rdata)
			);
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:660:5
	assign refill_data_o = refill_fifo_resp_data_rdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:663:5
	assign refill_fifo_resp_data_w = mem_resp_valid_i & ((refill_fifo_resp_meta_wok | ~mem_resp_i[0]) & ~mem_resp_inval_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:668:5
	assign refill_fifo_resp_meta_w = mem_resp_valid_i & ((refill_fifo_resp_data_wok & mem_resp_i[0]) | mem_resp_inval_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:672:5
	always @(*) begin : mem_resp_ready_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:674:9
		mem_resp_ready_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:675:9
		if (mem_resp_valid_i) begin
			begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:676:13
				if (mem_resp_inval_i)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:677:17
					mem_resp_ready_o = refill_fifo_resp_meta_wok;
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:679:17
					mem_resp_ready_o = (refill_fifo_resp_meta_wok | ~mem_resp_i[0]) & refill_fifo_resp_data_wok;
			end
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:685:5
	always @(posedge clk_i or negedge rst_ni) begin : miss_resp_fsm_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:687:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:688:13
			refill_fsm_q <= 32'd0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:690:13
			refill_fsm_q <= refill_fsm_d;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:694:5
	always @(posedge clk_i) begin : miss_resp_fsm_internal_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:696:9
		if ((refill_fsm_q == 32'd1) && (refill_cnt_q == 0)) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:697:13
			refill_set_q <= mshr_ack_cache_set;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:698:13
			refill_tag_q <= mshr_ack_cache_tag;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:699:13
			refill_way_q <= refill_victim_way_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:700:13
			refill_sid_q <= mshr_ack_src_id;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:701:13
			refill_tid_q <= mshr_ack_req_id;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:702:13
			refill_need_rsp_q <= mshr_ack_need_rsp;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:703:13
			refill_is_prefetch_q <= mshr_ack_is_prefetch;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:704:13
			refill_core_rsp_word_q <= mshr_ack_word;
		end
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:706:9
		refill_cnt_q <= refill_cnt_d;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:713:5
	hpdcache_mshr_FE4BD_C5402 #(
		.hpdcache_nline_t_hpdcache_nline_t_HPDcacheCfg(hpdcache_nline_t_HPDcacheCfg),
		.hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg(hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg),
		.hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg(hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg),
		.hpdcache_set_t_hpdcache_set_t_HPDcacheCfg(hpdcache_set_t_HPDcacheCfg),
		.hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg(hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg),
		.hpdcache_word_t_hpdcache_word_t_HPDcacheCfg(hpdcache_word_t_HPDcacheCfg),
		.mshr_set_t_HPDcacheCfg(HPDcacheCfg),
		.mshr_way_t_HPDcacheCfg(HPDcacheCfg),
		.HPDcacheCfg(HPDcacheCfg)
	) hpdcache_mshr_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.empty_o(mshr_empty),
		.full_o(mshr_full_o),
		.check_i(mshr_check_i),
		.check_set_i(mshr_check_set),
		.check_tag_i(mshr_check_tag),
		.hit_o(mshr_check_hit_o),
		.alloc_i(mshr_alloc),
		.alloc_cs_i(mshr_alloc_cs),
		.alloc_nline_i(mshr_alloc_nline_i),
		.alloc_req_id_i(mshr_alloc_tid_i),
		.alloc_src_id_i(mshr_alloc_sid_i),
		.alloc_word_i(mshr_alloc_word_i),
		.alloc_need_rsp_i(mshr_alloc_need_rsp_i),
		.alloc_is_prefetch_i(mshr_alloc_is_prefetch_i),
		.alloc_full_o(mshr_alloc_full_o),
		.alloc_way_o(mshr_alloc_way_d),
		.ack_i(mshr_ack),
		.ack_cs_i(mshr_ack_cs),
		.ack_set_i(mshr_ack_set),
		.ack_way_i(mshr_ack_way),
		.ack_req_id_o(mshr_ack_req_id),
		.ack_src_id_o(mshr_ack_src_id),
		.ack_cache_set_o(mshr_ack_cache_set),
		.ack_cache_tag_o(mshr_ack_cache_tag),
		.ack_word_o(mshr_ack_word),
		.ack_need_rsp_o(mshr_ack_need_rsp),
		.ack_is_prefetch_o(mshr_ack_is_prefetch)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv:763:5
	assign mshr_empty_o = mshr_empty & ~refill_busy_o;
	initial _sv2v_0 = 0;
endmodule
