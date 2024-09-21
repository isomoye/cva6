module issue_stage_96801_23E55 (
	clk_i,
	rst_ni,
	sb_full_o,
	flush_unissued_instr_i,
	flush_i,
	stall_i,
	decoded_instr_i,
	orig_instr_i,
	decoded_instr_valid_i,
	is_ctrl_flow_i,
	decoded_instr_ack_o,
	rs1_forwarding_o,
	rs2_forwarding_o,
	fu_data_o,
	pc_o,
	is_compressed_instr_o,
	tinst_o,
	flu_ready_i,
	alu_valid_o,
	resolve_branch_i,
	lsu_ready_i,
	lsu_valid_o,
	branch_valid_o,
	branch_predict_o,
	mult_valid_o,
	fpu_ready_i,
	fpu_valid_o,
	fpu_fmt_o,
	fpu_rm_o,
	alu2_valid_o,
	csr_valid_o,
	xfu_valid_o,
	xfu_ready_i,
	x_off_instr_o,
	hart_id_i,
	x_issue_ready_i,
	x_issue_resp_i,
	x_issue_valid_o,
	x_issue_req_o,
	x_register_ready_i,
	x_register_valid_o,
	x_register_o,
	x_commit_valid_o,
	x_commit_o,
	x_transaction_rejected_o,
	issue_instr_o,
	issue_instr_hs_o,
	trans_id_i,
	resolved_branch_i,
	wbdata_i,
	ex_ex_i,
	wt_valid_i,
	x_we_i,
	x_rd_i,
	waddr_i,
	wdata_i,
	we_gpr_i,
	we_fpr_i,
	commit_instr_o,
	commit_drop_o,
	commit_ack_i,
	stall_issue_o,
	rvfi_issue_pointer_o,
	rvfi_commit_pointer_o
);
	// removed localparam type bp_resolve_t_CVA6Cfg_type
	parameter [17102:0] bp_resolve_t_CVA6Cfg = 0;
	// removed localparam type branchpredict_sbe_t_CVA6Cfg_type
	parameter [17102:0] branchpredict_sbe_t_CVA6Cfg = 0;
	// removed localparam type exception_t_CVA6Cfg_type
	parameter [17102:0] exception_t_CVA6Cfg = 0;
	// removed localparam type fu_data_t_CVA6Cfg_type
	parameter [17102:0] fu_data_t_CVA6Cfg = 0;
	// removed localparam type scoreboard_entry_t_CVA6Cfg_type
	parameter [17102:0] scoreboard_entry_t_CVA6Cfg = 0;
	// removed localparam type x_commit_t_x_commit_t_CVA6Cfg_type
	parameter [17102:0] x_commit_t_x_commit_t_CVA6Cfg = 0;
	// removed localparam type x_issue_req_t_x_issue_req_t_CVA6Cfg_type
	parameter [17102:0] x_issue_req_t_x_issue_req_t_CVA6Cfg = 0;
	// removed localparam type x_issue_resp_t_x_issue_resp_t_CVA6Cfg_type
	parameter [17102:0] x_issue_resp_t_x_issue_resp_t_CVA6Cfg = 0;
	// removed localparam type x_register_t_x_register_t_CVA6Cfg_type
	parameter [17102:0] x_register_t_x_register_t_CVA6Cfg = 0;
	// removed import ariane_pkg::*;
	// Trace: core/issue_stage.sv:20:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/issue_stage.sv:21:20
	// removed localparam type bp_resolve_t
	// Trace: core/issue_stage.sv:22:20
	// removed localparam type branchpredict_sbe_t
	// Trace: core/issue_stage.sv:23:20
	// removed localparam type exception_t
	// Trace: core/issue_stage.sv:24:20
	// removed localparam type fu_data_t
	// Trace: core/issue_stage.sv:25:20
	// removed localparam type scoreboard_entry_t
	// Trace: core/issue_stage.sv:26:20
	// removed localparam type x_issue_req_t
	// Trace: core/issue_stage.sv:27:20
	// removed localparam type x_issue_resp_t
	// Trace: core/issue_stage.sv:28:20
	// removed localparam type x_register_t
	// Trace: core/issue_stage.sv:29:20
	// removed localparam type x_commit_t
	// Trace: core/issue_stage.sv:32:5
	input wire clk_i;
	// Trace: core/issue_stage.sv:34:5
	input wire rst_ni;
	// Trace: core/issue_stage.sv:36:5
	output wire sb_full_o;
	// Trace: core/issue_stage.sv:38:5
	input wire flush_unissued_instr_i;
	// Trace: core/issue_stage.sv:40:5
	input wire flush_i;
	// Trace: core/issue_stage.sv:42:5
	input wire stall_i;
	// Trace: core/issue_stage.sv:44:5
	input wire [((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? (CVA6Cfg[16841-:32] * (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 5)) - 1 : (CVA6Cfg[16841-:32] * (1 - (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4))) + (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 3)):((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? 0 : ((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4)] decoded_instr_i;
	// Trace: core/issue_stage.sv:46:5
	input wire [(CVA6Cfg[16841-:32] * 32) - 1:0] orig_instr_i;
	// Trace: core/issue_stage.sv:48:5
	input wire [CVA6Cfg[16841-:32] - 1:0] decoded_instr_valid_i;
	// Trace: core/issue_stage.sv:50:5
	input wire [CVA6Cfg[16841-:32] - 1:0] is_ctrl_flow_i;
	// Trace: core/issue_stage.sv:52:5
	output wire [CVA6Cfg[16841-:32] - 1:0] decoded_instr_ack_o;
	// Trace: core/issue_stage.sv:54:5
	output wire [(CVA6Cfg[16841-:32] * CVA6Cfg[17070-:32]) - 1:0] rs1_forwarding_o;
	// Trace: core/issue_stage.sv:56:5
	output wire [(CVA6Cfg[16841-:32] * CVA6Cfg[17070-:32]) - 1:0] rs2_forwarding_o;
	// Trace: core/issue_stage.sv:58:5
	output wire [(CVA6Cfg[16841-:32] * ((((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32])) - 1:0] fu_data_o;
	// Trace: core/issue_stage.sv:60:5
	output wire [CVA6Cfg[17070-:32] - 1:0] pc_o;
	// Trace: core/issue_stage.sv:62:5
	output wire is_compressed_instr_o;
	// Trace: core/issue_stage.sv:64:5
	output wire [(CVA6Cfg[16841-:32] * 32) - 1:0] tinst_o;
	// Trace: core/issue_stage.sv:66:5
	input wire flu_ready_i;
	// Trace: core/issue_stage.sv:68:5
	output wire [CVA6Cfg[16841-:32] - 1:0] alu_valid_o;
	// Trace: core/issue_stage.sv:70:5
	input wire resolve_branch_i;
	// Trace: core/issue_stage.sv:72:5
	input wire lsu_ready_i;
	// Trace: core/issue_stage.sv:74:5
	output wire [CVA6Cfg[16841-:32] - 1:0] lsu_valid_o;
	// Trace: core/issue_stage.sv:76:5
	output wire [CVA6Cfg[16841-:32] - 1:0] branch_valid_o;
	// Trace: core/issue_stage.sv:78:5
	output wire [(3 + branchpredict_sbe_t_CVA6Cfg[17070-:32]) - 1:0] branch_predict_o;
	// Trace: core/issue_stage.sv:80:5
	output wire [CVA6Cfg[16841-:32] - 1:0] mult_valid_o;
	// Trace: core/issue_stage.sv:82:5
	input wire fpu_ready_i;
	// Trace: core/issue_stage.sv:84:5
	output wire [CVA6Cfg[16841-:32] - 1:0] fpu_valid_o;
	// Trace: core/issue_stage.sv:86:5
	output wire [1:0] fpu_fmt_o;
	// Trace: core/issue_stage.sv:88:5
	output wire [2:0] fpu_rm_o;
	// Trace: core/issue_stage.sv:90:5
	output wire [CVA6Cfg[16841-:32] - 1:0] alu2_valid_o;
	// Trace: core/issue_stage.sv:92:5
	output wire [CVA6Cfg[16841-:32] - 1:0] csr_valid_o;
	// Trace: core/issue_stage.sv:94:5
	output wire [CVA6Cfg[16841-:32] - 1:0] xfu_valid_o;
	// Trace: core/issue_stage.sv:96:5
	input wire xfu_ready_i;
	// Trace: core/issue_stage.sv:98:5
	output wire [31:0] x_off_instr_o;
	// Trace: core/issue_stage.sv:100:5
	input wire [CVA6Cfg[17102-:32] - 1:0] hart_id_i;
	// Trace: core/issue_stage.sv:102:5
	input wire x_issue_ready_i;
	// Trace: core/issue_stage.sv:103:5
	input wire [((1 + (x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32])) + (x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32])) - 1:0] x_issue_resp_i;
	// Trace: core/issue_stage.sv:104:5
	output wire x_issue_valid_o;
	// Trace: core/issue_stage.sv:105:5
	output wire [((32 + x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32]) + x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32]) - 1:0] x_issue_req_o;
	// Trace: core/issue_stage.sv:107:5
	input wire x_register_ready_i;
	// Trace: core/issue_stage.sv:108:5
	output wire x_register_valid_o;
	// Trace: core/issue_stage.sv:109:5
	output wire [(((x_register_t_x_register_t_CVA6Cfg[127-:32] + x_register_t_x_register_t_CVA6Cfg[255-:32]) + (x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_CVA6Cfg[223-:32])) + (x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_CVA6Cfg[95-:32])) - 1:0] x_register_o;
	// Trace: core/issue_stage.sv:111:5
	output wire x_commit_valid_o;
	// Trace: core/issue_stage.sv:112:5
	output wire [(x_commit_t_x_commit_t_CVA6Cfg[127-:32] + x_commit_t_x_commit_t_CVA6Cfg[255-:32]) + 0:0] x_commit_o;
	// Trace: core/issue_stage.sv:114:5
	output wire x_transaction_rejected_o;
	// Trace: core/issue_stage.sv:116:5
	output wire [((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4:0] issue_instr_o;
	// Trace: core/issue_stage.sv:118:5
	output wire issue_instr_hs_o;
	// Trace: core/issue_stage.sv:120:5
	input wire [(CVA6Cfg[16401-:32] * CVA6Cfg[16503-:32]) - 1:0] trans_id_i;
	// Trace: core/issue_stage.sv:122:5
	input wire [((1 + bp_resolve_t_CVA6Cfg[17070-:32]) + bp_resolve_t_CVA6Cfg[17070-:32]) + 4:0] resolved_branch_i;
	// Trace: core/issue_stage.sv:124:5
	input wire [(CVA6Cfg[16401-:32] * CVA6Cfg[17102-:32]) - 1:0] wbdata_i;
	// Trace: core/issue_stage.sv:126:5
	input wire [((((exception_t_CVA6Cfg[17102-:32] + exception_t_CVA6Cfg[17102-:32]) + exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (CVA6Cfg[16401-:32] * (((exception_t_CVA6Cfg[17102-:32] + exception_t_CVA6Cfg[17102-:32]) + exception_t_CVA6Cfg[17006-:32]) + 34)) - 1 : (CVA6Cfg[16401-:32] * (1 - (((exception_t_CVA6Cfg[17102-:32] + exception_t_CVA6Cfg[17102-:32]) + exception_t_CVA6Cfg[17006-:32]) + 33))) + (((exception_t_CVA6Cfg[17102-:32] + exception_t_CVA6Cfg[17102-:32]) + exception_t_CVA6Cfg[17006-:32]) + 32)):((((exception_t_CVA6Cfg[17102-:32] + exception_t_CVA6Cfg[17102-:32]) + exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 0 : ((exception_t_CVA6Cfg[17102-:32] + exception_t_CVA6Cfg[17102-:32]) + exception_t_CVA6Cfg[17006-:32]) + 33)] ex_ex_i;
	// Trace: core/issue_stage.sv:128:5
	input wire [CVA6Cfg[16401-:32] - 1:0] wt_valid_i;
	// Trace: core/issue_stage.sv:130:5
	input wire x_we_i;
	// Trace: core/issue_stage.sv:132:5
	input wire [4:0] x_rd_i;
	// Trace: core/issue_stage.sv:134:5
	input wire [(CVA6Cfg[16873-:32] * 5) - 1:0] waddr_i;
	// Trace: core/issue_stage.sv:136:5
	input wire [(CVA6Cfg[16873-:32] * CVA6Cfg[17102-:32]) - 1:0] wdata_i;
	// Trace: core/issue_stage.sv:138:5
	input wire [CVA6Cfg[16873-:32] - 1:0] we_gpr_i;
	// Trace: core/issue_stage.sv:140:5
	input wire [CVA6Cfg[16873-:32] - 1:0] we_fpr_i;
	// Trace: core/issue_stage.sv:142:5
	output wire [((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? (CVA6Cfg[16873-:32] * (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 5)) - 1 : (CVA6Cfg[16873-:32] * (1 - (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4))) + (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 3)):((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? 0 : ((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4)] commit_instr_o;
	// Trace: core/issue_stage.sv:144:5
	output wire [CVA6Cfg[16873-:32] - 1:0] commit_drop_o;
	// Trace: core/issue_stage.sv:146:5
	input wire [CVA6Cfg[16873-:32] - 1:0] commit_ack_i;
	// Trace: core/issue_stage.sv:148:5
	output wire stall_issue_o;
	// Trace: core/issue_stage.sv:150:5
	output wire [(CVA6Cfg[16841-:32] * CVA6Cfg[16503-:32]) - 1:0] rvfi_issue_pointer_o;
	// Trace: core/issue_stage.sv:152:5
	output wire [(CVA6Cfg[16873-:32] * CVA6Cfg[16503-:32]) - 1:0] rvfi_commit_pointer_o;
	// Trace: core/issue_stage.sv:157:3
	// removed localparam type rs3_len_t
	// Trace: core/issue_stage.sv:159:3
	localparam ariane_pkg_REG_ADDR_SIZE = 5;
	// removed localparam type ariane_pkg_fu_t
	wire [127:0] rd_clobber_gpr_sb_iro;
	// Trace: core/issue_stage.sv:160:3
	wire [127:0] rd_clobber_fpr_sb_iro;
	// Trace: core/issue_stage.sv:162:3
	wire [(CVA6Cfg[16841-:32] * 5) - 1:0] rs1_iro_sb;
	// Trace: core/issue_stage.sv:163:3
	wire [(CVA6Cfg[16841-:32] * CVA6Cfg[17102-:32]) - 1:0] rs1_sb_iro;
	// Trace: core/issue_stage.sv:164:3
	wire [CVA6Cfg[16841-:32] - 1:0] rs1_valid_sb_iro;
	// Trace: core/issue_stage.sv:166:3
	wire [(CVA6Cfg[16841-:32] * 5) - 1:0] rs2_iro_sb;
	// Trace: core/issue_stage.sv:167:3
	wire [(CVA6Cfg[16841-:32] * CVA6Cfg[17102-:32]) - 1:0] rs2_sb_iro;
	// Trace: core/issue_stage.sv:168:3
	wire [CVA6Cfg[16841-:32] - 1:0] rs2_valid_iro_sb;
	// Trace: core/issue_stage.sv:170:3
	wire [(CVA6Cfg[16841-:32] * 5) - 1:0] rs3_iro_sb;
	// Trace: core/issue_stage.sv:171:3
	wire [(CVA6Cfg[16841-:32] * (CVA6Cfg[16433-:32] == 3 ? CVA6Cfg[17102-:32] : CVA6Cfg[16469-:32])) - 1:0] rs3_sb_iro;
	// Trace: core/issue_stage.sv:172:3
	wire [CVA6Cfg[16841-:32] - 1:0] rs3_valid_iro_sb;
	// Trace: core/issue_stage.sv:174:3
	wire [((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? (CVA6Cfg[16841-:32] * (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 5)) - 1 : (CVA6Cfg[16841-:32] * (1 - (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4))) + (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 3)):((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? 0 : ((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4)] issue_instr_sb_iro;
	// Trace: core/issue_stage.sv:175:3
	wire [(CVA6Cfg[16841-:32] * 32) - 1:0] orig_instr_sb_iro;
	// Trace: core/issue_stage.sv:176:3
	wire [CVA6Cfg[16841-:32] - 1:0] issue_instr_valid_sb_iro;
	// Trace: core/issue_stage.sv:177:3
	wire [CVA6Cfg[16841-:32] - 1:0] issue_ack_iro_sb;
	// Trace: core/issue_stage.sv:179:3
	wire [(CVA6Cfg[16841-:32] * CVA6Cfg[17102-:32]) - 1:0] rs1_forwarding_xlen;
	// Trace: core/issue_stage.sv:180:3
	wire [(CVA6Cfg[16841-:32] * CVA6Cfg[17102-:32]) - 1:0] rs2_forwarding_xlen;
	// Trace: core/issue_stage.sv:182:3
	genvar _gv_i_33;
	generate
		for (_gv_i_33 = 0; _gv_i_33 < CVA6Cfg[16841-:32]; _gv_i_33 = _gv_i_33 + 1) begin : genblk1
			localparam i = _gv_i_33;
			// Trace: core/issue_stage.sv:183:5
			assign rs1_forwarding_o[i * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = rs1_forwarding_xlen[(i * CVA6Cfg[17102-:32]) + (CVA6Cfg[17070-:32] - 1)-:CVA6Cfg[17070-:32]];
			// Trace: core/issue_stage.sv:184:5
			assign rs2_forwarding_o[i * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = rs2_forwarding_xlen[(i * CVA6Cfg[17102-:32]) + (CVA6Cfg[17070-:32] - 1)-:CVA6Cfg[17070-:32]];
		end
	endgenerate
	// Trace: core/issue_stage.sv:187:3
	assign issue_instr_o = issue_instr_sb_iro[((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? 0 : ((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) + 0+:((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? ((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 5 : 1 - (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4))];
	// Trace: core/issue_stage.sv:188:3
	assign issue_instr_hs_o = issue_instr_valid_sb_iro[0] & issue_ack_iro_sb[0];
	// Trace: core/issue_stage.sv:190:3
	wire x_transaction_accepted_iro_sb;
	wire x_issue_writeback_iro_sb;
	// Trace: core/issue_stage.sv:191:3
	wire [CVA6Cfg[16503-:32] - 1:0] x_id_iro_sb;
	// Trace: core/issue_stage.sv:197:3
	scoreboard_20CF9_053D6 #(
		.bp_resolve_t_bp_resolve_t_CVA6Cfg(bp_resolve_t_CVA6Cfg),
		.exception_t_exception_t_CVA6Cfg(exception_t_CVA6Cfg),
		.rs3_len_t_CVA6Cfg(CVA6Cfg),
		.scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg(scoreboard_entry_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) i_scoreboard(
		.sb_full_o(sb_full_o),
		.rd_clobber_gpr_o(rd_clobber_gpr_sb_iro),
		.rd_clobber_fpr_o(rd_clobber_fpr_sb_iro),
		.x_transaction_accepted_i(x_transaction_accepted_iro_sb),
		.x_issue_writeback_i(x_issue_writeback_iro_sb),
		.x_id_i(x_id_iro_sb),
		.rs1_i(rs1_iro_sb),
		.rs1_o(rs1_sb_iro),
		.rs1_valid_o(rs1_valid_sb_iro),
		.rs2_i(rs2_iro_sb),
		.rs2_o(rs2_sb_iro),
		.rs2_valid_o(rs2_valid_iro_sb),
		.rs3_i(rs3_iro_sb),
		.rs3_o(rs3_sb_iro),
		.rs3_valid_o(rs3_valid_iro_sb),
		.decoded_instr_i(decoded_instr_i),
		.decoded_instr_valid_i(decoded_instr_valid_i),
		.decoded_instr_ack_o(decoded_instr_ack_o),
		.issue_instr_o(issue_instr_sb_iro),
		.orig_instr_o(orig_instr_sb_iro),
		.issue_instr_valid_o(issue_instr_valid_sb_iro),
		.issue_ack_i(issue_ack_iro_sb),
		.resolved_branch_i(resolved_branch_i),
		.trans_id_i(trans_id_i),
		.wbdata_i(wbdata_i),
		.ex_i(ex_ex_i),
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_unissued_instr_i(flush_unissued_instr_i),
		.flush_i(flush_i),
		.commit_instr_o(commit_instr_o),
		.commit_drop_o(commit_drop_o),
		.commit_ack_i(commit_ack_i),
		.orig_instr_i(orig_instr_i),
		.wt_valid_i(wt_valid_i),
		.x_we_i(x_we_i),
		.x_rd_i(x_rd_i),
		.rvfi_issue_pointer_o(rvfi_issue_pointer_o),
		.rvfi_commit_pointer_o(rvfi_commit_pointer_o)
	);
	// Trace: core/issue_stage.sv:238:3
	issue_read_operands_C2BA9_BE966 #(
		.branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg(branchpredict_sbe_t_CVA6Cfg),
		.fu_data_t_fu_data_t_CVA6Cfg(fu_data_t_CVA6Cfg),
		.rs3_len_t_CVA6Cfg(CVA6Cfg),
		.scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg(scoreboard_entry_t_CVA6Cfg),
		.x_commit_t_x_commit_t_x_commit_t_CVA6Cfg(x_commit_t_x_commit_t_CVA6Cfg),
		.x_issue_req_t_x_issue_req_t_x_issue_req_t_CVA6Cfg(x_issue_req_t_x_issue_req_t_CVA6Cfg),
		.x_issue_resp_t_x_issue_resp_t_x_issue_resp_t_CVA6Cfg(x_issue_resp_t_x_issue_resp_t_CVA6Cfg),
		.x_register_t_x_register_t_x_register_t_CVA6Cfg(x_register_t_x_register_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) i_issue_read_operands(
		.flush_i(flush_unissued_instr_i),
		.issue_instr_i(issue_instr_sb_iro),
		.orig_instr_i(orig_instr_sb_iro),
		.issue_instr_valid_i(issue_instr_valid_sb_iro),
		.issue_ack_o(issue_ack_iro_sb),
		.fu_data_o(fu_data_o),
		.flu_ready_i(flu_ready_i),
		.rs1_o(rs1_iro_sb),
		.rs1_i(rs1_sb_iro),
		.rs1_valid_i(rs1_valid_sb_iro),
		.rs2_o(rs2_iro_sb),
		.rs2_i(rs2_sb_iro),
		.rs2_valid_i(rs2_valid_iro_sb),
		.rs3_o(rs3_iro_sb),
		.rs3_i(rs3_sb_iro),
		.rs3_valid_i(rs3_valid_iro_sb),
		.rd_clobber_gpr_i(rd_clobber_gpr_sb_iro),
		.rd_clobber_fpr_i(rd_clobber_fpr_sb_iro),
		.alu_valid_o(alu_valid_o),
		.alu2_valid_o(alu2_valid_o),
		.branch_valid_o(branch_valid_o),
		.csr_valid_o(csr_valid_o),
		.cvxif_valid_o(xfu_valid_o),
		.cvxif_ready_i(xfu_ready_i),
		.hart_id_i(hart_id_i),
		.x_issue_ready_i(x_issue_ready_i),
		.x_issue_resp_i(x_issue_resp_i),
		.x_issue_valid_o(x_issue_valid_o),
		.x_issue_req_o(x_issue_req_o),
		.x_register_ready_i(x_register_ready_i),
		.x_register_valid_o(x_register_valid_o),
		.x_register_o(x_register_o),
		.x_commit_valid_o(x_commit_valid_o),
		.x_commit_o(x_commit_o),
		.x_transaction_accepted_o(x_transaction_accepted_iro_sb),
		.x_transaction_rejected_o(x_transaction_rejected_o),
		.x_issue_writeback_o(x_issue_writeback_iro_sb),
		.x_id_o(x_id_iro_sb),
		.cvxif_off_instr_o(x_off_instr_o),
		.mult_valid_o(mult_valid_o),
		.rs1_forwarding_o(rs1_forwarding_xlen),
		.rs2_forwarding_o(rs2_forwarding_xlen),
		.stall_issue_o(stall_issue_o),
		.tinst_o(tinst_o),
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.stall_i(stall_i),
		.pc_o(pc_o),
		.is_compressed_instr_o(is_compressed_instr_o),
		.branch_predict_o(branch_predict_o),
		.lsu_ready_i(lsu_ready_i),
		.lsu_valid_o(lsu_valid_o),
		.fpu_ready_i(fpu_ready_i),
		.fpu_valid_o(fpu_valid_o),
		.fpu_fmt_o(fpu_fmt_o),
		.fpu_rm_o(fpu_rm_o),
		.waddr_i(waddr_i),
		.wdata_i(wdata_i),
		.we_gpr_i(we_gpr_i),
		.we_fpr_i(we_fpr_i)
	);
endmodule
