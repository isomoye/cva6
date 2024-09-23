module wt_cache_subsystem_69836_EAB39 (
	clk_i,
	rst_ni,
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
	miss_vld_bits_o,
	dcache_amo_req_i,
	dcache_amo_resp_o,
	dcache_req_ports_i,
	dcache_req_ports_o,
	wbuffer_empty_o,
	wbuffer_not_ni_o,
	noc_req_o,
	noc_resp_i,
	inval_addr_i,
	inval_valid_i,
	inval_ready_o
);
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
	// removed import ariane_pkg::*;
	// removed import wt_cache_pkg::*;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:26:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:27:38
	// removed localparam type icache_areq_t
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:28:38
	// removed localparam type icache_arsp_t
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:29:38
	// removed localparam type icache_dreq_t
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:30:38
	// removed localparam type icache_drsp_t
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:31:38
	// removed localparam type dcache_req_i_t
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:32:38
	// removed localparam type dcache_req_o_t
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:33:38
	// removed localparam type icache_req_t
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:34:38
	// removed localparam type icache_rtrn_t
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:35:15
	parameter [31:0] NumPorts = 4;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:36:38
	// removed localparam type noc_req_t
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:37:38
	// removed localparam type noc_resp_t
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:39:5
	input wire clk_i;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:40:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:42:5
	input wire icache_en_i;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:43:5
	input wire icache_flush_i;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:44:5
	output wire icache_miss_o;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:46:5
	input wire [((1 + icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] icache_areq_i;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:47:5
	output wire [(1 + icache_arsp_t_CVA6Cfg[17070-:32]) - 1:0] icache_areq_o;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:49:5
	input wire [(4 + icache_dreq_t_CVA6Cfg[17070-:32]) - 1:0] icache_dreq_i;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:50:5
	output wire [((((2 + icache_drsp_t_CVA6Cfg[643-:32]) + icache_drsp_t_CVA6Cfg[708-:32]) + icache_drsp_t_CVA6Cfg[17070-:32]) + ((((icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] icache_dreq_o;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:53:5
	input wire dcache_enable_i;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:54:5
	input wire dcache_flush_i;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:55:5
	output wire dcache_flush_ack_o;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:56:5
	output wire dcache_miss_o;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:58:5
	output wire [(NumPorts * CVA6Cfg[1092-:32]) - 1:0] miss_vld_bits_o;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:60:5
	// removed localparam type ariane_pkg_amo_t
	// removed localparam type ariane_pkg_amo_req_t
	input wire [134:0] dcache_amo_req_i;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:61:5
	// removed localparam type ariane_pkg_amo_resp_t
	output wire [64:0] dcache_amo_resp_o;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:63:5
	input wire [(((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (NumPorts * ((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 2)) - 1 : (NumPorts * (1 - ((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))) + ((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 0)):(((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)] dcache_req_ports_i;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:64:5
	output wire [(NumPorts * (((2 + dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_CVA6Cfg[900-:32])) - 1:0] dcache_req_ports_o;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:66:5
	output wire wbuffer_empty_o;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:67:5
	output wire wbuffer_not_ni_o;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:69:5
	output wire [(((((((noc_req_t_noc_req_t_ariane_axi_IdWidth + noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((noc_req_t_noc_req_t_ariane_axi_DataWidth + noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + noc_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((noc_req_t_noc_req_t_ariane_axi_IdWidth + noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + noc_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] noc_req_o;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:70:5
	input wire [(((4 + ((noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + noc_resp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((noc_resp_t_noc_resp_t_ariane_axi_IdWidth + noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + noc_resp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] noc_resp_i;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:72:5
	input wire [63:0] inval_addr_i;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:73:5
	input wire inval_valid_i;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:74:5
	output wire inval_ready_o;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:79:3
	// removed localparam type dcache_inval_t
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:86:3
	// removed localparam type wt_cache_pkg_dcache_out_t
	// removed localparam type dcache_req_t
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:98:3
	// removed localparam type wt_cache_pkg_dcache_in_t
	// removed localparam type dcache_rtrn_t
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:106:3
	wire icache_adapter_data_req;
	wire adapter_icache_data_ack;
	wire adapter_icache_rtrn_vld;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:107:3
	wire [(((icache_req_t_CVA6Cfg[1286-:32] + icache_req_t_CVA6Cfg[17038-:32]) + 1) + icache_req_t_CVA6Cfg[16616-:32]) - 1:0] icache_adapter;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:108:3
	wire [((((1 + icache_rtrn_t_CVA6Cfg[1190-:32]) + icache_rtrn_t_CVA6Cfg[1158-:32]) + ((2 + icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_CVA6Cfg[1286-:32])) + icache_rtrn_t_CVA6Cfg[16616-:32]) - 1:0] adapter_icache;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:111:3
	wire dcache_adapter_data_req;
	wire adapter_dcache_data_ack;
	wire adapter_dcache_rtrn_vld;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:112:3
	wire [((((((5 + CVA6Cfg[1060-:32]) + CVA6Cfg[17038-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 1) + CVA6Cfg[16616-:32]) + 3:0] dcache_adapter;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:113:3
	wire [((((3 + CVA6Cfg[964-:32]) + CVA6Cfg[932-:32]) + ((2 + CVA6Cfg[1028-:32]) + CVA6Cfg[1060-:32])) + CVA6Cfg[16616-:32]) - 1:0] adapter_dcache;
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:115:3
	cva6_icache_CA401_5F806 #(
		.icache_areq_t_icache_areq_t_CVA6Cfg(icache_areq_t_CVA6Cfg),
		.icache_arsp_t_icache_arsp_t_CVA6Cfg(icache_arsp_t_CVA6Cfg),
		.icache_dreq_t_icache_dreq_t_CVA6Cfg(icache_dreq_t_CVA6Cfg),
		.icache_drsp_t_icache_drsp_t_CVA6Cfg(icache_drsp_t_CVA6Cfg),
		.icache_req_t_icache_req_t_CVA6Cfg(icache_req_t_CVA6Cfg),
		.icache_rtrn_t_icache_rtrn_t_CVA6Cfg(icache_rtrn_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg),
		.RdTxId(0)
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
		.mem_rtrn_vld_i(adapter_icache_rtrn_vld),
		.mem_rtrn_i(adapter_icache),
		.mem_data_req_o(icache_adapter_data_req),
		.mem_data_ack_i(adapter_icache_data_ack),
		.mem_data_o(icache_adapter)
	);
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:147:3
	wt_dcache_FC8CF_DE568 #(
		.dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_CVA6Cfg),
		.dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_CVA6Cfg),
		.dcache_req_t_CVA6Cfg(CVA6Cfg),
		.dcache_rtrn_t_CVA6Cfg(CVA6Cfg),
		.CVA6Cfg(CVA6Cfg),
		.RdAmoTxId(1)
	) i_wt_dcache(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.enable_i(dcache_enable_i),
		.flush_i(dcache_flush_i),
		.flush_ack_o(dcache_flush_ack_o),
		.miss_o(dcache_miss_o),
		.wbuffer_empty_o(wbuffer_empty_o),
		.wbuffer_not_ni_o(wbuffer_not_ni_o),
		.amo_req_i(dcache_amo_req_i),
		.amo_resp_o(dcache_amo_resp_o),
		.req_ports_i(dcache_req_ports_i),
		.req_ports_o(dcache_req_ports_o),
		.miss_vld_bits_o(miss_vld_bits_o),
		.mem_rtrn_vld_i(adapter_dcache_rtrn_vld),
		.mem_rtrn_i(adapter_dcache),
		.mem_data_req_o(dcache_adapter_data_req),
		.mem_data_ack_i(adapter_dcache_data_ack),
		.mem_data_o(dcache_adapter)
	);
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:207:3
	wt_axi_adapter_E4C80_DA539 #(
		.axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth(noc_req_t_noc_req_t_ariane_axi_AddrWidth),
		.axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth(noc_req_t_noc_req_t_ariane_axi_DataWidth),
		.axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth(noc_req_t_noc_req_t_ariane_axi_IdWidth),
		.axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth(noc_req_t_noc_req_t_ariane_axi_StrbWidth),
		.axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth(noc_req_t_noc_req_t_ariane_axi_UserWidth),
		.axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth(noc_resp_t_noc_resp_t_ariane_axi_DataWidth),
		.axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth(noc_resp_t_noc_resp_t_ariane_axi_IdWidth),
		.axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth(noc_resp_t_noc_resp_t_ariane_axi_UserWidth),
		.dcache_inval_t_CVA6Cfg(CVA6Cfg),
		.dcache_req_t_CVA6Cfg(CVA6Cfg),
		.dcache_rtrn_t_CVA6Cfg(CVA6Cfg),
		.icache_req_t_icache_req_t_CVA6Cfg(icache_req_t_CVA6Cfg),
		.icache_rtrn_t_icache_rtrn_t_CVA6Cfg(icache_rtrn_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) i_adapter(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.icache_data_req_i(icache_adapter_data_req),
		.icache_data_ack_o(adapter_icache_data_ack),
		.icache_data_i(icache_adapter),
		.icache_rtrn_vld_o(adapter_icache_rtrn_vld),
		.icache_rtrn_o(adapter_icache),
		.dcache_data_req_i(dcache_adapter_data_req),
		.dcache_data_ack_o(adapter_dcache_data_ack),
		.dcache_data_i(dcache_adapter),
		.dcache_rtrn_vld_o(adapter_dcache_rtrn_vld),
		.dcache_rtrn_o(adapter_dcache),
		.axi_req_o(noc_req_o),
		.axi_resp_i(noc_resp_i),
		.inval_addr_i(inval_addr_i),
		.inval_valid_i(inval_valid_i),
		.inval_ready_o(inval_ready_o)
	);
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:243:3
	// removed an assertion item
	// a_invalid_instruction_fetch : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(icache_dreq_o.valid |-> |icache_dreq_o.data !== 1'hx)
	// ) else begin
	// 	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:247:5
	// 	$warning(1, "[l1 dcache] reading invalid instructions: vaddr=%08X, data=%08X", icache_dreq_o.vaddr, icache_dreq_o.data);
	// end
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:254:3
	genvar _gv_j_8;
	generate
		for (_gv_j_8 = 0; _gv_j_8 < (CVA6Cfg[17102-:32] / 8); _gv_j_8 = _gv_j_8 + 1) begin : gen_invalid_write_assertion
			localparam j = _gv_j_8;
			// Trace: core/cache_subsystem/wt_cache_subsystem.sv:255:5
			// removed an assertion item
			// a_invalid_write_data : assert property (@(posedge clk_i) disable iff (!rst_ni)
			// 	(dcache_req_ports_i[NumPorts - 1].data_req |-> (dcache_req_ports_i[NumPorts - 1].data_be[j] |-> |dcache_req_ports_i[NumPorts - 1].data_wdata[j * 8+:8] !== 1'hx))
			// ) else begin
			// 	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:259:7
			// 	$warning(1, "[l1 dcache] writing invalid data: paddr=%016X, be=%02X, data=%016X, databe=%016X", {dcache_req_ports_i[NumPorts - 1].address_tag, dcache_req_ports_i[NumPorts - 1].address_index}, dcache_req_ports_i[NumPorts - 1].data_be, dcache_req_ports_i[NumPorts - 1].data_wdata, dcache_req_ports_i[NumPorts - 1].data_be & dcache_req_ports_i[NumPorts - 1].data_wdata);
			// end
		end
	endgenerate
	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:272:3
	genvar _gv_j_9;
	generate
		for (_gv_j_9 = 0; _gv_j_9 < (NumPorts - 1); _gv_j_9 = _gv_j_9 + 1) begin : gen_assertion
			localparam j = _gv_j_9;
			// Trace: core/cache_subsystem/wt_cache_subsystem.sv:273:5
			// removed an assertion item
			// a_invalid_read_data : assert property (@(posedge clk_i) disable iff (!rst_ni)
			// 	(dcache_req_ports_o[j].data_rvalid && ~dcache_req_ports_i[j].kill_req |-> |dcache_req_ports_o[j].data_rdata !== 1'hx)
			// ) else begin
			// 	// Trace: core/cache_subsystem/wt_cache_subsystem.sv:277:7
			// 	$warning(1, "[l1 dcache] reading invalid data on port %01d: data=%016X", j, dcache_req_ports_o[j].data_rdata);
			// end
		end
	endgenerate
endmodule
