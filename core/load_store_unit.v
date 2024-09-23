module load_store_unit_AA78E_0358B (
	clk_i,
	rst_ni,
	flush_i,
	stall_st_pending_i,
	no_st_pending_o,
	amo_valid_commit_i,
	tinst_i,
	fu_data_i,
	lsu_ready_o,
	lsu_valid_i,
	load_trans_id_o,
	load_result_o,
	load_valid_o,
	load_exception_o,
	store_trans_id_o,
	store_result_o,
	store_valid_o,
	store_exception_o,
	commit_i,
	commit_ready_o,
	commit_tran_id_i,
	enable_translation_i,
	enable_g_translation_i,
	en_ld_st_translation_i,
	en_ld_st_g_translation_i,
	icache_areq_i,
	icache_areq_o,
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
	asid_to_be_flushed_i,
	vmid_to_be_flushed_i,
	vaddr_to_be_flushed_i,
	gpaddr_to_be_flushed_i,
	flush_tlb_i,
	flush_tlb_vvma_i,
	flush_tlb_gvma_i,
	itlb_miss_o,
	dtlb_miss_o,
	dcache_req_ports_i,
	dcache_req_ports_o,
	dcache_wbuffer_empty_i,
	dcache_wbuffer_not_ni_i,
	amo_req_o,
	amo_resp_i,
	pmpcfg_i,
	pmpaddr_i,
	rvfi_lsu_ctrl_o,
	rvfi_mem_paddr_o,
	c3_enable_i
);
	// removed localparam type dcache_req_i_t_dcache_req_i_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_i_t_dcache_req_i_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_o_t_dcache_req_o_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_o_t_dcache_req_o_t_CVA6Cfg = 0;
	// removed localparam type exception_t_exception_t_CVA6Cfg_type
	parameter [17102:0] exception_t_exception_t_CVA6Cfg = 0;
	// removed localparam type fu_data_t_fu_data_t_CVA6Cfg_type
	parameter [17102:0] fu_data_t_fu_data_t_CVA6Cfg = 0;
	// removed localparam type icache_areq_t_icache_areq_t_CVA6Cfg_type
	parameter [17102:0] icache_areq_t_icache_areq_t_CVA6Cfg = 0;
	// removed localparam type icache_arsp_t_icache_arsp_t_CVA6Cfg_type
	parameter [17102:0] icache_arsp_t_icache_arsp_t_CVA6Cfg = 0;
	// removed localparam type icache_dreq_t_icache_dreq_t_CVA6Cfg_type
	parameter [17102:0] icache_dreq_t_icache_dreq_t_CVA6Cfg = 0;
	// removed localparam type icache_drsp_t_icache_drsp_t_CVA6Cfg_type
	parameter [17102:0] icache_drsp_t_icache_drsp_t_CVA6Cfg = 0;
	// removed localparam type lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg_type
	parameter [17102:0] lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/load_store_unit.sv:19:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/load_store_unit.sv:20:20
	// removed localparam type dcache_req_i_t
	// Trace: core/load_store_unit.sv:21:20
	// removed localparam type dcache_req_o_t
	// Trace: core/load_store_unit.sv:22:20
	// removed localparam type exception_t
	// Trace: core/load_store_unit.sv:23:20
	// removed localparam type fu_data_t
	// Trace: core/load_store_unit.sv:24:20
	// removed localparam type icache_areq_t
	// Trace: core/load_store_unit.sv:25:20
	// removed localparam type icache_arsp_t
	// Trace: core/load_store_unit.sv:26:20
	// removed localparam type icache_dreq_t
	// Trace: core/load_store_unit.sv:27:20
	// removed localparam type icache_drsp_t
	// Trace: core/load_store_unit.sv:28:20
	// removed localparam type lsu_ctrl_t
	// Trace: core/load_store_unit.sv:31:5
	input wire clk_i;
	// Trace: core/load_store_unit.sv:33:5
	input wire rst_ni;
	// Trace: core/load_store_unit.sv:35:5
	input wire flush_i;
	// Trace: core/load_store_unit.sv:37:5
	input wire stall_st_pending_i;
	// Trace: core/load_store_unit.sv:39:5
	output wire no_st_pending_o;
	// Trace: core/load_store_unit.sv:41:5
	input wire amo_valid_commit_i;
	// Trace: core/load_store_unit.sv:43:5
	input wire [31:0] tinst_i;
	// Trace: core/load_store_unit.sv:45:5
	input wire [((((12 + fu_data_t_fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_fu_data_t_CVA6Cfg[16503-:32]) - 1:0] fu_data_i;
	// Trace: core/load_store_unit.sv:47:5
	output wire lsu_ready_o;
	// Trace: core/load_store_unit.sv:49:5
	input wire lsu_valid_i;
	// Trace: core/load_store_unit.sv:52:5
	output wire [CVA6Cfg[16503-:32] - 1:0] load_trans_id_o;
	// Trace: core/load_store_unit.sv:54:5
	output wire [CVA6Cfg[17102-:32] - 1:0] load_result_o;
	// Trace: core/load_store_unit.sv:56:5
	output wire load_valid_o;
	// Trace: core/load_store_unit.sv:58:5
	output wire [((exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] load_exception_o;
	// Trace: core/load_store_unit.sv:61:5
	output wire [CVA6Cfg[16503-:32] - 1:0] store_trans_id_o;
	// Trace: core/load_store_unit.sv:63:5
	output wire [CVA6Cfg[17102-:32] - 1:0] store_result_o;
	// Trace: core/load_store_unit.sv:65:5
	output wire store_valid_o;
	// Trace: core/load_store_unit.sv:67:5
	output wire [((exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] store_exception_o;
	// Trace: core/load_store_unit.sv:70:5
	input wire commit_i;
	// Trace: core/load_store_unit.sv:72:5
	output wire commit_ready_o;
	// Trace: core/load_store_unit.sv:74:5
	input wire [CVA6Cfg[16503-:32] - 1:0] commit_tran_id_i;
	// Trace: core/load_store_unit.sv:77:5
	input wire enable_translation_i;
	// Trace: core/load_store_unit.sv:79:5
	input wire enable_g_translation_i;
	// Trace: core/load_store_unit.sv:81:5
	input wire en_ld_st_translation_i;
	// Trace: core/load_store_unit.sv:83:5
	input wire en_ld_st_g_translation_i;
	// Trace: core/load_store_unit.sv:86:5
	input wire [(1 + icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32]) - 1:0] icache_areq_i;
	// Trace: core/load_store_unit.sv:88:5
	output wire [((1 + icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] icache_areq_o;
	// Trace: core/load_store_unit.sv:91:5
	// removed localparam type riscv_priv_lvl_t
	input wire [1:0] priv_lvl_i;
	// Trace: core/load_store_unit.sv:93:5
	input wire v_i;
	// Trace: core/load_store_unit.sv:95:5
	input wire [1:0] ld_st_priv_lvl_i;
	// Trace: core/load_store_unit.sv:97:5
	input wire ld_st_v_i;
	// Trace: core/load_store_unit.sv:99:5
	output wire csr_hs_ld_st_inst_o;
	// Trace: core/load_store_unit.sv:101:5
	input wire sum_i;
	// Trace: core/load_store_unit.sv:103:5
	input wire vs_sum_i;
	// Trace: core/load_store_unit.sv:105:5
	input wire mxr_i;
	// Trace: core/load_store_unit.sv:107:5
	input wire vmxr_i;
	// Trace: core/load_store_unit.sv:109:5
	input wire [CVA6Cfg[419-:32] - 1:0] satp_ppn_i;
	// Trace: core/load_store_unit.sv:111:5
	input wire [CVA6Cfg[16940-:32] - 1:0] asid_i;
	// Trace: core/load_store_unit.sv:113:5
	input wire [CVA6Cfg[419-:32] - 1:0] vsatp_ppn_i;
	// Trace: core/load_store_unit.sv:115:5
	input wire [CVA6Cfg[16940-:32] - 1:0] vs_asid_i;
	// Trace: core/load_store_unit.sv:117:5
	input wire [CVA6Cfg[419-:32] - 1:0] hgatp_ppn_i;
	// Trace: core/load_store_unit.sv:119:5
	input wire [CVA6Cfg[16908-:32] - 1:0] vmid_i;
	// Trace: core/load_store_unit.sv:121:5
	input wire [CVA6Cfg[16940-:32] - 1:0] asid_to_be_flushed_i;
	// Trace: core/load_store_unit.sv:123:5
	input wire [CVA6Cfg[16908-:32] - 1:0] vmid_to_be_flushed_i;
	// Trace: core/load_store_unit.sv:125:5
	input wire [CVA6Cfg[17070-:32] - 1:0] vaddr_to_be_flushed_i;
	// Trace: core/load_store_unit.sv:127:5
	input wire [CVA6Cfg[17006-:32] - 1:0] gpaddr_to_be_flushed_i;
	// Trace: core/load_store_unit.sv:129:5
	input wire flush_tlb_i;
	// Trace: core/load_store_unit.sv:130:5
	input wire flush_tlb_vvma_i;
	// Trace: core/load_store_unit.sv:131:5
	input wire flush_tlb_gvma_i;
	// Trace: core/load_store_unit.sv:133:5
	output wire itlb_miss_o;
	// Trace: core/load_store_unit.sv:135:5
	output wire dtlb_miss_o;
	// Trace: core/load_store_unit.sv:138:5
	input wire [(3 * (((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32])) - 1:0] dcache_req_ports_i;
	// Trace: core/load_store_unit.sv:140:5
	output wire [(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (3 * ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2)) - 1 : (3 * (1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))) + ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 0)):(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)] dcache_req_ports_o;
	// Trace: core/load_store_unit.sv:142:5
	input wire dcache_wbuffer_empty_i;
	// Trace: core/load_store_unit.sv:144:5
	input wire dcache_wbuffer_not_ni_i;
	// Trace: core/load_store_unit.sv:146:5
	// removed localparam type ariane_pkg_amo_t
	// removed localparam type ariane_pkg_amo_req_t
	output wire [134:0] amo_req_o;
	// Trace: core/load_store_unit.sv:148:5
	// removed localparam type ariane_pkg_amo_resp_t
	input wire [64:0] amo_resp_i;
	// Trace: core/load_store_unit.sv:151:5
	// removed localparam type riscv_pmp_addr_mode_t
	// removed localparam type riscv_pmpcfg_access_t
	// removed localparam type riscv_pmpcfg_t
	input wire [(CVA6Cfg[15913-:32] * 8) - 1:0] pmpcfg_i;
	// Trace: core/load_store_unit.sv:153:5
	input wire [((CVA6Cfg[17038-:32] - 3) >= 0 ? (CVA6Cfg[15913-:32] * (CVA6Cfg[17038-:32] - 2)) - 1 : (CVA6Cfg[15913-:32] * (4 - CVA6Cfg[17038-:32])) + (CVA6Cfg[17038-:32] - 4)):((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3)] pmpaddr_i;
	// Trace: core/load_store_unit.sv:156:5
	output wire [((((((1 + lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32]) - 1:0] rvfi_lsu_ctrl_o;
	// Trace: core/load_store_unit.sv:158:5
	output wire [CVA6Cfg[17038-:32] - 1:0] rvfi_mem_paddr_o;
	// Trace: core/load_store_unit.sv:159:5
	input wire c3_enable_i;
	// Trace: core/load_store_unit.sv:163:3
	reg data_misaligned;
	// Trace: core/load_store_unit.sv:169:3
	wire [((((((1 + lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32]) - 1:0] lsu_ctrl;
	// Trace: core/load_store_unit.sv:171:3
	wire pop_st;
	// Trace: core/load_store_unit.sv:172:3
	wire pop_ld;
	// Trace: core/load_store_unit.sv:178:3
	wire [CVA6Cfg[17070-:32] - 1:0] vaddr_i;
	// Trace: core/load_store_unit.sv:179:3
	wire [CVA6Cfg[17102-:32] - 1:0] vaddr_xlen;
	// Trace: core/load_store_unit.sv:180:3
	wire overflow;
	// Trace: core/load_store_unit.sv:181:3
	wire g_overflow;
	// Trace: core/load_store_unit.sv:182:3
	wire [(CVA6Cfg[17102-:32] / 8) - 1:0] be_i;
	// Trace: core/load_store_unit.sv:184:3
	assign vaddr_xlen = $unsigned($signed(fu_data_i[fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)-:((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)) >= (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0) ? ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)) - (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))) + 1)]) + $signed(fu_data_i[fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))-:((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))) >= (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))) ? ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) + 1)]));
	// Trace: core/load_store_unit.sv:185:3
	assign vaddr_i = vaddr_xlen[CVA6Cfg[17070-:32] - 1:0];
	// Trace: core/load_store_unit.sv:187:3
	assign overflow = CVA6Cfg[16973] && !((&vaddr_xlen[CVA6Cfg[17102-:32] - 1:CVA6Cfg[351-:32] - 1] == 1'b1) || (|vaddr_xlen[CVA6Cfg[17102-:32] - 1:CVA6Cfg[351-:32] - 1] == 1'b0));
	// Trace: core/load_store_unit.sv:188:3
	generate
		if (CVA6Cfg[16543]) begin : gen_g_overflow_hyp
			// Trace: core/load_store_unit.sv:189:5
			assign g_overflow = CVA6Cfg[16973] && (|vaddr_xlen[CVA6Cfg[17102-:32] - 1:CVA6Cfg[319-:32]] != 1'b0);
		end
		else begin : gen_g_overflow_no_hyp
			// Trace: core/load_store_unit.sv:191:5
			assign g_overflow = 1'b0;
		end
	endgenerate
	// Trace: core/load_store_unit.sv:194:3
	reg st_valid_i;
	// Trace: core/load_store_unit.sv:195:3
	reg ld_valid_i;
	// Trace: core/load_store_unit.sv:196:3
	wire ld_translation_req;
	// Trace: core/load_store_unit.sv:197:3
	wire st_translation_req;
	// Trace: core/load_store_unit.sv:198:3
	wire [CVA6Cfg[17070-:32] - 1:0] ld_vaddr;
	// Trace: core/load_store_unit.sv:199:3
	wire [31:0] ld_tinst;
	// Trace: core/load_store_unit.sv:200:3
	wire ld_hs_ld_st_inst;
	// Trace: core/load_store_unit.sv:201:3
	wire ld_hlvx_inst;
	// Trace: core/load_store_unit.sv:202:3
	wire [CVA6Cfg[17070-:32] - 1:0] st_vaddr;
	// Trace: core/load_store_unit.sv:203:3
	wire [31:0] st_tinst;
	// Trace: core/load_store_unit.sv:204:3
	wire st_hs_ld_st_inst;
	// Trace: core/load_store_unit.sv:205:3
	wire st_hlvx_inst;
	// Trace: core/load_store_unit.sv:206:3
	reg translation_req;
	// Trace: core/load_store_unit.sv:207:3
	reg translation_valid;
	// Trace: core/load_store_unit.sv:208:3
	reg [CVA6Cfg[17070-:32] - 1:0] mmu_vaddr;
	// Trace: core/load_store_unit.sv:209:3
	reg [CVA6Cfg[17038-:32] - 1:0] mmu_paddr;
	wire [CVA6Cfg[17038-:32] - 1:0] mmu_vaddr_plen;
	wire [CVA6Cfg[17038-:32] - 1:0] fetch_vaddr_plen;
	// Trace: core/load_store_unit.sv:210:3
	reg [31:0] mmu_tinst;
	// Trace: core/load_store_unit.sv:211:3
	reg mmu_hs_ld_st_inst;
	// Trace: core/load_store_unit.sv:212:3
	reg mmu_hlvx_inst;
	// Trace: core/load_store_unit.sv:213:3
	reg [((exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] mmu_exception;
	// Trace: core/load_store_unit.sv:214:3
	wire dtlb_hit;
	// Trace: core/load_store_unit.sv:215:3
	wire [CVA6Cfg[419-:32] - 1:0] dtlb_ppn;
	// Trace: core/load_store_unit.sv:217:3
	wire ld_valid;
	// Trace: core/load_store_unit.sv:218:3
	wire [CVA6Cfg[16503-:32] - 1:0] ld_trans_id;
	// Trace: core/load_store_unit.sv:219:3
	wire [CVA6Cfg[17102-:32] - 1:0] ld_result;
	// Trace: core/load_store_unit.sv:220:3
	wire st_valid;
	// Trace: core/load_store_unit.sv:221:3
	wire [CVA6Cfg[16503-:32] - 1:0] st_trans_id;
	// Trace: core/load_store_unit.sv:222:3
	wire [CVA6Cfg[17102-:32] - 1:0] st_result;
	// Trace: core/load_store_unit.sv:224:3
	wire [11:0] page_offset;
	// Trace: core/load_store_unit.sv:225:3
	wire page_offset_matches;
	// Trace: core/load_store_unit.sv:227:3
	reg [((exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] misaligned_exception;
	// Trace: core/load_store_unit.sv:228:3
	wire [((exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] ld_ex;
	// Trace: core/load_store_unit.sv:229:3
	wire [((exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] st_ex;
	// Trace: core/load_store_unit.sv:231:3
	reg hs_ld_st_inst;
	// Trace: core/load_store_unit.sv:232:3
	reg hlvx_inst;
	// Trace: core/load_store_unit.sv:234:3
	wire [2:0] enable_translation;
	wire [2:0] en_ld_st_translation;
	wire [2:0] flush_tlb;
	// Trace: core/load_store_unit.sv:235:3
	wire [1:0] sum;
	wire [1:0] mxr;
	// Trace: core/load_store_unit.sv:236:3
	wire [CVA6Cfg[419-:32] - 1:0] satp_ppn [2:0];
	// Trace: core/load_store_unit.sv:237:3
	wire [CVA6Cfg[16940-:32] - 1:0] asid [2:0];
	wire [CVA6Cfg[16940-:32] - 1:0] asid_to_be_flushed [1:0];
	// Trace: core/load_store_unit.sv:238:3
	wire [CVA6Cfg[17070-:32] - 1:0] vaddr_to_be_flushed [1:0];
	// Trace: core/load_store_unit.sv:243:3
	generate
		if (CVA6Cfg[16367]) begin : gen_mmu
			// Trace: core/load_store_unit.sv:244:5
			localparam HYP_EXT = (CVA6Cfg[16543] ? 1 : 0);
			// Trace: core/load_store_unit.sv:246:5
			// rewrote reg-to-output bindings
			wire [1:1] sv2v_tmp_i_cva6_mmu_lsu_valid_o;
			always @(*) translation_valid = sv2v_tmp_i_cva6_mmu_lsu_valid_o;
			wire [CVA6Cfg[17038-:32]:1] sv2v_tmp_i_cva6_mmu_lsu_paddr_o;
			always @(*) mmu_paddr = sv2v_tmp_i_cva6_mmu_lsu_paddr_o;
			// rewrote reg-to-output bindings
			wire [((((exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_CVA6Cfg[17006-:32]) + 33)):1] sv2v_tmp_i_cva6_mmu_lsu_exception_o;
			always @(*) mmu_exception = sv2v_tmp_i_cva6_mmu_lsu_exception_o;
			cva6_mmu_A7BB5_88A65 #(
				.dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_dcache_req_i_t_CVA6Cfg),
				.dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_dcache_req_o_t_CVA6Cfg),
				.exception_t_exception_t_exception_t_CVA6Cfg(exception_t_exception_t_CVA6Cfg),
				.icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg(icache_areq_t_icache_areq_t_CVA6Cfg),
				.icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg(icache_arsp_t_icache_arsp_t_CVA6Cfg),
				.icache_dreq_t_icache_dreq_t_icache_dreq_t_CVA6Cfg(icache_dreq_t_icache_dreq_t_CVA6Cfg),
				.icache_drsp_t_icache_drsp_t_icache_drsp_t_CVA6Cfg(icache_drsp_t_icache_drsp_t_CVA6Cfg),
				.CVA6Cfg(CVA6Cfg),
				.HYP_EXT(HYP_EXT)
			) i_cva6_mmu(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.flush_i(flush_i),
				.icache_areq_i(icache_areq_i),
				.icache_areq_o(icache_areq_o),
				.misaligned_ex_i(misaligned_exception),
				.lsu_req_i(translation_req),
				.lsu_vaddr_i(mmu_vaddr),
				.lsu_tinst_i(mmu_tinst),
				.lsu_is_store_i(st_translation_req),
				.csr_hs_ld_st_inst_o(csr_hs_ld_st_inst_o),
				.lsu_dtlb_hit_o(dtlb_hit),
				.lsu_dtlb_ppn_o(dtlb_ppn),
				.lsu_valid_o(sv2v_tmp_i_cva6_mmu_lsu_valid_o),
				.lsu_paddr_o(sv2v_tmp_i_cva6_mmu_lsu_paddr_o),
				.lsu_exception_o(sv2v_tmp_i_cva6_mmu_lsu_exception_o),
				.priv_lvl_i(priv_lvl_i),
				.ld_st_priv_lvl_i(ld_st_priv_lvl_i),
				.hlvx_inst_i(mmu_hlvx_inst),
				.hs_ld_st_inst_i(mmu_hs_ld_st_inst),
				.itlb_miss_o(itlb_miss_o),
				.dtlb_miss_o(dtlb_miss_o),
				.req_port_i(dcache_req_ports_i[0+:((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]]),
				.req_port_o(dcache_req_ports_o[(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) + 0+:(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))]),
				.pmpcfg_i(pmpcfg_i),
				.pmpaddr_i(pmpaddr_i),
				.c3_enable_i(c3_enable_i),
				.enable_translation_i(enable_translation_i),
				.enable_g_translation_i(enable_g_translation_i),
				.en_ld_st_translation_i(en_ld_st_translation_i),
				.en_ld_st_g_translation_i(en_ld_st_g_translation_i),
				.v_i(v_i),
				.ld_st_v_i(ld_st_v_i),
				.sum_i(sum_i),
				.vs_sum_i(vs_sum_i),
				.mxr_i(mxr_i),
				.vmxr_i(vmxr_i),
				.satp_ppn_i(satp_ppn_i),
				.vsatp_ppn_i(vsatp_ppn_i),
				.hgatp_ppn_i(hgatp_ppn_i),
				.asid_i(asid_i),
				.vs_asid_i(vs_asid_i),
				.asid_to_be_flushed_i(asid_to_be_flushed_i),
				.vmid_i(vmid_i),
				.vmid_to_be_flushed_i(vmid_to_be_flushed_i),
				.vaddr_to_be_flushed_i(vaddr_to_be_flushed_i),
				.gpaddr_to_be_flushed_i(gpaddr_to_be_flushed_i),
				.flush_tlb_i(flush_tlb_i),
				.flush_tlb_vvma_i(flush_tlb_vvma_i),
				.flush_tlb_gvma_i(flush_tlb_gvma_i)
			);
		end
		else begin : gen_no_mmu
			if (CVA6Cfg[17070-:32] > CVA6Cfg[17038-:32]) begin : genblk1
				// Trace: core/load_store_unit.sv:296:7
				assign mmu_vaddr_plen = mmu_vaddr[CVA6Cfg[17038-:32] - 1:0];
				// Trace: core/load_store_unit.sv:297:7
				assign fetch_vaddr_plen = icache_areq_i[(icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - ((icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - (CVA6Cfg[17038-:32] - 1)):(icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - (icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1)];
			end
			else begin : genblk1
				// Trace: core/load_store_unit.sv:299:7
				assign mmu_vaddr_plen = {{{CVA6Cfg[17038-:32] - CVA6Cfg[17070-:32]} {1'b0}}, mmu_vaddr};
				// Trace: core/load_store_unit.sv:300:7
				assign fetch_vaddr_plen = {{{CVA6Cfg[17038-:32] - CVA6Cfg[17070-:32]} {1'b0}}, icache_areq_i[icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1-:icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32]]};
			end
			// Trace: core/load_store_unit.sv:303:5
			assign icache_areq_o[1 + (icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))] = icache_areq_i[icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] + 0];
			// Trace: core/load_store_unit.sv:304:5
			assign icache_areq_o[icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)-:((icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) >= (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0) ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0)) + 1 : ((((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0) - (icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))) + 1)] = fetch_vaddr_plen;
			// Trace: core/load_store_unit.sv:305:5
			assign icache_areq_o[((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1-:((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))] = 1'sb0;
			// Trace: core/load_store_unit.sv:307:5
			assign dcache_req_ports_o[(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) : ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))))) : ((0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) : ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))))) + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) >= (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) ? ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))))) + 1)) - 1)-:((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) >= (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) ? ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))))) + 1)] = 1'sb0;
			// Trace: core/load_store_unit.sv:308:5
			assign dcache_req_ports_o[(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) : ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) : ((0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) : ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))))) + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) >= (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) ? ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + 1)) - 1)-:((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) >= (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) ? ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + 1)] = 1'sb0;
			// Trace: core/load_store_unit.sv:309:5
			assign dcache_req_ports_o[(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))) : ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) : ((0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))) : ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) >= (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) ? ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) + 1)) - 1)-:((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) >= (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) ? ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) + 1)] = 1'sb0;
			// Trace: core/load_store_unit.sv:310:5
			assign dcache_req_ports_o[0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) : ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) - (2 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))] = 1'b0;
			// Trace: core/load_store_unit.sv:311:5
			assign dcache_req_ports_o[(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) : ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) - ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) : ((0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) : ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) - ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))) + (((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1)) - 1)-:(((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1)] = 1'sb1;
			// Trace: core/load_store_unit.sv:312:5
			assign dcache_req_ports_o[(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1) : ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) - (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) : ((0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1) : ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) - (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + ((2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) >= (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) ? ((2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) + 1 : ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) - (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) + 1)) - 1)-:((2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) >= (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) ? ((2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) - (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) + 1 : ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) - (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) + 1)] = 2'b11;
			// Trace: core/load_store_unit.sv:313:5
			assign dcache_req_ports_o[0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 1 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) : ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) - (1 + ((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))] = 1'b0;
			// Trace: core/load_store_unit.sv:314:5
			assign dcache_req_ports_o[0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 1 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 0)] = 1'sb0;
			// Trace: core/load_store_unit.sv:315:5
			assign dcache_req_ports_o[0 + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)] = 1'b0;
			// Trace: core/load_store_unit.sv:317:5
			assign itlb_miss_o = 1'b0;
			// Trace: core/load_store_unit.sv:318:5
			assign dtlb_miss_o = 1'b0;
			// Trace: core/load_store_unit.sv:319:5
			assign dtlb_ppn = mmu_vaddr_plen[CVA6Cfg[17038-:32] - 1:12];
			// Trace: core/load_store_unit.sv:320:5
			assign dtlb_hit = 1'b1;
			// Trace: core/load_store_unit.sv:322:5
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/load_store_unit.sv:323:7
				if (~rst_ni) begin
					// Trace: core/load_store_unit.sv:324:9
					mmu_paddr <= 1'sb0;
					// Trace: core/load_store_unit.sv:325:9
					translation_valid <= 1'sb0;
					// Trace: core/load_store_unit.sv:326:9
					mmu_exception <= 1'sb0;
				end
				else begin
					// Trace: core/load_store_unit.sv:328:9
					mmu_paddr <= mmu_vaddr_plen;
					// Trace: core/load_store_unit.sv:329:9
					translation_valid <= translation_req;
					// Trace: core/load_store_unit.sv:330:9
					mmu_exception <= misaligned_exception;
				end
		end
	endgenerate
	// Trace: core/load_store_unit.sv:336:3
	wire store_buffer_empty;
	// Trace: core/load_store_unit.sv:340:3
	store_unit_8E701_A94D3 #(
		.dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_dcache_req_i_t_CVA6Cfg),
		.dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_dcache_req_o_t_CVA6Cfg),
		.exception_t_exception_t_exception_t_CVA6Cfg(exception_t_exception_t_CVA6Cfg),
		.lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg(lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) i_store_unit(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i),
		.stall_st_pending_i(stall_st_pending_i),
		.no_st_pending_o(no_st_pending_o),
		.store_buffer_empty_o(store_buffer_empty),
		.valid_i(st_valid_i),
		.lsu_ctrl_i(lsu_ctrl),
		.pop_st_o(pop_st),
		.commit_i(commit_i),
		.commit_ready_o(commit_ready_o),
		.amo_valid_commit_i(amo_valid_commit_i),
		.valid_o(st_valid),
		.trans_id_o(st_trans_id),
		.result_o(st_result),
		.ex_o(st_ex),
		.translation_req_o(st_translation_req),
		.vaddr_o(st_vaddr),
		.rvfi_mem_paddr_o(rvfi_mem_paddr_o),
		.tinst_o(st_tinst),
		.hs_ld_st_inst_o(st_hs_ld_st_inst),
		.hlvx_inst_o(st_hlvx_inst),
		.paddr_i(mmu_paddr),
		.ex_i(mmu_exception),
		.dtlb_hit_i(dtlb_hit),
		.page_offset_i(page_offset),
		.page_offset_matches_o(page_offset_matches),
		.amo_req_o(amo_req_o),
		.amo_resp_i(amo_resp_i),
		.req_port_i(dcache_req_ports_i[2 * (((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32])+:((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]]),
		.req_port_o(dcache_req_ports_o[(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) + (2 * (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1)))+:(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))])
	);
	// Trace: core/load_store_unit.sv:389:3
	load_unit_BE1C9_7E14E #(
		.dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_dcache_req_i_t_CVA6Cfg),
		.dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_dcache_req_o_t_CVA6Cfg),
		.exception_t_exception_t_exception_t_CVA6Cfg(exception_t_exception_t_CVA6Cfg),
		.lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg(lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) i_load_unit(
		.valid_i(ld_valid_i),
		.lsu_ctrl_i(lsu_ctrl),
		.pop_ld_o(pop_ld),
		.valid_o(ld_valid),
		.trans_id_o(ld_trans_id),
		.result_o(ld_result),
		.ex_o(ld_ex),
		.translation_req_o(ld_translation_req),
		.vaddr_o(ld_vaddr),
		.tinst_o(ld_tinst),
		.hs_ld_st_inst_o(ld_hs_ld_st_inst),
		.hlvx_inst_o(ld_hlvx_inst),
		.paddr_i(mmu_paddr),
		.ex_i(mmu_exception),
		.dtlb_hit_i(dtlb_hit),
		.dtlb_ppn_i(dtlb_ppn),
		.page_offset_o(page_offset),
		.page_offset_matches_i(page_offset_matches),
		.store_buffer_empty_i(store_buffer_empty),
		.req_port_i(dcache_req_ports_i[((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]+:((2 + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]]),
		.req_port_o(dcache_req_ports_o[(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) + (((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))+:(((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1))]),
		.dcache_wbuffer_not_ni_i(dcache_wbuffer_not_ni_i),
		.commit_tran_id_i(commit_tran_id_i),
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i)
	);
	// Trace: core/load_store_unit.sv:433:3
	shift_reg_400DE_F5F53 #(
		.dtype_CVA6Cfg(CVA6Cfg),
		.dtype_exception_t_exception_t_CVA6Cfg(exception_t_exception_t_CVA6Cfg),
		.Depth(CVA6Cfg[16808-:32])
	) i_pipe_reg_load(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.d_i({ld_valid, ld_trans_id, ld_result, ld_ex}),
		.d_o({load_valid_o, load_trans_id_o, load_result_o, load_exception_o})
	);
	// Trace: core/load_store_unit.sv:443:3
	shift_reg_400DE_F5F53 #(
		.dtype_CVA6Cfg(CVA6Cfg),
		.dtype_exception_t_exception_t_CVA6Cfg(exception_t_exception_t_CVA6Cfg),
		.Depth(CVA6Cfg[16776-:32])
	) i_pipe_reg_store(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.d_i({st_valid, st_trans_id, st_result, st_ex}),
		.d_o({store_valid_o, store_trans_id_o, store_result_o, store_exception_o})
	);
	// Trace: core/load_store_unit.sv:454:3
	// removed localparam type ariane_pkg_fu_t
	always @(*) begin : which_op
		if (_sv2v_0)
			;
		// Trace: core/load_store_unit.sv:456:5
		ld_valid_i = 1'b0;
		// Trace: core/load_store_unit.sv:457:5
		st_valid_i = 1'b0;
		// Trace: core/load_store_unit.sv:459:5
		translation_req = 1'b0;
		// Trace: core/load_store_unit.sv:460:5
		mmu_vaddr = {CVA6Cfg[17070-:32] {1'b0}};
		// Trace: core/load_store_unit.sv:461:5
		mmu_tinst = {32 {1'b0}};
		// Trace: core/load_store_unit.sv:462:5
		mmu_hs_ld_st_inst = 1'b0;
		// Trace: core/load_store_unit.sv:463:5
		mmu_hlvx_inst = 1'b0;
		// Trace: core/load_store_unit.sv:466:5
		(* full_case, parallel_case *)
		case (lsu_ctrl[lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11-:((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11) >= (8 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) ? ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11) - (8 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))) + 1 : ((8 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)) + 1)])
			4'd1: begin
				// Trace: core/load_store_unit.sv:469:9
				ld_valid_i = lsu_ctrl[1 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))))];
				// Trace: core/load_store_unit.sv:470:9
				translation_req = ld_translation_req;
				// Trace: core/load_store_unit.sv:471:9
				mmu_vaddr = ld_vaddr;
				// Trace: core/load_store_unit.sv:472:9
				if (CVA6Cfg[16543]) begin
					// Trace: core/load_store_unit.sv:473:11
					mmu_tinst = ld_tinst;
					// Trace: core/load_store_unit.sv:474:11
					mmu_hs_ld_st_inst = ld_hs_ld_st_inst;
					// Trace: core/load_store_unit.sv:475:11
					mmu_hlvx_inst = ld_hlvx_inst;
				end
			end
			4'd2: begin
				// Trace: core/load_store_unit.sv:480:9
				st_valid_i = lsu_ctrl[1 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))))];
				// Trace: core/load_store_unit.sv:481:9
				translation_req = st_translation_req;
				// Trace: core/load_store_unit.sv:482:9
				mmu_vaddr = st_vaddr;
				// Trace: core/load_store_unit.sv:483:9
				if (CVA6Cfg[16543]) begin
					// Trace: core/load_store_unit.sv:484:11
					mmu_tinst = st_tinst;
					// Trace: core/load_store_unit.sv:485:11
					mmu_hs_ld_st_inst = st_hs_ld_st_inst;
					// Trace: core/load_store_unit.sv:486:11
					mmu_hlvx_inst = st_hlvx_inst;
				end
			end
			default:
				;
		endcase
	end
	// Trace: core/load_store_unit.sv:498:3
	// removed localparam type ariane_pkg_fu_op
	generate
		if (CVA6Cfg[16543]) begin : genblk3
			// Trace: core/load_store_unit.sv:499:5
			always @(*) begin : hyp_ld_st
				if (_sv2v_0)
					;
				// Trace: core/load_store_unit.sv:501:7
				hs_ld_st_inst = 1'b0;
				// Trace: core/load_store_unit.sv:502:7
				hlvx_inst = 1'b0;
				// Trace: core/load_store_unit.sv:503:7
				case (lsu_ctrl[lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7-:((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) >= (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) ? ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) + 1 : ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7)) + 1)])
					8'd48, 8'd49, 8'd50, 8'd51, 8'd53, 8'd55, 8'd56, 8'd57, 8'd58, 8'd59, 8'd60:
						// Trace: core/load_store_unit.sv:506:11
						hs_ld_st_inst = 1'b1;
					8'd54, 8'd52: begin
						// Trace: core/load_store_unit.sv:509:11
						hs_ld_st_inst = 1'b1;
						// Trace: core/load_store_unit.sv:510:11
						hlvx_inst = 1'b1;
					end
					default:
						;
				endcase
			end
		end
		else begin : genblk3
			// Trace: core/load_store_unit.sv:516:5
			wire [1:1] sv2v_tmp_7ADB3;
			assign sv2v_tmp_7ADB3 = 1'b0;
			always @(*) hs_ld_st_inst = sv2v_tmp_7ADB3;
			// Trace: core/load_store_unit.sv:517:5
			wire [1:1] sv2v_tmp_F04E9;
			assign sv2v_tmp_F04E9 = 1'b0;
			always @(*) hlvx_inst = sv2v_tmp_F04E9;
		end
	endgenerate
	// Trace: core/load_store_unit.sv:527:3
	function automatic [7:0] ariane_pkg_be_gen;
		// Trace: core/include/ariane_pkg.sv:737:41
		input reg [2:0] addr;
		// Trace: core/include/ariane_pkg.sv:737:59
		input reg [1:0] size;
		reg [0:1] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			// Trace: core/include/ariane_pkg.sv:738:5
			case (size)
				2'b11: begin
					// Trace: core/include/ariane_pkg.sv:740:9
					ariane_pkg_be_gen = 8'b11111111;
					_sv2v_jump = 2'b11;
				end
				2'b10:
					// Trace: core/include/ariane_pkg.sv:743:9
					case (addr[2:0])
						3'b000: begin
							ariane_pkg_be_gen = 8'b00001111;
							_sv2v_jump = 2'b11;
						end
						3'b001: begin
							ariane_pkg_be_gen = 8'b00011110;
							_sv2v_jump = 2'b11;
						end
						3'b010: begin
							ariane_pkg_be_gen = 8'b00111100;
							_sv2v_jump = 2'b11;
						end
						3'b011: begin
							ariane_pkg_be_gen = 8'b01111000;
							_sv2v_jump = 2'b11;
						end
						3'b100: begin
							ariane_pkg_be_gen = 8'b11110000;
							_sv2v_jump = 2'b11;
						end
						default:
							;
					endcase
				2'b01:
					// Trace: core/include/ariane_pkg.sv:753:9
					case (addr[2:0])
						3'b000: begin
							ariane_pkg_be_gen = 8'b00000011;
							_sv2v_jump = 2'b11;
						end
						3'b001: begin
							ariane_pkg_be_gen = 8'b00000110;
							_sv2v_jump = 2'b11;
						end
						3'b010: begin
							ariane_pkg_be_gen = 8'b00001100;
							_sv2v_jump = 2'b11;
						end
						3'b011: begin
							ariane_pkg_be_gen = 8'b00011000;
							_sv2v_jump = 2'b11;
						end
						3'b100: begin
							ariane_pkg_be_gen = 8'b00110000;
							_sv2v_jump = 2'b11;
						end
						3'b101: begin
							ariane_pkg_be_gen = 8'b01100000;
							_sv2v_jump = 2'b11;
						end
						3'b110: begin
							ariane_pkg_be_gen = 8'b11000000;
							_sv2v_jump = 2'b11;
						end
						default:
							;
					endcase
				2'b00:
					// Trace: core/include/ariane_pkg.sv:765:9
					case (addr[2:0])
						3'b000: begin
							ariane_pkg_be_gen = 8'b00000001;
							_sv2v_jump = 2'b11;
						end
						3'b001: begin
							ariane_pkg_be_gen = 8'b00000010;
							_sv2v_jump = 2'b11;
						end
						3'b010: begin
							ariane_pkg_be_gen = 8'b00000100;
							_sv2v_jump = 2'b11;
						end
						3'b011: begin
							ariane_pkg_be_gen = 8'b00001000;
							_sv2v_jump = 2'b11;
						end
						3'b100: begin
							ariane_pkg_be_gen = 8'b00010000;
							_sv2v_jump = 2'b11;
						end
						3'b101: begin
							ariane_pkg_be_gen = 8'b00100000;
							_sv2v_jump = 2'b11;
						end
						3'b110: begin
							ariane_pkg_be_gen = 8'b01000000;
							_sv2v_jump = 2'b11;
						end
						3'b111: begin
							ariane_pkg_be_gen = 8'b10000000;
							_sv2v_jump = 2'b11;
						end
					endcase
			endcase
			if (_sv2v_jump == 2'b00) begin
				ariane_pkg_be_gen = 8'b00000000;
				_sv2v_jump = 2'b11;
			end
		end
	endfunction
	function automatic [3:0] ariane_pkg_be_gen_32;
		// Trace: core/include/ariane_pkg.sv:780:44
		input reg [1:0] addr;
		// Trace: core/include/ariane_pkg.sv:780:62
		input reg [1:0] size;
		reg [0:1] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			// Trace: core/include/ariane_pkg.sv:781:5
			case (size)
				2'b10: begin
					// Trace: core/include/ariane_pkg.sv:783:9
					ariane_pkg_be_gen_32 = 4'b1111;
					_sv2v_jump = 2'b11;
				end
				2'b01:
					// Trace: core/include/ariane_pkg.sv:786:9
					case (addr[1:0])
						2'b00: begin
							ariane_pkg_be_gen_32 = 4'b0011;
							_sv2v_jump = 2'b11;
						end
						2'b01: begin
							ariane_pkg_be_gen_32 = 4'b0110;
							_sv2v_jump = 2'b11;
						end
						2'b10: begin
							ariane_pkg_be_gen_32 = 4'b1100;
							_sv2v_jump = 2'b11;
						end
						default:
							;
					endcase
				2'b00:
					// Trace: core/include/ariane_pkg.sv:794:9
					case (addr[1:0])
						2'b00: begin
							ariane_pkg_be_gen_32 = 4'b0001;
							_sv2v_jump = 2'b11;
						end
						2'b01: begin
							ariane_pkg_be_gen_32 = 4'b0010;
							_sv2v_jump = 2'b11;
						end
						2'b10: begin
							ariane_pkg_be_gen_32 = 4'b0100;
							_sv2v_jump = 2'b11;
						end
						2'b11: begin
							ariane_pkg_be_gen_32 = 4'b1000;
							_sv2v_jump = 2'b11;
						end
					endcase
				default: begin
					ariane_pkg_be_gen_32 = 4'b0000;
					_sv2v_jump = 2'b11;
				end
			endcase
			if (_sv2v_jump == 2'b00) begin
				ariane_pkg_be_gen_32 = 4'b0000;
				_sv2v_jump = 2'b11;
			end
		end
	endfunction
	function automatic [1:0] ariane_pkg_extract_transfer_size;
		// Trace: core/include/ariane_pkg.sv:809:56
		input reg [7:0] op;
		// Trace: core/include/ariane_pkg.sv:810:5
		case (op)
			8'd37, 8'd59, 8'd38, 8'd60, 8'd96, 8'd100, 8'd62, 8'd64, 8'd74, 8'd75, 8'd76, 8'd77, 8'd78, 8'd79, 8'd80, 8'd81, 8'd82:
				// Trace: core/include/ariane_pkg.sv:818:9
				ariane_pkg_extract_transfer_size = 2'b11;
			8'd39, 8'd40, 8'd53, 8'd58, 8'd54, 8'd41, 8'd57, 8'd97, 8'd101, 8'd61, 8'd63, 8'd65, 8'd66, 8'd67, 8'd68, 8'd69, 8'd70, 8'd71, 8'd72, 8'd73:
				// Trace: core/include/ariane_pkg.sv:828:9
				ariane_pkg_extract_transfer_size = 2'b10;
			8'd42, 8'd43, 8'd50, 8'd51, 8'd52, 8'd44, 8'd56, 8'd98, 8'd102: ariane_pkg_extract_transfer_size = 2'b01;
			8'd45, 8'd47, 8'd48, 8'd49, 8'd46, 8'd55, 8'd99, 8'd103: ariane_pkg_extract_transfer_size = 2'b00;
			default: ariane_pkg_extract_transfer_size = 2'b11;
		endcase
	endfunction
	generate
		if (CVA6Cfg[16973]) begin : gen_8b_be
			// Trace: core/load_store_unit.sv:528:5
			assign be_i = ariane_pkg_be_gen(vaddr_i[2:0], ariane_pkg_extract_transfer_size(fu_data_i[8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)]));
		end
		else begin : gen_4b_be
			// Trace: core/load_store_unit.sv:530:5
			assign be_i = ariane_pkg_be_gen_32(vaddr_i[1:0], ariane_pkg_extract_transfer_size(fu_data_i[8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)]));
		end
	endgenerate
	// Trace: core/load_store_unit.sv:539:3
	localparam cva6_config_pkg_CVA6ConfigXlen = 64;
	localparam riscv_XLEN = cva6_config_pkg_CVA6ConfigXlen;
	localparam [63:0] riscv_LD_ADDR_MISALIGNED = 4;
	localparam [63:0] riscv_LOAD_GUEST_PAGE_FAULT = 21;
	localparam [63:0] riscv_LOAD_PAGE_FAULT = 13;
	localparam [63:0] riscv_STORE_GUEST_PAGE_FAULT = 23;
	localparam [63:0] riscv_STORE_PAGE_FAULT = 15;
	localparam [63:0] riscv_ST_ADDR_MISALIGNED = 6;
	always @(*) begin : data_misaligned_detection
		if (_sv2v_0)
			;
		// Trace: core/load_store_unit.sv:540:5
		misaligned_exception = {{CVA6Cfg[17102-:32] {1'b0}}, {CVA6Cfg[17102-:32] {1'b0}}, {CVA6Cfg[17006-:32] {1'b0}}, {32 {1'b0}}, 2'b00};
		// Trace: core/load_store_unit.sv:543:5
		data_misaligned = 1'b0;
		// Trace: core/load_store_unit.sv:545:5
		if (lsu_ctrl[1 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))))]) begin
			// Trace: core/load_store_unit.sv:546:7
			if (CVA6Cfg[16973])
				// Trace: core/load_store_unit.sv:547:9
				case (lsu_ctrl[lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7-:((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) >= (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) ? ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) + 1 : ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7)) + 1)])
					8'd37, 8'd38, 8'd96, 8'd100, 8'd62, 8'd64, 8'd74, 8'd75, 8'd76, 8'd77, 8'd78, 8'd79, 8'd80, 8'd81, 8'd82, 8'd59, 8'd60:
						// Trace: core/load_store_unit.sv:554:13
						if (lsu_ctrl[(lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] - 3):(lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] - 1)] != 3'b000)
							// Trace: core/load_store_unit.sv:555:15
							data_misaligned = 1'b1;
					default:
						;
				endcase
			case (lsu_ctrl[lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7-:((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) >= (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) ? ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) + 1 : ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7)) + 1)])
				8'd39, 8'd40, 8'd41, 8'd97, 8'd101, 8'd61, 8'd63, 8'd65, 8'd66, 8'd67, 8'd68, 8'd69, 8'd70, 8'd71, 8'd72, 8'd73, 8'd53, 8'd58, 8'd54, 8'd57:
					// Trace: core/load_store_unit.sv:568:11
					if (lsu_ctrl[(lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] - 2):(lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] - 1)] != 2'b00)
						// Trace: core/load_store_unit.sv:569:13
						data_misaligned = 1'b1;
				8'd42, 8'd43, 8'd44, 8'd98, 8'd102, 8'd50, 8'd51, 8'd52, 8'd56:
					// Trace: core/load_store_unit.sv:574:11
					if (lsu_ctrl[(lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] - 1)] != 1'b0)
						// Trace: core/load_store_unit.sv:575:13
						data_misaligned = 1'b1;
				default:
					;
			endcase
		end
		if (data_misaligned)
			// Trace: core/load_store_unit.sv:584:7
			case (lsu_ctrl[lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11-:((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11) >= (8 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) ? ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11) - (8 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))) + 1 : ((8 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)) + 1)])
				4'd1: begin
					// Trace: core/load_store_unit.sv:586:11
					misaligned_exception[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_LD_ADDR_MISALIGNED;
					// Trace: core/load_store_unit.sv:587:11
					misaligned_exception[0] = 1'b1;
					// Trace: core/load_store_unit.sv:588:11
					if (CVA6Cfg[15915])
						// Trace: core/load_store_unit.sv:589:13
						misaligned_exception[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {1'b0}}, lsu_ctrl[lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))-:((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) >= (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))))) + 1)]};
					if (CVA6Cfg[16543]) begin
						// Trace: core/load_store_unit.sv:591:13
						misaligned_exception[exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
						// Trace: core/load_store_unit.sv:592:13
						misaligned_exception[33-:32] = lsu_ctrl[36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))-:((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) >= (4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) - (4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) + 1)];
						// Trace: core/load_store_unit.sv:593:13
						misaligned_exception[1] = ld_st_v_i;
					end
				end
				4'd2: begin
					// Trace: core/load_store_unit.sv:598:11
					misaligned_exception[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_ST_ADDR_MISALIGNED;
					// Trace: core/load_store_unit.sv:599:11
					misaligned_exception[0] = 1'b1;
					// Trace: core/load_store_unit.sv:600:11
					if (CVA6Cfg[15915])
						// Trace: core/load_store_unit.sv:601:13
						misaligned_exception[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {1'b0}}, lsu_ctrl[lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))-:((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) >= (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))))) + 1)]};
					if (CVA6Cfg[16543]) begin
						// Trace: core/load_store_unit.sv:603:13
						misaligned_exception[exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
						// Trace: core/load_store_unit.sv:604:13
						misaligned_exception[33-:32] = lsu_ctrl[36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))-:((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) >= (4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) - (4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) + 1)];
						// Trace: core/load_store_unit.sv:605:13
						misaligned_exception[1] = ld_st_v_i;
					end
				end
				default:
					;
			endcase
		if ((CVA6Cfg[16367] && en_ld_st_translation_i) && lsu_ctrl[2 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))])
			// Trace: core/load_store_unit.sv:614:7
			case (lsu_ctrl[lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11-:((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11) >= (8 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) ? ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11) - (8 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))) + 1 : ((8 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)) + 1)])
				4'd1: begin
					// Trace: core/load_store_unit.sv:616:11
					misaligned_exception[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_LOAD_PAGE_FAULT;
					// Trace: core/load_store_unit.sv:617:11
					misaligned_exception[0] = 1'b1;
					// Trace: core/load_store_unit.sv:618:11
					if (CVA6Cfg[15915])
						// Trace: core/load_store_unit.sv:619:13
						misaligned_exception[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {1'b0}}, lsu_ctrl[lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))-:((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) >= (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))))) + 1)]};
					if (CVA6Cfg[16543]) begin
						// Trace: core/load_store_unit.sv:621:13
						misaligned_exception[exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
						// Trace: core/load_store_unit.sv:622:13
						misaligned_exception[33-:32] = lsu_ctrl[36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))-:((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) >= (4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) - (4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) + 1)];
						// Trace: core/load_store_unit.sv:623:13
						misaligned_exception[1] = ld_st_v_i;
					end
				end
				4'd2: begin
					// Trace: core/load_store_unit.sv:627:11
					misaligned_exception[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_STORE_PAGE_FAULT;
					// Trace: core/load_store_unit.sv:628:11
					misaligned_exception[0] = 1'b1;
					// Trace: core/load_store_unit.sv:629:11
					if (CVA6Cfg[15915])
						// Trace: core/load_store_unit.sv:630:13
						misaligned_exception[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {1'b0}}, lsu_ctrl[lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))-:((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) >= (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))))) + 1)]};
					if (CVA6Cfg[16543]) begin
						// Trace: core/load_store_unit.sv:632:13
						misaligned_exception[exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
						// Trace: core/load_store_unit.sv:633:13
						misaligned_exception[33-:32] = lsu_ctrl[36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))-:((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) >= (4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) - (4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) + 1)];
						// Trace: core/load_store_unit.sv:634:13
						misaligned_exception[1] = ld_st_v_i;
					end
				end
				default:
					;
			endcase
		if ((((CVA6Cfg[16367] && CVA6Cfg[16543]) && en_ld_st_g_translation_i) && !en_ld_st_translation_i) && lsu_ctrl[1 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))])
			// Trace: core/load_store_unit.sv:643:7
			case (lsu_ctrl[lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11-:((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11) >= (8 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) ? ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11) - (8 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))) + 1 : ((8 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)) + 1)])
				4'd1: begin
					// Trace: core/load_store_unit.sv:645:11
					misaligned_exception[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_LOAD_GUEST_PAGE_FAULT;
					// Trace: core/load_store_unit.sv:646:11
					misaligned_exception[0] = 1'b1;
					// Trace: core/load_store_unit.sv:647:11
					if (CVA6Cfg[15915])
						// Trace: core/load_store_unit.sv:648:13
						misaligned_exception[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {1'b0}}, lsu_ctrl[lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))-:((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) >= (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))))) + 1)]};
					if (CVA6Cfg[16543]) begin
						// Trace: core/load_store_unit.sv:650:13
						misaligned_exception[exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
						// Trace: core/load_store_unit.sv:651:13
						misaligned_exception[33-:32] = lsu_ctrl[36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))-:((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) >= (4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) - (4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) + 1)];
						// Trace: core/load_store_unit.sv:652:13
						misaligned_exception[1] = ld_st_v_i;
					end
				end
				4'd2: begin
					// Trace: core/load_store_unit.sv:656:11
					misaligned_exception[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_STORE_GUEST_PAGE_FAULT;
					// Trace: core/load_store_unit.sv:657:11
					misaligned_exception[0] = 1'b1;
					// Trace: core/load_store_unit.sv:658:11
					if (CVA6Cfg[15915])
						// Trace: core/load_store_unit.sv:659:13
						misaligned_exception[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {1'b0}}, lsu_ctrl[lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))-:((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) >= (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))))) + 1)]};
					if (CVA6Cfg[16543]) begin
						// Trace: core/load_store_unit.sv:661:13
						misaligned_exception[exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
						// Trace: core/load_store_unit.sv:662:13
						misaligned_exception[33-:32] = lsu_ctrl[36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))-:((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) >= (4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) - (4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((4 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) + 1)];
						// Trace: core/load_store_unit.sv:663:13
						misaligned_exception[1] = ld_st_v_i;
					end
				end
				default:
					;
			endcase
	end
	// Trace: core/load_store_unit.sv:676:3
	wire [((((((1 + lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32]) - 1:0] lsu_req_i;
	// Trace: core/load_store_unit.sv:678:3
	assign lsu_req_i = {lsu_valid_i, vaddr_i, tinst_i, hs_ld_st_inst, hlvx_inst, overflow, g_overflow, fu_data_i[fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))-:((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))) >= (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)) ? ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))) + 1)], be_i, fu_data_i[12 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((12 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) ? ((12 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) - (12 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)], fu_data_i[8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)], fu_data_i[fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1-:fu_data_t_fu_data_t_CVA6Cfg[16503-:32]]};
	// Trace: core/load_store_unit.sv:693:3
	lsu_bypass_0E76B_05199 #(
		.lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg(lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) lsu_bypass_i(
		.lsu_req_i(lsu_req_i),
		.lsu_req_valid_i(lsu_valid_i),
		.pop_ld_i(pop_ld),
		.pop_st_i(pop_st),
		.lsu_ctrl_o(lsu_ctrl),
		.ready_o(lsu_ready_o),
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i)
	);
	// Trace: core/load_store_unit.sv:707:3
	assign rvfi_lsu_ctrl_o = lsu_ctrl;
	initial _sv2v_0 = 0;
endmodule
