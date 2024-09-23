module axi_shim_39C3B_8A88A (
	clk_i,
	rst_ni,
	rd_req_i,
	rd_gnt_o,
	rd_addr_i,
	rd_blen_i,
	rd_size_i,
	rd_id_i,
	rd_lock_i,
	rd_rdy_i,
	rd_last_o,
	rd_valid_o,
	rd_data_o,
	rd_user_o,
	rd_id_o,
	rd_exokay_o,
	wr_req_i,
	wr_gnt_o,
	wr_addr_i,
	wr_data_i,
	wr_user_i,
	wr_be_i,
	wr_blen_i,
	wr_size_i,
	wr_id_i,
	wr_lock_i,
	wr_atop_i,
	wr_rdy_i,
	wr_valid_o,
	wr_id_o,
	wr_exokay_o,
	axi_req_o,
	axi_resp_i
);
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth_type
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth_type
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth_type
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth_type
	// removed localparam type axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth_type
	// removed localparam type axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth = 0;
	reg _sv2v_0;
	// Trace: core/axi_shim.sv:23:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/axi_shim.sv:24:15
	parameter [31:0] AxiNumWords = 4;
	// Trace: core/axi_shim.sv:25:20
	// removed localparam type axi_req_t
	// Trace: core/axi_shim.sv:26:20
	// removed localparam type axi_rsp_t
	// Trace: core/axi_shim.sv:28:5
	input wire clk_i;
	// Trace: core/axi_shim.sv:29:5
	input wire rst_ni;
	// Trace: core/axi_shim.sv:32:5
	input wire rd_req_i;
	// Trace: core/axi_shim.sv:33:5
	output wire rd_gnt_o;
	// Trace: core/axi_shim.sv:34:5
	input wire [CVA6Cfg[16744-:32] - 1:0] rd_addr_i;
	// Trace: core/axi_shim.sv:35:5
	input wire [$clog2(AxiNumWords) - 1:0] rd_blen_i;
	// Trace: core/axi_shim.sv:36:5
	input wire [2:0] rd_size_i;
	// Trace: core/axi_shim.sv:37:5
	input wire [CVA6Cfg[16680-:32] - 1:0] rd_id_i;
	// Trace: core/axi_shim.sv:38:5
	input wire rd_lock_i;
	// Trace: core/axi_shim.sv:40:5
	input wire rd_rdy_i;
	// Trace: core/axi_shim.sv:41:5
	output wire rd_last_o;
	// Trace: core/axi_shim.sv:42:5
	output wire rd_valid_o;
	// Trace: core/axi_shim.sv:43:5
	output wire [CVA6Cfg[16712-:32] - 1:0] rd_data_o;
	// Trace: core/axi_shim.sv:44:5
	output wire [CVA6Cfg[16648-:32] - 1:0] rd_user_o;
	// Trace: core/axi_shim.sv:45:5
	output wire [CVA6Cfg[16680-:32] - 1:0] rd_id_o;
	// Trace: core/axi_shim.sv:46:5
	output wire rd_exokay_o;
	// Trace: core/axi_shim.sv:48:5
	input wire wr_req_i;
	// Trace: core/axi_shim.sv:49:5
	output reg wr_gnt_o;
	// Trace: core/axi_shim.sv:50:5
	input wire [CVA6Cfg[16744-:32] - 1:0] wr_addr_i;
	// Trace: core/axi_shim.sv:51:5
	input wire [(AxiNumWords * CVA6Cfg[16712-:32]) - 1:0] wr_data_i;
	// Trace: core/axi_shim.sv:52:5
	input wire [(AxiNumWords * CVA6Cfg[16648-:32]) - 1:0] wr_user_i;
	// Trace: core/axi_shim.sv:53:5
	input wire [(AxiNumWords * (CVA6Cfg[16712-:32] / 8)) - 1:0] wr_be_i;
	// Trace: core/axi_shim.sv:54:5
	input wire [$clog2(AxiNumWords) - 1:0] wr_blen_i;
	// Trace: core/axi_shim.sv:55:5
	input wire [2:0] wr_size_i;
	// Trace: core/axi_shim.sv:56:5
	input wire [CVA6Cfg[16680-:32] - 1:0] wr_id_i;
	// Trace: core/axi_shim.sv:57:5
	input wire wr_lock_i;
	// Trace: core/axi_shim.sv:58:5
	input wire [5:0] wr_atop_i;
	// Trace: core/axi_shim.sv:60:5
	input wire wr_rdy_i;
	// Trace: core/axi_shim.sv:61:5
	output wire wr_valid_o;
	// Trace: core/axi_shim.sv:62:5
	output wire [CVA6Cfg[16680-:32] - 1:0] wr_id_o;
	// Trace: core/axi_shim.sv:63:5
	output wire wr_exokay_o;
	// Trace: core/axi_shim.sv:65:5
	output reg [(((((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_req_o;
	// Trace: core/axi_shim.sv:66:5
	input wire [(((4 + ((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_resp_i;
	// Trace: core/axi_shim.sv:68:3
	localparam AddrIndex = ($clog2(AxiNumWords) > 0 ? $clog2(AxiNumWords) : 1);
	// Trace: core/axi_shim.sv:74:3
	reg [3:0] wr_state_q;
	reg [3:0] wr_state_d;
	// Trace: core/axi_shim.sv:84:3
	wire [AddrIndex - 1:0] wr_cnt_d;
	reg [AddrIndex - 1:0] wr_cnt_q;
	// Trace: core/axi_shim.sv:85:3
	wire wr_single_req;
	wire wr_cnt_done;
	reg wr_cnt_clr;
	reg wr_cnt_en;
	// Trace: core/axi_shim.sv:87:3
	assign wr_single_req = wr_blen_i == 0;
	// Trace: core/axi_shim.sv:90:3
	localparam axi_pkg_BURST_INCR = 2'b01;
	wire [((18 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (22 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((18 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (22 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((22 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (18 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1) * 1:1] sv2v_tmp_00F37;
	assign sv2v_tmp_00F37 = axi_pkg_BURST_INCR;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (18 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((18 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (22 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((18 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (22 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((22 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (18 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = sv2v_tmp_00F37;
	// Trace: core/axi_shim.sv:91:3
	wire [((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))) >= (35 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))) - (35 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((35 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) + 1) * 1:1] sv2v_tmp_45DA6;
	assign sv2v_tmp_45DA6 = wr_addr_i[CVA6Cfg[16744-:32] - 1:0];
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))))-:((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))) >= (35 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))) - (35 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((35 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) + 1)] = sv2v_tmp_45DA6;
	// Trace: core/axi_shim.sv:92:3
	wire [((17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9)) >= (24 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9)) - (24 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((24 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9))) + 1) * 1:1] sv2v_tmp_6B6D6;
	assign sv2v_tmp_6B6D6 = wr_size_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9)))-:((17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9)) >= (24 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9)) - (24 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((24 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9))) + 1)] = sv2v_tmp_6B6D6;
	// Trace: core/axi_shim.sv:93:3
	wire [((29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (27 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (27 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((27 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1) * 1:1] sv2v_tmp_26425;
	assign sv2v_tmp_26425 = wr_blen_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (27 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (27 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((27 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = sv2v_tmp_26425;
	// Trace: core/axi_shim.sv:94:3
	wire [((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) >= (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))))) + 1) * 1:1] sv2v_tmp_ADB30;
	assign sv2v_tmp_ADB30 = wr_id_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)))))-:((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) >= (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))))) + 1)] = sv2v_tmp_ADB30;
	// Trace: core/axi_shim.sv:95:3
	wire [((7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9)) >= (14 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9)) - (14 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((14 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9))) + 1) * 1:1] sv2v_tmp_8AC93;
	assign sv2v_tmp_8AC93 = 3'b000;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9)))-:((7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9)) >= (14 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9)) - (14 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((14 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9))) + 1)] = sv2v_tmp_8AC93;
	// Trace: core/axi_shim.sv:96:3
	wire [((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9) >= (6 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9) - (6 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((6 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9)) + 1) * 1:1] sv2v_tmp_79B39;
	assign sv2v_tmp_79B39 = 4'b0000;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9))-:((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9) >= (6 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9) - (6 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((6 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9)) + 1)] = sv2v_tmp_79B39;
	// Trace: core/axi_shim.sv:97:3
	wire [1:1] sv2v_tmp_10C4E;
	assign sv2v_tmp_10C4E = wr_lock_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (12 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 9)))] = sv2v_tmp_10C4E;
	// Trace: core/axi_shim.sv:98:3
	localparam axi_pkg_CACHE_MODIFIABLE = 4'b0010;
	wire [((15 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((15 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (15 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1) * 1:1] sv2v_tmp_E7C4D;
	assign sv2v_tmp_E7C4D = axi_pkg_CACHE_MODIFIABLE;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (15 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((15 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((15 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (15 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = sv2v_tmp_E7C4D;
	// Trace: core/axi_shim.sv:99:3
	wire [((8 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (10 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((8 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (10 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((10 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (8 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1) * 1:1] sv2v_tmp_BFCC3;
	assign sv2v_tmp_BFCC3 = 4'b0000;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (8 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((8 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (10 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((8 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (10 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((10 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (8 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = sv2v_tmp_BFCC3;
	// Trace: core/axi_shim.sv:100:3
	wire [((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5) >= (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) + 1 : ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) + 1) * 1:1] sv2v_tmp_A6632;
	assign sv2v_tmp_A6632 = wr_atop_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5))-:((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5) >= (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) + 1 : ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 5)) + 1)] = sv2v_tmp_A6632;
	// Trace: core/axi_shim.sv:101:3
	wire [axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth * 1:1] sv2v_tmp_41A36;
	assign sv2v_tmp_41A36 = 1'sb0;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth - 1))-:axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth] = sv2v_tmp_41A36;
	// Trace: core/axi_shim.sv:104:3
	wire [((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) >= (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1) * 1:1] sv2v_tmp_E2C24;
	assign sv2v_tmp_E2C24 = wr_data_i[wr_cnt_q * CVA6Cfg[16712-:32]+:CVA6Cfg[16712-:32]];
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))))-:((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) >= (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1)] = sv2v_tmp_E2C24;
	// Trace: core/axi_shim.sv:105:3
	wire [axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth * 1:1] sv2v_tmp_BE749;
	assign sv2v_tmp_BE749 = wr_user_i[wr_cnt_q * CVA6Cfg[16648-:32]+:CVA6Cfg[16648-:32]];
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth - 1))-:axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth] = sv2v_tmp_BE749;
	// Trace: core/axi_shim.sv:106:3
	wire [((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) >= (1 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (1 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((1 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1) * 1:1] sv2v_tmp_02936;
	assign sv2v_tmp_02936 = wr_be_i[wr_cnt_q * (CVA6Cfg[16712-:32] / 8)+:CVA6Cfg[16712-:32] / 8];
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)))-:((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) >= (1 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (1 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((1 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1)] = sv2v_tmp_02936;
	// Trace: core/axi_shim.sv:107:3
	wire [1:1] sv2v_tmp_2673E;
	assign sv2v_tmp_2673E = wr_cnt_done;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))] = sv2v_tmp_2673E;
	// Trace: core/axi_shim.sv:110:3
	localparam axi_pkg_RESP_EXOKAY = 2'b01;
	assign wr_exokay_o = axi_resp_i[(((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 1))-:((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 1) >= (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0) ? ((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 1) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0)) + 1 : ((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 1)) + 1)] == axi_pkg_RESP_EXOKAY;
	// Trace: core/axi_shim.sv:111:3
	wire [1:1] sv2v_tmp_39A7E;
	assign sv2v_tmp_39A7E = wr_rdy_i;
	always @(*) axi_req_o[1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = sv2v_tmp_39A7E;
	// Trace: core/axi_shim.sv:112:3
	assign wr_valid_o = axi_resp_i[1 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))];
	// Trace: core/axi_shim.sv:113:3
	assign wr_id_o = axi_resp_i[(((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 1)))-:((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 1)) >= (2 + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 1)) - (2 + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((2 + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 1))) + 1)];
	// Trace: core/axi_shim.sv:116:3
	assign wr_cnt_done = wr_cnt_q == wr_blen_i;
	// Trace: core/axi_shim.sv:117:3
	assign wr_cnt_d = (wr_cnt_clr ? {AddrIndex {1'sb0}} : (wr_cnt_en && CVA6Cfg[1319] ? wr_cnt_q + 1 : wr_cnt_q));
	// Trace: core/axi_shim.sv:119:3
	always @(*) begin : p_axi_write_fsm
		if (_sv2v_0)
			;
		// Trace: core/axi_shim.sv:121:5
		wr_state_d = wr_state_q;
		// Trace: core/axi_shim.sv:123:5
		axi_req_o[1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b0;
		// Trace: core/axi_shim.sv:124:5
		axi_req_o[2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b0;
		// Trace: core/axi_shim.sv:125:5
		wr_gnt_o = 1'b0;
		// Trace: core/axi_shim.sv:127:5
		wr_cnt_en = 1'b0;
		// Trace: core/axi_shim.sv:128:5
		wr_cnt_clr = 1'b0;
		// Trace: core/axi_shim.sv:130:5
		case (wr_state_q)
			4'd0:
				// Trace: core/axi_shim.sv:134:9
				if (wr_req_i) begin
					// Trace: core/axi_shim.sv:136:11
					axi_req_o[1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b1;
					// Trace: core/axi_shim.sv:137:11
					axi_req_o[2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b1;
					// Trace: core/axi_shim.sv:139:11
					if (CVA6Cfg[1319] && !wr_single_req) begin
						// Trace: core/axi_shim.sv:140:13
						wr_cnt_en = axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))];
						// Trace: core/axi_shim.sv:142:13
						case ({axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]})
							2'b11:
								// Trace: core/axi_shim.sv:145:24
								wr_state_d = 4'd2;
							2'b01:
								// Trace: core/axi_shim.sv:146:24
								wr_state_d = 4'd3;
							2'b10:
								// Trace: core/axi_shim.sv:147:24
								wr_state_d = 4'd2;
							default:
								;
						endcase
					end
					else if (wr_single_req) begin
						// Trace: core/axi_shim.sv:151:13
						wr_cnt_clr = 1'b1;
						// Trace: core/axi_shim.sv:153:13
						wr_gnt_o = axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))] & axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))];
						// Trace: core/axi_shim.sv:154:13
						case ({axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]})
							2'b01:
								// Trace: core/axi_shim.sv:157:24
								wr_state_d = 4'd1;
							2'b10:
								// Trace: core/axi_shim.sv:158:24
								wr_state_d = 4'd2;
							default:
								// Trace: core/axi_shim.sv:159:24
								wr_state_d = 4'd0;
						endcase
					end
				end
			4'd1: begin
				// Trace: core/axi_shim.sv:168:9
				axi_req_o[1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b1;
				// Trace: core/axi_shim.sv:170:9
				if (axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) begin
					// Trace: core/axi_shim.sv:171:11
					wr_state_d = 4'd0;
					// Trace: core/axi_shim.sv:172:11
					wr_gnt_o = 1'b1;
				end
			end
			4'd2: begin
				// Trace: core/axi_shim.sv:178:9
				axi_req_o[2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b1;
				// Trace: core/axi_shim.sv:180:9
				if ((CVA6Cfg[1319] && axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) && !wr_cnt_done)
					// Trace: core/axi_shim.sv:181:11
					wr_cnt_en = 1'b1;
				else if (wr_cnt_done) begin
					begin
						// Trace: core/axi_shim.sv:183:11
						if (axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) begin
							// Trace: core/axi_shim.sv:184:13
							wr_state_d = 4'd0;
							// Trace: core/axi_shim.sv:185:13
							wr_cnt_clr = 1'b1;
							// Trace: core/axi_shim.sv:186:13
							wr_gnt_o = 1'b1;
						end
					end
				end
			end
			default:
				// Trace: core/axi_shim.sv:194:9
				if (CVA6Cfg[1319]) begin
					begin
						// Trace: core/axi_shim.sv:195:11
						if (wr_state_q == 4'd3) begin
							// Trace: core/axi_shim.sv:196:13
							axi_req_o[2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b1;
							// Trace: core/axi_shim.sv:197:13
							axi_req_o[1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b1;
							// Trace: core/axi_shim.sv:199:13
							case ({axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]})
								2'b01:
									// Trace: core/axi_shim.sv:205:17
									if (wr_cnt_done) begin
										// Trace: core/axi_shim.sv:206:19
										wr_state_d = 4'd4;
										// Trace: core/axi_shim.sv:207:19
										wr_cnt_clr = 1'b1;
									end
									else
										// Trace: core/axi_shim.sv:210:19
										wr_cnt_en = 1'b1;
								2'b10:
									// Trace: core/axi_shim.sv:213:24
									wr_state_d = 4'd2;
								2'b11:
									// Trace: core/axi_shim.sv:216:17
									if (wr_cnt_done) begin
										// Trace: core/axi_shim.sv:217:19
										wr_state_d = 4'd0;
										// Trace: core/axi_shim.sv:218:19
										wr_gnt_o = 1'b1;
										// Trace: core/axi_shim.sv:219:19
										wr_cnt_clr = 1'b1;
									end
									else begin
										// Trace: core/axi_shim.sv:222:19
										wr_state_d = 4'd2;
										// Trace: core/axi_shim.sv:223:19
										wr_cnt_en = 1'b1;
									end
								default:
									;
							endcase
						end
						else if (wr_state_q == 4'd4) begin
							// Trace: core/axi_shim.sv:231:13
							axi_req_o[1 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b1;
							// Trace: core/axi_shim.sv:233:13
							if (axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) begin
								// Trace: core/axi_shim.sv:234:15
								wr_state_d = 4'd0;
								// Trace: core/axi_shim.sv:235:15
								wr_gnt_o = 1'b1;
							end
						end
					end
				end
				else
					// Trace: core/axi_shim.sv:239:11
					wr_state_d = 4'd0;
		endcase
	end
	// Trace: core/axi_shim.sv:253:3
	wire [((10 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (16 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((10 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (16 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((16 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (10 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1) * 1:1] sv2v_tmp_86B8E;
	assign sv2v_tmp_86B8E = axi_pkg_BURST_INCR;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (10 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)))-:((10 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (16 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((10 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (16 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((16 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (10 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1)] = sv2v_tmp_86B8E;
	// Trace: core/axi_shim.sv:254:3
	wire [((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))) >= (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))) - (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) + 1) * 1:1] sv2v_tmp_0E50E;
	assign sv2v_tmp_0E50E = rd_addr_i[CVA6Cfg[16744-:32] - 1:0];
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))))-:((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))) >= (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))) - (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) + 1)] = sv2v_tmp_0E50E;
	// Trace: core/axi_shim.sv:255:3
	wire [((17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3)) >= (18 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3)) - (18 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((18 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3))) + 1) * 1:1] sv2v_tmp_B2EC4;
	assign sv2v_tmp_B2EC4 = rd_size_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3)))-:((17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3)) >= (18 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3)) - (18 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((18 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (17 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3))) + 1)] = sv2v_tmp_B2EC4;
	// Trace: core/axi_shim.sv:256:3
	wire [((21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1) * 1:1] sv2v_tmp_C8F2E;
	assign sv2v_tmp_C8F2E = rd_blen_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)))-:((21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1)] = sv2v_tmp_C8F2E;
	// Trace: core/axi_shim.sv:257:3
	wire [((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) >= (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))))) + 1) * 1:1] sv2v_tmp_5FE00;
	assign sv2v_tmp_5FE00 = rd_id_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)))))-:((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) >= (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))))) + 1)] = sv2v_tmp_5FE00;
	// Trace: core/axi_shim.sv:258:3
	wire [((7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3)) >= (8 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3)) - (8 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((8 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3))) + 1) * 1:1] sv2v_tmp_BD9FF;
	assign sv2v_tmp_BD9FF = 3'b000;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3)))-:((7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3)) >= (8 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3)) - (8 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((8 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3))) + 1)] = sv2v_tmp_BD9FF;
	// Trace: core/axi_shim.sv:259:3
	wire [((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3) >= (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) + 1 : ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3)) + 1) * 1:1] sv2v_tmp_AB541;
	assign sv2v_tmp_AB541 = 4'b0000;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3))-:((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3) >= (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) + 1 : ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3)) + 1)] = sv2v_tmp_AB541;
	// Trace: core/axi_shim.sv:260:3
	wire [1:1] sv2v_tmp_A7EA9;
	assign sv2v_tmp_A7EA9 = rd_lock_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (12 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 3)))] = sv2v_tmp_A7EA9;
	// Trace: core/axi_shim.sv:261:3
	wire [((7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (11 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (11 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((11 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1) * 1:1] sv2v_tmp_C7269;
	assign sv2v_tmp_C7269 = axi_pkg_CACHE_MODIFIABLE;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)))-:((7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (11 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (11 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((11 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1)] = sv2v_tmp_C7269;
	// Trace: core/axi_shim.sv:262:3
	wire [((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7) >= (4 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7) - (4 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((4 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) + 1) * 1:1] sv2v_tmp_435FD;
	assign sv2v_tmp_435FD = 4'b0000;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7))-:((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7) >= (4 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7) - (4 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((4 + (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth + 7)) + 1)] = sv2v_tmp_435FD;
	// Trace: core/axi_shim.sv:263:3
	wire [axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth * 1:1] sv2v_tmp_98A30;
	assign sv2v_tmp_98A30 = 1'sb0;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth - 1))-:axi_req_t_axi_req_t_noc_req_t_noc_req_t_ariane_axi_UserWidth] = sv2v_tmp_98A30;
	// Trace: core/axi_shim.sv:266:3
	wire [1:1] sv2v_tmp_52A18;
	assign sv2v_tmp_52A18 = rd_req_i;
	always @(*) axi_req_o[1] = sv2v_tmp_52A18;
	// Trace: core/axi_shim.sv:267:3
	assign rd_gnt_o = rd_req_i & axi_resp_i[3 + (((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0))];
	// Trace: core/axi_shim.sv:270:3
	wire [1:1] sv2v_tmp_F1240;
	assign sv2v_tmp_F1240 = rd_rdy_i;
	always @(*) axi_req_o[0] = sv2v_tmp_F1240;
	// Trace: core/axi_shim.sv:271:3
	assign rd_data_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 2)))-:((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 2)) >= (3 + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 2)) - (3 + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((3 + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 2))) + 1)];
	// Trace: core/axi_shim.sv:272:3
	generate
		if (CVA6Cfg[644]) begin : genblk1
			// Trace: core/axi_shim.sv:273:5
			assign rd_user_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth - 1))-:axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth];
		end
		else begin : genblk1
			// Trace: core/axi_shim.sv:275:5
			assign rd_user_o = 1'sb0;
		end
	endgenerate
	// Trace: core/axi_shim.sv:277:3
	assign rd_last_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0))];
	// Trace: core/axi_shim.sv:278:3
	assign rd_valid_o = axi_resp_i[(((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) + 0];
	// Trace: core/axi_shim.sv:279:3
	assign rd_id_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 2))))-:((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 2))) >= (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0))) ? ((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 2))) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0))) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 2)))) + 1)];
	// Trace: core/axi_shim.sv:280:3
	assign rd_exokay_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 2))-:((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 2) >= (1 + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 2) - (1 + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((1 + (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_noc_resp_t_noc_resp_t_ariane_axi_UserWidth + 2)) + 1)] == axi_pkg_RESP_EXOKAY;
	// Trace: core/axi_shim.sv:286:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/axi_shim.sv:287:5
		if (~rst_ni) begin
			// Trace: core/axi_shim.sv:289:7
			wr_state_q <= 4'd0;
			// Trace: core/axi_shim.sv:290:7
			wr_cnt_q <= 1'sb0;
		end
		else begin
			// Trace: core/axi_shim.sv:292:7
			wr_state_q <= wr_state_d;
			// Trace: core/axi_shim.sv:293:7
			wr_cnt_q <= wr_cnt_d;
		end
	// Trace: core/axi_shim.sv:302:3
	initial _sv2v_0 = 0;
endmodule
module axi_shim_C0833_57DBF (
	clk_i,
	rst_ni,
	rd_req_i,
	rd_gnt_o,
	rd_addr_i,
	rd_blen_i,
	rd_size_i,
	rd_id_i,
	rd_lock_i,
	rd_rdy_i,
	rd_last_o,
	rd_valid_o,
	rd_data_o,
	rd_user_o,
	rd_id_o,
	rd_exokay_o,
	wr_req_i,
	wr_gnt_o,
	wr_addr_i,
	wr_data_i,
	wr_user_i,
	wr_be_i,
	wr_blen_i,
	wr_size_i,
	wr_id_i,
	wr_lock_i,
	wr_atop_i,
	wr_rdy_i,
	wr_valid_o,
	wr_id_o,
	wr_exokay_o,
	axi_req_o,
	axi_resp_i
);
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth_type
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth_type
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth_type
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth_type
	// removed localparam type axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth_type
	// removed localparam type axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth = 0;
	reg _sv2v_0;
	// Trace: core/axi_shim.sv:23:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/axi_shim.sv:24:15
	parameter [31:0] AxiNumWords = 4;
	// Trace: core/axi_shim.sv:25:20
	// removed localparam type axi_req_t
	// Trace: core/axi_shim.sv:26:20
	// removed localparam type axi_rsp_t
	// Trace: core/axi_shim.sv:28:5
	input wire clk_i;
	// Trace: core/axi_shim.sv:29:5
	input wire rst_ni;
	// Trace: core/axi_shim.sv:32:5
	input wire rd_req_i;
	// Trace: core/axi_shim.sv:33:5
	output wire rd_gnt_o;
	// Trace: core/axi_shim.sv:34:5
	input wire [CVA6Cfg[16744-:32] - 1:0] rd_addr_i;
	// Trace: core/axi_shim.sv:35:5
	input wire [$clog2(AxiNumWords) - 1:0] rd_blen_i;
	// Trace: core/axi_shim.sv:36:5
	input wire [2:0] rd_size_i;
	// Trace: core/axi_shim.sv:37:5
	input wire [CVA6Cfg[16680-:32] - 1:0] rd_id_i;
	// Trace: core/axi_shim.sv:38:5
	input wire rd_lock_i;
	// Trace: core/axi_shim.sv:40:5
	input wire rd_rdy_i;
	// Trace: core/axi_shim.sv:41:5
	output wire rd_last_o;
	// Trace: core/axi_shim.sv:42:5
	output wire rd_valid_o;
	// Trace: core/axi_shim.sv:43:5
	output wire [CVA6Cfg[16712-:32] - 1:0] rd_data_o;
	// Trace: core/axi_shim.sv:44:5
	output wire [CVA6Cfg[16648-:32] - 1:0] rd_user_o;
	// Trace: core/axi_shim.sv:45:5
	output wire [CVA6Cfg[16680-:32] - 1:0] rd_id_o;
	// Trace: core/axi_shim.sv:46:5
	output wire rd_exokay_o;
	// Trace: core/axi_shim.sv:48:5
	input wire wr_req_i;
	// Trace: core/axi_shim.sv:49:5
	output reg wr_gnt_o;
	// Trace: core/axi_shim.sv:50:5
	input wire [CVA6Cfg[16744-:32] - 1:0] wr_addr_i;
	// Trace: core/axi_shim.sv:51:5
	input wire [(AxiNumWords * CVA6Cfg[16712-:32]) - 1:0] wr_data_i;
	// Trace: core/axi_shim.sv:52:5
	input wire [(AxiNumWords * CVA6Cfg[16648-:32]) - 1:0] wr_user_i;
	// Trace: core/axi_shim.sv:53:5
	input wire [(AxiNumWords * (CVA6Cfg[16712-:32] / 8)) - 1:0] wr_be_i;
	// Trace: core/axi_shim.sv:54:5
	input wire [$clog2(AxiNumWords) - 1:0] wr_blen_i;
	// Trace: core/axi_shim.sv:55:5
	input wire [2:0] wr_size_i;
	// Trace: core/axi_shim.sv:56:5
	input wire [CVA6Cfg[16680-:32] - 1:0] wr_id_i;
	// Trace: core/axi_shim.sv:57:5
	input wire wr_lock_i;
	// Trace: core/axi_shim.sv:58:5
	input wire [5:0] wr_atop_i;
	// Trace: core/axi_shim.sv:60:5
	input wire wr_rdy_i;
	// Trace: core/axi_shim.sv:61:5
	output wire wr_valid_o;
	// Trace: core/axi_shim.sv:62:5
	output wire [CVA6Cfg[16680-:32] - 1:0] wr_id_o;
	// Trace: core/axi_shim.sv:63:5
	output wire wr_exokay_o;
	// Trace: core/axi_shim.sv:65:5
	output reg [(((((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_req_o;
	// Trace: core/axi_shim.sv:66:5
	input wire [(((4 + ((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_resp_i;
	// Trace: core/axi_shim.sv:68:3
	localparam AddrIndex = ($clog2(AxiNumWords) > 0 ? $clog2(AxiNumWords) : 1);
	// Trace: core/axi_shim.sv:74:3
	reg [3:0] wr_state_q;
	reg [3:0] wr_state_d;
	// Trace: core/axi_shim.sv:84:3
	wire [AddrIndex - 1:0] wr_cnt_d;
	reg [AddrIndex - 1:0] wr_cnt_q;
	// Trace: core/axi_shim.sv:85:3
	wire wr_single_req;
	wire wr_cnt_done;
	reg wr_cnt_clr;
	reg wr_cnt_en;
	// Trace: core/axi_shim.sv:87:3
	assign wr_single_req = wr_blen_i == 0;
	// Trace: core/axi_shim.sv:90:3
	localparam axi_pkg_BURST_INCR = 2'b01;
	wire [((18 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (22 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((18 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (22 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((22 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (18 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1) * 1:1] sv2v_tmp_D1455;
	assign sv2v_tmp_D1455 = axi_pkg_BURST_INCR;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (18 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((18 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (22 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((18 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (22 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((22 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (18 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = sv2v_tmp_D1455;
	// Trace: core/axi_shim.sv:91:3
	wire [((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) >= (35 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) - (35 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((35 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) + 1) * 1:1] sv2v_tmp_884E4;
	assign sv2v_tmp_884E4 = wr_addr_i[CVA6Cfg[16744-:32] - 1:0];
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))))-:((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) >= (35 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) - (35 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((35 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) + 1)] = sv2v_tmp_884E4;
	// Trace: core/axi_shim.sv:92:3
	wire [((17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) >= (24 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) - (24 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((24 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9))) + 1) * 1:1] sv2v_tmp_4F094;
	assign sv2v_tmp_4F094 = wr_size_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)))-:((17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) >= (24 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) - (24 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((24 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9))) + 1)] = sv2v_tmp_4F094;
	// Trace: core/axi_shim.sv:93:3
	wire [((29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (27 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (27 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((27 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1) * 1:1] sv2v_tmp_1F3A7;
	assign sv2v_tmp_1F3A7 = wr_blen_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (27 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (27 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((27 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = sv2v_tmp_1F3A7;
	// Trace: core/axi_shim.sv:94:3
	wire [((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) >= (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))))) + 1) * 1:1] sv2v_tmp_70AD0;
	assign sv2v_tmp_70AD0 = wr_id_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))))-:((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) >= (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))))) + 1)] = sv2v_tmp_70AD0;
	// Trace: core/axi_shim.sv:95:3
	wire [((7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) >= (14 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) - (14 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((14 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9))) + 1) * 1:1] sv2v_tmp_18771;
	assign sv2v_tmp_18771 = 3'b000;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)))-:((7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) >= (14 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) - (14 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((14 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9))) + 1)] = sv2v_tmp_18771;
	// Trace: core/axi_shim.sv:96:3
	wire [((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9) >= (6 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9) - (6 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((6 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) + 1) * 1:1] sv2v_tmp_6919B;
	assign sv2v_tmp_6919B = 4'b0000;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9))-:((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9) >= (6 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9) - (6 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((6 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) + 1)] = sv2v_tmp_6919B;
	// Trace: core/axi_shim.sv:97:3
	wire [1:1] sv2v_tmp_C906C;
	assign sv2v_tmp_C906C = wr_lock_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (12 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)))] = sv2v_tmp_C906C;
	// Trace: core/axi_shim.sv:98:3
	localparam axi_pkg_CACHE_MODIFIABLE = 4'b0010;
	wire [((15 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((15 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (15 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1) * 1:1] sv2v_tmp_5112F;
	assign sv2v_tmp_5112F = axi_pkg_CACHE_MODIFIABLE;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (15 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((15 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((15 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (15 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = sv2v_tmp_5112F;
	// Trace: core/axi_shim.sv:99:3
	wire [((8 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (10 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((8 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (10 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((10 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (8 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1) * 1:1] sv2v_tmp_92761;
	assign sv2v_tmp_92761 = 4'b0000;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (8 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((8 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (10 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((8 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (10 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((10 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (8 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = sv2v_tmp_92761;
	// Trace: core/axi_shim.sv:100:3
	wire [((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5) >= (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) + 1 : ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) + 1) * 1:1] sv2v_tmp_84EB0;
	assign sv2v_tmp_84EB0 = wr_atop_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))-:((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5) >= (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) + 1 : ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) + 1)] = sv2v_tmp_84EB0;
	// Trace: core/axi_shim.sv:101:3
	wire [axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth * 1:1] sv2v_tmp_41576;
	assign sv2v_tmp_41576 = 1'sb0;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth - 1))-:axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth] = sv2v_tmp_41576;
	// Trace: core/axi_shim.sv:104:3
	wire [((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) >= (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1) * 1:1] sv2v_tmp_6DFC6;
	assign sv2v_tmp_6DFC6 = wr_data_i[wr_cnt_q * CVA6Cfg[16712-:32]+:CVA6Cfg[16712-:32]];
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))))-:((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) >= (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1)] = sv2v_tmp_6DFC6;
	// Trace: core/axi_shim.sv:105:3
	wire [axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth * 1:1] sv2v_tmp_0C08B;
	assign sv2v_tmp_0C08B = wr_user_i[wr_cnt_q * CVA6Cfg[16648-:32]+:CVA6Cfg[16648-:32]];
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth - 1))-:axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth] = sv2v_tmp_0C08B;
	// Trace: core/axi_shim.sv:106:3
	wire [((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) >= (1 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (1 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((1 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1) * 1:1] sv2v_tmp_4F076;
	assign sv2v_tmp_4F076 = wr_be_i[wr_cnt_q * (CVA6Cfg[16712-:32] / 8)+:CVA6Cfg[16712-:32] / 8];
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))-:((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) >= (1 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (1 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((1 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1)] = sv2v_tmp_4F076;
	// Trace: core/axi_shim.sv:107:3
	wire [1:1] sv2v_tmp_FA29E;
	assign sv2v_tmp_FA29E = wr_cnt_done;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))] = sv2v_tmp_FA29E;
	// Trace: core/axi_shim.sv:110:3
	localparam axi_pkg_RESP_EXOKAY = 2'b01;
	assign wr_exokay_o = axi_resp_i[(((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1) >= (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) + 1 : ((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1)) + 1)] == axi_pkg_RESP_EXOKAY;
	// Trace: core/axi_shim.sv:111:3
	wire [1:1] sv2v_tmp_D103C;
	assign sv2v_tmp_D103C = wr_rdy_i;
	always @(*) axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = sv2v_tmp_D103C;
	// Trace: core/axi_shim.sv:112:3
	assign wr_valid_o = axi_resp_i[1 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))];
	// Trace: core/axi_shim.sv:113:3
	assign wr_id_o = axi_resp_i[(((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1)))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1)) >= (2 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1)) - (2 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((2 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1))) + 1)];
	// Trace: core/axi_shim.sv:116:3
	assign wr_cnt_done = wr_cnt_q == wr_blen_i;
	// Trace: core/axi_shim.sv:117:3
	assign wr_cnt_d = (wr_cnt_clr ? {AddrIndex {1'sb0}} : (wr_cnt_en && CVA6Cfg[1319] ? wr_cnt_q + 1 : wr_cnt_q));
	// Trace: core/axi_shim.sv:119:3
	always @(*) begin : p_axi_write_fsm
		if (_sv2v_0)
			;
		// Trace: core/axi_shim.sv:121:5
		wr_state_d = wr_state_q;
		// Trace: core/axi_shim.sv:123:5
		axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b0;
		// Trace: core/axi_shim.sv:124:5
		axi_req_o[2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b0;
		// Trace: core/axi_shim.sv:125:5
		wr_gnt_o = 1'b0;
		// Trace: core/axi_shim.sv:127:5
		wr_cnt_en = 1'b0;
		// Trace: core/axi_shim.sv:128:5
		wr_cnt_clr = 1'b0;
		// Trace: core/axi_shim.sv:130:5
		case (wr_state_q)
			4'd0:
				// Trace: core/axi_shim.sv:134:9
				if (wr_req_i) begin
					// Trace: core/axi_shim.sv:136:11
					axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b1;
					// Trace: core/axi_shim.sv:137:11
					axi_req_o[2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b1;
					// Trace: core/axi_shim.sv:139:11
					if (CVA6Cfg[1319] && !wr_single_req) begin
						// Trace: core/axi_shim.sv:140:13
						wr_cnt_en = axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))];
						// Trace: core/axi_shim.sv:142:13
						case ({axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]})
							2'b11:
								// Trace: core/axi_shim.sv:145:24
								wr_state_d = 4'd2;
							2'b01:
								// Trace: core/axi_shim.sv:146:24
								wr_state_d = 4'd3;
							2'b10:
								// Trace: core/axi_shim.sv:147:24
								wr_state_d = 4'd2;
							default:
								;
						endcase
					end
					else if (wr_single_req) begin
						// Trace: core/axi_shim.sv:151:13
						wr_cnt_clr = 1'b1;
						// Trace: core/axi_shim.sv:153:13
						wr_gnt_o = axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))] & axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))];
						// Trace: core/axi_shim.sv:154:13
						case ({axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]})
							2'b01:
								// Trace: core/axi_shim.sv:157:24
								wr_state_d = 4'd1;
							2'b10:
								// Trace: core/axi_shim.sv:158:24
								wr_state_d = 4'd2;
							default:
								// Trace: core/axi_shim.sv:159:24
								wr_state_d = 4'd0;
						endcase
					end
				end
			4'd1: begin
				// Trace: core/axi_shim.sv:168:9
				axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b1;
				// Trace: core/axi_shim.sv:170:9
				if (axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) begin
					// Trace: core/axi_shim.sv:171:11
					wr_state_d = 4'd0;
					// Trace: core/axi_shim.sv:172:11
					wr_gnt_o = 1'b1;
				end
			end
			4'd2: begin
				// Trace: core/axi_shim.sv:178:9
				axi_req_o[2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b1;
				// Trace: core/axi_shim.sv:180:9
				if ((CVA6Cfg[1319] && axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) && !wr_cnt_done)
					// Trace: core/axi_shim.sv:181:11
					wr_cnt_en = 1'b1;
				else if (wr_cnt_done) begin
					begin
						// Trace: core/axi_shim.sv:183:11
						if (axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) begin
							// Trace: core/axi_shim.sv:184:13
							wr_state_d = 4'd0;
							// Trace: core/axi_shim.sv:185:13
							wr_cnt_clr = 1'b1;
							// Trace: core/axi_shim.sv:186:13
							wr_gnt_o = 1'b1;
						end
					end
				end
			end
			default:
				// Trace: core/axi_shim.sv:194:9
				if (CVA6Cfg[1319]) begin
					begin
						// Trace: core/axi_shim.sv:195:11
						if (wr_state_q == 4'd3) begin
							// Trace: core/axi_shim.sv:196:13
							axi_req_o[2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b1;
							// Trace: core/axi_shim.sv:197:13
							axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b1;
							// Trace: core/axi_shim.sv:199:13
							case ({axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]})
								2'b01:
									// Trace: core/axi_shim.sv:205:17
									if (wr_cnt_done) begin
										// Trace: core/axi_shim.sv:206:19
										wr_state_d = 4'd4;
										// Trace: core/axi_shim.sv:207:19
										wr_cnt_clr = 1'b1;
									end
									else
										// Trace: core/axi_shim.sv:210:19
										wr_cnt_en = 1'b1;
								2'b10:
									// Trace: core/axi_shim.sv:213:24
									wr_state_d = 4'd2;
								2'b11:
									// Trace: core/axi_shim.sv:216:17
									if (wr_cnt_done) begin
										// Trace: core/axi_shim.sv:217:19
										wr_state_d = 4'd0;
										// Trace: core/axi_shim.sv:218:19
										wr_gnt_o = 1'b1;
										// Trace: core/axi_shim.sv:219:19
										wr_cnt_clr = 1'b1;
									end
									else begin
										// Trace: core/axi_shim.sv:222:19
										wr_state_d = 4'd2;
										// Trace: core/axi_shim.sv:223:19
										wr_cnt_en = 1'b1;
									end
								default:
									;
							endcase
						end
						else if (wr_state_q == 4'd4) begin
							// Trace: core/axi_shim.sv:231:13
							axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b1;
							// Trace: core/axi_shim.sv:233:13
							if (axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) begin
								// Trace: core/axi_shim.sv:234:15
								wr_state_d = 4'd0;
								// Trace: core/axi_shim.sv:235:15
								wr_gnt_o = 1'b1;
							end
						end
					end
				end
				else
					// Trace: core/axi_shim.sv:239:11
					wr_state_d = 4'd0;
		endcase
	end
	// Trace: core/axi_shim.sv:253:3
	wire [((10 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (16 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((10 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (16 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((16 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (10 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1) * 1:1] sv2v_tmp_559EC;
	assign sv2v_tmp_559EC = axi_pkg_BURST_INCR;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (10 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))-:((10 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (16 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((10 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (16 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((16 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (10 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1)] = sv2v_tmp_559EC;
	// Trace: core/axi_shim.sv:254:3
	wire [((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) >= (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) - (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) + 1) * 1:1] sv2v_tmp_2378C;
	assign sv2v_tmp_2378C = rd_addr_i[CVA6Cfg[16744-:32] - 1:0];
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))))-:((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) >= (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) - (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) + 1)] = sv2v_tmp_2378C;
	// Trace: core/axi_shim.sv:255:3
	wire [((17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) >= (18 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) - (18 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((18 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3))) + 1) * 1:1] sv2v_tmp_93846;
	assign sv2v_tmp_93846 = rd_size_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)))-:((17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) >= (18 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) - (18 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((18 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (17 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3))) + 1)] = sv2v_tmp_93846;
	// Trace: core/axi_shim.sv:256:3
	wire [((21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1) * 1:1] sv2v_tmp_6D7EC;
	assign sv2v_tmp_6D7EC = rd_blen_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))-:((21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1)] = sv2v_tmp_6D7EC;
	// Trace: core/axi_shim.sv:257:3
	wire [((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) >= (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))))) + 1) * 1:1] sv2v_tmp_961E0;
	assign sv2v_tmp_961E0 = rd_id_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))))-:((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) >= (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))))) + 1)] = sv2v_tmp_961E0;
	// Trace: core/axi_shim.sv:258:3
	wire [((7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) >= (8 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) - (8 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((8 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3))) + 1) * 1:1] sv2v_tmp_DE2DD;
	assign sv2v_tmp_DE2DD = 3'b000;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)))-:((7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) >= (8 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) - (8 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((8 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3))) + 1)] = sv2v_tmp_DE2DD;
	// Trace: core/axi_shim.sv:259:3
	wire [((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3) >= (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) + 1 : ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) + 1) * 1:1] sv2v_tmp_FEE03;
	assign sv2v_tmp_FEE03 = 4'b0000;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3))-:((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3) >= (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) + 1 : ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) + 1)] = sv2v_tmp_FEE03;
	// Trace: core/axi_shim.sv:260:3
	wire [1:1] sv2v_tmp_EBB0B;
	assign sv2v_tmp_EBB0B = rd_lock_i;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (12 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)))] = sv2v_tmp_EBB0B;
	// Trace: core/axi_shim.sv:261:3
	wire [((7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (11 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (11 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((11 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1) * 1:1] sv2v_tmp_F64EB;
	assign sv2v_tmp_F64EB = axi_pkg_CACHE_MODIFIABLE;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))-:((7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (11 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (11 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((11 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1)] = sv2v_tmp_F64EB;
	// Trace: core/axi_shim.sv:262:3
	wire [((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7) >= (4 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7) - (4 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((4 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) + 1) * 1:1] sv2v_tmp_2909F;
	assign sv2v_tmp_2909F = 4'b0000;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))-:((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7) >= (4 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7) - (4 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((4 + (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) + 1)] = sv2v_tmp_2909F;
	// Trace: core/axi_shim.sv:263:3
	wire [axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth * 1:1] sv2v_tmp_20690;
	assign sv2v_tmp_20690 = 1'sb0;
	always @(*) axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth - 1))-:axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth] = sv2v_tmp_20690;
	// Trace: core/axi_shim.sv:266:3
	wire [1:1] sv2v_tmp_52A18;
	assign sv2v_tmp_52A18 = rd_req_i;
	always @(*) axi_req_o[1] = sv2v_tmp_52A18;
	// Trace: core/axi_shim.sv:267:3
	assign rd_gnt_o = rd_req_i & axi_resp_i[3 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))];
	// Trace: core/axi_shim.sv:270:3
	wire [1:1] sv2v_tmp_F1240;
	assign sv2v_tmp_F1240 = rd_rdy_i;
	always @(*) axi_req_o[0] = sv2v_tmp_F1240;
	// Trace: core/axi_shim.sv:271:3
	assign rd_data_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) >= (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) - (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) + 1)];
	// Trace: core/axi_shim.sv:272:3
	generate
		if (CVA6Cfg[644]) begin : genblk1
			// Trace: core/axi_shim.sv:273:5
			assign rd_user_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth - 1))-:axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth];
		end
		else begin : genblk1
			// Trace: core/axi_shim.sv:275:5
			assign rd_user_o = 1'sb0;
		end
	endgenerate
	// Trace: core/axi_shim.sv:277:3
	assign rd_last_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))];
	// Trace: core/axi_shim.sv:278:3
	assign rd_valid_o = axi_resp_i[(((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0];
	// Trace: core/axi_shim.sv:279:3
	assign rd_id_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) >= (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)))) + 1)];
	// Trace: core/axi_shim.sv:280:3
	assign rd_exokay_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2) >= (1 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2) - (1 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((1 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) + 1)] == axi_pkg_RESP_EXOKAY;
	// Trace: core/axi_shim.sv:286:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/axi_shim.sv:287:5
		if (~rst_ni) begin
			// Trace: core/axi_shim.sv:289:7
			wr_state_q <= 4'd0;
			// Trace: core/axi_shim.sv:290:7
			wr_cnt_q <= 1'sb0;
		end
		else begin
			// Trace: core/axi_shim.sv:292:7
			wr_state_q <= wr_state_d;
			// Trace: core/axi_shim.sv:293:7
			wr_cnt_q <= wr_cnt_d;
		end
	// Trace: core/axi_shim.sv:302:3
	initial _sv2v_0 = 0;
endmodule
