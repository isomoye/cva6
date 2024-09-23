module wt_dcache_FC8CF_DE568 (
	clk_i,
	rst_ni,
	enable_i,
	flush_i,
	flush_ack_o,
	miss_o,
	wbuffer_empty_o,
	wbuffer_not_ni_o,
	amo_req_i,
	amo_resp_o,
	req_ports_i,
	req_ports_o,
	miss_vld_bits_o,
	mem_rtrn_vld_i,
	mem_rtrn_i,
	mem_data_req_o,
	mem_data_ack_i,
	mem_data_o
);
	// removed localparam type dcache_req_i_t_dcache_req_i_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_i_t_dcache_req_i_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_o_t_dcache_req_o_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_o_t_dcache_req_o_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_t_CVA6Cfg = 0;
	// removed localparam type dcache_rtrn_t_CVA6Cfg_type
	parameter [17102:0] dcache_rtrn_t_CVA6Cfg = 0;
	// removed import ariane_pkg::*;
	// removed import wt_cache_pkg::*;
	// Trace: core/cache_subsystem/wt_dcache.sv:20:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/wt_dcache.sv:21:20
	// removed localparam type dcache_req_i_t
	// Trace: core/cache_subsystem/wt_dcache.sv:22:20
	// removed localparam type dcache_req_o_t
	// Trace: core/cache_subsystem/wt_dcache.sv:23:20
	// removed localparam type dcache_req_t
	// Trace: core/cache_subsystem/wt_dcache.sv:24:20
	// removed localparam type dcache_rtrn_t
	// Trace: core/cache_subsystem/wt_dcache.sv:25:15
	parameter [31:0] NumPorts = 4;
	// Trace: core/cache_subsystem/wt_dcache.sv:28:15
	parameter [CVA6Cfg[16616-:32] - 1:0] RdAmoTxId = 1;
	// Trace: core/cache_subsystem/wt_dcache.sv:30:5
	input wire clk_i;
	// Trace: core/cache_subsystem/wt_dcache.sv:31:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/wt_dcache.sv:34:5
	input wire enable_i;
	// Trace: core/cache_subsystem/wt_dcache.sv:35:5
	input wire flush_i;
	// Trace: core/cache_subsystem/wt_dcache.sv:36:5
	output wire flush_ack_o;
	// Trace: core/cache_subsystem/wt_dcache.sv:37:5
	output wire miss_o;
	// Trace: core/cache_subsystem/wt_dcache.sv:38:5
	output wire wbuffer_empty_o;
	// Trace: core/cache_subsystem/wt_dcache.sv:39:5
	output wire wbuffer_not_ni_o;
	// Trace: core/cache_subsystem/wt_dcache.sv:42:5
	// removed localparam type ariane_pkg_amo_t
	// removed localparam type ariane_pkg_amo_req_t
	input wire [134:0] amo_req_i;
	// Trace: core/cache_subsystem/wt_dcache.sv:43:5
	// removed localparam type ariane_pkg_amo_resp_t
	output wire [64:0] amo_resp_o;
	// Trace: core/cache_subsystem/wt_dcache.sv:46:5
	input wire [(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (NumPorts * ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2)) - 1 : (NumPorts * (1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))) + ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 0)):(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)] req_ports_i;
	// Trace: core/cache_subsystem/wt_dcache.sv:47:5
	output wire [(NumPorts * (((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32])) - 1:0] req_ports_o;
	// Trace: core/cache_subsystem/wt_dcache.sv:49:5
	output wire [(NumPorts * CVA6Cfg[1092-:32]) - 1:0] miss_vld_bits_o;
	// Trace: core/cache_subsystem/wt_dcache.sv:51:5
	input wire mem_rtrn_vld_i;
	// Trace: core/cache_subsystem/wt_dcache.sv:52:5
	input wire [((((3 + dcache_rtrn_t_CVA6Cfg[964-:32]) + dcache_rtrn_t_CVA6Cfg[932-:32]) + ((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32])) + dcache_rtrn_t_CVA6Cfg[16616-:32]) - 1:0] mem_rtrn_i;
	// Trace: core/cache_subsystem/wt_dcache.sv:53:5
	output wire mem_data_req_o;
	// Trace: core/cache_subsystem/wt_dcache.sv:54:5
	input wire mem_data_ack_i;
	// Trace: core/cache_subsystem/wt_dcache.sv:55:5
	output wire [((((((5 + dcache_req_t_CVA6Cfg[1060-:32]) + dcache_req_t_CVA6Cfg[17038-:32]) + dcache_req_t_CVA6Cfg[17102-:32]) + dcache_req_t_CVA6Cfg[900-:32]) + 1) + dcache_req_t_CVA6Cfg[16616-:32]) + 3:0] mem_data_o;
	// Trace: core/cache_subsystem/wt_dcache.sv:58:3
	localparam DCACHE_CL_IDX_WIDTH = $clog2(CVA6Cfg[836-:32]);
	// Trace: core/cache_subsystem/wt_dcache.sv:60:3
	// removed localparam type wbuffer_t
	// Trace: core/cache_subsystem/wt_dcache.sv:72:3
	wire cache_en;
	// Trace: core/cache_subsystem/wt_dcache.sv:75:3
	wire wr_cl_vld;
	// Trace: core/cache_subsystem/wt_dcache.sv:76:3
	wire wr_cl_nc;
	// Trace: core/cache_subsystem/wt_dcache.sv:77:3
	wire [CVA6Cfg[1092-:32] - 1:0] wr_cl_we;
	// Trace: core/cache_subsystem/wt_dcache.sv:78:3
	wire [CVA6Cfg[996-:32] - 1:0] wr_cl_tag;
	// Trace: core/cache_subsystem/wt_dcache.sv:79:3
	wire [DCACHE_CL_IDX_WIDTH - 1:0] wr_cl_idx;
	// Trace: core/cache_subsystem/wt_dcache.sv:80:3
	wire [CVA6Cfg[868-:32] - 1:0] wr_cl_off;
	// Trace: core/cache_subsystem/wt_dcache.sv:81:3
	wire [CVA6Cfg[964-:32] - 1:0] wr_cl_data;
	// Trace: core/cache_subsystem/wt_dcache.sv:82:3
	wire [CVA6Cfg[932-:32] - 1:0] wr_cl_user;
	// Trace: core/cache_subsystem/wt_dcache.sv:83:3
	wire [(CVA6Cfg[964-:32] / 8) - 1:0] wr_cl_data_be;
	// Trace: core/cache_subsystem/wt_dcache.sv:84:3
	wire [CVA6Cfg[1092-:32] - 1:0] wr_vld_bits;
	// Trace: core/cache_subsystem/wt_dcache.sv:85:3
	wire [CVA6Cfg[1092-:32] - 1:0] wr_req;
	// Trace: core/cache_subsystem/wt_dcache.sv:86:3
	wire wr_ack;
	// Trace: core/cache_subsystem/wt_dcache.sv:87:3
	wire [DCACHE_CL_IDX_WIDTH - 1:0] wr_idx;
	// Trace: core/cache_subsystem/wt_dcache.sv:88:3
	wire [CVA6Cfg[868-:32] - 1:0] wr_off;
	// Trace: core/cache_subsystem/wt_dcache.sv:89:3
	wire [CVA6Cfg[17102-:32] - 1:0] wr_data;
	// Trace: core/cache_subsystem/wt_dcache.sv:90:3
	wire [(CVA6Cfg[17102-:32] / 8) - 1:0] wr_data_be;
	// Trace: core/cache_subsystem/wt_dcache.sv:91:3
	wire [CVA6Cfg[900-:32] - 1:0] wr_user;
	// Trace: core/cache_subsystem/wt_dcache.sv:94:3
	wire [NumPorts - 1:0] miss_req;
	// Trace: core/cache_subsystem/wt_dcache.sv:95:3
	wire [NumPorts - 1:0] miss_ack;
	// Trace: core/cache_subsystem/wt_dcache.sv:96:3
	wire [NumPorts - 1:0] miss_nc;
	// Trace: core/cache_subsystem/wt_dcache.sv:97:3
	wire [NumPorts - 1:0] miss_we;
	// Trace: core/cache_subsystem/wt_dcache.sv:98:3
	wire [(NumPorts * CVA6Cfg[17102-:32]) - 1:0] miss_wdata;
	// Trace: core/cache_subsystem/wt_dcache.sv:99:3
	wire [(NumPorts * CVA6Cfg[900-:32]) - 1:0] miss_wuser;
	// Trace: core/cache_subsystem/wt_dcache.sv:100:3
	wire [(NumPorts * CVA6Cfg[17038-:32]) - 1:0] miss_paddr;
	// Trace: core/cache_subsystem/wt_dcache.sv:101:3
	wire [(NumPorts * 3) - 1:0] miss_size;
	// Trace: core/cache_subsystem/wt_dcache.sv:102:3
	wire [(NumPorts * CVA6Cfg[16616-:32]) - 1:0] miss_id;
	// Trace: core/cache_subsystem/wt_dcache.sv:103:3
	wire [NumPorts - 1:0] miss_replay;
	// Trace: core/cache_subsystem/wt_dcache.sv:104:3
	wire [NumPorts - 1:0] miss_rtrn_vld;
	// Trace: core/cache_subsystem/wt_dcache.sv:105:3
	wire [CVA6Cfg[16616-:32] - 1:0] miss_rtrn_id;
	// Trace: core/cache_subsystem/wt_dcache.sv:108:3
	wire [NumPorts - 1:0] rd_prio;
	// Trace: core/cache_subsystem/wt_dcache.sv:109:3
	wire [NumPorts - 1:0] rd_tag_only;
	// Trace: core/cache_subsystem/wt_dcache.sv:110:3
	wire [NumPorts - 1:0] rd_req;
	// Trace: core/cache_subsystem/wt_dcache.sv:111:3
	wire [NumPorts - 1:0] rd_ack;
	// Trace: core/cache_subsystem/wt_dcache.sv:112:3
	wire [(NumPorts * CVA6Cfg[996-:32]) - 1:0] rd_tag;
	// Trace: core/cache_subsystem/wt_dcache.sv:113:3
	wire [(NumPorts * DCACHE_CL_IDX_WIDTH) - 1:0] rd_idx;
	// Trace: core/cache_subsystem/wt_dcache.sv:114:3
	wire [(NumPorts * CVA6Cfg[868-:32]) - 1:0] rd_off;
	// Trace: core/cache_subsystem/wt_dcache.sv:115:3
	wire [CVA6Cfg[17102-:32] - 1:0] rd_data;
	// Trace: core/cache_subsystem/wt_dcache.sv:116:3
	wire [CVA6Cfg[900-:32] - 1:0] rd_user;
	// Trace: core/cache_subsystem/wt_dcache.sv:117:3
	wire [CVA6Cfg[1092-:32] - 1:0] rd_vld_bits;
	// Trace: core/cache_subsystem/wt_dcache.sv:118:3
	wire [CVA6Cfg[1092-:32] - 1:0] rd_hit_oh;
	// Trace: core/cache_subsystem/wt_dcache.sv:121:3
	wire [(CVA6Cfg[804-:32] * CVA6Cfg[17038-:32]) - 1:0] tx_paddr;
	// Trace: core/cache_subsystem/wt_dcache.sv:122:3
	wire [CVA6Cfg[804-:32] - 1:0] tx_vld;
	// Trace: core/cache_subsystem/wt_dcache.sv:125:3
	wire [(CVA6Cfg[740-:32] * ((((((((CVA6Cfg[996-:32] + (CVA6Cfg[1028-:32] - CVA6Cfg[16972-:32])) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + 1) + CVA6Cfg[1092-:32])) - 1:0] wbuffer_data;
	// Trace: core/cache_subsystem/wt_dcache.sv:132:3
	wt_dcache_missunit_AE121_53AFD #(
		.dcache_req_t_dcache_req_t_CVA6Cfg(dcache_req_t_CVA6Cfg),
		.dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg(dcache_rtrn_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg),
		.DCACHE_CL_IDX_WIDTH(DCACHE_CL_IDX_WIDTH),
		.AmoTxId(RdAmoTxId),
		.NumPorts(NumPorts)
	) i_wt_dcache_missunit(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.enable_i(enable_i),
		.flush_i(flush_i),
		.flush_ack_o(flush_ack_o),
		.miss_o(miss_o),
		.wbuffer_empty_i(wbuffer_empty_o),
		.cache_en_o(cache_en),
		.amo_req_i(amo_req_i),
		.amo_resp_o(amo_resp_o),
		.miss_req_i(miss_req),
		.miss_ack_o(miss_ack),
		.miss_nc_i(miss_nc),
		.miss_we_i(miss_we),
		.miss_wdata_i(miss_wdata),
		.miss_wuser_i(miss_wuser),
		.miss_paddr_i(miss_paddr),
		.miss_vld_bits_i(miss_vld_bits_o),
		.miss_size_i(miss_size),
		.miss_id_i(miss_id),
		.miss_replay_o(miss_replay),
		.miss_rtrn_vld_o(miss_rtrn_vld),
		.miss_rtrn_id_o(miss_rtrn_id),
		.tx_paddr_i(tx_paddr),
		.tx_vld_i(tx_vld),
		.wr_cl_vld_o(wr_cl_vld),
		.wr_cl_nc_o(wr_cl_nc),
		.wr_cl_we_o(wr_cl_we),
		.wr_cl_tag_o(wr_cl_tag),
		.wr_cl_idx_o(wr_cl_idx),
		.wr_cl_off_o(wr_cl_off),
		.wr_cl_data_o(wr_cl_data),
		.wr_cl_user_o(wr_cl_user),
		.wr_cl_data_be_o(wr_cl_data_be),
		.wr_vld_bits_o(wr_vld_bits),
		.mem_rtrn_vld_i(mem_rtrn_vld_i),
		.mem_rtrn_i(mem_rtrn_i),
		.mem_data_req_o(mem_data_req_o),
		.mem_data_ack_i(mem_data_ack_i),
		.mem_data_o(mem_data_o)
	);
	// Trace: core/cache_subsystem/wt_dcache.sv:192:3
	genvar _gv_k_18;
	generate
		for (_gv_k_18 = 0; _gv_k_18 < (NumPorts - 1); _gv_k_18 = _gv_k_18 + 1) begin : gen_rd_ports
			localparam k = _gv_k_18;
			if ((((k == 0) && CVA6Cfg[16367]) || (k == 1)) || ((k == 2) && CVA6Cfg[16369])) begin : genblk1
				// Trace: core/cache_subsystem/wt_dcache.sv:195:7
				assign rd_prio[k] = 1'b1;
				// Trace: core/cache_subsystem/wt_dcache.sv:196:7
				wt_dcache_ctrl_2927B_4187A #(
					.dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_dcache_req_i_t_CVA6Cfg),
					.dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_dcache_req_o_t_CVA6Cfg),
					.CVA6Cfg(CVA6Cfg),
					.DCACHE_CL_IDX_WIDTH(DCACHE_CL_IDX_WIDTH),
					.RdTxId(RdAmoTxId)
				) i_wt_dcache_ctrl(
					.clk_i(clk_i),
					.rst_ni(rst_ni),
					.cache_en_i(cache_en),
					.req_port_i(req_ports_i[(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) + (k * (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)))+:(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))]),
					.req_port_o(req_ports_o[k * (((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32])+:((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]]),
					.miss_req_o(miss_req[k]),
					.miss_ack_i(miss_ack[k]),
					.miss_we_o(miss_we[k]),
					.miss_wdata_o(miss_wdata[k * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]]),
					.miss_wuser_o(miss_wuser[k * CVA6Cfg[900-:32]+:CVA6Cfg[900-:32]]),
					.miss_vld_bits_o(miss_vld_bits_o[k * CVA6Cfg[1092-:32]+:CVA6Cfg[1092-:32]]),
					.miss_paddr_o(miss_paddr[k * CVA6Cfg[17038-:32]+:CVA6Cfg[17038-:32]]),
					.miss_nc_o(miss_nc[k]),
					.miss_size_o(miss_size[k * 3+:3]),
					.miss_id_o(miss_id[k * CVA6Cfg[16616-:32]+:CVA6Cfg[16616-:32]]),
					.miss_replay_i(miss_replay[k]),
					.miss_rtrn_vld_i(miss_rtrn_vld[k]),
					.wr_cl_vld_i(wr_cl_vld),
					.rd_tag_o(rd_tag[k * CVA6Cfg[996-:32]+:CVA6Cfg[996-:32]]),
					.rd_idx_o(rd_idx[k * DCACHE_CL_IDX_WIDTH+:DCACHE_CL_IDX_WIDTH]),
					.rd_off_o(rd_off[k * CVA6Cfg[868-:32]+:CVA6Cfg[868-:32]]),
					.rd_req_o(rd_req[k]),
					.rd_tag_only_o(rd_tag_only[k]),
					.rd_ack_i(rd_ack[k]),
					.rd_data_i(rd_data),
					.rd_user_i(rd_user),
					.rd_vld_bits_i(rd_vld_bits),
					.rd_hit_oh_i(rd_hit_oh)
				);
			end
			else begin : genblk1
				// Trace: core/cache_subsystem/wt_dcache.sv:237:7
				assign rd_prio[k] = 1'b0;
				// Trace: core/cache_subsystem/wt_dcache.sv:238:7
				assign req_ports_o[k * (((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32])+:((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]] = 1'sb0;
				// Trace: core/cache_subsystem/wt_dcache.sv:239:7
				assign miss_req[k] = 1'b0;
				// Trace: core/cache_subsystem/wt_dcache.sv:240:7
				assign miss_we[k] = 1'b0;
				// Trace: core/cache_subsystem/wt_dcache.sv:241:7
				assign miss_wdata[k * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]] = {{CVA6Cfg[17102-:32]} {1'b0}};
				// Trace: core/cache_subsystem/wt_dcache.sv:242:7
				assign miss_wuser[k * CVA6Cfg[900-:32]+:CVA6Cfg[900-:32]] = {{CVA6Cfg[900-:32]} {1'b0}};
				// Trace: core/cache_subsystem/wt_dcache.sv:243:7
				assign miss_vld_bits_o[k * CVA6Cfg[1092-:32]+:CVA6Cfg[1092-:32]] = {{CVA6Cfg[1092-:32]} {1'b0}};
				// Trace: core/cache_subsystem/wt_dcache.sv:244:7
				assign miss_paddr[k * CVA6Cfg[17038-:32]+:CVA6Cfg[17038-:32]] = {{CVA6Cfg[17038-:32]} {1'b0}};
				// Trace: core/cache_subsystem/wt_dcache.sv:245:7
				assign miss_nc[k] = 1'b0;
				// Trace: core/cache_subsystem/wt_dcache.sv:246:7
				assign miss_size[k * 3+:3] = 3'b000;
				// Trace: core/cache_subsystem/wt_dcache.sv:247:7
				assign miss_id[k * CVA6Cfg[16616-:32]+:CVA6Cfg[16616-:32]] = {{CVA6Cfg[16616-:32]} {1'b0}};
				// Trace: core/cache_subsystem/wt_dcache.sv:248:7
				assign rd_tag[k * CVA6Cfg[996-:32]+:CVA6Cfg[996-:32]] = {{CVA6Cfg[996-:32]} {1'b0}};
				// Trace: core/cache_subsystem/wt_dcache.sv:249:7
				assign rd_idx[k * DCACHE_CL_IDX_WIDTH+:DCACHE_CL_IDX_WIDTH] = {{DCACHE_CL_IDX_WIDTH} {1'b0}};
				// Trace: core/cache_subsystem/wt_dcache.sv:250:7
				assign rd_off[k * CVA6Cfg[868-:32]+:CVA6Cfg[868-:32]] = {{CVA6Cfg[868-:32]} {1'b0}};
				// Trace: core/cache_subsystem/wt_dcache.sv:251:7
				assign rd_req[k] = 1'b0;
				// Trace: core/cache_subsystem/wt_dcache.sv:252:7
				assign rd_tag_only[k] = 1'b0;
			end
		end
	endgenerate
	// Trace: core/cache_subsystem/wt_dcache.sv:261:3
	assign rd_prio[NumPorts - 1] = 1'b0;
	// Trace: core/cache_subsystem/wt_dcache.sv:263:3
	wt_dcache_wbuffer_7E3B8_2DD72 #(
		.dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_dcache_req_i_t_CVA6Cfg),
		.dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_dcache_req_o_t_CVA6Cfg),
		.wbuffer_t_CVA6Cfg(CVA6Cfg),
		.CVA6Cfg(CVA6Cfg),
		.DCACHE_CL_IDX_WIDTH(DCACHE_CL_IDX_WIDTH)
	) i_wt_dcache_wbuffer(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.empty_o(wbuffer_empty_o),
		.not_ni_o(wbuffer_not_ni_o),
		.cache_en_i(cache_en),
		.req_port_i(req_ports_i[(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) + ((NumPorts - 1) * (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)))+:(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))]),
		.req_port_o(req_ports_o[(NumPorts - 1) * (((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32])+:((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]]),
		.miss_req_o(miss_req[NumPorts - 1]),
		.miss_ack_i(miss_ack[NumPorts - 1]),
		.miss_we_o(miss_we[NumPorts - 1]),
		.miss_wdata_o(miss_wdata[(NumPorts - 1) * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]]),
		.miss_wuser_o(miss_wuser[(NumPorts - 1) * CVA6Cfg[900-:32]+:CVA6Cfg[900-:32]]),
		.miss_vld_bits_o(miss_vld_bits_o[(NumPorts - 1) * CVA6Cfg[1092-:32]+:CVA6Cfg[1092-:32]]),
		.miss_paddr_o(miss_paddr[(NumPorts - 1) * CVA6Cfg[17038-:32]+:CVA6Cfg[17038-:32]]),
		.miss_nc_o(miss_nc[NumPorts - 1]),
		.miss_size_o(miss_size[(NumPorts - 1) * 3+:3]),
		.miss_id_o(miss_id[(NumPorts - 1) * CVA6Cfg[16616-:32]+:CVA6Cfg[16616-:32]]),
		.miss_rtrn_vld_i(miss_rtrn_vld[NumPorts - 1]),
		.miss_rtrn_id_i(miss_rtrn_id),
		.rd_tag_o(rd_tag[(NumPorts - 1) * CVA6Cfg[996-:32]+:CVA6Cfg[996-:32]]),
		.rd_idx_o(rd_idx[(NumPorts - 1) * DCACHE_CL_IDX_WIDTH+:DCACHE_CL_IDX_WIDTH]),
		.rd_off_o(rd_off[(NumPorts - 1) * CVA6Cfg[868-:32]+:CVA6Cfg[868-:32]]),
		.rd_req_o(rd_req[NumPorts - 1]),
		.rd_tag_only_o(rd_tag_only[NumPorts - 1]),
		.rd_ack_i(rd_ack[NumPorts - 1]),
		.rd_data_i(rd_data),
		.rd_vld_bits_i(rd_vld_bits),
		.rd_hit_oh_i(rd_hit_oh),
		.wr_cl_vld_i(wr_cl_vld),
		.wr_cl_idx_i(wr_cl_idx),
		.wr_req_o(wr_req),
		.wr_ack_i(wr_ack),
		.wr_idx_o(wr_idx),
		.wr_off_o(wr_off),
		.wr_data_o(wr_data),
		.wr_user_o(wr_user),
		.wr_data_be_o(wr_data_be),
		.wbuffer_data_o(wbuffer_data),
		.tx_paddr_o(tx_paddr),
		.tx_vld_o(tx_vld)
	);
	// Trace: core/cache_subsystem/wt_dcache.sv:324:3
	wt_dcache_mem_710D7_EEAC2 #(
		.wbuffer_t_CVA6Cfg(CVA6Cfg),
		.wbuffer_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.CVA6Cfg(CVA6Cfg),
		.DCACHE_CL_IDX_WIDTH(DCACHE_CL_IDX_WIDTH),
		.NumPorts(NumPorts)
	) i_wt_dcache_mem(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.rd_prio_i(rd_prio),
		.rd_tag_i(rd_tag),
		.rd_idx_i(rd_idx),
		.rd_off_i(rd_off),
		.rd_req_i(rd_req),
		.rd_tag_only_i(rd_tag_only),
		.rd_ack_o(rd_ack),
		.rd_vld_bits_o(rd_vld_bits),
		.rd_hit_oh_o(rd_hit_oh),
		.rd_data_o(rd_data),
		.rd_user_o(rd_user),
		.wr_cl_vld_i(wr_cl_vld),
		.wr_cl_nc_i(wr_cl_nc),
		.wr_cl_we_i(wr_cl_we),
		.wr_cl_tag_i(wr_cl_tag),
		.wr_cl_idx_i(wr_cl_idx),
		.wr_cl_off_i(wr_cl_off),
		.wr_cl_data_i(wr_cl_data),
		.wr_cl_user_i(wr_cl_user),
		.wr_cl_data_be_i(wr_cl_data_be),
		.wr_vld_bits_i(wr_vld_bits),
		.wr_req_i(wr_req),
		.wr_ack_o(wr_ack),
		.wr_idx_i(wr_idx),
		.wr_off_i(wr_off),
		.wr_data_i(wr_data),
		.wr_user_i(wr_user),
		.wr_data_be_i(wr_data_be),
		.wbuffer_data_i(wbuffer_data)
	);
	// Trace: core/cache_subsystem/wt_dcache.sv:376:3
	// removed an assertion item
	// flush : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(flush_i |-> (flush_ack_o |-> wbuffer_empty_o))
	// ) else begin
	// 	// Trace: core/cache_subsystem/wt_dcache.sv:379:8
	// 	$fatal(1, "[l1 dcache] flushed cache implies flushed wbuffer");
	// end
	// Trace: core/cache_subsystem/wt_dcache.sv:381:3
endmodule
