module hpdcache_90ACD_E6E47 (
	clk_i,
	rst_ni,
	wbuf_flush_i,
	core_req_valid_i,
	core_req_ready_o,
	core_req_i,
	core_req_abort_i,
	core_req_tag_i,
	core_req_pma_i,
	core_rsp_valid_o,
	core_rsp_o,
	mem_req_miss_read_ready_i,
	mem_req_miss_read_valid_o,
	mem_req_miss_read_o,
	mem_resp_miss_read_ready_o,
	mem_resp_miss_read_valid_i,
	mem_resp_miss_read_i,
	mem_req_wbuf_write_ready_i,
	mem_req_wbuf_write_valid_o,
	mem_req_wbuf_write_o,
	mem_req_wbuf_write_data_ready_i,
	mem_req_wbuf_write_data_valid_o,
	mem_req_wbuf_write_data_o,
	mem_resp_wbuf_write_ready_o,
	mem_resp_wbuf_write_valid_i,
	mem_resp_wbuf_write_i,
	mem_req_uc_read_ready_i,
	mem_req_uc_read_valid_o,
	mem_req_uc_read_o,
	mem_resp_uc_read_ready_o,
	mem_resp_uc_read_valid_i,
	mem_resp_uc_read_i,
	mem_req_uc_write_ready_i,
	mem_req_uc_write_valid_o,
	mem_req_uc_write_o,
	mem_req_uc_write_data_ready_i,
	mem_req_uc_write_data_valid_o,
	mem_req_uc_write_data_o,
	mem_resp_uc_write_ready_o,
	mem_resp_uc_write_valid_i,
	mem_resp_uc_write_i,
	evt_cache_write_miss_o,
	evt_cache_read_miss_o,
	evt_uncached_req_o,
	evt_cmo_req_o,
	evt_write_req_o,
	evt_read_req_o,
	evt_prefetch_req_o,
	evt_req_on_hold_o,
	evt_rtab_rollback_o,
	evt_stall_refill_o,
	evt_stall_o,
	wbuf_empty_o,
	cfg_enable_i,
	cfg_wbuf_threshold_i,
	cfg_wbuf_reset_timecnt_on_write_i,
	cfg_wbuf_sequential_waw_i,
	cfg_wbuf_inhibit_write_coalescing_i,
	cfg_prefetch_updt_plru_i,
	cfg_error_on_cacheable_amo_i,
	cfg_rtab_single_entry_i
);
	// removed localparam type hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_addr_t_hpdcache_mem_addr_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_addr_t_hpdcache_mem_addr_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_be_t_hpdcache_mem_be_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_be_t_hpdcache_mem_be_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_data_t_hpdcache_mem_data_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_data_t_hpdcache_mem_data_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_t_hpdcache_req_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_t_hpdcache_req_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg = 0;
	// removed localparam type wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg_type
	parameter [1349:0] wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg = 0;
	// removed import hpdcache_pkg::*;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:33:15
	// removed localparam type hpdcache_pkg_hpdcache_victim_sel_policy_t
	// removed localparam type hpdcache_pkg_hpdcache_user_cfg_t
	// removed localparam type hpdcache_pkg_hpdcache_cfg_t
	parameter [1349:0] HPDcacheCfg = 1'sb0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:35:20
	// removed localparam type wbuf_timecnt_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:39:20
	// removed localparam type hpdcache_tag_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:40:20
	// removed localparam type hpdcache_data_word_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:41:20
	// removed localparam type hpdcache_data_be_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:42:20
	// removed localparam type hpdcache_req_offset_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:43:20
	// removed localparam type hpdcache_req_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:44:20
	// removed localparam type hpdcache_req_be_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:45:20
	// removed localparam type hpdcache_req_sid_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:46:20
	// removed localparam type hpdcache_req_tid_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:47:20
	// removed localparam type hpdcache_req_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:48:20
	// removed localparam type hpdcache_rsp_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:53:20
	// removed localparam type hpdcache_mem_addr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:54:20
	// removed localparam type hpdcache_mem_id_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:55:20
	// removed localparam type hpdcache_mem_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:56:20
	// removed localparam type hpdcache_mem_be_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:57:20
	// removed localparam type hpdcache_mem_req_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:58:20
	// removed localparam type hpdcache_mem_req_w_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:59:20
	// removed localparam type hpdcache_mem_resp_r_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:60:20
	// removed localparam type hpdcache_mem_resp_w_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:69:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:70:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:73:5
	input wire wbuf_flush_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:77:5
	input wire [0:HPDcacheCfg[1349-:32] - 1] core_req_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:78:5
	output wire [0:HPDcacheCfg[1349-:32] - 1] core_req_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:79:5
	input wire [((((((((((hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? (HPDcacheCfg[1349-:32] * (((((((((hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2)) - 1 : (HPDcacheCfg[1349-:32] * (1 - (((((((((hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + (((((((((hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 0)):((((((((((hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 0 : ((((((((hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1)] core_req_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:81:5
	input wire [0:HPDcacheCfg[1349-:32] - 1] core_req_abort_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:82:5
	input wire [(HPDcacheCfg[1349-:32] * hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) - 1:0] core_req_tag_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:83:5
	// removed localparam type hpdcache_pkg_hpdcache_pma_t
	input wire [(HPDcacheCfg[1349-:32] * 2) - 1:0] core_req_pma_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:86:5
	output wire [0:HPDcacheCfg[1349-:32] - 1] core_rsp_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:87:5
	output wire [(((((hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (HPDcacheCfg[1349-:32] * ((((hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2)) - 1 : (HPDcacheCfg[1349-:32] * (1 - ((((hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1))) + ((((hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 0)):(((((hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? 0 : (((hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1)] core_rsp_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:90:5
	input wire mem_req_miss_read_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:91:5
	output wire mem_req_miss_read_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:92:5
	output wire [((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] mem_req_miss_read_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:94:5
	output wire mem_resp_miss_read_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:95:5
	input wire mem_resp_miss_read_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:96:5
	input wire [((2 + hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0:0] mem_resp_miss_read_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:103:5
	input wire mem_req_wbuf_write_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:104:5
	output wire mem_req_wbuf_write_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:105:5
	output wire [((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] mem_req_wbuf_write_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:107:5
	input wire mem_req_wbuf_write_data_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:108:5
	output wire mem_req_wbuf_write_data_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:109:5
	output wire [(hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0:0] mem_req_wbuf_write_data_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:111:5
	output wire mem_resp_wbuf_write_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:112:5
	input wire mem_resp_wbuf_write_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:113:5
	input wire [(3 + hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]) - 1:0] mem_resp_wbuf_write_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:116:5
	input wire mem_req_uc_read_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:117:5
	output wire mem_req_uc_read_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:118:5
	output wire [((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] mem_req_uc_read_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:120:5
	output wire mem_resp_uc_read_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:121:5
	input wire mem_resp_uc_read_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:122:5
	input wire [((2 + hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0:0] mem_resp_uc_read_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:125:5
	input wire mem_req_uc_write_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:126:5
	output wire mem_req_uc_write_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:127:5
	output wire [((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] mem_req_uc_write_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:129:5
	input wire mem_req_uc_write_data_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:130:5
	output wire mem_req_uc_write_data_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:131:5
	output wire [(hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0:0] mem_req_uc_write_data_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:133:5
	output wire mem_resp_uc_write_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:134:5
	input wire mem_resp_uc_write_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:135:5
	input wire [(3 + hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]) - 1:0] mem_resp_uc_write_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:138:5
	output wire evt_cache_write_miss_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:139:5
	output wire evt_cache_read_miss_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:140:5
	output wire evt_uncached_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:141:5
	output wire evt_cmo_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:142:5
	output wire evt_write_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:143:5
	output wire evt_read_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:144:5
	output wire evt_prefetch_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:145:5
	output wire evt_req_on_hold_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:146:5
	output wire evt_rtab_rollback_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:147:5
	output wire evt_stall_refill_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:148:5
	output wire evt_stall_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:151:5
	output wire wbuf_empty_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:154:5
	input wire cfg_enable_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:155:5
	input wire [wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] - 1:0] cfg_wbuf_threshold_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:156:5
	input wire cfg_wbuf_reset_timecnt_on_write_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:157:5
	input wire cfg_wbuf_sequential_waw_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:158:5
	input wire cfg_wbuf_inhibit_write_coalescing_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:159:5
	input wire cfg_prefetch_updt_plru_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:160:5
	input wire cfg_error_on_cacheable_amo_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:161:5
	input wire cfg_rtab_single_entry_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:167:5
	// removed localparam type hpdcache_req_addr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:168:5
	// removed localparam type hpdcache_nline_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:169:5
	// removed localparam type hpdcache_set_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:170:5
	// removed localparam type hpdcache_offset_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:171:5
	// removed localparam type hpdcache_word_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:172:5
	// removed localparam type hpdcache_way_vector_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:174:5
	// removed localparam type hpdcache_dir_entry_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:180:5
	// removed localparam type hpdcache_refill_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:181:5
	// removed localparam type hpdcache_refill_be_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:183:5
	// removed localparam type wbuf_addr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:184:5
	// removed localparam type wbuf_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:185:5
	// removed localparam type wbuf_be_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:190:5
	wire refill_req_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:191:5
	wire refill_req_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:192:5
	wire refill_busy;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:193:5
	wire refill_sel_victim;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:194:5
	wire refill_updt_plru;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:195:5
	wire [HPDcacheCfg[415-:32] - 1:0] refill_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:196:5
	wire [(1 + hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) + 0:0] refill_dir_entry;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:197:5
	wire [HPDcacheCfg[1221-:32] - 1:0] refill_read_victim_way;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:198:5
	wire [HPDcacheCfg[1221-:32] - 1:0] refill_write_victim_way;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:199:5
	wire refill_write_dir;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:200:5
	wire refill_write_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:201:5
	wire [HPDcacheCfg[511-:32] - 1:0] refill_word;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:202:5
	wire [(HPDcacheCfg[995-:32] * hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] refill_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:203:5
	wire refill_core_rsp_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:204:5
	wire [(((hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1:0] refill_core_rsp;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:205:5
	wire [HPDcacheCfg[383-:32] - 1:0] refill_nline;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:206:5
	wire refill_updt_rtab;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:208:5
	wire inval_check_dir;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:209:5
	wire inval_write_dir;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:210:5
	wire [HPDcacheCfg[383-:32] - 1:0] inval_nline;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:211:5
	wire inval_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:213:5
	wire miss_mshr_empty;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:214:5
	wire miss_mshr_check;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:215:5
	wire [hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg[287-:32] - 1:0] miss_mshr_check_offset;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:216:5
	wire [HPDcacheCfg[383-:32] - 1:0] miss_mshr_check_nline;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:217:5
	wire miss_mshr_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:218:5
	wire miss_mshr_alloc_cs;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:219:5
	wire miss_mshr_alloc;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:220:5
	wire miss_mshr_alloc_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:221:5
	wire miss_mshr_alloc_full;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:222:5
	wire [HPDcacheCfg[383-:32] - 1:0] miss_mshr_alloc_nline;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:223:5
	wire [hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] - 1:0] miss_mshr_alloc_tid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:224:5
	wire [hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] - 1:0] miss_mshr_alloc_sid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:225:5
	wire [HPDcacheCfg[511-:32] - 1:0] miss_mshr_alloc_word;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:226:5
	wire miss_mshr_alloc_need_rsp;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:227:5
	wire miss_mshr_alloc_is_prefetch;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:229:5
	wire wbuf_flush_all;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:230:5
	wire wbuf_write;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:231:5
	wire wbuf_write_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:232:5
	wire [HPDcacheCfg[1317-:32] - 1:0] wbuf_write_addr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:233:5
	wire [(hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] wbuf_write_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:234:5
	wire [(hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1157-:32] * (hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1285-:32] / 8)) - 1:0] wbuf_write_be;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:235:5
	wire wbuf_write_uncacheable;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:236:5
	wire wbuf_read_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:237:5
	wire wbuf_read_flush_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:238:5
	wire [HPDcacheCfg[1317-:32] - 1:0] wbuf_rtab_addr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:239:5
	wire wbuf_rtab_is_read;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:240:5
	wire wbuf_rtab_hit_open;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:241:5
	wire wbuf_rtab_hit_pend;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:242:5
	wire wbuf_rtab_hit_sent;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:243:5
	wire wbuf_rtab_not_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:245:5
	wire uc_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:246:5
	wire uc_req_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:247:5
	// removed localparam type hpdcache_pkg_hpdcache_uc_op_t
	wire [12:0] uc_req_op;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:248:5
	wire [HPDcacheCfg[1317-:32] - 1:0] uc_req_addr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:249:5
	// removed localparam type hpdcache_pkg_hpdcache_req_size_t
	wire [2:0] uc_req_size;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:250:5
	wire [(hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] uc_req_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:251:5
	wire [(hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1157-:32] * (hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1285-:32] / 8)) - 1:0] uc_req_be;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:252:5
	wire uc_req_uncacheable;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:253:5
	wire [hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] - 1:0] uc_req_sid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:254:5
	wire [hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] - 1:0] uc_req_tid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:255:5
	wire uc_req_need_rsp;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:256:5
	wire uc_wbuf_flush_all;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:257:5
	wire uc_dir_amo_match;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:258:5
	wire [HPDcacheCfg[415-:32] - 1:0] uc_dir_amo_match_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:259:5
	wire [hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] uc_dir_amo_match_tag;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:260:5
	wire uc_dir_amo_update_plru;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:261:5
	wire [HPDcacheCfg[1221-:32] - 1:0] uc_dir_amo_hit_way;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:262:5
	wire uc_data_amo_write;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:263:5
	wire uc_data_amo_write_enable;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:264:5
	wire [HPDcacheCfg[415-:32] - 1:0] uc_data_amo_write_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:265:5
	wire [2:0] uc_data_amo_write_size;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:266:5
	wire [HPDcacheCfg[511-:32] - 1:0] uc_data_amo_write_word;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:267:5
	wire [(hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] uc_data_amo_write_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:268:5
	wire [(hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1157-:32] * (hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1285-:32] / 8)) - 1:0] uc_data_amo_write_be;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:269:5
	wire uc_lrsc_snoop;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:270:5
	wire [HPDcacheCfg[1317-:32] - 1:0] uc_lrsc_snoop_addr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:271:5
	wire [2:0] uc_lrsc_snoop_size;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:272:5
	wire uc_core_rsp_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:273:5
	wire uc_core_rsp_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:274:5
	wire [(((hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1:0] uc_core_rsp;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:276:5
	wire cmo_req_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:277:5
	wire cmo_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:278:5
	// removed localparam type hpdcache_pkg_hpdcache_cmoh_op_t
	wire [3:0] cmo_req_op;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:279:5
	wire [HPDcacheCfg[1317-:32] - 1:0] cmo_req_addr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:280:5
	wire [(hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] cmo_req_wdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:281:5
	wire cmo_wbuf_flush_all;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:282:5
	wire cmo_dir_check;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:283:5
	wire [HPDcacheCfg[415-:32] - 1:0] cmo_dir_check_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:284:5
	wire [hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] cmo_dir_check_tag;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:285:5
	wire [HPDcacheCfg[1221-:32] - 1:0] cmo_dir_check_hit_way;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:286:5
	wire cmo_dir_inval;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:287:5
	wire [HPDcacheCfg[415-:32] - 1:0] cmo_dir_inval_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:288:5
	wire [HPDcacheCfg[1221-:32] - 1:0] cmo_dir_inval_way;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:289:5
	wire cmo_wait;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:291:5
	wire rtab_empty;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:292:5
	wire ctrl_empty;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:294:5
	wire core_rsp_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:295:5
	wire [(((hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1:0] core_rsp;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:297:5
	wire arb_req_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:298:5
	wire arb_req_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:299:5
	wire [((((((((hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1:0] arb_req;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:300:5
	wire arb_abort;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:301:5
	wire [hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] arb_tag;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:302:5
	wire [1:0] arb_pma;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:304:5
	localparam [HPDcacheCfg[607-:32] - 1:0] HPDCACHE_UC_READ_ID = {HPDcacheCfg[607-:32] {1'b1}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:306:5
	localparam [HPDcacheCfg[607-:32] - 1:0] HPDCACHE_UC_WRITE_ID = {HPDcacheCfg[607-:32] {1'b1}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:312:5
	hpdcache_core_arbiter_2E6C6_AC782 #(
		.hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg(hpdcache_req_t_hpdcache_req_t_HPDcacheCfg),
		.hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg(hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg),
		.hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg(hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg),
		.HPDcacheCfg(HPDcacheCfg)
	) core_req_arbiter_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.core_req_valid_i(core_req_valid_i),
		.core_req_ready_o(core_req_ready_o),
		.core_req_i(core_req_i),
		.core_req_abort_i(core_req_abort_i),
		.core_req_tag_i(core_req_tag_i),
		.core_req_pma_i(core_req_pma_i),
		.core_rsp_valid_i(core_rsp_valid),
		.core_rsp_i(core_rsp),
		.core_rsp_valid_o(core_rsp_valid_o),
		.core_rsp_o(core_rsp_o),
		.arb_req_valid_o(arb_req_valid),
		.arb_req_ready_i(arb_req_ready),
		.arb_req_o(arb_req),
		.arb_abort_o(arb_abort),
		.arb_tag_o(arb_tag),
		.arb_pma_o(arb_pma)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:344:5
	hpdcache_ctrl_9FAF1_89982 #(
		.hpdcache_data_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg(hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg),
		.hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg(hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg),
		.hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg(hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg),
		.hpdcache_nline_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_refill_be_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_refill_be_t_hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg(hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg),
		.hpdcache_refill_data_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg(hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg),
		.hpdcache_req_addr_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg(hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg),
		.hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg(hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg),
		.hpdcache_req_offset_t_hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg(hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg),
		.hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg(hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg),
		.hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg(hpdcache_req_t_hpdcache_req_t_HPDcacheCfg),
		.hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg(hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg),
		.hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg(hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg),
		.hpdcache_set_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg(hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg),
		.hpdcache_way_vector_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_word_t_HPDcacheCfg(HPDcacheCfg),
		.wbuf_addr_t_HPDcacheCfg(HPDcacheCfg),
		.wbuf_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg(hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg),
		.wbuf_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg(hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg),
		.HPDcacheCfg(HPDcacheCfg)
	) hpdcache_ctrl_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.core_req_valid_i(arb_req_valid),
		.core_req_ready_o(arb_req_ready),
		.core_req_i(arb_req),
		.core_req_abort_i(arb_abort),
		.core_req_tag_i(arb_tag),
		.core_req_pma_i(arb_pma),
		.core_rsp_valid_o(core_rsp_valid),
		.core_rsp_o(core_rsp),
		.wbuf_flush_i(wbuf_flush_i),
		.cachedir_hit_o(),
		.miss_mshr_check_o(miss_mshr_check),
		.miss_mshr_check_offset_o(miss_mshr_check_offset),
		.miss_mshr_check_nline_o(miss_mshr_check_nline),
		.miss_mshr_alloc_o(miss_mshr_alloc),
		.miss_mshr_alloc_cs_o(miss_mshr_alloc_cs),
		.miss_mshr_alloc_ready_i(miss_mshr_alloc_ready),
		.miss_mshr_alloc_full_i(miss_mshr_alloc_full),
		.miss_mshr_alloc_nline_o(miss_mshr_alloc_nline),
		.miss_mshr_alloc_tid_o(miss_mshr_alloc_tid),
		.miss_mshr_alloc_sid_o(miss_mshr_alloc_sid),
		.miss_mshr_alloc_word_o(miss_mshr_alloc_word),
		.miss_mshr_alloc_need_rsp_o(miss_mshr_alloc_need_rsp),
		.miss_mshr_alloc_is_prefetch_o(miss_mshr_alloc_is_prefetch),
		.miss_mshr_hit_i(miss_mshr_hit),
		.refill_req_valid_i(refill_req_valid),
		.refill_req_ready_o(refill_req_ready),
		.refill_busy_i(refill_busy),
		.refill_sel_victim_i(refill_sel_victim),
		.refill_updt_plru_i(refill_updt_plru),
		.refill_set_i(refill_set),
		.refill_dir_entry_i(refill_dir_entry),
		.refill_victim_way_o(refill_read_victim_way),
		.refill_victim_way_i(refill_write_victim_way),
		.refill_write_dir_i(refill_write_dir),
		.refill_write_data_i(refill_write_data),
		.refill_word_i(refill_word),
		.refill_data_i(refill_data),
		.refill_core_rsp_valid_i(refill_core_rsp_valid),
		.refill_core_rsp_i(refill_core_rsp),
		.refill_nline_i(refill_nline),
		.refill_updt_rtab_i(refill_updt_rtab),
		.inval_check_dir_i(inval_check_dir),
		.inval_write_dir_i(inval_write_dir),
		.inval_nline_i(inval_nline),
		.inval_hit_o(inval_hit),
		.wbuf_empty_i(wbuf_empty_o),
		.wbuf_flush_all_o(wbuf_flush_all),
		.wbuf_write_o(wbuf_write),
		.wbuf_write_ready_i(wbuf_write_ready),
		.wbuf_write_addr_o(wbuf_write_addr),
		.wbuf_write_data_o(wbuf_write_data),
		.wbuf_write_be_o(wbuf_write_be),
		.wbuf_write_uncacheable_o(wbuf_write_uncacheable),
		.wbuf_read_hit_i(wbuf_read_hit),
		.wbuf_read_flush_hit_o(wbuf_read_flush_hit),
		.wbuf_rtab_addr_o(wbuf_rtab_addr),
		.wbuf_rtab_is_read_o(wbuf_rtab_is_read),
		.wbuf_rtab_hit_open_i(wbuf_rtab_hit_open),
		.wbuf_rtab_hit_pend_i(wbuf_rtab_hit_pend),
		.wbuf_rtab_hit_sent_i(wbuf_rtab_hit_sent),
		.wbuf_rtab_not_ready_i(wbuf_rtab_not_ready),
		.uc_busy_i(~uc_ready),
		.uc_lrsc_snoop_o(uc_lrsc_snoop),
		.uc_lrsc_snoop_addr_o(uc_lrsc_snoop_addr),
		.uc_lrsc_snoop_size_o(uc_lrsc_snoop_size),
		.uc_req_valid_o(uc_req_valid),
		.uc_req_op_o(uc_req_op),
		.uc_req_addr_o(uc_req_addr),
		.uc_req_size_o(uc_req_size),
		.uc_req_data_o(uc_req_data),
		.uc_req_be_o(uc_req_be),
		.uc_req_uc_o(uc_req_uncacheable),
		.uc_req_sid_o(uc_req_sid),
		.uc_req_tid_o(uc_req_tid),
		.uc_req_need_rsp_o(uc_req_need_rsp),
		.uc_wbuf_flush_all_i(uc_wbuf_flush_all),
		.uc_dir_amo_match_i(uc_dir_amo_match),
		.uc_dir_amo_match_set_i(uc_dir_amo_match_set),
		.uc_dir_amo_match_tag_i(uc_dir_amo_match_tag),
		.uc_dir_amo_update_plru_i(uc_dir_amo_update_plru),
		.uc_dir_amo_hit_way_o(uc_dir_amo_hit_way),
		.uc_data_amo_write_i(uc_data_amo_write),
		.uc_data_amo_write_enable_i(uc_data_amo_write_enable),
		.uc_data_amo_write_set_i(uc_data_amo_write_set),
		.uc_data_amo_write_size_i(uc_data_amo_write_size),
		.uc_data_amo_write_word_i(uc_data_amo_write_word),
		.uc_data_amo_write_data_i(uc_data_amo_write_data),
		.uc_data_amo_write_be_i(uc_data_amo_write_be),
		.uc_core_rsp_ready_o(uc_core_rsp_ready),
		.uc_core_rsp_valid_i(uc_core_rsp_valid),
		.uc_core_rsp_i(uc_core_rsp),
		.cmo_busy_i(~cmo_ready),
		.cmo_wait_i(cmo_wait),
		.cmo_req_valid_o(cmo_req_valid),
		.cmo_req_op_o(cmo_req_op),
		.cmo_req_addr_o(cmo_req_addr),
		.cmo_req_wdata_o(cmo_req_wdata),
		.cmo_wbuf_flush_all_i(cmo_wbuf_flush_all),
		.cmo_dir_check_i(cmo_dir_check),
		.cmo_dir_check_set_i(cmo_dir_check_set),
		.cmo_dir_check_tag_i(cmo_dir_check_tag),
		.cmo_dir_check_hit_way_o(cmo_dir_check_hit_way),
		.cmo_dir_inval_i(cmo_dir_inval),
		.cmo_dir_inval_set_i(cmo_dir_inval_set),
		.cmo_dir_inval_way_i(cmo_dir_inval_way),
		.rtab_empty_o(rtab_empty),
		.ctrl_empty_o(ctrl_empty),
		.cfg_enable_i(cfg_enable_i),
		.cfg_rtab_single_entry_i(cfg_rtab_single_entry_i),
		.evt_cache_write_miss_o(evt_cache_write_miss_o),
		.evt_cache_read_miss_o(evt_cache_read_miss_o),
		.evt_uncached_req_o(evt_uncached_req_o),
		.evt_cmo_req_o(evt_cmo_req_o),
		.evt_write_req_o(evt_write_req_o),
		.evt_read_req_o(evt_read_req_o),
		.evt_prefetch_req_o(evt_prefetch_req_o),
		.evt_req_on_hold_o(evt_req_on_hold_o),
		.evt_rtab_rollback_o(evt_rtab_rollback_o),
		.evt_stall_refill_o(evt_stall_refill_o),
		.evt_stall_o(evt_stall_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:508:5
	hpdcache_wbuf_0BDBB_7C17F #(
		.hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg(hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg),
		.hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg(hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg),
		.hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg(hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg),
		.hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg(hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg),
		.wbuf_addr_t_HPDcacheCfg(HPDcacheCfg),
		.wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg(wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg),
		.HPDcacheCfg(HPDcacheCfg)
	) hpdcache_wbuf_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.empty_o(wbuf_empty_o),
		.full_o(),
		.flush_all_i(wbuf_flush_all),
		.cfg_threshold_i(cfg_wbuf_threshold_i),
		.cfg_reset_timecnt_on_write_i(cfg_wbuf_reset_timecnt_on_write_i),
		.cfg_sequential_waw_i(cfg_wbuf_sequential_waw_i),
		.cfg_inhibit_write_coalescing_i(cfg_wbuf_inhibit_write_coalescing_i),
		.write_i(wbuf_write),
		.write_ready_o(wbuf_write_ready),
		.write_addr_i(wbuf_write_addr),
		.write_data_i(wbuf_write_data),
		.write_be_i(wbuf_write_be),
		.write_uc_i(wbuf_write_uncacheable),
		.read_addr_i(wbuf_write_addr),
		.read_hit_o(wbuf_read_hit),
		.read_flush_hit_i(wbuf_read_flush_hit),
		.replay_addr_i(wbuf_rtab_addr),
		.replay_is_read_i(wbuf_rtab_is_read),
		.replay_open_hit_o(wbuf_rtab_hit_open),
		.replay_pend_hit_o(wbuf_rtab_hit_pend),
		.replay_sent_hit_o(wbuf_rtab_hit_sent),
		.replay_not_ready_o(wbuf_rtab_not_ready),
		.mem_req_write_ready_i(mem_req_wbuf_write_ready_i),
		.mem_req_write_valid_o(mem_req_wbuf_write_valid_o),
		.mem_req_write_o(mem_req_wbuf_write_o),
		.mem_req_write_data_ready_i(mem_req_wbuf_write_data_ready_i),
		.mem_req_write_data_valid_o(mem_req_wbuf_write_data_valid_o),
		.mem_req_write_data_o(mem_req_wbuf_write_data_o),
		.mem_resp_write_ready_o(mem_resp_wbuf_write_ready_o),
		.mem_resp_write_valid_i(mem_resp_wbuf_write_valid_i),
		.mem_resp_write_i(mem_resp_wbuf_write_i)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:563:5
	// removed localparam type sv2v_uu_hpdcache_miss_handler_i_hpdcache_nline_t_HPDcacheCfg_type
	localparam [1349:0] sv2v_uu_hpdcache_miss_handler_i_hpdcache_nline_t_HPDcacheCfg = HPDcacheCfg;
	// removed localparam type sv2v_uu_hpdcache_miss_handler_i_mem_resp_inval_nline_i
	localparam [sv2v_uu_hpdcache_miss_handler_i_hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] sv2v_uu_hpdcache_miss_handler_i_ext_mem_resp_inval_nline_i_0 = 1'sb0;
	hpdcache_miss_handler_9DAD1_9B062 #(
		.hpdcache_dir_entry_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg(hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg),
		.hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg(hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg),
		.hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg(hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg),
		.hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg(hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg),
		.hpdcache_nline_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_refill_data_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg(hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg),
		.hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg(hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg),
		.hpdcache_req_offset_t_hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg(hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg),
		.hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg(hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg),
		.hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg(hpdcache_req_t_hpdcache_req_t_HPDcacheCfg),
		.hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg(hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg),
		.hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg(hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg),
		.hpdcache_set_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg(hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg),
		.hpdcache_way_vector_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_word_t_HPDcacheCfg(HPDcacheCfg),
		.HPDcacheCfg(HPDcacheCfg)
	) hpdcache_miss_handler_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.mshr_empty_o(miss_mshr_empty),
		.mshr_full_o(),
		.cfg_prefetch_updt_plru_i(cfg_prefetch_updt_plru_i),
		.mshr_check_i(miss_mshr_check),
		.mshr_check_offset_i(miss_mshr_check_offset),
		.mshr_check_nline_i(miss_mshr_check_nline),
		.mshr_check_hit_o(miss_mshr_hit),
		.mshr_alloc_ready_o(miss_mshr_alloc_ready),
		.mshr_alloc_i(miss_mshr_alloc),
		.mshr_alloc_cs_i(miss_mshr_alloc_cs),
		.mshr_alloc_full_o(miss_mshr_alloc_full),
		.mshr_alloc_nline_i(miss_mshr_alloc_nline),
		.mshr_alloc_tid_i(miss_mshr_alloc_tid),
		.mshr_alloc_sid_i(miss_mshr_alloc_sid),
		.mshr_alloc_word_i(miss_mshr_alloc_word),
		.mshr_alloc_need_rsp_i(miss_mshr_alloc_need_rsp),
		.mshr_alloc_is_prefetch_i(miss_mshr_alloc_is_prefetch),
		.refill_req_ready_i(refill_req_ready),
		.refill_req_valid_o(refill_req_valid),
		.refill_busy_o(refill_busy),
		.refill_sel_victim_o(refill_sel_victim),
		.refill_updt_plru_o(refill_updt_plru),
		.refill_set_o(refill_set),
		.refill_dir_entry_o(refill_dir_entry),
		.refill_victim_way_i(refill_read_victim_way),
		.refill_write_dir_o(refill_write_dir),
		.refill_write_data_o(refill_write_data),
		.refill_victim_way_o(refill_write_victim_way),
		.refill_data_o(refill_data),
		.refill_word_o(refill_word),
		.refill_nline_o(refill_nline),
		.refill_updt_rtab_o(refill_updt_rtab),
		.inval_check_dir_o(inval_check_dir),
		.inval_write_dir_o(inval_write_dir),
		.inval_nline_o(inval_nline),
		.inval_hit_i(inval_hit),
		.refill_core_rsp_valid_o(refill_core_rsp_valid),
		.refill_core_rsp_o(refill_core_rsp),
		.mem_req_ready_i(mem_req_miss_read_ready_i),
		.mem_req_valid_o(mem_req_miss_read_valid_o),
		.mem_req_o(mem_req_miss_read_o),
		.mem_resp_ready_o(mem_resp_miss_read_ready_o),
		.mem_resp_valid_i(mem_resp_miss_read_valid_i),
		.mem_resp_i(mem_resp_miss_read_i),
		.mem_resp_inval_i(1'b0),
		.mem_resp_inval_nline_i(sv2v_uu_hpdcache_miss_handler_i_ext_mem_resp_inval_nline_i_0)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:649:5
	hpdcache_uncached_36E81_F1602 #(
		.hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg(hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg),
		.hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg(hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg),
		.hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg(hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg),
		.hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg(hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg),
		.hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg(hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg),
		.hpdcache_nline_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_offset_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_req_addr_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg(hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg),
		.hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg(hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg),
		.hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg(hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg),
		.hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg(hpdcache_req_t_hpdcache_req_t_HPDcacheCfg),
		.hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg(hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg),
		.hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg(hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg),
		.hpdcache_set_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg(hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg),
		.hpdcache_way_vector_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_word_t_HPDcacheCfg(HPDcacheCfg),
		.HPDcacheCfg(HPDcacheCfg)
	) hpdcache_uc_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.wbuf_empty_i(wbuf_empty_o),
		.mshr_empty_i(miss_mshr_empty),
		.rtab_empty_i(rtab_empty),
		.ctrl_empty_i(ctrl_empty),
		.req_valid_i(uc_req_valid),
		.req_ready_o(uc_ready),
		.req_op_i(uc_req_op),
		.req_addr_i(uc_req_addr),
		.req_size_i(uc_req_size),
		.req_data_i(uc_req_data),
		.req_be_i(uc_req_be),
		.req_uc_i(uc_req_uncacheable),
		.req_sid_i(uc_req_sid),
		.req_tid_i(uc_req_tid),
		.req_need_rsp_i(uc_req_need_rsp),
		.wbuf_flush_all_o(uc_wbuf_flush_all),
		.dir_amo_match_o(uc_dir_amo_match),
		.dir_amo_match_set_o(uc_dir_amo_match_set),
		.dir_amo_match_tag_o(uc_dir_amo_match_tag),
		.dir_amo_update_plru_o(uc_dir_amo_update_plru),
		.dir_amo_hit_way_i(uc_dir_amo_hit_way),
		.data_amo_write_o(uc_data_amo_write),
		.data_amo_write_enable_o(uc_data_amo_write_enable),
		.data_amo_write_set_o(uc_data_amo_write_set),
		.data_amo_write_size_o(uc_data_amo_write_size),
		.data_amo_write_word_o(uc_data_amo_write_word),
		.data_amo_write_data_o(uc_data_amo_write_data),
		.data_amo_write_be_o(uc_data_amo_write_be),
		.lrsc_snoop_i(uc_lrsc_snoop),
		.lrsc_snoop_addr_i(uc_lrsc_snoop_addr),
		.lrsc_snoop_size_i(uc_lrsc_snoop_size),
		.core_rsp_ready_i(uc_core_rsp_ready),
		.core_rsp_valid_o(uc_core_rsp_valid),
		.core_rsp_o(uc_core_rsp),
		.mem_read_id_i(HPDCACHE_UC_READ_ID),
		.mem_write_id_i(HPDCACHE_UC_WRITE_ID),
		.mem_req_read_ready_i(mem_req_uc_read_ready_i),
		.mem_req_read_valid_o(mem_req_uc_read_valid_o),
		.mem_req_read_o(mem_req_uc_read_o),
		.mem_resp_read_ready_o(mem_resp_uc_read_ready_o),
		.mem_resp_read_valid_i(mem_resp_uc_read_valid_i),
		.mem_resp_read_i(mem_resp_uc_read_i),
		.mem_req_write_ready_i(mem_req_uc_write_ready_i),
		.mem_req_write_valid_o(mem_req_uc_write_valid_o),
		.mem_req_write_o(mem_req_uc_write_o),
		.mem_req_write_data_ready_i(mem_req_uc_write_data_ready_i),
		.mem_req_write_data_valid_o(mem_req_uc_write_data_valid_o),
		.mem_req_write_data_o(mem_req_uc_write_data_o),
		.mem_resp_write_ready_o(mem_resp_uc_write_ready_o),
		.mem_resp_write_valid_i(mem_resp_uc_write_valid_i),
		.mem_resp_write_i(mem_resp_uc_write_i),
		.cfg_error_on_cacheable_amo_i(cfg_error_on_cacheable_amo_i)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:742:5
	hpdcache_cmo_DA064_8E9A7 #(
		.hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg(hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg),
		.hpdcache_nline_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_req_addr_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg(hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg),
		.hpdcache_set_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg(hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg),
		.hpdcache_way_vector_t_HPDcacheCfg(HPDcacheCfg),
		.HPDcacheCfg(HPDcacheCfg)
	) hpdcache_cmo_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.wbuf_empty_i(wbuf_empty_o),
		.mshr_empty_i(miss_mshr_empty),
		.rtab_empty_i(rtab_empty),
		.ctrl_empty_i(ctrl_empty),
		.req_valid_i(cmo_req_valid),
		.req_ready_o(cmo_ready),
		.req_op_i(cmo_req_op),
		.req_addr_i(cmo_req_addr),
		.req_wdata_i(cmo_req_wdata),
		.req_wait_o(cmo_wait),
		.wbuf_flush_all_o(cmo_wbuf_flush_all),
		.dir_check_o(cmo_dir_check),
		.dir_check_set_o(cmo_dir_check_set),
		.dir_check_tag_o(cmo_dir_check_tag),
		.dir_check_hit_way_i(cmo_dir_check_hit_way),
		.dir_inval_o(cmo_dir_inval),
		.dir_inval_set_o(cmo_dir_inval_set),
		.dir_inval_way_o(cmo_dir_inval_way)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:785:5
	initial begin
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv:786:9
		begin : word_width_assert
			
		end
		begin : req_access_width_assert
			
		end
		begin : refill_access_width_assert
			
		end
		begin : mem_width_assert
			
		end
		begin : miss_mem_id_width_assert
			
		end
		begin : wbuf_mem_id_width_assert
			
		end
	end
endmodule
