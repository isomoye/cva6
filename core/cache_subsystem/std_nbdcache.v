module std_nbdcache_3B4AD_83E8D (
	clk_i,
	rst_ni,
	enable_i,
	flush_i,
	flush_ack_o,
	miss_o,
	amo_req_i,
	amo_resp_o,
	req_ports_i,
	req_ports_o,
	axi_data_o,
	axi_data_i,
	axi_bypass_o,
	axi_bypass_i
);
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth_type
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth_type
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth_type
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth_type
	// removed localparam type axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth_type
	// removed localparam type axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth = 0;
	// removed localparam type dcache_req_i_t_dcache_req_i_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_i_t_dcache_req_i_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_o_t_dcache_req_o_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_o_t_dcache_req_o_t_CVA6Cfg = 0;
	// removed import std_cache_pkg::*;
	// removed import ariane_pkg::*;
	// Trace: core/cache_subsystem/std_nbdcache.sv:20:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/std_nbdcache.sv:21:20
	// removed localparam type dcache_req_i_t
	// Trace: core/cache_subsystem/std_nbdcache.sv:22:20
	// removed localparam type dcache_req_o_t
	// Trace: core/cache_subsystem/std_nbdcache.sv:23:15
	parameter [31:0] NumPorts = 4;
	// Trace: core/cache_subsystem/std_nbdcache.sv:24:20
	// removed localparam type axi_req_t
	// Trace: core/cache_subsystem/std_nbdcache.sv:25:20
	// removed localparam type axi_rsp_t
	// Trace: core/cache_subsystem/std_nbdcache.sv:27:5
	input wire clk_i;
	// Trace: core/cache_subsystem/std_nbdcache.sv:28:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/std_nbdcache.sv:30:5
	input wire enable_i;
	// Trace: core/cache_subsystem/std_nbdcache.sv:31:5
	input wire flush_i;
	// Trace: core/cache_subsystem/std_nbdcache.sv:32:5
	output wire flush_ack_o;
	// Trace: core/cache_subsystem/std_nbdcache.sv:33:5
	output wire miss_o;
	// Trace: core/cache_subsystem/std_nbdcache.sv:35:5
	// removed localparam type ariane_pkg_amo_t
	// removed localparam type ariane_pkg_amo_req_t
	input wire [134:0] amo_req_i;
	// Trace: core/cache_subsystem/std_nbdcache.sv:36:5
	// removed localparam type ariane_pkg_amo_resp_t
	output wire [64:0] amo_resp_o;
	// Trace: core/cache_subsystem/std_nbdcache.sv:38:5
	input wire [(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (NumPorts * ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2)) - 1 : (NumPorts * (1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))) + ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 0)):(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)] req_ports_i;
	// Trace: core/cache_subsystem/std_nbdcache.sv:39:5
	output wire [(NumPorts * (((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32])) - 1:0] req_ports_o;
	// Trace: core/cache_subsystem/std_nbdcache.sv:41:5
	output wire [(((((((axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_data_o;
	// Trace: core/cache_subsystem/std_nbdcache.sv:42:5
	input wire [(((4 + ((axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_data_i;
	// Trace: core/cache_subsystem/std_nbdcache.sv:43:5
	output wire [(((((((axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_bypass_o;
	// Trace: core/cache_subsystem/std_nbdcache.sv:44:5
	input wire [(((4 + ((axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_bypass_i;
	// Trace: core/cache_subsystem/std_nbdcache.sv:47:3
	// Trace: core/cache_subsystem/std_nbdcache.sv:49:3
	localparam DCACHE_DIRTY_WIDTH = CVA6Cfg[1092-:32] * 2;
	// Trace: core/cache_subsystem/std_nbdcache.sv:51:3
	// removed localparam type cache_line_t
	// Trace: core/cache_subsystem/std_nbdcache.sv:57:3
	// removed localparam type cl_be_t
	// Trace: core/cache_subsystem/std_nbdcache.sv:71:3
	wire [(NumPorts >= 0 ? ((NumPorts + 1) * CVA6Cfg[1092-:32]) - 1 : ((1 - NumPorts) * CVA6Cfg[1092-:32]) + ((NumPorts * CVA6Cfg[1092-:32]) - 1)):(NumPorts >= 0 ? 0 : NumPorts * CVA6Cfg[1092-:32])] req;
	// Trace: core/cache_subsystem/std_nbdcache.sv:72:3
	wire [(NumPorts >= 0 ? ((NumPorts + 1) * CVA6Cfg[1028-:32]) - 1 : ((1 - NumPorts) * CVA6Cfg[1028-:32]) + ((NumPorts * CVA6Cfg[1028-:32]) - 1)):(NumPorts >= 0 ? 0 : NumPorts * CVA6Cfg[1028-:32])] addr;
	// Trace: core/cache_subsystem/std_nbdcache.sv:73:3
	wire [NumPorts:0] gnt;
	// Trace: core/cache_subsystem/std_nbdcache.sv:74:3
	wire [(((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[1092-:32] * ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2)) - 1 : (CVA6Cfg[1092-:32] * (1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1))) + ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 0)):(((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1)] rdata;
	// Trace: core/cache_subsystem/std_nbdcache.sv:75:3
	wire [(NumPorts >= 0 ? ((NumPorts + 1) * CVA6Cfg[996-:32]) - 1 : ((1 - NumPorts) * CVA6Cfg[996-:32]) + ((NumPorts * CVA6Cfg[996-:32]) - 1)):(NumPorts >= 0 ? 0 : NumPorts * CVA6Cfg[996-:32])] tag;
	// Trace: core/cache_subsystem/std_nbdcache.sv:77:3
	wire [(NumPorts >= 0 ? (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? ((NumPorts + 1) * ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2)) - 1 : ((NumPorts + 1) * (1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1))) + ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 0)) : (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? ((1 - NumPorts) * ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2)) + ((NumPorts * ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2)) - 1) : ((1 - NumPorts) * (1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1))) + ((((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) + (NumPorts * (1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1)))) - 1))):(NumPorts >= 0 ? (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) : (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? NumPorts * ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2) : ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) + (NumPorts * (1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1)))))] wdata;
	// Trace: core/cache_subsystem/std_nbdcache.sv:78:3
	wire [NumPorts:0] we;
	// Trace: core/cache_subsystem/std_nbdcache.sv:79:3
	wire [(NumPorts >= 0 ? ((NumPorts + 1) * ((((CVA6Cfg[996-:32] + 7) / 8) + ((CVA6Cfg[964-:32] + 7) / 8)) + CVA6Cfg[1092-:32])) - 1 : ((1 - NumPorts) * ((((CVA6Cfg[996-:32] + 7) / 8) + ((CVA6Cfg[964-:32] + 7) / 8)) + CVA6Cfg[1092-:32])) + ((NumPorts * ((((CVA6Cfg[996-:32] + 7) / 8) + ((CVA6Cfg[964-:32] + 7) / 8)) + CVA6Cfg[1092-:32])) - 1)):(NumPorts >= 0 ? 0 : NumPorts * ((((CVA6Cfg[996-:32] + 7) / 8) + ((CVA6Cfg[964-:32] + 7) / 8)) + CVA6Cfg[1092-:32]))] be;
	// Trace: core/cache_subsystem/std_nbdcache.sv:80:3
	wire [CVA6Cfg[1092-:32] - 1:0] hit_way;
	// Trace: core/cache_subsystem/std_nbdcache.sv:84:3
	wire [NumPorts - 1:0] busy;
	// Trace: core/cache_subsystem/std_nbdcache.sv:85:3
	wire [(NumPorts * 56) - 1:0] mshr_addr;
	// Trace: core/cache_subsystem/std_nbdcache.sv:86:3
	wire [NumPorts - 1:0] mshr_addr_matches;
	// Trace: core/cache_subsystem/std_nbdcache.sv:87:3
	wire [NumPorts - 1:0] mshr_index_matches;
	// Trace: core/cache_subsystem/std_nbdcache.sv:88:3
	wire [63:0] critical_word;
	// Trace: core/cache_subsystem/std_nbdcache.sv:89:3
	wire critical_word_valid;
	// Trace: core/cache_subsystem/std_nbdcache.sv:91:3
	// removed localparam type std_cache_pkg_miss_req_t
	wire [(NumPorts * 141) - 1:0] miss_req;
	// Trace: core/cache_subsystem/std_nbdcache.sv:92:3
	wire [NumPorts - 1:0] miss_gnt;
	// Trace: core/cache_subsystem/std_nbdcache.sv:93:3
	wire [NumPorts - 1:0] active_serving;
	// Trace: core/cache_subsystem/std_nbdcache.sv:95:3
	wire [NumPorts - 1:0] bypass_gnt;
	// Trace: core/cache_subsystem/std_nbdcache.sv:96:3
	wire [NumPorts - 1:0] bypass_valid;
	// Trace: core/cache_subsystem/std_nbdcache.sv:97:3
	wire [(NumPorts * 64) - 1:0] bypass_data;
	// Trace: core/cache_subsystem/std_nbdcache.sv:101:3
	wire [CVA6Cfg[1092-:32] - 1:0] req_ram;
	// Trace: core/cache_subsystem/std_nbdcache.sv:102:3
	wire [CVA6Cfg[1028-:32] - 1:0] addr_ram;
	// Trace: core/cache_subsystem/std_nbdcache.sv:103:3
	wire we_ram;
	// Trace: core/cache_subsystem/std_nbdcache.sv:104:3
	wire [(CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1:0] wdata_ram;
	// Trace: core/cache_subsystem/std_nbdcache.sv:105:3
	wire [(((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[1092-:32] * ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2)) - 1 : (CVA6Cfg[1092-:32] * (1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1))) + ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 0)):(((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1)] rdata_ram;
	// Trace: core/cache_subsystem/std_nbdcache.sv:106:3
	wire [((((CVA6Cfg[996-:32] + 7) / 8) + ((CVA6Cfg[964-:32] + 7) / 8)) + CVA6Cfg[1092-:32]) - 1:0] be_ram;
	// Trace: core/cache_subsystem/std_nbdcache.sv:111:3
	genvar _gv_i_76;
	generate
		for (_gv_i_76 = 0; _gv_i_76 < NumPorts; _gv_i_76 = _gv_i_76 + 1) begin : master_ports
			localparam i = _gv_i_76;
			// Trace: core/cache_subsystem/std_nbdcache.sv:113:7
			cache_ctrl_74373_DD2E1 #(
				.cache_line_t_CVA6Cfg(CVA6Cfg),
				.cl_be_t_CVA6Cfg(CVA6Cfg),
				.dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_dcache_req_i_t_CVA6Cfg),
				.dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_dcache_req_o_t_CVA6Cfg),
				.CVA6Cfg(CVA6Cfg)
			) i_cache_ctrl(
				.bypass_i(~enable_i),
				.busy_o(busy[i]),
				.req_port_i(req_ports_i[(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) + (i * (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)))+:(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))]),
				.req_port_o(req_ports_o[i * (((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32])+:((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]]),
				.req_o(req[(NumPorts >= 0 ? i + 1 : NumPorts - (i + 1)) * CVA6Cfg[1092-:32]+:CVA6Cfg[1092-:32]]),
				.addr_o(addr[(NumPorts >= 0 ? i + 1 : NumPorts - (i + 1)) * CVA6Cfg[1028-:32]+:CVA6Cfg[1028-:32]]),
				.gnt_i(gnt[i + 1]),
				.data_i(rdata),
				.tag_o(tag[(NumPorts >= 0 ? i + 1 : NumPorts - (i + 1)) * CVA6Cfg[996-:32]+:CVA6Cfg[996-:32]]),
				.data_o(wdata[(((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) + ((NumPorts >= 0 ? i + 1 : NumPorts - (i + 1)) * (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2 : 1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1)))+:(((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2 : 1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1))]),
				.we_o(we[i + 1]),
				.be_o(be[(NumPorts >= 0 ? i + 1 : NumPorts - (i + 1)) * ((((CVA6Cfg[996-:32] + 7) / 8) + ((CVA6Cfg[964-:32] + 7) / 8)) + CVA6Cfg[1092-:32])+:(((CVA6Cfg[996-:32] + 7) / 8) + ((CVA6Cfg[964-:32] + 7) / 8)) + CVA6Cfg[1092-:32]]),
				.hit_way_i(hit_way),
				.miss_req_o(miss_req[i * 141+:141]),
				.miss_gnt_i(miss_gnt[i]),
				.active_serving_i(active_serving[i]),
				.critical_word_i(critical_word),
				.critical_word_valid_i(critical_word_valid),
				.bypass_gnt_i(bypass_gnt[i]),
				.bypass_valid_i(bypass_valid[i]),
				.bypass_data_i(bypass_data[i * 64+:64]),
				.mshr_addr_o(mshr_addr[i * 56+:56]),
				.mshr_addr_matches_i(mshr_addr_matches[i]),
				.mshr_index_matches_i(mshr_index_matches[i]),
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.flush_i(flush_i)
			);
		end
	endgenerate
	// Trace: core/cache_subsystem/std_nbdcache.sv:156:3
	miss_handler_540D8_4BD5F #(
		.axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth(axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth),
		.axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth(axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth),
		.axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth(axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth),
		.axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth(axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth),
		.axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth(axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth),
		.axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth(axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth),
		.axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth(axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth),
		.axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth(axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth),
		.cache_line_t_CVA6Cfg(CVA6Cfg),
		.cl_be_t_CVA6Cfg(CVA6Cfg),
		.CVA6Cfg(CVA6Cfg),
		.NR_PORTS(NumPorts)
	) i_miss_handler(
		.flush_i(flush_i),
		.busy_i(|busy),
		.amo_req_i(amo_req_i),
		.amo_resp_o(amo_resp_o),
		.miss_req_i(miss_req),
		.miss_gnt_o(miss_gnt),
		.bypass_gnt_o(bypass_gnt),
		.bypass_valid_o(bypass_valid),
		.bypass_data_o(bypass_data),
		.critical_word_o(critical_word),
		.critical_word_valid_o(critical_word_valid),
		.mshr_addr_i(mshr_addr),
		.mshr_addr_matches_o(mshr_addr_matches),
		.mshr_index_matches_o(mshr_index_matches),
		.active_serving_o(active_serving),
		.req_o(req[(NumPorts >= 0 ? 0 : NumPorts) * CVA6Cfg[1092-:32]+:CVA6Cfg[1092-:32]]),
		.addr_o(addr[(NumPorts >= 0 ? 0 : NumPorts) * CVA6Cfg[1028-:32]+:CVA6Cfg[1028-:32]]),
		.data_i(rdata),
		.be_o(be[(NumPorts >= 0 ? 0 : NumPorts) * ((((CVA6Cfg[996-:32] + 7) / 8) + ((CVA6Cfg[964-:32] + 7) / 8)) + CVA6Cfg[1092-:32])+:(((CVA6Cfg[996-:32] + 7) / 8) + ((CVA6Cfg[964-:32] + 7) / 8)) + CVA6Cfg[1092-:32]]),
		.data_o(wdata[(((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) + ((NumPorts >= 0 ? 0 : NumPorts) * (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2 : 1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1)))+:(((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2 : 1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1))]),
		.we_o(we[0]),
		.axi_bypass_o(axi_bypass_o),
		.axi_bypass_i(axi_bypass_i),
		.axi_data_o(axi_data_o),
		.axi_data_i(axi_data_i),
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_ack_o(flush_ack_o),
		.miss_o(miss_o)
	);
	// Trace: core/cache_subsystem/std_nbdcache.sv:193:3
	assign tag[(NumPorts >= 0 ? 0 : NumPorts) * CVA6Cfg[996-:32]+:CVA6Cfg[996-:32]] = 1'sb0;
	// Trace: core/cache_subsystem/std_nbdcache.sv:198:3
	genvar _gv_i_77;
	generate
		for (_gv_i_77 = 0; _gv_i_77 < CVA6Cfg[1092-:32]; _gv_i_77 = _gv_i_77 + 1) begin : sram_block
			localparam i = _gv_i_77;
			// Trace: core/cache_subsystem/std_nbdcache.sv:199:5
			localparam signed [31:0] sv2v_uu_data_sram_USER_WIDTH = 1;
			// removed localparam type sv2v_uu_data_sram_wuser_i
			localparam [0:0] sv2v_uu_data_sram_ext_wuser_i_0 = 1'sb0;
			sram #(
				.DATA_WIDTH(CVA6Cfg[964-:32]),
				.NUM_WORDS(CVA6Cfg[836-:32])
			) data_sram(
				.req_i(req_ram[i]),
				.rst_ni(rst_ni),
				.we_i(we_ram),
				.addr_i(addr_ram[CVA6Cfg[1028-:32] - 1:CVA6Cfg[868-:32]]),
				.wuser_i(sv2v_uu_data_sram_ext_wuser_i_0),
				.wdata_i(wdata_ram[CVA6Cfg[964-:32] + 1-:((CVA6Cfg[964-:32] + 1) >= 2 ? CVA6Cfg[964-:32] + 0 : 3 - (CVA6Cfg[964-:32] + 1))]),
				.be_i(be_ram[((CVA6Cfg[964-:32] + 7) / 8) + (CVA6Cfg[1092-:32] - 1)-:((((CVA6Cfg[964-:32] + 7) / 8) + (CVA6Cfg[1092-:32] - 1)) >= (CVA6Cfg[1092-:32] + 0) ? ((((CVA6Cfg[964-:32] + 7) / 8) + (CVA6Cfg[1092-:32] - 1)) - (CVA6Cfg[1092-:32] + 0)) + 1 : ((CVA6Cfg[1092-:32] + 0) - (((CVA6Cfg[964-:32] + 7) / 8) + (CVA6Cfg[1092-:32] - 1))) + 1)]),
				.ruser_o(),
				.rdata_o(rdata_ram[(((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (i * (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2 : 1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1))) + (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? CVA6Cfg[964-:32] + 1 : ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) - (CVA6Cfg[964-:32] + 1)) : (((i * (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2 : 1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1))) + (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? CVA6Cfg[964-:32] + 1 : ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) - (CVA6Cfg[964-:32] + 1))) + ((CVA6Cfg[964-:32] + 1) >= 2 ? CVA6Cfg[964-:32] + 0 : 3 - (CVA6Cfg[964-:32] + 1))) - 1)-:((CVA6Cfg[964-:32] + 1) >= 2 ? CVA6Cfg[964-:32] + 0 : 3 - (CVA6Cfg[964-:32] + 1))]),
				.clk_i(clk_i)
			);
			// Trace: core/cache_subsystem/std_nbdcache.sv:215:5
			localparam signed [31:0] sv2v_uu_tag_sram_USER_WIDTH = 1;
			// removed localparam type sv2v_uu_tag_sram_wuser_i
			localparam [0:0] sv2v_uu_tag_sram_ext_wuser_i_0 = 1'sb0;
			sram #(
				.DATA_WIDTH(CVA6Cfg[996-:32]),
				.NUM_WORDS(CVA6Cfg[836-:32])
			) tag_sram(
				.req_i(req_ram[i]),
				.rst_ni(rst_ni),
				.we_i(we_ram),
				.addr_i(addr_ram[CVA6Cfg[1028-:32] - 1:CVA6Cfg[868-:32]]),
				.wuser_i(sv2v_uu_tag_sram_ext_wuser_i_0),
				.wdata_i(wdata_ram[CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1)-:((CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1)) >= (CVA6Cfg[964-:32] + 2) ? ((CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1)) - (CVA6Cfg[964-:32] + 2)) + 1 : ((CVA6Cfg[964-:32] + 2) - (CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1))) + 1)]),
				.be_i(be_ram[((CVA6Cfg[996-:32] + 7) / 8) + (((CVA6Cfg[964-:32] + 7) / 8) + (CVA6Cfg[1092-:32] - 1))-:((((CVA6Cfg[996-:32] + 7) / 8) + (((CVA6Cfg[964-:32] + 7) / 8) + (CVA6Cfg[1092-:32] - 1))) >= (((CVA6Cfg[964-:32] + 7) / 8) + (CVA6Cfg[1092-:32] + 0)) ? ((((CVA6Cfg[996-:32] + 7) / 8) + (((CVA6Cfg[964-:32] + 7) / 8) + (CVA6Cfg[1092-:32] - 1))) - (((CVA6Cfg[964-:32] + 7) / 8) + (CVA6Cfg[1092-:32] + 0))) + 1 : ((((CVA6Cfg[964-:32] + 7) / 8) + (CVA6Cfg[1092-:32] + 0)) - (((CVA6Cfg[996-:32] + 7) / 8) + (((CVA6Cfg[964-:32] + 7) / 8) + (CVA6Cfg[1092-:32] - 1)))) + 1)]),
				.ruser_o(),
				.rdata_o(rdata_ram[(((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (i * (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2 : 1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1))) + (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1) : ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) - (CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1))) : (((i * (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2 : 1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1))) + (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1) : ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) - (CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1)))) + ((CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1)) >= (CVA6Cfg[964-:32] + 2) ? ((CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1)) - (CVA6Cfg[964-:32] + 2)) + 1 : ((CVA6Cfg[964-:32] + 2) - (CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1))) + 1)) - 1)-:((CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1)) >= (CVA6Cfg[964-:32] + 2) ? ((CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1)) - (CVA6Cfg[964-:32] + 2)) + 1 : ((CVA6Cfg[964-:32] + 2) - (CVA6Cfg[996-:32] + (CVA6Cfg[964-:32] + 1))) + 1)]),
				.clk_i(clk_i)
			);
		end
	endgenerate
	// Trace: core/cache_subsystem/std_nbdcache.sv:240:3
	wire [(4 * DCACHE_DIRTY_WIDTH) - 1:0] dirty_wdata;
	wire [(4 * DCACHE_DIRTY_WIDTH) - 1:0] dirty_rdata;
	// Trace: core/cache_subsystem/std_nbdcache.sv:242:3
	genvar _gv_i_78;
	generate
		for (_gv_i_78 = 0; _gv_i_78 < CVA6Cfg[1092-:32]; _gv_i_78 = _gv_i_78 + 1) begin : genblk3
			localparam i = _gv_i_78;
			// Trace: core/cache_subsystem/std_nbdcache.sv:243:5
			assign dirty_wdata[8 * i] = wdata_ram[0];
			// Trace: core/cache_subsystem/std_nbdcache.sv:244:5
			assign dirty_wdata[(8 * i) + 1] = wdata_ram[1];
			// Trace: core/cache_subsystem/std_nbdcache.sv:245:5
			assign rdata_ram[(i * (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2 : 1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1))) + (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1)] = dirty_rdata[8 * i];
			// Trace: core/cache_subsystem/std_nbdcache.sv:246:5
			assign rdata_ram[(i * (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 2 : 1 - ((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1))) + (((CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 1) >= 0 ? 1 : (CVA6Cfg[996-:32] + CVA6Cfg[964-:32]) + 0)] = dirty_rdata[(8 * i) + 1];
		end
	endgenerate
	// Trace: core/cache_subsystem/std_nbdcache.sv:249:3
	localparam signed [31:0] sv2v_uu_valid_dirty_sram_USER_WIDTH = 1;
	// removed localparam type sv2v_uu_valid_dirty_sram_wuser_i
	localparam [0:0] sv2v_uu_valid_dirty_sram_ext_wuser_i_0 = 1'sb0;
	sram #(
		.USER_WIDTH(1),
		.DATA_WIDTH(4 * DCACHE_DIRTY_WIDTH),
		.NUM_WORDS(CVA6Cfg[836-:32])
	) valid_dirty_sram(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(|req_ram),
		.we_i(we_ram),
		.addr_i(addr_ram[CVA6Cfg[1028-:32] - 1:CVA6Cfg[868-:32]]),
		.wuser_i(sv2v_uu_valid_dirty_sram_ext_wuser_i_0),
		.wdata_i(dirty_wdata),
		.be_i(be_ram[CVA6Cfg[1092-:32] - 1-:CVA6Cfg[1092-:32]]),
		.ruser_o(),
		.rdata_o(dirty_rdata)
	);
	// Trace: core/cache_subsystem/std_nbdcache.sv:269:3
	tag_cmp_3FE31_78C65 #(
		.l_be_t_CVA6Cfg(CVA6Cfg),
		.l_data_t_CVA6Cfg(CVA6Cfg),
		.CVA6Cfg(CVA6Cfg),
		.NR_PORTS(NumPorts + 1),
		.ADDR_WIDTH(CVA6Cfg[1028-:32])
	) i_tag_cmp(
		.req_i(req),
		.gnt_o(gnt),
		.addr_i(addr),
		.wdata_i(wdata),
		.we_i(we),
		.be_i(be),
		.rdata_o(rdata),
		.tag_i(tag),
		.hit_way_o(hit_way),
		.req_o(req_ram),
		.addr_o(addr_ram),
		.wdata_o(wdata_ram),
		.we_o(we_ram),
		.be_o(be_ram),
		.rdata_i(rdata_ram),
		.clk_i(clk_i),
		.rst_ni(rst_ni)
	);
	// Trace: core/cache_subsystem/std_nbdcache.sv:297:3
endmodule
