module cva6_ptw_64D51_BD1CF (
	clk_i,
	rst_ni,
	flush_i,
	ptw_active_o,
	walking_instr_o,
	ptw_error_o,
	ptw_error_at_g_st_o,
	ptw_err_at_g_int_st_o,
	ptw_access_exception_o,
	enable_translation_i,
	enable_g_translation_i,
	en_ld_st_translation_i,
	en_ld_st_g_translation_i,
	v_i,
	ld_st_v_i,
	hlvx_inst_i,
	lsu_is_store_i,
	req_port_i,
	req_port_o,
	shared_tlb_update_o,
	update_vaddr_o,
	asid_i,
	vs_asid_i,
	vmid_i,
	shared_tlb_access_i,
	shared_tlb_hit_i,
	shared_tlb_vaddr_i,
	itlb_req_i,
	satp_ppn_i,
	vsatp_ppn_i,
	hgatp_ppn_i,
	mxr_i,
	vmxr_i,
	shared_tlb_miss_o,
	pmpcfg_i,
	pmpaddr_i,
	bad_paddr_o,
	bad_gpaddr_o
);
	// removed localparam type dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg = 0;
	// removed localparam type pte_cva6_t_CVA6Cfg_type
	parameter [17102:0] pte_cva6_t_CVA6Cfg = 0;
	// removed localparam type tlb_update_cva6_t_CVA6Cfg_type
	// removed localparam type tlb_update_cva6_t_HYP_EXT_type
	parameter [17102:0] tlb_update_cva6_t_CVA6Cfg = 0;
	parameter [31:0] tlb_update_cva6_t_HYP_EXT = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/cva6_mmu/cva6_ptw.sv:26:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cva6_mmu/cva6_ptw.sv:27:20
	// removed localparam type pte_cva6_t
	// Trace: core/cva6_mmu/cva6_ptw.sv:28:20
	// removed localparam type tlb_update_cva6_t
	// Trace: core/cva6_mmu/cva6_ptw.sv:29:20
	// removed localparam type dcache_req_i_t
	// Trace: core/cva6_mmu/cva6_ptw.sv:30:20
	// removed localparam type dcache_req_o_t
	// Trace: core/cva6_mmu/cva6_ptw.sv:31:15
	parameter [31:0] HYP_EXT = 0;
	// Trace: core/cva6_mmu/cva6_ptw.sv:33:5
	input wire clk_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:34:5
	input wire rst_ni;
	// Trace: core/cva6_mmu/cva6_ptw.sv:35:5
	input wire flush_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:38:5
	output wire ptw_active_o;
	// Trace: core/cva6_mmu/cva6_ptw.sv:39:5
	output wire walking_instr_o;
	// Trace: core/cva6_mmu/cva6_ptw.sv:40:5
	output reg ptw_error_o;
	// Trace: core/cva6_mmu/cva6_ptw.sv:41:5
	output reg ptw_error_at_g_st_o;
	// Trace: core/cva6_mmu/cva6_ptw.sv:42:5
	output reg ptw_err_at_g_int_st_o;
	// Trace: core/cva6_mmu/cva6_ptw.sv:43:5
	output reg ptw_access_exception_o;
	// Trace: core/cva6_mmu/cva6_ptw.sv:44:5
	input wire enable_translation_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:45:5
	input wire enable_g_translation_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:46:5
	input wire en_ld_st_translation_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:47:5
	input wire en_ld_st_g_translation_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:48:5
	input wire v_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:49:5
	input wire ld_st_v_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:50:5
	input wire hlvx_inst_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:52:5
	input wire lsu_is_store_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:54:5
	input wire [(((2 + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]) - 1:0] req_port_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:55:5
	output reg [(((((((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1:0] req_port_o;
	// Trace: core/cva6_mmu/cva6_ptw.sv:59:5
	output reg [(((((((1 + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) >= ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) ? (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))))) + 1 : (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1)))) + 1)) + tlb_update_cva6_t_CVA6Cfg[16043-:32]) + tlb_update_cva6_t_CVA6Cfg[16940-:32]) + tlb_update_cva6_t_CVA6Cfg[16908-:32]) + ((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2))) + (((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9))) + (((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9))) - 1:0] shared_tlb_update_o;
	// Trace: core/cva6_mmu/cva6_ptw.sv:61:5
	output wire [CVA6Cfg[17070-:32] - 1:0] update_vaddr_o;
	// Trace: core/cva6_mmu/cva6_ptw.sv:63:5
	input wire [CVA6Cfg[16940-:32] - 1:0] asid_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:64:5
	input wire [CVA6Cfg[16940-:32] - 1:0] vs_asid_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:65:5
	input wire [CVA6Cfg[16908-:32] - 1:0] vmid_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:69:5
	input wire shared_tlb_access_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:70:5
	input wire shared_tlb_hit_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:71:5
	input wire [CVA6Cfg[17070-:32] - 1:0] shared_tlb_vaddr_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:73:5
	input wire itlb_req_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:76:5
	input wire [CVA6Cfg[419-:32] - 1:0] satp_ppn_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:77:5
	input wire [CVA6Cfg[419-:32] - 1:0] vsatp_ppn_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:78:5
	input wire [CVA6Cfg[419-:32] - 1:0] hgatp_ppn_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:79:5
	input wire mxr_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:80:5
	input wire vmxr_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:83:5
	output reg shared_tlb_miss_o;
	// Trace: core/cva6_mmu/cva6_ptw.sv:87:5
	// removed localparam type riscv_pmp_addr_mode_t
	// removed localparam type riscv_pmpcfg_access_t
	// removed localparam type riscv_pmpcfg_t
	input wire [(CVA6Cfg[15913-:32] * 8) - 1:0] pmpcfg_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:88:5
	input wire [((CVA6Cfg[17038-:32] - 3) >= 0 ? (CVA6Cfg[15913-:32] * (CVA6Cfg[17038-:32] - 2)) - 1 : (CVA6Cfg[15913-:32] * (4 - CVA6Cfg[17038-:32])) + (CVA6Cfg[17038-:32] - 4)):((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3)] pmpaddr_i;
	// Trace: core/cva6_mmu/cva6_ptw.sv:89:5
	output reg [CVA6Cfg[17038-:32] - 1:0] bad_paddr_o;
	// Trace: core/cva6_mmu/cva6_ptw.sv:90:5
	output reg [CVA6Cfg[17006-:32] - 1:0] bad_gpaddr_o;
	// Trace: core/cva6_mmu/cva6_ptw.sv:95:3
	reg data_rvalid_q;
	// Trace: core/cva6_mmu/cva6_ptw.sv:96:3
	reg [CVA6Cfg[17102-:32] - 1:0] data_rdata_q;
	// Trace: core/cva6_mmu/cva6_ptw.sv:98:3
	wire [(10 + pte_cva6_t_CVA6Cfg[419-:32]) + 9:0] pte;
	// Trace: core/cva6_mmu/cva6_ptw.sv:100:3
	reg [(10 + pte_cva6_t_CVA6Cfg[419-:32]) + 9:0] gpte_q;
	reg [(10 + pte_cva6_t_CVA6Cfg[419-:32]) + 9:0] gpte_d;
	// Trace: core/cva6_mmu/cva6_ptw.sv:101:3
	function automatic [(((10 + pte_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + pte_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + pte_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1:0] sv2v_cast_0A72F;
		input reg [(((10 + pte_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + pte_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + pte_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1:0] inp;
		sv2v_cast_0A72F = inp;
	endfunction
	assign pte = sv2v_cast_0A72F(data_rdata_q);
	// Trace: core/cva6_mmu/cva6_ptw.sv:103:3
	reg [2:0] state_q;
	reg [2:0] state_d;
	// Trace: core/cva6_mmu/cva6_ptw.sv:114:3
	wire [CVA6Cfg[16011-:32] - 2:0] misaligned_page;
	// Trace: core/cva6_mmu/cva6_ptw.sv:115:3
	reg [(HYP_EXT >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((HYP_EXT + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : ((HYP_EXT + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - HYP_EXT) * (CVA6Cfg[16011-:32] - 1)) + ((HYP_EXT * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - HYP_EXT) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + (HYP_EXT * (3 - CVA6Cfg[16011-:32]))) - 1))):(HYP_EXT >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? HYP_EXT * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + (HYP_EXT * (3 - CVA6Cfg[16011-:32]))))] ptw_lvl_n;
	reg [(HYP_EXT >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((HYP_EXT + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : ((HYP_EXT + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - HYP_EXT) * (CVA6Cfg[16011-:32] - 1)) + ((HYP_EXT * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - HYP_EXT) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + (HYP_EXT * (3 - CVA6Cfg[16011-:32]))) - 1))):(HYP_EXT >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? HYP_EXT * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + (HYP_EXT * (3 - CVA6Cfg[16011-:32]))))] ptw_lvl_q;
	// Trace: core/cva6_mmu/cva6_ptw.sv:121:3
	reg [1:0] ptw_stage_q;
	reg [1:0] ptw_stage_d;
	// Trace: core/cva6_mmu/cva6_ptw.sv:129:3
	reg is_instr_ptw_q;
	reg is_instr_ptw_n;
	// Trace: core/cva6_mmu/cva6_ptw.sv:130:3
	reg global_mapping_q;
	reg global_mapping_n;
	// Trace: core/cva6_mmu/cva6_ptw.sv:132:3
	reg tag_valid_n;
	reg tag_valid_q;
	// Trace: core/cva6_mmu/cva6_ptw.sv:134:3
	reg [CVA6Cfg[16940-:32] - 1:0] tlb_update_asid_q;
	reg [CVA6Cfg[16940-:32] - 1:0] tlb_update_asid_n;
	// Trace: core/cva6_mmu/cva6_ptw.sv:136:3
	reg [CVA6Cfg[16908-:32] - 1:0] tlb_update_vmid_q;
	reg [CVA6Cfg[16908-:32] - 1:0] tlb_update_vmid_n;
	// Trace: core/cva6_mmu/cva6_ptw.sv:138:3
	reg [CVA6Cfg[17070-:32] - 1:0] vaddr_q;
	reg [CVA6Cfg[17070-:32] - 1:0] vaddr_n;
	// Trace: core/cva6_mmu/cva6_ptw.sv:139:3
	wire [(((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))) >= ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) ? (((((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))) - ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))))) + 1) * (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + ((((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) * (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) - 1) : (((((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) - ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1)))) + 1) * (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + ((((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))) * (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) - 1)):(((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))) >= ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) ? ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) * (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]) : ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))) * (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]))] vaddr_lvl;
	// Trace: core/cva6_mmu/cva6_ptw.sv:141:3
	reg [CVA6Cfg[17006-:32] - 1:0] gpaddr_q;
	reg [CVA6Cfg[17006-:32] - 1:0] gpaddr_n;
	wire [CVA6Cfg[17006-:32] - 1:0] gpaddr_base;
	// Trace: core/cva6_mmu/cva6_ptw.sv:142:3
	wire [(CVA6Cfg[16011-:32] * CVA6Cfg[17006-:32]) - 1:0] gpaddr;
	// Trace: core/cva6_mmu/cva6_ptw.sv:144:3
	reg [CVA6Cfg[17038-:32] - 1:0] ptw_pptr_q;
	reg [CVA6Cfg[17038-:32] - 1:0] ptw_pptr_n;
	// Trace: core/cva6_mmu/cva6_ptw.sv:145:3
	reg [CVA6Cfg[17038-:32] - 1:0] gptw_pptr_q;
	reg [CVA6Cfg[17038-:32] - 1:0] gptw_pptr_n;
	// Trace: core/cva6_mmu/cva6_ptw.sv:148:3
	assign update_vaddr_o = vaddr_q;
	// Trace: core/cva6_mmu/cva6_ptw.sv:150:3
	assign ptw_active_o = state_q != 3'd0;
	// Trace: core/cva6_mmu/cva6_ptw.sv:151:3
	assign walking_instr_o = is_instr_ptw_q;
	// Trace: core/cva6_mmu/cva6_ptw.sv:153:3
	wire [((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))))) + 1) * 1:1] sv2v_tmp_BD384;
	assign sv2v_tmp_BD384 = ptw_pptr_q[CVA6Cfg[1028-:32] - 1:0];
	always @(*) req_port_o[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))))) + 1)] = sv2v_tmp_BD384;
	// Trace: core/cva6_mmu/cva6_ptw.sv:154:3
	wire [((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + 1) * 1:1] sv2v_tmp_2EB31;
	assign sv2v_tmp_2EB31 = ptw_pptr_q[(CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) - 1:CVA6Cfg[1028-:32]];
	always @(*) req_port_o[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + 1)] = sv2v_tmp_2EB31;
	// Trace: core/cva6_mmu/cva6_ptw.sv:156:3
	wire [1:1] sv2v_tmp_7017D;
	assign sv2v_tmp_7017D = 1'sb0;
	always @(*) req_port_o[1] = sv2v_tmp_7017D;
	// Trace: core/cva6_mmu/cva6_ptw.sv:158:3
	wire [((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) + 1) * 1:1] sv2v_tmp_A37C1;
	assign sv2v_tmp_A37C1 = 1'sb0;
	always @(*) req_port_o[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) + 1)] = sv2v_tmp_A37C1;
	// Trace: core/cva6_mmu/cva6_ptw.sv:160:3
	wire [((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1) >= 2 ? dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 0 : 3 - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) * 1:1] sv2v_tmp_C77FB;
	assign sv2v_tmp_C77FB = 1'sb0;
	always @(*) req_port_o[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1) >= 2 ? dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 0 : 3 - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))] = sv2v_tmp_C77FB;
	// Trace: core/cva6_mmu/cva6_ptw.sv:166:3
	assign gpaddr_base = {pte[(pte_cva6_t_CVA6Cfg[419-:32] + 9) - ((pte_cva6_t_CVA6Cfg[419-:32] - 1) - (CVA6Cfg[387-:32] - 1)):(pte_cva6_t_CVA6Cfg[419-:32] + 9) - (pte_cva6_t_CVA6Cfg[419-:32] - 1)], vaddr_q[11:0]};
	// Trace: core/cva6_mmu/cva6_ptw.sv:167:3
	assign gpaddr[(CVA6Cfg[16011-:32] - 1) * CVA6Cfg[17006-:32]+:CVA6Cfg[17006-:32]] = gpaddr_base;
	// Trace: core/cva6_mmu/cva6_ptw.sv:168:3
	function automatic [CVA6Cfg[16043-:32] - 1:0] sv2v_cast_4DD5A;
		input reg [CVA6Cfg[16043-:32] - 1:0] inp;
		sv2v_cast_4DD5A = inp;
	endfunction
	wire [((tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))))) >= (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0))))) ? ((tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))))) - (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0)))))) + 1 : ((tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0))))) - (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1))))))) + 1) * 1:1] sv2v_tmp_BB068;
	assign sv2v_tmp_BB068 = sv2v_cast_4DD5A(vaddr_q[(CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1:12]);
	always @(*) shared_tlb_update_o[tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))))-:((tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))))) >= (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0))))) ? ((tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))))) - (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0)))))) + 1 : ((tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0))))) - (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1))))))) + 1)] = sv2v_tmp_BB068;
	// Trace: core/cva6_mmu/cva6_ptw.sv:170:3
	genvar _gv_z_1;
	genvar _gv_w_1;
	// Trace: core/cva6_mmu/cva6_ptw.sv:171:3
	generate
		for (_gv_z_1 = 0; _gv_z_1 < (CVA6Cfg[16011-:32] - 1); _gv_z_1 = _gv_z_1 + 1) begin : genblk1
			localparam z = _gv_z_1;
			// Trace: core/cva6_mmu/cva6_ptw.sv:177:7
			assign misaligned_page[z] = (ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] == z) && (pte[(pte_cva6_t_CVA6Cfg[419-:32] + 9) - ((pte_cva6_t_CVA6Cfg[419-:32] - 1) - (((CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]) * ((CVA6Cfg[16011-:32] - 1) - z)) - 1)):(pte_cva6_t_CVA6Cfg[419-:32] + 9) - (pte_cva6_t_CVA6Cfg[419-:32] - 1)] != {((CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]) * ((CVA6Cfg[16011-:32] - 1) - z)) * 1 {1'sb0}});
			for (_gv_w_1 = 0; _gv_w_1 < ((HYP_EXT * 2) + 1); _gv_w_1 = _gv_w_1 + 1) begin : genblk1
				localparam w = _gv_w_1;
				// Trace: core/cva6_mmu/cva6_ptw.sv:181:9
				assign vaddr_lvl[(((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))) >= ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) ? (((HYP_EXT * 2) >= 0 ? w : (HYP_EXT * 2) - w) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])) + ((CVA6Cfg[16011-:32] - 2) >= 0 ? z : (CVA6Cfg[16011-:32] - 2) - z) : ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) - (((((HYP_EXT * 2) >= 0 ? w : (HYP_EXT * 2) - w) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])) + ((CVA6Cfg[16011-:32] - 2) >= 0 ? z : (CVA6Cfg[16011-:32] - 2) - z)) - ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))))) * (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])+:CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]] = (w == 0 ? vaddr_q[(12 + ((CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]) * ((CVA6Cfg[16011-:32] - z) - 1))) - 1:12 + ((CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]) * ((CVA6Cfg[16011-:32] - z) - 2))] : (w == 1 ? gptw_pptr_q[(12 + ((CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]) * ((CVA6Cfg[16011-:32] - z) - 1))) - 1:12 + ((CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]) * ((CVA6Cfg[16011-:32] - z) - 2))] : gpaddr_q[(12 + ((CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]) * ((CVA6Cfg[16011-:32] - z) - 1))) - 1:12 + ((CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]) * ((CVA6Cfg[16011-:32] - z) - 2))]));
			end
			if (CVA6Cfg[16543]) begin : genblk2
				// Trace: core/cva6_mmu/cva6_ptw.sv:187:9
				assign gpaddr[(z * CVA6Cfg[17006-:32]) + ((CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) >= 0 ? CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]) : ((CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + ((CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) >= 0 ? (CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + 1 : 1 - (CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])))) - 1)-:((CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) >= 0 ? (CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + 1 : 1 - (CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])))] = (ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] == z ? vaddr_q[CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]):0] : gpaddr_base[CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]):0]);
				// Trace: core/cva6_mmu/cva6_ptw.sv:188:9
				assign gpaddr[(z * CVA6Cfg[17006-:32]) + (CVA6Cfg[16043-:32] >= ((CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + 1) ? CVA6Cfg[16043-:32] : (CVA6Cfg[16043-:32] + (CVA6Cfg[16043-:32] >= ((CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + 1) ? (CVA6Cfg[16043-:32] - ((CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + 1)) + 1 : (((CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + 1) - CVA6Cfg[16043-:32]) + 1)) - 1)-:(CVA6Cfg[16043-:32] >= ((CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + 1) ? (CVA6Cfg[16043-:32] - ((CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + 1)) + 1 : (((CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + 1) - CVA6Cfg[16043-:32]) + 1)] = (ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] == 0 ? vaddr_q[CVA6Cfg[16043-:32]:(CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + 1] : gpaddr_base[CVA6Cfg[16043-:32]:(CVA6Cfg[16043-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) + 1]);
				// Trace: core/cva6_mmu/cva6_ptw.sv:189:9
				assign gpaddr[(z * CVA6Cfg[17006-:32]) + ((CVA6Cfg[17006-:32] - 1) >= (CVA6Cfg[16043-:32] + 1) ? CVA6Cfg[17006-:32] - 1 : ((CVA6Cfg[17006-:32] - 1) + ((CVA6Cfg[17006-:32] - 1) >= (CVA6Cfg[16043-:32] + 1) ? ((CVA6Cfg[17006-:32] - 1) - (CVA6Cfg[16043-:32] + 1)) + 1 : ((CVA6Cfg[16043-:32] + 1) - (CVA6Cfg[17006-:32] - 1)) + 1)) - 1)-:((CVA6Cfg[17006-:32] - 1) >= (CVA6Cfg[16043-:32] + 1) ? ((CVA6Cfg[17006-:32] - 1) - (CVA6Cfg[16043-:32] + 1)) + 1 : ((CVA6Cfg[16043-:32] + 1) - (CVA6Cfg[17006-:32] - 1)) + 1)] = gpaddr_base[CVA6Cfg[17006-:32] - 1:CVA6Cfg[16043-:32] + 1];
			end
		end
	endgenerate
	// Trace: core/cva6_mmu/cva6_ptw.sv:196:3
	always @(*) begin : tlb_update
		if (_sv2v_0)
			;
		// Trace: core/cva6_mmu/cva6_ptw.sv:198:5
		begin : sv2v_autoblock_1
			// Trace: core/cva6_mmu/cva6_ptw.sv:198:10
			reg [31:0] y;
			// Trace: core/cva6_mmu/cva6_ptw.sv:198:10
			for (y = 0; y < (HYP_EXT + 1); y = y + 1)
				begin
					// Trace: core/cva6_mmu/cva6_ptw.sv:199:7
					begin : sv2v_autoblock_2
						// Trace: core/cva6_mmu/cva6_ptw.sv:199:12
						reg [31:0] x;
						// Trace: core/cva6_mmu/cva6_ptw.sv:199:12
						for (x = 0; x < (CVA6Cfg[16011-:32] - 1); x = x + 1)
							begin
								// Trace: core/cva6_mmu/cva6_ptw.sv:200:9
								if ((enable_g_translation_i && enable_translation_i) || ((en_ld_st_g_translation_i && en_ld_st_translation_i) && CVA6Cfg[16543]))
									// Trace: core/cva6_mmu/cva6_ptw.sv:201:11
									shared_tlb_update_o[(((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) >= ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) ? ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) >= ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) ? (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))))) + 1 : (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1)))) + 1) + (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1))))))) - (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) - ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? x : (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) - x) * (tlb_update_cva6_t_HYP_EXT >= 0 ? tlb_update_cva6_t_HYP_EXT + 1 : 1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT >= 0 ? y : tlb_update_cva6_t_HYP_EXT - y))) : (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0)))))) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) - ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? x : (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) - x) * (tlb_update_cva6_t_HYP_EXT >= 0 ? tlb_update_cva6_t_HYP_EXT + 1 : 1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT >= 0 ? y : tlb_update_cva6_t_HYP_EXT - y))))] = ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? (y == HYP_EXT ? 0 : 1) : HYP_EXT - (y == HYP_EXT ? 0 : 1)) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] == x;
								else if ((enable_translation_i || en_ld_st_translation_i) || !CVA6Cfg[16543])
									// Trace: core/cva6_mmu/cva6_ptw.sv:203:11
									shared_tlb_update_o[(((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) >= ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) ? ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) >= ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) ? (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))))) + 1 : (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1)))) + 1) + (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1))))))) - (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) - ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? x : (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) - x) * (tlb_update_cva6_t_HYP_EXT >= 0 ? tlb_update_cva6_t_HYP_EXT + 1 : 1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT >= 0 ? y : tlb_update_cva6_t_HYP_EXT - y))) : (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0)))))) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) - ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? x : (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) - x) * (tlb_update_cva6_t_HYP_EXT >= 0 ? tlb_update_cva6_t_HYP_EXT + 1 : 1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT >= 0 ? y : tlb_update_cva6_t_HYP_EXT - y))))] = (y == 0 ? ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] == x : 1'b0);
								else
									// Trace: core/cva6_mmu/cva6_ptw.sv:205:11
									shared_tlb_update_o[(((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) >= ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) ? ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) >= ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) ? (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))))) + 1 : (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1)))) + 1) + (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1))))))) - (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) - ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? x : (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) - x) * (tlb_update_cva6_t_HYP_EXT >= 0 ? tlb_update_cva6_t_HYP_EXT + 1 : 1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT >= 0 ? y : tlb_update_cva6_t_HYP_EXT - y))) : (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0)))))) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) - ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? x : (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) - x) * (tlb_update_cva6_t_HYP_EXT >= 0 ? tlb_update_cva6_t_HYP_EXT + 1 : 1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT >= 0 ? y : tlb_update_cva6_t_HYP_EXT - y))))] = (y != 0 ? ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] == x : 1'b0);
							end
					end
				end
		end
		if ((enable_g_translation_i || en_ld_st_g_translation_i) && CVA6Cfg[16543]) begin
			// Trace: core/cva6_mmu/cva6_ptw.sv:212:7
			shared_tlb_update_o[(((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)-:(((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)) >= ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0) ? (((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)) - ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0)) + 1 : (((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0) - ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1))) + 1)] = gpte_q | (global_mapping_q << 5);
			// Trace: core/cva6_mmu/cva6_ptw.sv:213:7
			shared_tlb_update_o[(((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1-:(((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9))] = pte;
		end
		else begin
			// Trace: core/cva6_mmu/cva6_ptw.sv:215:7
			shared_tlb_update_o[(((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)-:(((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)) >= ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0) ? (((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)) - ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0)) + 1 : (((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0) - ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1))) + 1)] = pte | (global_mapping_q << 5);
			// Trace: core/cva6_mmu/cva6_ptw.sv:216:7
			shared_tlb_update_o[(((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1-:(((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9))] = 1'sb0;
		end
		// Trace: core/cva6_mmu/cva6_ptw.sv:220:5
		shared_tlb_update_o[tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1))))-:((tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1))))) >= (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0)))) ? ((tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1))))) - (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0))))) + 1 : ((tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0)))) - (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))))) + 1)] = tlb_update_asid_q;
		// Trace: core/cva6_mmu/cva6_ptw.sv:221:5
		shared_tlb_update_o[tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))-:((tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))) >= (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0))) ? ((tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))) - (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0)))) + 1 : ((((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + 0))) - (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1))))) + 1)] = tlb_update_vmid_q;
		// Trace: core/cva6_mmu/cva6_ptw.sv:223:5
		bad_paddr_o = (ptw_access_exception_o ? ptw_pptr_q : 'b0);
		if (CVA6Cfg[16543])
			// Trace: core/cva6_mmu/cva6_ptw.sv:225:7
			bad_gpaddr_o[CVA6Cfg[17006-:32] - 1:0] = (ptw_error_at_g_st_o ? (ptw_stage_q == 2'd1 ? gptw_pptr_q[CVA6Cfg[17006-:32] - 1:0] : gpaddr_q) : 'b0);
	end
	// Trace: core/cva6_mmu/cva6_ptw.sv:228:3
	wire [1:1] sv2v_tmp_3A120;
	assign sv2v_tmp_3A120 = tag_valid_q;
	always @(*) req_port_o[0] = sv2v_tmp_3A120;
	// Trace: core/cva6_mmu/cva6_ptw.sv:230:3
	wire allow_access;
	// Trace: core/cva6_mmu/cva6_ptw.sv:234:3
	// removed localparam type riscv_pmp_access_t
	// removed localparam type riscv_priv_lvl_t
	pmp #(
		.CVA6Cfg(CVA6Cfg),
		.PLEN(CVA6Cfg[17038-:32]),
		.PMP_LEN(CVA6Cfg[17038-:32] - 2),
		.NR_ENTRIES(CVA6Cfg[15913-:32])
	) i_pmp_ptw(
		.addr_i(ptw_pptr_q),
		.priv_lvl_i(2'b01),
		.access_type_i(3'b001),
		.conf_addr_i(pmpaddr_i),
		.conf_i(pmpcfg_i),
		.allow_o(allow_access)
	);
	// Trace: core/cva6_mmu/cva6_ptw.sv:252:3
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
	wire [(((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1) * 1:1] sv2v_tmp_AA32D;
	assign sv2v_tmp_AA32D = (CVA6Cfg[17102-:32] == 32 ? ariane_pkg_be_gen_32(req_port_o[(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] - 2):(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] - 1)], req_port_o[2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)-:((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) ? ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) + 1)]) : {((((((((((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) : (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1)) + 1) >= (((((((((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1)) + 1 : (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) ? ((((((((((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) : (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1)) + 1) - (((((((((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1)) + 1 : (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1 : ((((((((((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1)) + 1 : (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (((((((((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1) >= 0 ? (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) : (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1)) + 1)) + 1) {1'sb1}});
	always @(*) req_port_o[(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))-:(((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1)] = sv2v_tmp_AA32D;
	// Trace: core/cva6_mmu/cva6_ptw.sv:282:3
	function automatic [1:0] sv2v_cast_2;
		input reg [1:0] inp;
		sv2v_cast_2 = inp;
	endfunction
	function automatic signed [CVA6Cfg[16011-:32] - 1:0] sv2v_cast_6BC7A_signed;
		input reg signed [CVA6Cfg[16011-:32] - 1:0] inp;
		sv2v_cast_6BC7A_signed = inp;
	endfunction
	always @(*) begin : ptw
		// Trace: core/cva6_mmu/cva6_ptw.sv:283:5
		reg [CVA6Cfg[17038-:32] - 1:0] pptr;
		if (_sv2v_0)
			;
		// Trace: core/cva6_mmu/cva6_ptw.sv:287:5
		tag_valid_n = 1'b0;
		// Trace: core/cva6_mmu/cva6_ptw.sv:288:5
		req_port_o[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] = 1'b0;
		// Trace: core/cva6_mmu/cva6_ptw.sv:289:5
		req_port_o[2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)-:((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) ? ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) + 1)] = sv2v_cast_2(CVA6Cfg[16011-:32]);
		// Trace: core/cva6_mmu/cva6_ptw.sv:290:5
		req_port_o[1 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] = 1'b0;
		// Trace: core/cva6_mmu/cva6_ptw.sv:291:5
		ptw_error_o = 1'b0;
		// Trace: core/cva6_mmu/cva6_ptw.sv:292:5
		ptw_error_at_g_st_o = 1'b0;
		// Trace: core/cva6_mmu/cva6_ptw.sv:293:5
		ptw_err_at_g_int_st_o = 1'b0;
		// Trace: core/cva6_mmu/cva6_ptw.sv:294:5
		ptw_access_exception_o = 1'b0;
		// Trace: core/cva6_mmu/cva6_ptw.sv:295:5
		shared_tlb_update_o[1 + ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) >= ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) ? (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))))) + 1 : (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1)))) + 1) + (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))))))] = 1'b0;
		// Trace: core/cva6_mmu/cva6_ptw.sv:296:5
		is_instr_ptw_n = is_instr_ptw_q;
		// Trace: core/cva6_mmu/cva6_ptw.sv:297:5
		ptw_lvl_n = ptw_lvl_q;
		// Trace: core/cva6_mmu/cva6_ptw.sv:298:5
		ptw_pptr_n = ptw_pptr_q;
		// Trace: core/cva6_mmu/cva6_ptw.sv:299:5
		state_d = state_q;
		// Trace: core/cva6_mmu/cva6_ptw.sv:300:5
		ptw_stage_d = ptw_stage_q;
		// Trace: core/cva6_mmu/cva6_ptw.sv:301:5
		global_mapping_n = global_mapping_q;
		// Trace: core/cva6_mmu/cva6_ptw.sv:303:5
		tlb_update_asid_n = tlb_update_asid_q;
		// Trace: core/cva6_mmu/cva6_ptw.sv:304:5
		tlb_update_vmid_n = tlb_update_vmid_q;
		// Trace: core/cva6_mmu/cva6_ptw.sv:305:5
		vaddr_n = vaddr_q;
		// Trace: core/cva6_mmu/cva6_ptw.sv:306:5
		pptr = ptw_pptr_q;
		// Trace: core/cva6_mmu/cva6_ptw.sv:308:5
		if (CVA6Cfg[16543]) begin
			// Trace: core/cva6_mmu/cva6_ptw.sv:309:7
			gpaddr_n = gpaddr_q;
			// Trace: core/cva6_mmu/cva6_ptw.sv:310:7
			gptw_pptr_n = gptw_pptr_q;
			// Trace: core/cva6_mmu/cva6_ptw.sv:311:7
			gpte_d = gpte_q;
		end
		// Trace: core/cva6_mmu/cva6_ptw.sv:314:5
		shared_tlb_miss_o = 1'b0;
		case (state_q)
			3'd0: begin
				// Trace: core/cva6_mmu/cva6_ptw.sv:321:9
				ptw_lvl_n = 1'sb0;
				// Trace: core/cva6_mmu/cva6_ptw.sv:322:9
				global_mapping_n = 1'b0;
				// Trace: core/cva6_mmu/cva6_ptw.sv:323:9
				is_instr_ptw_n = 1'b0;
				// Trace: core/cva6_mmu/cva6_ptw.sv:326:9
				if (CVA6Cfg[16543]) begin
					// Trace: core/cva6_mmu/cva6_ptw.sv:327:11
					gpte_d = 1'sb0;
					// Trace: core/cva6_mmu/cva6_ptw.sv:328:11
					gpaddr_n = 1'sb0;
				end
				if (((((enable_translation_i | enable_g_translation_i) || (en_ld_st_translation_i || en_ld_st_g_translation_i)) || !CVA6Cfg[16543]) && shared_tlb_access_i) && ~shared_tlb_hit_i) begin
					// Trace: core/cva6_mmu/cva6_ptw.sv:334:11
					if (((enable_translation_i && enable_g_translation_i) || (en_ld_st_translation_i && en_ld_st_g_translation_i)) && CVA6Cfg[16543]) begin
						// Trace: core/cva6_mmu/cva6_ptw.sv:335:13
						ptw_stage_d = 2'd1;
						// Trace: core/cva6_mmu/cva6_ptw.sv:336:13
						pptr = {vsatp_ppn_i, shared_tlb_vaddr_i[CVA6Cfg[351-:32] - 1:CVA6Cfg[351-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])], sv2v_cast_6BC7A_signed(0)};
						// Trace: core/cva6_mmu/cva6_ptw.sv:341:13
						gptw_pptr_n = pptr;
						// Trace: core/cva6_mmu/cva6_ptw.sv:342:13
						ptw_pptr_n = {hgatp_ppn_i[CVA6Cfg[419-:32] - 1:2], pptr[(CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1:CVA6Cfg[351-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])], sv2v_cast_6BC7A_signed(0)};
					end
					else if ((((enable_translation_i | enable_g_translation_i) && !enable_translation_i) || ((en_ld_st_translation_i || en_ld_st_g_translation_i) && !en_ld_st_translation_i)) && CVA6Cfg[16543]) begin
						// Trace: core/cva6_mmu/cva6_ptw.sv:348:13
						ptw_stage_d = 2'd2;
						// Trace: core/cva6_mmu/cva6_ptw.sv:349:13
						gpaddr_n = shared_tlb_vaddr_i[(CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1:0];
						// Trace: core/cva6_mmu/cva6_ptw.sv:350:13
						ptw_pptr_n = {hgatp_ppn_i[CVA6Cfg[419-:32] - 1:2], shared_tlb_vaddr_i[(CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1:CVA6Cfg[351-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])], sv2v_cast_6BC7A_signed(0)};
					end
					else begin
						// Trace: core/cva6_mmu/cva6_ptw.sv:356:13
						ptw_stage_d = 2'd0;
						// Trace: core/cva6_mmu/cva6_ptw.sv:357:13
						if ((v_i || ld_st_v_i) && CVA6Cfg[16543])
							// Trace: core/cva6_mmu/cva6_ptw.sv:358:15
							ptw_pptr_n = {vsatp_ppn_i, shared_tlb_vaddr_i[CVA6Cfg[351-:32] - 1:CVA6Cfg[351-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])], sv2v_cast_6BC7A_signed(0)};
						else
							// Trace: core/cva6_mmu/cva6_ptw.sv:364:15
							ptw_pptr_n = {satp_ppn_i, shared_tlb_vaddr_i[CVA6Cfg[351-:32] - 1:CVA6Cfg[351-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])], sv2v_cast_6BC7A_signed(0)};
					end
					// Trace: core/cva6_mmu/cva6_ptw.sv:371:11
					is_instr_ptw_n = itlb_req_i;
					// Trace: core/cva6_mmu/cva6_ptw.sv:372:11
					vaddr_n = shared_tlb_vaddr_i;
					// Trace: core/cva6_mmu/cva6_ptw.sv:373:11
					state_d = 3'd1;
					// Trace: core/cva6_mmu/cva6_ptw.sv:374:11
					shared_tlb_miss_o = 1'b1;
					if (itlb_req_i) begin
						// Trace: core/cva6_mmu/cva6_ptw.sv:377:13
						tlb_update_asid_n = (v_i ? vs_asid_i : asid_i);
						// Trace: core/cva6_mmu/cva6_ptw.sv:378:13
						if (CVA6Cfg[16543])
							// Trace: core/cva6_mmu/cva6_ptw.sv:378:30
							tlb_update_vmid_n = vmid_i;
					end
					else begin
						// Trace: core/cva6_mmu/cva6_ptw.sv:380:13
						tlb_update_asid_n = (ld_st_v_i ? vs_asid_i : asid_i);
						// Trace: core/cva6_mmu/cva6_ptw.sv:381:13
						if (CVA6Cfg[16543])
							// Trace: core/cva6_mmu/cva6_ptw.sv:381:30
							tlb_update_vmid_n = vmid_i;
					end
				end
			end
			3'd1: begin
				// Trace: core/cva6_mmu/cva6_ptw.sv:388:9
				req_port_o[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] = 1'b1;
				// Trace: core/cva6_mmu/cva6_ptw.sv:390:9
				if (req_port_i[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))]) begin
					// Trace: core/cva6_mmu/cva6_ptw.sv:392:11
					tag_valid_n = 1'b1;
					// Trace: core/cva6_mmu/cva6_ptw.sv:393:11
					state_d = 3'd2;
				end
			end
			3'd2:
				// Trace: core/cva6_mmu/cva6_ptw.sv:399:9
				if (data_rvalid_q) begin
					// Trace: core/cva6_mmu/cva6_ptw.sv:402:11
					if (pte[5] && ((ptw_stage_q == 2'd0) || !CVA6Cfg[16543]))
						// Trace: core/cva6_mmu/cva6_ptw.sv:402:66
						global_mapping_n = 1'b1;
					if ((!pte[0] || (!pte[1] && pte[2])) || (|pte[10 + (pte_cva6_t_CVA6Cfg[419-:32] + 9)-:((10 + (pte_cva6_t_CVA6Cfg[419-:32] + 9)) >= (pte_cva6_t_CVA6Cfg[419-:32] + 10) ? ((10 + (pte_cva6_t_CVA6Cfg[419-:32] + 9)) - (pte_cva6_t_CVA6Cfg[419-:32] + 10)) + 1 : ((pte_cva6_t_CVA6Cfg[419-:32] + 10) - (10 + (pte_cva6_t_CVA6Cfg[419-:32] + 9))) + 1)] && (CVA6Cfg[17102-:32] == 64)))
						// Trace: core/cva6_mmu/cva6_ptw.sv:409:13
						state_d = 3'd4;
					else begin
						// Trace: core/cva6_mmu/cva6_ptw.sv:414:13
						state_d = 3'd6;
						// Trace: core/cva6_mmu/cva6_ptw.sv:417:13
						if (pte[1] || pte[3]) begin
							// Trace: core/cva6_mmu/cva6_ptw.sv:418:15
							if (CVA6Cfg[16543])
								// Trace: core/cva6_mmu/cva6_ptw.sv:419:17
								case (ptw_stage_q)
									2'd0:
										// Trace: core/cva6_mmu/cva6_ptw.sv:421:21
										if ((is_instr_ptw_q && enable_g_translation_i) || (!is_instr_ptw_q && en_ld_st_g_translation_i)) begin
											// Trace: core/cva6_mmu/cva6_ptw.sv:422:23
											state_d = 3'd1;
											// Trace: core/cva6_mmu/cva6_ptw.sv:423:23
											ptw_stage_d = 2'd2;
											// Trace: core/cva6_mmu/cva6_ptw.sv:424:23
											if (CVA6Cfg[16543])
												// Trace: core/cva6_mmu/cva6_ptw.sv:424:40
												gpte_d = pte;
											// Trace: core/cva6_mmu/cva6_ptw.sv:425:23
											ptw_lvl_n[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? HYP_EXT : HYP_EXT - HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] = ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])];
											// Trace: core/cva6_mmu/cva6_ptw.sv:426:23
											gpaddr_n = gpaddr[ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] * CVA6Cfg[17006-:32]+:CVA6Cfg[17006-:32]];
											// Trace: core/cva6_mmu/cva6_ptw.sv:427:23
											ptw_pptr_n = {hgatp_ppn_i[CVA6Cfg[419-:32] - 1:2], gpaddr[(ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] * CVA6Cfg[17006-:32]) + (((CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1) >= (CVA6Cfg[351-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) ? (CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1 : (((CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1) + (((CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1) >= (CVA6Cfg[351-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) ? (((CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1) - (CVA6Cfg[351-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]))) + 1 : ((CVA6Cfg[351-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) - ((CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1)) + 1)) - 1)-:(((CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1) >= (CVA6Cfg[351-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) ? (((CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1) - (CVA6Cfg[351-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]))) + 1 : ((CVA6Cfg[351-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])) - ((CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1)) + 1)], sv2v_cast_6BC7A_signed(0)};
											// Trace: core/cva6_mmu/cva6_ptw.sv:432:23
											ptw_lvl_n[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] = 1'sb0;
										end
									2'd1: begin
										// Trace: core/cva6_mmu/cva6_ptw.sv:436:21
										state_d = 3'd1;
										// Trace: core/cva6_mmu/cva6_ptw.sv:437:21
										ptw_stage_d = 2'd0;
										// Trace: core/cva6_mmu/cva6_ptw.sv:438:21
										ptw_lvl_n[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] = ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? HYP_EXT : HYP_EXT - HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])];
										// Trace: core/cva6_mmu/cva6_ptw.sv:439:21
										pptr = {pte[(pte_cva6_t_CVA6Cfg[419-:32] + 9) - ((pte_cva6_t_CVA6Cfg[419-:32] - 1) - (CVA6Cfg[387-:32] - 1)):(pte_cva6_t_CVA6Cfg[419-:32] + 9) - (pte_cva6_t_CVA6Cfg[419-:32] - 1)], gptw_pptr_q[11:0]};
										// Trace: core/cva6_mmu/cva6_ptw.sv:440:21
										if (ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] == 1)
											// Trace: core/cva6_mmu/cva6_ptw.sv:440:44
											pptr[20:0] = gptw_pptr_q[20:0];
										if (ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] == 0)
											// Trace: core/cva6_mmu/cva6_ptw.sv:441:44
											pptr[29:0] = gptw_pptr_q[29:0];
										// Trace: core/cva6_mmu/cva6_ptw.sv:442:21
										ptw_pptr_n = pptr;
									end
									default:
										;
								endcase
							if (is_instr_ptw_q) begin
								begin
									// Trace: core/cva6_mmu/cva6_ptw.sv:455:17
									if (!pte[3] || !pte[6]) begin
										// Trace: core/cva6_mmu/cva6_ptw.sv:456:19
										state_d = 3'd4;
										// Trace: core/cva6_mmu/cva6_ptw.sv:457:19
										if (CVA6Cfg[16543])
											// Trace: core/cva6_mmu/cva6_ptw.sv:457:36
											ptw_stage_d = ptw_stage_q;
									end
									else if ((CVA6Cfg[16543] && ((ptw_stage_q == 2'd2) || !enable_g_translation_i)) || !CVA6Cfg[16543])
										// Trace: core/cva6_mmu/cva6_ptw.sv:459:19
										shared_tlb_update_o[1 + ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) >= ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) ? (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))))) + 1 : (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1)))) + 1) + (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))))))] = 1'b1;
								end
							end
							else begin
								// Trace: core/cva6_mmu/cva6_ptw.sv:470:17
								if (pte[6] && ((pte[1] && !hlvx_inst_i) || (pte[3] && ((mxr_i || hlvx_inst_i) || ((((ptw_stage_q == 2'd0) && vmxr_i) && ld_st_v_i) && CVA6Cfg[16543]))))) begin
									begin
										// Trace: core/cva6_mmu/cva6_ptw.sv:471:19
										if ((CVA6Cfg[16543] && ((ptw_stage_q == 2'd2) || !en_ld_st_g_translation_i)) || !CVA6Cfg[16543])
											// Trace: core/cva6_mmu/cva6_ptw.sv:472:21
											shared_tlb_update_o[1 + ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) >= ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) ? (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))))) + 1 : (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1)))) + 1) + (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))))))] = 1'b1;
									end
								end
								else begin
									// Trace: core/cva6_mmu/cva6_ptw.sv:474:19
									state_d = 3'd4;
									// Trace: core/cva6_mmu/cva6_ptw.sv:475:19
									if (CVA6Cfg[16543])
										// Trace: core/cva6_mmu/cva6_ptw.sv:475:36
										ptw_stage_d = ptw_stage_q;
								end
								if (lsu_is_store_i && (!pte[2] || !pte[7])) begin
									// Trace: core/cva6_mmu/cva6_ptw.sv:481:19
									shared_tlb_update_o[1 + ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) >= ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) ? (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))))) + 1 : (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1)))) + 1) + (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))))))] = 1'b0;
									// Trace: core/cva6_mmu/cva6_ptw.sv:482:19
									state_d = 3'd4;
									// Trace: core/cva6_mmu/cva6_ptw.sv:483:19
									if (CVA6Cfg[16543])
										// Trace: core/cva6_mmu/cva6_ptw.sv:483:36
										ptw_stage_d = ptw_stage_q;
								end
							end
							if (|misaligned_page) begin
								// Trace: core/cva6_mmu/cva6_ptw.sv:489:17
								state_d = 3'd4;
								// Trace: core/cva6_mmu/cva6_ptw.sv:490:17
								if (CVA6Cfg[16543])
									// Trace: core/cva6_mmu/cva6_ptw.sv:490:34
									ptw_stage_d = ptw_stage_q;
								// Trace: core/cva6_mmu/cva6_ptw.sv:491:17
								shared_tlb_update_o[1 + ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) >= ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) ? (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))))) + 1 : (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1)))) + 1) + (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))))))] = 1'b0;
							end
							if (CVA6Cfg[16543]) begin
								begin
									// Trace: core/cva6_mmu/cva6_ptw.sv:496:17
									if ((((v_i && is_instr_ptw_q) || (ld_st_v_i && !is_instr_ptw_q)) && (ptw_stage_q == 2'd0)) && (|pte[(pte_cva6_t_CVA6Cfg[419-:32] + 9) - ((pte_cva6_t_CVA6Cfg[419-:32] - 1) - (CVA6Cfg[419-:32] - 1)):(pte_cva6_t_CVA6Cfg[419-:32] + 9) - ((pte_cva6_t_CVA6Cfg[419-:32] - 1) - ((CVA6Cfg[387-:32] - 1) + HYP_EXT))] != 1'b0)) begin
										// Trace: core/cva6_mmu/cva6_ptw.sv:497:19
										state_d = 3'd4;
										// Trace: core/cva6_mmu/cva6_ptw.sv:498:19
										ptw_stage_d = 2'd2;
									end
								end
							end
						end
						else begin
							// Trace: core/cva6_mmu/cva6_ptw.sv:505:15
							if (ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] == (CVA6Cfg[16011-:32] - 1)) begin
								// Trace: core/cva6_mmu/cva6_ptw.sv:507:17
								ptw_lvl_n[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] = ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])];
								// Trace: core/cva6_mmu/cva6_ptw.sv:508:17
								state_d = 3'd4;
								// Trace: core/cva6_mmu/cva6_ptw.sv:509:17
								if (CVA6Cfg[16543])
									// Trace: core/cva6_mmu/cva6_ptw.sv:509:34
									ptw_stage_d = ptw_stage_q;
							end
							else begin
								// Trace: core/cva6_mmu/cva6_ptw.sv:513:17
								ptw_lvl_n[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] = ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] + 1'b1;
								// Trace: core/cva6_mmu/cva6_ptw.sv:514:17
								state_d = 3'd1;
								// Trace: core/cva6_mmu/cva6_ptw.sv:516:17
								if (CVA6Cfg[16543])
									// Trace: core/cva6_mmu/cva6_ptw.sv:517:19
									case (ptw_stage_q)
										2'd0:
											// Trace: core/cva6_mmu/cva6_ptw.sv:519:23
											if (CVA6Cfg[16543] && ((is_instr_ptw_q && enable_g_translation_i) || (!is_instr_ptw_q && en_ld_st_g_translation_i))) begin
												// Trace: core/cva6_mmu/cva6_ptw.sv:520:25
												ptw_stage_d = 2'd1;
												// Trace: core/cva6_mmu/cva6_ptw.sv:521:25
												if (CVA6Cfg[16543])
													// Trace: core/cva6_mmu/cva6_ptw.sv:521:42
													gpte_d = pte;
												// Trace: core/cva6_mmu/cva6_ptw.sv:522:25
												ptw_lvl_n[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? HYP_EXT : HYP_EXT - HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] = ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] + 1;
												// Trace: core/cva6_mmu/cva6_ptw.sv:523:25
												pptr = {pte[pte_cva6_t_CVA6Cfg[419-:32] + 9-:((pte_cva6_t_CVA6Cfg[419-:32] + 9) >= 10 ? pte_cva6_t_CVA6Cfg[419-:32] + 0 : 11 - (pte_cva6_t_CVA6Cfg[419-:32] + 9))], vaddr_lvl[(((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))) >= ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) ? (((HYP_EXT * 2) >= 0 ? 0 : HYP_EXT * 2) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])) + ((CVA6Cfg[16011-:32] - 2) >= 0 ? ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] : (CVA6Cfg[16011-:32] - 2) - ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])]) : ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) - (((((HYP_EXT * 2) >= 0 ? 0 : HYP_EXT * 2) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])) + ((CVA6Cfg[16011-:32] - 2) >= 0 ? ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] : (CVA6Cfg[16011-:32] - 2) - ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])])) - ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))))) * (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])+:CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]], sv2v_cast_6BC7A_signed(0)};
												// Trace: core/cva6_mmu/cva6_ptw.sv:524:25
												gptw_pptr_n = pptr;
												// Trace: core/cva6_mmu/cva6_ptw.sv:525:25
												ptw_pptr_n = {hgatp_ppn_i[CVA6Cfg[419-:32] - 1:2], pptr[(CVA6Cfg[351-:32] + (HYP_EXT * 2)) - 1:CVA6Cfg[351-:32] - (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])], sv2v_cast_6BC7A_signed(0)};
												// Trace: core/cva6_mmu/cva6_ptw.sv:530:25
												ptw_lvl_n[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] = 1'sb0;
											end
											else
												// Trace: core/cva6_mmu/cva6_ptw.sv:532:25
												ptw_pptr_n = {pte[pte_cva6_t_CVA6Cfg[419-:32] + 9-:((pte_cva6_t_CVA6Cfg[419-:32] + 9) >= 10 ? pte_cva6_t_CVA6Cfg[419-:32] + 0 : 11 - (pte_cva6_t_CVA6Cfg[419-:32] + 9))], vaddr_lvl[(((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))) >= ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) ? (((HYP_EXT * 2) >= 0 ? 0 : HYP_EXT * 2) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])) + ((CVA6Cfg[16011-:32] - 2) >= 0 ? ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] : (CVA6Cfg[16011-:32] - 2) - ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])]) : ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) - (((((HYP_EXT * 2) >= 0 ? 0 : HYP_EXT * 2) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])) + ((CVA6Cfg[16011-:32] - 2) >= 0 ? ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] : (CVA6Cfg[16011-:32] - 2) - ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])])) - ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))))) * (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])+:CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]], sv2v_cast_6BC7A_signed(0)};
										2'd1:
											// Trace: core/cva6_mmu/cva6_ptw.sv:536:23
											ptw_pptr_n = {pte[pte_cva6_t_CVA6Cfg[419-:32] + 9-:((pte_cva6_t_CVA6Cfg[419-:32] + 9) >= 10 ? pte_cva6_t_CVA6Cfg[419-:32] + 0 : 11 - (pte_cva6_t_CVA6Cfg[419-:32] + 9))], vaddr_lvl[(((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))) >= ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) ? (((HYP_EXT * 2) >= 0 ? HYP_EXT : (HYP_EXT * 2) - HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])) + ((CVA6Cfg[16011-:32] - 2) >= 0 ? ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] : (CVA6Cfg[16011-:32] - 2) - ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])]) : ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) - (((((HYP_EXT * 2) >= 0 ? HYP_EXT : (HYP_EXT * 2) - HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])) + ((CVA6Cfg[16011-:32] - 2) >= 0 ? ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] : (CVA6Cfg[16011-:32] - 2) - ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])])) - ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))))) * (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])+:CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]], sv2v_cast_6BC7A_signed(0)};
										2'd2:
											// Trace: core/cva6_mmu/cva6_ptw.sv:541:23
											ptw_pptr_n = {pte[pte_cva6_t_CVA6Cfg[419-:32] + 9-:((pte_cva6_t_CVA6Cfg[419-:32] + 9) >= 10 ? pte_cva6_t_CVA6Cfg[419-:32] + 0 : 11 - (pte_cva6_t_CVA6Cfg[419-:32] + 9))], vaddr_lvl[(((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))) >= ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) ? (((HYP_EXT * 2) >= 0 ? HYP_EXT * 2 : (HYP_EXT * 2) - (HYP_EXT * 2)) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])) + ((CVA6Cfg[16011-:32] - 2) >= 0 ? ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] : (CVA6Cfg[16011-:32] - 2) - ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])]) : ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) - (((((HYP_EXT * 2) >= 0 ? HYP_EXT * 2 : (HYP_EXT * 2) - (HYP_EXT * 2)) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])) + ((CVA6Cfg[16011-:32] - 2) >= 0 ? ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] : (CVA6Cfg[16011-:32] - 2) - ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])])) - ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))))) * (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])+:CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]], sv2v_cast_6BC7A_signed(0)};
									endcase
								else
									// Trace: core/cva6_mmu/cva6_ptw.sv:546:26
									ptw_pptr_n = {pte[pte_cva6_t_CVA6Cfg[419-:32] + 9-:((pte_cva6_t_CVA6Cfg[419-:32] + 9) >= 10 ? pte_cva6_t_CVA6Cfg[419-:32] + 0 : 11 - (pte_cva6_t_CVA6Cfg[419-:32] + 9))], vaddr_lvl[(((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))) >= ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) ? (((HYP_EXT * 2) >= 0 ? 0 : HYP_EXT * 2) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])) + ((CVA6Cfg[16011-:32] - 2) >= 0 ? ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] : (CVA6Cfg[16011-:32] - 2) - ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])]) : ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? (HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1) : (CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32])))) - (((((HYP_EXT * 2) >= 0 ? 0 : HYP_EXT * 2) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])) + ((CVA6Cfg[16011-:32] - 2) >= 0 ? ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])] : (CVA6Cfg[16011-:32] - 2) - ptw_lvl_q[((CVA6Cfg[16011-:32] - 2) >= 0 ? 0 : CVA6Cfg[16011-:32] - 2) + ((HYP_EXT >= 0 ? 0 : HYP_EXT) * ((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32]))+:((CVA6Cfg[16011-:32] - 2) >= 0 ? CVA6Cfg[16011-:32] - 1 : 3 - CVA6Cfg[16011-:32])])) - ((HYP_EXT * 2) >= 0 ? ((CVA6Cfg[16011-:32] - 2) >= 0 ? (((HYP_EXT * 2) + 1) * (CVA6Cfg[16011-:32] - 1)) - 1 : (((HYP_EXT * 2) + 1) * (3 - CVA6Cfg[16011-:32])) + (CVA6Cfg[16011-:32] - 3)) : ((CVA6Cfg[16011-:32] - 2) >= 0 ? ((1 - (HYP_EXT * 2)) * (CVA6Cfg[16011-:32] - 1)) + (((HYP_EXT * 2) * (CVA6Cfg[16011-:32] - 1)) - 1) : ((1 - (HYP_EXT * 2)) * (3 - CVA6Cfg[16011-:32])) + (((CVA6Cfg[16011-:32] - 2) + ((HYP_EXT * 2) * (3 - CVA6Cfg[16011-:32]))) - 1))))) * (CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32])+:CVA6Cfg[16043-:32] / CVA6Cfg[16011-:32]], sv2v_cast_6BC7A_signed(0)};
								if (CVA6Cfg[16543] && ((pte[6] || pte[7]) || pte[4])) begin
									// Trace: core/cva6_mmu/cva6_ptw.sv:549:19
									state_d = 3'd4;
									// Trace: core/cva6_mmu/cva6_ptw.sv:550:19
									ptw_stage_d = ptw_stage_q;
								end
							end
							if (CVA6Cfg[16543]) begin
								begin
									// Trace: core/cva6_mmu/cva6_ptw.sv:557:17
									if ((((v_i && is_instr_ptw_q) || (ld_st_v_i && !is_instr_ptw_q)) && (ptw_stage_q == 2'd0)) && (|pte[(pte_cva6_t_CVA6Cfg[419-:32] + 9) - ((pte_cva6_t_CVA6Cfg[419-:32] - 1) - (CVA6Cfg[419-:32] - 1)):(pte_cva6_t_CVA6Cfg[419-:32] + 9) - ((pte_cva6_t_CVA6Cfg[419-:32] - 1) - ((CVA6Cfg[387-:32] - 1) + HYP_EXT))] != 1'b0)) begin
										// Trace: core/cva6_mmu/cva6_ptw.sv:558:19
										state_d = 3'd4;
										// Trace: core/cva6_mmu/cva6_ptw.sv:559:19
										ptw_stage_d = ptw_stage_q;
									end
								end
							end
						end
					end
					if (!allow_access) begin
						// Trace: core/cva6_mmu/cva6_ptw.sv:567:13
						shared_tlb_update_o[1 + ((((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) >= ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) ? (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))))) + 1 : (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? 0 : tlb_update_cva6_t_HYP_EXT + 0) : (tlb_update_cva6_t_HYP_EXT >= 0 ? (tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1) : tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT)))) - ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT >= 0 ? ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1 : ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 1) * (1 - tlb_update_cva6_t_HYP_EXT)) + (tlb_update_cva6_t_HYP_EXT - 1)) : (tlb_update_cva6_t_HYP_EXT >= 0 ? ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (tlb_update_cva6_t_HYP_EXT + 1)) + (((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (tlb_update_cva6_t_HYP_EXT + 1)) - 1) : ((3 - tlb_update_cva6_t_CVA6Cfg[16011-:32]) * (1 - tlb_update_cva6_t_HYP_EXT)) + ((tlb_update_cva6_t_HYP_EXT + ((tlb_update_cva6_t_CVA6Cfg[16011-:32] - 2) * (1 - tlb_update_cva6_t_HYP_EXT))) - 1)))) + 1) + (tlb_update_cva6_t_CVA6Cfg[16043-:32] + (tlb_update_cva6_t_CVA6Cfg[16940-:32] + (tlb_update_cva6_t_CVA6Cfg[16908-:32] + (((tlb_update_cva6_t_HYP_EXT * 2) >= 0 ? (tlb_update_cva6_t_HYP_EXT * 2) + 1 : 1 - (tlb_update_cva6_t_HYP_EXT * 2)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) + ((((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9) >= 0 ? (10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 10 : 1 - ((10 + tlb_update_cva6_t_CVA6Cfg[419-:32]) + 9)) - 1)))))))] = 1'b0;
						// Trace: core/cva6_mmu/cva6_ptw.sv:569:13
						ptw_pptr_n = ptw_pptr_q;
						// Trace: core/cva6_mmu/cva6_ptw.sv:570:13
						if (CVA6Cfg[16543])
							// Trace: core/cva6_mmu/cva6_ptw.sv:570:30
							ptw_stage_d = ptw_stage_q;
						// Trace: core/cva6_mmu/cva6_ptw.sv:571:13
						state_d = 3'd5;
					end
				end
			3'd4: begin
				// Trace: core/cva6_mmu/cva6_ptw.sv:578:9
				state_d = 3'd6;
				// Trace: core/cva6_mmu/cva6_ptw.sv:579:9
				ptw_error_o = 1'b1;
				// Trace: core/cva6_mmu/cva6_ptw.sv:580:9
				if (CVA6Cfg[16543]) begin
					// Trace: core/cva6_mmu/cva6_ptw.sv:581:11
					ptw_error_at_g_st_o = (ptw_stage_q != 2'd0 ? 1'b1 : 1'b0);
					// Trace: core/cva6_mmu/cva6_ptw.sv:582:11
					ptw_err_at_g_int_st_o = (ptw_stage_q == 2'd1 ? 1'b1 : 1'b0);
				end
			end
			3'd5: begin
				// Trace: core/cva6_mmu/cva6_ptw.sv:586:9
				state_d = 3'd6;
				// Trace: core/cva6_mmu/cva6_ptw.sv:587:9
				ptw_access_exception_o = 1'b1;
			end
			3'd3:
				// Trace: core/cva6_mmu/cva6_ptw.sv:591:9
				if (data_rvalid_q)
					// Trace: core/cva6_mmu/cva6_ptw.sv:591:28
					state_d = 3'd0;
			3'd6:
				// Trace: core/cva6_mmu/cva6_ptw.sv:594:9
				state_d = 3'd0;
			default:
				// Trace: core/cva6_mmu/cva6_ptw.sv:597:9
				state_d = 3'd0;
		endcase
		if (flush_i) begin
			begin
				// Trace: core/cva6_mmu/cva6_ptw.sv:610:7
				if ((|{state_q == 3'd2, state_q == 3'd3} && !data_rvalid_q) || ((state_q == 3'd1) && req_port_i[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))]))
					// Trace: core/cva6_mmu/cva6_ptw.sv:611:9
					state_d = 3'd3;
				else
					// Trace: core/cva6_mmu/cva6_ptw.sv:612:12
					state_d = 3'd6;
			end
		end
	end
	// Trace: core/cva6_mmu/cva6_ptw.sv:617:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cva6_mmu/cva6_ptw.sv:618:5
		if (~rst_ni) begin
			// Trace: core/cva6_mmu/cva6_ptw.sv:619:7
			state_q <= 3'd0;
			// Trace: core/cva6_mmu/cva6_ptw.sv:620:7
			is_instr_ptw_q <= 1'b0;
			// Trace: core/cva6_mmu/cva6_ptw.sv:621:7
			ptw_lvl_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_ptw.sv:622:7
			tag_valid_q <= 1'b0;
			// Trace: core/cva6_mmu/cva6_ptw.sv:623:7
			tlb_update_asid_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_ptw.sv:624:7
			tlb_update_vmid_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_ptw.sv:625:7
			vaddr_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_ptw.sv:626:7
			ptw_pptr_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_ptw.sv:627:7
			global_mapping_q <= 1'b0;
			// Trace: core/cva6_mmu/cva6_ptw.sv:628:7
			data_rdata_q <= 1'sb0;
			// Trace: core/cva6_mmu/cva6_ptw.sv:629:7
			data_rvalid_q <= 1'b0;
			// Trace: core/cva6_mmu/cva6_ptw.sv:630:7
			if (CVA6Cfg[16543]) begin
				// Trace: core/cva6_mmu/cva6_ptw.sv:631:9
				gpaddr_q <= 1'sb0;
				// Trace: core/cva6_mmu/cva6_ptw.sv:632:9
				gptw_pptr_q <= 1'sb0;
				// Trace: core/cva6_mmu/cva6_ptw.sv:633:9
				ptw_stage_q <= 2'd0;
				// Trace: core/cva6_mmu/cva6_ptw.sv:634:9
				gpte_q <= 1'sb0;
			end
		end
		else begin
			// Trace: core/cva6_mmu/cva6_ptw.sv:637:7
			state_q <= state_d;
			// Trace: core/cva6_mmu/cva6_ptw.sv:638:7
			ptw_pptr_q <= ptw_pptr_n;
			// Trace: core/cva6_mmu/cva6_ptw.sv:639:7
			is_instr_ptw_q <= is_instr_ptw_n;
			// Trace: core/cva6_mmu/cva6_ptw.sv:640:7
			ptw_lvl_q <= ptw_lvl_n;
			// Trace: core/cva6_mmu/cva6_ptw.sv:641:7
			tag_valid_q <= tag_valid_n;
			// Trace: core/cva6_mmu/cva6_ptw.sv:642:7
			tlb_update_asid_q <= tlb_update_asid_n;
			// Trace: core/cva6_mmu/cva6_ptw.sv:643:7
			vaddr_q <= vaddr_n;
			// Trace: core/cva6_mmu/cva6_ptw.sv:644:7
			global_mapping_q <= global_mapping_n;
			// Trace: core/cva6_mmu/cva6_ptw.sv:645:7
			data_rdata_q <= req_port_i[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)-:((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) + 1)];
			// Trace: core/cva6_mmu/cva6_ptw.sv:646:7
			data_rvalid_q <= req_port_i[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))];
			// Trace: core/cva6_mmu/cva6_ptw.sv:648:7
			if (CVA6Cfg[16543]) begin
				// Trace: core/cva6_mmu/cva6_ptw.sv:649:9
				gpaddr_q <= gpaddr_n;
				// Trace: core/cva6_mmu/cva6_ptw.sv:650:9
				gptw_pptr_q <= gptw_pptr_n;
				// Trace: core/cva6_mmu/cva6_ptw.sv:651:9
				ptw_stage_q <= ptw_stage_d;
				// Trace: core/cva6_mmu/cva6_ptw.sv:652:9
				gpte_q <= gpte_d;
				// Trace: core/cva6_mmu/cva6_ptw.sv:653:9
				tlb_update_vmid_q <= tlb_update_vmid_n;
			end
		end
	initial _sv2v_0 = 0;
endmodule
