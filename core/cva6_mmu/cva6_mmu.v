module cva6_mmu_A7BB5_88A65 (
	clk_i,
	rst_ni,
	flush_i,
	enable_translation_i,
	enable_g_translation_i,
	en_ld_st_translation_i,
	en_ld_st_g_translation_i,
	icache_areq_i,
	icache_areq_o,
	misaligned_ex_i,
	lsu_req_i,
	lsu_vaddr_i,
	lsu_tinst_i,
	lsu_is_store_i,
	csr_hs_ld_st_inst_o,
	lsu_dtlb_hit_o,
	lsu_dtlb_ppn_o,
	lsu_valid_o,
	lsu_paddr_o,
	lsu_exception_o,
	priv_lvl_i,
	v_i,
	ld_st_priv_lvl_i,
	ld_st_v_i,
	sum_i,
	vs_sum_i,
	mxr_i,
	vmxr_i,
	hlvx_inst_i,
	hs_ld_st_inst_i,
	satp_ppn_i,
	vsatp_ppn_i,
	hgatp_ppn_i,
	asid_i,
	vs_asid_i,
	asid_to_be_flushed_i,
	vmid_i,
	vmid_to_be_flushed_i,
	vaddr_to_be_flushed_i,
	gpaddr_to_be_flushed_i,
	flush_tlb_i,
	flush_tlb_vvma_i,
	flush_tlb_gvma_i,
	itlb_miss_o,
	dtlb_miss_o,
	req_port_i,
	req_port_o,
	pmpcfg_i,
	pmpaddr_i,
	c3_enable_i
);
	// removed localparam type dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg = 0;
	// removed localparam type exception_t_exception_t_exception_t_CVA6Cfg_type
	parameter [17102:0] exception_t_exception_t_exception_t_CVA6Cfg = 0;
	// removed localparam type icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg_type
	parameter [17102:0] icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg = 0;
	// removed localparam type icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg_type
	parameter [17102:0] icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg = 0;
	// removed localparam type icache_dreq_t_icache_dreq_t_icache_dreq_t_CVA6Cfg_type
	parameter [17102:0] icache_dreq_t_icache_dreq_t_icache_dreq_t_CVA6Cfg = 0;
	// removed localparam type icache_drsp_t_icache_drsp_t_icache_drsp_t_CVA6Cfg_type
	parameter [17102:0] icache_drsp_t_icache_drsp_t_icache_drsp_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/cva6_mmu/cva6_mmu.sv:28:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cva6_mmu/cva6_mmu.sv:29:38
	// removed localparam type icache_areq_t
	// Trace: core/cva6_mmu/cva6_mmu.sv:30:38
	// removed localparam type icache_arsp_t
	// Trace: core/cva6_mmu/cva6_mmu.sv:31:38
	// removed localparam type icache_dreq_t
	// Trace: core/cva6_mmu/cva6_mmu.sv:32:38
	// removed localparam type icache_drsp_t
	// Trace: core/cva6_mmu/cva6_mmu.sv:33:38
	// removed localparam type dcache_req_i_t
	// Trace: core/cva6_mmu/cva6_mmu.sv:34:38
	// removed localparam type dcache_req_o_t
	// Trace: core/cva6_mmu/cva6_mmu.sv:35:38
	// removed localparam type exception_t
	// Trace: core/cva6_mmu/cva6_mmu.sv:36:15
	parameter [31:0] HYP_EXT = 0;
	// Trace: core/cva6_mmu/cva6_mmu.sv:39:5
	input wire clk_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:40:5
	input wire rst_ni;
	// Trace: core/cva6_mmu/cva6_mmu.sv:41:5
	input wire flush_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:42:5
	input wire enable_translation_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:43:5
	input wire enable_g_translation_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:44:5
	input wire en_ld_st_translation_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:45:5
	input wire en_ld_st_g_translation_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:47:5
	input wire [(1 + icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32]) - 1:0] icache_areq_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:48:5
	output reg [((1 + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] icache_areq_o;
	// Trace: core/cva6_mmu/cva6_mmu.sv:52:5
	input wire [((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] misaligned_ex_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:53:5
	input wire lsu_req_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:54:5
	input wire [CVA6Cfg[17070-:32] - 1:0] lsu_vaddr_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:55:5
	input wire [31:0] lsu_tinst_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:56:5
	input wire lsu_is_store_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:57:5
	output reg csr_hs_ld_st_inst_o;
	// Trace: core/cva6_mmu/cva6_mmu.sv:60:5
	output wire lsu_dtlb_hit_o;
	// Trace: core/cva6_mmu/cva6_mmu.sv:61:5
	output reg [CVA6Cfg[419-:32] - 1:0] lsu_dtlb_ppn_o;
	// Trace: core/cva6_mmu/cva6_mmu.sv:63:5
	output reg lsu_valid_o;
	// Trace: core/cva6_mmu/cva6_mmu.sv:64:5
	output reg [CVA6Cfg[17038-:32] - 1:0] lsu_paddr_o;
	// Trace: core/cva6_mmu/cva6_mmu.sv:65:5
	output reg [((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] lsu_exception_o;
	// Trace: core/cva6_mmu/cva6_mmu.sv:67:5
	// removed localparam type riscv_priv_lvl_t
	input wire [1:0] priv_lvl_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:68:5
	input wire v_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:69:5
	input wire [1:0] ld_st_priv_lvl_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:70:5
	input wire ld_st_v_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:71:5
	input wire sum_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:72:5
	input wire vs_sum_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:73:5
	input wire mxr_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:74:5
	input wire vmxr_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:75:5
	input wire hlvx_inst_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:76:5
	input wire hs_ld_st_inst_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:78:5
	input wire [CVA6Cfg[419-:32] - 1:0] satp_ppn_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:79:5
	input wire [CVA6Cfg[419-:32] - 1:0] vsatp_ppn_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:80:5
	input wire [CVA6Cfg[419-:32] - 1:0] hgatp_ppn_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:82:5
	input wire [CVA6Cfg[16940-:32] - 1:0] asid_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:83:5
	input wire [CVA6Cfg[16940-:32] - 1:0] vs_asid_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:84:5
	input wire [CVA6Cfg[16940-:32] - 1:0] asid_to_be_flushed_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:85:5
	input wire [CVA6Cfg[16908-:32] - 1:0] vmid_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:86:5
	input wire [CVA6Cfg[16908-:32] - 1:0] vmid_to_be_flushed_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:87:5
	input wire [CVA6Cfg[17070-:32] - 1:0] vaddr_to_be_flushed_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:88:5
	input wire [CVA6Cfg[17006-:32] - 1:0] gpaddr_to_be_flushed_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:90:5
	input wire flush_tlb_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:91:5
	input wire flush_tlb_vvma_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:92:5
	input wire flush_tlb_gvma_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:95:5
	output wire itlb_miss_o;
	// Trace: core/cva6_mmu/cva6_mmu.sv:96:5
	output wire dtlb_miss_o;
	// Trace: core/cva6_mmu/cva6_mmu.sv:98:5
	input wire [(((2 + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]) - 1:0] req_port_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:99:5
	output wire [(((((((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1:0] req_port_o;
	// Trace: core/cva6_mmu/cva6_mmu.sv:102:5
	// removed localparam type riscv_pmp_addr_mode_t
	// removed localparam type riscv_pmpcfg_access_t
	// removed localparam type riscv_pmpcfg_t
	input wire [(CVA6Cfg[15913-:32] * 8) - 1:0] pmpcfg_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:103:5
	input wire [((CVA6Cfg[17038-:32] - 3) >= 0 ? (CVA6Cfg[15913-:32] * (CVA6Cfg[17038-:32] - 2)) - 1 : (CVA6Cfg[15913-:32] * (4 - CVA6Cfg[17038-:32])) + (CVA6Cfg[17038-:32] - 4)):((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3)] pmpaddr_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:104:5
	input wire c3_enable_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:108:3
	// removed localparam type pte_cva6_t
	// Trace: core/cva6_mmu/cva6_mmu.sv:122:3
	// removed localparam type tlb_update_cva6_t
	// Trace: core/cva6_mmu/cva6_mmu.sv:133:3
	reg iaccess_err;
	// Trace: core/cva6_mmu/cva6_mmu.sv:134:3
	reg i_g_st_access_err;
	// Trace: core/cva6_mmu/cva6_mmu.sv:135:3
	reg daccess_err;
	// Trace: core/cva6_mmu/cva6_mmu.sv:136:3
	reg d_g_st_access_err;
	// Trace: core/cva6_mmu/cva6_mmu.sv:137:3
	wire ptw_active;
	// Trace: core/cva6_mmu/cva6_mmu.sv:138:3
	wire walking_instr;
	// Trace: core/cva6_mmu/cva6_mmu.sv:139:3
	wire ptw_error;
	// Trace: core/cva6_mmu/cva6_mmu.sv:140:3
	wire ptw_error_at_g_st;
	// Trace: core/cva6_mmu/cva6_mmu.sv:141:3
	wire ptw_err_at_g_int_st;
	// Trace: core/cva6_mmu/cva6_mmu.sv:142:3
	wire ptw_access_exception;
	// Trace: core/cva6_mmu/cva6_mmu.sv:143:3
	wire [CVA6Cfg[17038-:32] - 1:0] ptw_bad_paddr;
	// Trace: core/cva6_mmu/cva6_mmu.sv:144:3
	wire [CVA6Cfg[17006-:32] - 1:0] ptw_bad_gpaddr;
	// Trace: core/cva6_mmu/cva6_mmu.sv:146:3
	wire [CVA6Cfg[17070-:32] - 1:0] update_vaddr;
	wire [CVA6Cfg[17070-:32] - 1:0] shared_tlb_vaddr;
	// Trace: core/cva6_mmu/cva6_mmu.sv:148:3
	wire [(((((((1 + (((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? ((CVA6Cfg[16011-:32] - 1) * (HYP_EXT + 1)) - 1 : ((CVA6Cfg[16011-:32] - 1) * (1 - HYP_EXT)) + (HYP_EXT - 1)) : (HYP_EXT >= 0 ? ((3 - CVA6Cfg[16011-:32]) * (HYP_EXT + 1)) + (((CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1)) - 1) : ((3 - CVA6Cfg[16011-:32]) * (1 - HYP_EXT)) + ((HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT))) - 1))) >= ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? 0 : HYP_EXT + 0) : (HYP_EXT >= 0 ? (CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1) : HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT)))) ? (((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? ((CVA6Cfg[16011-:32] - 1) * (HYP_EXT + 1)) - 1 : ((CVA6Cfg[16011-:32] - 1) * (1 - HYP_EXT)) + (HYP_EXT - 1)) : (HYP_EXT >= 0 ? ((3 - CVA6Cfg[16011-:32]) * (HYP_EXT + 1)) + (((CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1)) - 1) : ((3 - CVA6Cfg[16011-:32]) * (1 - HYP_EXT)) + ((HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT))) - 1))) - ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? 0 : HYP_EXT + 0) : (HYP_EXT >= 0 ? (CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1) : HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT))))) + 1 : (((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? 0 : HYP_EXT + 0) : (HYP_EXT >= 0 ? (CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1) : HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT)))) - ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? ((CVA6Cfg[16011-:32] - 1) * (HYP_EXT + 1)) - 1 : ((CVA6Cfg[16011-:32] - 1) * (1 - HYP_EXT)) + (HYP_EXT - 1)) : (HYP_EXT >= 0 ? ((3 - CVA6Cfg[16011-:32]) * (HYP_EXT + 1)) + (((CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1)) - 1) : ((3 - CVA6Cfg[16011-:32]) * (1 - HYP_EXT)) + ((HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT))) - 1)))) + 1)) + CVA6Cfg[16043-:32]) + CVA6Cfg[16940-:32]) + CVA6Cfg[16908-:32]) + ((HYP_EXT * 2) >= 0 ? (HYP_EXT * 2) + 1 : 1 - (HYP_EXT * 2))) + (((10 + CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + CVA6Cfg[419-:32]) + 10 : 1 - ((10 + CVA6Cfg[419-:32]) + 9))) + (((10 + CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + CVA6Cfg[419-:32]) + 10 : 1 - ((10 + CVA6Cfg[419-:32]) + 9))) - 1:0] update_itlb;
	wire [(((((((1 + (((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? ((CVA6Cfg[16011-:32] - 1) * (HYP_EXT + 1)) - 1 : ((CVA6Cfg[16011-:32] - 1) * (1 - HYP_EXT)) + (HYP_EXT - 1)) : (HYP_EXT >= 0 ? ((3 - CVA6Cfg[16011-:32]) * (HYP_EXT + 1)) + (((CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1)) - 1) : ((3 - CVA6Cfg[16011-:32]) * (1 - HYP_EXT)) + ((HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT))) - 1))) >= ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? 0 : HYP_EXT + 0) : (HYP_EXT >= 0 ? (CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1) : HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT)))) ? (((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? ((CVA6Cfg[16011-:32] - 1) * (HYP_EXT + 1)) - 1 : ((CVA6Cfg[16011-:32] - 1) * (1 - HYP_EXT)) + (HYP_EXT - 1)) : (HYP_EXT >= 0 ? ((3 - CVA6Cfg[16011-:32]) * (HYP_EXT + 1)) + (((CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1)) - 1) : ((3 - CVA6Cfg[16011-:32]) * (1 - HYP_EXT)) + ((HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT))) - 1))) - ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? 0 : HYP_EXT + 0) : (HYP_EXT >= 0 ? (CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1) : HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT))))) + 1 : (((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? 0 : HYP_EXT + 0) : (HYP_EXT >= 0 ? (CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1) : HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT)))) - ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? ((CVA6Cfg[16011-:32] - 1) * (HYP_EXT + 1)) - 1 : ((CVA6Cfg[16011-:32] - 1) * (1 - HYP_EXT)) + (HYP_EXT - 1)) : (HYP_EXT >= 0 ? ((3 - CVA6Cfg[16011-:32]) * (HYP_EXT + 1)) + (((CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1)) - 1) : ((3 - CVA6Cfg[16011-:32]) * (1 - HYP_EXT)) + ((HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT))) - 1)))) + 1)) + CVA6Cfg[16043-:32]) + CVA6Cfg[16940-:32]) + CVA6Cfg[16908-:32]) + ((HYP_EXT * 2) >= 0 ? (HYP_EXT * 2) + 1 : 1 - (HYP_EXT * 2))) + (((10 + CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + CVA6Cfg[419-:32]) + 10 : 1 - ((10 + CVA6Cfg[419-:32]) + 9))) + (((10 + CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + CVA6Cfg[419-:32]) + 10 : 1 - ((10 + CVA6Cfg[419-:32]) + 9))) - 1:0] update_dtlb;
	wire [(((((((1 + (((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? ((CVA6Cfg[16011-:32] - 1) * (HYP_EXT + 1)) - 1 : ((CVA6Cfg[16011-:32] - 1) * (1 - HYP_EXT)) + (HYP_EXT - 1)) : (HYP_EXT >= 0 ? ((3 - CVA6Cfg[16011-:32]) * (HYP_EXT + 1)) + (((CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1)) - 1) : ((3 - CVA6Cfg[16011-:32]) * (1 - HYP_EXT)) + ((HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT))) - 1))) >= ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? 0 : HYP_EXT + 0) : (HYP_EXT >= 0 ? (CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1) : HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT)))) ? (((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? ((CVA6Cfg[16011-:32] - 1) * (HYP_EXT + 1)) - 1 : ((CVA6Cfg[16011-:32] - 1) * (1 - HYP_EXT)) + (HYP_EXT - 1)) : (HYP_EXT >= 0 ? ((3 - CVA6Cfg[16011-:32]) * (HYP_EXT + 1)) + (((CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1)) - 1) : ((3 - CVA6Cfg[16011-:32]) * (1 - HYP_EXT)) + ((HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT))) - 1))) - ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? 0 : HYP_EXT + 0) : (HYP_EXT >= 0 ? (CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1) : HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT))))) + 1 : (((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? 0 : HYP_EXT + 0) : (HYP_EXT >= 0 ? (CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1) : HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT)))) - ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT >= 0 ? ((CVA6Cfg[16011-:32] - 1) * (HYP_EXT + 1)) - 1 : ((CVA6Cfg[16011-:32] - 1) * (1 - HYP_EXT)) + (HYP_EXT - 1)) : (HYP_EXT >= 0 ? ((3 - CVA6Cfg[16011-:32]) * (HYP_EXT + 1)) + (((CVA6Cfg[16011-:32] - 2) * (HYP_EXT + 1)) - 1) : ((3 - CVA6Cfg[16011-:32]) * (1 - HYP_EXT)) + ((HYP_EXT + ((CVA6Cfg[16011-:32] - 2) * (1 - HYP_EXT))) - 1)))) + 1)) + CVA6Cfg[16043-:32]) + CVA6Cfg[16940-:32]) + CVA6Cfg[16908-:32]) + ((HYP_EXT * 2) >= 0 ? (HYP_EXT * 2) + 1 : 1 - (HYP_EXT * 2))) + (((10 + CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + CVA6Cfg[419-:32]) + 10 : 1 - ((10 + CVA6Cfg[419-:32]) + 9))) + (((10 + CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + CVA6Cfg[419-:32]) + 10 : 1 - ((10 + CVA6Cfg[419-:32]) + 9))) - 1:0] update_shared_tlb;
	// Trace: core/cva6_mmu/cva6_mmu.sv:150:3
	wire itlb_lu_access;
	// Trace: core/cva6_mmu/cva6_mmu.sv:151:3
	wire [(10 + CVA6Cfg[419-:32]) + 9:0] itlb_content;
	// Trace: core/cva6_mmu/cva6_mmu.sv:152:3
	wire [(10 + CVA6Cfg[419-:32]) + 9:0] itlb_g_content;
	// Trace: core/cva6_mmu/cva6_mmu.sv:153:3
	wire [CVA6Cfg[16011-:32] - 2:0] itlb_is_page;
	// Trace: core/cva6_mmu/cva6_mmu.sv:154:3
	wire itlb_lu_hit;
	// Trace: core/cva6_mmu/cva6_mmu.sv:155:3
	wire [CVA6Cfg[17006-:32] - 1:0] itlb_gpaddr;
	// Trace: core/cva6_mmu/cva6_mmu.sv:156:3
	wire [CVA6Cfg[16940-:32] - 1:0] itlb_lu_asid;
	// Trace: core/cva6_mmu/cva6_mmu.sv:158:3
	wire dtlb_lu_access;
	// Trace: core/cva6_mmu/cva6_mmu.sv:159:3
	wire [(10 + CVA6Cfg[419-:32]) + 9:0] dtlb_content;
	// Trace: core/cva6_mmu/cva6_mmu.sv:160:3
	wire [(10 + CVA6Cfg[419-:32]) + 9:0] dtlb_g_content;
	// Trace: core/cva6_mmu/cva6_mmu.sv:161:3
	wire [CVA6Cfg[16011-:32] - 2:0] dtlb_is_page;
	// Trace: core/cva6_mmu/cva6_mmu.sv:162:3
	wire [CVA6Cfg[16940-:32] - 1:0] dtlb_lu_asid;
	// Trace: core/cva6_mmu/cva6_mmu.sv:163:3
	wire dtlb_lu_hit;
	// Trace: core/cva6_mmu/cva6_mmu.sv:164:3
	wire [CVA6Cfg[17006-:32] - 1:0] dtlb_gpaddr;
	// Trace: core/cva6_mmu/cva6_mmu.sv:166:3
	wire shared_tlb_access;
	wire shared_tlb_miss;
	// Trace: core/cva6_mmu/cva6_mmu.sv:167:3
	wire shared_tlb_hit;
	wire itlb_req;
	// Trace: core/cva6_mmu/cva6_mmu.sv:171:3
	assign itlb_lu_access = icache_areq_i[icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] + 0];
	// Trace: core/cva6_mmu/cva6_mmu.sv:172:3
	assign dtlb_lu_access = lsu_req_i;
	// Trace: core/cva6_mmu/cva6_mmu.sv:173:3
	assign itlb_lu_asid = (v_i ? vs_asid_i : asid_i);
	// Trace: core/cva6_mmu/cva6_mmu.sv:174:3
	assign dtlb_lu_asid = (ld_st_v_i || flush_tlb_vvma_i ? vs_asid_i : asid_i);
	// Trace: core/cva6_mmu/cva6_mmu.sv:177:3
	cva6_tlb_DDFD6_A1F50 #(
		.pte_cva6_t_CVA6Cfg(CVA6Cfg),
		.tlb_update_cva6_t_CVA6Cfg(CVA6Cfg),
		.tlb_update_cva6_t_HYP_EXT(HYP_EXT),
		.tlb_update_cva6_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.CVA6Cfg(CVA6Cfg),
		.TLB_ENTRIES(CVA6Cfg[16140-:32]),
		.HYP_EXT(HYP_EXT)
	) i_itlb(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_tlb_i),
		.flush_vvma_i(flush_tlb_vvma_i),
		.flush_gvma_i(flush_tlb_gvma_i),
		.s_st_enbl_i(enable_translation_i),
		.g_st_enbl_i(enable_g_translation_i),
		.v_i(v_i),
		.update_i(update_itlb),
		.lu_access_i(itlb_lu_access),
		.lu_asid_i(itlb_lu_asid),
		.lu_vmid_i(vmid_i),
		.lu_vaddr_i(icache_areq_i[icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1-:icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32]]),
		.lu_content_o(itlb_content),
		.lu_g_content_o(itlb_g_content),
		.lu_gpaddr_o(itlb_gpaddr),
		.lu_is_page_o(itlb_is_page),
		.lu_hit_o(itlb_lu_hit),
		.asid_to_be_flushed_i(asid_to_be_flushed_i),
		.vmid_to_be_flushed_i(vmid_to_be_flushed_i),
		.vaddr_to_be_flushed_i(vaddr_to_be_flushed_i),
		.gpaddr_to_be_flushed_i(gpaddr_to_be_flushed_i)
	);
	// Trace: core/cva6_mmu/cva6_mmu.sv:205:3
	cva6_tlb_DDFD6_A1F50 #(
		.pte_cva6_t_CVA6Cfg(CVA6Cfg),
		.tlb_update_cva6_t_CVA6Cfg(CVA6Cfg),
		.tlb_update_cva6_t_HYP_EXT(HYP_EXT),
		.tlb_update_cva6_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.CVA6Cfg(CVA6Cfg),
		.TLB_ENTRIES(CVA6Cfg[16108-:32]),
		.HYP_EXT(HYP_EXT)
	) i_dtlb(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_tlb_i),
		.flush_vvma_i(flush_tlb_vvma_i),
		.flush_gvma_i(flush_tlb_gvma_i),
		.s_st_enbl_i(en_ld_st_translation_i),
		.g_st_enbl_i(en_ld_st_g_translation_i),
		.v_i(ld_st_v_i),
		.update_i(update_dtlb),
		.lu_access_i(dtlb_lu_access),
		.lu_asid_i(itlb_lu_asid),
		.lu_vmid_i(vmid_i),
		.lu_vaddr_i(lsu_vaddr_i),
		.lu_content_o(dtlb_content),
		.lu_g_content_o(dtlb_g_content),
		.lu_gpaddr_o(dtlb_gpaddr),
		.lu_is_page_o(dtlb_is_page),
		.lu_hit_o(dtlb_lu_hit),
		.asid_to_be_flushed_i(asid_to_be_flushed_i),
		.vmid_to_be_flushed_i(vmid_to_be_flushed_i),
		.vaddr_to_be_flushed_i(vaddr_to_be_flushed_i),
		.gpaddr_to_be_flushed_i(gpaddr_to_be_flushed_i)
	);
	// Trace: core/cva6_mmu/cva6_mmu.sv:234:3
	cva6_shared_tlb_030F9_C8937 #(
		.pte_cva6_t_CVA6Cfg(CVA6Cfg),
		.tlb_update_cva6_t_CVA6Cfg(CVA6Cfg),
		.tlb_update_cva6_t_HYP_EXT(HYP_EXT),
		.tlb_update_cva6_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.CVA6Cfg(CVA6Cfg),
		.SHARED_TLB_WAYS(2),
		.HYP_EXT(HYP_EXT)
	) i_shared_tlb(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_tlb_i),
		.flush_vvma_i(flush_tlb_vvma_i),
		.flush_gvma_i(flush_tlb_gvma_i),
		.s_st_enbl_i(enable_translation_i),
		.g_st_enbl_i(enable_g_translation_i),
		.v_i(v_i),
		.s_ld_st_enbl_i(en_ld_st_translation_i),
		.g_ld_st_enbl_i(en_ld_st_g_translation_i),
		.ld_st_v_i(ld_st_v_i),
		.dtlb_asid_i(dtlb_lu_asid),
		.itlb_asid_i(itlb_lu_asid),
		.lu_vmid_i(vmid_i),
		.itlb_access_i(itlb_lu_access),
		.itlb_hit_i(itlb_lu_hit),
		.itlb_vaddr_i(icache_areq_i[icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1-:icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32]]),
		.dtlb_access_i(dtlb_lu_access),
		.dtlb_hit_i(dtlb_lu_hit),
		.dtlb_vaddr_i(lsu_vaddr_i),
		.itlb_update_o(update_itlb),
		.dtlb_update_o(update_dtlb),
		.itlb_miss_o(itlb_miss_o),
		.dtlb_miss_o(dtlb_miss_o),
		.shared_tlb_miss_i(shared_tlb_miss),
		.shared_tlb_access_o(shared_tlb_access),
		.shared_tlb_hit_o(shared_tlb_hit),
		.shared_tlb_vaddr_o(shared_tlb_vaddr),
		.itlb_req_o(itlb_req),
		.shared_tlb_update_i(update_shared_tlb)
	);
	// Trace: core/cva6_mmu/cva6_mmu.sv:284:3
	cva6_ptw_64D51_BD1CF #(
		.dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg),
		.dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg),
		.pte_cva6_t_CVA6Cfg(CVA6Cfg),
		.tlb_update_cva6_t_CVA6Cfg(CVA6Cfg),
		.tlb_update_cva6_t_HYP_EXT(HYP_EXT),
		.CVA6Cfg(CVA6Cfg),
		.HYP_EXT(HYP_EXT)
	) i_ptw(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.ptw_active_o(ptw_active),
		.walking_instr_o(walking_instr),
		.ptw_error_o(ptw_error),
		.ptw_error_at_g_st_o(ptw_error_at_g_st),
		.ptw_err_at_g_int_st_o(ptw_err_at_g_int_st),
		.ptw_access_exception_o(ptw_access_exception),
		.lsu_is_store_i(lsu_is_store_i),
		.req_port_i(req_port_i),
		.req_port_o(req_port_o),
		.update_vaddr_o(update_vaddr),
		.shared_tlb_update_o(update_shared_tlb),
		.shared_tlb_access_i(shared_tlb_access),
		.shared_tlb_hit_i(shared_tlb_hit),
		.shared_tlb_vaddr_i(shared_tlb_vaddr),
		.itlb_req_i(itlb_req),
		.hlvx_inst_i(hlvx_inst_i),
		.shared_tlb_miss_o(shared_tlb_miss),
		.pmpcfg_i(pmpcfg_i),
		.pmpaddr_i(pmpaddr_i),
		.bad_paddr_o(ptw_bad_paddr),
		.bad_gpaddr_o(ptw_bad_gpaddr),
		.flush_i(flush_i),
		.enable_translation_i(enable_translation_i),
		.enable_g_translation_i(enable_g_translation_i),
		.en_ld_st_translation_i(en_ld_st_translation_i),
		.en_ld_st_g_translation_i(en_ld_st_g_translation_i),
		.v_i(v_i),
		.ld_st_v_i(ld_st_v_i),
		.asid_i(asid_i),
		.vs_asid_i(vs_asid_i),
		.vmid_i(vmid_i),
		.satp_ppn_i(satp_ppn_i),
		.vsatp_ppn_i(vsatp_ppn_i),
		.hgatp_ppn_i(hgatp_ppn_i),
		.mxr_i(mxr_i),
		.vmxr_i(vmxr_i)
	);
	// Trace: core/cva6_mmu/cva6_mmu.sv:338:3
	wire match_any_execute_region;
	// Trace: core/cva6_mmu/cva6_mmu.sv:339:3
	wire pmp_instr_allow;
	// Trace: core/cva6_mmu/cva6_mmu.sv:340:3
	localparam signed [31:0] PPNWMin = ((CVA6Cfg[419-:32] - 1) > 29 ? 29 : CVA6Cfg[419-:32] - 1);
	// Trace: core/cva6_mmu/cva6_mmu.sv:343:3
	localparam cva6_config_pkg_CVA6ConfigXlen = 64;
	localparam riscv_XLEN = cva6_config_pkg_CVA6ConfigXlen;
	localparam [63:0] riscv_INSTR_ACCESS_FAULT = 1;
	localparam [63:0] riscv_INSTR_GUEST_PAGE_FAULT = 20;
	localparam [63:0] riscv_INSTR_PAGE_FAULT = 12;
	localparam [31:0] riscv_READ_32_PSEUDOINSTRUCTION = 32'h00002000;
	localparam [31:0] riscv_READ_64_PSEUDOINSTRUCTION = 32'h00003000;
	function automatic [CVA6Cfg[17102-:32] - 1:0] sv2v_cast_94688;
		input reg [CVA6Cfg[17102-:32] - 1:0] inp;
		sv2v_cast_94688 = inp;
	endfunction
	function automatic [CVA6Cfg[17038-:32] - 1:0] sv2v_cast_2D02A;
		input reg [CVA6Cfg[17038-:32] - 1:0] inp;
		sv2v_cast_2D02A = inp;
	endfunction
	function automatic [CVA6Cfg[17102-:32] - 1:0] sv2v_cast_71AF2;
		input reg [CVA6Cfg[17102-:32] - 1:0] inp;
		sv2v_cast_71AF2 = inp;
	endfunction
	always @(*) begin : instr_interface
		if (_sv2v_0)
			;
		// Trace: core/cva6_mmu/cva6_mmu.sv:345:5
		icache_areq_o[1 + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))] = icache_areq_i[icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] + 0];
		// Trace: core/cva6_mmu/cva6_mmu.sv:346:5
		icache_areq_o[icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) >= (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0)) + 1 : ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))) + 1)] = sv2v_cast_2D02A(icache_areq_i[(icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - ((icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - (CVA6Cfg[17038-:32] > CVA6Cfg[17070-:32] ? CVA6Cfg[17070-:32] - 1 : CVA6Cfg[17038-:32] - 1)):(icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - (icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1)]);
		// Trace: core/cva6_mmu/cva6_mmu.sv:350:5
		icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1-:((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))] = 1'sb0;
		// Trace: core/cva6_mmu/cva6_mmu.sv:352:5
		iaccess_err = (icache_areq_i[icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] + 0] && enable_translation_i) && (((priv_lvl_i == 2'b00) && ~itlb_content[4]) || ((priv_lvl_i == 2'b01) && itlb_content[4]));
		// Trace: core/cva6_mmu/cva6_mmu.sv:356:5
		if (CVA6Cfg[16543])
			// Trace: core/cva6_mmu/cva6_mmu.sv:357:7
			i_g_st_access_err = (icache_areq_i[icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] + 0] && enable_g_translation_i) && !itlb_g_content[4];
		if (enable_translation_i || enable_g_translation_i) begin
			// Trace: core/cva6_mmu/cva6_mmu.sv:364:7
			if (icache_areq_i[icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] + 0] && !((&icache_areq_i[(icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - ((icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - (CVA6Cfg[17070-:32] - 1)):(icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - ((icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - (CVA6Cfg[351-:32] - 1))] == 1'b1) || (|icache_areq_i[(icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - ((icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - (CVA6Cfg[17070-:32] - 1)):(icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - ((icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - (CVA6Cfg[351-:32] - 1))] == 1'b0))) begin
				// Trace: core/cva6_mmu/cva6_mmu.sv:366:9
				icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_INSTR_ACCESS_FAULT;
				// Trace: core/cva6_mmu/cva6_mmu.sv:367:9
				icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) : 0)] = 1'b1;
				// Trace: core/cva6_mmu/cva6_mmu.sv:368:9
				if (CVA6Cfg[15915])
					// Trace: core/cva6_mmu/cva6_mmu.sv:369:11
					icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1)] = sv2v_cast_71AF2(icache_areq_i[icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1-:icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32]]);
				if (CVA6Cfg[16543]) begin
					// Trace: core/cva6_mmu/cva6_mmu.sv:371:11
					icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
					// Trace: core/cva6_mmu/cva6_mmu.sv:372:11
					icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 0) : -2)-:32] = 1'sb0;
					// Trace: core/cva6_mmu/cva6_mmu.sv:373:11
					icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 32) : -1)] = v_i;
				end
			end
			// Trace: core/cva6_mmu/cva6_mmu.sv:377:7
			icache_areq_o[1 + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))] = 1'b0;
			// Trace: core/cva6_mmu/cva6_mmu.sv:379:7
			icache_areq_o[icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) >= (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0)) + 1 : ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))) + 1)] = {(enable_g_translation_i && CVA6Cfg[16543] ? itlb_g_content[CVA6Cfg[419-:32] + 9-:((CVA6Cfg[419-:32] + 9) >= 10 ? CVA6Cfg[419-:32] + 0 : 11 - (CVA6Cfg[419-:32] + 9))] : itlb_content[CVA6Cfg[419-:32] + 9-:((CVA6Cfg[419-:32] + 9) >= 10 ? CVA6Cfg[419-:32] + 0 : 11 - (CVA6Cfg[419-:32] + 9))]), icache_areq_i[(icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - (icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 12):(icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - (icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1)]};
			if ((CVA6Cfg[16011-:32] == 3) && itlb_is_page[CVA6Cfg[16011-:32] - 2])
				// Trace: core/cva6_mmu/cva6_mmu.sv:386:9
				icache_areq_o[(icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] - 1) - (PPNWMin - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]))):(icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] - 1) - (9 + CVA6Cfg[16011-:32]))] = icache_areq_i[(icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - ((icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - (PPNWMin - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]))):(icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - ((icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - (9 + CVA6Cfg[16011-:32]))];
			if (itlb_is_page[0])
				// Trace: core/cva6_mmu/cva6_mmu.sv:392:9
				icache_areq_o[(icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] - 1) - PPNWMin):(icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] - 13)] = icache_areq_i[(icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - ((icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - PPNWMin):(icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1) - (icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 13)];
			if (itlb_lu_hit) begin
				// Trace: core/cva6_mmu/cva6_mmu.sv:400:9
				icache_areq_o[1 + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))] = icache_areq_i[icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] + 0];
				// Trace: core/cva6_mmu/cva6_mmu.sv:401:9
				if (CVA6Cfg[16543] && i_g_st_access_err) begin
					// Trace: core/cva6_mmu/cva6_mmu.sv:402:11
					icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_INSTR_GUEST_PAGE_FAULT;
					// Trace: core/cva6_mmu/cva6_mmu.sv:403:11
					icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) : 0)] = 1'b1;
					// Trace: core/cva6_mmu/cva6_mmu.sv:404:11
					if (CVA6Cfg[15915])
						// Trace: core/cva6_mmu/cva6_mmu.sv:405:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1)] = sv2v_cast_71AF2(icache_areq_i[icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1-:icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32]]);
					if (CVA6Cfg[16543]) begin
						// Trace: core/cva6_mmu/cva6_mmu.sv:407:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))] = itlb_gpaddr[CVA6Cfg[17006-:32] - 1:0];
						// Trace: core/cva6_mmu/cva6_mmu.sv:408:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 0) : -2)-:32] = 1'sb0;
						// Trace: core/cva6_mmu/cva6_mmu.sv:409:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 32) : -1)] = v_i;
					end
				end
				else if (iaccess_err) begin
					// Trace: core/cva6_mmu/cva6_mmu.sv:415:11
					icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_INSTR_PAGE_FAULT;
					// Trace: core/cva6_mmu/cva6_mmu.sv:416:11
					icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) : 0)] = 1'b1;
					// Trace: core/cva6_mmu/cva6_mmu.sv:417:11
					if (CVA6Cfg[15915])
						// Trace: core/cva6_mmu/cva6_mmu.sv:418:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1)] = sv2v_cast_71AF2(icache_areq_i[icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1-:icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32]]);
					if (CVA6Cfg[16543]) begin
						// Trace: core/cva6_mmu/cva6_mmu.sv:420:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
						// Trace: core/cva6_mmu/cva6_mmu.sv:421:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 0) : -2)-:32] = 1'sb0;
						// Trace: core/cva6_mmu/cva6_mmu.sv:422:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 32) : -1)] = v_i;
					end
				end
				else if (!pmp_instr_allow) begin
					// Trace: core/cva6_mmu/cva6_mmu.sv:425:11
					icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_INSTR_ACCESS_FAULT;
					// Trace: core/cva6_mmu/cva6_mmu.sv:426:11
					icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) : 0)] = 1'b1;
					// Trace: core/cva6_mmu/cva6_mmu.sv:427:11
					if (CVA6Cfg[15915])
						// Trace: core/cva6_mmu/cva6_mmu.sv:428:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1)] = sv2v_cast_71AF2(icache_areq_i[icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1-:icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32]]);
					if (CVA6Cfg[16543]) begin
						// Trace: core/cva6_mmu/cva6_mmu.sv:430:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
						// Trace: core/cva6_mmu/cva6_mmu.sv:431:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 0) : -2)-:32] = 1'sb0;
						// Trace: core/cva6_mmu/cva6_mmu.sv:432:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 32) : -1)] = v_i;
					end
				end
			end
			else if (ptw_active && walking_instr) begin
				// Trace: core/cva6_mmu/cva6_mmu.sv:440:9
				icache_areq_o[1 + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))] = ptw_error | ptw_access_exception;
				// Trace: core/cva6_mmu/cva6_mmu.sv:441:9
				if (ptw_error) begin
					begin
						// Trace: core/cva6_mmu/cva6_mmu.sv:442:11
						if (CVA6Cfg[16543] && ptw_error_at_g_st) begin
							// Trace: core/cva6_mmu/cva6_mmu.sv:443:13
							icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_INSTR_GUEST_PAGE_FAULT;
							// Trace: core/cva6_mmu/cva6_mmu.sv:444:13
							icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) : 0)] = 1'b1;
							// Trace: core/cva6_mmu/cva6_mmu.sv:445:13
							if (CVA6Cfg[15915])
								// Trace: core/cva6_mmu/cva6_mmu.sv:445:33
								icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1)] = sv2v_cast_94688(update_vaddr);
							if (CVA6Cfg[16543]) begin
								// Trace: core/cva6_mmu/cva6_mmu.sv:447:15
								icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))] = ptw_bad_gpaddr[CVA6Cfg[17006-:32] - 1:0];
								// Trace: core/cva6_mmu/cva6_mmu.sv:448:15
								icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 0) : -2)-:32] = (ptw_err_at_g_int_st ? (CVA6Cfg[16973] ? riscv_READ_64_PSEUDOINSTRUCTION : riscv_READ_32_PSEUDOINSTRUCTION) : {(((((1 + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) >= 1 ? ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1 : ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) + 1) >= (((1 + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) >= 1 ? ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) + 1 : ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) ? 33 : 2) >= ((((1 + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) >= 1 ? ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1 : ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) + 1) >= (((1 + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) >= 1 ? ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) + 1 : ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) ? 2 : 33) ? (((((1 + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) >= 1 ? ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1 : ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) + 1) >= (((1 + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) >= 1 ? ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) + 1 : ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) ? 33 : 2) - ((((1 + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) >= 1 ? ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1 : ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) + 1) >= (((1 + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) >= 1 ? ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) + 1 : ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) ? 2 : 33)) + 1 : (((((1 + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) >= 1 ? ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1 : ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) + 1) >= (((1 + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) >= 1 ? ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) + 1 : ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) ? 2 : 33) - ((((1 + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) >= 1 ? ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1 : ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) + 1) >= (((1 + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) >= 1 ? ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) + 1 : ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) ? 33 : 2)) + 1) {1'sb0}});
								// Trace: core/cva6_mmu/cva6_mmu.sv:449:15
								icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 32) : -1)] = v_i;
							end
						end
						else begin
							// Trace: core/cva6_mmu/cva6_mmu.sv:452:13
							icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_INSTR_PAGE_FAULT;
							// Trace: core/cva6_mmu/cva6_mmu.sv:453:13
							icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) : 0)] = 1'b1;
							// Trace: core/cva6_mmu/cva6_mmu.sv:454:13
							if (CVA6Cfg[15915])
								// Trace: core/cva6_mmu/cva6_mmu.sv:454:33
								icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1)] = sv2v_cast_94688(update_vaddr);
							if (CVA6Cfg[16543]) begin
								// Trace: core/cva6_mmu/cva6_mmu.sv:456:15
								icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
								// Trace: core/cva6_mmu/cva6_mmu.sv:457:15
								icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 0) : -2)-:32] = 1'sb0;
								// Trace: core/cva6_mmu/cva6_mmu.sv:458:15
								icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 32) : -1)] = v_i;
							end
						end
					end
				end
				else begin
					// Trace: core/cva6_mmu/cva6_mmu.sv:462:11
					icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_INSTR_ACCESS_FAULT;
					// Trace: core/cva6_mmu/cva6_mmu.sv:463:11
					icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) : 0)] = 1'b1;
					// Trace: core/cva6_mmu/cva6_mmu.sv:464:11
					if (CVA6Cfg[15915])
						// Trace: core/cva6_mmu/cva6_mmu.sv:465:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1)] = sv2v_cast_94688(update_vaddr);
					if (CVA6Cfg[16543]) begin
						// Trace: core/cva6_mmu/cva6_mmu.sv:467:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
						// Trace: core/cva6_mmu/cva6_mmu.sv:468:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 0) : -2)-:32] = 1'sb0;
						// Trace: core/cva6_mmu/cva6_mmu.sv:469:13
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 32) : -1)] = v_i;
					end
				end
			end
		end
		if ((!match_any_execute_region && !ptw_error) || (!(enable_translation_i || enable_g_translation_i) && !pmp_instr_allow)) begin
			// Trace: core/cva6_mmu/cva6_mmu.sv:478:7
			icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_INSTR_ACCESS_FAULT;
			// Trace: core/cva6_mmu/cva6_mmu.sv:479:7
			icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) : 0)] = 1'b1;
			// Trace: core/cva6_mmu/cva6_mmu.sv:480:7
			if (CVA6Cfg[15915]) begin
				begin
					// Trace: core/cva6_mmu/cva6_mmu.sv:481:9
					if (enable_translation_i || enable_g_translation_i)
						// Trace: core/cva6_mmu/cva6_mmu.sv:482:11
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1)] = sv2v_cast_94688(update_vaddr);
					else
						// Trace: core/cva6_mmu/cva6_mmu.sv:484:11
						icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) >= (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 34) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))) + 1)] = sv2v_cast_71AF2(icache_areq_o[(icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] - 1) - (CVA6Cfg[17038-:32] - 1)):(icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] - 1) - (CVA6Cfg[17038-:32] > CVA6Cfg[17070-:32] ? CVA6Cfg[17038-:32] - CVA6Cfg[17070-:32] : 0))]);
				end
			end
			if (CVA6Cfg[16543]) begin
				// Trace: core/cva6_mmu/cva6_mmu.sv:487:9
				icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - ((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) : (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33)) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33) >= 34 ? icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 0 : 35 - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
				// Trace: core/cva6_mmu/cva6_mmu.sv:488:9
				icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 0) : -2)-:32] = 1'sb0;
				// Trace: core/cva6_mmu/cva6_mmu.sv:489:9
				icache_areq_o[((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 32) : -1)] = v_i;
			end
		end
	end
	// Trace: core/cva6_mmu/cva6_mmu.sv:495:3
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
	function automatic config_pkg_is_inside_execute_regions;
		// Trace: core/include/config_pkg.sv:391:54
		input reg [17102:0] Cfg;
		// Trace: core/include/config_pkg.sv:391:70
		input reg [63:0] address;
		// Trace: core/include/config_pkg.sv:393:5
		reg [15:0] pass;
		// Trace: core/include/config_pkg.sv:394:5
		if (Cfg[5513-:32] != 0) begin
			// Trace: core/include/config_pkg.sv:395:7
			pass = 1'sb0;
			// Trace: core/include/config_pkg.sv:396:7
			begin : sv2v_autoblock_1
				// Trace: core/include/config_pkg.sv:396:12
				reg [31:0] k;
				// Trace: core/include/config_pkg.sv:396:12
				for (k = 0; k < Cfg[5513-:32]; k = k + 1)
					begin
						// Trace: core/include/config_pkg.sv:397:9
						pass[k] = config_pkg_range_check(Cfg[4458 + (k * 64)+:64], Cfg[3434 + (k * 64)+:64], address);
					end
			end
			config_pkg_is_inside_execute_regions = |pass;
		end
		else
			// Trace: core/include/config_pkg.sv:401:7
			config_pkg_is_inside_execute_regions = 1;
	endfunction
	assign match_any_execute_region = config_pkg_is_inside_execute_regions(CVA6Cfg, {{64 - CVA6Cfg[17038-:32] {1'b0}}, icache_areq_o[icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) >= (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0)) + 1 : ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))) + 1)]});
	// Trace: core/cva6_mmu/cva6_mmu.sv:500:3
	// removed localparam type riscv_pmp_access_t
	pmp #(
		.CVA6Cfg(CVA6Cfg),
		.PLEN(CVA6Cfg[17038-:32]),
		.PMP_LEN(CVA6Cfg[17038-:32] - 2),
		.NR_ENTRIES(CVA6Cfg[15913-:32])
	) i_pmp_if(
		.addr_i(icache_areq_o[icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)-:((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) >= (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0) ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0)) + 1 : ((((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0) - (icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))) + 1)]),
		.priv_lvl_i(priv_lvl_i),
		.access_type_i(3'b100),
		.conf_addr_i(pmpaddr_i),
		.conf_i(pmpcfg_i),
		.allow_o(pmp_instr_allow)
	);
	// Trace: core/cva6_mmu/cva6_mmu.sv:520:3
	reg [CVA6Cfg[17070-:32] - 1:0] lsu_vaddr_n;
	reg [CVA6Cfg[17070-:32] - 1:0] lsu_vaddr_q;
	// Trace: core/cva6_mmu/cva6_mmu.sv:521:3
	reg [CVA6Cfg[17006-:32] - 1:0] lsu_gpaddr_n;
	reg [CVA6Cfg[17006-:32] - 1:0] lsu_gpaddr_q;
	// Trace: core/cva6_mmu/cva6_mmu.sv:522:3
	reg [31:0] lsu_tinst_n;
	reg [31:0] lsu_tinst_q;
	// Trace: core/cva6_mmu/cva6_mmu.sv:523:3
	reg hs_ld_st_inst_n;
	reg hs_ld_st_inst_q;
	// Trace: core/cva6_mmu/cva6_mmu.sv:524:3
	reg [(10 + CVA6Cfg[419-:32]) + 9:0] dtlb_pte_n;
	reg [(10 + CVA6Cfg[419-:32]) + 9:0] dtlb_pte_q;
	// Trace: core/cva6_mmu/cva6_mmu.sv:525:3
	reg [(10 + CVA6Cfg[419-:32]) + 9:0] dtlb_gpte_n;
	reg [(10 + CVA6Cfg[419-:32]) + 9:0] dtlb_gpte_q;
	// Trace: core/cva6_mmu/cva6_mmu.sv:526:3
	reg [((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] misaligned_ex_n;
	reg [((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] misaligned_ex_q;
	// Trace: core/cva6_mmu/cva6_mmu.sv:527:3
	reg lsu_req_n;
	reg lsu_req_q;
	// Trace: core/cva6_mmu/cva6_mmu.sv:528:3
	reg lsu_is_store_n;
	reg lsu_is_store_q;
	// Trace: core/cva6_mmu/cva6_mmu.sv:529:3
	reg dtlb_hit_n;
	reg dtlb_hit_q;
	// Trace: core/cva6_mmu/cva6_mmu.sv:530:3
	reg [CVA6Cfg[16011-:32] - 2:0] dtlb_is_page_n;
	reg [CVA6Cfg[16011-:32] - 2:0] dtlb_is_page_q;
	// Trace: core/cva6_mmu/cva6_mmu.sv:533:3
	assign lsu_dtlb_hit_o = (en_ld_st_translation_i || en_ld_st_g_translation_i ? dtlb_lu_hit : 1'b1);
	// Trace: core/cva6_mmu/cva6_mmu.sv:536:3
	reg [2:0] pmp_access_type;
	// Trace: core/cva6_mmu/cva6_mmu.sv:537:3
	wire pmp_data_allow;
	// Trace: core/cva6_mmu/cva6_mmu.sv:541:3
	localparam [63:0] riscv_LD_ACCESS_FAULT = 5;
	localparam [63:0] riscv_LOAD_GUEST_PAGE_FAULT = 21;
	localparam [63:0] riscv_LOAD_PAGE_FAULT = 13;
	localparam [63:0] riscv_STORE_GUEST_PAGE_FAULT = 23;
	localparam [63:0] riscv_STORE_PAGE_FAULT = 15;
	localparam [63:0] riscv_ST_ACCESS_FAULT = 7;
	function automatic [CVA6Cfg[17038-:32] - 1:0] sv2v_cast_A4680;
		input reg [CVA6Cfg[17038-:32] - 1:0] inp;
		sv2v_cast_A4680 = inp;
	endfunction
	function automatic [CVA6Cfg[419-:32] - 1:0] sv2v_cast_E30DE;
		input reg [CVA6Cfg[419-:32] - 1:0] inp;
		sv2v_cast_E30DE = inp;
	endfunction
	function automatic [CVA6Cfg[17006-:32] - 1:0] sv2v_cast_8FFC6;
		input reg [CVA6Cfg[17006-:32] - 1:0] inp;
		sv2v_cast_8FFC6 = inp;
	endfunction
	always @(*) begin : data_interface
		if (_sv2v_0)
			;
		// Trace: core/cva6_mmu/cva6_mmu.sv:543:5
		lsu_vaddr_n = lsu_vaddr_i;
		// Trace: core/cva6_mmu/cva6_mmu.sv:544:5
		lsu_req_n = lsu_req_i;
		// Trace: core/cva6_mmu/cva6_mmu.sv:545:5
		misaligned_ex_n = misaligned_ex_i;
		// Trace: core/cva6_mmu/cva6_mmu.sv:546:5
		dtlb_pte_n = dtlb_content;
		// Trace: core/cva6_mmu/cva6_mmu.sv:547:5
		dtlb_hit_n = dtlb_lu_hit;
		// Trace: core/cva6_mmu/cva6_mmu.sv:548:5
		lsu_is_store_n = lsu_is_store_i;
		// Trace: core/cva6_mmu/cva6_mmu.sv:549:5
		dtlb_is_page_n = dtlb_is_page;
		// Trace: core/cva6_mmu/cva6_mmu.sv:551:5
		lsu_valid_o = lsu_req_q;
		// Trace: core/cva6_mmu/cva6_mmu.sv:552:5
		lsu_exception_o = misaligned_ex_q;
		// Trace: core/cva6_mmu/cva6_mmu.sv:553:5
		pmp_access_type = (lsu_is_store_q ? 3'b010 : 3'b001);
		// Trace: core/cva6_mmu/cva6_mmu.sv:556:5
		misaligned_ex_n[0] = misaligned_ex_i[0] & lsu_req_i;
		// Trace: core/cva6_mmu/cva6_mmu.sv:560:5
		daccess_err = en_ld_st_translation_i && ((((ld_st_priv_lvl_i == 2'b01) && (ld_st_v_i ? !vs_sum_i : !sum_i)) && dtlb_pte_q[4]) || ((ld_st_priv_lvl_i == 2'b00) && !dtlb_pte_q[4]));
		// Trace: core/cva6_mmu/cva6_mmu.sv:564:5
		if (CVA6Cfg[16543]) begin
			// Trace: core/cva6_mmu/cva6_mmu.sv:565:7
			lsu_tinst_n = lsu_tinst_i;
			// Trace: core/cva6_mmu/cva6_mmu.sv:566:7
			hs_ld_st_inst_n = hs_ld_st_inst_i;
			// Trace: core/cva6_mmu/cva6_mmu.sv:567:7
			lsu_gpaddr_n[(CVA6Cfg[17102-:32] == 32 ? CVA6Cfg[17070-:32] : CVA6Cfg[17006-:32]) - 1:0] = dtlb_gpaddr[(CVA6Cfg[17102-:32] == 32 ? CVA6Cfg[17070-:32] : CVA6Cfg[17006-:32]) - 1:0];
			// Trace: core/cva6_mmu/cva6_mmu.sv:568:7
			csr_hs_ld_st_inst_o = hs_ld_st_inst_i || hs_ld_st_inst_q;
			// Trace: core/cva6_mmu/cva6_mmu.sv:569:7
			d_g_st_access_err = en_ld_st_g_translation_i && !dtlb_gpte_q[4];
			// Trace: core/cva6_mmu/cva6_mmu.sv:570:7
			dtlb_gpte_n = dtlb_g_content;
		end
		// Trace: core/cva6_mmu/cva6_mmu.sv:573:5
		lsu_paddr_o = sv2v_cast_A4680(lsu_vaddr_q[(CVA6Cfg[17038-:32] > CVA6Cfg[17070-:32] ? CVA6Cfg[17070-:32] - 1 : CVA6Cfg[17038-:32] - 1):0]);
		// Trace: core/cva6_mmu/cva6_mmu.sv:574:5
		lsu_dtlb_ppn_o = sv2v_cast_E30DE(lsu_vaddr_n[(CVA6Cfg[17038-:32] > CVA6Cfg[17070-:32] ? CVA6Cfg[17070-:32] - 1 : CVA6Cfg[17038-:32] - 1):12]);
		if ((en_ld_st_translation_i || en_ld_st_g_translation_i) && !misaligned_ex_q[0]) begin
			// Trace: core/cva6_mmu/cva6_mmu.sv:578:7
			lsu_valid_o = 1'b0;
			// Trace: core/cva6_mmu/cva6_mmu.sv:580:7
			lsu_dtlb_ppn_o = (en_ld_st_g_translation_i && CVA6Cfg[16543] ? dtlb_g_content[CVA6Cfg[419-:32] + 9-:((CVA6Cfg[419-:32] + 9) >= 10 ? CVA6Cfg[419-:32] + 0 : 11 - (CVA6Cfg[419-:32] + 9))] : dtlb_content[CVA6Cfg[419-:32] + 9-:((CVA6Cfg[419-:32] + 9) >= 10 ? CVA6Cfg[419-:32] + 0 : 11 - (CVA6Cfg[419-:32] + 9))]);
			// Trace: core/cva6_mmu/cva6_mmu.sv:581:7
			lsu_paddr_o = {(en_ld_st_g_translation_i && CVA6Cfg[16543] ? dtlb_gpte_q[CVA6Cfg[419-:32] + 9-:((CVA6Cfg[419-:32] + 9) >= 10 ? CVA6Cfg[419-:32] + 0 : 11 - (CVA6Cfg[419-:32] + 9))] : dtlb_pte_q[CVA6Cfg[419-:32] + 9-:((CVA6Cfg[419-:32] + 9) >= 10 ? CVA6Cfg[419-:32] + 0 : 11 - (CVA6Cfg[419-:32] + 9))]), lsu_vaddr_q[11:0]};
			// Trace: core/cva6_mmu/cva6_mmu.sv:586:7
			if ((CVA6Cfg[16011-:32] == 3) && dtlb_is_page_q[CVA6Cfg[16011-:32] - 2]) begin
				// Trace: core/cva6_mmu/cva6_mmu.sv:587:9
				lsu_paddr_o[PPNWMin - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]):9 + CVA6Cfg[16011-:32]] = lsu_vaddr_q[PPNWMin - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]):9 + CVA6Cfg[16011-:32]];
				// Trace: core/cva6_mmu/cva6_mmu.sv:588:9
				lsu_dtlb_ppn_o[PPNWMin - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]):9 + CVA6Cfg[16011-:32]] = lsu_vaddr_n[PPNWMin - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]):9 + CVA6Cfg[16011-:32]];
			end
			if (dtlb_is_page_q[0]) begin
				// Trace: core/cva6_mmu/cva6_mmu.sv:592:9
				lsu_dtlb_ppn_o[PPNWMin:12] = lsu_vaddr_n[PPNWMin:12];
				// Trace: core/cva6_mmu/cva6_mmu.sv:593:9
				lsu_paddr_o[PPNWMin:12] = lsu_vaddr_q[PPNWMin:12];
			end
			if (dtlb_hit_q && lsu_req_q) begin
				// Trace: core/cva6_mmu/cva6_mmu.sv:602:9
				lsu_valid_o = 1'b1;
				// Trace: core/cva6_mmu/cva6_mmu.sv:609:9
				if (lsu_is_store_q) begin
					begin
						// Trace: core/cva6_mmu/cva6_mmu.sv:612:11
						if ((CVA6Cfg[16543] && en_ld_st_g_translation_i) && ((!dtlb_gpte_q[2] || d_g_st_access_err) || !dtlb_gpte_q[7])) begin
							// Trace: core/cva6_mmu/cva6_mmu.sv:613:13
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_STORE_GUEST_PAGE_FAULT;
							// Trace: core/cva6_mmu/cva6_mmu.sv:614:13
							lsu_exception_o[0] = 1'b1;
							// Trace: core/cva6_mmu/cva6_mmu.sv:615:13
							if (CVA6Cfg[15915])
								// Trace: core/cva6_mmu/cva6_mmu.sv:616:15
								lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {lsu_vaddr_q[CVA6Cfg[17070-:32] - 1]}}, lsu_vaddr_q};
							if (CVA6Cfg[16543]) begin
								// Trace: core/cva6_mmu/cva6_mmu.sv:620:15
								lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = sv2v_cast_8FFC6(lsu_gpaddr_q[(CVA6Cfg[17102-:32] == 32 ? CVA6Cfg[17070-:32] : CVA6Cfg[17006-:32]) - 1:0]);
								// Trace: core/cva6_mmu/cva6_mmu.sv:621:15
								lsu_exception_o[33-:32] = 1'sb0;
								// Trace: core/cva6_mmu/cva6_mmu.sv:622:15
								lsu_exception_o[1] = ld_st_v_i;
							end
						end
						else if ((en_ld_st_translation_i || !CVA6Cfg[16543]) && ((!dtlb_pte_q[2] || daccess_err) || !dtlb_pte_q[7])) begin
							// Trace: core/cva6_mmu/cva6_mmu.sv:625:13
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_STORE_PAGE_FAULT;
							// Trace: core/cva6_mmu/cva6_mmu.sv:626:13
							lsu_exception_o[0] = 1'b1;
							// Trace: core/cva6_mmu/cva6_mmu.sv:627:13
							if (CVA6Cfg[15915])
								// Trace: core/cva6_mmu/cva6_mmu.sv:628:15
								lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {lsu_vaddr_q[CVA6Cfg[17070-:32] - 1]}}, lsu_vaddr_q};
							if (CVA6Cfg[16543]) begin
								// Trace: core/cva6_mmu/cva6_mmu.sv:632:15
								lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
								// Trace: core/cva6_mmu/cva6_mmu.sv:633:15
								lsu_exception_o[33-:32] = lsu_tinst_q;
								// Trace: core/cva6_mmu/cva6_mmu.sv:634:15
								lsu_exception_o[1] = ld_st_v_i;
							end
						end
						else if (!pmp_data_allow) begin
							// Trace: core/cva6_mmu/cva6_mmu.sv:638:13
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_ST_ACCESS_FAULT;
							// Trace: core/cva6_mmu/cva6_mmu.sv:639:13
							lsu_exception_o[0] = 1'b1;
							// Trace: core/cva6_mmu/cva6_mmu.sv:640:13
							if (CVA6Cfg[15915])
								// Trace: core/cva6_mmu/cva6_mmu.sv:641:15
								lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {lsu_vaddr_q[CVA6Cfg[17070-:32] - 1]}}, lsu_vaddr_q};
							if (CVA6Cfg[16543]) begin
								// Trace: core/cva6_mmu/cva6_mmu.sv:645:15
								lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
								// Trace: core/cva6_mmu/cva6_mmu.sv:646:15
								lsu_exception_o[33-:32] = lsu_tinst_q;
								// Trace: core/cva6_mmu/cva6_mmu.sv:647:15
								lsu_exception_o[1] = ld_st_v_i;
							end
						end
					end
				end
				else
					// Trace: core/cva6_mmu/cva6_mmu.sv:652:11
					if (CVA6Cfg[16543] && d_g_st_access_err) begin
						// Trace: core/cva6_mmu/cva6_mmu.sv:653:13
						lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_LOAD_GUEST_PAGE_FAULT;
						// Trace: core/cva6_mmu/cva6_mmu.sv:654:13
						lsu_exception_o[0] = 1'b1;
						// Trace: core/cva6_mmu/cva6_mmu.sv:655:13
						if (CVA6Cfg[15915])
							// Trace: core/cva6_mmu/cva6_mmu.sv:656:15
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {lsu_vaddr_q[CVA6Cfg[17070-:32] - 1]}}, lsu_vaddr_q};
						if (CVA6Cfg[16543]) begin
							// Trace: core/cva6_mmu/cva6_mmu.sv:660:15
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = sv2v_cast_8FFC6(lsu_gpaddr_q[(CVA6Cfg[17102-:32] == 32 ? CVA6Cfg[17070-:32] : CVA6Cfg[17006-:32]) - 1:0]);
							// Trace: core/cva6_mmu/cva6_mmu.sv:661:15
							lsu_exception_o[33-:32] = 1'sb0;
							// Trace: core/cva6_mmu/cva6_mmu.sv:662:15
							lsu_exception_o[1] = ld_st_v_i;
						end
					end
					else if (daccess_err) begin
						// Trace: core/cva6_mmu/cva6_mmu.sv:666:13
						lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_LOAD_PAGE_FAULT;
						// Trace: core/cva6_mmu/cva6_mmu.sv:667:13
						lsu_exception_o[0] = 1'b1;
						// Trace: core/cva6_mmu/cva6_mmu.sv:668:13
						if (CVA6Cfg[15915])
							// Trace: core/cva6_mmu/cva6_mmu.sv:669:15
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {lsu_vaddr_q[CVA6Cfg[17070-:32] - 1]}}, lsu_vaddr_q};
						if (CVA6Cfg[16543]) begin
							// Trace: core/cva6_mmu/cva6_mmu.sv:673:15
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
							// Trace: core/cva6_mmu/cva6_mmu.sv:674:15
							lsu_exception_o[33-:32] = lsu_tinst_q;
							// Trace: core/cva6_mmu/cva6_mmu.sv:675:15
							lsu_exception_o[1] = ld_st_v_i;
						end
					end
					else if (!pmp_data_allow) begin
						// Trace: core/cva6_mmu/cva6_mmu.sv:679:13
						lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_LD_ACCESS_FAULT;
						// Trace: core/cva6_mmu/cva6_mmu.sv:680:13
						lsu_exception_o[0] = 1'b1;
						// Trace: core/cva6_mmu/cva6_mmu.sv:681:13
						if (CVA6Cfg[15915])
							// Trace: core/cva6_mmu/cva6_mmu.sv:682:15
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {lsu_vaddr_q[CVA6Cfg[17070-:32] - 1]}}, lsu_vaddr_q};
						if (CVA6Cfg[16543]) begin
							// Trace: core/cva6_mmu/cva6_mmu.sv:686:15
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
							// Trace: core/cva6_mmu/cva6_mmu.sv:687:15
							lsu_exception_o[33-:32] = lsu_tinst_q;
							// Trace: core/cva6_mmu/cva6_mmu.sv:688:15
							lsu_exception_o[1] = ld_st_v_i;
						end
					end
			end
			else if (ptw_active && !walking_instr) begin
				// Trace: core/cva6_mmu/cva6_mmu.sv:700:9
				if (ptw_error) begin
					// Trace: core/cva6_mmu/cva6_mmu.sv:702:11
					lsu_valid_o = 1'b1;
					// Trace: core/cva6_mmu/cva6_mmu.sv:704:11
					if (lsu_is_store_q) begin
						begin
							// Trace: core/cva6_mmu/cva6_mmu.sv:705:13
							if (CVA6Cfg[16543] && ptw_error_at_g_st) begin
								// Trace: core/cva6_mmu/cva6_mmu.sv:706:15
								lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_STORE_GUEST_PAGE_FAULT;
								// Trace: core/cva6_mmu/cva6_mmu.sv:707:15
								lsu_exception_o[0] = 1'b1;
								// Trace: core/cva6_mmu/cva6_mmu.sv:708:15
								if (CVA6Cfg[15915])
									// Trace: core/cva6_mmu/cva6_mmu.sv:709:17
									lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {lsu_vaddr_q[CVA6Cfg[17070-:32] - 1]}}, update_vaddr};
								if (CVA6Cfg[16543]) begin
									// Trace: core/cva6_mmu/cva6_mmu.sv:713:17
									lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = ptw_bad_gpaddr[CVA6Cfg[17006-:32] - 1:0];
									// Trace: core/cva6_mmu/cva6_mmu.sv:714:17
									lsu_exception_o[33-:32] = (ptw_err_at_g_int_st ? (CVA6Cfg[16973] ? riscv_READ_64_PSEUDOINSTRUCTION : riscv_READ_32_PSEUDOINSTRUCTION) : {(((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 33 : 2) >= ((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 2 : 33) ? (((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 33 : 2) - ((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 2 : 33)) + 1 : (((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 2 : 33) - ((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 33 : 2)) + 1) {1'sb0}});
									// Trace: core/cva6_mmu/cva6_mmu.sv:715:17
									lsu_exception_o[1] = ld_st_v_i;
								end
							end
							else begin
								// Trace: core/cva6_mmu/cva6_mmu.sv:718:15
								lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_STORE_PAGE_FAULT;
								// Trace: core/cva6_mmu/cva6_mmu.sv:719:15
								lsu_exception_o[0] = 1'b1;
								// Trace: core/cva6_mmu/cva6_mmu.sv:720:15
								if (CVA6Cfg[15915])
									// Trace: core/cva6_mmu/cva6_mmu.sv:721:17
									lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {lsu_vaddr_q[CVA6Cfg[17070-:32] - 1]}}, update_vaddr};
								if (CVA6Cfg[16543]) begin
									// Trace: core/cva6_mmu/cva6_mmu.sv:725:17
									lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
									// Trace: core/cva6_mmu/cva6_mmu.sv:726:17
									lsu_exception_o[33-:32] = lsu_tinst_q;
									// Trace: core/cva6_mmu/cva6_mmu.sv:727:17
									lsu_exception_o[1] = ld_st_v_i;
								end
							end
						end
					end
					else
						// Trace: core/cva6_mmu/cva6_mmu.sv:731:13
						if (CVA6Cfg[16543] && ptw_error_at_g_st) begin
							// Trace: core/cva6_mmu/cva6_mmu.sv:732:15
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_LOAD_GUEST_PAGE_FAULT;
							// Trace: core/cva6_mmu/cva6_mmu.sv:733:15
							lsu_exception_o[0] = 1'b1;
							// Trace: core/cva6_mmu/cva6_mmu.sv:734:15
							if (CVA6Cfg[15915])
								// Trace: core/cva6_mmu/cva6_mmu.sv:735:17
								lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {lsu_vaddr_q[CVA6Cfg[17070-:32] - 1]}}, update_vaddr};
							if (CVA6Cfg[16543]) begin
								// Trace: core/cva6_mmu/cva6_mmu.sv:739:17
								lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = ptw_bad_gpaddr[CVA6Cfg[17006-:32] - 1:0];
								// Trace: core/cva6_mmu/cva6_mmu.sv:740:17
								lsu_exception_o[33-:32] = (ptw_err_at_g_int_st ? (CVA6Cfg[16973] ? riscv_READ_64_PSEUDOINSTRUCTION : riscv_READ_32_PSEUDOINSTRUCTION) : {(((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 33 : 2) >= ((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 2 : 33) ? (((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 33 : 2) - ((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 2 : 33)) + 1 : (((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 2 : 33) - ((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 33 : 2)) + 1) {1'sb0}});
								// Trace: core/cva6_mmu/cva6_mmu.sv:741:17
								lsu_exception_o[1] = ld_st_v_i;
							end
						end
						else begin
							// Trace: core/cva6_mmu/cva6_mmu.sv:744:15
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_LOAD_PAGE_FAULT;
							// Trace: core/cva6_mmu/cva6_mmu.sv:745:15
							lsu_exception_o[0] = 1'b1;
							// Trace: core/cva6_mmu/cva6_mmu.sv:746:15
							if (CVA6Cfg[15915])
								// Trace: core/cva6_mmu/cva6_mmu.sv:747:17
								lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {lsu_vaddr_q[CVA6Cfg[17070-:32] - 1]}}, update_vaddr};
							if (CVA6Cfg[16543]) begin
								// Trace: core/cva6_mmu/cva6_mmu.sv:751:17
								lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
								// Trace: core/cva6_mmu/cva6_mmu.sv:752:17
								lsu_exception_o[33-:32] = lsu_tinst_q;
								// Trace: core/cva6_mmu/cva6_mmu.sv:753:17
								lsu_exception_o[1] = ld_st_v_i;
							end
						end
				end
				if (ptw_access_exception) begin
					// Trace: core/cva6_mmu/cva6_mmu.sv:760:11
					lsu_valid_o = 1'b1;
					// Trace: core/cva6_mmu/cva6_mmu.sv:762:11
					if ((lsu_is_store_q && !CVA6Cfg[16543]) && (CVA6Cfg[16011-:32] == 3)) begin
						// Trace: core/cva6_mmu/cva6_mmu.sv:763:13
						lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_ST_ACCESS_FAULT;
						// Trace: core/cva6_mmu/cva6_mmu.sv:764:13
						lsu_exception_o[0] = 1'b1;
						// Trace: core/cva6_mmu/cva6_mmu.sv:765:13
						if (CVA6Cfg[15915])
							// Trace: core/cva6_mmu/cva6_mmu.sv:766:15
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {lsu_vaddr_q[CVA6Cfg[17070-:32] - 1]}}, update_vaddr};
					end
					else begin
						// Trace: core/cva6_mmu/cva6_mmu.sv:771:13
						lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_LD_ACCESS_FAULT;
						// Trace: core/cva6_mmu/cva6_mmu.sv:772:13
						lsu_exception_o[0] = 1'b1;
						// Trace: core/cva6_mmu/cva6_mmu.sv:773:13
						if (CVA6Cfg[15915])
							// Trace: core/cva6_mmu/cva6_mmu.sv:774:15
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {lsu_vaddr_q[CVA6Cfg[17070-:32] - 1]}}, update_vaddr};
						if (CVA6Cfg[16543]) begin
							// Trace: core/cva6_mmu/cva6_mmu.sv:778:15
							lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
							// Trace: core/cva6_mmu/cva6_mmu.sv:779:15
							lsu_exception_o[33-:32] = lsu_tinst_q;
							// Trace: core/cva6_mmu/cva6_mmu.sv:780:15
							lsu_exception_o[1] = ld_st_v_i;
						end
					end
				end
			end
		end
		else if ((lsu_req_q && !misaligned_ex_q[0]) && !pmp_data_allow) begin
			begin
				// Trace: core/cva6_mmu/cva6_mmu.sv:787:7
				if (lsu_is_store_q) begin
					// Trace: core/cva6_mmu/cva6_mmu.sv:788:9
					lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_ST_ACCESS_FAULT;
					// Trace: core/cva6_mmu/cva6_mmu.sv:789:9
					lsu_exception_o[0] = 1'b1;
					// Trace: core/cva6_mmu/cva6_mmu.sv:790:9
					if (CVA6Cfg[15915])
						// Trace: core/cva6_mmu/cva6_mmu.sv:791:11
						lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = sv2v_cast_94688(lsu_paddr_o[CVA6Cfg[17038-:32] - 1:(CVA6Cfg[17038-:32] > CVA6Cfg[17070-:32] ? CVA6Cfg[17038-:32] - CVA6Cfg[17070-:32] : 0)]);
					if (CVA6Cfg[16543]) begin
						// Trace: core/cva6_mmu/cva6_mmu.sv:794:11
						lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
						// Trace: core/cva6_mmu/cva6_mmu.sv:795:11
						lsu_exception_o[33-:32] = lsu_tinst_q;
						// Trace: core/cva6_mmu/cva6_mmu.sv:796:11
						lsu_exception_o[1] = ld_st_v_i;
					end
				end
				else begin
					// Trace: core/cva6_mmu/cva6_mmu.sv:799:9
					lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_LD_ACCESS_FAULT;
					// Trace: core/cva6_mmu/cva6_mmu.sv:800:9
					lsu_exception_o[0] = 1'b1;
					// Trace: core/cva6_mmu/cva6_mmu.sv:801:9
					if (CVA6Cfg[15915])
						// Trace: core/cva6_mmu/cva6_mmu.sv:802:11
						lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = sv2v_cast_94688(lsu_paddr_o[CVA6Cfg[17038-:32] - 1:(CVA6Cfg[17038-:32] > CVA6Cfg[17070-:32] ? CVA6Cfg[17038-:32] - CVA6Cfg[17070-:32] : 0)]);
					if (CVA6Cfg[16543]) begin
						// Trace: core/cva6_mmu/cva6_mmu.sv:805:11
						lsu_exception_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = 1'sb0;
						// Trace: core/cva6_mmu/cva6_mmu.sv:806:11
						lsu_exception_o[33-:32] = lsu_tinst_q;
						// Trace: core/cva6_mmu/cva6_mmu.sv:807:11
						lsu_exception_o[1] = ld_st_v_i;
					end
				end
			end
		end
	end
	// Trace: core/cva6_mmu/cva6_mmu.sv:814:3
	pmp #(
		.CVA6Cfg(CVA6Cfg),
		.PLEN(CVA6Cfg[17038-:32]),
		.PMP_LEN(CVA6Cfg[17038-:32] - 2),
		.NR_ENTRIES(CVA6Cfg[15913-:32])
	) i_pmp_data(
		.addr_i(lsu_paddr_o),
		.priv_lvl_i(ld_st_priv_lvl_i),
		.access_type_i(pmp_access_type),
		.conf_addr_i(pmpaddr_i),
		.conf_i(pmpcfg_i),
		.allow_o(pmp_data_allow)
	);
	// Trace: core/cva6_mmu/cva6_mmu.sv:832:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cva6_mmu/cva6_mmu.sv:833:5
		if (~rst_ni) begin
			// Trace: core/cva6_mmu/cva6_mmu.sv:834:7
			lsu_vaddr_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_mmu.sv:835:7
			lsu_gpaddr_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_mmu.sv:836:7
			lsu_req_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_mmu.sv:837:7
			misaligned_ex_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_mmu.sv:838:7
			dtlb_pte_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_mmu.sv:839:7
			dtlb_gpte_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_mmu.sv:840:7
			dtlb_hit_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_mmu.sv:841:7
			lsu_is_store_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_mmu.sv:842:7
			dtlb_is_page_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_mmu.sv:843:7
			lsu_tinst_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_mmu.sv:844:7
			hs_ld_st_inst_q <= 1'sb0;
		end
		else begin
			// Trace: core/cva6_mmu/cva6_mmu.sv:846:7
			lsu_vaddr_q <= lsu_vaddr_n;
			// Trace: core/cva6_mmu/cva6_mmu.sv:847:7
			lsu_req_q <= lsu_req_n;
			// Trace: core/cva6_mmu/cva6_mmu.sv:848:7
			misaligned_ex_q <= misaligned_ex_n;
			// Trace: core/cva6_mmu/cva6_mmu.sv:849:7
			dtlb_pte_q <= dtlb_pte_n;
			// Trace: core/cva6_mmu/cva6_mmu.sv:850:7
			dtlb_hit_q <= dtlb_hit_n;
			// Trace: core/cva6_mmu/cva6_mmu.sv:851:7
			lsu_is_store_q <= lsu_is_store_n;
			// Trace: core/cva6_mmu/cva6_mmu.sv:852:7
			dtlb_is_page_q <= dtlb_is_page_n;
			// Trace: core/cva6_mmu/cva6_mmu.sv:854:7
			if (CVA6Cfg[16543]) begin
				// Trace: core/cva6_mmu/cva6_mmu.sv:855:9
				lsu_tinst_q <= lsu_tinst_n;
				// Trace: core/cva6_mmu/cva6_mmu.sv:856:9
				hs_ld_st_inst_q <= hs_ld_st_inst_n;
				// Trace: core/cva6_mmu/cva6_mmu.sv:857:9
				dtlb_gpte_q <= dtlb_gpte_n;
				// Trace: core/cva6_mmu/cva6_mmu.sv:858:9
				lsu_gpaddr_q <= lsu_gpaddr_n;
			end
		end
	initial _sv2v_0 = 0;
endmodule
