module cva6_hpdcache_subsystem_axi_arbiter_63CB4_CA41F (
	clk_i,
	rst_ni,
	icache_miss_valid_i,
	icache_miss_ready_o,
	icache_miss_i,
	icache_miss_id_i,
	icache_miss_resp_valid_o,
	icache_miss_resp_o,
	dcache_miss_ready_o,
	dcache_miss_valid_i,
	dcache_miss_i,
	dcache_miss_resp_ready_i,
	dcache_miss_resp_valid_o,
	dcache_miss_resp_o,
	dcache_wbuf_ready_o,
	dcache_wbuf_valid_i,
	dcache_wbuf_i,
	dcache_wbuf_data_ready_o,
	dcache_wbuf_data_valid_i,
	dcache_wbuf_data_i,
	dcache_wbuf_resp_ready_i,
	dcache_wbuf_resp_valid_o,
	dcache_wbuf_resp_o,
	dcache_uc_read_ready_o,
	dcache_uc_read_valid_i,
	dcache_uc_read_i,
	dcache_uc_read_id_i,
	dcache_uc_read_resp_ready_i,
	dcache_uc_read_resp_valid_o,
	dcache_uc_read_resp_o,
	dcache_uc_write_ready_o,
	dcache_uc_write_valid_i,
	dcache_uc_write_i,
	dcache_uc_write_id_i,
	dcache_uc_write_data_ready_o,
	dcache_uc_write_data_valid_i,
	dcache_uc_write_data_i,
	dcache_uc_write_resp_ready_i,
	dcache_uc_write_resp_valid_o,
	dcache_uc_write_resp_o,
	axi_req_o,
	axi_resp_i
);
	// removed localparam type axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth_type
	// removed localparam type axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth_type
	// removed localparam type axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_b_chan_t_axi_b_chan_t_CVA6Cfg_type
	// removed localparam type axi_b_chan_t_axi_b_chan_t_config_pkg_NrMaxRules_type
	parameter [17102:0] axi_b_chan_t_axi_b_chan_t_CVA6Cfg = 0;
	parameter signed [31:0] axi_b_chan_t_axi_b_chan_t_config_pkg_NrMaxRules = 0;
	// removed localparam type axi_r_chan_t_axi_r_chan_t_CVA6Cfg_type
	// removed localparam type axi_r_chan_t_axi_r_chan_t_config_pkg_NrMaxRules_type
	parameter [17102:0] axi_r_chan_t_axi_r_chan_t_CVA6Cfg = 0;
	parameter signed [31:0] axi_r_chan_t_axi_r_chan_t_config_pkg_NrMaxRules = 0;
	// removed localparam type axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth_type
	// removed localparam type axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth_type
	// removed localparam type axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth_type
	// removed localparam type axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth_type
	// removed localparam type axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth_type
	// removed localparam type axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth_type
	// removed localparam type axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth_type
	// removed localparam type axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth = 0;
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
	// removed localparam type icache_req_t_icache_req_t_CVA6Cfg_type
	parameter [17102:0] icache_req_t_icache_req_t_CVA6Cfg = 0;
	// removed localparam type icache_rtrn_t_icache_rtrn_t_CVA6Cfg_type
	parameter [17102:0] icache_rtrn_t_icache_rtrn_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:19:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:20:20
	// removed localparam type hpdcache_mem_id_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:21:20
	// removed localparam type hpdcache_mem_req_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:22:20
	// removed localparam type hpdcache_mem_req_w_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:23:20
	// removed localparam type hpdcache_mem_resp_r_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:24:20
	// removed localparam type hpdcache_mem_resp_w_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:25:20
	// removed localparam type icache_req_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:26:20
	// removed localparam type icache_rtrn_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:28:15
	parameter [31:0] AxiAddrWidth = 1;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:29:15
	parameter [31:0] AxiDataWidth = 1;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:30:15
	parameter [31:0] AxiIdWidth = 1;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:31:15
	parameter [31:0] AxiUserWidth = 1;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:32:20
	// removed localparam type axi_ar_chan_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:33:20
	// removed localparam type axi_aw_chan_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:34:20
	// removed localparam type axi_w_chan_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:35:20
	// removed localparam type axi_b_chan_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:36:20
	// removed localparam type axi_r_chan_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:37:20
	// removed localparam type axi_req_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:38:20
	// removed localparam type axi_rsp_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:45:5
	input wire clk_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:46:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:50:5
	input wire icache_miss_valid_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:51:5
	output wire icache_miss_ready_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:52:5
	input wire [(((icache_req_t_icache_req_t_CVA6Cfg[1286-:32] + icache_req_t_icache_req_t_CVA6Cfg[17038-:32]) + 1) + icache_req_t_icache_req_t_CVA6Cfg[16616-:32]) - 1:0] icache_miss_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:53:5
	input wire [hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] icache_miss_id_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:55:5
	output wire icache_miss_resp_valid_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:56:5
	output wire [((((1 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32]) + ((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32])) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32]) - 1:0] icache_miss_resp_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:61:5
	output wire dcache_miss_ready_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:62:5
	input wire dcache_miss_valid_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:63:5
	input wire [((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] dcache_miss_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:65:5
	input wire dcache_miss_resp_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:66:5
	output wire dcache_miss_resp_valid_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:67:5
	output wire [((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0:0] dcache_miss_resp_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:70:5
	output wire dcache_wbuf_ready_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:71:5
	input wire dcache_wbuf_valid_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:72:5
	input wire [((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] dcache_wbuf_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:74:5
	output wire dcache_wbuf_data_ready_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:75:5
	input wire dcache_wbuf_data_valid_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:76:5
	input wire [(hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0:0] dcache_wbuf_data_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:78:5
	input wire dcache_wbuf_resp_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:79:5
	output wire dcache_wbuf_resp_valid_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:80:5
	output wire [(3 + hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]) - 1:0] dcache_wbuf_resp_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:83:5
	output wire dcache_uc_read_ready_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:84:5
	input wire dcache_uc_read_valid_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:85:5
	input wire [((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] dcache_uc_read_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:86:5
	input wire [hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] dcache_uc_read_id_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:88:5
	input wire dcache_uc_read_resp_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:89:5
	output wire dcache_uc_read_resp_valid_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:90:5
	output wire [((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0:0] dcache_uc_read_resp_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:93:5
	output wire dcache_uc_write_ready_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:94:5
	input wire dcache_uc_write_valid_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:95:5
	input wire [((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] dcache_uc_write_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:96:5
	input wire [hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] dcache_uc_write_id_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:98:5
	output wire dcache_uc_write_data_ready_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:99:5
	input wire dcache_uc_write_data_valid_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:100:5
	input wire [(hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0:0] dcache_uc_write_data_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:102:5
	input wire dcache_uc_write_resp_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:103:5
	output wire dcache_uc_write_resp_valid_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:104:5
	output wire [(3 + hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]) - 1:0] dcache_uc_write_resp_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:109:5
	output wire [(((((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_req_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:110:5
	input wire [(((4 + ((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_resp_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:118:3
	localparam signed [31:0] MEM_RESP_RT_DEPTH = 1 << CVA6Cfg[16616-:32];
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:119:3
	// removed localparam type mem_resp_rt_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:120:3
	// removed localparam type icache_resp_data_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:125:3
	localparam signed [31:0] ICACHE_CL_WORDS = CVA6Cfg[1190-:32] / 64;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:126:3
	localparam signed [31:0] ICACHE_CL_WORD_INDEX = $clog2(ICACHE_CL_WORDS);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:127:3
	localparam signed [31:0] ICACHE_CL_SIZE = $clog2(CVA6Cfg[1190-:32] / 8);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:128:3
	localparam signed [31:0] ICACHE_WORD_SIZE = 3;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:129:3
	localparam signed [31:0] ICACHE_MEM_REQ_CL_LEN = ((CVA6Cfg[1190-:32] + CVA6Cfg[16712-:32]) - 1) / CVA6Cfg[16712-:32];
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:131:3
	localparam signed [31:0] ICACHE_MEM_REQ_CL_SIZE = (CVA6Cfg[16712-:32] <= CVA6Cfg[1190-:32] ? $clog2(CVA6Cfg[16712-:32] / 8) : ICACHE_CL_SIZE);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:138:3
	wire [((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] icache_miss_req_wdata;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:139:3
	wire icache_miss_req_w;
	wire icache_miss_req_wok;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:141:3
	wire [((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] icache_miss_req_rdata;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:142:3
	wire icache_miss_req_r;
	wire icache_miss_req_rok;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:144:3
	reg icache_miss_pending_q;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:151:3
	hpdcache_fifo_reg_D868F_2B410 #(
		.fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg(hpdcache_mem_req_t_HPDcacheCfg),
		.FIFO_DEPTH(1)
	) i_icache_miss_req_fifo(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.w_i(icache_miss_req_w),
		.wok_o(icache_miss_req_wok),
		.wdata_i(icache_miss_req_wdata),
		.r_i(icache_miss_req_r),
		.rok_o(icache_miss_req_rok),
		.rdata_o(icache_miss_req_rdata)
	);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:167:3
	assign icache_miss_req_w = icache_miss_valid_i;
	assign icache_miss_ready_o = icache_miss_req_wok;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:169:3
	assign icache_miss_req_wdata[hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))-:((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) >= (11 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) ? ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) - (11 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7))) + 1 : ((11 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) - (hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)))) + 1)] = icache_miss_i[icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)-:((icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) >= (1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) ? ((icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) - (1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) + 1 : ((1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) - (icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) + 1)];
	assign icache_miss_req_wdata[11 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)-:((11 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) >= (3 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) ? ((11 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) - (3 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7))) + 1 : ((3 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) - (11 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) + 1)] = (icache_miss_i[icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0] ? 0 : ICACHE_MEM_REQ_CL_LEN - 1);
	assign icache_miss_req_wdata[3 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)-:((3 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) >= (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7) ? ((3 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) - (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) + 1 : ((hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7) - (3 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) + 1)] = (icache_miss_i[icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0] ? ICACHE_WORD_SIZE : ICACHE_MEM_REQ_CL_SIZE);
	assign icache_miss_req_wdata[hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6-:((hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6) >= 7 ? hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 0 : 8 - (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))] = icache_miss_i[icache_req_t_icache_req_t_CVA6Cfg[16616-:32] - 1-:icache_req_t_icache_req_t_CVA6Cfg[16616-:32]];
	// removed localparam type hpdcache_pkg_hpdcache_mem_command_e
	assign icache_miss_req_wdata[6-:2] = 2'b00;
	// removed localparam type hpdcache_pkg_hpdcache_mem_atomic_e
	assign icache_miss_req_wdata[4-:4] = 4'd0;
	assign icache_miss_req_wdata[0] = ~icache_miss_i[icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0];
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:179:3
	wire icache_miss_resp_w;
	wire icache_miss_resp_wok;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:180:3
	wire [((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0:0] icache_miss_resp_wdata;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:182:3
	wire icache_miss_resp_data_w;
	wire icache_miss_resp_data_wok;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:183:3
	wire icache_miss_resp_data_r;
	wire icache_miss_resp_data_rok;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:184:3
	wire [CVA6Cfg[1190-:32] - 1:0] icache_miss_resp_data_rdata;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:186:3
	wire icache_miss_resp_meta_w;
	wire icache_miss_resp_meta_wok;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:187:3
	wire icache_miss_resp_meta_r;
	wire icache_miss_resp_meta_rok;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:188:3
	wire [hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] icache_miss_resp_meta_id;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:190:3
	reg [CVA6Cfg[1190-:32] - 1:0] icache_miss_rdata;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:192:3
	generate
		if (CVA6Cfg[16712-:32] < CVA6Cfg[1190-:32]) begin : genblk1
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:194:7
			hpdcache_fifo_reg_850F0_64A15 #(
				.fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg(hpdcache_mem_id_t_HPDcacheCfg),
				.FIFO_DEPTH(1)
			) i_icache_refill_meta_fifo(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.w_i(icache_miss_resp_meta_w),
				.wok_o(icache_miss_resp_meta_wok),
				.wdata_i(icache_miss_resp_wdata[hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)-:((hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)) >= (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1) ? ((hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)) - (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1)) + 1 : ((hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1) - (hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))) + 1)]),
				.r_i(icache_miss_resp_meta_r),
				.rok_o(icache_miss_resp_meta_rok),
				.rdata_o(icache_miss_resp_meta_id)
			);
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:210:7
			hpdcache_data_upsize #(
				.WR_WIDTH(CVA6Cfg[16712-:32]),
				.RD_WIDTH(CVA6Cfg[1190-:32]),
				.DEPTH(1)
			) i_icache_hpdcache_data_upsize(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.w_i(icache_miss_resp_data_w),
				.wlast_i(icache_miss_resp_wdata[0]),
				.wok_o(icache_miss_resp_data_wok),
				.wdata_i(icache_miss_resp_wdata[hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0-:((hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0) >= 1 ? hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0 : 2 - (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))]),
				.r_i(icache_miss_resp_data_r),
				.rok_o(icache_miss_resp_data_rok),
				.rdata_o(icache_miss_resp_data_rdata)
			);
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:228:7
			assign icache_miss_resp_meta_r = 1'b1;
			assign icache_miss_resp_data_r = 1'b1;
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:230:7
			assign icache_miss_resp_meta_w = icache_miss_resp_w & icache_miss_resp_wdata[0];
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:232:7
			assign icache_miss_resp_data_w = icache_miss_resp_w;
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:234:7
			assign icache_miss_resp_wok = icache_miss_resp_data_wok & (icache_miss_resp_meta_wok | ~icache_miss_resp_wdata[0]);
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:237:7
			wire [CVA6Cfg[1190-:32]:1] sv2v_tmp_246D3;
			assign sv2v_tmp_246D3 = icache_miss_resp_data_rdata;
			always @(*) icache_miss_rdata = sv2v_tmp_246D3;
		end
		else begin : genblk1
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:240:7
			assign icache_miss_resp_data_rok = icache_miss_resp_w;
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:241:7
			assign icache_miss_resp_meta_rok = icache_miss_resp_w;
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:242:7
			assign icache_miss_resp_wok = 1'b1;
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:243:7
			assign icache_miss_resp_meta_id = icache_miss_resp_wdata[hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)-:((hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)) >= (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1) ? ((hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)) - (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1)) + 1 : ((hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1) - (hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))) + 1)];
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:244:7
			assign icache_miss_resp_data_rdata = icache_miss_resp_wdata[hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0-:((hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0) >= 1 ? hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0 : 2 - (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))];
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:247:7
			always @(*) begin : icache_miss_resp_data_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:248:9
				if (!icache_miss_req_rdata[0]) begin : sv2v_autoblock_1
					// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:249:11
					reg [ICACHE_CL_WORD_INDEX - 1:0] icache_miss_word_index;
					// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:250:11
					reg [63:0] icache_miss_word;
					// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:251:11
					icache_miss_word_index = icache_miss_req_rdata[(hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) - (hpdcache_mem_req_t_HPDcacheCfg[639-:32] - 4)+:ICACHE_CL_WORD_INDEX];
					// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:252:11
					icache_miss_word = icache_miss_resp_data_rdata[icache_miss_word_index * 64+:64];
					// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:253:11
					icache_miss_rdata = {{CVA6Cfg[1190-:32] - 64 {1'b0}}, icache_miss_word};
				end
				else
					// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:255:11
					icache_miss_rdata = icache_miss_resp_data_rdata;
			end
		end
	endgenerate
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:261:3
	assign icache_miss_resp_valid_o = icache_miss_resp_meta_rok;
	// removed localparam type wt_cache_pkg_icache_in_t
	assign icache_miss_resp_o[1 + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))))] = 1'd1;
	assign icache_miss_resp_o[icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))-:((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))) >= (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0)) ? ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))) - (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0))) + 1 : ((((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0)) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) + 1)] = 1'sb0;
	assign icache_miss_resp_o[((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)-:((((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)) >= (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0) ? ((((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0)) + 1 : ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0) - (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))) + 1)] = 1'sb0;
	assign icache_miss_resp_o[icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1-:icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32]] = icache_miss_resp_meta_id;
	assign icache_miss_resp_o[icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))-:((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) >= (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0))) ? ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0)))) + 1 : ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0))) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))))) + 1)] = icache_miss_rdata;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:271:3
	assign icache_miss_req_r = icache_miss_resp_meta_rok;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:276:3
	wire [2:0] mem_req_read_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:277:3
	wire [2:0] mem_req_read_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:278:3
	wire [((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? (3 * (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7)) - 1 : (3 * (1 - (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))) + (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 5)):((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)] mem_req_read;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:280:3
	wire mem_req_read_ready_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:281:3
	wire mem_req_read_valid_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:282:3
	wire [((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] mem_req_read_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:284:3
	assign mem_req_read_valid[0] = icache_miss_req_rok & ~icache_miss_pending_q;
	assign mem_req_read[((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) + 0+:((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))] = icache_miss_req_rdata;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:287:3
	assign dcache_miss_ready_o = mem_req_read_ready[1];
	assign mem_req_read_valid[1] = dcache_miss_valid_i;
	assign mem_req_read[((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) + ((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))+:((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))] = dcache_miss_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:291:3
	assign dcache_uc_read_ready_o = mem_req_read_ready[2];
	assign mem_req_read_valid[2] = dcache_uc_read_valid_i;
	assign mem_req_read[((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) + (2 * ((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)))+:((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))] = dcache_uc_read_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:295:3
	hpdcache_mem_req_read_arbiter_D3F78_6A011 #(
		.hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg(hpdcache_mem_req_t_HPDcacheCfg),
		.N(3)
	) i_mem_req_read_arbiter(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.mem_req_read_ready_o(mem_req_read_ready),
		.mem_req_read_valid_i(mem_req_read_valid),
		.mem_req_read_i(mem_req_read),
		.mem_req_read_ready_i(mem_req_read_ready_arb),
		.mem_req_read_valid_o(mem_req_read_valid_arb),
		.mem_req_read_o(mem_req_read_arb)
	);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:314:3
	wire mem_resp_read_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:315:3
	wire mem_resp_read_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:316:3
	wire [((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0:0] mem_resp_read;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:318:3
	wire [2:0] mem_resp_read_ready_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:319:3
	wire [2:0] mem_resp_read_valid_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:320:3
	wire [((((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? (3 * (((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 1)) - 1 : (3 * (1 - (((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0))) + (((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) - 1)):((((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? 0 : ((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0)] mem_resp_read_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:322:3
	reg [(MEM_RESP_RT_DEPTH * hpdcache_mem_id_t_HPDcacheCfg[607-:32]) - 1:0] mem_resp_read_rt;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:324:3
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:325:5
		begin : sv2v_autoblock_2
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:325:10
			reg signed [31:0] i;
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:325:10
			for (i = 0; i < MEM_RESP_RT_DEPTH; i = i + 1)
				begin
					// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:326:7
					mem_resp_read_rt[i * hpdcache_mem_id_t_HPDcacheCfg[607-:32]+:hpdcache_mem_id_t_HPDcacheCfg[607-:32]] = (i == sv2v_cast_32_signed(icache_miss_id_i) ? 0 : (i == sv2v_cast_32_signed(dcache_uc_read_id_i) ? 2 : 1));
				end
		end
	end
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:331:3
	hpdcache_mem_resp_demux_8DB2C_93A06 #(
		.resp_id_t_hpdcache_mem_id_t_HPDcacheCfg(hpdcache_mem_id_t_HPDcacheCfg),
		.resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg(hpdcache_mem_resp_r_t_HPDcacheCfg),
		.N(3)
	) i_mem_resp_read_demux(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.mem_resp_ready_o(mem_resp_read_ready),
		.mem_resp_valid_i(mem_resp_read_valid),
		.mem_resp_id_i(mem_resp_read[hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)-:((hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)) >= (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1) ? ((hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0)) - (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1)) + 1 : ((hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 1) - (hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32] + (hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32] + 0))) + 1)]),
		.mem_resp_i(mem_resp_read),
		.mem_resp_ready_i(mem_resp_read_ready_arb),
		.mem_resp_valid_o(mem_resp_read_valid_arb),
		.mem_resp_o(mem_resp_read_arb),
		.mem_resp_rt_i(mem_resp_read_rt)
	);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:351:3
	assign icache_miss_resp_w = mem_resp_read_valid_arb[0];
	assign icache_miss_resp_wdata = mem_resp_read_arb[((((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? 0 : ((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) + 0+:((((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? ((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 1 : 1 - (((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0))];
	assign mem_resp_read_ready_arb[0] = icache_miss_resp_wok;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:355:3
	assign dcache_miss_resp_valid_o = mem_resp_read_valid_arb[1];
	assign dcache_miss_resp_o = mem_resp_read_arb[((((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? 0 : ((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) + ((((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? ((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 1 : 1 - (((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0))+:((((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? ((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 1 : 1 - (((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0))];
	assign mem_resp_read_ready_arb[1] = dcache_miss_resp_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:359:3
	assign dcache_uc_read_resp_valid_o = mem_resp_read_valid_arb[2];
	assign dcache_uc_read_resp_o = mem_resp_read_arb[((((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? 0 : ((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) + (2 * ((((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? ((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 1 : 1 - (((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0)))+:((((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? ((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 1 : 1 - (((2 + hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0))];
	assign mem_resp_read_ready_arb[2] = dcache_uc_read_resp_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:366:3
	wire [1:0] mem_req_write_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:367:3
	wire [1:0] mem_req_write_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:368:3
	wire [((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? (2 * (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7)) - 1 : (2 * (1 - (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))) + (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 5)):((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)] mem_req_write;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:370:3
	wire [1:0] mem_req_write_data_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:371:3
	wire [1:0] mem_req_write_data_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:372:3
	wire [(((hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? (2 * ((hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 1)) - 1 : (2 * (1 - ((hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0))) + ((hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) - 1)):(((hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? 0 : (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0)] mem_req_write_data;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:374:3
	wire mem_req_write_ready_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:375:3
	wire mem_req_write_valid_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:376:3
	wire [((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] mem_req_write_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:378:3
	wire mem_req_write_data_ready_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:379:3
	wire mem_req_write_data_valid_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:380:3
	wire [(hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0:0] mem_req_write_data_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:382:3
	assign dcache_wbuf_ready_o = mem_req_write_ready[0];
	assign mem_req_write_valid[0] = dcache_wbuf_valid_i;
	assign mem_req_write[((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) + 0+:((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))] = dcache_wbuf_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:386:3
	assign dcache_wbuf_data_ready_o = mem_req_write_data_ready[0];
	assign mem_req_write_data_valid[0] = dcache_wbuf_data_valid_i;
	assign mem_req_write_data[(((hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? 0 : (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) + 0+:(((hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 1 : 1 - ((hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0))] = dcache_wbuf_data_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:390:3
	assign dcache_uc_write_ready_o = mem_req_write_ready[1];
	assign mem_req_write_valid[1] = dcache_uc_write_valid_i;
	assign mem_req_write[((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) + ((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))+:((((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))] = dcache_uc_write_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:394:3
	assign dcache_uc_write_data_ready_o = mem_req_write_data_ready[1];
	assign mem_req_write_data_valid[1] = dcache_uc_write_data_valid_i;
	assign mem_req_write_data[(((hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? 0 : (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) + (((hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 1 : 1 - ((hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0))+:(((hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 1 : 1 - ((hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0))] = dcache_uc_write_data_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:398:3
	hpdcache_mem_req_write_arbiter_6DD54_E43AC #(
		.hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg(hpdcache_mem_req_t_HPDcacheCfg),
		.hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg(hpdcache_mem_req_w_t_HPDcacheCfg),
		.N(2)
	) i_mem_req_write_arbiter(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.mem_req_write_ready_o(mem_req_write_ready),
		.mem_req_write_valid_i(mem_req_write_valid),
		.mem_req_write_i(mem_req_write),
		.mem_req_write_data_ready_o(mem_req_write_data_ready),
		.mem_req_write_data_valid_i(mem_req_write_data_valid),
		.mem_req_write_data_i(mem_req_write_data),
		.mem_req_write_ready_i(mem_req_write_ready_arb),
		.mem_req_write_valid_o(mem_req_write_valid_arb),
		.mem_req_write_o(mem_req_write_arb),
		.mem_req_write_data_ready_i(mem_req_write_data_ready_arb),
		.mem_req_write_data_valid_o(mem_req_write_data_valid_arb),
		.mem_req_write_data_o(mem_req_write_data_arb)
	);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:426:3
	wire mem_resp_write_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:427:3
	wire mem_resp_write_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:428:3
	wire [(3 + hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]) - 1:0] mem_resp_write;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:430:3
	wire [1:0] mem_resp_write_ready_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:431:3
	wire [1:0] mem_resp_write_valid_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:432:3
	wire [(2 * (3 + hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32])) - 1:0] mem_resp_write_arb;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:434:3
	reg [(MEM_RESP_RT_DEPTH * hpdcache_mem_id_t_HPDcacheCfg[607-:32]) - 1:0] mem_resp_write_rt;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:436:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:437:5
		begin : sv2v_autoblock_3
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:437:10
			reg signed [31:0] i;
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:437:10
			for (i = 0; i < MEM_RESP_RT_DEPTH; i = i + 1)
				begin
					// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:438:7
					mem_resp_write_rt[i * hpdcache_mem_id_t_HPDcacheCfg[607-:32]+:hpdcache_mem_id_t_HPDcacheCfg[607-:32]] = (i == sv2v_cast_32_signed(dcache_uc_write_id_i) ? 1 : 0);
				end
		end
	end
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:442:3
	hpdcache_mem_resp_demux_E5C71_C8B09 #(
		.resp_id_t_hpdcache_mem_id_t_HPDcacheCfg(hpdcache_mem_id_t_HPDcacheCfg),
		.resp_t_hpdcache_mem_resp_w_t_HPDcacheCfg(hpdcache_mem_resp_w_t_HPDcacheCfg),
		.N(2)
	) i_hpdcache_mem_resp_write_demux(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.mem_resp_ready_o(mem_resp_write_ready),
		.mem_resp_valid_i(mem_resp_write_valid),
		.mem_resp_id_i(mem_resp_write[hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] - 1-:hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]]),
		.mem_resp_i(mem_resp_write),
		.mem_resp_ready_i(mem_resp_write_ready_arb),
		.mem_resp_valid_o(mem_resp_write_valid_arb),
		.mem_resp_o(mem_resp_write_arb),
		.mem_resp_rt_i(mem_resp_write_rt)
	);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:462:3
	assign dcache_wbuf_resp_valid_o = mem_resp_write_valid_arb[0];
	assign dcache_wbuf_resp_o = mem_resp_write_arb[0+:3 + hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]];
	assign mem_resp_write_ready_arb[0] = dcache_wbuf_resp_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:466:3
	assign dcache_uc_write_resp_valid_o = mem_resp_write_valid_arb[1];
	assign dcache_uc_write_resp_o = mem_resp_write_arb[3 + hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]+:3 + hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]];
	assign mem_resp_write_ready_arb[1] = dcache_uc_write_resp_ready_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:473:3
	always @(posedge clk_i or negedge rst_ni) begin : icache_miss_pending_ff
		// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:474:5
		if (!rst_ni)
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:475:7
			icache_miss_pending_q <= 1'b0;
		else
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:477:7
			icache_miss_pending_q <= ((icache_miss_req_rok & mem_req_read_ready[0]) & ~icache_miss_pending_q) | (~(icache_miss_req_r & icache_miss_req_rok) & icache_miss_pending_q);
	end
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:486:3
	hpdcache_mem_to_axi_write_A24E0_6C8C1 #(
		.aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth(axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth),
		.aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth(axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth),
		.aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth(axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth),
		.b_chan_t_axi_b_chan_t_axi_b_chan_t_CVA6Cfg(axi_b_chan_t_axi_b_chan_t_CVA6Cfg),
		.b_chan_t_axi_b_chan_t_axi_b_chan_t_config_pkg_NrMaxRules(axi_b_chan_t_axi_b_chan_t_config_pkg_NrMaxRules),
		.hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg(hpdcache_mem_req_t_HPDcacheCfg),
		.hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg(hpdcache_mem_req_w_t_HPDcacheCfg),
		.hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg(hpdcache_mem_resp_w_t_HPDcacheCfg),
		.w_chan_t_axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth(axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth),
		.w_chan_t_axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth(axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth),
		.w_chan_t_axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth(axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth)
	) i_hpdcache_mem_to_axi_write(
		.req_ready_o(mem_req_write_ready_arb),
		.req_valid_i(mem_req_write_valid_arb),
		.req_i(mem_req_write_arb),
		.req_data_ready_o(mem_req_write_data_ready_arb),
		.req_data_valid_i(mem_req_write_data_valid_arb),
		.req_data_i(mem_req_write_data_arb),
		.resp_ready_i(mem_resp_write_ready),
		.resp_valid_o(mem_resp_write_valid),
		.resp_o(mem_resp_write),
		.axi_aw_valid_o(axi_req_o[1 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))]),
		.axi_aw_o(axi_req_o[(((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))-:(((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) >= (1 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 2)))) ? (((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (1 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 2))))) + 1 : ((1 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 2)))) - ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))))) + 1)]),
		.axi_aw_ready_i(axi_resp_i[4 + (((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]),
		.axi_w_valid_o(axi_req_o[2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)]),
		.axi_w_o(axi_req_o[(((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))-:(((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) >= (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 2)) ? (((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 2))) + 1 : ((2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 2)) - ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))) + 1)]),
		.axi_w_ready_i(axi_resp_i[2 + (((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]),
		.axi_b_valid_i(axi_resp_i[1 + (((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]),
		.axi_b_i(axi_resp_i[((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0)-:((((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) >= (1 + ((((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) ? ((((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (1 + ((((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1 : ((1 + ((((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1)]),
		.axi_b_ready_o(axi_req_o[1 + ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)])
	);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:519:3
	hpdcache_mem_to_axi_read_9FA2A_A93C0 #(
		.ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth(axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth),
		.ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth(axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth),
		.ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth(axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth),
		.hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg(hpdcache_mem_req_t_HPDcacheCfg),
		.hpdcache_mem_resp_r_t_hpdcache_mem_resp_r_t_HPDcacheCfg(hpdcache_mem_resp_r_t_HPDcacheCfg),
		.r_chan_t_axi_r_chan_t_axi_r_chan_t_CVA6Cfg(axi_r_chan_t_axi_r_chan_t_CVA6Cfg),
		.r_chan_t_axi_r_chan_t_axi_r_chan_t_config_pkg_NrMaxRules(axi_r_chan_t_axi_r_chan_t_config_pkg_NrMaxRules)
	) i_hpdcache_mem_to_axi_read(
		.req_ready_o(mem_req_read_ready_arb),
		.req_valid_i(mem_req_read_valid_arb),
		.req_i(mem_req_read_arb),
		.resp_ready_i(mem_resp_read_ready),
		.resp_valid_o(mem_resp_read_valid),
		.resp_o(mem_resp_read),
		.axi_ar_valid_o(axi_req_o[1]),
		.axi_ar_o(axi_req_o[(((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1-:(((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) >= 2 ? (((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 0 : 3 - ((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))]),
		.axi_ar_ready_i(axi_resp_i[3 + (((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]),
		.axi_r_valid_i(axi_resp_i[(((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0]),
		.axi_r_i(axi_resp_i[(((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) - 1-:((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth]),
		.axi_r_ready_o(axi_req_o[0])
	);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:547:3
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:550:3
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv:553:3
	initial _sv2v_0 = 0;
endmodule
