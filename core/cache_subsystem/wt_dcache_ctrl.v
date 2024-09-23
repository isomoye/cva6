module wt_dcache_ctrl_2927B_4187A (
	clk_i,
	rst_ni,
	cache_en_i,
	req_port_i,
	req_port_o,
	miss_req_o,
	miss_ack_i,
	miss_we_o,
	miss_wdata_o,
	miss_wuser_o,
	miss_vld_bits_o,
	miss_paddr_o,
	miss_nc_o,
	miss_size_o,
	miss_id_o,
	miss_replay_i,
	miss_rtrn_vld_i,
	wr_cl_vld_i,
	rd_tag_o,
	rd_idx_o,
	rd_off_o,
	rd_req_o,
	rd_tag_only_o,
	rd_ack_i,
	rd_data_i,
	rd_user_i,
	rd_vld_bits_i,
	rd_hit_oh_i
);
	// removed localparam type dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// removed import wt_cache_pkg::*;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:20:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:21:15
	parameter DCACHE_CL_IDX_WIDTH = 0;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:22:20
	// removed localparam type dcache_req_i_t
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:23:20
	// removed localparam type dcache_req_o_t
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:24:15
	parameter [CVA6Cfg[16616-:32] - 1:0] RdTxId = 1;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:26:5
	input wire clk_i;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:27:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:28:5
	input wire cache_en_i;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:30:5
	input wire [(((((((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1:0] req_port_i;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:31:5
	output reg [(((2 + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]) - 1:0] req_port_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:33:5
	output reg miss_req_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:34:5
	input wire miss_ack_i;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:35:5
	output wire miss_we_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:36:5
	output wire [CVA6Cfg[17102-:32] - 1:0] miss_wdata_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:37:5
	output wire [CVA6Cfg[900-:32] - 1:0] miss_wuser_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:38:5
	output wire [CVA6Cfg[1092-:32] - 1:0] miss_vld_bits_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:39:5
	output wire [CVA6Cfg[17038-:32] - 1:0] miss_paddr_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:40:5
	output wire miss_nc_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:41:5
	output wire [2:0] miss_size_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:42:5
	output wire [CVA6Cfg[16616-:32] - 1:0] miss_id_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:43:5
	input wire miss_replay_i;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:44:5
	input wire miss_rtrn_vld_i;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:46:5
	input wire wr_cl_vld_i;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:48:5
	output wire [CVA6Cfg[996-:32] - 1:0] rd_tag_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:49:5
	output wire [DCACHE_CL_IDX_WIDTH - 1:0] rd_idx_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:50:5
	output wire [CVA6Cfg[868-:32] - 1:0] rd_off_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:51:5
	output reg rd_req_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:52:5
	output wire rd_tag_only_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:53:5
	input wire rd_ack_i;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:54:5
	input wire [CVA6Cfg[17102-:32] - 1:0] rd_data_i;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:55:5
	input wire [CVA6Cfg[900-:32] - 1:0] rd_user_i;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:56:5
	input wire [CVA6Cfg[1092-:32] - 1:0] rd_vld_bits_i;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:57:5
	input wire [CVA6Cfg[1092-:32] - 1:0] rd_hit_oh_i;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:61:3
	// removed localparam type state_e
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:71:3
	reg [2:0] state_d;
	reg [2:0] state_q;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:73:3
	wire [CVA6Cfg[996-:32] - 1:0] address_tag_d;
	reg [CVA6Cfg[996-:32] - 1:0] address_tag_q;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:74:3
	wire [DCACHE_CL_IDX_WIDTH - 1:0] address_idx_d;
	reg [DCACHE_CL_IDX_WIDTH - 1:0] address_idx_q;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:75:3
	wire [CVA6Cfg[868-:32] - 1:0] address_off_d;
	reg [CVA6Cfg[868-:32] - 1:0] address_off_q;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:76:3
	wire [CVA6Cfg[1124-:32] - 1:0] id_d;
	reg [CVA6Cfg[1124-:32] - 1:0] id_q;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:77:3
	wire [CVA6Cfg[1092-:32] - 1:0] vld_data_d;
	reg [CVA6Cfg[1092-:32] - 1:0] vld_data_q;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:78:3
	reg save_tag;
	wire rd_req_d;
	reg rd_req_q;
	wire rd_ack_d;
	reg rd_ack_q;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:79:3
	wire [1:0] data_size_d;
	reg [1:0] data_size_q;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:86:3
	assign vld_data_d = (rd_req_q ? rd_vld_bits_i : vld_data_q);
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:87:3
	assign address_tag_d = (save_tag ? req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + 1)] : address_tag_q);
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:88:3
	assign address_idx_d = (req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] ? req_port_i[(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] - 1) - (CVA6Cfg[1028-:32] - 1)):(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] - 1) - CVA6Cfg[868-:32])] : address_idx_q);
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:89:3
	assign address_off_d = (req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] ? req_port_i[(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] - 1) - (CVA6Cfg[868-:32] - 1)):(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] - 1)] : address_off_q);
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:90:3
	assign id_d = (req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] ? req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1) >= 2 ? dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 0 : 3 - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))] : id_q);
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:91:3
	assign data_size_d = (req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] ? req_port_i[2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)-:((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) ? ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) + 1)] : data_size_q);
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:92:3
	assign rd_tag_o = address_tag_d;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:93:3
	assign rd_idx_o = address_idx_d;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:94:3
	assign rd_off_o = address_off_d;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:96:3
	wire [((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) + 1) * 1:1] sv2v_tmp_8435D;
	assign sv2v_tmp_8435D = rd_data_i;
	always @(*) req_port_o[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)-:((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) + 1)] = sv2v_tmp_8435D;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:97:3
	wire [dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] * 1:1] sv2v_tmp_317F3;
	assign sv2v_tmp_317F3 = rd_user_i;
	always @(*) req_port_o[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1-:dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]] = sv2v_tmp_317F3;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:98:3
	wire [((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0))) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))) + 1) * 1:1] sv2v_tmp_13EFE;
	assign sv2v_tmp_13EFE = id_q;
	always @(*) req_port_o[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))-:((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0))) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))) + 1)] = sv2v_tmp_13EFE;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:101:3
	assign miss_vld_bits_o = vld_data_q;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:102:3
	assign miss_paddr_o = {address_tag_q, address_idx_q, address_off_q};
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:103:3
	assign miss_size_o = (miss_nc_o ? {1'b0, data_size_q} : 3'b111);
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:106:3
	function automatic [64:0] sv2v_cast_65;
		input reg [64:0] inp;
		sv2v_cast_65 = inp;
	endfunction
	function automatic config_pkg_range_check;
		// Trace: core/include/config_pkg.sv:375:40
		input reg [63:0] base;
		// Trace: core/include/config_pkg.sv:375:59
		input reg [63:0] len;
		// Trace: core/include/config_pkg.sv:375:77
		input reg [63:0] address;
		// Trace: core/include/config_pkg.sv:378:5
		config_pkg_range_check = (address >= base) && ({1'b0, address} < (sv2v_cast_65(base) + len));
	endfunction
	function automatic config_pkg_is_inside_cacheable_regions;
		// Trace: core/include/config_pkg.sv:405:56
		input reg [17102:0] Cfg;
		// Trace: core/include/config_pkg.sv:405:72
		input reg [63:0] address;
		// Trace: core/include/config_pkg.sv:406:5
		reg [15:0] pass;
		begin
			// Trace: core/include/config_pkg.sv:407:5
			pass = 1'sb0;
			// Trace: core/include/config_pkg.sv:408:5
			begin : sv2v_autoblock_1
				// Trace: core/include/config_pkg.sv:408:10
				reg [31:0] k;
				// Trace: core/include/config_pkg.sv:408:10
				for (k = 0; k < Cfg[3433-:32]; k = k + 1)
					begin
						// Trace: core/include/config_pkg.sv:409:7
						pass[k] = config_pkg_range_check(Cfg[2378 + (k * 64)+:64], Cfg[1354 + (k * 64)+:64], address);
					end
			end
			config_pkg_is_inside_cacheable_regions = |pass;
		end
	endfunction
	assign miss_nc_o = ~cache_en_i | ~config_pkg_is_inside_cacheable_regions(CVA6Cfg, {{{(64 - CVA6Cfg[996-:32]) - CVA6Cfg[1028-:32]} {1'b0}}, address_tag_q, {CVA6Cfg[1028-:32] {1'b0}}});
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:112:3
	assign miss_we_o = 1'sb0;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:113:3
	assign miss_wdata_o = 1'sb0;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:114:3
	assign miss_wuser_o = 1'sb0;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:115:3
	assign miss_id_o = RdTxId;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:116:3
	assign rd_req_d = rd_req_o;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:117:3
	assign rd_ack_d = rd_ack_i;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:118:3
	assign rd_tag_only_o = 1'sb0;
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:124:3
	always @(*) begin : p_fsm
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:126:5
		state_d = state_q;
		// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:127:5
		save_tag = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:128:5
		rd_req_o = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:129:5
		miss_req_o = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:130:5
		req_port_o[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:131:5
		req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:134:5
		(* full_case, parallel_case *)
		case (state_q)
			3'd0:
				// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:138:9
				if (req_port_i[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))]) begin
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:139:11
					rd_req_o = 1'b1;
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:141:11
					if (rd_ack_i) begin
						// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:142:13
						state_d = 3'd1;
						// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:143:13
						req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
					end
				end
			3'd1, 3'd7: begin
				// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:155:9
				rd_req_o = 1'b1;
				// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:158:9
				if (req_port_i[1]) begin
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:159:11
					state_d = 3'd0;
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:160:11
					req_port_o[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
				end
				else if (req_port_i[0] | (state_q == 3'd7)) begin
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:162:11
					save_tag = state_q != 3'd7;
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:163:11
					if (wr_cl_vld_i || !rd_ack_q)
						// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:164:13
						state_d = 3'd6;
					else if (|rd_hit_oh_i && cache_en_i) begin
						// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:167:13
						state_d = 3'd0;
						// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:168:13
						req_port_o[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
						// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:170:13
						if (rd_ack_i && req_port_i[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))]) begin
							// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:171:15
							state_d = 3'd1;
							// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:172:15
							req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
						end
					end
					else
						// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:176:13
						state_d = 3'd2;
				end
			end
			3'd2: begin
				// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:183:9
				miss_req_o = 1'b1;
				// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:185:9
				if (req_port_i[1]) begin
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:186:11
					req_port_o[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:187:11
					if (miss_ack_i)
						// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:188:13
						state_d = 3'd4;
					else
						// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:190:13
						state_d = 3'd5;
				end
				else if (miss_replay_i)
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:193:11
					state_d = 3'd6;
				else if (miss_ack_i)
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:195:11
					state_d = 3'd3;
			end
			3'd3:
				// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:202:9
				if (req_port_i[1]) begin
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:203:11
					req_port_o[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:204:11
					if (miss_rtrn_vld_i)
						// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:205:13
						state_d = 3'd0;
					else
						// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:207:13
						state_d = 3'd4;
				end
				else if (miss_rtrn_vld_i) begin
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:210:11
					state_d = 3'd0;
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:211:11
					req_port_o[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
				end
			3'd6: begin
				// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:217:9
				rd_req_o = 1'b1;
				// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:218:9
				if (req_port_i[1]) begin
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:219:11
					req_port_o[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:220:11
					state_d = 3'd0;
				end
				else if (rd_ack_i)
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:222:11
					state_d = 3'd7;
			end
			3'd5: begin
				// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:227:9
				miss_req_o = 1'b1;
				// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:230:9
				if (miss_replay_i)
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:231:11
					state_d = 3'd0;
				else if (miss_ack_i)
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:233:11
					state_d = 3'd4;
			end
			3'd4:
				// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:241:9
				if (miss_rtrn_vld_i)
					// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:242:11
					state_d = 3'd0;
			default:
				// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:247:9
				state_d = 3'd0;
		endcase
	end
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:256:3
	always @(posedge clk_i or negedge rst_ni) begin : p_regs
		// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:257:5
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:258:7
			state_q <= 3'd0;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:259:7
			address_tag_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:260:7
			address_idx_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:261:7
			address_off_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:262:7
			id_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:263:7
			vld_data_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:264:7
			data_size_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:265:7
			rd_req_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:266:7
			rd_ack_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:268:7
			state_q <= state_d;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:269:7
			address_tag_q <= address_tag_d;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:270:7
			address_idx_q <= address_idx_d;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:271:7
			address_off_q <= address_off_d;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:272:7
			id_q <= id_d;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:273:7
			vld_data_q <= vld_data_d;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:274:7
			data_size_q <= data_size_d;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:275:7
			rd_req_q <= rd_req_d;
			// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:276:7
			rd_ack_q <= rd_ack_d;
		end
	end
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:287:3
	// removed an assertion item
	// hot1 : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(!rd_ack_i |=> (cache_en_i |-> $onehot0(rd_hit_oh_i)))
	// ) else begin
	// 	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:291:8
	// 	$fatal(1, "[l1 dcache ctrl] rd_hit_oh_i signal must be hot1");
	// end
	// Trace: core/cache_subsystem/wt_dcache_ctrl.sv:293:3
	initial _sv2v_0 = 0;
endmodule
