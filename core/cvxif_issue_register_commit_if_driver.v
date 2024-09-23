module cvxif_issue_register_commit_if_driver_438A7_844C7 (
	clk_i,
	rst_ni,
	flush_i,
	hart_id_i,
	issue_ready_i,
	issue_resp_i,
	issue_valid_o,
	issue_req_o,
	register_ready_i,
	register_valid_o,
	register_o,
	commit_valid_o,
	commit_o,
	valid_i,
	x_off_instr_i,
	x_trans_id_i,
	register_i,
	rs_valid_i,
	cvxif_busy_o
);
	// removed localparam type x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg_type
	parameter [17102:0] x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg = 0;
	// removed localparam type x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg_type
	parameter [17102:0] x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg = 0;
	// removed localparam type x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_CVA6Cfg_type
	parameter [17102:0] x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_CVA6Cfg = 0;
	// removed localparam type x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg_type
	parameter [17102:0] x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:11:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:12:20
	// removed localparam type x_issue_req_t
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:13:20
	// removed localparam type x_issue_resp_t
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:14:20
	// removed localparam type x_register_t
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:15:20
	// removed localparam type x_commit_t
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:18:5
	input wire clk_i;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:19:5
	input wire rst_ni;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:20:5
	input wire flush_i;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:21:5
	input wire [CVA6Cfg[17102-:32] - 1:0] hart_id_i;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:23:5
	input wire issue_ready_i;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:24:5
	input wire [((1 + (x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32])) + (x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32])) - 1:0] issue_resp_i;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:25:5
	output reg issue_valid_o;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:26:5
	output reg [((32 + x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32]) + x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32]) - 1:0] issue_req_o;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:28:5
	input wire register_ready_i;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:29:5
	output wire register_valid_o;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:30:5
	output reg [(((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[127-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32]) + (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32])) + (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32])) - 1:0] register_o;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:32:5
	output wire commit_valid_o;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:33:5
	output wire [(x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[127-:32] + x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[255-:32]) + 0:0] commit_o;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:35:5
	input wire valid_i;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:36:5
	input wire [31:0] x_off_instr_i;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:37:5
	input wire [CVA6Cfg[16503-:32] - 1:0] x_trans_id_i;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:38:5
	input [((CVA6Cfg[16433-:32] / CVA6Cfg[16841-:32]) * CVA6Cfg[17102-:32]) - 1:0] register_i;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:39:5
	input wire [(CVA6Cfg[16433-:32] / CVA6Cfg[16841-:32]) - 1:0] rs_valid_i;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:40:5
	output wire cvxif_busy_o;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:44:3
	assign register_valid_o = issue_valid_o;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:45:3
	wire [((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[127-:32] + (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1)))) >= (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0))) ? ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[127-:32] + (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1)))) - (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0)))) + 1 : ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0))) - (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[127-:32] + (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1))))) + 1) * 1:1] sv2v_tmp_66FC2;
	assign sv2v_tmp_66FC2 = issue_req_o[x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)-:((x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)) >= (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0) ? ((x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)) - (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0)) + 1 : ((x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0) - (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1))) + 1)];
	always @(*) register_o[x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[127-:32] + (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1)))-:((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[127-:32] + (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1)))) >= (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0))) ? ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[127-:32] + (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1)))) - (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0)))) + 1 : ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0))) - (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[127-:32] + (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1))))) + 1)] = sv2v_tmp_66FC2;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:46:3
	wire [((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1))) >= ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0)) ? ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1))) - ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0))) + 1 : (((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0)) - (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1)))) + 1) * 1:1] sv2v_tmp_C2C85;
	assign sv2v_tmp_C2C85 = issue_req_o[x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1-:x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32]];
	always @(*) register_o[x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1))-:((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1))) >= ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0)) ? ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1))) - ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0))) + 1 : (((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0)) - (x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[255-:32] + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1)))) + 1)] = sv2v_tmp_C2C85;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:48:3
	assign cvxif_busy_o = issue_valid_o && ~issue_ready_i;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:49:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvxif_issue_register_commit_if_driver.sv:50:5
		issue_valid_o = valid_i && ~flush_i;
		// Trace: core/cvxif_issue_register_commit_if_driver.sv:51:5
		issue_req_o[32 + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1))-:((32 + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1))) >= (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0)) ? ((32 + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1))) - (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0))) + 1 : ((x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0)) - (32 + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)))) + 1)] = x_off_instr_i;
		// Trace: core/cvxif_issue_register_commit_if_driver.sv:52:5
		issue_req_o[x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)-:((x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)) >= (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0) ? ((x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)) - (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0)) + 1 : ((x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0) - (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1))) + 1)] = hart_id_i;
		// Trace: core/cvxif_issue_register_commit_if_driver.sv:53:5
		issue_req_o[x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1-:x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32]] = x_trans_id_i;
		// Trace: core/cvxif_issue_register_commit_if_driver.sv:54:5
		register_o[(x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1)-:(((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1)) >= ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0) ? (((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1)) - ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0)) + 1 : (((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) + 0) - ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1))) + 1)] = register_i;
		// Trace: core/cvxif_issue_register_commit_if_driver.sv:55:5
		register_o[(x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1-:x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_x_register_t_x_register_t_CVA6Cfg[95-:32]] = rs_valid_i;
	end
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:63:3
	assign commit_valid_o = issue_valid_o;
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:64:3
	assign commit_o[x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[127-:32] + (x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[255-:32] + 0)-:((x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[127-:32] + (x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[255-:32] + 0)) >= (x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[255-:32] + 1) ? ((x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[127-:32] + (x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[255-:32] + 0)) - (x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[255-:32] + 1)) + 1 : ((x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[255-:32] + 1) - (x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[127-:32] + (x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[255-:32] + 0))) + 1)] = issue_req_o[x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)-:((x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)) >= (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0) ? ((x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)) - (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0)) + 1 : ((x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0) - (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1))) + 1)];
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:65:3
	assign commit_o[x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[255-:32] + 0-:((x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[255-:32] + 0) >= 1 ? x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[255-:32] + 0 : 2 - (x_commit_t_x_commit_t_x_commit_t_x_commit_t_CVA6Cfg[255-:32] + 0))] = issue_req_o[x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1-:x_issue_req_t_x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32]];
	// Trace: core/cvxif_issue_register_commit_if_driver.sv:66:3
	assign commit_o[0] = 1'b0;
	initial _sv2v_0 = 0;
endmodule
