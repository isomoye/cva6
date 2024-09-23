module cva6_hpdcache_subsystem_964A5_2044D (
	clk_i,
	rst_ni,
	noc_req_o,
	noc_resp_i,
	icache_en_i,
	icache_flush_i,
	icache_miss_o,
	icache_areq_i,
	icache_areq_o,
	icache_dreq_i,
	icache_dreq_o,
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
	hwpf_status_o
);
	// removed localparam type axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth_type
	// removed localparam type axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth_type
	// removed localparam type axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_b_chan_t_CVA6Cfg_type
	// removed localparam type axi_b_chan_t_config_pkg_NrMaxRules_type
	parameter [17102:0] axi_b_chan_t_CVA6Cfg = 0;
	parameter signed [31:0] axi_b_chan_t_config_pkg_NrMaxRules = 0;
	// removed localparam type axi_r_chan_t_CVA6Cfg_type
	// removed localparam type axi_r_chan_t_config_pkg_NrMaxRules_type
	parameter [17102:0] axi_r_chan_t_CVA6Cfg = 0;
	parameter signed [31:0] axi_r_chan_t_config_pkg_NrMaxRules = 0;
	// removed localparam type axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth_type
	// removed localparam type axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth_type
	// removed localparam type axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth = 0;
	// removed localparam type dcache_req_i_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_i_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_o_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_o_t_CVA6Cfg = 0;
	// removed localparam type icache_areq_t_CVA6Cfg_type
	parameter [17102:0] icache_areq_t_CVA6Cfg = 0;
	// removed localparam type icache_arsp_t_CVA6Cfg_type
	parameter [17102:0] icache_arsp_t_CVA6Cfg = 0;
	// removed localparam type icache_dreq_t_CVA6Cfg_type
	parameter [17102:0] icache_dreq_t_CVA6Cfg = 0;
	// removed localparam type icache_drsp_t_CVA6Cfg_type
	parameter [17102:0] icache_drsp_t_CVA6Cfg = 0;
	// removed localparam type icache_req_t_CVA6Cfg_type
	parameter [17102:0] icache_req_t_CVA6Cfg = 0;
	// removed localparam type icache_rtrn_t_CVA6Cfg_type
	parameter [17102:0] icache_rtrn_t_CVA6Cfg = 0;
	// removed localparam type noc_req_t_noc_req_t_ariane_axi_AddrWidth_type
	// removed localparam type noc_req_t_noc_req_t_ariane_axi_DataWidth_type
	// removed localparam type noc_req_t_noc_req_t_ariane_axi_IdWidth_type
	// removed localparam type noc_req_t_noc_req_t_ariane_axi_StrbWidth_type
	// removed localparam type noc_req_t_noc_req_t_ariane_axi_UserWidth_type
	parameter signed [31:0] noc_req_t_noc_req_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] noc_req_t_noc_req_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] noc_req_t_noc_req_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] noc_req_t_noc_req_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] noc_req_t_noc_req_t_ariane_axi_UserWidth = 0;
	// removed localparam type noc_resp_t_noc_resp_t_ariane_axi_DataWidth_type
	// removed localparam type noc_resp_t_noc_resp_t_ariane_axi_IdWidth_type
	// removed localparam type noc_resp_t_noc_resp_t_ariane_axi_UserWidth_type
	parameter signed [31:0] noc_resp_t_noc_resp_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] noc_resp_t_noc_resp_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] noc_resp_t_noc_resp_t_ariane_axi_UserWidth = 0;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:19:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:20:20
	// removed localparam type icache_areq_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:21:20
	// removed localparam type icache_arsp_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:22:20
	// removed localparam type icache_dreq_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:23:20
	// removed localparam type icache_drsp_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:24:20
	// removed localparam type icache_req_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:25:20
	// removed localparam type icache_rtrn_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:26:20
	// removed localparam type dcache_req_i_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:27:20
	// removed localparam type dcache_req_o_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:28:15
	parameter signed [31:0] NumPorts = 4;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:29:15
	parameter signed [31:0] NrHwPrefetchers = 4;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:31:20
	// removed localparam type axi_ar_chan_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:32:20
	// removed localparam type axi_aw_chan_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:33:20
	// removed localparam type axi_w_chan_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:34:20
	// removed localparam type axi_b_chan_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:35:20
	// removed localparam type axi_r_chan_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:36:20
	// removed localparam type noc_req_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:37:20
	// removed localparam type noc_resp_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:38:20
	// removed localparam type cmo_req_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:39:20
	// removed localparam type cmo_rsp_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:48:5
	input wire clk_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:50:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:55:5
	output wire [(((((((noc_req_t_noc_req_t_ariane_axi_IdWidth + noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((noc_req_t_noc_req_t_ariane_axi_DataWidth + noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + noc_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((noc_req_t_noc_req_t_ariane_axi_IdWidth + noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + noc_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] noc_req_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:57:5
	input wire [(((4 + ((noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + noc_resp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((noc_resp_t_noc_resp_t_ariane_axi_IdWidth + noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + noc_resp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] noc_resp_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:63:5
	input wire icache_en_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:65:5
	input wire icache_flush_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:67:5
	output wire icache_miss_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:69:5
	input wire [((1 + icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] icache_areq_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:71:5
	output wire [(1 + icache_arsp_t_CVA6Cfg[17070-:32]) - 1:0] icache_areq_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:73:5
	input wire [(4 + icache_dreq_t_CVA6Cfg[17070-:32]) - 1:0] icache_dreq_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:75:5
	output wire [((((2 + icache_drsp_t_CVA6Cfg[643-:32]) + icache_drsp_t_CVA6Cfg[708-:32]) + icache_drsp_t_CVA6Cfg[17070-:32]) + ((((icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] icache_dreq_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:82:5
	input wire dcache_enable_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:84:5
	input wire dcache_flush_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:86:5
	output wire dcache_flush_ack_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:88:5
	output wire dcache_miss_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:91:5
	// removed localparam type ariane_pkg_amo_t
	// removed localparam type ariane_pkg_amo_req_t
	input wire [134:0] dcache_amo_req_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:93:5
	// removed localparam type ariane_pkg_amo_resp_t
	output wire [64:0] dcache_amo_resp_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:95:5
	input wire dcache_cmo_req_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:97:5
	output wire dcache_cmo_resp_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:99:5
	input wire [(((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (NumPorts * ((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 2)) - 1 : (NumPorts * (1 - ((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))) + ((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 0)):(((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)] dcache_req_ports_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:101:5
	output wire [(NumPorts * (((2 + dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_CVA6Cfg[900-:32])) - 1:0] dcache_req_ports_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:103:5
	output wire wbuffer_empty_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:105:5
	output wire wbuffer_not_ni_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:109:5
	input wire [NrHwPrefetchers - 1:0] hwpf_base_set_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:111:5
	input wire [(NrHwPrefetchers * 64) - 1:0] hwpf_base_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:113:5
	output wire [(NrHwPrefetchers * 64) - 1:0] hwpf_base_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:115:5
	input wire [NrHwPrefetchers - 1:0] hwpf_param_set_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:117:5
	input wire [(NrHwPrefetchers * 64) - 1:0] hwpf_param_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:119:5
	output wire [(NrHwPrefetchers * 64) - 1:0] hwpf_param_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:121:5
	input wire [NrHwPrefetchers - 1:0] hwpf_throttle_set_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:123:5
	input wire [(NrHwPrefetchers * 64) - 1:0] hwpf_throttle_i;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:125:5
	output wire [(NrHwPrefetchers * 64) - 1:0] hwpf_throttle_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:127:5
	output wire [63:0] hwpf_status_o;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:132:3
	function [31:0] __minu;
		// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:132:32
		input reg [31:0] x;
		// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:132:48
		input reg [31:0] y;
		// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:133:5
		__minu = (x < y ? x : y);
	endfunction
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:136:3
	function [31:0] __maxu;
		// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:136:32
		input reg [31:0] x;
		// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:136:48
		input reg [31:0] y;
		// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:137:5
		__maxu = (y < x ? x : y);
	endfunction
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:142:3
	wire icache_miss_valid;
	wire icache_miss_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:143:3
	wire [(((icache_req_t_CVA6Cfg[1286-:32] + icache_req_t_CVA6Cfg[17038-:32]) + 1) + icache_req_t_CVA6Cfg[16616-:32]) - 1:0] icache_miss;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:145:3
	wire icache_miss_resp_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:146:3
	wire [((((1 + icache_rtrn_t_CVA6Cfg[1190-:32]) + icache_rtrn_t_CVA6Cfg[1158-:32]) + ((2 + icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_CVA6Cfg[1286-:32])) + icache_rtrn_t_CVA6Cfg[16616-:32]) - 1:0] icache_miss_resp;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:148:3
	localparam signed [31:0] ICACHE_RDTXID = 1 << (CVA6Cfg[16616-:32] - 1);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:150:3
	cva6_icache_CA401_5F806 #(
		.icache_areq_t_icache_areq_t_CVA6Cfg(icache_areq_t_CVA6Cfg),
		.icache_arsp_t_icache_arsp_t_CVA6Cfg(icache_arsp_t_CVA6Cfg),
		.icache_dreq_t_icache_dreq_t_CVA6Cfg(icache_dreq_t_CVA6Cfg),
		.icache_drsp_t_icache_drsp_t_CVA6Cfg(icache_drsp_t_CVA6Cfg),
		.icache_req_t_icache_req_t_CVA6Cfg(icache_req_t_CVA6Cfg),
		.icache_rtrn_t_icache_rtrn_t_CVA6Cfg(icache_rtrn_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg),
		.RdTxId(ICACHE_RDTXID)
	) i_cva6_icache(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(icache_flush_i),
		.en_i(icache_en_i),
		.miss_o(icache_miss_o),
		.areq_i(icache_areq_i),
		.areq_o(icache_areq_o),
		.dreq_i(icache_dreq_i),
		.dreq_o(icache_dreq_o),
		.mem_rtrn_vld_i(icache_miss_resp_valid),
		.mem_rtrn_i(icache_miss_resp),
		.mem_data_req_o(icache_miss_valid),
		.mem_data_ack_i(icache_miss_ready),
		.mem_data_o(icache_miss)
	);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:190:3
	localparam signed [31:0] HPDCACHE_NREQUESTERS = NumPorts + 2;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:192:3
	// removed localparam type hpdcache_pkg_hpdcache_victim_sel_policy_t
	// removed localparam type hpdcache_pkg_hpdcache_user_cfg_t
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	localparam [805:0] HPDcacheUserCfg = {sv2v_cast_32(HPDCACHE_NREQUESTERS), sv2v_cast_32(CVA6Cfg[17038-:32]), sv2v_cast_32(CVA6Cfg[17102-:32]), sv2v_cast_32(CVA6Cfg[836-:32]), sv2v_cast_32(CVA6Cfg[1092-:32]), sv2v_cast_32(CVA6Cfg[964-:32] / CVA6Cfg[17102-:32]), 32'd1, sv2v_cast_32(CVA6Cfg[1124-:32]), 33'h000000006, __minu(CVA6Cfg[1092-:32], 128 / CVA6Cfg[17102-:32]), sv2v_cast_32(CVA6Cfg[836-:32]), 1'b1, __maxu(CVA6Cfg[964-:32] / (2 * CVA6Cfg[17102-:32]), 1), sv2v_cast_32((CVA6Cfg[16584-:32] < 16 ? 1 : CVA6Cfg[16584-:32] / 2)), sv2v_cast_32((CVA6Cfg[16584-:32] < 16 ? CVA6Cfg[16584-:32] : 2)), sv2v_cast_32((CVA6Cfg[16584-:32] < 16 ? CVA6Cfg[16584-:32] : 2)), sv2v_cast_32((CVA6Cfg[16584-:32] < 16 ? 1 : CVA6Cfg[16584-:32] / 2)), 1'b1, CVA6Cfg[16584-:32] < 32'sd16, 33'h100000002, sv2v_cast_32(CVA6Cfg[740-:32]), sv2v_cast_32(CVA6Cfg[740-:32]), 97'h0000000020000000600000004, sv2v_cast_32(CVA6Cfg[16744-:32]), sv2v_cast_32(CVA6Cfg[16616-:32]), sv2v_cast_32(CVA6Cfg[16712-:32])};
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:226:3
	// removed localparam type hpdcache_pkg_hpdcache_cfg_t
	function automatic [1349:0] hpdcache_pkg_hpdcacheBuildConfig;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:449:59
		input reg [805:0] p;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:450:9
		reg [1349:0] ret;
		begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:452:9
			ret[1349-:806] = p;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:454:9
			ret[543-:32] = p[645-:32] * p[741-:32];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:455:9
			ret[447-:32] = $clog2(ret[543-:32] / 8);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:456:9
			ret[511-:32] = $clog2(p[645-:32]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:457:9
			ret[479-:32] = $clog2(p[741-:32] / 8);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:458:9
			ret[415-:32] = $clog2(p[709-:32]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:459:9
			ret[383-:32] = p[773-:32] - ret[447-:32];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:460:9
			ret[351-:32] = ret[383-:32] - ret[415-:32];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:461:9
			ret[319-:32] = $clog2(p[613-:32]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:462:9
			ret[287-:32] = p[773-:32] - ret[351-:32];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:463:9
			ret[255-:32] = p[613-:32] * p[741-:32];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:464:9
			ret[223-:32] = ret[255-:32] / 8;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:466:9
			ret[191-:32] = (p[419-:32] > 1 ? $clog2(p[419-:32]) : 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:467:9
			ret[159-:32] = (p[387-:32] > 1 ? $clog2(p[387-:32]) : 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:469:9
			ret[127-:32] = ret[255-:32] * p[192-:32];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:470:9
			ret[95-:32] = $clog2(p[256-:32]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:471:9
			ret[63-:32] = $clog2(p[224-:32]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:473:9
			ret[31-:32] = p[451-:32] * p[741-:32];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:475:9
			hpdcache_pkg_hpdcacheBuildConfig = ret;
		end
	endfunction
	localparam [1349:0] HPDcacheCfg = hpdcache_pkg_hpdcacheBuildConfig(HPDcacheUserCfg);
	// Trace: macro expansion of HPDCACHE_TYPEDEF_MEM_ATTR_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:231:40
	// removed localparam type hpdcache_mem_addr_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_MEM_ATTR_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:231:101
	// removed localparam type hpdcache_mem_id_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_MEM_ATTR_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:231:160
	// removed localparam type hpdcache_mem_data_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_MEM_ATTR_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:231:221
	// removed localparam type hpdcache_mem_be_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_MEM_REQ_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:232:68
	// removed localparam type hpdcache_pkg_hpdcache_mem_atomic_e
	// removed localparam type hpdcache_pkg_hpdcache_mem_command_e
	// removed localparam type hpdcache_pkg_hpdcache_mem_len_t
	// removed localparam type hpdcache_pkg_hpdcache_mem_size_t
	// removed localparam type hpdcache_mem_req_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_MEM_RESP_R_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:233:71
	// removed localparam type hpdcache_pkg_hpdcache_mem_error_e
	// removed localparam type hpdcache_mem_resp_r_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_MEM_REQ_W_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:234:70
	// removed localparam type hpdcache_mem_req_w_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_MEM_RESP_W_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:235:50
	// removed localparam type hpdcache_mem_resp_w_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_REQ_ATTR_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:239:57
	// removed localparam type hpdcache_tag_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_REQ_ATTR_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:239:124
	// removed localparam type hpdcache_data_word_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_REQ_ATTR_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:239:192
	// removed localparam type hpdcache_data_be_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_REQ_ATTR_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:239:263
	// removed localparam type hpdcache_req_offset_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_REQ_ATTR_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:239:333
	// removed localparam type hpdcache_req_data_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_REQ_ATTR_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:239:401
	// removed localparam type hpdcache_req_be_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_REQ_ATTR_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:239:467
	// removed localparam type hpdcache_req_sid_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_REQ_ATTR_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:239:534
	// removed localparam type hpdcache_req_tid_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_REQ_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:242:24
	// removed localparam type hpdcache_pkg_hpdcache_pma_t
	// removed localparam type hpdcache_pkg_hpdcache_req_op_t
	// removed localparam type hpdcache_pkg_hpdcache_req_size_t
	// removed localparam type hpdcache_req_t
	// Trace: macro expansion of HPDCACHE_TYPEDEF_RSP_T at core/cache_subsystem/cva6_hpdcache_subsystem.sv:244:28
	// removed localparam type hpdcache_rsp_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:246:3
	// removed localparam type hpdcache_wbuf_timecnt_t
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:248:3
	wire dcache_miss_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:249:3
	wire dcache_miss_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:250:3
	wire [((HPDcacheCfg[639-:32] + 11) + HPDcacheCfg[607-:32]) + 6:0] dcache_miss;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:252:3
	wire dcache_miss_resp_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:253:3
	wire dcache_miss_resp_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:254:3
	wire [((2 + HPDcacheCfg[607-:32]) + HPDcacheCfg[575-:32]) + 0:0] dcache_miss_resp;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:256:3
	wire dcache_wbuf_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:257:3
	wire dcache_wbuf_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:258:3
	wire [((HPDcacheCfg[639-:32] + 11) + HPDcacheCfg[607-:32]) + 6:0] dcache_wbuf;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:260:3
	wire dcache_wbuf_data_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:261:3
	wire dcache_wbuf_data_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:262:3
	wire [(HPDcacheCfg[575-:32] + (HPDcacheCfg[575-:32] / 8)) + 0:0] dcache_wbuf_data;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:264:3
	wire dcache_wbuf_resp_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:265:3
	wire dcache_wbuf_resp_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:266:3
	wire [(3 + HPDcacheCfg[607-:32]) - 1:0] dcache_wbuf_resp;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:268:3
	wire dcache_uc_read_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:269:3
	wire dcache_uc_read_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:270:3
	wire [((HPDcacheCfg[639-:32] + 11) + HPDcacheCfg[607-:32]) + 6:0] dcache_uc_read;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:272:3
	wire dcache_uc_read_resp_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:273:3
	wire dcache_uc_read_resp_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:274:3
	wire [((2 + HPDcacheCfg[607-:32]) + HPDcacheCfg[575-:32]) + 0:0] dcache_uc_read_resp;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:276:3
	wire dcache_uc_write_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:277:3
	wire dcache_uc_write_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:278:3
	wire [((HPDcacheCfg[639-:32] + 11) + HPDcacheCfg[607-:32]) + 6:0] dcache_uc_write;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:280:3
	wire dcache_uc_write_data_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:281:3
	wire dcache_uc_write_data_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:282:3
	wire [(HPDcacheCfg[575-:32] + (HPDcacheCfg[575-:32] / 8)) + 0:0] dcache_uc_write_data;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:284:3
	wire dcache_uc_write_resp_ready;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:285:3
	wire dcache_uc_write_resp_valid;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:286:3
	wire [(3 + HPDcacheCfg[607-:32]) - 1:0] dcache_uc_write_resp;
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:288:3
	cva6_hpdcache_wrapper_8C0C0_C09DD #(
		.dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_CVA6Cfg),
		.dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_CVA6Cfg),
		.hpdcache_data_be_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_data_word_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_mem_addr_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_mem_be_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_mem_data_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_mem_id_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_mem_req_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_mem_req_w_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_mem_resp_r_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_mem_resp_w_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_req_be_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_req_data_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_req_offset_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_req_sid_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_req_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_req_tid_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_rsp_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_tag_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_wbuf_timecnt_t_HPDcacheCfg(HPDcacheCfg),
		.CVA6Cfg(CVA6Cfg),
		.HPDcacheCfg(HPDcacheCfg),
		.NumPorts(NumPorts),
		.NrHwPrefetchers(NrHwPrefetchers)
	) i_dcache(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.dcache_enable_i(dcache_enable_i),
		.dcache_flush_i(dcache_flush_i),
		.dcache_flush_ack_o(dcache_flush_ack_o),
		.dcache_miss_o(dcache_miss_o),
		.dcache_amo_req_i(dcache_amo_req_i),
		.dcache_amo_resp_o(dcache_amo_resp_o),
		.dcache_cmo_req_i(dcache_cmo_req_i),
		.dcache_cmo_resp_o(dcache_cmo_resp_o),
		.dcache_req_ports_i(dcache_req_ports_i),
		.dcache_req_ports_o(dcache_req_ports_o),
		.wbuffer_empty_o(wbuffer_empty_o),
		.wbuffer_not_ni_o(wbuffer_not_ni_o),
		.hwpf_base_set_i(hwpf_base_set_i),
		.hwpf_base_i(hwpf_base_i),
		.hwpf_base_o(hwpf_base_o),
		.hwpf_param_set_i(hwpf_param_set_i),
		.hwpf_param_i(hwpf_param_i),
		.hwpf_param_o(hwpf_param_o),
		.hwpf_throttle_set_i(hwpf_throttle_set_i),
		.hwpf_throttle_i(hwpf_throttle_i),
		.hwpf_throttle_o(hwpf_throttle_o),
		.hwpf_status_o(hwpf_status_o),
		.dcache_mem_req_miss_read_ready_i(dcache_miss_ready),
		.dcache_mem_req_miss_read_valid_o(dcache_miss_valid),
		.dcache_mem_req_miss_read_o(dcache_miss),
		.dcache_mem_resp_miss_read_ready_o(dcache_miss_resp_ready),
		.dcache_mem_resp_miss_read_valid_i(dcache_miss_resp_valid),
		.dcache_mem_resp_miss_read_i(dcache_miss_resp),
		.dcache_mem_req_wbuf_write_ready_i(dcache_wbuf_ready),
		.dcache_mem_req_wbuf_write_valid_o(dcache_wbuf_valid),
		.dcache_mem_req_wbuf_write_o(dcache_wbuf),
		.dcache_mem_req_wbuf_write_data_ready_i(dcache_wbuf_data_ready),
		.dcache_mem_req_wbuf_write_data_valid_o(dcache_wbuf_data_valid),
		.dcache_mem_req_wbuf_write_data_o(dcache_wbuf_data),
		.dcache_mem_resp_wbuf_write_ready_o(dcache_wbuf_resp_ready),
		.dcache_mem_resp_wbuf_write_valid_i(dcache_wbuf_resp_valid),
		.dcache_mem_resp_wbuf_write_i(dcache_wbuf_resp),
		.dcache_mem_req_uc_read_ready_i(dcache_uc_read_ready),
		.dcache_mem_req_uc_read_valid_o(dcache_uc_read_valid),
		.dcache_mem_req_uc_read_o(dcache_uc_read),
		.dcache_mem_resp_uc_read_ready_o(dcache_uc_read_resp_ready),
		.dcache_mem_resp_uc_read_valid_i(dcache_uc_read_resp_valid),
		.dcache_mem_resp_uc_read_i(dcache_uc_read_resp),
		.dcache_mem_req_uc_write_ready_i(dcache_uc_write_ready),
		.dcache_mem_req_uc_write_valid_o(dcache_uc_write_valid),
		.dcache_mem_req_uc_write_o(dcache_uc_write),
		.dcache_mem_req_uc_write_data_ready_i(dcache_uc_write_data_ready),
		.dcache_mem_req_uc_write_data_valid_o(dcache_uc_write_data_valid),
		.dcache_mem_req_uc_write_data_o(dcache_uc_write_data),
		.dcache_mem_resp_uc_write_ready_o(dcache_uc_write_resp_ready),
		.dcache_mem_resp_uc_write_valid_i(dcache_uc_write_resp_valid),
		.dcache_mem_resp_uc_write_i(dcache_uc_write_resp)
	);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:386:3
	function automatic [HPDcacheCfg[607-:32] - 1:0] sv2v_cast_8EFA4;
		input reg [HPDcacheCfg[607-:32] - 1:0] inp;
		sv2v_cast_8EFA4 = inp;
	endfunction
	// removed localparam type sv2v_uu_i_axi_arbiter_hpdcache_mem_id_t_HPDcacheCfg_type
	localparam [1349:0] sv2v_uu_i_axi_arbiter_hpdcache_mem_id_t_HPDcacheCfg = HPDcacheCfg;
	// removed localparam type sv2v_uu_i_axi_arbiter_dcache_uc_read_id_i
	localparam [sv2v_uu_i_axi_arbiter_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] sv2v_uu_i_axi_arbiter_ext_dcache_uc_read_id_i_1 = 1'sb1;
	// removed localparam type sv2v_uu_i_axi_arbiter_dcache_uc_write_id_i
	localparam [sv2v_uu_i_axi_arbiter_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] sv2v_uu_i_axi_arbiter_ext_dcache_uc_write_id_i_1 = 1'sb1;
	cva6_hpdcache_subsystem_axi_arbiter_63CB4_CA41F #(
		.axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth(axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth),
		.axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth(axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth),
		.axi_ar_chan_t_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth(axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth),
		.axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth(axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth),
		.axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth(axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth),
		.axi_aw_chan_t_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth(axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth),
		.axi_b_chan_t_axi_b_chan_t_CVA6Cfg(axi_b_chan_t_CVA6Cfg),
		.axi_b_chan_t_axi_b_chan_t_config_pkg_NrMaxRules(axi_b_chan_t_config_pkg_NrMaxRules),
		.axi_r_chan_t_axi_r_chan_t_CVA6Cfg(axi_r_chan_t_CVA6Cfg),
		.axi_r_chan_t_axi_r_chan_t_config_pkg_NrMaxRules(axi_r_chan_t_config_pkg_NrMaxRules),
		.axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth(noc_req_t_noc_req_t_ariane_axi_AddrWidth),
		.axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth(noc_req_t_noc_req_t_ariane_axi_DataWidth),
		.axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth(noc_req_t_noc_req_t_ariane_axi_IdWidth),
		.axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth(noc_req_t_noc_req_t_ariane_axi_StrbWidth),
		.axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth(noc_req_t_noc_req_t_ariane_axi_UserWidth),
		.axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth(noc_resp_t_noc_resp_t_ariane_axi_DataWidth),
		.axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth(noc_resp_t_noc_resp_t_ariane_axi_IdWidth),
		.axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth(noc_resp_t_noc_resp_t_ariane_axi_UserWidth),
		.axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth(axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth),
		.axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth(axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth),
		.axi_w_chan_t_axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth(axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth),
		.hpdcache_mem_id_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_mem_req_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_mem_req_w_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_mem_resp_r_t_HPDcacheCfg(HPDcacheCfg),
		.hpdcache_mem_resp_w_t_HPDcacheCfg(HPDcacheCfg),
		.icache_req_t_icache_req_t_CVA6Cfg(icache_req_t_CVA6Cfg),
		.icache_rtrn_t_icache_rtrn_t_CVA6Cfg(icache_rtrn_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg),
		.AxiAddrWidth(CVA6Cfg[16744-:32]),
		.AxiDataWidth(CVA6Cfg[16712-:32]),
		.AxiIdWidth(CVA6Cfg[16680-:32]),
		.AxiUserWidth(CVA6Cfg[16648-:32])
	) i_axi_arbiter(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.icache_miss_valid_i(icache_miss_valid),
		.icache_miss_ready_o(icache_miss_ready),
		.icache_miss_i(icache_miss),
		.icache_miss_id_i(sv2v_cast_8EFA4(ICACHE_RDTXID)),
		.icache_miss_resp_valid_o(icache_miss_resp_valid),
		.icache_miss_resp_o(icache_miss_resp),
		.dcache_miss_ready_o(dcache_miss_ready),
		.dcache_miss_valid_i(dcache_miss_valid),
		.dcache_miss_i(dcache_miss),
		.dcache_miss_resp_ready_i(dcache_miss_resp_ready),
		.dcache_miss_resp_valid_o(dcache_miss_resp_valid),
		.dcache_miss_resp_o(dcache_miss_resp),
		.dcache_wbuf_ready_o(dcache_wbuf_ready),
		.dcache_wbuf_valid_i(dcache_wbuf_valid),
		.dcache_wbuf_i(dcache_wbuf),
		.dcache_wbuf_data_ready_o(dcache_wbuf_data_ready),
		.dcache_wbuf_data_valid_i(dcache_wbuf_data_valid),
		.dcache_wbuf_data_i(dcache_wbuf_data),
		.dcache_wbuf_resp_ready_i(dcache_wbuf_resp_ready),
		.dcache_wbuf_resp_valid_o(dcache_wbuf_resp_valid),
		.dcache_wbuf_resp_o(dcache_wbuf_resp),
		.dcache_uc_read_ready_o(dcache_uc_read_ready),
		.dcache_uc_read_valid_i(dcache_uc_read_valid),
		.dcache_uc_read_i(dcache_uc_read),
		.dcache_uc_read_id_i(sv2v_uu_i_axi_arbiter_ext_dcache_uc_read_id_i_1),
		.dcache_uc_read_resp_ready_i(dcache_uc_read_resp_ready),
		.dcache_uc_read_resp_valid_o(dcache_uc_read_resp_valid),
		.dcache_uc_read_resp_o(dcache_uc_read_resp),
		.dcache_uc_write_ready_o(dcache_uc_write_ready),
		.dcache_uc_write_valid_i(dcache_uc_write_valid),
		.dcache_uc_write_i(dcache_uc_write),
		.dcache_uc_write_id_i(sv2v_uu_i_axi_arbiter_ext_dcache_uc_write_id_i_1),
		.dcache_uc_write_data_ready_o(dcache_uc_write_data_ready),
		.dcache_uc_write_data_valid_i(dcache_uc_write_data_valid),
		.dcache_uc_write_data_i(dcache_uc_write_data),
		.dcache_uc_write_resp_ready_i(dcache_uc_write_resp_ready),
		.dcache_uc_write_resp_valid_o(dcache_uc_write_resp_valid),
		.dcache_uc_write_resp_o(dcache_uc_write_resp),
		.axi_req_o(noc_req_o),
		.axi_resp_i(noc_resp_i)
	);
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:469:3
	initial begin : initial_assertions
		// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:470:5
	end
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:480:3
	// removed an assertion item
	// a_invalid_instruction_fetch : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(icache_dreq_o.valid |-> |icache_dreq_o.data !== 1'hx)
	// ) else begin
	// 	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:484:5
	// 	$warning(1, "[l1 dcache] reading invalid instructions: vaddr=%08X, data=%08X", icache_dreq_o.vaddr, icache_dreq_o.data);
	// end
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:491:3
	// removed an assertion item
	// a_invalid_write_data : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(dcache_req_ports_i[2].data_req |-> (|dcache_req_ports_i[2].data_be |-> |dcache_req_ports_i[2].data_wdata !== 1'hx))
	// ) else begin
	// 	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:495:5
	// 	$warning(1, "[l1 dcache] writing invalid data: paddr=%016X, be=%02X, data=%016X", {dcache_req_ports_i[2].address_tag, dcache_req_ports_i[2].address_index}, dcache_req_ports_i[2].data_be, dcache_req_ports_i[2].data_wdata);
	// end
	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:505:3
	genvar _gv_j_13;
	generate
		for (_gv_j_13 = 0; _gv_j_13 < 2; _gv_j_13 = _gv_j_13 + 1) begin : gen_assertion
			localparam j = _gv_j_13;
			// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:506:5
			// removed an assertion item
			// a_invalid_read_data : assert property (@(posedge clk_i) disable iff (!rst_ni)
			// 	(dcache_req_ports_o[j].data_rvalid && ~dcache_req_ports_i[j].kill_req |-> |dcache_req_ports_o[j].data_rdata !== 1'hx)
			// ) else begin
			// 	// Trace: core/cache_subsystem/cva6_hpdcache_subsystem.sv:510:7
			// 	$warning(1, "[l1 dcache] reading invalid data on port %01d: data=%016X", j, dcache_req_ports_o[j].data_rdata);
			// end
		end
	endgenerate
endmodule
