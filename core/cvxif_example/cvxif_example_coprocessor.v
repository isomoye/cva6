module cvxif_example_coprocessor_093E4_50DC6 (
	clk_i,
	rst_ni,
	cvxif_req_i,
	cvxif_resp_o
);
	// removed localparam type cvxif_req_t_CVA6Cfg_type
	parameter [17102:0] cvxif_req_t_CVA6Cfg = 0;
	// removed localparam type cvxif_resp_t_CVA6Cfg_type
	parameter [17102:0] cvxif_resp_t_CVA6Cfg = 0;
	// removed localparam type hartid_t_CVA6Cfg_type
	parameter [17102:0] hartid_t_CVA6Cfg = 0;
	// removed localparam type id_t_CVA6Cfg_type
	parameter [17102:0] id_t_CVA6Cfg = 0;
	// removed localparam type readregflags_t_CVA6Cfg_type
	parameter [17102:0] readregflags_t_CVA6Cfg = 0;
	// removed localparam type writeregflags_t_CVA6Cfg_type
	parameter [17102:0] writeregflags_t_CVA6Cfg = 0;
	// removed localparam type x_commit_t_CVA6Cfg_type
	parameter [17102:0] x_commit_t_CVA6Cfg = 0;
	// removed localparam type x_compressed_req_t_CVA6Cfg_type
	parameter [17102:0] x_compressed_req_t_CVA6Cfg = 0;
	// removed localparam type x_issue_req_t_CVA6Cfg_type
	parameter [17102:0] x_issue_req_t_CVA6Cfg = 0;
	// removed localparam type x_issue_resp_t_CVA6Cfg_type
	parameter [17102:0] x_issue_resp_t_CVA6Cfg = 0;
	// removed localparam type x_register_t_CVA6Cfg_type
	parameter [17102:0] x_register_t_CVA6Cfg = 0;
	// removed localparam type x_result_t_CVA6Cfg_type
	parameter [17102:0] x_result_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import cvxif_instr_pkg::*;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:14:16
	parameter [31:0] NrRgprPorts = 2;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:15:16
	parameter [31:0] XLEN = 32;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:16:29
	// removed localparam type readregflags_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:17:29
	// removed localparam type writeregflags_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:18:29
	// removed localparam type id_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:19:29
	// removed localparam type hartid_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:20:29
	// removed localparam type x_compressed_req_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:21:29
	// removed localparam type x_compressed_resp_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:22:29
	// removed localparam type x_issue_req_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:23:29
	// removed localparam type x_issue_resp_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:24:29
	// removed localparam type x_register_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:25:29
	// removed localparam type x_commit_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:26:29
	// removed localparam type x_result_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:27:29
	// removed localparam type cvxif_req_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:28:29
	// removed localparam type cvxif_resp_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:29:29
	// removed localparam type registers_t
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:31:5
	input wire clk_i;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:32:5
	input wire rst_ni;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:33:5
	input wire [(((((((17 + cvxif_req_t_CVA6Cfg[127-:32]) + 1) + ((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32])) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32]))) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0))) + 0:0] cvxif_req_i;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:34:5
	output reg [(((35 + ((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32]))) + 2) + ((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]))) - 1:0] cvxif_resp_o;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:38:3
	wire [(16 + x_compressed_req_t_CVA6Cfg[127-:32]) - 1:0] compressed_req;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:39:3
	wire [32:0] compressed_resp;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:40:3
	wire compressed_valid;
	wire compressed_ready;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:42:3
	wire [((32 + x_issue_req_t_CVA6Cfg[127-:32]) + x_issue_req_t_CVA6Cfg[255-:32]) - 1:0] issue_req;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:43:3
	wire [((1 + (x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_CVA6Cfg[63-:32])) + (x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_CVA6Cfg[95-:32])) - 1:0] issue_resp;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:44:3
	wire issue_valid;
	wire issue_ready;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:47:3
	wire [(((x_register_t_CVA6Cfg[127-:32] + x_register_t_CVA6Cfg[255-:32]) + (x_register_t_CVA6Cfg[287-:32] * x_register_t_CVA6Cfg[223-:32])) + (x_register_t_CVA6Cfg[287-:32] + x_register_t_CVA6Cfg[95-:32])) - 1:0] register;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:48:3
	wire register_valid;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:51:3
	wire [(NrRgprPorts * XLEN) - 1:0] registers;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:52:3
	// removed localparam type cvxif_instr_pkg_opcode_t
	wire [3:0] opcode;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:53:3
	wire [hartid_t_CVA6Cfg[127-:32] - 1:0] issue_hartid;
	wire [hartid_t_CVA6Cfg[127-:32] - 1:0] hartid;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:54:3
	wire [id_t_CVA6Cfg[255-:32] - 1:0] issue_id;
	wire [id_t_CVA6Cfg[255-:32] - 1:0] id;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:55:3
	wire [4:0] issue_rd;
	wire [4:0] rd;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:56:3
	wire [XLEN - 1:0] result;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:57:3
	wire we;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:61:3
	wire [1:1] sv2v_tmp_39FCD;
	assign sv2v_tmp_39FCD = compressed_ready;
	always @(*) cvxif_resp_o[35 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))] = sv2v_tmp_39FCD;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:62:3
	wire [((34 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))) >= (1 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0)))) ? ((34 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))) - (1 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0))))) + 1 : ((1 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0)))) - (34 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1)))) + 1) * 1:1] sv2v_tmp_84098;
	assign sv2v_tmp_84098 = compressed_resp;
	always @(*) cvxif_resp_o[34 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))-:((34 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))) >= (1 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0)))) ? ((34 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))) - (1 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0))))) + 1 : ((1 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0)))) - (34 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1)))) + 1)] = sv2v_tmp_84098;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:63:3
	wire [1:1] sv2v_tmp_7B45E;
	assign sv2v_tmp_7B45E = issue_ready;
	always @(*) cvxif_resp_o[1 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))] = sv2v_tmp_7B45E;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:64:3
	wire [((((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1)) >= (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0)) ? ((((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1)) - (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0))) + 1 : ((2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0)) - (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))) + 1) * 1:1] sv2v_tmp_0855C;
	assign sv2v_tmp_0855C = issue_resp;
	always @(*) cvxif_resp_o[((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1)-:((((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1)) >= (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0)) ? ((((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1)) - (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0))) + 1 : ((2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0)) - (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))) + 1)] = sv2v_tmp_0855C;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:65:3
	wire [1:1] sv2v_tmp_98514;
	assign sv2v_tmp_98514 = cvxif_resp_o[1 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))];
	always @(*) cvxif_resp_o[((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1] = sv2v_tmp_98514;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:67:3
	assign compressed_req = cvxif_req_i[(16 + cvxif_req_t_CVA6Cfg[127-:32]) + (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))))))-:(((16 + cvxif_req_t_CVA6Cfg[127-:32]) + (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))))))) >= (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1)))))) ? (((16 + cvxif_req_t_CVA6Cfg[127-:32]) + (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))))))) - (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1))))))) + 1 : ((1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1)))))) - ((16 + cvxif_req_t_CVA6Cfg[127-:32]) + (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0)))))))) + 1)];
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:68:3
	assign compressed_valid = cvxif_req_i[1 + ((16 + cvxif_req_t_CVA6Cfg[127-:32]) + (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0)))))))];
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:69:3
	assign issue_req = cvxif_req_i[((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))))-:((((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))))) >= (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1)))) ? ((((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))))) - (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1))))) + 1 : ((1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1)))) - (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0)))))) + 1)];
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:70:3
	assign issue_valid = cvxif_req_i[1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0)))))];
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:71:3
	assign register = cvxif_req_i[(((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))-:(((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))) >= (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1)) ? (((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))) - (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1))) + 1 : ((1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1)) - ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0)))) + 1)];
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:72:3
	assign register_valid = cvxif_req_i[1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0)))];
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:74:3
	localparam [31:0] cvxif_instr_pkg_NbCompInstr = 2;
	// removed localparam type cvxif_instr_pkg_compressed_resp_t
	// removed localparam type cvxif_instr_pkg_copro_compressed_resp_t
	localparam [129:0] cvxif_instr_pkg_CoproCompInstr = 130'b1110000000000000111100000000001110000000000000000000000000111101111110000000000001111000000000011100000000000000000001010101111011;
	compressed_instr_decoder_622D4_D5BC8 #(
		.x_compressed_req_t_x_compressed_req_t_CVA6Cfg(x_compressed_req_t_CVA6Cfg),
		.NbInstr(cvxif_instr_pkg_NbCompInstr),
		.CoproInstr(cvxif_instr_pkg_CoproCompInstr)
	) compressed_instr_decoder_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.compressed_valid_i(compressed_valid),
		.compressed_req_i(compressed_req),
		.compressed_ready_o(compressed_ready),
		.compressed_resp_o(compressed_resp)
	);
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:89:3
	localparam [31:0] cvxif_instr_pkg_NbInstr = 10;
	// removed localparam type cvxif_instr_pkg_issue_resp_t
	// removed localparam type cvxif_instr_pkg_copro_issue_resp_t
	localparam [729:0] cvxif_instr_pkg_CoproInstr = 730'b111101111111110000000000111000001111111100000001000000000000000000010000011110111111111000000000011100000111111111011001000000010000000000001000001111011111111100000000001110000011111111100100110000010000000000000100000111101111111110000000000111000001111111110100100000001100000000000010000011110111111111000000000011100000111111111011010100001000000000000001000001111011111111100000000001110000011111111111101110000000000000000000000000100001100000110000000000111000001111111111110110000000000000000000000000010001110000011000000000011100000111111111111011000000000000000000000000001001011000001100000000001110000011111111111101100000000000000000000000000100111100000110000000000111000001111111111110110;
	instr_decoder_B6FAE_B0A02 #(
		.hartid_t_hartid_t_CVA6Cfg(hartid_t_CVA6Cfg),
		.id_t_id_t_CVA6Cfg(id_t_CVA6Cfg),
		.registers_t_NrRgprPorts(NrRgprPorts),
		.registers_t_XLEN(XLEN),
		.x_issue_req_t_x_issue_req_t_CVA6Cfg(x_issue_req_t_CVA6Cfg),
		.x_issue_resp_t_x_issue_resp_t_CVA6Cfg(x_issue_resp_t_CVA6Cfg),
		.x_register_t_x_register_t_CVA6Cfg(x_register_t_CVA6Cfg),
		.NbInstr(cvxif_instr_pkg_NbInstr),
		.CoproInstr(cvxif_instr_pkg_CoproInstr),
		.NrRgprPorts(NrRgprPorts)
	) instr_decoder_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.issue_valid_i(issue_valid),
		.issue_req_i(issue_req),
		.issue_ready_o(issue_ready),
		.issue_resp_o(issue_resp),
		.register_valid_i(register_valid),
		.register_i(register),
		.registers_o(registers),
		.opcode_o(opcode),
		.hartid_o(issue_hartid),
		.id_o(issue_id),
		.rd_o(issue_rd)
	);
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:117:3
	wire alu_valid;
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:119:3
	copro_alu_4B3DF_8116F #(
		.hartid_t_hartid_t_CVA6Cfg(hartid_t_CVA6Cfg),
		.id_t_id_t_CVA6Cfg(id_t_CVA6Cfg),
		.registers_t_NrRgprPorts(NrRgprPorts),
		.registers_t_XLEN(XLEN),
		.NrRgprPorts(NrRgprPorts),
		.XLEN(XLEN)
	) i_copro_alu(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.registers_i(registers),
		.opcode_i(opcode),
		.hartid_i(issue_hartid),
		.id_i(issue_id),
		.rd_i(issue_rd),
		.hartid_o(hartid),
		.id_o(id),
		.result_o(result),
		.valid_o(alu_valid),
		.rd_o(rd),
		.we_o(we)
	);
	// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:141:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:142:5
		cvxif_resp_o[((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0] = alu_valid;
		// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:143:5
		cvxif_resp_o[(((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) - 1) - ((((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) - 1) - (cvxif_resp_t_CVA6Cfg[127-:32] + (cvxif_resp_t_CVA6Cfg[255-:32] + (cvxif_resp_t_CVA6Cfg[191-:32] + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4)))))-:((cvxif_resp_t_CVA6Cfg[127-:32] + (cvxif_resp_t_CVA6Cfg[255-:32] + (cvxif_resp_t_CVA6Cfg[191-:32] + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4)))) >= (cvxif_resp_t_CVA6Cfg[255-:32] + (cvxif_resp_t_CVA6Cfg[191-:32] + (5 + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 0)))) ? ((cvxif_resp_t_CVA6Cfg[127-:32] + (cvxif_resp_t_CVA6Cfg[255-:32] + (cvxif_resp_t_CVA6Cfg[191-:32] + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4)))) - (cvxif_resp_t_CVA6Cfg[255-:32] + (cvxif_resp_t_CVA6Cfg[191-:32] + (5 + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 0))))) + 1 : ((cvxif_resp_t_CVA6Cfg[255-:32] + (cvxif_resp_t_CVA6Cfg[191-:32] + (5 + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 0)))) - (cvxif_resp_t_CVA6Cfg[127-:32] + (cvxif_resp_t_CVA6Cfg[255-:32] + (cvxif_resp_t_CVA6Cfg[191-:32] + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4))))) + 1)] = hartid;
		// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:144:5
		cvxif_resp_o[(((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) - 1) - ((((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) - 1) - (cvxif_resp_t_CVA6Cfg[255-:32] + (cvxif_resp_t_CVA6Cfg[191-:32] + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4))))-:((cvxif_resp_t_CVA6Cfg[255-:32] + (cvxif_resp_t_CVA6Cfg[191-:32] + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4))) >= (cvxif_resp_t_CVA6Cfg[191-:32] + (5 + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 0))) ? ((cvxif_resp_t_CVA6Cfg[255-:32] + (cvxif_resp_t_CVA6Cfg[191-:32] + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4))) - (cvxif_resp_t_CVA6Cfg[191-:32] + (5 + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 0)))) + 1 : ((cvxif_resp_t_CVA6Cfg[191-:32] + (5 + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 0))) - (cvxif_resp_t_CVA6Cfg[255-:32] + (cvxif_resp_t_CVA6Cfg[191-:32] + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4)))) + 1)] = id;
		// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:145:5
		cvxif_resp_o[(((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) - 1) - ((((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) - 1) - (cvxif_resp_t_CVA6Cfg[191-:32] + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4)))-:((cvxif_resp_t_CVA6Cfg[191-:32] + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4)) >= (5 + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 0)) ? ((cvxif_resp_t_CVA6Cfg[191-:32] + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4)) - (5 + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 0))) + 1 : ((5 + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 0)) - (cvxif_resp_t_CVA6Cfg[191-:32] + ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4))) + 1)] = result;
		// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:146:5
		cvxif_resp_o[(((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) - 1) - ((((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) - 1) - ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4))-:(((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4) >= ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 0) ? (((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4) - ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 0)) + 1 : (((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 0) - ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) + 4)) + 1)] = rd;
		// Trace: core/cvxif_example/cvxif_example_coprocessor.sv:147:5
		cvxif_resp_o[(((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) - 1) - ((((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) - 1) - ((cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]) - 1))-:(cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])] = we;
	end
	initial _sv2v_0 = 0;
endmodule
