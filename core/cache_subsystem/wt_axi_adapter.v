module wt_axi_adapter_E4C80_DA539 (
	clk_i,
	rst_ni,
	icache_data_req_i,
	icache_data_ack_o,
	icache_data_i,
	icache_rtrn_vld_o,
	icache_rtrn_o,
	dcache_data_req_i,
	dcache_data_ack_o,
	dcache_data_i,
	dcache_rtrn_vld_o,
	dcache_rtrn_o,
	axi_req_o,
	axi_resp_i,
	inval_addr_i,
	inval_valid_i,
	inval_ready_o
);
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
	// removed localparam type dcache_inval_t_CVA6Cfg_type
	parameter [17102:0] dcache_inval_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_t_CVA6Cfg = 0;
	// removed localparam type dcache_rtrn_t_CVA6Cfg_type
	parameter [17102:0] dcache_rtrn_t_CVA6Cfg = 0;
	// removed localparam type icache_req_t_icache_req_t_CVA6Cfg_type
	parameter [17102:0] icache_req_t_icache_req_t_CVA6Cfg = 0;
	// removed localparam type icache_rtrn_t_icache_rtrn_t_CVA6Cfg_type
	parameter [17102:0] icache_rtrn_t_icache_rtrn_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// removed import wt_cache_pkg::*;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:21:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:22:15
	parameter [31:0] ReqFifoDepth = 2;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:23:15
	parameter [31:0] MetaFifoDepth = CVA6Cfg[804-:32];
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:24:20
	// removed localparam type axi_req_t
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:25:20
	// removed localparam type axi_rsp_t
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:26:20
	// removed localparam type dcache_req_t
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:27:20
	// removed localparam type dcache_rtrn_t
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:28:20
	// removed localparam type dcache_inval_t
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:29:20
	// removed localparam type icache_req_t
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:30:20
	// removed localparam type icache_rtrn_t
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:32:5
	input wire clk_i;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:33:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:36:5
	input wire icache_data_req_i;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:37:5
	output wire icache_data_ack_o;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:38:5
	input wire [(((icache_req_t_icache_req_t_CVA6Cfg[1286-:32] + icache_req_t_icache_req_t_CVA6Cfg[17038-:32]) + 1) + icache_req_t_icache_req_t_CVA6Cfg[16616-:32]) - 1:0] icache_data_i;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:40:5
	output reg icache_rtrn_vld_o;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:41:5
	output reg [((((1 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32]) + ((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32])) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32]) - 1:0] icache_rtrn_o;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:44:5
	input wire dcache_data_req_i;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:45:5
	output wire dcache_data_ack_o;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:46:5
	input wire [((((((5 + dcache_req_t_CVA6Cfg[1060-:32]) + dcache_req_t_CVA6Cfg[17038-:32]) + dcache_req_t_CVA6Cfg[17102-:32]) + dcache_req_t_CVA6Cfg[900-:32]) + 1) + dcache_req_t_CVA6Cfg[16616-:32]) + 3:0] dcache_data_i;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:48:5
	output reg dcache_rtrn_vld_o;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:49:5
	output reg [((((3 + dcache_rtrn_t_CVA6Cfg[964-:32]) + dcache_rtrn_t_CVA6Cfg[932-:32]) + ((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32])) + dcache_rtrn_t_CVA6Cfg[16616-:32]) - 1:0] dcache_rtrn_o;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:52:5
	output wire [(((((((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_req_o;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:53:5
	input wire [(((4 + ((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_resp_i;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:56:5
	input wire [63:0] inval_addr_i;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:57:5
	input wire inval_valid_i;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:58:5
	output reg inval_ready_o;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:62:3
	localparam AxiNumWords = ((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) * (CVA6Cfg[1190-:32] > CVA6Cfg[964-:32])) + ((CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) * (CVA6Cfg[1190-:32] <= CVA6Cfg[964-:32]));
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:64:3
	localparam MaxNumWords = $clog2(CVA6Cfg[16712-:32] / 8);
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:65:3
	localparam AxiRdBlenIcache = (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:66:3
	localparam AxiRdBlenDcache = (CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) - 1;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:72:3
	wire [(((icache_req_t_icache_req_t_CVA6Cfg[1286-:32] + icache_req_t_icache_req_t_CVA6Cfg[17038-:32]) + 1) + icache_req_t_icache_req_t_CVA6Cfg[16616-:32]) - 1:0] icache_data;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:73:3
	wire icache_data_full;
	wire icache_data_empty;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:74:3
	wire [((((((5 + dcache_req_t_CVA6Cfg[1060-:32]) + dcache_req_t_CVA6Cfg[17038-:32]) + dcache_req_t_CVA6Cfg[17102-:32]) + dcache_req_t_CVA6Cfg[900-:32]) + 1) + dcache_req_t_CVA6Cfg[16616-:32]) + 3:0] dcache_data;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:75:3
	wire dcache_data_full;
	wire dcache_data_empty;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:77:3
	wire [1:0] arb_req;
	wire [1:0] arb_ack;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:78:3
	wire arb_idx;
	wire arb_gnt;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:80:3
	reg axi_rd_req;
	wire axi_rd_gnt;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:81:3
	reg axi_wr_req;
	wire axi_wr_gnt;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:82:3
	wire axi_wr_valid;
	wire axi_rd_valid;
	reg axi_rd_rdy;
	wire axi_wr_rdy;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:83:3
	reg axi_rd_lock;
	reg axi_wr_lock;
	wire axi_rd_exokay;
	wire axi_wr_exokay;
	wire wr_exokay;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:84:3
	reg [CVA6Cfg[16744-:32] - 1:0] axi_rd_addr;
	reg [CVA6Cfg[16744-:32] - 1:0] axi_wr_addr;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:85:3
	reg [$clog2(AxiNumWords) - 1:0] axi_rd_blen;
	reg [$clog2(AxiNumWords) - 1:0] axi_wr_blen;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:86:3
	reg [2:0] axi_rd_size;
	reg [2:0] axi_wr_size;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:87:3
	reg [CVA6Cfg[16680-:32] - 1:0] axi_rd_id_in;
	reg [CVA6Cfg[16680-:32] - 1:0] axi_wr_id_in;
	wire [CVA6Cfg[16680-:32] - 1:0] axi_rd_id_out;
	wire [CVA6Cfg[16680-:32] - 1:0] axi_wr_id_out;
	wire [CVA6Cfg[16680-:32] - 1:0] wr_id_out;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:89:3
	reg [(AxiNumWords * CVA6Cfg[16712-:32]) - 1:0] axi_wr_data;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:90:3
	reg [(AxiNumWords * CVA6Cfg[16648-:32]) - 1:0] axi_wr_user;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:91:3
	wire [CVA6Cfg[16712-:32] - 1:0] axi_rd_data;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:92:3
	wire [CVA6Cfg[16648-:32] - 1:0] axi_rd_user;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:93:3
	reg [(AxiNumWords * (CVA6Cfg[16712-:32] / 8)) - 1:0] axi_wr_be;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:94:3
	reg [5:0] axi_wr_atop;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:95:3
	reg invalidate;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:96:3
	reg [$clog2(CVA6Cfg[16712-:32] / 8) - 1:0] amo_off_d;
	reg [$clog2(CVA6Cfg[16712-:32] / 8) - 1:0] amo_off_q;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:98:3
	reg amo_gen_r_d;
	reg amo_gen_r_q;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:100:3
	wire [CVA6Cfg[16616-:32] - 1:0] icache_rtrn_tid_d;
	reg [CVA6Cfg[16616-:32] - 1:0] icache_rtrn_tid_q;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:101:3
	wire [CVA6Cfg[16616-:32] - 1:0] dcache_rtrn_tid_d;
	reg [CVA6Cfg[16616-:32] - 1:0] dcache_rtrn_tid_q;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:102:3
	wire [CVA6Cfg[16616-:32] - 1:0] dcache_rtrn_rd_tid;
	wire [CVA6Cfg[16616-:32] - 1:0] dcache_rtrn_wr_tid;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:103:3
	reg dcache_rd_pop;
	reg dcache_wr_pop;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:104:3
	wire icache_rd_full;
	wire icache_rd_empty;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:105:3
	wire dcache_rd_full;
	wire dcache_rd_empty;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:106:3
	wire dcache_wr_full;
	wire dcache_wr_empty;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:108:3
	assign icache_data_ack_o = icache_data_req_i & ~icache_data_full;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:109:3
	assign dcache_data_ack_o = dcache_data_req_i & ~dcache_data_full;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:112:3
	assign arb_req = {~((dcache_data_empty | dcache_wr_full) | dcache_rd_full), ~(icache_data_empty | icache_rd_full)};
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:116:3
	assign arb_gnt = axi_rd_gnt | axi_wr_gnt;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:118:3
	// removed localparam type sv2v_uu_i_rr_arb_tree_flush_i
	localparam [0:0] sv2v_uu_i_rr_arb_tree_ext_flush_i_0 = 1'sb0;
	localparam [31:0] sv2v_uu_i_rr_arb_tree_NumIn = 2;
	localparam [31:0] sv2v_uu_i_rr_arb_tree_IdxWidth = $unsigned(1);
	// removed localparam type sv2v_uu_i_rr_arb_tree_idx_t
	// removed localparam type sv2v_uu_i_rr_arb_tree_rr_i
	localparam [sv2v_uu_i_rr_arb_tree_IdxWidth - 1:0] sv2v_uu_i_rr_arb_tree_ext_rr_i_0 = 1'sb0;
	localparam [31:0] sv2v_uu_i_rr_arb_tree_DataWidth = 1;
	// removed localparam type sv2v_uu_i_rr_arb_tree_DataType
	// removed localparam type sv2v_uu_i_rr_arb_tree_data_i
	localparam [(sv2v_uu_i_rr_arb_tree_NumIn * sv2v_uu_i_rr_arb_tree_DataWidth) - 1:0] sv2v_uu_i_rr_arb_tree_ext_data_i_0 = 1'sb0;
	rr_arb_tree #(
		.NumIn(2),
		.DataWidth(1),
		.AxiVldRdy(1'b1),
		.LockIn(1'b1)
	) i_rr_arb_tree(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(sv2v_uu_i_rr_arb_tree_ext_flush_i_0),
		.rr_i(sv2v_uu_i_rr_arb_tree_ext_rr_i_0),
		.req_i(arb_req),
		.gnt_o(arb_ack),
		.data_i(sv2v_uu_i_rr_arb_tree_ext_data_i_0),
		.gnt_i(arb_gnt),
		.req_o(),
		.data_o(),
		.idx_o(arb_idx)
	);
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:138:3
	// removed localparam type ariane_pkg_amo_t
	localparam axi_pkg_ATOP_ADD = 3'b000;
	localparam axi_pkg_ATOP_ATOMICLOAD = 2'b10;
	localparam axi_pkg_ATOP_ATOMICSWAP = 6'b110000;
	localparam axi_pkg_ATOP_CLR = 3'b001;
	localparam axi_pkg_ATOP_EOR = 3'b010;
	localparam axi_pkg_ATOP_LITTLE_END = 1'b0;
	localparam axi_pkg_ATOP_SET = 3'b011;
	localparam axi_pkg_ATOP_SMAX = 3'b100;
	localparam axi_pkg_ATOP_SMIN = 3'b101;
	localparam axi_pkg_ATOP_UMAX = 3'b110;
	localparam axi_pkg_ATOP_UMIN = 3'b111;
	// removed localparam type wt_cache_pkg_dcache_out_t
	always @(*) begin : p_axi_req
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:140:5
		axi_wr_id_in = {{CVA6Cfg[16680-:32] - 1 {1'b0}}, arb_idx};
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:141:5
		axi_wr_data[0+:CVA6Cfg[16712-:32]] = {CVA6Cfg[16712-:32] / CVA6Cfg[17102-:32] {dcache_data[dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))-:((dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))) >= (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))) ? ((dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))) - (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)))) + 1 : ((dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))) - (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) + 1)]}};
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:142:5
		axi_wr_user[0+:CVA6Cfg[16648-:32]] = dcache_data[dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))-:((dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))) >= (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)) ? ((dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))) - (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))) + 1 : ((1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)) - (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))) + 1)];
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:144:5
		axi_wr_addr = {{CVA6Cfg[16744-:32] - CVA6Cfg[17038-:32] {1'b0}}, dcache_data[dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))-:((dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) >= (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)))) ? ((dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))))) + 1 : ((dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)))) - (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) + 1)]};
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:145:5
		axi_wr_size = dcache_data[3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))-:((3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) ? ((3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) + 1 : ((dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) - (3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1)];
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:146:5
		axi_wr_req = 1'b0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:147:5
		axi_wr_blen = 1'sb0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:148:5
		axi_wr_be = 1'sb0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:149:5
		axi_wr_lock = 1'sb0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:150:5
		axi_wr_atop = 1'sb0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:151:5
		amo_off_d = amo_off_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:152:5
		amo_gen_r_d = amo_gen_r_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:155:5
		axi_rd_id_in = {{CVA6Cfg[16680-:32] - 1 {1'b0}}, arb_idx};
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:156:5
		axi_rd_req = 1'b0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:157:5
		axi_rd_lock = 1'sb0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:158:5
		axi_rd_blen = 1'sb0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:160:5
		if (dcache_data[(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_CVA6Cfg[17038-:32] - 3)] == 1'b0)
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:161:7
			axi_wr_user = {{64 - CVA6Cfg[16648-:32] {1'b0}}, dcache_data[dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))-:((dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))) >= (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)) ? ((dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))) - (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))) + 1 : ((1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)) - (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))) + 1)]};
		else
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:163:7
			axi_wr_user = {dcache_data[dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))-:((dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))) >= (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)) ? ((dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))) - (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))) + 1 : ((1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)) - (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))) + 1)], {64 - CVA6Cfg[16648-:32] {1'b0}}};
		if (arb_idx) begin
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:169:7
			axi_rd_addr = {{CVA6Cfg[16744-:32] - CVA6Cfg[17038-:32] {1'b0}}, dcache_data[dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))-:((dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) >= (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)))) ? ((dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))))) + 1 : ((dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)))) - (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) + 1)]};
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:171:7
			axi_rd_size = (dcache_data[3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))] ? MaxNumWords[2:0] : dcache_data[3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))-:((3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) ? ((3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) + 1 : ((dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) - (3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1)]);
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:172:7
			if (dcache_data[3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))])
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:173:9
				axi_rd_blen = AxiRdBlenDcache[$clog2(AxiNumWords) - 1:0];
		end
		else begin
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:177:7
			axi_rd_addr = {{CVA6Cfg[16744-:32] - CVA6Cfg[17038-:32] {1'b0}}, icache_data[icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)-:((icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) >= (1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) ? ((icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) - (1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) + 1 : ((1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) - (icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) + 1)]};
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:178:7
			axi_rd_size = MaxNumWords[2:0];
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:179:7
			if (!icache_data[icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0])
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:180:9
				axi_rd_blen = AxiRdBlenIcache[$clog2(AxiNumWords) - 1:0];
		end
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:186:5
		invalidate = 1'b0;
		if (|arb_req) begin
			begin
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:190:7
				if (arb_idx == 0)
					// Trace: core/cache_subsystem/wt_axi_adapter.sv:193:9
					axi_rd_req = 1'b1;
				else
					// Trace: core/cache_subsystem/wt_axi_adapter.sv:196:9
					(* full_case, parallel_case *)
					case (dcache_data[5 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))-:((5 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) ? ((5 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)))))))) + 1 : ((3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) - (5 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1)])
						2'd1:
							// Trace: core/cache_subsystem/wt_axi_adapter.sv:199:13
							axi_rd_req = 1'b1;
						2'd0: begin
							// Trace: core/cache_subsystem/wt_axi_adapter.sv:203:13
							axi_wr_req = 1'b1;
							// Trace: core/cache_subsystem/wt_axi_adapter.sv:204:13
							axi_wr_be = 1'sb0;
							// Trace: core/cache_subsystem/wt_axi_adapter.sv:205:13
							(* full_case, parallel_case *)
							case (dcache_data[(3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - 1:(3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - 2])
								2'b00:
									// Trace: core/cache_subsystem/wt_axi_adapter.sv:207:15
									axi_wr_be[0 + dcache_data[(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - ((dcache_req_t_CVA6Cfg[17038-:32] - 1) - ($clog2(CVA6Cfg[16712-:32] / 8) - 1)):(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_CVA6Cfg[17038-:32] - 1)]] = 1'sb1;
								2'b01:
									// Trace: core/cache_subsystem/wt_axi_adapter.sv:209:15
									axi_wr_be[0 + dcache_data[(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - ((dcache_req_t_CVA6Cfg[17038-:32] - 1) - ($clog2(CVA6Cfg[16712-:32] / 8) - 1)):(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_CVA6Cfg[17038-:32] - 1)]+:2] = 1'sb1;
								2'b10:
									// Trace: core/cache_subsystem/wt_axi_adapter.sv:211:15
									axi_wr_be[0 + dcache_data[(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - ((dcache_req_t_CVA6Cfg[17038-:32] - 1) - ($clog2(CVA6Cfg[16712-:32] / 8) - 1)):(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_CVA6Cfg[17038-:32] - 1)]+:4] = 1'sb1;
								default:
									if (CVA6Cfg[16973])
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:214:17
										axi_wr_be[0 + dcache_data[(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - ((dcache_req_t_CVA6Cfg[17038-:32] - 1) - ($clog2(CVA6Cfg[16712-:32] / 8) - 1)):(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_CVA6Cfg[17038-:32] - 1)]+:8] = 1'sb1;
							endcase
						end
						2'd2:
							// Trace: core/cache_subsystem/wt_axi_adapter.sv:221:13
							if (CVA6Cfg[16547]) begin
								// Trace: core/cache_subsystem/wt_axi_adapter.sv:227:15
								invalidate = arb_gnt;
								// Trace: core/cache_subsystem/wt_axi_adapter.sv:228:15
								axi_wr_req = 1'b1;
								// Trace: core/cache_subsystem/wt_axi_adapter.sv:229:15
								axi_wr_be = 1'sb0;
								// Trace: core/cache_subsystem/wt_axi_adapter.sv:230:15
								(* full_case, parallel_case *)
								case (dcache_data[(3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - 1:(3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - 2])
									2'b00:
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:232:17
										axi_wr_be[0 + dcache_data[(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - ((dcache_req_t_CVA6Cfg[17038-:32] - 1) - ($clog2(CVA6Cfg[16712-:32] / 8) - 1)):(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_CVA6Cfg[17038-:32] - 1)]] = 1'sb1;
									2'b01:
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:234:17
										axi_wr_be[0 + dcache_data[(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - ((dcache_req_t_CVA6Cfg[17038-:32] - 1) - ($clog2(CVA6Cfg[16712-:32] / 8) - 1)):(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_CVA6Cfg[17038-:32] - 1)]+:2] = 1'sb1;
									2'b10:
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:237:17
										axi_wr_be[0 + dcache_data[(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - ((dcache_req_t_CVA6Cfg[17038-:32] - 1) - ($clog2(CVA6Cfg[16712-:32] / 8) - 1)):(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_CVA6Cfg[17038-:32] - 1)]+:4] = 1'sb1;
									default:
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:240:17
										axi_wr_be[0 + dcache_data[(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - ((dcache_req_t_CVA6Cfg[17038-:32] - 1) - ($clog2(CVA6Cfg[16712-:32] / 8) - 1)):(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_CVA6Cfg[17038-:32] - 1)]+:8] = 1'sb1;
								endcase
								// Trace: core/cache_subsystem/wt_axi_adapter.sv:243:15
								amo_gen_r_d = 1'b1;
								// Trace: core/cache_subsystem/wt_axi_adapter.sv:245:15
								axi_wr_id_in[1] = 1'b1;
								(* full_case, parallel_case *)
								case (dcache_data[3-:4])
									4'b0001: begin
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:249:19
										axi_rd_lock = 1'b1;
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:250:19
										axi_rd_req = 1'b1;
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:251:19
										axi_rd_id_in[1] = 1'b1;
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:253:19
										axi_wr_req = 1'b0;
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:254:19
										axi_wr_be = 1'sb0;
									end
									4'b0010: begin
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:257:19
										axi_wr_lock = 1'b1;
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:258:19
										amo_gen_r_d = 1'b0;
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:261:19
										amo_off_d = dcache_data[(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - ((dcache_req_t_CVA6Cfg[17038-:32] - 1) - ($clog2(CVA6Cfg[16712-:32] / 8) - 1)):(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_CVA6Cfg[17038-:32] - 1)] & ~((1 << dcache_data[(3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - 1:(3 + (dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - 2]) - 1);
									end
									4'b0011:
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:265:27
										axi_wr_atop = axi_pkg_ATOP_ATOMICSWAP;
									4'b0100:
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:267:17
										axi_wr_atop = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_ADD};
									4'b0101: begin
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:272:19
										axi_wr_data[0+:CVA6Cfg[16712-:32]] = ~{CVA6Cfg[16712-:32] / CVA6Cfg[17102-:32] {dcache_data[dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))-:((dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))) >= (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))) ? ((dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))) - (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)))) + 1 : ((dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))) - (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) + 1)]}};
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:273:19
										axi_wr_user = ~{CVA6Cfg[16712-:32] / CVA6Cfg[17102-:32] {dcache_data[dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))-:((dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))) >= (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)) ? ((dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))) - (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4))) + 1 : ((1 + (dcache_req_t_CVA6Cfg[16616-:32] + 4)) - (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3)))) + 1)]}};
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:274:19
										axi_wr_atop = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_CLR};
									end
									4'b0110:
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:279:17
										axi_wr_atop = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_SET};
									4'b0111:
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:283:17
										axi_wr_atop = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_EOR};
									4'b1000:
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:287:17
										axi_wr_atop = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_SMAX};
									4'b1001:
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:291:17
										axi_wr_atop = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_UMAX};
									4'b1010:
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:295:17
										axi_wr_atop = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_SMIN};
									4'b1011:
										// Trace: core/cache_subsystem/wt_axi_adapter.sv:299:17
										axi_wr_atop = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_UMIN};
									default:
										;
								endcase
							end
						default:
							;
					endcase
			end
		end
	end
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:313:3
	cva6_fifo_v3_DF882_44265 #(
		.dtype_icache_req_t_icache_req_t_CVA6Cfg(icache_req_t_icache_req_t_CVA6Cfg),
		.DEPTH(ReqFifoDepth),
		.FPGA_EN(CVA6Cfg[16876])
	) i_icache_data_fifo(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.testmode_i(1'b0),
		.full_o(icache_data_full),
		.empty_o(icache_data_empty),
		.usage_o(),
		.data_i(icache_data_i),
		.push_i(icache_data_ack_o),
		.data_o(icache_data),
		.pop_i(arb_ack[0])
	);
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:331:3
	cva6_fifo_v3_E0FAF_21007 #(
		.dtype_dcache_req_t_CVA6Cfg(dcache_req_t_CVA6Cfg),
		.DEPTH(ReqFifoDepth),
		.FPGA_EN(CVA6Cfg[16876])
	) i_dcache_data_fifo(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.testmode_i(1'b0),
		.full_o(dcache_data_full),
		.empty_o(dcache_data_empty),
		.usage_o(),
		.data_i(dcache_data_i),
		.push_i(dcache_data_ack_o),
		.data_o(dcache_data),
		.pop_i(arb_ack[1])
	);
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:353:3
	reg icache_rtrn_rd_en;
	reg dcache_rtrn_rd_en;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:354:3
	reg icache_rtrn_vld_d;
	reg icache_rtrn_vld_q;
	reg dcache_rtrn_vld_d;
	reg dcache_rtrn_vld_q;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:356:3
	cva6_fifo_v3 #(
		.DATA_WIDTH(CVA6Cfg[16616-:32]),
		.DEPTH(MetaFifoDepth),
		.FPGA_EN(CVA6Cfg[16876])
	) i_rd_icache_id(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.testmode_i(1'b0),
		.full_o(icache_rd_full),
		.empty_o(icache_rd_empty),
		.usage_o(),
		.data_i(icache_data[icache_req_t_icache_req_t_CVA6Cfg[16616-:32] - 1-:icache_req_t_icache_req_t_CVA6Cfg[16616-:32]]),
		.push_i(arb_ack[0] & axi_rd_gnt),
		.data_o(icache_rtrn_tid_d),
		.pop_i(icache_rtrn_vld_d)
	);
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:374:3
	cva6_fifo_v3 #(
		.DATA_WIDTH(CVA6Cfg[16616-:32]),
		.DEPTH(MetaFifoDepth),
		.FPGA_EN(CVA6Cfg[16876])
	) i_rd_dcache_id(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.testmode_i(1'b0),
		.full_o(dcache_rd_full),
		.empty_o(dcache_rd_empty),
		.usage_o(),
		.data_i(dcache_data[dcache_req_t_CVA6Cfg[16616-:32] + 3-:((dcache_req_t_CVA6Cfg[16616-:32] + 3) >= 4 ? dcache_req_t_CVA6Cfg[16616-:32] + 0 : 5 - (dcache_req_t_CVA6Cfg[16616-:32] + 3))]),
		.push_i(arb_ack[1] & axi_rd_gnt),
		.data_o(dcache_rtrn_rd_tid),
		.pop_i(dcache_rd_pop)
	);
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:392:3
	cva6_fifo_v3 #(
		.DATA_WIDTH(CVA6Cfg[16616-:32]),
		.DEPTH(MetaFifoDepth),
		.FPGA_EN(CVA6Cfg[16876])
	) i_wr_dcache_id(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.testmode_i(1'b0),
		.full_o(dcache_wr_full),
		.empty_o(dcache_wr_empty),
		.usage_o(),
		.data_i(dcache_data[dcache_req_t_CVA6Cfg[16616-:32] + 3-:((dcache_req_t_CVA6Cfg[16616-:32] + 3) >= 4 ? dcache_req_t_CVA6Cfg[16616-:32] + 0 : 5 - (dcache_req_t_CVA6Cfg[16616-:32] + 3))]),
		.push_i(arb_ack[1] & axi_wr_gnt),
		.data_o(dcache_rtrn_wr_tid),
		.pop_i(dcache_wr_pop)
	);
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:411:3
	assign dcache_rtrn_tid_d = (dcache_wr_pop ? dcache_rtrn_wr_tid : dcache_rtrn_rd_tid);
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:418:3
	wire b_full;
	wire b_empty;
	wire b_push;
	reg b_pop;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:419:3
	assign axi_wr_rdy = ~b_full;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:420:3
	assign b_push = axi_wr_valid & axi_wr_rdy;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:422:3
	cva6_fifo_v3 #(
		.DATA_WIDTH(CVA6Cfg[16680-:32] + 1),
		.DEPTH(MetaFifoDepth),
		.FALL_THROUGH(1'b1),
		.FPGA_EN(CVA6Cfg[16876])
	) i_b_fifo(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.testmode_i(1'b0),
		.full_o(b_full),
		.empty_o(b_empty),
		.usage_o(),
		.data_i({axi_wr_exokay, axi_wr_id_out}),
		.push_i(b_push),
		.data_o({wr_exokay, wr_id_out}),
		.pop_i(b_pop)
	);
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:442:3
	reg icache_first_d;
	reg icache_first_q;
	reg dcache_first_d;
	reg dcache_first_q;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:443:3
	reg [((CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32]) * CVA6Cfg[16648-:32]) - 1:0] icache_rd_shift_user_d;
	reg [((CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32]) * CVA6Cfg[16648-:32]) - 1:0] icache_rd_shift_user_q;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:445:3
	reg [((CVA6Cfg[932-:32] / CVA6Cfg[16648-:32]) * CVA6Cfg[16648-:32]) - 1:0] dcache_rd_shift_user_d;
	reg [((CVA6Cfg[932-:32] / CVA6Cfg[16648-:32]) * CVA6Cfg[16648-:32]) - 1:0] dcache_rd_shift_user_q;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:447:3
	reg [((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) * CVA6Cfg[16712-:32]) - 1:0] icache_rd_shift_d;
	reg [((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) * CVA6Cfg[16712-:32]) - 1:0] icache_rd_shift_q;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:449:3
	reg [((CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) * CVA6Cfg[16712-:32]) - 1:0] dcache_rd_shift_d;
	reg [((CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) * CVA6Cfg[16712-:32]) - 1:0] dcache_rd_shift_q;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:451:3
	// removed localparam type wt_cache_pkg_dcache_in_t
	reg [2:0] dcache_rtrn_type_d;
	reg [2:0] dcache_rtrn_type_q;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:452:3
	reg [((2 + dcache_inval_t_CVA6Cfg[1028-:32]) + dcache_inval_t_CVA6Cfg[1060-:32]) - 1:0] dcache_rtrn_inv_d;
	reg [((2 + dcache_inval_t_CVA6Cfg[1028-:32]) + dcache_inval_t_CVA6Cfg[1060-:32]) - 1:0] dcache_rtrn_inv_q;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:453:3
	reg dcache_sc_rtrn;
	wire axi_rd_last;
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:455:3
	// removed localparam type wt_cache_pkg_icache_in_t
	always @(*) begin : p_axi_rtrn_shift
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:457:5
		icache_rtrn_o = 1'sb0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:458:5
		icache_rtrn_o[1 + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))))] = 1'd1;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:459:5
		icache_rtrn_o[icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1-:icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32]] = icache_rtrn_tid_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:460:5
		icache_rtrn_o[icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))-:((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) >= (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0))) ? ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0)))) + 1 : ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0))) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))))) + 1)] = icache_rd_shift_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:461:5
		icache_rtrn_o[icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))-:((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))) >= (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0)) ? ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))) - (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0))) + 1 : ((((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0)) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) + 1)] = icache_rd_shift_user_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:462:5
		icache_rtrn_vld_o = icache_rtrn_vld_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:464:5
		dcache_rtrn_o = 1'sb0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:465:5
		dcache_rtrn_o[3 + (dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))))-:((3 + (dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))))) >= (dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] + 0)))) ? ((3 + (dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))))) - (dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] + 0))))) + 1 : ((dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] + 0)))) - (3 + (dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)))))) + 1)] = dcache_rtrn_type_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:466:5
		dcache_rtrn_o[((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)-:((((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)) >= (dcache_rtrn_t_CVA6Cfg[16616-:32] + 0) ? ((((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - (dcache_rtrn_t_CVA6Cfg[16616-:32] + 0)) + 1 : ((dcache_rtrn_t_CVA6Cfg[16616-:32] + 0) - (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))) + 1)] = dcache_rtrn_inv_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:467:5
		dcache_rtrn_o[dcache_rtrn_t_CVA6Cfg[16616-:32] - 1-:dcache_rtrn_t_CVA6Cfg[16616-:32]] = dcache_rtrn_tid_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:468:5
		dcache_rtrn_o[dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)))-:((dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) >= (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] + 0))) ? ((dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) - (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] + 0)))) + 1 : ((dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] + 0))) - (dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))))) + 1)] = dcache_rd_shift_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:469:5
		dcache_rtrn_o[dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))-:((dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))) >= (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] + 0)) ? ((dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))) - (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] + 0))) + 1 : ((((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] + 0)) - (dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) + 1)] = dcache_rd_shift_user_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:470:5
		dcache_rtrn_vld_o = dcache_rtrn_vld_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:473:5
		icache_rd_shift_d = icache_rd_shift_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:474:5
		icache_rd_shift_user_d = icache_rd_shift_user_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:475:5
		dcache_rd_shift_d = dcache_rd_shift_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:476:5
		dcache_rd_shift_user_d = dcache_rd_shift_user_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:477:5
		icache_first_d = icache_first_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:478:5
		dcache_first_d = dcache_first_q;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:480:5
		if (icache_rtrn_rd_en) begin
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:481:7
			icache_first_d = axi_rd_last;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:482:7
			if (CVA6Cfg[1190-:32] == CVA6Cfg[16712-:32])
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:483:9
				icache_rd_shift_d[0+:CVA6Cfg[16712-:32]] = axi_rd_data;
			else
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:485:9
				icache_rd_shift_d = {axi_rd_data, icache_rd_shift_q[CVA6Cfg[16712-:32] * ((((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1) >= 1 ? (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1 : (((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1) + (((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1) >= 1 ? (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1 : 3 - (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]))) - 1) - ((((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1) >= 1 ? (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1 : 3 - (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32])) - 1))+:CVA6Cfg[16712-:32] * (((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1) >= 1 ? (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1 : 3 - (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]))]};
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:489:7
			icache_rd_shift_user_d = {axi_rd_user, icache_rd_shift_user_q[CVA6Cfg[16648-:32] * ((((CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32]) - 1) >= 1 ? (CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32]) - 1 : (((CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32]) - 1) + (((CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32]) - 1) >= 1 ? (CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32]) - 1 : 3 - (CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32]))) - 1) - ((((CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32]) - 1) >= 1 ? (CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32]) - 1 : 3 - (CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32])) - 1))+:CVA6Cfg[16648-:32] * (((CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32]) - 1) >= 1 ? (CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32]) - 1 : 3 - (CVA6Cfg[1158-:32] / CVA6Cfg[16648-:32]))]};
			if (icache_first_q) begin
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:494:9
				icache_rd_shift_d[0+:CVA6Cfg[16712-:32]] = axi_rd_data;
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:495:9
				icache_rd_shift_user_d[0+:CVA6Cfg[16648-:32]] = axi_rd_user;
			end
		end
		if (dcache_rtrn_rd_en) begin
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:500:7
			dcache_first_d = axi_rd_last;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:501:7
			if (CVA6Cfg[964-:32] == CVA6Cfg[16712-:32])
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:502:9
				dcache_rd_shift_d[0+:CVA6Cfg[16712-:32]] = axi_rd_data;
			else
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:504:9
				dcache_rd_shift_d = {axi_rd_data, dcache_rd_shift_q[CVA6Cfg[16712-:32] * ((((CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) - 1) >= 1 ? (CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) - 1 : (((CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) - 1) + (((CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) - 1) >= 1 ? (CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) - 1 : 3 - (CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]))) - 1) - ((((CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) - 1) >= 1 ? (CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) - 1 : 3 - (CVA6Cfg[964-:32] / CVA6Cfg[16712-:32])) - 1))+:CVA6Cfg[16712-:32] * (((CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) - 1) >= 1 ? (CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) - 1 : 3 - (CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]))]};
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:508:7
			dcache_rd_shift_user_d = {axi_rd_user, dcache_rd_shift_user_q[CVA6Cfg[16648-:32] * ((((CVA6Cfg[932-:32] / CVA6Cfg[16648-:32]) - 1) >= 1 ? (CVA6Cfg[932-:32] / CVA6Cfg[16648-:32]) - 1 : (((CVA6Cfg[932-:32] / CVA6Cfg[16648-:32]) - 1) + (((CVA6Cfg[932-:32] / CVA6Cfg[16648-:32]) - 1) >= 1 ? (CVA6Cfg[932-:32] / CVA6Cfg[16648-:32]) - 1 : 3 - (CVA6Cfg[932-:32] / CVA6Cfg[16648-:32]))) - 1) - ((((CVA6Cfg[932-:32] / CVA6Cfg[16648-:32]) - 1) >= 1 ? (CVA6Cfg[932-:32] / CVA6Cfg[16648-:32]) - 1 : 3 - (CVA6Cfg[932-:32] / CVA6Cfg[16648-:32])) - 1))+:CVA6Cfg[16648-:32] * (((CVA6Cfg[932-:32] / CVA6Cfg[16648-:32]) - 1) >= 1 ? (CVA6Cfg[932-:32] / CVA6Cfg[16648-:32]) - 1 : 3 - (CVA6Cfg[932-:32] / CVA6Cfg[16648-:32]))]};
			if (dcache_first_q) begin
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:513:9
				dcache_rd_shift_d[0+:CVA6Cfg[16712-:32]] = axi_rd_data;
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:514:9
				dcache_rd_shift_user_d[0+:CVA6Cfg[16648-:32]] = axi_rd_user;
			end
		end
		else if (CVA6Cfg[16547] && dcache_sc_rtrn) begin
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:518:7
			dcache_rd_shift_d[0+:CVA6Cfg[16712-:32]] = 1'sb0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:519:7
			dcache_rd_shift_user_d[0+:CVA6Cfg[16648-:32]] = 1'sb0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:520:7
			dcache_rd_shift_d[0 + (amo_off_q * 8)] = (wr_exokay ? 1'b0 : 1'b1);
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:521:7
			dcache_rd_shift_user_d[0 + (amo_off_q * 8)] = (wr_exokay ? 1'b0 : 1'b1);
		end
	end
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:526:3
	always @(*) begin : p_axi_rtrn_decode
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:529:5
		axi_rd_rdy = ~invalidate;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:531:5
		icache_rtrn_rd_en = 1'b0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:532:5
		icache_rtrn_vld_d = 1'b0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:536:5
		if ((axi_rd_valid && (axi_rd_id_out == 0)) && axi_rd_rdy) begin
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:537:7
			icache_rtrn_rd_en = 1'b1;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:538:7
			icache_rtrn_vld_d = axi_rd_last;
		end
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:541:5
		dcache_rtrn_rd_en = 1'b0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:542:5
		dcache_rtrn_vld_d = 1'b0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:543:5
		dcache_rd_pop = 1'b0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:544:5
		dcache_wr_pop = 1'b0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:545:5
		dcache_rtrn_inv_d = 1'sb0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:546:5
		dcache_rtrn_type_d = 3'd2;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:547:5
		b_pop = 1'b0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:548:5
		dcache_sc_rtrn = 1'b0;
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:552:5
		inval_ready_o = 1'b0;
		if (inval_valid_i) begin
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:554:7
			inval_ready_o = 1'b1;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:555:7
			dcache_rtrn_type_d = 3'd0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:556:7
			dcache_rtrn_vld_d = 1'b1;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:557:7
			dcache_rtrn_inv_d[1 + (dcache_inval_t_CVA6Cfg[1028-:32] + (dcache_inval_t_CVA6Cfg[1060-:32] - 1))] = 1'b1;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:558:7
			dcache_rtrn_inv_d[dcache_inval_t_CVA6Cfg[1028-:32] + (dcache_inval_t_CVA6Cfg[1060-:32] - 1)-:((dcache_inval_t_CVA6Cfg[1028-:32] + (dcache_inval_t_CVA6Cfg[1060-:32] - 1)) >= (dcache_inval_t_CVA6Cfg[1060-:32] + 0) ? ((dcache_inval_t_CVA6Cfg[1028-:32] + (dcache_inval_t_CVA6Cfg[1060-:32] - 1)) - (dcache_inval_t_CVA6Cfg[1060-:32] + 0)) + 1 : ((dcache_inval_t_CVA6Cfg[1060-:32] + 0) - (dcache_inval_t_CVA6Cfg[1028-:32] + (dcache_inval_t_CVA6Cfg[1060-:32] - 1))) + 1)] = inval_addr_i[CVA6Cfg[1028-:32] - 1:0];
		end
		else if (CVA6Cfg[16547] && invalidate) begin
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:568:7
			dcache_rtrn_type_d = 3'd0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:569:7
			dcache_rtrn_vld_d = 1'b1;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:571:7
			dcache_rtrn_inv_d[1 + (dcache_inval_t_CVA6Cfg[1028-:32] + (dcache_inval_t_CVA6Cfg[1060-:32] - 1))] = 1'b1;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:572:7
			dcache_rtrn_inv_d[dcache_inval_t_CVA6Cfg[1028-:32] + (dcache_inval_t_CVA6Cfg[1060-:32] - 1)-:((dcache_inval_t_CVA6Cfg[1028-:32] + (dcache_inval_t_CVA6Cfg[1060-:32] - 1)) >= (dcache_inval_t_CVA6Cfg[1060-:32] + 0) ? ((dcache_inval_t_CVA6Cfg[1028-:32] + (dcache_inval_t_CVA6Cfg[1060-:32] - 1)) - (dcache_inval_t_CVA6Cfg[1060-:32] + 0)) + 1 : ((dcache_inval_t_CVA6Cfg[1060-:32] + 0) - (dcache_inval_t_CVA6Cfg[1028-:32] + (dcache_inval_t_CVA6Cfg[1060-:32] - 1))) + 1)] = dcache_data[(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - ((dcache_req_t_CVA6Cfg[17038-:32] - 1) - (CVA6Cfg[1028-:32] - 1)):(dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_CVA6Cfg[17038-:32] - 1)];
		end
		else if ((axi_rd_valid && axi_rd_id_out[0]) && axi_rd_rdy) begin
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:578:7
			dcache_rtrn_rd_en = 1'b1;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:579:7
			dcache_rtrn_vld_d = axi_rd_last;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:582:7
			if (CVA6Cfg[16547] && axi_rd_id_out[1]) begin
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:583:9
				dcache_rtrn_type_d = 3'd3;
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:586:9
				if (!dcache_wr_empty)
					// Trace: core/cache_subsystem/wt_axi_adapter.sv:587:11
					dcache_wr_pop = axi_rd_last;
				else
					// Trace: core/cache_subsystem/wt_axi_adapter.sv:590:11
					dcache_rd_pop = axi_rd_last;
			end
			else
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:593:9
				dcache_rd_pop = axi_rd_last;
		end
		else if (!b_empty) begin
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:598:7
			b_pop = 1'b1;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:601:7
			if (CVA6Cfg[16547] && wr_id_out[1]) begin
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:602:9
				dcache_rtrn_type_d = 3'd3;
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:606:9
				if (!amo_gen_r_q) begin
					// Trace: core/cache_subsystem/wt_axi_adapter.sv:607:11
					dcache_rtrn_vld_d = 1'b1;
					// Trace: core/cache_subsystem/wt_axi_adapter.sv:608:11
					dcache_wr_pop = 1'b1;
					// Trace: core/cache_subsystem/wt_axi_adapter.sv:609:11
					dcache_sc_rtrn = 1'b1;
				end
			end
			else begin
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:613:9
				dcache_rtrn_type_d = 3'd1;
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:614:9
				dcache_rtrn_vld_d = 1'b1;
				// Trace: core/cache_subsystem/wt_axi_adapter.sv:615:9
				dcache_wr_pop = 1'b1;
			end
		end
	end
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:633:3
	always @(posedge clk_i or negedge rst_ni) begin : p_rd_buf
		// Trace: core/cache_subsystem/wt_axi_adapter.sv:634:5
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:635:7
			icache_first_q <= 1'b1;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:636:7
			dcache_first_q <= 1'b1;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:637:7
			icache_rd_shift_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:638:7
			icache_rd_shift_user_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:639:7
			dcache_rd_shift_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:640:7
			dcache_rd_shift_user_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:641:7
			icache_rtrn_vld_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:642:7
			dcache_rtrn_vld_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:643:7
			icache_rtrn_tid_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:644:7
			dcache_rtrn_tid_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:645:7
			dcache_rtrn_type_q <= 3'd2;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:646:7
			dcache_rtrn_inv_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:647:7
			amo_off_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:648:7
			amo_gen_r_q <= 1'b0;
		end
		else begin
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:650:7
			icache_first_q <= icache_first_d;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:651:7
			dcache_first_q <= dcache_first_d;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:652:7
			icache_rd_shift_q <= icache_rd_shift_d;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:653:7
			icache_rd_shift_user_q <= icache_rd_shift_user_d;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:654:7
			dcache_rd_shift_q <= dcache_rd_shift_d;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:655:7
			dcache_rd_shift_user_q <= dcache_rd_shift_user_d;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:656:7
			icache_rtrn_vld_q <= icache_rtrn_vld_d;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:657:7
			dcache_rtrn_vld_q <= dcache_rtrn_vld_d;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:658:7
			icache_rtrn_tid_q <= icache_rtrn_tid_d;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:659:7
			dcache_rtrn_tid_q <= dcache_rtrn_tid_d;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:660:7
			dcache_rtrn_type_q <= dcache_rtrn_type_d;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:661:7
			dcache_rtrn_inv_q <= dcache_rtrn_inv_d;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:662:7
			amo_off_q <= amo_off_d;
			// Trace: core/cache_subsystem/wt_axi_adapter.sv:663:7
			amo_gen_r_q <= amo_gen_r_d;
		end
	end
	// Trace: core/cache_subsystem/wt_axi_adapter.sv:672:3
	axi_shim_39C3B_8A88A #(
		.axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth(axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth),
		.axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth(axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth),
		.axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth(axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth),
		.axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth(axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth),
		.axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth(axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth),
		.axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth(axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth),
		.axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth(axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth),
		.axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth(axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth),
		.CVA6Cfg(CVA6Cfg),
		.AxiNumWords(AxiNumWords)
	) i_axi_shim(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.rd_req_i(axi_rd_req),
		.rd_gnt_o(axi_rd_gnt),
		.rd_addr_i(axi_rd_addr),
		.rd_blen_i(axi_rd_blen),
		.rd_size_i(axi_rd_size),
		.rd_id_i(axi_rd_id_in),
		.rd_rdy_i(axi_rd_rdy),
		.rd_lock_i(axi_rd_lock),
		.rd_last_o(axi_rd_last),
		.rd_valid_o(axi_rd_valid),
		.rd_data_o(axi_rd_data),
		.rd_user_o(axi_rd_user),
		.rd_id_o(axi_rd_id_out),
		.rd_exokay_o(axi_rd_exokay),
		.wr_req_i(axi_wr_req),
		.wr_gnt_o(axi_wr_gnt),
		.wr_addr_i(axi_wr_addr),
		.wr_data_i(axi_wr_data),
		.wr_user_i(axi_wr_user),
		.wr_be_i(axi_wr_be),
		.wr_blen_i(axi_wr_blen),
		.wr_size_i(axi_wr_size),
		.wr_id_i(axi_wr_id_in),
		.wr_lock_i(axi_wr_lock),
		.wr_atop_i(axi_wr_atop),
		.wr_rdy_i(axi_wr_rdy),
		.wr_valid_o(axi_wr_valid),
		.wr_id_o(axi_wr_id_out),
		.wr_exokay_o(axi_wr_exokay),
		.axi_req_o(axi_req_o),
		.axi_resp_i(axi_resp_i)
	);
	initial _sv2v_0 = 0;
endmodule
