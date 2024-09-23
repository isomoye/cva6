module std_cache_subsystem_F6C4A_02A13 (
	clk_i,
	rst_ni,
	priv_lvl_i,
	icache_en_i,
	icache_flush_i,
	icache_miss_o,
	icache_areq_i,
	icache_areq_o,
	icache_dreq_i,
	icache_dreq_o,
	amo_req_i,
	amo_resp_o,
	dcache_enable_i,
	dcache_flush_i,
	dcache_flush_ack_o,
	dcache_miss_o,
	wbuffer_empty_o,
	dcache_req_ports_i,
	dcache_req_ports_o,
	axi_req_o,
	axi_resp_i
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
	// removed localparam type axi_req_t_noc_req_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_req_t_noc_req_t_ariane_axi_DataWidth_type
	// removed localparam type axi_req_t_noc_req_t_ariane_axi_IdWidth_type
	// removed localparam type axi_req_t_noc_req_t_ariane_axi_StrbWidth_type
	// removed localparam type axi_req_t_noc_req_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_req_t_noc_req_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_req_t_noc_req_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_req_t_noc_req_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_req_t_noc_req_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] axi_req_t_noc_req_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_rsp_t_noc_resp_t_ariane_axi_DataWidth_type
	// removed localparam type axi_rsp_t_noc_resp_t_ariane_axi_IdWidth_type
	// removed localparam type axi_rsp_t_noc_resp_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_rsp_t_noc_resp_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_rsp_t_noc_resp_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_rsp_t_noc_resp_t_ariane_axi_UserWidth = 0;
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
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// removed import std_cache_pkg::*;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:22:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:23:20
	// removed localparam type icache_areq_t
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:24:20
	// removed localparam type icache_arsp_t
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:25:20
	// removed localparam type icache_dreq_t
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:26:20
	// removed localparam type icache_drsp_t
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:27:20
	// removed localparam type icache_req_t
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:28:20
	// removed localparam type icache_rtrn_t
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:29:20
	// removed localparam type dcache_req_i_t
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:30:20
	// removed localparam type dcache_req_o_t
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:31:15
	parameter [31:0] NumPorts = 4;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:32:20
	// removed localparam type axi_ar_chan_t
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:33:20
	// removed localparam type axi_aw_chan_t
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:34:20
	// removed localparam type axi_w_chan_t
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:35:20
	// removed localparam type axi_req_t
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:36:20
	// removed localparam type axi_rsp_t
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:38:5
	input wire clk_i;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:39:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:40:5
	// removed localparam type riscv_priv_lvl_t
	input wire [1:0] priv_lvl_i;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:42:5
	input wire icache_en_i;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:43:5
	input wire icache_flush_i;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:44:5
	output wire icache_miss_o;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:46:5
	input wire [((1 + icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] icache_areq_i;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:47:5
	output wire [(1 + icache_arsp_t_CVA6Cfg[17070-:32]) - 1:0] icache_areq_o;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:49:5
	input wire [(4 + icache_dreq_t_CVA6Cfg[17070-:32]) - 1:0] icache_dreq_i;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:50:5
	output wire [((((2 + icache_drsp_t_CVA6Cfg[643-:32]) + icache_drsp_t_CVA6Cfg[708-:32]) + icache_drsp_t_CVA6Cfg[17070-:32]) + ((((icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] icache_dreq_o;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:52:5
	// removed localparam type ariane_pkg_amo_t
	// removed localparam type ariane_pkg_amo_req_t
	input wire [134:0] amo_req_i;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:53:5
	// removed localparam type ariane_pkg_amo_resp_t
	output wire [64:0] amo_resp_o;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:56:5
	input wire dcache_enable_i;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:57:5
	input wire dcache_flush_i;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:58:5
	output wire dcache_flush_ack_o;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:59:5
	output wire dcache_miss_o;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:60:5
	output wire wbuffer_empty_o;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:62:5
	input wire [(((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (NumPorts * ((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 2)) - 1 : (NumPorts * (1 - ((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))) + ((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 0)):(((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)] dcache_req_ports_i;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:63:5
	output wire [(NumPorts * (((2 + dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_CVA6Cfg[900-:32])) - 1:0] dcache_req_ports_o;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:65:5
	output wire [(((((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_req_o;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:66:5
	input wire [(((4 + ((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_resp_i;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:69:3
	assign wbuffer_empty_o = 1'b1;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:71:3
	wire [(((((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_req_icache;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:72:3
	wire [(((4 + ((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_resp_icache;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:73:3
	wire [(((((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_req_bypass;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:74:3
	wire [(((4 + ((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_resp_bypass;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:75:3
	wire [(((((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_req_data;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:76:3
	wire [(((4 + ((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_resp_data;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:78:3
	cva6_icache_axi_wrapper_7C6FC_B07F8 #(
		.axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth(axi_req_t_noc_req_t_ariane_axi_AddrWidth),
		.axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth(axi_req_t_noc_req_t_ariane_axi_DataWidth),
		.axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth(axi_req_t_noc_req_t_ariane_axi_IdWidth),
		.axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth(axi_req_t_noc_req_t_ariane_axi_StrbWidth),
		.axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth(axi_req_t_noc_req_t_ariane_axi_UserWidth),
		.axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth(axi_rsp_t_noc_resp_t_ariane_axi_DataWidth),
		.axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth(axi_rsp_t_noc_resp_t_ariane_axi_IdWidth),
		.axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth(axi_rsp_t_noc_resp_t_ariane_axi_UserWidth),
		.icache_areq_t_icache_areq_t_CVA6Cfg(icache_areq_t_CVA6Cfg),
		.icache_arsp_t_icache_arsp_t_CVA6Cfg(icache_arsp_t_CVA6Cfg),
		.icache_dreq_t_icache_dreq_t_CVA6Cfg(icache_dreq_t_CVA6Cfg),
		.icache_drsp_t_icache_drsp_t_CVA6Cfg(icache_drsp_t_CVA6Cfg),
		.icache_req_t_icache_req_t_CVA6Cfg(icache_req_t_CVA6Cfg),
		.icache_rtrn_t_icache_rtrn_t_CVA6Cfg(icache_rtrn_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) i_cva6_icache_axi_wrapper(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.priv_lvl_i(priv_lvl_i),
		.flush_i(icache_flush_i),
		.en_i(icache_en_i),
		.miss_o(icache_miss_o),
		.areq_i(icache_areq_i),
		.areq_o(icache_areq_o),
		.dreq_i(icache_dreq_i),
		.dreq_o(icache_dreq_o),
		.axi_req_o(axi_req_icache),
		.axi_resp_i(axi_resp_icache)
	);
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:108:3
	std_nbdcache_3B4AD_83E8D #(
		.axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth(axi_req_t_noc_req_t_ariane_axi_AddrWidth),
		.axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth(axi_req_t_noc_req_t_ariane_axi_DataWidth),
		.axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth(axi_req_t_noc_req_t_ariane_axi_IdWidth),
		.axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth(axi_req_t_noc_req_t_ariane_axi_StrbWidth),
		.axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth(axi_req_t_noc_req_t_ariane_axi_UserWidth),
		.axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth(axi_rsp_t_noc_resp_t_ariane_axi_DataWidth),
		.axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth(axi_rsp_t_noc_resp_t_ariane_axi_IdWidth),
		.axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth(axi_rsp_t_noc_resp_t_ariane_axi_UserWidth),
		.dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_CVA6Cfg),
		.dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg),
		.NumPorts(NumPorts)
	) i_nbdcache(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.enable_i(dcache_enable_i),
		.flush_i(dcache_flush_i),
		.flush_ack_o(dcache_flush_ack_o),
		.miss_o(dcache_miss_o),
		.axi_bypass_o(axi_req_bypass),
		.axi_bypass_i(axi_resp_bypass),
		.axi_data_o(axi_req_data),
		.axi_data_i(axi_resp_data),
		.req_ports_i(dcache_req_ports_i),
		.req_ports_o(dcache_req_ports_o),
		.amo_req_i(amo_req_i),
		.amo_resp_o(amo_resp_o)
	);
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:135:3
	reg [1:0] w_select;
	wire [1:0] w_select_fifo;
	wire [1:0] w_select_arbiter;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:136:3
	wire [1:0] w_fifo_usage;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:137:3
	wire w_fifo_empty;
	wire w_fifo_full;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:141:3
	stream_arbiter_7FBF2_D2A6A #(
		.DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth(axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth),
		.DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth(axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth),
		.DATA_T_axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth(axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth),
		.N_INP(3)
	) i_stream_arbiter_ar(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.inp_data_i({axi_req_icache[(((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1-:(((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) >= 2 ? (((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 0 : 3 - ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))], axi_req_bypass[(((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1-:(((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) >= 2 ? (((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 0 : 3 - ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))], axi_req_data[(((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1-:(((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) >= 2 ? (((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 0 : 3 - ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))]}),
		.inp_valid_i({axi_req_icache[1], axi_req_bypass[1], axi_req_data[1]}),
		.inp_ready_o({axi_resp_icache[3 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_bypass[3 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_data[3 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]}),
		.oup_data_o(axi_req_o[(((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1-:(((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) >= 2 ? (((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 0 : 3 - ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))]),
		.oup_valid_o(axi_req_o[1]),
		.oup_ready_i(axi_resp_i[3 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))])
	);
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:156:3
	stream_arbiter_337DA_DE37F #(
		.DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth(axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth),
		.DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth(axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth),
		.DATA_T_axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth(axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth),
		.N_INP(3)
	) i_stream_arbiter_aw(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.inp_data_i({axi_req_icache[(((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))-:(((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) >= (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)))) ? (((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2))))) + 1 : ((1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)))) - ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))))) + 1)], axi_req_bypass[(((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))-:(((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) >= (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)))) ? (((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2))))) + 1 : ((1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)))) - ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))))) + 1)], axi_req_data[(((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))-:(((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) >= (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)))) ? (((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2))))) + 1 : ((1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)))) - ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))))) + 1)]}),
		.inp_valid_i({axi_req_icache[1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))], axi_req_bypass[1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))], axi_req_data[1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))]}),
		.inp_ready_o({axi_resp_icache[4 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_bypass[4 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_data[4 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]}),
		.oup_data_o(axi_req_o[(((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))-:(((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) >= (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)))) ? (((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2))))) + 1 : ((1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)))) - ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))))) + 1)]),
		.oup_valid_o(axi_req_o[1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))]),
		.oup_ready_i(axi_resp_i[4 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))])
	);
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:172:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/std_cache_subsystem.sv:173:5
		w_select = 0;
		// Trace: core/cache_subsystem/std_cache_subsystem.sv:174:5
		(* full_case, parallel_case *)
		casez (axi_req_o[((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))))-:((axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) >= (axi_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) - (axi_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))))) + 1)])
			4'b0111:
				// Trace: core/cache_subsystem/std_cache_subsystem.sv:175:16
				w_select = 2;
			4'b1zzz:
				// Trace: core/cache_subsystem/std_cache_subsystem.sv:176:16
				w_select = 1;
			default:
				// Trace: core/cache_subsystem/std_cache_subsystem.sv:177:16
				w_select = 0;
		endcase
	end
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:182:3
	cva6_fifo_v3 #(
		.DATA_WIDTH(2),
		.DEPTH(4),
		.FALL_THROUGH(1'b1),
		.FPGA_EN(CVA6Cfg[16876])
	) i_fifo_w_channel(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.testmode_i(1'b0),
		.full_o(w_fifo_full),
		.empty_o(),
		.usage_o(w_fifo_usage),
		.data_i(w_select),
		.push_i(axi_req_o[1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] & axi_resp_i[4 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]),
		.data_o(w_select_fifo),
		.pop_i((axi_req_o[2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] & axi_resp_i[2 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) & axi_req_o[((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))])
	);
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:207:3
	assign w_fifo_empty = (w_fifo_usage == 0) && !w_fifo_full;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:211:3
	assign w_select_arbiter = (w_fifo_empty ? (axi_req_o[1 + ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] ? w_select : 0) : w_select_fifo);
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:213:3
	stream_mux_351CF_60955 #(
		.DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth(axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth),
		.DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth(axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth),
		.DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth(axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth),
		.N_INP(3)
	) i_stream_mux_w(
		.inp_data_i({axi_req_data[(((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))-:(((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) >= (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)) ? (((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2))) + 1 : ((2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)) - ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))) + 1)], axi_req_bypass[(((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))-:(((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) >= (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)) ? (((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2))) + 1 : ((2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)) - ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))) + 1)], axi_req_icache[(((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))-:(((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) >= (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)) ? (((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2))) + 1 : ((2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)) - ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))) + 1)]}),
		.inp_valid_i({axi_req_data[2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)], axi_req_bypass[2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)], axi_req_icache[2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)]}),
		.inp_ready_o({axi_resp_data[2 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_bypass[2 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_icache[2 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]}),
		.inp_sel_i(w_select_arbiter),
		.oup_data_o(axi_req_o[(((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))-:(((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) >= (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)) ? (((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2))) + 1 : ((2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 2)) - ((((axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))) + 1)]),
		.oup_valid_o(axi_req_o[2 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)]),
		.oup_ready_i(axi_resp_i[2 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))])
	);
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:231:3
	assign axi_resp_icache[(((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1-:((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth] = axi_resp_i[(((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1-:((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth];
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:232:3
	assign axi_resp_bypass[(((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1-:((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth] = axi_resp_i[(((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1-:((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth];
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:233:3
	assign axi_resp_data[(((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1-:((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth] = axi_resp_i[(((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1-:((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth];
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:235:3
	reg [1:0] r_select;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:237:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/std_cache_subsystem.sv:238:5
		r_select = 0;
		// Trace: core/cache_subsystem/std_cache_subsystem.sv:239:5
		(* full_case, parallel_case *)
		casez (axi_resp_i[((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))))-:((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) >= (axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) ? ((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) - (axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) - (axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)))) + 1)])
			4'b0111:
				// Trace: core/cache_subsystem/std_cache_subsystem.sv:240:16
				r_select = 0;
			4'b1zzz:
				// Trace: core/cache_subsystem/std_cache_subsystem.sv:241:16
				r_select = 1;
			4'b0000:
				// Trace: core/cache_subsystem/std_cache_subsystem.sv:242:16
				r_select = 2;
			default:
				// Trace: core/cache_subsystem/std_cache_subsystem.sv:243:16
				r_select = 0;
		endcase
	end
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:247:3
	stream_demux #(.N_OUP(3)) i_stream_demux_r(
		.inp_valid_i(axi_resp_i[(((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0]),
		.inp_ready_o(axi_req_o[0]),
		.oup_sel_i(r_select),
		.oup_valid_o({axi_resp_icache[(((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0], axi_resp_bypass[(((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0], axi_resp_data[(((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0]}),
		.oup_ready_i({axi_req_icache[0], axi_req_bypass[0], axi_req_data[0]})
	);
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:258:3
	reg [1:0] b_select;
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:260:3
	assign axi_resp_icache[((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)-:((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) >= (1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) ? ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1 : ((1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1)] = axi_resp_i[((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)-:((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) >= (1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) ? ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1 : ((1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1)];
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:261:3
	assign axi_resp_bypass[((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)-:((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) >= (1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) ? ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1 : ((1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1)] = axi_resp_i[((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)-:((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) >= (1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) ? ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1 : ((1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1)];
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:262:3
	assign axi_resp_data[((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)-:((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) >= (1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) ? ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1 : ((1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1)] = axi_resp_i[((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)-:((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) >= (1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) ? ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1 : ((1 + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))) + 1)];
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:264:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/std_cache_subsystem.sv:265:5
		b_select = 0;
		// Trace: core/cache_subsystem/std_cache_subsystem.sv:266:5
		(* full_case, parallel_case *)
		casez (axi_resp_i[(((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1)))-:((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1)) >= (2 + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1)) - (2 + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((2 + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1))) + 1)])
			4'b0111:
				// Trace: core/cache_subsystem/std_cache_subsystem.sv:267:16
				b_select = 0;
			4'b1zzz:
				// Trace: core/cache_subsystem/std_cache_subsystem.sv:268:16
				b_select = 1;
			4'b0000:
				// Trace: core/cache_subsystem/std_cache_subsystem.sv:269:16
				b_select = 2;
			default:
				// Trace: core/cache_subsystem/std_cache_subsystem.sv:270:16
				b_select = 0;
		endcase
	end
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:274:3
	stream_demux #(.N_OUP(3)) i_stream_demux_b(
		.inp_valid_i(axi_resp_i[1 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]),
		.inp_ready_o(axi_req_o[1 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)]),
		.oup_sel_i(b_select),
		.oup_valid_o({axi_resp_icache[1 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_bypass[1 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_data[1 + (((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]}),
		.oup_ready_i({axi_req_icache[1 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)], axi_req_bypass[1 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)], axi_req_data[1 + ((((axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)]})
	);
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:291:3
	// removed an assertion item
	// a_invalid_instruction_fetch : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(icache_dreq_o.valid |-> |icache_dreq_o.data !== 1'hx)
	// ) else begin
	// 	// Trace: core/cache_subsystem/std_cache_subsystem.sv:295:5
	// 	$warning(1, "[l1 dcache] reading invalid instructions: vaddr=%08X, data=%08X", icache_dreq_o.vaddr, icache_dreq_o.data);
	// end
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:302:3
	// removed an assertion item
	// a_invalid_write_data : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(dcache_req_ports_i[NumPorts - 1].data_req |-> (|dcache_req_ports_i[NumPorts - 1].data_be |-> |dcache_req_ports_i[NumPorts - 1].data_wdata !== 1'hx))
	// ) else begin
	// 	// Trace: core/cache_subsystem/std_cache_subsystem.sv:306:5
	// 	$warning(1, "[l1 dcache] writing invalid data: paddr=%016X, be=%02X, data=%016X", {dcache_req_ports_i[NumPorts - 1].address_tag, dcache_req_ports_i[NumPorts - 1].address_index}, dcache_req_ports_i[NumPorts - 1].data_be, dcache_req_ports_i[NumPorts - 1].data_wdata);
	// end
	// Trace: core/cache_subsystem/std_cache_subsystem.sv:315:3
	genvar _gv_j_11;
	generate
		for (_gv_j_11 = 0; _gv_j_11 < (NumPorts - 1); _gv_j_11 = _gv_j_11 + 1) begin : genblk1
			localparam j = _gv_j_11;
			// Trace: core/cache_subsystem/std_cache_subsystem.sv:317:7
			// removed an assertion item
			// a_invalid_read_data : assert property (@(posedge clk_i) disable iff (~rst_ni)
			// 	(dcache_req_ports_o[j].data_rvalid |-> |dcache_req_ports_o[j].data_rdata !== 1'hx)
			// ) else begin
			// 	// Trace: core/cache_subsystem/std_cache_subsystem.sv:321:9
			// 	$warning(1, "[l1 dcache] reading invalid data on port %01d: data=%016X", j, dcache_req_ports_o[j].data_rdata);
			// end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
