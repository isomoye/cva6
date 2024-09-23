module cva6_hpdcache_wrapper_8C0C0_C09DD (
	clk_i,
	rst_ni,
	dcache_enable_i,
	dcache_flush_i,
	dcache_flush_ack_o,
	dcache_miss_o,
	dcache_amo_req_i,
	dcache_amo_resp_o,
	dcache_cmo_req_i,
	dcache_cmo_resp_o,
	dcache_req_ports_i,
	dcache_req_ports_o,
	wbuffer_empty_o,
	wbuffer_not_ni_o,
	hwpf_base_set_i,
	hwpf_base_i,
	hwpf_base_o,
	hwpf_param_set_i,
	hwpf_param_i,
	hwpf_param_o,
	hwpf_throttle_set_i,
	hwpf_throttle_i,
	hwpf_throttle_o,
	hwpf_status_o,
	dcache_mem_req_miss_read_ready_i,
	dcache_mem_req_miss_read_valid_o,
	dcache_mem_req_miss_read_o,
	dcache_mem_resp_miss_read_ready_o,
	dcache_mem_resp_miss_read_valid_i,
	dcache_mem_resp_miss_read_i,
	dcache_mem_req_wbuf_write_ready_i,
	dcache_mem_req_wbuf_write_valid_o,
	dcache_mem_req_wbuf_write_o,
	dcache_mem_req_wbuf_write_data_ready_i,
	dcache_mem_req_wbuf_write_data_valid_o,
	dcache_mem_req_wbuf_write_data_o,
	dcache_mem_resp_wbuf_write_ready_o,
	dcache_mem_resp_wbuf_write_valid_i,
	dcache_mem_resp_wbuf_write_i,
	dcache_mem_req_uc_read_ready_i,
	dcache_mem_req_uc_read_valid_o,
	dcache_mem_req_uc_read_o,
	dcache_mem_resp_uc_read_ready_o,
	dcache_mem_resp_uc_read_valid_i,
	dcache_mem_resp_uc_read_i,
	dcache_mem_req_uc_write_ready_i,
	dcache_mem_req_uc_write_valid_o,
	dcache_mem_req_uc_write_o,
	dcache_mem_req_uc_write_data_ready_i,
	dcache_mem_req_uc_write_data_valid_o,
	dcache_mem_req_uc_write_data_o,
	dcache_mem_resp_uc_write_ready_o,
	dcache_mem_resp_uc_write_valid_i,
	dcache_mem_resp_uc_write_i
);
	// removed localparam type dcache_req_i_t_dcache_req_i_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_i_t_dcache_req_i_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_o_t_dcache_req_o_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_o_t_dcache_req_o_t_CVA6Cfg = 0;
	// removed localparam type hpdcache_data_be_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_data_be_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_data_word_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_data_word_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_addr_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_addr_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_be_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_be_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_data_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_data_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_id_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_id_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_req_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_req_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_req_w_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_req_w_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_resp_r_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_resp_r_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_resp_w_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_resp_w_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_be_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_be_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_data_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_data_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_offset_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_offset_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_sid_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_sid_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_tid_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_tid_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_rsp_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_rsp_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_tag_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_tag_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_wbuf_timecnt_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_wbuf_timecnt_t_HPDcacheCfg = 0;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:19:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:20:15
	// removed localparam type hpdcache_pkg_hpdcache_victim_sel_policy_t
	// removed localparam type hpdcache_pkg_hpdcache_user_cfg_t
	// removed localparam type hpdcache_pkg_hpdcache_cfg_t
	parameter [1349:0] HPDcacheCfg = 1'sb0;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:21:20
	// removed localparam type dcache_req_i_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:22:20
	// removed localparam type dcache_req_o_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:23:15
	parameter signed [31:0] NumPorts = 4;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:24:15
	parameter signed [31:0] NrHwPrefetchers = 4;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:26:20
	// removed localparam type cmo_req_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:27:20
	// removed localparam type cmo_rsp_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:28:20
	// removed localparam type hpdcache_mem_addr_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:29:20
	// removed localparam type hpdcache_mem_id_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:30:20
	// removed localparam type hpdcache_mem_data_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:31:20
	// removed localparam type hpdcache_mem_be_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:32:20
	// removed localparam type hpdcache_mem_req_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:33:20
	// removed localparam type hpdcache_mem_req_w_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:34:20
	// removed localparam type hpdcache_mem_resp_r_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:35:20
	// removed localparam type hpdcache_mem_resp_w_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:36:20
	// removed localparam type hpdcache_req_offset_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:37:20
	// removed localparam type hpdcache_data_word_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:38:20
	// removed localparam type hpdcache_req_data_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:39:20
	// removed localparam type hpdcache_req_be_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:40:20
	// removed localparam type hpdcache_req_sid_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:41:20
	// removed localparam type hpdcache_req_tid_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:42:20
	// removed localparam type hpdcache_tag_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:43:20
	// removed localparam type hpdcache_req_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:44:20
	// removed localparam type hpdcache_rsp_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:45:20
	// removed localparam type hpdcache_wbuf_timecnt_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:46:20
	// removed localparam type hpdcache_data_be_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:55:5
	input wire clk_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:57:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:63:5
	input wire dcache_enable_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:65:5
	input wire dcache_flush_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:67:5
	output reg dcache_flush_ack_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:69:5
	output wire dcache_miss_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:72:5
	// removed localparam type ariane_pkg_amo_t
	// removed localparam type ariane_pkg_amo_req_t
	input wire [134:0] dcache_amo_req_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:74:5
	// removed localparam type ariane_pkg_amo_resp_t
	output wire [64:0] dcache_amo_resp_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:76:5
	input wire dcache_cmo_req_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:78:5
	output wire dcache_cmo_resp_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:80:5
	input wire [(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (NumPorts * ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2)) - 1 : (NumPorts * (1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))) + ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 0)):(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)] dcache_req_ports_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:82:5
	output wire [(NumPorts * (((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32])) - 1:0] dcache_req_ports_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:84:5
	output wire wbuffer_empty_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:86:5
	output wire wbuffer_not_ni_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:90:5
	input wire [NrHwPrefetchers - 1:0] hwpf_base_set_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:92:5
	input wire [(NrHwPrefetchers * 64) - 1:0] hwpf_base_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:94:5
	output wire [(NrHwPrefetchers * 64) - 1:0] hwpf_base_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:96:5
	input wire [NrHwPrefetchers - 1:0] hwpf_param_set_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:98:5
	input wire [(NrHwPrefetchers * 64) - 1:0] hwpf_param_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:100:5
	output wire [(NrHwPrefetchers * 64) - 1:0] hwpf_param_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:102:5
	input wire [NrHwPrefetchers - 1:0] hwpf_throttle_set_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:104:5
	input wire [(NrHwPrefetchers * 64) - 1:0] hwpf_throttle_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:106:5
	output wire [(NrHwPrefetchers * 64) - 1:0] hwpf_throttle_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:108:5
	output wire [63:0] hwpf_status_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:110:5
	input wire dcache_mem_req_miss_read_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:111:5
	output wire dcache_mem_req_miss_read_valid_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:112:5
	output wire [((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] dcache_mem_req_miss_read_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:114:5
	output wire dcache_mem_resp_miss_read_ready_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:115:5
	input wire dcache_mem_resp_miss_read_valid_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:116:5
	input wire [((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0:0] dcache_mem_resp_miss_read_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:118:5
	input wire dcache_mem_req_wbuf_write_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:119:5
	output wire dcache_mem_req_wbuf_write_valid_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:120:5
	output wire [((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] dcache_mem_req_wbuf_write_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:122:5
	input wire dcache_mem_req_wbuf_write_data_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:123:5
	output wire dcache_mem_req_wbuf_write_data_valid_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:124:5
	output wire [(hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0:0] dcache_mem_req_wbuf_write_data_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:126:5
	output wire dcache_mem_resp_wbuf_write_ready_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:127:5
	input wire dcache_mem_resp_wbuf_write_valid_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:128:5
	input wire [(3 + hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]) - 1:0] dcache_mem_resp_wbuf_write_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:130:5
	input wire dcache_mem_req_uc_read_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:131:5
	output wire dcache_mem_req_uc_read_valid_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:132:5
	output wire [((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] dcache_mem_req_uc_read_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:134:5
	output wire dcache_mem_resp_uc_read_ready_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:135:5
	input wire dcache_mem_resp_uc_read_valid_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:136:5
	input wire [((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0:0] dcache_mem_resp_uc_read_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:138:5
	input wire dcache_mem_req_uc_write_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:139:5
	output wire dcache_mem_req_uc_write_valid_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:140:5
	output wire [((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] dcache_mem_req_uc_write_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:142:5
	input wire dcache_mem_req_uc_write_data_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:143:5
	output wire dcache_mem_req_uc_write_data_valid_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:144:5
	output wire [(hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0:0] dcache_mem_req_uc_write_data_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:146:5
	output wire dcache_mem_resp_uc_write_ready_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:147:5
	input wire dcache_mem_resp_uc_write_valid_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:148:5
	input wire [(3 + hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]) - 1:0] dcache_mem_resp_uc_write_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:150:3
	localparam signed [31:0] HPDCACHE_NREQUESTERS = NumPorts + 2;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:152:3
	// removed localparam type hwpf_stride_param_t
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:154:3
	wire [0:HPDCACHE_NREQUESTERS - 1] dcache_req_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:155:3
	wire [0:HPDCACHE_NREQUESTERS - 1] dcache_req_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:156:3
	wire [((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? (HPDCACHE_NREQUESTERS * (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2)) - 1 : (HPDCACHE_NREQUESTERS * (1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 0)):((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 0 : ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1)] dcache_req;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:157:3
	wire [0:HPDCACHE_NREQUESTERS - 1] dcache_req_abort;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:158:3
	wire [(HPDCACHE_NREQUESTERS * hpdcache_tag_t_HPDcacheCfg[351-:32]) - 1:0] dcache_req_tag;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:159:3
	// removed localparam type hpdcache_pkg_hpdcache_pma_t
	wire [(HPDCACHE_NREQUESTERS * 2) - 1:0] dcache_req_pma;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:160:3
	wire [0:HPDCACHE_NREQUESTERS - 1] dcache_rsp_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:161:3
	wire [(((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (HPDCACHE_NREQUESTERS * ((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2)) - 1 : (HPDCACHE_NREQUESTERS * (1 - ((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1))) + ((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 0)):(((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? 0 : (((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1)] dcache_rsp;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:162:3
	wire dcache_read_miss;
	wire dcache_write_miss;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:164:3
	wire [2:0] snoop_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:165:3
	wire [2:0] snoop_abort;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:166:3
	wire [(3 * hpdcache_req_offset_t_HPDcacheCfg[287-:32]) - 1:0] snoop_addr_offset;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:167:3
	wire [(3 * hpdcache_tag_t_HPDcacheCfg[351-:32]) - 1:0] snoop_addr_tag;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:168:3
	wire [2:0] snoop_phys_indexed;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:170:3
	wire dcache_cmo_req_is_prefetch;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:172:3
	// removed localparam type hwpf_stride_pkg_hwpf_stride_throttle_t
	wire [(NrHwPrefetchers * 32) - 1:0] hwpf_throttle_in;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:173:3
	wire [(NrHwPrefetchers * 32) - 1:0] hwpf_throttle_out;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:175:3
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:176:5
	wire [(((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1:0] dcache_req_ports [0:NumPorts - 2];
	genvar _gv_r_1;
	function automatic [hpdcache_req_sid_t_HPDcacheCfg[1093-:32] - 1:0] sv2v_cast_8C178;
		input reg [hpdcache_req_sid_t_HPDcacheCfg[1093-:32] - 1:0] inp;
		sv2v_cast_8C178 = inp;
	endfunction
	generate
		for (_gv_r_1 = 0; _gv_r_1 < (NumPorts - 1); _gv_r_1 = _gv_r_1 + 1) begin : gen_cva6_hpdcache_load_if_adapter
			localparam r = _gv_r_1;
			// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:179:7
			assign dcache_req_ports[r] = dcache_req_ports_i[(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) + (r * (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)))+:(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))];
			// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:181:7
			// removed localparam type sv2v_uu_i_cva6_hpdcache_load_if_adapter_cva6_amo_req_i
			localparam [134:0] sv2v_uu_i_cva6_hpdcache_load_if_adapter_ext_cva6_amo_req_i_0 = 1'sb0;
			cva6_hpdcache_if_adapter_D71A0_F1924 #(
				.dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_dcache_req_i_t_CVA6Cfg),
				.dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_dcache_req_o_t_CVA6Cfg),
				.hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg(hpdcache_req_offset_t_HPDcacheCfg),
				.hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg(hpdcache_req_sid_t_HPDcacheCfg),
				.hpdcache_req_t_hpdcache_req_t_HPDcacheCfg(hpdcache_req_t_HPDcacheCfg),
				.hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg(hpdcache_rsp_t_HPDcacheCfg),
				.hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg(hpdcache_tag_t_HPDcacheCfg),
				.CVA6Cfg(CVA6Cfg),
				.HPDcacheCfg(HPDcacheCfg),
				.is_load_port(1'b1)
			) i_cva6_hpdcache_load_if_adapter(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.hpdcache_req_sid_i(sv2v_cast_8C178(r)),
				.cva6_req_i(dcache_req_ports[r]),
				.cva6_req_o(dcache_req_ports_o[r * (((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32])+:((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]]),
				.cva6_amo_req_i(sv2v_uu_i_cva6_hpdcache_load_if_adapter_ext_cva6_amo_req_i_0),
				.cva6_amo_resp_o(),
				.hpdcache_req_valid_o(dcache_req_valid[r]),
				.hpdcache_req_ready_i(dcache_req_ready[r]),
				.hpdcache_req_o(dcache_req[((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 0 : ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) + (((HPDCACHE_NREQUESTERS - 1) - r) * ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1)))+:((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))]),
				.hpdcache_req_abort_o(dcache_req_abort[r]),
				.hpdcache_req_tag_o(dcache_req_tag[((HPDCACHE_NREQUESTERS - 1) - r) * hpdcache_tag_t_HPDcacheCfg[351-:32]+:hpdcache_tag_t_HPDcacheCfg[351-:32]]),
				.hpdcache_req_pma_o(dcache_req_pma[((HPDCACHE_NREQUESTERS - 1) - r) * 2+:2]),
				.hpdcache_rsp_valid_i(dcache_rsp_valid[r]),
				.hpdcache_rsp_i(dcache_rsp[(((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? 0 : (((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) + (((HPDCACHE_NREQUESTERS - 1) - r) * (((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2 : 1 - ((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1)))+:(((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2 : 1 - ((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1))])
			);
		end
	endgenerate
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:215:5
	cva6_hpdcache_if_adapter_D71A0_F1924 #(
		.dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_dcache_req_i_t_CVA6Cfg),
		.dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_dcache_req_o_t_CVA6Cfg),
		.hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg(hpdcache_req_offset_t_HPDcacheCfg),
		.hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg(hpdcache_req_sid_t_HPDcacheCfg),
		.hpdcache_req_t_hpdcache_req_t_HPDcacheCfg(hpdcache_req_t_HPDcacheCfg),
		.hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg(hpdcache_rsp_t_HPDcacheCfg),
		.hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg(hpdcache_tag_t_HPDcacheCfg),
		.CVA6Cfg(CVA6Cfg),
		.HPDcacheCfg(HPDcacheCfg),
		.is_load_port(1'b0)
	) i_cva6_hpdcache_store_if_adapter(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.hpdcache_req_sid_i(sv2v_cast_8C178(NumPorts - 1)),
		.cva6_req_i(dcache_req_ports_i[(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) + ((NumPorts - 1) * (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)))+:(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))]),
		.cva6_req_o(dcache_req_ports_o[(NumPorts - 1) * (((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32])+:((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]]),
		.cva6_amo_req_i(dcache_amo_req_i),
		.cva6_amo_resp_o(dcache_amo_resp_o),
		.hpdcache_req_valid_o(dcache_req_valid[NumPorts - 1]),
		.hpdcache_req_ready_i(dcache_req_ready[NumPorts - 1]),
		.hpdcache_req_o(dcache_req[((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 0 : ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) + (((HPDCACHE_NREQUESTERS - 1) - (NumPorts - 1)) * ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1)))+:((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))]),
		.hpdcache_req_abort_o(dcache_req_abort[NumPorts - 1]),
		.hpdcache_req_tag_o(dcache_req_tag[((HPDCACHE_NREQUESTERS - 1) - (NumPorts - 1)) * hpdcache_tag_t_HPDcacheCfg[351-:32]+:hpdcache_tag_t_HPDcacheCfg[351-:32]]),
		.hpdcache_req_pma_o(dcache_req_pma[((HPDCACHE_NREQUESTERS - 1) - (NumPorts - 1)) * 2+:2]),
		.hpdcache_rsp_valid_i(dcache_rsp_valid[NumPorts - 1]),
		.hpdcache_rsp_i(dcache_rsp[(((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? 0 : (((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) + (((HPDCACHE_NREQUESTERS - 1) - (NumPorts - 1)) * (((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2 : 1 - ((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1)))+:(((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2 : 1 - ((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1))])
	);
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:272:5
	assign dcache_req_valid[NumPorts] = 1'b0;
	assign dcache_req[((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 0 : ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) + (((HPDCACHE_NREQUESTERS - 1) - NumPorts) * ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1)))+:((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))] = 1'sb0;
	assign dcache_req_abort[NumPorts] = 1'b0;
	assign dcache_req_tag[((HPDCACHE_NREQUESTERS - 1) - NumPorts) * hpdcache_tag_t_HPDcacheCfg[351-:32]+:hpdcache_tag_t_HPDcacheCfg[351-:32]] = 1'sb0;
	assign dcache_req_pma[((HPDCACHE_NREQUESTERS - 1) - NumPorts) * 2+:2] = 1'sb0;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:281:3
	assign snoop_valid[0] = dcache_req_valid[1] & dcache_req_ready[1];
	assign snoop_abort[0] = dcache_req_abort[1];
	assign snoop_addr_offset[0+:hpdcache_req_offset_t_HPDcacheCfg[287-:32]] = dcache_req[((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((HPDCACHE_NREQUESTERS - 2) * ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) : (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))))) : ((((HPDCACHE_NREQUESTERS - 2) * ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) : (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))))) + ((hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) >= ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) ? ((hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) - ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))))) + 1 : (((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) - (hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))))) + 1)) - 1)-:((hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) >= ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) ? ((hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) - ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))))) + 1 : (((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) - (hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))))) + 1)];
	assign snoop_addr_tag[0+:hpdcache_tag_t_HPDcacheCfg[351-:32]] = dcache_req_tag[(HPDCACHE_NREQUESTERS - 2) * hpdcache_tag_t_HPDcacheCfg[351-:32]+:hpdcache_tag_t_HPDcacheCfg[351-:32]];
	assign snoop_phys_indexed[0] = dcache_req[((HPDCACHE_NREQUESTERS - 2) * ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 1 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1) : (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (1 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))];
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:288:3
	assign snoop_valid[1] = dcache_req_valid[NumPorts - 1] & dcache_req_ready[NumPorts - 1];
	assign snoop_abort[1] = dcache_req_abort[NumPorts - 1];
	assign snoop_addr_offset[hpdcache_req_offset_t_HPDcacheCfg[287-:32]+:hpdcache_req_offset_t_HPDcacheCfg[287-:32]] = dcache_req[((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? (((HPDCACHE_NREQUESTERS - 1) - (NumPorts - 1)) * ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) : (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))))) : (((((HPDCACHE_NREQUESTERS - 1) - (NumPorts - 1)) * ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) : (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))))) + ((hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) >= ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) ? ((hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) - ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))))) + 1 : (((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) - (hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))))) + 1)) - 1)-:((hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) >= ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) ? ((hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) - ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))))) + 1 : (((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) - (hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))))) + 1)];
	assign snoop_addr_tag[hpdcache_tag_t_HPDcacheCfg[351-:32]+:hpdcache_tag_t_HPDcacheCfg[351-:32]] = dcache_req_tag[((HPDCACHE_NREQUESTERS - 1) - (NumPorts - 1)) * hpdcache_tag_t_HPDcacheCfg[351-:32]+:hpdcache_tag_t_HPDcacheCfg[351-:32]];
	assign snoop_phys_indexed[1] = dcache_req[(((HPDCACHE_NREQUESTERS - 1) - (NumPorts - 1)) * ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 1 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1) : (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) - (1 + (hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))];
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:307:3
	assign snoop_valid[2] = 1'b0;
	assign snoop_abort[2] = 1'b0;
	assign snoop_addr_offset[2 * hpdcache_req_offset_t_HPDcacheCfg[287-:32]+:hpdcache_req_offset_t_HPDcacheCfg[287-:32]] = 1'sb0;
	assign snoop_addr_tag[2 * hpdcache_tag_t_HPDcacheCfg[351-:32]+:hpdcache_tag_t_HPDcacheCfg[351-:32]] = 1'sb0;
	assign snoop_phys_indexed[2] = 1'b0;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:314:3
	genvar _gv_h_1;
	// removed localparam type hwpf_stride_pkg_hwpf_stride_param_t
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	function automatic [63:0] sv2v_cast_64;
		input reg [63:0] inp;
		sv2v_cast_64 = inp;
	endfunction
	generate
		for (_gv_h_1 = 0; _gv_h_1 < NrHwPrefetchers; _gv_h_1 = _gv_h_1 + 1) begin : gen_hwpf_throttle
			localparam h = _gv_h_1;
			// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:316:7
			assign hwpf_throttle_in[h * 32+:32] = sv2v_cast_32(hwpf_throttle_i[h * 64+:64]);
			// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:317:7
			assign hwpf_throttle_o[h * 64+:64] = sv2v_cast_64(hwpf_throttle_out[h * 32+:32]);
		end
	endgenerate
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:321:3
	hwpf_stride_wrapper_6E38E_28CF5 #(
		.hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg(hpdcache_req_be_t_HPDcacheCfg),
		.hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg(hpdcache_req_data_t_HPDcacheCfg),
		.hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg(hpdcache_req_offset_t_HPDcacheCfg),
		.hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg(hpdcache_req_sid_t_HPDcacheCfg),
		.hpdcache_req_t_hpdcache_req_t_HPDcacheCfg(hpdcache_req_t_HPDcacheCfg),
		.hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg(hpdcache_req_tid_t_HPDcacheCfg),
		.hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg(hpdcache_rsp_t_HPDcacheCfg),
		.hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg(hpdcache_tag_t_HPDcacheCfg),
		.HPDcacheCfg(HPDcacheCfg),
		.NUM_HW_PREFETCH(NrHwPrefetchers),
		.NUM_SNOOP_PORTS(3)
	) i_hwpf_stride_wrapper(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.hwpf_stride_base_set_i(hwpf_base_set_i),
		.hwpf_stride_base_i(hwpf_base_i),
		.hwpf_stride_base_o(hwpf_base_o),
		.hwpf_stride_param_set_i(hwpf_param_set_i),
		.hwpf_stride_param_i(hwpf_param_i),
		.hwpf_stride_param_o(hwpf_param_o),
		.hwpf_stride_throttle_set_i(hwpf_throttle_set_i),
		.hwpf_stride_throttle_i(hwpf_throttle_in),
		.hwpf_stride_throttle_o(hwpf_throttle_out),
		.hwpf_stride_status_o(hwpf_status_o),
		.snoop_valid_i(snoop_valid),
		.snoop_abort_i(snoop_abort),
		.snoop_addr_offset_i(snoop_addr_offset),
		.snoop_addr_tag_i(snoop_addr_tag),
		.snoop_phys_indexed_i(snoop_phys_indexed),
		.hpdcache_req_sid_i(sv2v_cast_8C178(NumPorts + 1)),
		.hpdcache_req_valid_o(dcache_req_valid[NumPorts + 1]),
		.hpdcache_req_ready_i(dcache_req_ready[NumPorts + 1]),
		.hpdcache_req_o(dcache_req[((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 0 : ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) + (((HPDCACHE_NREQUESTERS - 1) - (NumPorts + 1)) * ((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1)))+:((((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))]),
		.hpdcache_req_abort_o(dcache_req_abort[NumPorts + 1]),
		.hpdcache_req_tag_o(dcache_req_tag[((HPDCACHE_NREQUESTERS - 1) - (NumPorts + 1)) * hpdcache_tag_t_HPDcacheCfg[351-:32]+:hpdcache_tag_t_HPDcacheCfg[351-:32]]),
		.hpdcache_req_pma_o(dcache_req_pma[((HPDCACHE_NREQUESTERS - 1) - (NumPorts + 1)) * 2+:2]),
		.hpdcache_rsp_valid_i(dcache_rsp_valid[NumPorts + 1]),
		.hpdcache_rsp_i(dcache_rsp[(((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? 0 : (((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) + (((HPDCACHE_NREQUESTERS - 1) - (NumPorts + 1)) * (((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2 : 1 - ((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1)))+:(((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2 : 1 - ((((hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1))])
	);
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:366:3
	hpdcache_90ACD_E6E47 #(
		.hpdcache_data_be_t_hpdcache_data_be_t_HPDcacheCfg(hpdcache_data_be_t_HPDcacheCfg),
		.hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg(hpdcache_data_word_t_HPDcacheCfg),
		.hpdcache_mem_addr_t_hpdcache_mem_addr_t_HPDcacheCfg(hpdcache_mem_addr_t_HPDcacheCfg),
		.hpdcache_mem_be_t_hpdcache_mem_be_t_HPDcacheCfg(hpdcache_mem_be_t_HPDcacheCfg),
		.hpdcache_mem_data_t_hpdcache_mem_data_t_HPDcacheCfg(hpdcache_mem_data_t_HPDcacheCfg),
		.hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg(hpdcache_mem_id_t_HPDcacheCfg),
		.hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg(hpdcache_mem_req_t_HPDcacheCfg),
		.hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg(hpdcache_mem_req_w_t_HPDcacheCfg),
		.hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg(hpdcache_mem_resp_r_t_HPDcacheCfg),
		.hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg(hpdcache_mem_resp_w_t_HPDcacheCfg),
		.hpdcache_req_be_t_hpdcache_req_be_t_HPDcacheCfg(hpdcache_req_be_t_HPDcacheCfg),
		.hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg(hpdcache_req_data_t_HPDcacheCfg),
		.hpdcache_req_offset_t_hpdcache_req_offset_t_HPDcacheCfg(hpdcache_req_offset_t_HPDcacheCfg),
		.hpdcache_req_sid_t_hpdcache_req_sid_t_HPDcacheCfg(hpdcache_req_sid_t_HPDcacheCfg),
		.hpdcache_req_t_hpdcache_req_t_HPDcacheCfg(hpdcache_req_t_HPDcacheCfg),
		.hpdcache_req_tid_t_hpdcache_req_tid_t_HPDcacheCfg(hpdcache_req_tid_t_HPDcacheCfg),
		.hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg(hpdcache_rsp_t_HPDcacheCfg),
		.hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg(hpdcache_tag_t_HPDcacheCfg),
		.wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg(hpdcache_wbuf_timecnt_t_HPDcacheCfg),
		.HPDcacheCfg(HPDcacheCfg)
	) i_hpdcache(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.wbuf_flush_i(dcache_flush_i),
		.core_req_valid_i(dcache_req_valid),
		.core_req_ready_o(dcache_req_ready),
		.core_req_i(dcache_req),
		.core_req_abort_i(dcache_req_abort),
		.core_req_tag_i(dcache_req_tag),
		.core_req_pma_i(dcache_req_pma),
		.core_rsp_valid_o(dcache_rsp_valid),
		.core_rsp_o(dcache_rsp),
		.mem_req_miss_read_ready_i(dcache_mem_req_miss_read_ready_i),
		.mem_req_miss_read_valid_o(dcache_mem_req_miss_read_valid_o),
		.mem_req_miss_read_o(dcache_mem_req_miss_read_o),
		.mem_resp_miss_read_ready_o(dcache_mem_resp_miss_read_ready_o),
		.mem_resp_miss_read_valid_i(dcache_mem_resp_miss_read_valid_i),
		.mem_resp_miss_read_i(dcache_mem_resp_miss_read_i),
		.mem_req_wbuf_write_ready_i(dcache_mem_req_wbuf_write_ready_i),
		.mem_req_wbuf_write_valid_o(dcache_mem_req_wbuf_write_valid_o),
		.mem_req_wbuf_write_o(dcache_mem_req_wbuf_write_o),
		.mem_req_wbuf_write_data_ready_i(dcache_mem_req_wbuf_write_data_ready_i),
		.mem_req_wbuf_write_data_valid_o(dcache_mem_req_wbuf_write_data_valid_o),
		.mem_req_wbuf_write_data_o(dcache_mem_req_wbuf_write_data_o),
		.mem_resp_wbuf_write_ready_o(dcache_mem_resp_wbuf_write_ready_o),
		.mem_resp_wbuf_write_valid_i(dcache_mem_resp_wbuf_write_valid_i),
		.mem_resp_wbuf_write_i(dcache_mem_resp_wbuf_write_i),
		.mem_req_uc_read_ready_i(dcache_mem_req_uc_read_ready_i),
		.mem_req_uc_read_valid_o(dcache_mem_req_uc_read_valid_o),
		.mem_req_uc_read_o(dcache_mem_req_uc_read_o),
		.mem_resp_uc_read_ready_o(dcache_mem_resp_uc_read_ready_o),
		.mem_resp_uc_read_valid_i(dcache_mem_resp_uc_read_valid_i),
		.mem_resp_uc_read_i(dcache_mem_resp_uc_read_i),
		.mem_req_uc_write_ready_i(dcache_mem_req_uc_write_ready_i),
		.mem_req_uc_write_valid_o(dcache_mem_req_uc_write_valid_o),
		.mem_req_uc_write_o(dcache_mem_req_uc_write_o),
		.mem_req_uc_write_data_ready_i(dcache_mem_req_uc_write_data_ready_i),
		.mem_req_uc_write_data_valid_o(dcache_mem_req_uc_write_data_valid_o),
		.mem_req_uc_write_data_o(dcache_mem_req_uc_write_data_o),
		.mem_resp_uc_write_ready_o(dcache_mem_resp_uc_write_ready_o),
		.mem_resp_uc_write_valid_i(dcache_mem_resp_uc_write_valid_i),
		.mem_resp_uc_write_i(dcache_mem_resp_uc_write_i),
		.evt_cache_write_miss_o(dcache_write_miss),
		.evt_cache_read_miss_o(dcache_read_miss),
		.evt_uncached_req_o(),
		.evt_cmo_req_o(),
		.evt_write_req_o(),
		.evt_read_req_o(),
		.evt_prefetch_req_o(),
		.evt_req_on_hold_o(),
		.evt_rtab_rollback_o(),
		.evt_stall_refill_o(),
		.evt_stall_o(),
		.wbuf_empty_o(wbuffer_empty_o),
		.cfg_enable_i(dcache_enable_i),
		.cfg_wbuf_threshold_i(3'd2),
		.cfg_wbuf_reset_timecnt_on_write_i(1'b1),
		.cfg_wbuf_sequential_waw_i(1'b0),
		.cfg_wbuf_inhibit_write_coalescing_i(1'b0),
		.cfg_prefetch_updt_plru_i(1'b1),
		.cfg_error_on_cacheable_amo_i(1'b0),
		.cfg_rtab_single_entry_i(1'b0)
	);
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:467:3
	assign dcache_miss_o = dcache_read_miss;
	assign wbuffer_not_ni_o = wbuffer_empty_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:469:3
	always @(posedge clk_i or negedge rst_ni) begin : dcache_flush_ff
		// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:470:5
		if (!rst_ni)
			// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:470:18
			dcache_flush_ack_o <= 1'b0;
		else
			// Trace: core/cache_subsystem/cva6_hpdcache_wrapper.sv:471:10
			dcache_flush_ack_o <= ~dcache_flush_ack_o & dcache_flush_i;
	end
endmodule
