module hpdcache_uncached_36E81_F1602 (
	clk_i,
	rst_ni,
	wbuf_empty_i,
	mshr_empty_i,
	rtab_empty_i,
	ctrl_empty_i,
	req_valid_i,
	req_ready_o,
	req_op_i,
	req_addr_i,
	req_size_i,
	req_data_i,
	req_be_i,
	req_uc_i,
	req_sid_i,
	req_tid_i,
	req_need_rsp_i,
	wbuf_flush_all_o,
	dir_amo_match_o,
	dir_amo_match_set_o,
	dir_amo_match_tag_o,
	dir_amo_update_plru_o,
	dir_amo_hit_way_i,
	data_amo_write_o,
	data_amo_write_enable_o,
	data_amo_write_set_o,
	data_amo_write_size_o,
	data_amo_write_word_o,
	data_amo_write_data_o,
	data_amo_write_be_o,
	lrsc_snoop_i,
	lrsc_snoop_addr_i,
	lrsc_snoop_size_i,
	core_rsp_ready_i,
	core_rsp_valid_o,
	core_rsp_o,
	mem_read_id_i,
	mem_write_id_i,
	mem_req_read_ready_i,
	mem_req_read_valid_o,
	mem_req_read_o,
	mem_resp_read_ready_o,
	mem_resp_read_valid_i,
	mem_resp_read_i,
	mem_req_write_ready_i,
	mem_req_write_valid_o,
	mem_req_write_o,
	mem_req_write_data_ready_i,
	mem_req_write_data_valid_o,
	mem_req_write_data_o,
	mem_resp_write_ready_o,
	mem_resp_write_valid_i,
	mem_resp_write_i,
	cfg_error_on_cacheable_amo_i
);
	// removed localparam type hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_nline_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_nline_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_offset_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_offset_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_addr_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_addr_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg = 0;
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
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:31:15
	// removed localparam type hpdcache_pkg_hpdcache_victim_sel_policy_t
	// removed localparam type hpdcache_pkg_hpdcache_user_cfg_t
	// removed localparam type hpdcache_pkg_hpdcache_cfg_t
	parameter [1349:0] HPDcacheCfg = 1'sb0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:33:20
	// removed localparam type hpdcache_nline_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:34:20
	// removed localparam type hpdcache_tag_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:35:20
	// removed localparam type hpdcache_set_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:36:20
	// removed localparam type hpdcache_offset_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:37:20
	// removed localparam type hpdcache_word_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:39:20
	// removed localparam type hpdcache_req_addr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:40:20
	// removed localparam type hpdcache_req_tid_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:41:20
	// removed localparam type hpdcache_req_sid_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:42:20
	// removed localparam type hpdcache_req_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:43:20
	// removed localparam type hpdcache_req_be_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:45:20
	// removed localparam type hpdcache_way_vector_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:47:20
	// removed localparam type hpdcache_req_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:48:20
	// removed localparam type hpdcache_rsp_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:49:20
	// removed localparam type hpdcache_mem_id_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:50:20
	// removed localparam type hpdcache_mem_req_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:51:20
	// removed localparam type hpdcache_mem_req_w_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:52:20
	// removed localparam type hpdcache_mem_resp_r_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:53:20
	// removed localparam type hpdcache_mem_resp_w_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:60:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:61:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:65:5
	input wire wbuf_empty_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:66:5
	input wire mshr_empty_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:67:5
	input wire rtab_empty_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:68:5
	input wire ctrl_empty_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:73:5
	input wire req_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:74:5
	output wire req_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:75:5
	// removed localparam type hpdcache_pkg_hpdcache_uc_op_t
	input wire [12:0] req_op_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:76:5
	input wire [hpdcache_req_addr_t_HPDcacheCfg[1317-:32] - 1:0] req_addr_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:77:5
	// removed localparam type hpdcache_pkg_hpdcache_req_size_t
	input wire [2:0] req_size_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:78:5
	input wire [(hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] req_data_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:79:5
	input wire [(hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1157-:32] * (hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1285-:32] / 8)) - 1:0] req_be_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:80:5
	input wire req_uc_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:81:5
	input wire [hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] - 1:0] req_sid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:82:5
	input wire [hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] - 1:0] req_tid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:83:5
	input wire req_need_rsp_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:88:5
	output reg wbuf_flush_all_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:93:5
	output wire dir_amo_match_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:94:5
	output wire [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] dir_amo_match_set_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:95:5
	output wire [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] dir_amo_match_tag_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:96:5
	output wire dir_amo_update_plru_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:97:5
	input wire [hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] dir_amo_hit_way_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:99:5
	output wire data_amo_write_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:100:5
	output wire data_amo_write_enable_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:101:5
	output wire [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] data_amo_write_set_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:102:5
	output wire [2:0] data_amo_write_size_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:103:5
	output wire [hpdcache_word_t_HPDcacheCfg[511-:32] - 1:0] data_amo_write_word_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:104:5
	output wire [(hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] data_amo_write_data_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:105:5
	output wire [(hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1157-:32] * (hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1285-:32] / 8)) - 1:0] data_amo_write_be_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:110:5
	input wire lrsc_snoop_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:111:5
	input wire [hpdcache_req_addr_t_HPDcacheCfg[1317-:32] - 1:0] lrsc_snoop_addr_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:112:5
	input wire [2:0] lrsc_snoop_size_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:117:5
	input wire core_rsp_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:118:5
	output wire core_rsp_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:119:5
	output wire [(((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1:0] core_rsp_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:125:5
	input wire [hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] mem_read_id_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:126:5
	input wire [hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] mem_write_id_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:129:5
	input wire mem_req_read_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:130:5
	output reg mem_req_read_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:131:5
	output reg [((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] mem_req_read_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:133:5
	output wire mem_resp_read_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:134:5
	input wire mem_resp_read_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:135:5
	input wire [((2 + hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0:0] mem_resp_read_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:138:5
	input wire mem_req_write_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:139:5
	output reg mem_req_write_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:140:5
	output reg [((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] mem_req_write_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:142:5
	input wire mem_req_write_data_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:143:5
	output reg mem_req_write_data_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:144:5
	output wire [(hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0:0] mem_req_write_data_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:146:5
	output wire mem_resp_write_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:147:5
	input wire mem_resp_write_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:148:5
	input wire [(3 + hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]) - 1:0] mem_resp_write_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:153:5
	input wire cfg_error_on_cacheable_amo_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:160:5
	// removed localparam type hpdcache_pkg_hpdcache_uint32
	// removed localparam type hpdcache_pkg_hpdcache_uint
	localparam [31:0] MEM_REQ_RATIO = HPDcacheCfg[575-:32] / HPDcacheCfg[255-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:161:5
	localparam [31:0] MEM_REQ_WORD_INDEX_WIDTH = $clog2(MEM_REQ_RATIO);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:163:5
	// removed localparam type hpdcache_uc_fsm_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:175:5
	localparam [0:0] AMO_SC_SUCCESS = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:176:5
	localparam [0:0] AMO_SC_FAILURE = 1'b1;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:178:5
	function automatic [63:0] prepare_amo_data_operand;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:179:13
		input reg [63:0] data_i;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:180:13
		input reg [2:0] size_i;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:181:13
		input reg [hpdcache_req_addr_t_HPDcacheCfg[1317-:32] - 1:0] addr_i;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:182:13
		input reg sign_extend_i;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:185:9
		if (size_i == 3'd3)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:186:13
			prepare_amo_data_operand = data_i;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:191:13
			if (addr_i[2] == 1'b1) begin
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:192:17
					if (sign_extend_i)
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:193:21
						prepare_amo_data_operand = {{32 {data_i[63]}}, data_i[63:32]};
					else
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:195:21
						prepare_amo_data_operand = {{32 {1'b0}}, data_i[63:32]};
				end
			end
			else
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:198:17
				if (sign_extend_i)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:199:21
					prepare_amo_data_operand = {{32 {data_i[31]}}, data_i[31:0]};
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:201:21
					prepare_amo_data_operand = {{32 {1'b0}}, data_i[31:0]};
	endfunction
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:207:5
	function automatic [63:0] prepare_amo_data_result;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:208:13
		input reg [63:0] data_i;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:209:13
		input reg [2:0] size_i;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:212:9
		if (size_i == 3'd3)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:213:13
			prepare_amo_data_result = data_i;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:218:13
			prepare_amo_data_result = {2 {data_i[31:0]}};
	endfunction
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:222:5
	function automatic amo_need_sign_extend;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:222:51
		input reg [12:0] op;
		reg [0:1] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:223:9
			(* full_case, parallel_case *)
			case (1'b1)
				op[7], op[3], op[1]: begin
					amo_need_sign_extend = 1'b1;
					_sv2v_jump = 2'b11;
				end
				default: begin
					amo_need_sign_extend = 1'b0;
					_sv2v_jump = 2'b11;
				end
			endcase
			if (_sv2v_jump == 2'b00)
				;
		end
	endfunction
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:234:5
	reg [31:0] uc_fsm_q;
	reg [31:0] uc_fsm_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:235:5
	reg [12:0] req_op_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:236:5
	reg [hpdcache_req_addr_t_HPDcacheCfg[1317-:32] - 1:0] req_addr_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:237:5
	reg [2:0] req_size_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:238:5
	reg [(hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] req_data_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:239:5
	reg [(hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1157-:32] * (hpdcache_req_be_t_hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg[1285-:32] / 8)) - 1:0] req_be_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:240:5
	reg req_uc_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:241:5
	reg [hpdcache_req_sid_t_hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg[1093-:32] - 1:0] req_sid_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:242:5
	reg [hpdcache_req_tid_t_hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg[1125-:32] - 1:0] req_tid_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:243:5
	reg req_need_rsp_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:245:5
	reg uc_sc_retcode_q;
	reg uc_sc_retcode_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:247:5
	reg [(hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] rsp_rdata_q;
	wire [(hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] rsp_rdata_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:248:5
	reg rsp_error_set;
	reg rsp_error_rst;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:249:5
	reg rsp_error_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:250:5
	reg mem_resp_write_valid_q;
	reg mem_resp_write_valid_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:251:5
	reg mem_resp_read_valid_q;
	reg mem_resp_read_valid_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:253:5
	reg [(hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] mem_req_write_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:254:5
	wire [63:0] amo_req_ld_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:255:5
	wire [63:0] amo_ld_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:256:5
	wire [63:0] amo_req_st_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:257:5
	wire [63:0] amo_st_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:258:5
	wire [63:0] amo_result;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:259:5
	wire [63:0] amo_write_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:264:5
	reg lrsc_rsrv_valid_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:265:5
	reg [hpdcache_req_addr_t_HPDcacheCfg[1317-:32] - 1:0] lrsc_rsrv_addr_q;
	reg [hpdcache_req_addr_t_HPDcacheCfg[1317-:32] - 1:0] lrsc_rsrv_addr_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:266:5
	wire [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] lrsc_rsrv_nline;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:267:5
	wire [hpdcache_offset_t_HPDcacheCfg[447-:32] - 1:0] lrsc_rsrv_word;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:269:5
	wire [hpdcache_offset_t_HPDcacheCfg[447-:32] - 1:0] lrsc_snoop_words;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:270:5
	wire [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] lrsc_snoop_nline;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:271:5
	wire [hpdcache_offset_t_HPDcacheCfg[447-:32] - 1:0] lrsc_snoop_base;
	wire [hpdcache_offset_t_HPDcacheCfg[447-:32] - 1:0] lrsc_snoop_end;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:272:5
	wire lrsc_snoop_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:273:5
	wire lrsc_snoop_reset;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:275:5
	wire [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] lrsc_uc_nline;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:276:5
	wire [hpdcache_offset_t_HPDcacheCfg[447-:32] - 1:0] lrsc_uc_word;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:277:5
	wire lrsc_uc_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:278:5
	reg lrsc_uc_set;
	reg lrsc_uc_reset;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:282:5
	assign lrsc_rsrv_nline = lrsc_rsrv_addr_q[HPDcacheCfg[447-:32]+:HPDcacheCfg[383-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:284:5
	assign lrsc_rsrv_word = lrsc_rsrv_addr_q[0+:HPDcacheCfg[447-:32]] >> 3;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:287:5
	function automatic [hpdcache_offset_t_HPDcacheCfg[447-:32] - 1:0] sv2v_cast_99B50;
		input reg [hpdcache_offset_t_HPDcacheCfg[447-:32] - 1:0] inp;
		sv2v_cast_99B50 = inp;
	endfunction
	assign lrsc_snoop_words = (lrsc_snoop_size_i < 3 ? 1 : sv2v_cast_99B50((8'h01 << lrsc_snoop_size_i) >> 3));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:289:5
	assign lrsc_snoop_nline = lrsc_snoop_addr_i[HPDcacheCfg[447-:32]+:HPDcacheCfg[383-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:291:5
	assign lrsc_snoop_base = lrsc_snoop_addr_i[0+:HPDcacheCfg[447-:32]] >> 3;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:292:5
	assign lrsc_snoop_end = lrsc_snoop_base + lrsc_snoop_words;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:294:5
	assign lrsc_snoop_hit = ((lrsc_rsrv_valid_q & (lrsc_rsrv_nline == lrsc_snoop_nline)) & (lrsc_rsrv_word >= lrsc_snoop_base)) & (lrsc_rsrv_word < lrsc_snoop_end);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:298:5
	assign lrsc_snoop_reset = lrsc_snoop_i & lrsc_snoop_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:301:5
	assign lrsc_uc_nline = req_addr_i[HPDcacheCfg[447-:32]+:HPDcacheCfg[383-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:302:5
	assign lrsc_uc_word = req_addr_i[0+:HPDcacheCfg[447-:32]] >> 3;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:304:5
	assign lrsc_uc_hit = (lrsc_rsrv_valid_q & (lrsc_rsrv_nline == lrsc_uc_nline)) & (lrsc_rsrv_word == lrsc_uc_word);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:310:5
	// removed localparam type hpdcache_pkg_hpdcache_mem_error_e
	always @(*) begin : uc_fsm_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:312:9
		mem_resp_write_valid_d = mem_resp_write_valid_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:313:9
		mem_resp_read_valid_d = mem_resp_read_valid_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:314:9
		rsp_error_set = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:315:9
		rsp_error_rst = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:316:9
		lrsc_rsrv_addr_d = lrsc_rsrv_addr_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:317:9
		uc_sc_retcode_d = uc_sc_retcode_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:318:9
		wbuf_flush_all_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:319:9
		lrsc_uc_set = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:320:9
		lrsc_uc_reset = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:322:9
		uc_fsm_d = uc_fsm_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:324:9
		(* full_case, parallel_case *)
		case (uc_fsm_q)
			32'd0:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:329:17
				if (req_valid_i) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:330:21
					wbuf_flush_all_o = 1'b1;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:332:21
					(* full_case, parallel_case *)
					case (1'b1)
						req_op_i[12], req_op_i[11]:
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:335:29
							if (((wbuf_empty_i && mshr_empty_i) && rtab_empty_i) && ctrl_empty_i)
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:338:33
								uc_fsm_d = 32'd2;
							else
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:340:33
								uc_fsm_d = 32'd1;
						req_op_i[8], req_op_i[7], req_op_i[6], req_op_i[5], req_op_i[4], req_op_i[3], req_op_i[2], req_op_i[1], req_op_i[0], req_op_i[10]: begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:355:29
							lrsc_uc_reset = ~req_op_i[10] & lrsc_uc_hit;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:357:29
							if (!req_uc_i && cfg_error_on_cacheable_amo_i) begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:358:33
								rsp_error_set = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:359:33
								uc_fsm_d = 32'd6;
							end
							else
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:361:33
								if (((wbuf_empty_i && mshr_empty_i) && rtab_empty_i) && ctrl_empty_i)
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:364:37
									uc_fsm_d = 32'd2;
								else
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:366:37
									uc_fsm_d = 32'd1;
						end
						req_op_i[9]:
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:372:29
							if (!req_uc_i && cfg_error_on_cacheable_amo_i) begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:373:33
								rsp_error_set = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:374:33
								uc_fsm_d = 32'd6;
							end
							else begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:377:33
								lrsc_uc_reset = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:380:33
								if (lrsc_uc_hit) begin
									begin
										// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:381:37
										if (((wbuf_empty_i && mshr_empty_i) && rtab_empty_i) && ctrl_empty_i)
											// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:384:41
											uc_fsm_d = 32'd2;
										else
											// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:386:41
											uc_fsm_d = 32'd1;
									end
								end
								else begin
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:391:37
									uc_sc_retcode_d = AMO_SC_FAILURE;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:392:37
									uc_fsm_d = 32'd6;
								end
							end
						default:
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:398:29
							if (req_need_rsp_i) begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:399:33
								rsp_error_set = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:400:33
								uc_fsm_d = 32'd6;
							end
					endcase
				end
			32'd1:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:411:17
				if (((wbuf_empty_i && mshr_empty_i) && rtab_empty_i) && ctrl_empty_i)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:412:21
					uc_fsm_d = 32'd2;
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:414:21
					uc_fsm_d = 32'd1;
			32'd2: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:422:17
				uc_fsm_d = 32'd2;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:424:17
				mem_resp_write_valid_d = 1'b0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:425:17
				mem_resp_read_valid_d = 1'b0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:427:17
				(* full_case, parallel_case *)
				case (1'b1)
					req_op_q[12], req_op_q[10]:
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:430:25
						if (mem_req_read_ready_i)
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:431:29
							uc_fsm_d = 32'd5;
					req_op_q[11], req_op_q[9], req_op_q[8], req_op_q[7], req_op_q[6], req_op_q[5], req_op_q[4], req_op_q[3], req_op_q[2], req_op_q[1], req_op_q[0]:
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:446:25
						if (mem_req_write_ready_i && mem_req_write_data_ready_i)
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:447:29
							uc_fsm_d = 32'd5;
						else if (mem_req_write_ready_i)
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:449:29
							uc_fsm_d = 32'd4;
						else if (mem_req_write_data_ready_i)
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:451:29
							uc_fsm_d = 32'd3;
				endcase
			end
			32'd3: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:461:17
				mem_resp_write_valid_d = mem_resp_write_valid_q | mem_resp_write_valid_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:462:17
				mem_resp_read_valid_d = mem_resp_read_valid_q | mem_resp_read_valid_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:464:17
				if (mem_req_write_ready_i)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:465:21
					uc_fsm_d = 32'd5;
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:467:21
					uc_fsm_d = 32'd3;
			end
			32'd4: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:475:17
				mem_resp_write_valid_d = mem_resp_write_valid_q | mem_resp_write_valid_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:476:17
				mem_resp_read_valid_d = mem_resp_read_valid_q | mem_resp_read_valid_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:478:17
				if (mem_req_write_data_ready_i)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:479:21
					uc_fsm_d = 32'd5;
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:481:21
					uc_fsm_d = 32'd4;
			end
			32'd5: begin : sv2v_autoblock_1
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:489:17
				reg rd_error;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:490:17
				reg wr_error;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:492:17
				uc_fsm_d = 32'd5;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:493:17
				mem_resp_write_valid_d = mem_resp_write_valid_q | mem_resp_write_valid_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:494:17
				mem_resp_read_valid_d = mem_resp_read_valid_q | mem_resp_read_valid_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:496:17
				rd_error = mem_resp_read_valid_i && (mem_resp_read_i[2 + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))-:((2 + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))) >= (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1)) ? ((2 + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))) - (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1))) + 1 : ((hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1)) - (2 + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)))) + 1)] == 2'b01);
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:498:17
				wr_error = mem_resp_write_valid_i && (mem_resp_write_i[hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 1-:((hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 1) >= (hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 0) ? ((hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 1) - (hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 0)) + 1 : ((hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 0) - (hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 1)) + 1)] == 2'b01);
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:500:17
				rsp_error_set = req_need_rsp_q & (rd_error | wr_error);
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:502:17
				(* full_case, parallel_case *)
				case (1'b1)
					req_op_q[12]:
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:504:25
						if (mem_resp_read_valid_i) begin
							begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:505:29
								if (req_need_rsp_q)
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:506:33
									uc_fsm_d = 32'd6;
								else
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:508:33
									uc_fsm_d = 32'd0;
							end
						end
					req_op_q[11]:
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:513:25
						if (mem_resp_write_valid_i) begin
							begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:514:29
								if (req_need_rsp_q)
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:515:33
									uc_fsm_d = 32'd6;
								else
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:517:33
									uc_fsm_d = 32'd0;
							end
						end
					req_op_q[10]:
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:522:25
						if (mem_resp_read_valid_i) begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:524:29
							if (!rd_error) begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:526:33
								lrsc_uc_set = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:527:33
								lrsc_rsrv_addr_d = req_addr_q;
							end
							else
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:532:33
								lrsc_uc_reset = 1'b1;
							if (req_uc_q || rd_error)
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:536:33
								uc_fsm_d = 32'd6;
							else
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:538:33
								uc_fsm_d = 32'd7;
						end
					req_op_q[9]:
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:543:25
						if (mem_resp_write_valid_i) begin : sv2v_autoblock_2
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:544:29
							reg is_atomic;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:546:29
							is_atomic = mem_resp_write_i[hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 2] && !wr_error;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:547:29
							uc_sc_retcode_d = (is_atomic ? AMO_SC_SUCCESS : AMO_SC_FAILURE);
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:549:29
							if (req_uc_q || !is_atomic)
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:550:33
								uc_fsm_d = 32'd6;
							else
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:552:33
								uc_fsm_d = 32'd7;
						end
					req_op_q[8], req_op_q[7], req_op_q[6], req_op_q[5], req_op_q[4], req_op_q[3], req_op_q[2], req_op_q[1], req_op_q[0]:
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:566:25
						if (((mem_resp_read_valid_i && mem_resp_write_valid_i) || (mem_resp_read_valid_i && mem_resp_write_valid_q)) || (mem_resp_read_valid_q && mem_resp_write_valid_i)) begin
							begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:570:29
								if (((req_uc_q || rsp_error_q) || rd_error) || wr_error)
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:571:33
									uc_fsm_d = 32'd6;
								else
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:573:33
									uc_fsm_d = 32'd7;
							end
						end
				endcase
			end
			32'd6:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:584:17
				if (core_rsp_ready_i) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:585:21
					rsp_error_rst = 1'b1;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:586:21
					uc_fsm_d = 32'd0;
				end
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:588:21
					uc_fsm_d = 32'd6;
			32'd7:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:596:17
				uc_fsm_d = 32'd8;
			32'd8:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:603:17
				uc_fsm_d = 32'd6;
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:612:5
	generate
		if (HPDcacheCfg[255-:32] > 64) begin : gen_amo_data_width_gt_64
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:613:9
			localparam [31:0] AMO_WORD_INDEX_WIDTH = $clog2(HPDcacheCfg[255-:32] / 64);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:614:9
			hpdcache_mux #(
				.NINPUT(HPDcacheCfg[255-:32] / 64),
				.DATA_WIDTH(64),
				.ONE_HOT_SEL(1'b0)
			) amo_ld_data_mux_i(
				.data_i(rsp_rdata_q),
				.sel_i(req_addr_q[3+:AMO_WORD_INDEX_WIDTH]),
				.data_o(amo_req_ld_data)
			);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:624:9
			hpdcache_mux #(
				.NINPUT(HPDcacheCfg[255-:32] / 64),
				.DATA_WIDTH(64),
				.ONE_HOT_SEL(1'b0)
			) amo_st_data_mux_i(
				.data_i(req_data_q),
				.sel_i(req_addr_q[3+:AMO_WORD_INDEX_WIDTH]),
				.data_o(amo_req_st_data)
			);
		end
		else if (HPDcacheCfg[255-:32] == 64) begin : gen_amo_data_width_eq_64
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:634:9
			assign amo_req_ld_data = rsp_rdata_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:635:9
			assign amo_req_st_data = req_data_q;
		end
		else begin : gen_amo_data_width_eq_32
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:637:9
			assign amo_req_ld_data = (req_addr_q[2] ? {rsp_rdata_q, 32'b00000000000000000000000000000000} : {32'b00000000000000000000000000000000, rsp_rdata_q});
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:638:9
			assign amo_req_st_data = (req_addr_q[2] ? {req_data_q, 32'b00000000000000000000000000000000} : {32'b00000000000000000000000000000000, req_data_q});
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:641:5
	assign amo_ld_data = prepare_amo_data_operand(amo_req_ld_data, req_size_q, req_addr_q, amo_need_sign_extend(req_op_q));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:643:5
	assign amo_st_data = prepare_amo_data_operand(amo_req_st_data, req_size_q, req_addr_q, amo_need_sign_extend(req_op_q));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:646:5
	hpdcache_amo amo_unit_i(
		.ld_data_i(amo_ld_data),
		.st_data_i(amo_st_data),
		.op_i(req_op_q),
		.result_o(amo_result)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:653:5
	assign dir_amo_match_o = uc_fsm_q == 32'd7;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:654:5
	assign dir_amo_match_set_o = req_addr_q[HPDcacheCfg[447-:32]+:HPDcacheCfg[415-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:655:5
	assign dir_amo_match_tag_o = req_addr_q[HPDcacheCfg[447-:32] + HPDcacheCfg[415-:32]+:HPDcacheCfg[351-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:657:5
	assign dir_amo_update_plru_o = uc_fsm_q == 32'd8;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:659:5
	assign data_amo_write_o = uc_fsm_q == 32'd8;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:660:5
	assign data_amo_write_enable_o = |dir_amo_hit_way_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:661:5
	assign data_amo_write_set_o = req_addr_q[HPDcacheCfg[447-:32]+:HPDcacheCfg[415-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:662:5
	assign data_amo_write_size_o = req_size_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:663:5
	assign data_amo_write_word_o = req_addr_q[HPDcacheCfg[479-:32]+:HPDcacheCfg[511-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:665:5
	assign data_amo_write_be_o = req_be_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:667:5
	assign amo_write_data = prepare_amo_data_result(amo_result, req_size_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:668:5
	generate
		if (HPDcacheCfg[255-:32] >= 64) begin : gen_amo_ram_write_data_ge_64
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:669:9
			assign data_amo_write_data_o = {HPDcacheCfg[255-:32] / 64 {amo_write_data}};
		end
		else begin : gen_amo_ram_write_data_lt_64
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:671:9
			assign data_amo_write_data_o = amo_write_data;
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:677:5
	assign req_ready_o = uc_fsm_q == 32'd0;
	assign core_rsp_valid_o = uc_fsm_q == 32'd6;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:683:5
	// removed localparam type hpdcache_pkg_hpdcache_mem_command_e
	// removed localparam type hpdcache_pkg_hpdcache_mem_atomic_e
	always @(*) begin : mem_req_read_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:685:9
		mem_req_read_o[hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))-:((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) >= (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) - (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7))) + 1 : ((11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)))) + 1)] = req_addr_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:686:9
		mem_req_read_o[11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)-:((11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) >= (3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) ? ((11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) - (3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7))) + 1 : ((3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) - (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) + 1)] = 0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:687:9
		mem_req_read_o[3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)-:((3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) >= (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7) ? ((3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) + 1 : ((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7) - (3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) + 1)] = req_size_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:688:9
		mem_req_read_o[hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6-:((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6) >= 7 ? hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 0 : 8 - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))] = mem_read_id_i;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:689:9
		mem_req_read_o[0] = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:690:9
		mem_req_read_o[6-:2] = 2'b00;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:691:9
		mem_req_read_o[4-:4] = 4'b0000;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:693:9
		(* full_case, parallel_case *)
		case (1'b1)
			req_op_q[12]:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:695:17
				mem_req_read_valid_o = uc_fsm_q == 32'd2;
			req_op_q[10]: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:698:17
				mem_req_read_o[6-:2] = 2'b10;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:699:17
				mem_req_read_o[4-:4] = 4'b1100;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:700:17
				mem_req_read_valid_o = uc_fsm_q == 32'd2;
			end
			default:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:703:17
				mem_req_read_valid_o = 1'b0;
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:711:5
	always @(*) begin : mem_req_write_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:713:9
		mem_req_write_data = req_data_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:714:9
		mem_req_write_o[hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))-:((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) >= (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) - (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7))) + 1 : ((11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)))) + 1)] = req_addr_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:715:9
		mem_req_write_o[11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)-:((11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) >= (3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) ? ((11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) - (3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7))) + 1 : ((3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) - (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) + 1)] = 0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:716:9
		mem_req_write_o[3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)-:((3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) >= (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7) ? ((3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) + 1 : ((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7) - (3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) + 1)] = req_size_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:717:9
		mem_req_write_o[hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6-:((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6) >= 7 ? hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 0 : 8 - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))] = mem_write_id_i;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:718:9
		mem_req_write_o[0] = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:719:9
		(* full_case, parallel_case *)
		case (1'b1)
			req_op_q[9]: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:721:17
				mem_req_write_o[6-:2] = 2'b10;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:722:17
				mem_req_write_o[4-:4] = 4'b1101;
			end
			req_op_q[8]: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:725:17
				mem_req_write_o[6-:2] = 2'b10;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:726:17
				mem_req_write_o[4-:4] = 4'b1000;
			end
			req_op_q[7]: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:729:17
				mem_req_write_o[6-:2] = 2'b10;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:730:17
				mem_req_write_o[4-:4] = 4'b0000;
			end
			req_op_q[6]: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:733:17
				mem_req_write_data = ~req_data_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:734:17
				mem_req_write_o[6-:2] = 2'b10;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:735:17
				mem_req_write_o[4-:4] = 4'b0001;
			end
			req_op_q[5]: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:738:17
				mem_req_write_o[6-:2] = 2'b10;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:739:17
				mem_req_write_o[4-:4] = 4'b0010;
			end
			req_op_q[4]: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:742:17
				mem_req_write_o[6-:2] = 2'b10;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:743:17
				mem_req_write_o[4-:4] = 4'b0011;
			end
			req_op_q[3]: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:746:17
				mem_req_write_o[6-:2] = 2'b10;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:747:17
				mem_req_write_o[4-:4] = 4'b0100;
			end
			req_op_q[2]: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:750:17
				mem_req_write_o[6-:2] = 2'b10;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:751:17
				mem_req_write_o[4-:4] = 4'b0110;
			end
			req_op_q[1]: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:754:17
				mem_req_write_o[6-:2] = 2'b10;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:755:17
				mem_req_write_o[4-:4] = 4'b0101;
			end
			req_op_q[0]: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:758:17
				mem_req_write_o[6-:2] = 2'b10;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:759:17
				mem_req_write_o[4-:4] = 4'b0111;
			end
			default: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:762:17
				mem_req_write_o[6-:2] = 2'b01;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:763:17
				mem_req_write_o[4-:4] = 4'b0000;
			end
		endcase
		(* full_case, parallel_case *)
		case (uc_fsm_q)
			32'd2:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:769:17
				(* full_case, parallel_case *)
				case (1'b1)
					req_op_q[11], req_op_q[9], req_op_q[8], req_op_q[7], req_op_q[6], req_op_q[5], req_op_q[4], req_op_q[3], req_op_q[2], req_op_q[1], req_op_q[0]: begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:781:25
						mem_req_write_data_valid_o = 1'b1;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:782:25
						mem_req_write_valid_o = 1'b1;
					end
					default: begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:786:25
						mem_req_write_data_valid_o = 1'b0;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:787:25
						mem_req_write_valid_o = 1'b0;
					end
				endcase
			32'd3: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:793:17
				mem_req_write_valid_o = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:794:17
				mem_req_write_data_valid_o = 1'b0;
			end
			32'd4: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:798:17
				mem_req_write_valid_o = 1'b0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:799:17
				mem_req_write_data_valid_o = 1'b1;
			end
			default: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:803:17
				mem_req_write_valid_o = 1'b0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:804:17
				mem_req_write_data_valid_o = 1'b0;
			end
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:810:5
	generate
		if (MEM_REQ_RATIO > 1) begin : gen_upsize_mem_req_data
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:812:9
			assign mem_req_write_data_o[hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0)-:((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0)) >= ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 1) ? ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0)) - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 1)) + 1 : (((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 1) - (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0))) + 1)] = {MEM_REQ_RATIO {mem_req_write_data}};
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:815:9
			hpdcache_demux #(
				.NOUTPUT(MEM_REQ_RATIO),
				.DATA_WIDTH(HPDcacheCfg[255-:32] / 8)
			) mem_write_be_demux_i(
				.data_i(req_be_q),
				.sel_i(req_addr_q[$clog2(HPDcacheCfg[255-:32] / 8)+:MEM_REQ_WORD_INDEX_WIDTH]),
				.data_o(mem_req_write_data_o[(hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0-:(((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0) >= 1 ? (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0 : 2 - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0))])
			);
		end
		else begin : gen_eqsize_mem_req_data
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:828:9
			assign mem_req_write_data_o[hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0)-:((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0)) >= ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 1) ? ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0)) - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 1)) + 1 : (((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 1) - (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0))) + 1)] = mem_req_write_data;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:829:9
			assign mem_req_write_data_o[(hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0-:(((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0) >= 1 ? (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0 : 2 - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0))] = req_be_q;
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:832:5
	assign mem_req_write_data_o[0] = 1'b1;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:837:5
	wire [63:0] sc_retcode;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:838:5
	wire [63:0] sc_rdata_dword;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:839:5
	wire [(hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] sc_rdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:841:5
	assign sc_retcode = {{63 {1'b0}}, uc_sc_retcode_q};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:842:5
	assign sc_rdata_dword = prepare_amo_data_result(sc_retcode, req_size_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:843:5
	generate
		if (HPDcacheCfg[255-:32] >= 64) begin : gen_sc_rdata_ge_64
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:844:9
			assign sc_rdata = {HPDcacheCfg[255-:32] / 64 {sc_rdata_dword}};
		end
		else begin : gen_sc_rdata_lt_64
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:846:9
			assign sc_rdata = sc_rdata_dword;
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:849:5
	assign core_rsp_o[(hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1))-:(((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1))) >= (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2)) ? (((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1))) - (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2))) + 1 : ((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2)) - ((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1)))) + 1)] = (req_op_q[9] ? sc_rdata : rsp_rdata_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:850:5
	assign core_rsp_o[hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1)-:((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1)) >= (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2) ? ((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1)) - (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2)) + 1 : ((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2) - (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1))) + 1)] = req_sid_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:851:5
	assign core_rsp_o[hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1-:((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1) >= 2 ? hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 0 : 3 - (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1))] = req_tid_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:852:5
	assign core_rsp_o[1] = rsp_error_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:853:5
	assign core_rsp_o[0] = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:857:5
	generate
		if (MEM_REQ_RATIO > 1) begin : gen_downsize_core_rsp_data
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:858:9
			hpdcache_mux #(
				.NINPUT(MEM_REQ_RATIO),
				.DATA_WIDTH(HPDcacheCfg[255-:32])
			) data_read_rsp_mux_i(
				.data_i(mem_resp_read_i[hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0-:((hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0) >= 1 ? hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0 : 2 - (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))]),
				.sel_i(req_addr_q[$clog2(HPDcacheCfg[255-:32] / 8)+:MEM_REQ_WORD_INDEX_WIDTH]),
				.data_o(rsp_rdata_d)
			);
		end
		else begin : gen_eqsize_core_rsp_data
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:871:9
			assign rsp_rdata_d = mem_resp_read_i[hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0-:((hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0) >= 1 ? hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0 : 2 - (hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))];
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:875:5
	assign mem_resp_read_ready_o = 1'b1;
	assign mem_resp_write_ready_o = 1'b1;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:881:5
	always @(posedge clk_i) begin : req_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:883:9
		if (req_valid_i && req_ready_o) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:884:13
			req_op_q <= req_op_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:885:13
			req_addr_q <= req_addr_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:886:13
			req_size_q <= req_size_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:887:13
			req_data_q <= req_data_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:888:13
			req_be_q <= req_be_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:889:13
			req_uc_q <= req_uc_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:890:13
			req_sid_q <= req_sid_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:891:13
			req_tid_q <= req_tid_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:892:13
			req_need_rsp_q <= req_need_rsp_i;
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:899:5
	wire lrsc_rsrv_valid_set;
	wire lrsc_rsrv_valid_reset;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:901:5
	assign lrsc_rsrv_valid_set = lrsc_uc_set;
	assign lrsc_rsrv_valid_reset = lrsc_uc_reset | lrsc_snoop_reset;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:904:5
	always @(posedge clk_i or negedge rst_ni) begin : uc_fsm_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:906:9
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:907:13
			uc_fsm_q <= 32'd0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:908:13
			lrsc_rsrv_valid_q <= 1'b0;
		end
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:910:13
			uc_fsm_q <= uc_fsm_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:911:13
			lrsc_rsrv_valid_q <= (~lrsc_rsrv_valid_q & lrsc_rsrv_valid_set) | (lrsc_rsrv_valid_q & ~lrsc_rsrv_valid_reset);
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:916:5
	always @(posedge clk_i) begin : uc_amo_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:918:9
		lrsc_rsrv_addr_q <= lrsc_rsrv_addr_d;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:919:9
		uc_sc_retcode_q <= uc_sc_retcode_d;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:925:5
	always @(posedge clk_i) begin
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:927:9
		if (mem_resp_read_valid_i)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:928:13
			rsp_rdata_q <= rsp_rdata_d;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:930:9
		mem_resp_write_valid_q <= mem_resp_write_valid_d;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:931:9
		mem_resp_read_valid_q <= mem_resp_read_valid_d;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:934:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:936:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:937:13
			rsp_error_q <= 1'b0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:939:13
			rsp_error_q <= (~rsp_error_q & rsp_error_set) | (rsp_error_q & ~rsp_error_rst);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:948:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(req_valid_i && req_op_i.is_ld) -> req_uc_i
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:950:21
	// 	$error("uc_handler: unexpected load request on cacheable region");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:952:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(req_valid_i && req_op_i.is_st) -> req_uc_i
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:954:21
	// 	$error("uc_handler: unexpected store request on cacheable region");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:956:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(req_valid_i && ((((((((((req_op_i.is_amo_lr || req_op_i.is_amo_sc) || req_op_i.is_amo_swap) || req_op_i.is_amo_add) || req_op_i.is_amo_and) || req_op_i.is_amo_or) || req_op_i.is_amo_xor) || req_op_i.is_amo_max) || req_op_i.is_amo_maxu) || req_op_i.is_amo_min) || req_op_i.is_amo_minu)) -> req_need_rsp_i
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:968:21
	// 	$error("uc_handler: amo requests shall need a response");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:970:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(req_valid_i && ((((((((((req_op_i.is_amo_lr || req_op_i.is_amo_sc) || req_op_i.is_amo_swap) || req_op_i.is_amo_add) || req_op_i.is_amo_and) || req_op_i.is_amo_or) || req_op_i.is_amo_xor) || req_op_i.is_amo_max) || req_op_i.is_amo_maxu) || req_op_i.is_amo_min) || req_op_i.is_amo_minu)) -> (req_size_i inside { 2, 3 })
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:982:21
	// 	$error("uc_handler: amo requests shall be 4 or 8 bytes wide");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:984:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(mem_resp_write_valid_i || mem_resp_read_valid_i) -> (uc_fsm_q == UC_MEM_WAIT_RSP)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv:986:21
	// 	$error("uc_handler: unexpected response from memory");
	// end
	initial _sv2v_0 = 0;
endmodule
