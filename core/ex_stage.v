module ex_stage_F40F2_C6BD8 (
	clk_i,
	rst_ni,
	flush_i,
	debug_mode_i,
	rs1_forwarding_i,
	rs2_forwarding_i,
	fu_data_i,
	pc_i,
	is_compressed_instr_i,
	tinst_i,
	flu_result_o,
	flu_trans_id_o,
	flu_exception_o,
	flu_ready_o,
	flu_valid_o,
	alu_valid_i,
	branch_valid_i,
	branch_predict_i,
	resolved_branch_o,
	resolve_branch_o,
	csr_valid_i,
	csr_addr_o,
	csr_commit_i,
	mult_valid_i,
	lsu_ready_o,
	lsu_valid_i,
	load_valid_o,
	load_result_o,
	load_trans_id_o,
	load_exception_o,
	store_valid_o,
	store_result_o,
	store_trans_id_o,
	store_exception_o,
	lsu_commit_i,
	lsu_commit_ready_o,
	commit_tran_id_i,
	stall_st_pending_i,
	no_st_pending_o,
	amo_valid_commit_i,
	fpu_ready_o,
	fpu_valid_i,
	fpu_fmt_i,
	fpu_rm_i,
	fpu_frm_i,
	fpu_prec_i,
	fpu_trans_id_o,
	fpu_result_o,
	fpu_valid_o,
	fpu_exception_o,
	alu2_valid_i,
	x_valid_i,
	x_ready_o,
	x_off_instr_i,
	x_trans_id_o,
	x_exception_o,
	x_result_o,
	x_valid_o,
	x_we_o,
	x_rd_o,
	x_result_valid_i,
	x_result_i,
	x_result_ready_o,
	x_transaction_rejected_i,
	acc_valid_i,
	enable_translation_i,
	enable_g_translation_i,
	en_ld_st_translation_i,
	en_ld_st_g_translation_i,
	flush_tlb_i,
	flush_tlb_vvma_i,
	flush_tlb_gvma_i,
	priv_lvl_i,
	v_i,
	ld_st_priv_lvl_i,
	ld_st_v_i,
	csr_hs_ld_st_inst_o,
	sum_i,
	vs_sum_i,
	mxr_i,
	vmxr_i,
	satp_ppn_i,
	asid_i,
	vsatp_ppn_i,
	vs_asid_i,
	hgatp_ppn_i,
	vmid_i,
	icache_areq_i,
	icache_areq_o,
	dcache_req_ports_i,
	dcache_req_ports_o,
	dcache_wbuffer_empty_i,
	dcache_wbuffer_not_ni_i,
	amo_req_o,
	amo_resp_i,
	itlb_miss_o,
	dtlb_miss_o,
	pmpcfg_i,
	pmpaddr_i,
	rvfi_lsu_ctrl_o,
	rvfi_mem_paddr_o,
	c3_enable_i
);
	// removed localparam type bp_resolve_t_CVA6Cfg_type
	parameter [17102:0] bp_resolve_t_CVA6Cfg = 0;
	// removed localparam type branchpredict_sbe_t_CVA6Cfg_type
	parameter [17102:0] branchpredict_sbe_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_i_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_i_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_o_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_o_t_CVA6Cfg = 0;
	// removed localparam type exception_t_CVA6Cfg_type
	parameter [17102:0] exception_t_CVA6Cfg = 0;
	// removed localparam type fu_data_t_CVA6Cfg_type
	parameter [17102:0] fu_data_t_CVA6Cfg = 0;
	// removed localparam type icache_areq_t_CVA6Cfg_type
	parameter [17102:0] icache_areq_t_CVA6Cfg = 0;
	// removed localparam type icache_arsp_t_CVA6Cfg_type
	parameter [17102:0] icache_arsp_t_CVA6Cfg = 0;
	// removed localparam type icache_dreq_t_CVA6Cfg_type
	parameter [17102:0] icache_dreq_t_CVA6Cfg = 0;
	// removed localparam type icache_drsp_t_CVA6Cfg_type
	parameter [17102:0] icache_drsp_t_CVA6Cfg = 0;
	// removed localparam type lsu_ctrl_t_CVA6Cfg_type
	parameter [17102:0] lsu_ctrl_t_CVA6Cfg = 0;
	// removed localparam type x_result_t_x_result_t_CVA6Cfg_type
	parameter [17102:0] x_result_t_x_result_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/ex_stage.sv:20:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/ex_stage.sv:21:20
	// removed localparam type bp_resolve_t
	// Trace: core/ex_stage.sv:22:20
	// removed localparam type branchpredict_sbe_t
	// Trace: core/ex_stage.sv:23:20
	// removed localparam type dcache_req_i_t
	// Trace: core/ex_stage.sv:24:20
	// removed localparam type dcache_req_o_t
	// Trace: core/ex_stage.sv:25:20
	// removed localparam type exception_t
	// Trace: core/ex_stage.sv:26:20
	// removed localparam type fu_data_t
	// Trace: core/ex_stage.sv:27:20
	// removed localparam type icache_areq_t
	// Trace: core/ex_stage.sv:28:20
	// removed localparam type icache_arsp_t
	// Trace: core/ex_stage.sv:29:20
	// removed localparam type icache_dreq_t
	// Trace: core/ex_stage.sv:30:20
	// removed localparam type icache_drsp_t
	// Trace: core/ex_stage.sv:31:20
	// removed localparam type lsu_ctrl_t
	// Trace: core/ex_stage.sv:32:20
	// removed localparam type x_result_t
	// Trace: core/ex_stage.sv:35:5
	input wire clk_i;
	// Trace: core/ex_stage.sv:37:5
	input wire rst_ni;
	// Trace: core/ex_stage.sv:39:5
	input wire flush_i;
	// Trace: core/ex_stage.sv:41:5
	input wire debug_mode_i;
	// Trace: core/ex_stage.sv:43:5
	input wire [(CVA6Cfg[16841-:32] * CVA6Cfg[17070-:32]) - 1:0] rs1_forwarding_i;
	// Trace: core/ex_stage.sv:45:5
	input wire [(CVA6Cfg[16841-:32] * CVA6Cfg[17070-:32]) - 1:0] rs2_forwarding_i;
	// Trace: core/ex_stage.sv:47:5
	input wire [(CVA6Cfg[16841-:32] * ((((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32])) - 1:0] fu_data_i;
	// Trace: core/ex_stage.sv:49:5
	input wire [CVA6Cfg[17070-:32] - 1:0] pc_i;
	// Trace: core/ex_stage.sv:51:5
	input wire is_compressed_instr_i;
	// Trace: core/ex_stage.sv:53:5
	input wire [(CVA6Cfg[16841-:32] * 32) - 1:0] tinst_i;
	// Trace: core/ex_stage.sv:55:5
	output reg [CVA6Cfg[17102-:32] - 1:0] flu_result_o;
	// Trace: core/ex_stage.sv:57:5
	output reg [CVA6Cfg[16503-:32] - 1:0] flu_trans_id_o;
	// Trace: core/ex_stage.sv:59:5
	output wire [((exception_t_CVA6Cfg[17102-:32] + exception_t_CVA6Cfg[17102-:32]) + exception_t_CVA6Cfg[17006-:32]) + 33:0] flu_exception_o;
	// Trace: core/ex_stage.sv:61:5
	output reg flu_ready_o;
	// Trace: core/ex_stage.sv:63:5
	output wire flu_valid_o;
	// Trace: core/ex_stage.sv:65:5
	input wire [CVA6Cfg[16841-:32] - 1:0] alu_valid_i;
	// Trace: core/ex_stage.sv:67:5
	input wire [CVA6Cfg[16841-:32] - 1:0] branch_valid_i;
	// Trace: core/ex_stage.sv:69:5
	input wire [(3 + branchpredict_sbe_t_CVA6Cfg[17070-:32]) - 1:0] branch_predict_i;
	// Trace: core/ex_stage.sv:71:5
	output wire [((1 + bp_resolve_t_CVA6Cfg[17070-:32]) + bp_resolve_t_CVA6Cfg[17070-:32]) + 4:0] resolved_branch_o;
	// Trace: core/ex_stage.sv:73:5
	output wire resolve_branch_o;
	// Trace: core/ex_stage.sv:75:5
	input wire [CVA6Cfg[16841-:32] - 1:0] csr_valid_i;
	// Trace: core/ex_stage.sv:77:5
	output wire [11:0] csr_addr_o;
	// Trace: core/ex_stage.sv:79:5
	input wire csr_commit_i;
	// Trace: core/ex_stage.sv:81:5
	input wire [CVA6Cfg[16841-:32] - 1:0] mult_valid_i;
	// Trace: core/ex_stage.sv:83:5
	output wire lsu_ready_o;
	// Trace: core/ex_stage.sv:85:5
	input wire [CVA6Cfg[16841-:32] - 1:0] lsu_valid_i;
	// Trace: core/ex_stage.sv:87:5
	output wire load_valid_o;
	// Trace: core/ex_stage.sv:89:5
	output wire [CVA6Cfg[17102-:32] - 1:0] load_result_o;
	// Trace: core/ex_stage.sv:91:5
	output wire [CVA6Cfg[16503-:32] - 1:0] load_trans_id_o;
	// Trace: core/ex_stage.sv:93:5
	output wire [((exception_t_CVA6Cfg[17102-:32] + exception_t_CVA6Cfg[17102-:32]) + exception_t_CVA6Cfg[17006-:32]) + 33:0] load_exception_o;
	// Trace: core/ex_stage.sv:95:5
	output wire store_valid_o;
	// Trace: core/ex_stage.sv:97:5
	output wire [CVA6Cfg[17102-:32] - 1:0] store_result_o;
	// Trace: core/ex_stage.sv:99:5
	output wire [CVA6Cfg[16503-:32] - 1:0] store_trans_id_o;
	// Trace: core/ex_stage.sv:101:5
	output wire [((exception_t_CVA6Cfg[17102-:32] + exception_t_CVA6Cfg[17102-:32]) + exception_t_CVA6Cfg[17006-:32]) + 33:0] store_exception_o;
	// Trace: core/ex_stage.sv:103:5
	input wire lsu_commit_i;
	// Trace: core/ex_stage.sv:105:5
	output wire lsu_commit_ready_o;
	// Trace: core/ex_stage.sv:107:5
	input wire [CVA6Cfg[16503-:32] - 1:0] commit_tran_id_i;
	// Trace: core/ex_stage.sv:109:5
	input wire stall_st_pending_i;
	// Trace: core/ex_stage.sv:111:5
	output wire no_st_pending_o;
	// Trace: core/ex_stage.sv:113:5
	input wire amo_valid_commit_i;
	// Trace: core/ex_stage.sv:115:5
	output wire fpu_ready_o;
	// Trace: core/ex_stage.sv:117:5
	input wire [CVA6Cfg[16841-:32] - 1:0] fpu_valid_i;
	// Trace: core/ex_stage.sv:119:5
	input wire [1:0] fpu_fmt_i;
	// Trace: core/ex_stage.sv:121:5
	input wire [2:0] fpu_rm_i;
	// Trace: core/ex_stage.sv:123:5
	input wire [2:0] fpu_frm_i;
	// Trace: core/ex_stage.sv:125:5
	input wire [6:0] fpu_prec_i;
	// Trace: core/ex_stage.sv:127:5
	output wire [CVA6Cfg[16503-:32] - 1:0] fpu_trans_id_o;
	// Trace: core/ex_stage.sv:129:5
	output wire [CVA6Cfg[17102-:32] - 1:0] fpu_result_o;
	// Trace: core/ex_stage.sv:131:5
	output wire fpu_valid_o;
	// Trace: core/ex_stage.sv:133:5
	output wire [((exception_t_CVA6Cfg[17102-:32] + exception_t_CVA6Cfg[17102-:32]) + exception_t_CVA6Cfg[17006-:32]) + 33:0] fpu_exception_o;
	// Trace: core/ex_stage.sv:135:5
	input wire [CVA6Cfg[16841-:32] - 1:0] alu2_valid_i;
	// Trace: core/ex_stage.sv:137:5
	input wire [CVA6Cfg[16841-:32] - 1:0] x_valid_i;
	// Trace: core/ex_stage.sv:139:5
	output wire x_ready_o;
	// Trace: core/ex_stage.sv:141:5
	input wire [31:0] x_off_instr_i;
	// Trace: core/ex_stage.sv:143:5
	output wire [CVA6Cfg[16503-:32] - 1:0] x_trans_id_o;
	// Trace: core/ex_stage.sv:145:5
	output wire [((exception_t_CVA6Cfg[17102-:32] + exception_t_CVA6Cfg[17102-:32]) + exception_t_CVA6Cfg[17006-:32]) + 33:0] x_exception_o;
	// Trace: core/ex_stage.sv:147:5
	output wire [CVA6Cfg[17102-:32] - 1:0] x_result_o;
	// Trace: core/ex_stage.sv:149:5
	output wire x_valid_o;
	// Trace: core/ex_stage.sv:151:5
	output wire x_we_o;
	// Trace: core/ex_stage.sv:153:5
	output wire [4:0] x_rd_o;
	// Trace: core/ex_stage.sv:155:5
	input wire x_result_valid_i;
	// Trace: core/ex_stage.sv:156:5
	input wire [((((x_result_t_x_result_t_CVA6Cfg[127-:32] + x_result_t_x_result_t_CVA6Cfg[255-:32]) + x_result_t_x_result_t_CVA6Cfg[191-:32]) + 5) + (x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_CVA6Cfg[63-:32])) - 1:0] x_result_i;
	// Trace: core/ex_stage.sv:157:5
	output wire x_result_ready_o;
	// Trace: core/ex_stage.sv:159:5
	input wire x_transaction_rejected_i;
	// Trace: core/ex_stage.sv:161:5
	input wire acc_valid_i;
	// Trace: core/ex_stage.sv:163:5
	input wire enable_translation_i;
	// Trace: core/ex_stage.sv:165:5
	input wire enable_g_translation_i;
	// Trace: core/ex_stage.sv:167:5
	input wire en_ld_st_translation_i;
	// Trace: core/ex_stage.sv:169:5
	input wire en_ld_st_g_translation_i;
	// Trace: core/ex_stage.sv:171:5
	input wire flush_tlb_i;
	// Trace: core/ex_stage.sv:172:5
	input wire flush_tlb_vvma_i;
	// Trace: core/ex_stage.sv:173:5
	input wire flush_tlb_gvma_i;
	// Trace: core/ex_stage.sv:175:5
	// removed localparam type riscv_priv_lvl_t
	input wire [1:0] priv_lvl_i;
	// Trace: core/ex_stage.sv:177:5
	input wire v_i;
	// Trace: core/ex_stage.sv:179:5
	input wire [1:0] ld_st_priv_lvl_i;
	// Trace: core/ex_stage.sv:181:5
	input wire ld_st_v_i;
	// Trace: core/ex_stage.sv:183:5
	output wire csr_hs_ld_st_inst_o;
	// Trace: core/ex_stage.sv:185:5
	input wire sum_i;
	// Trace: core/ex_stage.sv:187:5
	input wire vs_sum_i;
	// Trace: core/ex_stage.sv:189:5
	input wire mxr_i;
	// Trace: core/ex_stage.sv:191:5
	input wire vmxr_i;
	// Trace: core/ex_stage.sv:193:5
	input wire [CVA6Cfg[419-:32] - 1:0] satp_ppn_i;
	// Trace: core/ex_stage.sv:195:5
	input wire [CVA6Cfg[16940-:32] - 1:0] asid_i;
	// Trace: core/ex_stage.sv:197:5
	input wire [CVA6Cfg[419-:32] - 1:0] vsatp_ppn_i;
	// Trace: core/ex_stage.sv:199:5
	input wire [CVA6Cfg[16940-:32] - 1:0] vs_asid_i;
	// Trace: core/ex_stage.sv:201:5
	input wire [CVA6Cfg[419-:32] - 1:0] hgatp_ppn_i;
	// Trace: core/ex_stage.sv:203:5
	input wire [CVA6Cfg[16908-:32] - 1:0] vmid_i;
	// Trace: core/ex_stage.sv:205:5
	input wire [(1 + icache_arsp_t_CVA6Cfg[17070-:32]) - 1:0] icache_areq_i;
	// Trace: core/ex_stage.sv:207:5
	output wire [((1 + icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] icache_areq_o;
	// Trace: core/ex_stage.sv:209:5
	input wire [(3 * (((2 + dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_CVA6Cfg[900-:32])) - 1:0] dcache_req_ports_i;
	// Trace: core/ex_stage.sv:211:5
	output wire [(((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (3 * ((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 2)) - 1 : (3 * (1 - ((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))) + ((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 0)):(((((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)] dcache_req_ports_o;
	// Trace: core/ex_stage.sv:213:5
	input wire dcache_wbuffer_empty_i;
	// Trace: core/ex_stage.sv:215:5
	input wire dcache_wbuffer_not_ni_i;
	// Trace: core/ex_stage.sv:217:5
	// removed localparam type ariane_pkg_amo_t
	// removed localparam type ariane_pkg_amo_req_t
	output wire [134:0] amo_req_o;
	// Trace: core/ex_stage.sv:219:5
	// removed localparam type ariane_pkg_amo_resp_t
	input wire [64:0] amo_resp_i;
	// Trace: core/ex_stage.sv:221:5
	output wire itlb_miss_o;
	// Trace: core/ex_stage.sv:223:5
	output wire dtlb_miss_o;
	// Trace: core/ex_stage.sv:225:5
	// removed localparam type riscv_pmp_addr_mode_t
	// removed localparam type riscv_pmpcfg_access_t
	// removed localparam type riscv_pmpcfg_t
	input wire [(CVA6Cfg[15913-:32] * 8) - 1:0] pmpcfg_i;
	// Trace: core/ex_stage.sv:227:5
	input wire [((CVA6Cfg[17038-:32] - 3) >= 0 ? (CVA6Cfg[15913-:32] * (CVA6Cfg[17038-:32] - 2)) - 1 : (CVA6Cfg[15913-:32] * (4 - CVA6Cfg[17038-:32])) + (CVA6Cfg[17038-:32] - 4)):((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3)] pmpaddr_i;
	// Trace: core/ex_stage.sv:229:5
	output wire [((((((1 + lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_CVA6Cfg[16503-:32]) - 1:0] rvfi_lsu_ctrl_o;
	// Trace: core/ex_stage.sv:231:5
	output wire [CVA6Cfg[17038-:32] - 1:0] rvfi_mem_paddr_o;
	// Trace: core/ex_stage.sv:233:5
	input wire c3_enable_i;
	// Trace: core/ex_stage.sv:257:3
	reg current_instruction_is_sfence_vma;
	// Trace: core/ex_stage.sv:258:3
	reg current_instruction_is_hfence_vvma;
	// Trace: core/ex_stage.sv:259:3
	reg current_instruction_is_hfence_gvma;
	// Trace: core/ex_stage.sv:262:3
	reg [CVA6Cfg[16908-:32] - 1:0] vmid_to_be_flushed;
	// Trace: core/ex_stage.sv:263:3
	reg [CVA6Cfg[16940-:32] - 1:0] asid_to_be_flushed;
	// Trace: core/ex_stage.sv:264:3
	reg [CVA6Cfg[17070-:32] - 1:0] vaddr_to_be_flushed;
	// Trace: core/ex_stage.sv:265:3
	reg [CVA6Cfg[17006-:32] - 1:0] gpaddr_to_be_flushed;
	// Trace: core/ex_stage.sv:268:3
	wire alu_branch_res;
	// Trace: core/ex_stage.sv:269:3
	wire [CVA6Cfg[17102-:32] - 1:0] alu_result;
	wire [CVA6Cfg[17102-:32] - 1:0] csr_result;
	wire [CVA6Cfg[17102-:32] - 1:0] mult_result;
	// Trace: core/ex_stage.sv:270:3
	wire [CVA6Cfg[17070-:32] - 1:0] branch_result;
	// Trace: core/ex_stage.sv:271:3
	wire csr_ready;
	wire mult_ready;
	// Trace: core/ex_stage.sv:272:3
	wire [CVA6Cfg[16503-:32] - 1:0] mult_trans_id;
	// Trace: core/ex_stage.sv:273:3
	wire mult_valid;
	// Trace: core/ex_stage.sv:275:3
	wire [CVA6Cfg[16841-:32] - 1:0] one_cycle_select;
	// Trace: core/ex_stage.sv:276:3
	assign one_cycle_select = (alu_valid_i | branch_valid_i) | csr_valid_i;
	// Trace: core/ex_stage.sv:278:3
	reg [((((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]) - 1:0] one_cycle_data;
	// Trace: core/ex_stage.sv:279:3
	reg [CVA6Cfg[17070-:32] - 1:0] rs1_forwarding;
	// Trace: core/ex_stage.sv:280:3
	reg [CVA6Cfg[17070-:32] - 1:0] rs2_forwarding;
	// Trace: core/ex_stage.sv:281:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/ex_stage.sv:283:5
		one_cycle_data = (one_cycle_select[0] ? fu_data_i[0+:(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]] : {(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32] {1'sb0}});
		// Trace: core/ex_stage.sv:284:5
		rs1_forwarding = rs1_forwarding_i[0+:CVA6Cfg[17070-:32]];
		// Trace: core/ex_stage.sv:285:5
		rs2_forwarding = rs2_forwarding_i[0+:CVA6Cfg[17070-:32]];
		// Trace: core/ex_stage.sv:287:5
		if (CVA6Cfg[16874]) begin
			begin
				// Trace: core/ex_stage.sv:288:7
				if (one_cycle_select[1]) begin
					// Trace: core/ex_stage.sv:289:9
					one_cycle_data = fu_data_i[(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]+:(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]];
					// Trace: core/ex_stage.sv:290:9
					rs1_forwarding = rs1_forwarding_i[CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
					// Trace: core/ex_stage.sv:291:9
					rs2_forwarding = rs2_forwarding_i[CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
				end
			end
		end
	end
	// Trace: core/ex_stage.sv:297:3
	alu_4BFF1_9AA73 #(
		.fu_data_t_fu_data_t_CVA6Cfg(fu_data_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) alu_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.fu_data_i(one_cycle_data),
		.result_o(alu_result),
		.alu_branch_res_o(alu_branch_res)
	);
	// Trace: core/ex_stage.sv:311:3
	branch_unit_FFB66_4F10C #(
		.bp_resolve_t_bp_resolve_t_CVA6Cfg(bp_resolve_t_CVA6Cfg),
		.branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg(branchpredict_sbe_t_CVA6Cfg),
		.exception_t_exception_t_CVA6Cfg(exception_t_CVA6Cfg),
		.fu_data_t_fu_data_t_CVA6Cfg(fu_data_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) branch_unit_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.v_i(v_i),
		.debug_mode_i(debug_mode_i),
		.fu_data_i(one_cycle_data),
		.pc_i(pc_i),
		.is_compressed_instr_i(is_compressed_instr_i),
		.branch_valid_i(|branch_valid_i),
		.branch_comp_res_i(alu_branch_res),
		.branch_result_o(branch_result),
		.branch_predict_i(branch_predict_i),
		.resolved_branch_o(resolved_branch_o),
		.resolve_branch_o(resolve_branch_o),
		.branch_exception_o(flu_exception_o)
	);
	// Trace: core/ex_stage.sv:335:3
	csr_buffer_18CED_ECF93 #(
		.fu_data_t_fu_data_t_CVA6Cfg(fu_data_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) csr_buffer_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i),
		.fu_data_i(one_cycle_data),
		.csr_valid_i(|csr_valid_i),
		.csr_ready_o(csr_ready),
		.csr_result_o(csr_result),
		.csr_commit_i(csr_commit_i),
		.csr_addr_o(csr_addr_o)
	);
	// Trace: core/ex_stage.sv:350:3
	assign flu_valid_o = |one_cycle_select | mult_valid;
	// Trace: core/ex_stage.sv:353:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/ex_stage.sv:355:5
		flu_result_o = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {1'b0}}, branch_result};
		// Trace: core/ex_stage.sv:356:5
		flu_trans_id_o = one_cycle_data[fu_data_t_CVA6Cfg[16503-:32] - 1-:fu_data_t_CVA6Cfg[16503-:32]];
		// Trace: core/ex_stage.sv:358:5
		if (|alu_valid_i)
			// Trace: core/ex_stage.sv:359:7
			flu_result_o = alu_result;
		else if (|csr_valid_i)
			// Trace: core/ex_stage.sv:362:7
			flu_result_o = csr_result;
		else if (mult_valid) begin
			// Trace: core/ex_stage.sv:364:7
			flu_result_o = mult_result;
			// Trace: core/ex_stage.sv:365:7
			flu_trans_id_o = mult_trans_id;
		end
	end
	// Trace: core/ex_stage.sv:370:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/ex_stage.sv:371:5
		flu_ready_o = csr_ready & mult_ready;
	end
	// Trace: core/ex_stage.sv:375:3
	reg [((((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]) - 1:0] mult_data;
	// Trace: core/ex_stage.sv:377:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/ex_stage.sv:378:5
		mult_data = (mult_valid_i[0] ? fu_data_i[0+:(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]] : {(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32] {1'sb0}});
		// Trace: core/ex_stage.sv:379:5
		if (CVA6Cfg[16874]) begin
			begin
				// Trace: core/ex_stage.sv:380:7
				if (mult_valid_i[1])
					// Trace: core/ex_stage.sv:381:9
					mult_data = fu_data_i[(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]+:(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]];
			end
		end
	end
	// Trace: core/ex_stage.sv:386:3
	mult_69FEA_E3F06 #(
		.fu_data_t_fu_data_t_CVA6Cfg(fu_data_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) i_mult(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i),
		.mult_valid_i(|mult_valid_i),
		.fu_data_i(mult_data),
		.result_o(mult_result),
		.mult_valid_o(mult_valid),
		.mult_ready_o(mult_ready),
		.mult_trans_id_o(mult_trans_id)
	);
	// Trace: core/ex_stage.sv:404:3
	wire fpu_valid;
	// Trace: core/ex_stage.sv:405:3
	wire [CVA6Cfg[16503-:32] - 1:0] fpu_trans_id;
	// Trace: core/ex_stage.sv:406:3
	wire [CVA6Cfg[17102-:32] - 1:0] fpu_result;
	// Trace: core/ex_stage.sv:407:3
	wire alu2_valid;
	// Trace: core/ex_stage.sv:408:3
	wire [CVA6Cfg[17102-:32] - 1:0] alu2_result;
	// Trace: core/ex_stage.sv:410:3
	generate
		if (CVA6Cfg[16471]) begin : fpu_gen
			// Trace: core/ex_stage.sv:412:7
			reg [((((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]) - 1:0] fpu_data;
			// Trace: core/ex_stage.sv:413:7
			always @(*) begin
				if (_sv2v_0)
					;
				// Trace: core/ex_stage.sv:414:9
				fpu_data = (fpu_valid_i[0] ? fu_data_i[0+:(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]] : {(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32] {1'sb0}});
				// Trace: core/ex_stage.sv:415:9
				if (CVA6Cfg[16874]) begin
					begin
						// Trace: core/ex_stage.sv:416:11
						if (fpu_valid_i[1])
							// Trace: core/ex_stage.sv:417:13
							fpu_data = fu_data_i[(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]+:(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]];
					end
				end
			end
			// Trace: core/ex_stage.sv:422:7
			fpu_wrap_9D6B1_657CE #(
				.exception_t_exception_t_CVA6Cfg(exception_t_CVA6Cfg),
				.fu_data_t_fu_data_t_CVA6Cfg(fu_data_t_CVA6Cfg),
				.CVA6Cfg(CVA6Cfg)
			) fpu_i(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.flush_i(flush_i),
				.fpu_valid_i(|fpu_valid_i),
				.fpu_ready_o(fpu_ready_o),
				.fu_data_i(fpu_data),
				.fpu_fmt_i(fpu_fmt_i),
				.fpu_rm_i(fpu_rm_i),
				.fpu_frm_i(fpu_frm_i),
				.fpu_prec_i(fpu_prec_i),
				.fpu_trans_id_o(fpu_trans_id),
				.result_o(fpu_result),
				.fpu_valid_o(fpu_valid),
				.fpu_exception_o(fpu_exception_o)
			);
		end
		else begin : no_fpu_gen
			// Trace: core/ex_stage.sv:443:7
			assign fpu_ready_o = 1'sb0;
			// Trace: core/ex_stage.sv:444:7
			assign fpu_trans_id = 1'sb0;
			// Trace: core/ex_stage.sv:445:7
			assign fpu_result = 1'sb0;
			// Trace: core/ex_stage.sv:446:7
			assign fpu_valid = 1'sb0;
			// Trace: core/ex_stage.sv:447:7
			assign fpu_exception_o = 1'sb0;
		end
	endgenerate
	// Trace: core/ex_stage.sv:454:3
	reg [((((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]) - 1:0] alu2_data;
	// Trace: core/ex_stage.sv:455:3
	generate
		if (CVA6Cfg[16874]) begin : alu2_gen
			// Trace: core/ex_stage.sv:456:5
			always @(*) begin
				if (_sv2v_0)
					;
				// Trace: core/ex_stage.sv:457:7
				alu2_data = (alu2_valid_i[0] ? fu_data_i[0+:(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]] : {(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32] {1'sb0}});
				// Trace: core/ex_stage.sv:458:7
				if (alu2_valid_i[1])
					// Trace: core/ex_stage.sv:459:9
					alu2_data = fu_data_i[(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]+:(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]];
			end
			// Trace: core/ex_stage.sv:463:5
			alu_4BFF1_9AA73 #(
				.fu_data_t_fu_data_t_CVA6Cfg(fu_data_t_CVA6Cfg),
				.CVA6Cfg(CVA6Cfg)
			) alu2_i(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.fu_data_i(alu2_data),
				.result_o(alu2_result),
				.alu_branch_res_o()
			);
		end
		else begin : genblk2
			// Trace: core/ex_stage.sv:474:5
			wire [(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]:1] sv2v_tmp_E942B;
			assign sv2v_tmp_E942B = 1'sb0;
			always @(*) alu2_data = sv2v_tmp_E942B;
			// Trace: core/ex_stage.sv:475:5
			assign alu2_result = 1'sb0;
		end
	endgenerate
	// Trace: core/ex_stage.sv:480:3
	generate
		if (CVA6Cfg[16874]) begin : genblk3
			if (CVA6Cfg[16471]) begin : genblk1
				// Trace: core/ex_stage.sv:482:7
				assign fpu_valid_o = fpu_valid || |alu2_valid_i;
				// Trace: core/ex_stage.sv:483:7
				assign fpu_result_o = (fpu_valid ? fpu_result : alu2_result);
				// Trace: core/ex_stage.sv:484:7
				assign fpu_trans_id_o = (fpu_valid ? fpu_trans_id : alu2_data[fu_data_t_CVA6Cfg[16503-:32] - 1-:fu_data_t_CVA6Cfg[16503-:32]]);
			end
			else begin : genblk1
				// Trace: core/ex_stage.sv:486:7
				assign fpu_valid_o = |alu2_valid_i;
				// Trace: core/ex_stage.sv:487:7
				assign fpu_result_o = alu2_result;
				// Trace: core/ex_stage.sv:488:7
				assign fpu_trans_id_o = alu2_data[fu_data_t_CVA6Cfg[16503-:32] - 1-:fu_data_t_CVA6Cfg[16503-:32]];
			end
		end
		else begin : genblk3
			if (CVA6Cfg[16471]) begin : genblk1
				// Trace: core/ex_stage.sv:492:7
				assign fpu_valid_o = fpu_valid;
				// Trace: core/ex_stage.sv:493:7
				assign fpu_result_o = fpu_result;
				// Trace: core/ex_stage.sv:494:7
				assign fpu_trans_id_o = fpu_trans_id;
			end
			else begin : genblk1
				// Trace: core/ex_stage.sv:496:7
				assign fpu_valid_o = 1'sb0;
				// Trace: core/ex_stage.sv:497:7
				assign fpu_result_o = 1'sb0;
				// Trace: core/ex_stage.sv:498:7
				assign fpu_trans_id_o = 1'sb0;
			end
		end
	endgenerate
	// Trace: core/ex_stage.sv:505:3
	reg [((((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]) - 1:0] lsu_data;
	// Trace: core/ex_stage.sv:506:3
	reg [31:0] lsu_tinst;
	// Trace: core/ex_stage.sv:507:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/ex_stage.sv:508:5
		lsu_data = (lsu_valid_i[0] ? fu_data_i[0+:(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]] : {(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32] {1'sb0}});
		// Trace: core/ex_stage.sv:509:5
		lsu_tinst = tinst_i[0+:32];
		// Trace: core/ex_stage.sv:511:5
		if (CVA6Cfg[16874]) begin
			begin
				// Trace: core/ex_stage.sv:512:7
				if (lsu_valid_i[1]) begin
					// Trace: core/ex_stage.sv:513:9
					lsu_data = fu_data_i[(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]+:(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]];
					// Trace: core/ex_stage.sv:514:9
					lsu_tinst = tinst_i[32+:32];
				end
			end
		end
	end
	// Trace: core/ex_stage.sv:519:3
	load_store_unit_AA78E_0358B #(
		.dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_CVA6Cfg),
		.dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_CVA6Cfg),
		.exception_t_exception_t_CVA6Cfg(exception_t_CVA6Cfg),
		.fu_data_t_fu_data_t_CVA6Cfg(fu_data_t_CVA6Cfg),
		.icache_areq_t_icache_areq_t_CVA6Cfg(icache_areq_t_CVA6Cfg),
		.icache_arsp_t_icache_arsp_t_CVA6Cfg(icache_arsp_t_CVA6Cfg),
		.icache_dreq_t_icache_dreq_t_CVA6Cfg(icache_dreq_t_CVA6Cfg),
		.icache_drsp_t_icache_drsp_t_CVA6Cfg(icache_drsp_t_CVA6Cfg),
		.lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg(lsu_ctrl_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) lsu_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i),
		.stall_st_pending_i(stall_st_pending_i),
		.no_st_pending_o(no_st_pending_o),
		.fu_data_i(lsu_data),
		.lsu_ready_o(lsu_ready_o),
		.lsu_valid_i(|lsu_valid_i),
		.load_trans_id_o(load_trans_id_o),
		.load_result_o(load_result_o),
		.load_valid_o(load_valid_o),
		.load_exception_o(load_exception_o),
		.store_trans_id_o(store_trans_id_o),
		.store_result_o(store_result_o),
		.store_valid_o(store_valid_o),
		.store_exception_o(store_exception_o),
		.commit_i(lsu_commit_i),
		.commit_ready_o(lsu_commit_ready_o),
		.commit_tran_id_i(commit_tran_id_i),
		.enable_translation_i(enable_translation_i),
		.enable_g_translation_i(enable_g_translation_i),
		.en_ld_st_translation_i(en_ld_st_translation_i),
		.en_ld_st_g_translation_i(en_ld_st_g_translation_i),
		.icache_areq_i(icache_areq_i),
		.icache_areq_o(icache_areq_o),
		.priv_lvl_i(priv_lvl_i),
		.v_i(v_i),
		.ld_st_priv_lvl_i(ld_st_priv_lvl_i),
		.ld_st_v_i(ld_st_v_i),
		.csr_hs_ld_st_inst_o(csr_hs_ld_st_inst_o),
		.sum_i(sum_i),
		.vs_sum_i(vs_sum_i),
		.mxr_i(mxr_i),
		.vmxr_i(vmxr_i),
		.satp_ppn_i(satp_ppn_i),
		.vsatp_ppn_i(vsatp_ppn_i),
		.hgatp_ppn_i(hgatp_ppn_i),
		.asid_i(asid_i),
		.vs_asid_i(vs_asid_i),
		.asid_to_be_flushed_i(asid_to_be_flushed),
		.vmid_i(vmid_i),
		.vmid_to_be_flushed_i(vmid_to_be_flushed),
		.vaddr_to_be_flushed_i(vaddr_to_be_flushed),
		.gpaddr_to_be_flushed_i(gpaddr_to_be_flushed),
		.flush_tlb_i(flush_tlb_i),
		.flush_tlb_vvma_i(flush_tlb_vvma_i),
		.flush_tlb_gvma_i(flush_tlb_gvma_i),
		.itlb_miss_o(itlb_miss_o),
		.dtlb_miss_o(dtlb_miss_o),
		.dcache_req_ports_i(dcache_req_ports_i),
		.dcache_req_ports_o(dcache_req_ports_o),
		.dcache_wbuffer_empty_i(dcache_wbuffer_empty_i),
		.dcache_wbuffer_not_ni_i(dcache_wbuffer_not_ni_i),
		.amo_valid_commit_i(amo_valid_commit_i),
		.amo_req_o(amo_req_o),
		.amo_resp_i(amo_resp_i),
		.tinst_i(lsu_tinst),
		.pmpcfg_i(pmpcfg_i),
		.pmpaddr_i(pmpaddr_i),
		.rvfi_lsu_ctrl_o(rvfi_lsu_ctrl_o),
		.rvfi_mem_paddr_o(rvfi_mem_paddr_o),
		.c3_enable_i(c3_enable_i)
	);
	// Trace: core/ex_stage.sv:595:3
	generate
		if (CVA6Cfg[16539]) begin : gen_cvxif
			// Trace: core/ex_stage.sv:596:5
			reg [((((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]) - 1:0] cvxif_data;
			// Trace: core/ex_stage.sv:597:5
			always @(*) begin
				if (_sv2v_0)
					;
				// Trace: core/ex_stage.sv:598:7
				cvxif_data = (x_valid_i[0] ? fu_data_i[0+:(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]] : {(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32] {1'sb0}});
				// Trace: core/ex_stage.sv:599:7
				if (CVA6Cfg[16874]) begin
					begin
						// Trace: core/ex_stage.sv:600:9
						if (x_valid_i[1])
							// Trace: core/ex_stage.sv:601:11
							cvxif_data = fu_data_i[(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]+:(((12 + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_CVA6Cfg[16503-:32]];
					end
				end
			end
			// Trace: core/ex_stage.sv:606:5
			cvxif_fu_2640F_4CE1F #(
				.exception_t_exception_t_CVA6Cfg(exception_t_CVA6Cfg),
				.x_result_t_x_result_t_x_result_t_CVA6Cfg(x_result_t_x_result_t_CVA6Cfg),
				.CVA6Cfg(CVA6Cfg)
			) cvxif_fu_i(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.x_valid_i(|x_valid_i),
				.x_trans_id_i(cvxif_data[fu_data_t_CVA6Cfg[16503-:32] - 1-:fu_data_t_CVA6Cfg[16503-:32]]),
				.x_illegal_i(x_transaction_rejected_i),
				.x_off_instr_i(x_off_instr_i),
				.x_ready_o(x_ready_o),
				.x_trans_id_o(x_trans_id_o),
				.x_exception_o(x_exception_o),
				.x_result_o(x_result_o),
				.x_valid_o(x_valid_o),
				.x_we_o(x_we_o),
				.x_rd_o(x_rd_o),
				.result_valid_i(x_result_valid_i),
				.result_i(x_result_i),
				.result_ready_o(x_result_ready_o)
			);
		end
		else begin : gen_no_cvxif
			// Trace: core/ex_stage.sv:629:5
			assign x_result_ready_o = 1'sb0;
			// Trace: core/ex_stage.sv:630:5
			assign x_trans_id_o = 1'sb0;
			// Trace: core/ex_stage.sv:631:5
			assign x_exception_o = 1'sb0;
			// Trace: core/ex_stage.sv:632:5
			assign x_result_o = 1'sb0;
			// Trace: core/ex_stage.sv:633:5
			assign x_valid_o = 1'sb0;
		end
	endgenerate
	// Trace: core/ex_stage.sv:636:3
	// removed localparam type ariane_pkg_fu_op
	generate
		if (CVA6Cfg[16366]) begin : genblk5
			if (CVA6Cfg[16543]) begin : genblk1
				// Trace: core/ex_stage.sv:638:7
				always @(posedge clk_i or negedge rst_ni)
					// Trace: core/ex_stage.sv:639:9
					if (~rst_ni) begin
						// Trace: core/ex_stage.sv:640:11
						current_instruction_is_sfence_vma <= 1'b0;
						// Trace: core/ex_stage.sv:641:11
						current_instruction_is_hfence_vvma <= 1'b0;
						// Trace: core/ex_stage.sv:642:11
						current_instruction_is_hfence_gvma <= 1'b0;
					end
					else
						// Trace: core/ex_stage.sv:645:11
						if (flush_i) begin
							// Trace: core/ex_stage.sv:646:13
							current_instruction_is_sfence_vma <= 1'b0;
							// Trace: core/ex_stage.sv:647:13
							current_instruction_is_hfence_vvma <= 1'b0;
							// Trace: core/ex_stage.sv:648:13
							current_instruction_is_hfence_gvma <= 1'b0;
						end
						else if (((fu_data_i[8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)] == 8'd30) && !v_i) && |csr_valid_i)
							// Trace: core/ex_stage.sv:650:13
							current_instruction_is_sfence_vma <= 1'b1;
						else if ((((fu_data_i[8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)] == 8'd30) && v_i) || (fu_data_i[8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)] == 8'd31)) && |csr_valid_i)
							// Trace: core/ex_stage.sv:652:13
							current_instruction_is_hfence_vvma <= 1'b1;
						else if ((fu_data_i[8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)] == 8'd32) && |csr_valid_i)
							// Trace: core/ex_stage.sv:654:13
							current_instruction_is_hfence_gvma <= 1'b1;
			end
			else begin : genblk1
				// Trace: core/ex_stage.sv:659:7
				wire [1:1] sv2v_tmp_3B1C1;
				assign sv2v_tmp_3B1C1 = 1'b0;
				always @(*) current_instruction_is_hfence_vvma = sv2v_tmp_3B1C1;
				// Trace: core/ex_stage.sv:660:7
				wire [1:1] sv2v_tmp_A79F0;
				assign sv2v_tmp_A79F0 = 1'b0;
				always @(*) current_instruction_is_hfence_gvma = sv2v_tmp_A79F0;
				// Trace: core/ex_stage.sv:661:7
				always @(posedge clk_i or negedge rst_ni)
					// Trace: core/ex_stage.sv:662:9
					if (~rst_ni)
						// Trace: core/ex_stage.sv:663:11
						current_instruction_is_sfence_vma <= 1'b0;
					else
						// Trace: core/ex_stage.sv:665:11
						if (flush_i)
							// Trace: core/ex_stage.sv:666:13
							current_instruction_is_sfence_vma <= 1'b0;
						else if ((fu_data_i[8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)] == 8'd30) && |csr_valid_i)
							// Trace: core/ex_stage.sv:668:13
							current_instruction_is_sfence_vma <= 1'b1;
			end
			if (CVA6Cfg[16543]) begin : genblk2
				// Trace: core/ex_stage.sv:675:7
				always @(posedge clk_i or negedge rst_ni)
					// Trace: core/ex_stage.sv:676:9
					if (~rst_ni) begin
						// Trace: core/ex_stage.sv:677:11
						vmid_to_be_flushed <= 1'sb0;
						// Trace: core/ex_stage.sv:678:11
						asid_to_be_flushed <= 1'sb0;
						// Trace: core/ex_stage.sv:679:11
						vaddr_to_be_flushed <= 1'sb0;
						// Trace: core/ex_stage.sv:680:11
						gpaddr_to_be_flushed <= 1'sb0;
					end
					else if (~((current_instruction_is_sfence_vma || current_instruction_is_hfence_vvma) || current_instruction_is_hfence_gvma) && ~((((fu_data_i[8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)] == 8'd30) || (fu_data_i[8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)] == 8'd31)) || (fu_data_i[8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)] == 8'd32)) && |csr_valid_i)) begin
						// Trace: core/ex_stage.sv:683:11
						vaddr_to_be_flushed <= rs1_forwarding;
						// Trace: core/ex_stage.sv:684:11
						gpaddr_to_be_flushed <= {2'b00, rs1_forwarding[CVA6Cfg[17006-:32] - 1:2]};
						// Trace: core/ex_stage.sv:685:11
						asid_to_be_flushed <= rs2_forwarding[CVA6Cfg[16940-:32] - 1:0];
						// Trace: core/ex_stage.sv:686:11
						vmid_to_be_flushed <= rs2_forwarding[CVA6Cfg[16908-:32] - 1:0];
					end
			end
			else begin : genblk2
				// Trace: core/ex_stage.sv:690:7
				wire [CVA6Cfg[16908-:32]:1] sv2v_tmp_E2965;
				assign sv2v_tmp_E2965 = 1'sb0;
				always @(*) vmid_to_be_flushed = sv2v_tmp_E2965;
				// Trace: core/ex_stage.sv:691:7
				wire [CVA6Cfg[17006-:32]:1] sv2v_tmp_0FE41;
				assign sv2v_tmp_0FE41 = 1'sb0;
				always @(*) gpaddr_to_be_flushed = sv2v_tmp_0FE41;
				// Trace: core/ex_stage.sv:693:7
				always @(posedge clk_i or negedge rst_ni)
					// Trace: core/ex_stage.sv:694:9
					if (~rst_ni) begin
						// Trace: core/ex_stage.sv:695:11
						asid_to_be_flushed <= 1'sb0;
						// Trace: core/ex_stage.sv:696:11
						vaddr_to_be_flushed <= 1'sb0;
					end
					else if (~current_instruction_is_sfence_vma && ~((fu_data_i[8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)] == 8'd30) && |csr_valid_i)) begin
						// Trace: core/ex_stage.sv:699:11
						vaddr_to_be_flushed <= rs1_forwarding;
						// Trace: core/ex_stage.sv:700:11
						asid_to_be_flushed <= rs2_forwarding[CVA6Cfg[16940-:32] - 1:0];
					end
			end
		end
		else begin : genblk5
			// Trace: core/ex_stage.sv:705:5
			wire [1:1] sv2v_tmp_E35BD;
			assign sv2v_tmp_E35BD = 1'b0;
			always @(*) current_instruction_is_sfence_vma = sv2v_tmp_E35BD;
			// Trace: core/ex_stage.sv:706:5
			wire [1:1] sv2v_tmp_3B1C1;
			assign sv2v_tmp_3B1C1 = 1'b0;
			always @(*) current_instruction_is_hfence_vvma = sv2v_tmp_3B1C1;
			// Trace: core/ex_stage.sv:707:5
			wire [1:1] sv2v_tmp_A79F0;
			assign sv2v_tmp_A79F0 = 1'b0;
			always @(*) current_instruction_is_hfence_gvma = sv2v_tmp_A79F0;
			// Trace: core/ex_stage.sv:708:5
			wire [CVA6Cfg[16940-:32]:1] sv2v_tmp_C0ADC;
			assign sv2v_tmp_C0ADC = 1'sb0;
			always @(*) asid_to_be_flushed = sv2v_tmp_C0ADC;
			// Trace: core/ex_stage.sv:709:5
			wire [CVA6Cfg[17070-:32]:1] sv2v_tmp_06AC7;
			assign sv2v_tmp_06AC7 = 1'sb0;
			always @(*) vaddr_to_be_flushed = sv2v_tmp_06AC7;
			// Trace: core/ex_stage.sv:710:5
			wire [CVA6Cfg[16908-:32]:1] sv2v_tmp_E2965;
			assign sv2v_tmp_E2965 = 1'sb0;
			always @(*) vmid_to_be_flushed = sv2v_tmp_E2965;
			// Trace: core/ex_stage.sv:711:5
			wire [CVA6Cfg[17006-:32]:1] sv2v_tmp_0FE41;
			assign sv2v_tmp_0FE41 = 1'sb0;
			always @(*) gpaddr_to_be_flushed = sv2v_tmp_0FE41;
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
