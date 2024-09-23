module csr_regfile_386FB_07714 (
	clk_i,
	rst_ni,
	time_irq_i,
	flush_o,
	halt_csr_o,
	commit_instr_i,
	commit_ack_i,
	boot_addr_i,
	hart_id_i,
	ex_i,
	csr_op_i,
	csr_addr_i,
	csr_wdata_i,
	csr_rdata_o,
	dirty_fp_state_i,
	csr_write_fflags_i,
	dirty_v_state_i,
	pc_i,
	csr_exception_o,
	epc_o,
	eret_o,
	trap_vector_base_o,
	priv_lvl_o,
	v_o,
	acc_fflags_ex_i,
	acc_fflags_ex_valid_i,
	fs_o,
	vfs_o,
	fflags_o,
	frm_o,
	fprec_o,
	vs_o,
	irq_ctrl_o,
	en_translation_o,
	en_g_translation_o,
	en_ld_st_translation_o,
	en_ld_st_g_translation_o,
	ld_st_priv_lvl_o,
	ld_st_v_o,
	csr_hs_ld_st_inst_i,
	sum_o,
	vs_sum_o,
	mxr_o,
	vmxr_o,
	satp_ppn_o,
	asid_o,
	vsatp_ppn_o,
	vs_asid_o,
	hgatp_ppn_o,
	vmid_o,
	irq_i,
	ipi_i,
	debug_req_i,
	set_debug_pc_o,
	tvm_o,
	tw_o,
	vtw_o,
	tsr_o,
	hu_o,
	debug_mode_o,
	single_step_o,
	icache_en_o,
	dcache_en_o,
	acc_cons_en_o,
	perf_addr_o,
	perf_data_o,
	perf_data_i,
	perf_we_o,
	pmpcfg_o,
	pmpaddr_o,
	mcountinhibit_o,
	rvfi_csr_o,
	c3_enable_o
);
	// removed localparam type exception_t_CVA6Cfg_type
	parameter [17102:0] exception_t_CVA6Cfg = 0;
	// removed localparam type irq_ctrl_t_CVA6Cfg_type
	parameter [17102:0] irq_ctrl_t_CVA6Cfg = 0;
	// removed localparam type scoreboard_entry_t_CVA6Cfg_type
	parameter [17102:0] scoreboard_entry_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/csr_regfile.sv:19:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/csr_regfile.sv:20:38
	// removed localparam type exception_t
	// Trace: core/csr_regfile.sv:21:38
	// removed localparam type irq_ctrl_t
	// Trace: core/csr_regfile.sv:22:38
	// removed localparam type scoreboard_entry_t
	// Trace: core/csr_regfile.sv:23:38
	// removed localparam type rvfi_probes_csr_t
	// Trace: core/csr_regfile.sv:24:15
	parameter signed [31:0] VmidWidth = 1;
	// Trace: core/csr_regfile.sv:25:15
	parameter [31:0] MHPMCounterNum = 6;
	// Trace: core/csr_regfile.sv:28:5
	input wire clk_i;
	// Trace: core/csr_regfile.sv:30:5
	input wire rst_ni;
	// Trace: core/csr_regfile.sv:32:5
	input wire time_irq_i;
	// Trace: core/csr_regfile.sv:34:5
	output reg flush_o;
	// Trace: core/csr_regfile.sv:36:5
	output wire halt_csr_o;
	// Trace: core/csr_regfile.sv:38:5
	input wire [((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? (CVA6Cfg[16873-:32] * (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 5)) - 1 : (CVA6Cfg[16873-:32] * (1 - (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4))) + (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 3)):((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? 0 : ((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4)] commit_instr_i;
	// Trace: core/csr_regfile.sv:40:5
	input wire [CVA6Cfg[16873-:32] - 1:0] commit_ack_i;
	// Trace: core/csr_regfile.sv:42:5
	input wire [CVA6Cfg[17070-:32] - 1:0] boot_addr_i;
	// Trace: core/csr_regfile.sv:44:5
	input wire [CVA6Cfg[17102-:32] - 1:0] hart_id_i;
	// Trace: core/csr_regfile.sv:47:5
	input wire [((exception_t_CVA6Cfg[17102-:32] + exception_t_CVA6Cfg[17102-:32]) + exception_t_CVA6Cfg[17006-:32]) + 33:0] ex_i;
	// Trace: core/csr_regfile.sv:49:5
	// removed localparam type ariane_pkg_fu_op
	input wire [7:0] csr_op_i;
	// Trace: core/csr_regfile.sv:51:5
	input wire [11:0] csr_addr_i;
	// Trace: core/csr_regfile.sv:53:5
	input wire [CVA6Cfg[17102-:32] - 1:0] csr_wdata_i;
	// Trace: core/csr_regfile.sv:55:5
	output reg [CVA6Cfg[17102-:32] - 1:0] csr_rdata_o;
	// Trace: core/csr_regfile.sv:57:5
	input wire dirty_fp_state_i;
	// Trace: core/csr_regfile.sv:59:5
	input wire csr_write_fflags_i;
	// Trace: core/csr_regfile.sv:61:5
	input wire dirty_v_state_i;
	// Trace: core/csr_regfile.sv:63:5
	input wire [CVA6Cfg[17070-:32] - 1:0] pc_i;
	// Trace: core/csr_regfile.sv:65:5
	output reg [((exception_t_CVA6Cfg[17102-:32] + exception_t_CVA6Cfg[17102-:32]) + exception_t_CVA6Cfg[17006-:32]) + 33:0] csr_exception_o;
	// Trace: core/csr_regfile.sv:67:5
	output reg [CVA6Cfg[17070-:32] - 1:0] epc_o;
	// Trace: core/csr_regfile.sv:69:5
	output reg eret_o;
	// Trace: core/csr_regfile.sv:71:5
	output reg [CVA6Cfg[17070-:32] - 1:0] trap_vector_base_o;
	// Trace: core/csr_regfile.sv:73:5
	// removed localparam type riscv_priv_lvl_t
	output wire [1:0] priv_lvl_o;
	// Trace: core/csr_regfile.sv:75:5
	output wire v_o;
	// Trace: core/csr_regfile.sv:77:5
	input wire [4:0] acc_fflags_ex_i;
	// Trace: core/csr_regfile.sv:79:5
	input wire acc_fflags_ex_valid_i;
	// Trace: core/csr_regfile.sv:81:5
	// removed localparam type riscv_xs_t
	output wire [1:0] fs_o;
	// Trace: core/csr_regfile.sv:83:5
	output wire [1:0] vfs_o;
	// Trace: core/csr_regfile.sv:85:5
	output wire [4:0] fflags_o;
	// Trace: core/csr_regfile.sv:87:5
	output wire [2:0] frm_o;
	// Trace: core/csr_regfile.sv:89:5
	output wire [6:0] fprec_o;
	// Trace: core/csr_regfile.sv:91:5
	output wire [1:0] vs_o;
	// Trace: core/csr_regfile.sv:93:5
	output wire [(((irq_ctrl_t_CVA6Cfg[17102-:32] + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + 1:0] irq_ctrl_o;
	// Trace: core/csr_regfile.sv:95:5
	output wire en_translation_o;
	// Trace: core/csr_regfile.sv:97:5
	output wire en_g_translation_o;
	// Trace: core/csr_regfile.sv:99:5
	output reg en_ld_st_translation_o;
	// Trace: core/csr_regfile.sv:101:5
	output reg en_ld_st_g_translation_o;
	// Trace: core/csr_regfile.sv:103:5
	output reg [1:0] ld_st_priv_lvl_o;
	// Trace: core/csr_regfile.sv:105:5
	output reg ld_st_v_o;
	// Trace: core/csr_regfile.sv:107:5
	input wire csr_hs_ld_st_inst_i;
	// Trace: core/csr_regfile.sv:109:5
	output wire sum_o;
	// Trace: core/csr_regfile.sv:111:5
	output wire vs_sum_o;
	// Trace: core/csr_regfile.sv:113:5
	output wire mxr_o;
	// Trace: core/csr_regfile.sv:115:5
	output wire vmxr_o;
	// Trace: core/csr_regfile.sv:117:5
	output wire [CVA6Cfg[419-:32] - 1:0] satp_ppn_o;
	// Trace: core/csr_regfile.sv:119:5
	output wire [CVA6Cfg[16940-:32] - 1:0] asid_o;
	// Trace: core/csr_regfile.sv:121:5
	output wire [CVA6Cfg[419-:32] - 1:0] vsatp_ppn_o;
	// Trace: core/csr_regfile.sv:123:5
	output wire [CVA6Cfg[16940-:32] - 1:0] vs_asid_o;
	// Trace: core/csr_regfile.sv:125:5
	output wire [CVA6Cfg[419-:32] - 1:0] hgatp_ppn_o;
	// Trace: core/csr_regfile.sv:127:5
	output wire [CVA6Cfg[16908-:32] - 1:0] vmid_o;
	// Trace: core/csr_regfile.sv:129:5
	input wire [1:0] irq_i;
	// Trace: core/csr_regfile.sv:131:5
	input wire ipi_i;
	// Trace: core/csr_regfile.sv:133:5
	input wire debug_req_i;
	// Trace: core/csr_regfile.sv:135:5
	output reg set_debug_pc_o;
	// Trace: core/csr_regfile.sv:137:5
	output wire tvm_o;
	// Trace: core/csr_regfile.sv:139:5
	output wire tw_o;
	// Trace: core/csr_regfile.sv:141:5
	output wire vtw_o;
	// Trace: core/csr_regfile.sv:143:5
	output wire tsr_o;
	// Trace: core/csr_regfile.sv:145:5
	output wire hu_o;
	// Trace: core/csr_regfile.sv:147:5
	output wire debug_mode_o;
	// Trace: core/csr_regfile.sv:149:5
	output wire single_step_o;
	// Trace: core/csr_regfile.sv:151:5
	output wire icache_en_o;
	// Trace: core/csr_regfile.sv:153:5
	output wire dcache_en_o;
	// Trace: core/csr_regfile.sv:155:5
	output wire acc_cons_en_o;
	// Trace: core/csr_regfile.sv:158:5
	output reg [11:0] perf_addr_o;
	// Trace: core/csr_regfile.sv:160:5
	output reg [CVA6Cfg[17102-:32] - 1:0] perf_data_o;
	// Trace: core/csr_regfile.sv:162:5
	input wire [CVA6Cfg[17102-:32] - 1:0] perf_data_i;
	// Trace: core/csr_regfile.sv:164:5
	output reg perf_we_o;
	// Trace: core/csr_regfile.sv:166:5
	// removed localparam type riscv_pmp_addr_mode_t
	// removed localparam type riscv_pmpcfg_access_t
	// removed localparam type riscv_pmpcfg_t
	output wire [(CVA6Cfg[15913-:32] * 8) - 1:0] pmpcfg_o;
	// Trace: core/csr_regfile.sv:168:5
	output wire [((CVA6Cfg[17038-:32] - 3) >= 0 ? (CVA6Cfg[15913-:32] * (CVA6Cfg[17038-:32] - 2)) - 1 : (CVA6Cfg[15913-:32] * (4 - CVA6Cfg[17038-:32])) + (CVA6Cfg[17038-:32] - 4)):((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3)] pmpaddr_o;
	// Trace: core/csr_regfile.sv:170:5
	output wire [31:0] mcountinhibit_o;
	// Trace: core/csr_regfile.sv:172:5
	output wire rvfi_csr_o;
	// Trace: core/csr_regfile.sv:173:5
	output wire c3_enable_o;
	// Trace: core/csr_regfile.sv:176:3
	localparam [63:0] riscv_SSTATUS_FS = 'h6000;
	localparam [63:0] riscv_SSTATUS_MXR = 'h80000;
	localparam [63:0] riscv_SSTATUS_SIE = 'h2;
	localparam [63:0] riscv_SSTATUS_SPIE = 'h20;
	localparam [63:0] riscv_SSTATUS_SPP = 'h100;
	localparam [63:0] riscv_SSTATUS_SUM = 'h40000;
	localparam [63:0] riscv_SSTATUS_UIE = 'h1;
	localparam [63:0] riscv_SSTATUS_UPIE = 'h10;
	localparam [63:0] riscv_SSTATUS_UXL = 64'h0000000300000000;
	localparam [63:0] riscv_SSTATUS_XS = 'h18000;
	function automatic [63:0] riscv_sstatus_sd;
		// Trace: core/include/riscv_pkg.sv:729:46
		input reg IS_XLEN64;
		// Trace: core/include/riscv_pkg.sv:730:5
		riscv_sstatus_sd = {IS_XLEN64, 31'h00000000, ~IS_XLEN64, 31'h00000000};
	endfunction
	function automatic [63:0] ariane_pkg_smode_status_read_mask;
		// Trace: core/include/ariane_pkg.sv:114:58
		input reg [17102:0] Cfg;
		// Trace: core/include/ariane_pkg.sv:115:5
		ariane_pkg_smode_status_read_mask = ((((((((((riscv_SSTATUS_UIE | riscv_SSTATUS_SIE) | riscv_SSTATUS_SPIE) | riscv_SSTATUS_SPP) | riscv_SSTATUS_FS) | riscv_SSTATUS_XS) | riscv_SSTATUS_SUM) | riscv_SSTATUS_MXR) | riscv_SSTATUS_UPIE) | riscv_SSTATUS_SPIE) | riscv_SSTATUS_UXL) | riscv_sstatus_sd(Cfg[16973]);
	endfunction
	localparam [63:0] SMODE_STATUS_READ_MASK = ariane_pkg_smode_status_read_mask(CVA6Cfg);
	// Trace: core/csr_regfile.sv:177:3
	localparam [31:0] riscv_IRQ_VS_EXT = 10;
	localparam [31:0] riscv_MIP_VSEIP = 1024;
	localparam [31:0] riscv_IRQ_VS_SOFT = 2;
	localparam [31:0] riscv_MIP_VSSIP = 4;
	localparam [31:0] riscv_IRQ_VS_TIMER = 6;
	localparam [31:0] riscv_MIP_VSTIP = 64;
	function automatic [31:0] ariane_pkg_hs_deleg_interrupts;
		// Trace: core/include/ariane_pkg.sv:146:55
		input reg [17102:0] Cfg;
		// Trace: core/include/ariane_pkg.sv:147:5
		ariane_pkg_hs_deleg_interrupts = (riscv_MIP_VSSIP | riscv_MIP_VSTIP) | riscv_MIP_VSEIP;
	endfunction
	localparam [63:0] HS_DELEG_INTERRUPTS = {{32 {1'b0}}, ariane_pkg_hs_deleg_interrupts(CVA6Cfg)};
	// Trace: core/csr_regfile.sv:180:3
	function automatic [31:0] ariane_pkg_vs_deleg_interrupts;
		// Trace: core/include/ariane_pkg.sv:151:55
		input reg [17102:0] Cfg;
		// Trace: core/include/ariane_pkg.sv:152:5
		ariane_pkg_vs_deleg_interrupts = (riscv_MIP_VSSIP | riscv_MIP_VSTIP) | riscv_MIP_VSEIP;
	endfunction
	localparam [63:0] VS_DELEG_INTERRUPTS = {{32 {1'b0}}, ariane_pkg_vs_deleg_interrupts(CVA6Cfg)};
	// Trace: core/csr_regfile.sv:183:3
	localparam signed [31:0] SELECT_COUNTER_WIDTH = (CVA6Cfg[16973] ? 6 : 5);
	// Trace: core/csr_regfile.sv:185:3
	// removed localparam type satp_t
	// Trace: core/csr_regfile.sv:191:3
	// removed localparam type hgatp_t
	// Trace: core/csr_regfile.sv:199:3
	reg read_access_exception;
	reg update_access_exception;
	reg privilege_violation;
	// Trace: core/csr_regfile.sv:200:3
	reg virtual_read_access_exception;
	reg virtual_update_access_exception;
	reg virtual_privilege_violation;
	// Trace: core/csr_regfile.sv:201:3
	reg csr_we;
	reg csr_read;
	// Trace: core/csr_regfile.sv:202:3
	reg [CVA6Cfg[17102-:32] - 1:0] csr_wdata;
	reg [CVA6Cfg[17102-:32] - 1:0] csr_rdata;
	// Trace: core/csr_regfile.sv:203:3
	reg [1:0] trap_to_priv_lvl;
	// Trace: core/csr_regfile.sv:204:3
	reg trap_to_v;
	// Trace: core/csr_regfile.sv:206:3
	reg en_ld_st_translation_d;
	reg en_ld_st_translation_q;
	// Trace: core/csr_regfile.sv:207:3
	reg en_ld_st_g_translation_d;
	reg en_ld_st_g_translation_q;
	// Trace: core/csr_regfile.sv:208:3
	wire mprv;
	// Trace: core/csr_regfile.sv:209:3
	reg mret;
	// Trace: core/csr_regfile.sv:210:3
	reg sret;
	// Trace: core/csr_regfile.sv:211:3
	reg dret;
	// Trace: core/csr_regfile.sv:213:3
	reg dirty_fp_state_csr;
	// Trace: core/csr_regfile.sv:214:3
	// removed localparam type riscv_xlen_e
	// removed localparam type riscv_mstatus_rv_t
	reg [63:0] mstatus_q;
	reg [63:0] mstatus_d;
	// Trace: core/csr_regfile.sv:215:3
	// removed localparam type riscv_hstatus_rv_t
	reg [63:0] hstatus_q;
	reg [63:0] hstatus_d;
	// Trace: core/csr_regfile.sv:216:3
	reg [63:0] vsstatus_q;
	reg [63:0] vsstatus_d;
	// Trace: core/csr_regfile.sv:217:3
	wire [CVA6Cfg[17102-:32] - 1:0] mstatus_extended;
	// Trace: core/csr_regfile.sv:218:3
	wire [CVA6Cfg[17102-:32] - 1:0] vsstatus_extended;
	// Trace: core/csr_regfile.sv:219:3
	reg [((CVA6Cfg[515-:32] + CVA6Cfg[483-:32]) + CVA6Cfg[419-:32]) - 1:0] satp_q;
	reg [((CVA6Cfg[515-:32] + CVA6Cfg[483-:32]) + CVA6Cfg[419-:32]) - 1:0] satp_d;
	// Trace: core/csr_regfile.sv:220:3
	reg [((CVA6Cfg[515-:32] + CVA6Cfg[483-:32]) + CVA6Cfg[419-:32]) - 1:0] vsatp_q;
	reg [((CVA6Cfg[515-:32] + CVA6Cfg[483-:32]) + CVA6Cfg[419-:32]) - 1:0] vsatp_d;
	// Trace: core/csr_regfile.sv:221:3
	reg [(((CVA6Cfg[515-:32] + 2) + CVA6Cfg[451-:32]) + CVA6Cfg[419-:32]) - 1:0] hgatp_q;
	reg [(((CVA6Cfg[515-:32] + 2) + CVA6Cfg[451-:32]) + CVA6Cfg[419-:32]) - 1:0] hgatp_d;
	// Trace: core/csr_regfile.sv:222:3
	// removed localparam type riscv_dcsr_t
	reg [31:0] dcsr_q;
	reg [31:0] dcsr_d;
	// Trace: core/csr_regfile.sv:223:3
	// removed localparam type riscv_csr_addr_t
	// removed localparam type riscv_csr_reg_t
	// removed localparam type riscv_csr_t
	wire [11:0] csr_addr;
	// Trace: core/csr_regfile.sv:224:3
	wire [11:0] conv_csr_addr;
	// Trace: core/csr_regfile.sv:226:3
	reg [1:0] priv_lvl_d;
	reg [1:0] priv_lvl_q;
	// Trace: core/csr_regfile.sv:227:3
	reg v_q;
	reg v_d;
	// Trace: core/csr_regfile.sv:229:3
	reg debug_mode_q;
	reg debug_mode_d;
	// Trace: core/csr_regfile.sv:230:3
	reg mtvec_rst_load_q;
	// Trace: core/csr_regfile.sv:232:3
	reg [CVA6Cfg[17102-:32] - 1:0] dpc_q;
	reg [CVA6Cfg[17102-:32] - 1:0] dpc_d;
	// Trace: core/csr_regfile.sv:233:3
	reg [CVA6Cfg[17102-:32] - 1:0] dscratch0_q;
	reg [CVA6Cfg[17102-:32] - 1:0] dscratch0_d;
	// Trace: core/csr_regfile.sv:234:3
	reg [CVA6Cfg[17102-:32] - 1:0] dscratch1_q;
	reg [CVA6Cfg[17102-:32] - 1:0] dscratch1_d;
	// Trace: core/csr_regfile.sv:235:3
	reg [CVA6Cfg[17102-:32] - 1:0] mtvec_q;
	reg [CVA6Cfg[17102-:32] - 1:0] mtvec_d;
	// Trace: core/csr_regfile.sv:236:3
	reg [CVA6Cfg[17102-:32] - 1:0] medeleg_q;
	reg [CVA6Cfg[17102-:32] - 1:0] medeleg_d;
	// Trace: core/csr_regfile.sv:237:3
	reg [CVA6Cfg[17102-:32] - 1:0] mideleg_q;
	reg [CVA6Cfg[17102-:32] - 1:0] mideleg_d;
	// Trace: core/csr_regfile.sv:238:3
	reg [CVA6Cfg[17102-:32] - 1:0] mip_q;
	reg [CVA6Cfg[17102-:32] - 1:0] mip_d;
	// Trace: core/csr_regfile.sv:239:3
	reg [CVA6Cfg[17102-:32] - 1:0] mie_q;
	reg [CVA6Cfg[17102-:32] - 1:0] mie_d;
	// Trace: core/csr_regfile.sv:240:3
	reg [CVA6Cfg[17102-:32] - 1:0] mcounteren_q;
	reg [CVA6Cfg[17102-:32] - 1:0] mcounteren_d;
	// Trace: core/csr_regfile.sv:241:3
	reg [CVA6Cfg[17102-:32] - 1:0] mscratch_q;
	reg [CVA6Cfg[17102-:32] - 1:0] mscratch_d;
	// Trace: core/csr_regfile.sv:242:3
	reg [CVA6Cfg[17102-:32] - 1:0] mepc_q;
	reg [CVA6Cfg[17102-:32] - 1:0] mepc_d;
	// Trace: core/csr_regfile.sv:243:3
	reg [CVA6Cfg[17102-:32] - 1:0] mcause_q;
	reg [CVA6Cfg[17102-:32] - 1:0] mcause_d;
	// Trace: core/csr_regfile.sv:244:3
	reg [CVA6Cfg[17102-:32] - 1:0] mtval_q;
	reg [CVA6Cfg[17102-:32] - 1:0] mtval_d;
	// Trace: core/csr_regfile.sv:245:3
	reg [CVA6Cfg[17102-:32] - 1:0] mtinst_q;
	reg [CVA6Cfg[17102-:32] - 1:0] mtinst_d;
	// Trace: core/csr_regfile.sv:246:3
	reg [CVA6Cfg[17102-:32] - 1:0] mtval2_q;
	reg [CVA6Cfg[17102-:32] - 1:0] mtval2_d;
	// Trace: core/csr_regfile.sv:247:3
	reg fiom_d;
	reg fiom_q;
	// Trace: core/csr_regfile.sv:249:3
	reg [CVA6Cfg[17102-:32] - 1:0] stvec_q;
	reg [CVA6Cfg[17102-:32] - 1:0] stvec_d;
	// Trace: core/csr_regfile.sv:250:3
	reg [CVA6Cfg[17102-:32] - 1:0] scounteren_q;
	reg [CVA6Cfg[17102-:32] - 1:0] scounteren_d;
	// Trace: core/csr_regfile.sv:251:3
	reg [CVA6Cfg[17102-:32] - 1:0] sscratch_q;
	reg [CVA6Cfg[17102-:32] - 1:0] sscratch_d;
	// Trace: core/csr_regfile.sv:252:3
	reg [CVA6Cfg[17102-:32] - 1:0] sepc_q;
	reg [CVA6Cfg[17102-:32] - 1:0] sepc_d;
	// Trace: core/csr_regfile.sv:253:3
	reg [CVA6Cfg[17102-:32] - 1:0] scause_q;
	reg [CVA6Cfg[17102-:32] - 1:0] scause_d;
	// Trace: core/csr_regfile.sv:254:3
	reg [CVA6Cfg[17102-:32] - 1:0] stval_q;
	reg [CVA6Cfg[17102-:32] - 1:0] stval_d;
	// Trace: core/csr_regfile.sv:256:3
	reg [CVA6Cfg[17102-:32] - 1:0] hedeleg_q;
	reg [CVA6Cfg[17102-:32] - 1:0] hedeleg_d;
	// Trace: core/csr_regfile.sv:257:3
	reg [CVA6Cfg[17102-:32] - 1:0] hideleg_q;
	reg [CVA6Cfg[17102-:32] - 1:0] hideleg_d;
	// Trace: core/csr_regfile.sv:258:3
	reg [CVA6Cfg[17102-:32] - 1:0] hcounteren_q;
	reg [CVA6Cfg[17102-:32] - 1:0] hcounteren_d;
	// Trace: core/csr_regfile.sv:259:3
	reg [CVA6Cfg[17102-:32] - 1:0] hgeie_q;
	reg [CVA6Cfg[17102-:32] - 1:0] hgeie_d;
	// Trace: core/csr_regfile.sv:260:3
	reg [CVA6Cfg[17102-:32] - 1:0] htinst_q;
	reg [CVA6Cfg[17102-:32] - 1:0] htinst_d;
	// Trace: core/csr_regfile.sv:261:3
	reg [CVA6Cfg[17102-:32] - 1:0] htval_q;
	reg [CVA6Cfg[17102-:32] - 1:0] htval_d;
	// Trace: core/csr_regfile.sv:263:3
	reg [CVA6Cfg[17102-:32] - 1:0] vstvec_q;
	reg [CVA6Cfg[17102-:32] - 1:0] vstvec_d;
	// Trace: core/csr_regfile.sv:264:3
	reg [CVA6Cfg[17102-:32] - 1:0] vsscratch_q;
	reg [CVA6Cfg[17102-:32] - 1:0] vsscratch_d;
	// Trace: core/csr_regfile.sv:265:3
	reg [CVA6Cfg[17102-:32] - 1:0] vsepc_q;
	reg [CVA6Cfg[17102-:32] - 1:0] vsepc_d;
	// Trace: core/csr_regfile.sv:266:3
	reg [CVA6Cfg[17102-:32] - 1:0] vscause_q;
	reg [CVA6Cfg[17102-:32] - 1:0] vscause_d;
	// Trace: core/csr_regfile.sv:267:3
	reg [CVA6Cfg[17102-:32] - 1:0] vstval_q;
	reg [CVA6Cfg[17102-:32] - 1:0] vstval_d;
	// Trace: core/csr_regfile.sv:269:3
	reg [CVA6Cfg[17102-:32] - 1:0] dcache_q;
	reg [CVA6Cfg[17102-:32] - 1:0] dcache_d;
	// Trace: core/csr_regfile.sv:270:3
	reg [CVA6Cfg[17102-:32] - 1:0] icache_q;
	reg [CVA6Cfg[17102-:32] - 1:0] icache_d;
	// Trace: core/csr_regfile.sv:271:3
	reg [CVA6Cfg[17102-:32] - 1:0] acc_cons_q;
	reg [CVA6Cfg[17102-:32] - 1:0] acc_cons_d;
	// Trace: core/csr_regfile.sv:273:3
	reg wfi_d;
	reg wfi_q;
	// Trace: core/csr_regfile.sv:275:3
	reg [63:0] cycle_q;
	reg [63:0] cycle_d;
	// Trace: core/csr_regfile.sv:276:3
	reg [63:0] instret_q;
	reg [63:0] instret_d;
	// Trace: core/csr_regfile.sv:278:3
	reg [511:0] pmpcfg_q;
	reg [511:0] pmpcfg_d;
	reg [511:0] pmpcfg_next;
	// Trace: core/csr_regfile.sv:279:3
	reg [((CVA6Cfg[17038-:32] - 3) >= 0 ? (64 * (CVA6Cfg[17038-:32] - 2)) - 1 : (64 * (4 - CVA6Cfg[17038-:32])) + (CVA6Cfg[17038-:32] - 4)):((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3)] pmpaddr_q;
	reg [((CVA6Cfg[17038-:32] - 3) >= 0 ? (64 * (CVA6Cfg[17038-:32] - 2)) - 1 : (64 * (4 - CVA6Cfg[17038-:32])) + (CVA6Cfg[17038-:32] - 4)):((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3)] pmpaddr_d;
	reg [((CVA6Cfg[17038-:32] - 3) >= 0 ? (64 * (CVA6Cfg[17038-:32] - 2)) - 1 : (64 * (4 - CVA6Cfg[17038-:32])) + (CVA6Cfg[17038-:32] - 4)):((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3)] pmpaddr_next;
	// Trace: core/csr_regfile.sv:280:3
	reg [MHPMCounterNum + 2:0] mcountinhibit_d;
	reg [MHPMCounterNum + 2:0] mcountinhibit_q;
	// Trace: core/csr_regfile.sv:284:3
	reg c3_enable_d;
	reg c3_enable_q;
	// Trace: core/csr_regfile.sv:286:3
	function automatic [CVA6Cfg[17102-:32] - 1:0] sv2v_cast_94688;
		input reg [CVA6Cfg[17102-:32] - 1:0] inp;
		sv2v_cast_94688 = inp;
	endfunction
	function automatic signed [CVA6Cfg[17102-:32] - 1:0] sv2v_cast_94688_signed;
		input reg signed [CVA6Cfg[17102-:32] - 1:0] inp;
		sv2v_cast_94688_signed = inp;
	endfunction
	localparam [CVA6Cfg[17102-:32] - 1:0] IsaCode = (((((((((((((sv2v_cast_94688(CVA6Cfg[16547]) << 0) | (sv2v_cast_94688(CVA6Cfg[16546]) << 1)) | (sv2v_cast_94688(CVA6Cfg[16544]) << 2)) | (sv2v_cast_94688(CVA6Cfg[16551]) << 3)) | (sv2v_cast_94688(CVA6Cfg[16552]) << 5)) | (sv2v_cast_94688(CVA6Cfg[16543]) << 7)) | (sv2v_cast_94688_signed(1) << 8)) | (sv2v_cast_94688_signed(1) << 12)) | (sv2v_cast_94688_signed(0) << 13)) | (sv2v_cast_94688(CVA6Cfg[16366]) << 18)) | (sv2v_cast_94688(CVA6Cfg[16365]) << 20)) | (sv2v_cast_94688(CVA6Cfg[16545]) << 21)) | (sv2v_cast_94688(CVA6Cfg[16470]) << 23)) | ((CVA6Cfg[17102-:32] == 64 ? 2 : 1) << (CVA6Cfg[17102-:32] - 2));
	// Trace: core/csr_regfile.sv:301:3
	assign pmpcfg_o = pmpcfg_q[8 * ((CVA6Cfg[15913-:32] - 1) - (CVA6Cfg[15913-:32] - 1))+:8 * CVA6Cfg[15913-:32]];
	// Trace: core/csr_regfile.sv:302:3
	assign pmpaddr_o = pmpaddr_q[((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3) + (((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32]) * ((CVA6Cfg[15913-:32] - 1) - (CVA6Cfg[15913-:32] - 1)))+:((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32]) * CVA6Cfg[15913-:32]];
	// Trace: core/csr_regfile.sv:304:3
	// removed localparam type riscv_fcsr_t
	reg [31:0] fcsr_q;
	reg [31:0] fcsr_d;
	// Trace: core/csr_regfile.sv:308:3
	assign csr_addr = csr_addr_i;
	// Trace: core/csr_regfile.sv:309:3
	function automatic [11:0] riscv_convert_vs_access_csr;
		// Trace: core/include/riscv_pkg.sv:953:50
		input reg [11:0] csr_addr;
		// Trace: core/include/riscv_pkg.sv:953:66
		input reg v;
		// Trace: core/include/riscv_pkg.sv:954:5
		reg [11:0] ret;
		begin
			// Trace: core/include/riscv_pkg.sv:955:5
			ret = csr_addr;
			// Trace: core/include/riscv_pkg.sv:956:5
			(* full_case, parallel_case *)
			case (csr_addr[11-:12])
				12'h100, 12'h104, 12'h105, 12'h140, 12'h141, 12'h142, 12'h143, 12'h144, 12'h180: begin
					// Trace: core/include/riscv_pkg.sv:966:9
					if (v)
						// Trace: core/include/riscv_pkg.sv:967:11
						ret[9-:2] = 2'b10;
					riscv_convert_vs_access_csr = ret;
				end
				default: riscv_convert_vs_access_csr = ret;
			endcase
		end
	endfunction
	assign conv_csr_addr = (CVA6Cfg[16543] ? riscv_convert_vs_access_csr(csr_addr_i, v_q) : csr_addr);
	// Trace: core/csr_regfile.sv:312:3
	assign fs_o = mstatus_q[14-:2];
	// Trace: core/csr_regfile.sv:313:3
	assign vfs_o = (CVA6Cfg[16543] ? vsstatus_q[14-:2] : 2'b00);
	// Trace: core/csr_regfile.sv:314:3
	assign vs_o = mstatus_q[10-:2];
	// Trace: core/csr_regfile.sv:318:3
	assign mstatus_extended = (CVA6Cfg[16973] ? mstatus_q[CVA6Cfg[17102-:32] - 1:0] : {mstatus_q[63], mstatus_q[30:23], mstatus_q[22:0]});
	// Trace: core/csr_regfile.sv:320:3
	generate
		if (CVA6Cfg[16543]) begin : genblk1
			if (CVA6Cfg[16973]) begin : gen_vsstatus_64read
				// Trace: core/csr_regfile.sv:322:7
				assign vsstatus_extended = vsstatus_q[CVA6Cfg[17102-:32] - 1:0];
			end
			else begin : gen_vsstatus_32read
				// Trace: core/csr_regfile.sv:324:7
				assign vsstatus_extended = {vsstatus_q[63], vsstatus_q[30:23], vsstatus_q[22:0]};
			end
		end
		else begin : genblk1
			// Trace: core/csr_regfile.sv:327:5
			assign vsstatus_extended = 1'sb0;
		end
	endgenerate
	// Trace: core/csr_regfile.sv:330:3
	localparam [31:0] ariane_pkg_ARIANE_MARCHID = 32'd3;
	localparam [31:0] ariane_pkg_OPENHWGROUP_MVENDORID = 32'h00000602;
	always @(*) begin : csr_read_process
		if (_sv2v_0)
			;
		// Trace: core/csr_regfile.sv:332:5
		read_access_exception = 1'b0;
		// Trace: core/csr_regfile.sv:333:5
		virtual_read_access_exception = 1'b0;
		// Trace: core/csr_regfile.sv:334:5
		csr_rdata = 1'sb0;
		// Trace: core/csr_regfile.sv:335:5
		perf_addr_o = csr_addr[11:0];
		// Trace: core/csr_regfile.sv:337:5
		if (csr_read)
			// Trace: core/csr_regfile.sv:338:7
			(* full_case, parallel_case *)
			case (conv_csr_addr[11-:12])
				12'h001:
					// Trace: core/csr_regfile.sv:340:11
					if (CVA6Cfg[16471] && !((mstatus_q[14-:2] == 2'b00) || ((CVA6Cfg[16543] && v_q) && (vsstatus_q[14-:2] == 2'b00))))
						// Trace: core/csr_regfile.sv:341:13
						csr_rdata = {{CVA6Cfg[17102-:32] - 5 {1'b0}}, fcsr_q[4-:5]};
					else
						// Trace: core/csr_regfile.sv:343:13
						read_access_exception = 1'b1;
				12'h002:
					// Trace: core/csr_regfile.sv:347:11
					if (CVA6Cfg[16471] && !((mstatus_q[14-:2] == 2'b00) || ((CVA6Cfg[16543] && v_q) && (vsstatus_q[14-:2] == 2'b00))))
						// Trace: core/csr_regfile.sv:348:13
						csr_rdata = {{CVA6Cfg[17102-:32] - 3 {1'b0}}, fcsr_q[7-:3]};
					else
						// Trace: core/csr_regfile.sv:350:13
						read_access_exception = 1'b1;
				12'h003:
					// Trace: core/csr_regfile.sv:354:11
					if (CVA6Cfg[16471] && !((mstatus_q[14-:2] == 2'b00) || ((CVA6Cfg[16543] && v_q) && (vsstatus_q[14-:2] == 2'b00))))
						// Trace: core/csr_regfile.sv:355:13
						csr_rdata = {{CVA6Cfg[17102-:32] - 8 {1'b0}}, fcsr_q[7-:3], fcsr_q[4-:5]};
					else
						// Trace: core/csr_regfile.sv:357:13
						read_access_exception = 1'b1;
				12'h800:
					// Trace: core/csr_regfile.sv:362:11
					if (CVA6Cfg[16471] && !((mstatus_q[14-:2] == 2'b00) || ((CVA6Cfg[16543] && v_q) && (vsstatus_q[14-:2] == 2'b00))))
						// Trace: core/csr_regfile.sv:363:13
						csr_rdata = {{CVA6Cfg[17102-:32] - 7 {1'b0}}, fcsr_q[14-:7]};
					else
						// Trace: core/csr_regfile.sv:365:13
						read_access_exception = 1'b1;
				12'h7b0:
					if (CVA6Cfg[1321])
						// Trace: core/csr_regfile.sv:370:30
						csr_rdata = {{CVA6Cfg[17102-:32] - 32 {1'b0}}, dcsr_q};
					else
						// Trace: core/csr_regfile.sv:371:14
						read_access_exception = 1'b1;
				12'h7b1:
					if (CVA6Cfg[1321])
						// Trace: core/csr_regfile.sv:373:30
						csr_rdata = dpc_q;
					else
						// Trace: core/csr_regfile.sv:374:14
						read_access_exception = 1'b1;
				12'h7b2:
					if (CVA6Cfg[1321])
						// Trace: core/csr_regfile.sv:376:30
						csr_rdata = dscratch0_q;
					else
						// Trace: core/csr_regfile.sv:377:14
						read_access_exception = 1'b1;
				12'h7b3:
					if (CVA6Cfg[1321])
						// Trace: core/csr_regfile.sv:379:30
						csr_rdata = dscratch1_q;
					else
						// Trace: core/csr_regfile.sv:380:14
						read_access_exception = 1'b1;
				12'h7a0:
					// Trace: core/csr_regfile.sv:382:29
					read_access_exception = 1'b1;
				12'h7a1:
					// Trace: core/csr_regfile.sv:383:28
					read_access_exception = 1'b1;
				12'h7a2:
					// Trace: core/csr_regfile.sv:384:28
					read_access_exception = 1'b1;
				12'h7a3:
					// Trace: core/csr_regfile.sv:385:28
					read_access_exception = 1'b1;
				12'h200:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:387:26
						csr_rdata = vsstatus_extended;
					else
						// Trace: core/csr_regfile.sv:388:14
						read_access_exception = 1'b1;
				12'h204:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:391:11
						csr_rdata = ((mie_q & VS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0]) & hideleg_q) >> 1;
					else
						// Trace: core/csr_regfile.sv:392:14
						read_access_exception = 1'b1;
				12'h244:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:395:11
						csr_rdata = ((mip_q & VS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0]) & hideleg_q) >> 1;
					else
						// Trace: core/csr_regfile.sv:396:14
						read_access_exception = 1'b1;
				12'h205:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:398:26
						csr_rdata = vstvec_q;
					else
						// Trace: core/csr_regfile.sv:399:14
						read_access_exception = 1'b1;
				12'h240:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:401:26
						csr_rdata = vsscratch_q;
					else
						// Trace: core/csr_regfile.sv:402:14
						read_access_exception = 1'b1;
				12'h241:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:404:26
						csr_rdata = vsepc_q;
					else
						// Trace: core/csr_regfile.sv:405:14
						read_access_exception = 1'b1;
				12'h242:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:407:26
						csr_rdata = vscause_q;
					else
						// Trace: core/csr_regfile.sv:408:14
						read_access_exception = 1'b1;
				12'h243:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:410:26
						csr_rdata = vstval_q;
					else
						// Trace: core/csr_regfile.sv:411:14
						read_access_exception = 1'b1;
				12'h280:
					if (CVA6Cfg[16543]) begin
						begin
							// Trace: core/csr_regfile.sv:415:11
							if (((priv_lvl_o == 2'b01) && hstatus_q[20]) && v_q)
								// Trace: core/csr_regfile.sv:416:13
								virtual_read_access_exception = 1'b1;
							else
								// Trace: core/csr_regfile.sv:417:16
								csr_rdata = vsatp_q;
						end
					end
					else
						// Trace: core/csr_regfile.sv:419:11
						read_access_exception = 1'b1;
				12'h100:
					// Trace: core/csr_regfile.sv:423:11
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:423:28
						csr_rdata = mstatus_extended & SMODE_STATUS_READ_MASK[CVA6Cfg[17102-:32] - 1:0];
					else
						// Trace: core/csr_regfile.sv:424:16
						read_access_exception = 1'b1;
				12'h104:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:428:11
						csr_rdata = (CVA6Cfg[16543] ? (mie_q & mideleg_q) & ~HS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0] : mie_q & mideleg_q);
					else
						// Trace: core/csr_regfile.sv:429:14
						read_access_exception = 1'b1;
				12'h144:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:432:11
						csr_rdata = (CVA6Cfg[16543] ? (mip_q & mideleg_q) & ~HS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0] : mip_q & mideleg_q);
					else
						// Trace: core/csr_regfile.sv:433:14
						read_access_exception = 1'b1;
				12'h105:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:435:26
						csr_rdata = stvec_q;
					else
						// Trace: core/csr_regfile.sv:436:14
						read_access_exception = 1'b1;
				12'h106:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:438:26
						csr_rdata = scounteren_q;
					else
						// Trace: core/csr_regfile.sv:439:14
						read_access_exception = 1'b1;
				12'h140:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:441:26
						csr_rdata = sscratch_q;
					else
						// Trace: core/csr_regfile.sv:442:14
						read_access_exception = 1'b1;
				12'h141:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:444:26
						csr_rdata = sepc_q;
					else
						// Trace: core/csr_regfile.sv:445:14
						read_access_exception = 1'b1;
				12'h142:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:447:26
						csr_rdata = scause_q;
					else
						// Trace: core/csr_regfile.sv:448:14
						read_access_exception = 1'b1;
				12'h143:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:450:26
						csr_rdata = stval_q;
					else
						// Trace: core/csr_regfile.sv:451:14
						read_access_exception = 1'b1;
				12'h180:
					// Trace: core/csr_regfile.sv:453:11
					if (CVA6Cfg[16366]) begin
						begin
							// Trace: core/csr_regfile.sv:455:13
							if ((priv_lvl_o == 2'b01) && mstatus_q[20])
								// Trace: core/csr_regfile.sv:456:15
								read_access_exception = 1'b1;
							else
								// Trace: core/csr_regfile.sv:458:15
								csr_rdata = satp_q;
						end
					end
					else
						// Trace: core/csr_regfile.sv:461:13
						read_access_exception = 1'b1;
				12'h10a:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:465:26
						csr_rdata = {CVA6Cfg[17102-:32] {1'sb0}} | fiom_q;
					else
						// Trace: core/csr_regfile.sv:466:14
						read_access_exception = 1'b1;
				12'h600:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:469:26
						csr_rdata = hstatus_q[CVA6Cfg[17102-:32] - 1:0];
					else
						// Trace: core/csr_regfile.sv:470:14
						read_access_exception = 1'b1;
				12'h602:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:472:26
						csr_rdata = hedeleg_q;
					else
						// Trace: core/csr_regfile.sv:473:14
						read_access_exception = 1'b1;
				12'h603:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:475:26
						csr_rdata = hideleg_q;
					else
						// Trace: core/csr_regfile.sv:476:14
						read_access_exception = 1'b1;
				12'h604:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:478:26
						csr_rdata = mie_q & HS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0];
					else
						// Trace: core/csr_regfile.sv:479:14
						read_access_exception = 1'b1;
				12'h644:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:481:26
						csr_rdata = mip_q & HS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0];
					else
						// Trace: core/csr_regfile.sv:482:14
						read_access_exception = 1'b1;
				12'h645:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:484:26
						csr_rdata = mip_q & VS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0];
					else
						// Trace: core/csr_regfile.sv:485:14
						read_access_exception = 1'b1;
				12'h606:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:487:26
						csr_rdata = hcounteren_q;
					else
						// Trace: core/csr_regfile.sv:488:14
						read_access_exception = 1'b1;
				12'h643:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:490:26
						csr_rdata = htval_q;
					else
						// Trace: core/csr_regfile.sv:491:14
						read_access_exception = 1'b1;
				12'h64a:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:493:26
						csr_rdata = htinst_q;
					else
						// Trace: core/csr_regfile.sv:494:14
						read_access_exception = 1'b1;
				12'h607:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:496:26
						csr_rdata = 1'sb0;
					else
						// Trace: core/csr_regfile.sv:497:14
						read_access_exception = 1'b1;
				12'he12:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:499:26
						csr_rdata = 1'sb0;
					else
						// Trace: core/csr_regfile.sv:500:14
						read_access_exception = 1'b1;
				12'h60a:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:502:26
						csr_rdata = {CVA6Cfg[17102-:32] {1'sb0}} | {{CVA6Cfg[17102-:32] - 1 {1'b0}}, fiom_q};
					else
						// Trace: core/csr_regfile.sv:503:14
						read_access_exception = 1'b1;
				12'h680:
					// Trace: core/csr_regfile.sv:505:11
					if (CVA6Cfg[16543]) begin
						begin
							// Trace: core/csr_regfile.sv:507:13
							if (((priv_lvl_o == 2'b01) && !v_q) && mstatus_q[20])
								// Trace: core/csr_regfile.sv:508:15
								read_access_exception = 1'b1;
							else
								// Trace: core/csr_regfile.sv:510:15
								csr_rdata = hgatp_q;
						end
					end
					else
						// Trace: core/csr_regfile.sv:513:13
						read_access_exception = 1'b1;
				12'h300:
					// Trace: core/csr_regfile.sv:518:29
					csr_rdata = mstatus_extended;
				12'h310:
					if (CVA6Cfg[17102-:32] == 32)
						// Trace: core/csr_regfile.sv:520:33
						csr_rdata = 1'sb0;
					else
						// Trace: core/csr_regfile.sv:521:14
						read_access_exception = 1'b1;
				12'h301:
					// Trace: core/csr_regfile.sv:522:26
					csr_rdata = IsaCode;
				12'h302:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:524:26
						csr_rdata = medeleg_q;
					else
						// Trace: core/csr_regfile.sv:525:14
						read_access_exception = 1'b1;
				12'h303:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:527:26
						csr_rdata = mideleg_q;
					else
						// Trace: core/csr_regfile.sv:528:14
						read_access_exception = 1'b1;
				12'h304:
					// Trace: core/csr_regfile.sv:529:25
					csr_rdata = mie_q;
				12'h305:
					// Trace: core/csr_regfile.sv:530:27
					csr_rdata = mtvec_q;
				12'h306:
					if (CVA6Cfg[16365])
						// Trace: core/csr_regfile.sv:532:26
						csr_rdata = mcounteren_q;
					else
						// Trace: core/csr_regfile.sv:533:14
						read_access_exception = 1'b1;
				12'h340:
					// Trace: core/csr_regfile.sv:534:30
					csr_rdata = mscratch_q;
				12'h341:
					// Trace: core/csr_regfile.sv:535:26
					csr_rdata = mepc_q;
				12'h342:
					// Trace: core/csr_regfile.sv:536:28
					csr_rdata = mcause_q;
				12'h343:
					if (CVA6Cfg[15915])
						// Trace: core/csr_regfile.sv:538:29
						csr_rdata = mtval_q;
					else
						// Trace: core/csr_regfile.sv:539:14
						csr_rdata = 1'sb0;
				12'h34a:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:541:26
						csr_rdata = mtinst_q;
					else
						// Trace: core/csr_regfile.sv:542:14
						read_access_exception = 1'b1;
				12'h34b:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:544:26
						csr_rdata = mtval2_q;
					else
						// Trace: core/csr_regfile.sv:545:14
						read_access_exception = 1'b1;
				12'h344:
					// Trace: core/csr_regfile.sv:546:25
					csr_rdata = mip_q;
				12'h30a:
					// Trace: core/csr_regfile.sv:548:11
					if (CVA6Cfg[16365])
						// Trace: core/csr_regfile.sv:548:28
						csr_rdata = {CVA6Cfg[17102-:32] {1'sb0}} | fiom_q;
					else
						// Trace: core/csr_regfile.sv:549:16
						read_access_exception = 1'b1;
				12'h31a:
					// Trace: core/csr_regfile.sv:552:11
					if (CVA6Cfg[16365] && (CVA6Cfg[17102-:32] == 32))
						// Trace: core/csr_regfile.sv:552:50
						csr_rdata = 1'sb0;
					else
						// Trace: core/csr_regfile.sv:553:16
						read_access_exception = 1'b1;
				12'hf11:
					// Trace: core/csr_regfile.sv:555:31
					csr_rdata = {{CVA6Cfg[17102-:32] - 32 {1'b0}}, ariane_pkg_OPENHWGROUP_MVENDORID};
				12'hf12:
					// Trace: core/csr_regfile.sv:556:29
					csr_rdata = {{CVA6Cfg[17102-:32] - 32 {1'b0}}, ariane_pkg_ARIANE_MARCHID};
				12'hf13:
					// Trace: core/csr_regfile.sv:557:28
					csr_rdata = 1'sb0;
				12'hf14:
					// Trace: core/csr_regfile.sv:558:29
					csr_rdata = hart_id_i;
				12'hf15:
					// Trace: core/csr_regfile.sv:559:32
					csr_rdata = 1'sb0;
				12'h320:
					if (CVA6Cfg[16368])
						// Trace: core/csr_regfile.sv:562:11
						csr_rdata = {{CVA6Cfg[17102-:32] - (MHPMCounterNum + 3) {1'b0}}, mcountinhibit_q};
					else
						// Trace: core/csr_regfile.sv:563:14
						read_access_exception = 1'b1;
				12'hb00:
					// Trace: core/csr_regfile.sv:565:28
					csr_rdata = cycle_q[CVA6Cfg[17102-:32] - 1:0];
				12'hb80:
					if (CVA6Cfg[17102-:32] == 32)
						// Trace: core/csr_regfile.sv:567:33
						csr_rdata = cycle_q[63:32];
					else
						// Trace: core/csr_regfile.sv:568:14
						read_access_exception = 1'b1;
				12'hb02:
					// Trace: core/csr_regfile.sv:569:30
					csr_rdata = instret_q[CVA6Cfg[17102-:32] - 1:0];
				12'hb82:
					if (CVA6Cfg[17102-:32] == 32)
						// Trace: core/csr_regfile.sv:571:33
						csr_rdata = instret_q[63:32];
					else
						// Trace: core/csr_regfile.sv:572:14
						read_access_exception = 1'b1;
				12'hc00:
					if (CVA6Cfg[16537])
						// Trace: core/csr_regfile.sv:574:31
						csr_rdata = cycle_q[CVA6Cfg[17102-:32] - 1:0];
					else
						// Trace: core/csr_regfile.sv:575:14
						read_access_exception = 1'b1;
				12'hc80:
					if (CVA6Cfg[16537]) begin
						if (CVA6Cfg[17102-:32] == 32)
							// Trace: core/csr_regfile.sv:578:35
							csr_rdata = cycle_q[63:32];
						else
							// Trace: core/csr_regfile.sv:579:16
							read_access_exception = 1'b1;
					end
					else
						// Trace: core/csr_regfile.sv:580:14
						read_access_exception = 1'b1;
				12'hc02:
					if (CVA6Cfg[16537])
						// Trace: core/csr_regfile.sv:582:31
						csr_rdata = instret_q[CVA6Cfg[17102-:32] - 1:0];
					else
						// Trace: core/csr_regfile.sv:583:14
						read_access_exception = 1'b1;
				12'hc82:
					if (CVA6Cfg[16537]) begin
						if (CVA6Cfg[17102-:32] == 32)
							// Trace: core/csr_regfile.sv:586:35
							csr_rdata = instret_q[63:32];
						else
							// Trace: core/csr_regfile.sv:587:16
							read_access_exception = 1'b1;
					end
					else
						// Trace: core/csr_regfile.sv:588:14
						read_access_exception = 1'b1;
				12'h323, 12'h324, 12'h325, 12'h326, 12'h327, 12'h328, 12'h329, 12'h32a, 12'h32b, 12'h32c, 12'h32d, 12'h32e, 12'h32f, 12'h330, 12'h331, 12'h332, 12'h333, 12'h334, 12'h335, 12'h336, 12'h337, 12'h338, 12'h339, 12'h33a, 12'h33b, 12'h33c, 12'h33d, 12'h33e, 12'h33f:
					// Trace: core/csr_regfile.sv:619:9
					csr_rdata = perf_data_i;
				12'hb03, 12'hb04, 12'hb05, 12'hb06, 12'hb07, 12'hb08, 12'hb09, 12'hb0a, 12'hb0b, 12'hb0c, 12'hb0d, 12'hb0e, 12'hb0f, 12'hb10, 12'hb11, 12'hb12, 12'hb13, 12'hb14, 12'hb15, 12'hb16, 12'hb17, 12'hb18, 12'hb19, 12'hb1a, 12'hb1b, 12'hb1c, 12'hb1d, 12'hb1e, 12'hb1f:
					// Trace: core/csr_regfile.sv:650:9
					csr_rdata = perf_data_i;
				12'hb83, 12'hb84, 12'hb85, 12'hb86, 12'hb87, 12'hb88, 12'hb89, 12'hb8a, 12'hb8b, 12'hb8c, 12'hb8d, 12'hb8e, 12'hb8f, 12'hb90, 12'hb91, 12'hb92, 12'hb93, 12'hb94, 12'hb95, 12'hb96, 12'hb97, 12'hb98, 12'hb99, 12'hb9a, 12'hb9b, 12'hb9c, 12'hb9d, 12'hb9e, 12'hb9f:
					if (CVA6Cfg[17102-:32] == 32)
						// Trace: core/csr_regfile.sv:681:33
						csr_rdata = perf_data_i;
					else
						// Trace: core/csr_regfile.sv:682:14
						read_access_exception = 1'b1;
				12'hc03, 12'hc04, 12'hc05, 12'hc06, 12'hc07, 12'hc08, 12'hc09, 12'hc0a, 12'hc0b, 12'hc0c, 12'hc0d, 12'hc0e, 12'hc0f, 12'hc10, 12'hc11, 12'hc12, 12'hc13, 12'hc14, 12'hc15, 12'hc16, 12'hc17, 12'hc18, 12'hc19, 12'hc1a, 12'hc1b, 12'hc1c, 12'hc1d, 12'hc1e, 12'hc1f:
					if (CVA6Cfg[16536])
						// Trace: core/csr_regfile.sv:715:11
						csr_rdata = perf_data_i;
					else
						// Trace: core/csr_regfile.sv:717:11
						read_access_exception = 1'b1;
				12'hc83, 12'hc84, 12'hc85, 12'hc86, 12'hc87, 12'hc88, 12'hc89, 12'hc8a, 12'hc8b, 12'hc8c, 12'hc8d, 12'hc8e, 12'hc8f, 12'hc90, 12'hc91, 12'hc92, 12'hc93, 12'hc94, 12'hc95, 12'hc96, 12'hc97, 12'hc98, 12'hc99, 12'hc9a, 12'hc9b, 12'hc9c, 12'hc9d, 12'hc9e, 12'hc9f:
					if (CVA6Cfg[16536]) begin
						begin
							// Trace: core/csr_regfile.sv:750:11
							if (CVA6Cfg[17102-:32] == 32)
								// Trace: core/csr_regfile.sv:750:35
								csr_rdata = perf_data_i;
							else
								// Trace: core/csr_regfile.sv:751:16
								read_access_exception = 1'b1;
						end
					end
					else
						// Trace: core/csr_regfile.sv:753:11
						read_access_exception = 1'b1;
				12'h7c1:
					// Trace: core/csr_regfile.sv:757:28
					csr_rdata = dcache_q;
				12'h7c0:
					// Trace: core/csr_regfile.sv:758:28
					csr_rdata = icache_q;
				12'h7c2:
					// Trace: core/csr_regfile.sv:761:11
					if (CVA6Cfg[16369])
						// Trace: core/csr_regfile.sv:762:13
						csr_rdata = acc_cons_q;
					else
						// Trace: core/csr_regfile.sv:764:13
						read_access_exception = 1'b1;
				12'h3a0, 12'h3a1, 12'h3a2, 12'h3a3, 12'h3a4, 12'h3a5, 12'h3a6, 12'h3a7, 12'h3a8, 12'h3a9, 12'h3aa, 12'h3ab, 12'h3ac, 12'h3ad, 12'h3ae, 12'h3af: begin : sv2v_autoblock_1
					// Trace: core/csr_regfile.sv:785:11
					reg [11:0] index;
					index = csr_addr[11:0] - 12'h3a0;
					// Trace: core/csr_regfile.sv:788:11
					if ((CVA6Cfg[17102-:32] == 64) && (index[0] == 1'b1))
						// Trace: core/csr_regfile.sv:788:55
						read_access_exception = 1'b1;
					else
						// Trace: core/csr_regfile.sv:790:13
						csr_rdata = pmpcfg_q[8 * (index * 4)+:8 * (CVA6Cfg[17102-:32] / 8)];
				end
				12'h3b0, 12'h3b1, 12'h3b2, 12'h3b3, 12'h3b4, 12'h3b5, 12'h3b6, 12'h3b7, 12'h3b8, 12'h3b9, 12'h3ba, 12'h3bb, 12'h3bc, 12'h3bd, 12'h3be, 12'h3bf, 12'h3c0, 12'h3c1, 12'h3c2, 12'h3c3, 12'h3c4, 12'h3c5, 12'h3c6, 12'h3c7, 12'h3c8, 12'h3c9, 12'h3ca, 12'h3cb, 12'h3cc, 12'h3cd, 12'h3ce, 12'h3cf, 12'h3d0, 12'h3d1, 12'h3d2, 12'h3d3, 12'h3d4, 12'h3d5, 12'h3d6, 12'h3d7, 12'h3d8, 12'h3d9, 12'h3da, 12'h3db, 12'h3dc, 12'h3dd, 12'h3de, 12'h3df, 12'h3e0, 12'h3e1, 12'h3e2, 12'h3e3, 12'h3e4, 12'h3e5, 12'h3e6, 12'h3e7, 12'h3e8, 12'h3e9, 12'h3ea, 12'h3eb, 12'h3ec, 12'h3ed, 12'h3ee, 12'h3ef: begin : sv2v_autoblock_2
					// Trace: core/csr_regfile.sv:859:11
					reg [11:0] index;
					index = csr_addr[11:0] - 12'h3b0;
					// Trace: core/csr_regfile.sv:864:11
					if ((pmpcfg_q[(index * 8) + 4] == 1'b1) || (pmpcfg_q[(index * 8) + 4-:2] == 'h0))
						// Trace: core/csr_regfile.sv:865:13
						csr_rdata = pmpaddr_q[((CVA6Cfg[17038-:32] - 3) >= 0 ? (index * ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])) + ((CVA6Cfg[17038-:32] - 3) >= 0 ? ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 3 : ((CVA6Cfg[17038-:32] - 3) + ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])) - 1) : (CVA6Cfg[17038-:32] - 3) - ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 3 : ((CVA6Cfg[17038-:32] - 3) + ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])) - 1)) : (((index * ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])) + ((CVA6Cfg[17038-:32] - 3) >= 0 ? ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 3 : ((CVA6Cfg[17038-:32] - 3) + ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])) - 1) : (CVA6Cfg[17038-:32] - 3) - ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 3 : ((CVA6Cfg[17038-:32] - 3) + ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])) - 1))) + ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])) - 1)-:((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])];
					else
						// Trace: core/csr_regfile.sv:866:16
						csr_rdata = {pmpaddr_q[((CVA6Cfg[17038-:32] - 3) >= 0 ? (index * ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])) + ((CVA6Cfg[17038-:32] - 3) >= 0 ? ((CVA6Cfg[17038-:32] - 3) >= 1 ? CVA6Cfg[17038-:32] - 3 : ((CVA6Cfg[17038-:32] - 3) + ((CVA6Cfg[17038-:32] - 3) >= 1 ? CVA6Cfg[17038-:32] - 3 : 5 - CVA6Cfg[17038-:32])) - 1) : (CVA6Cfg[17038-:32] - 3) - ((CVA6Cfg[17038-:32] - 3) >= 1 ? CVA6Cfg[17038-:32] - 3 : ((CVA6Cfg[17038-:32] - 3) + ((CVA6Cfg[17038-:32] - 3) >= 1 ? CVA6Cfg[17038-:32] - 3 : 5 - CVA6Cfg[17038-:32])) - 1)) : (((index * ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])) + ((CVA6Cfg[17038-:32] - 3) >= 0 ? ((CVA6Cfg[17038-:32] - 3) >= 1 ? CVA6Cfg[17038-:32] - 3 : ((CVA6Cfg[17038-:32] - 3) + ((CVA6Cfg[17038-:32] - 3) >= 1 ? CVA6Cfg[17038-:32] - 3 : 5 - CVA6Cfg[17038-:32])) - 1) : (CVA6Cfg[17038-:32] - 3) - ((CVA6Cfg[17038-:32] - 3) >= 1 ? CVA6Cfg[17038-:32] - 3 : ((CVA6Cfg[17038-:32] - 3) + ((CVA6Cfg[17038-:32] - 3) >= 1 ? CVA6Cfg[17038-:32] - 3 : 5 - CVA6Cfg[17038-:32])) - 1))) + ((CVA6Cfg[17038-:32] - 3) >= 1 ? CVA6Cfg[17038-:32] - 3 : 5 - CVA6Cfg[17038-:32])) - 1)-:((CVA6Cfg[17038-:32] - 3) >= 1 ? CVA6Cfg[17038-:32] - 3 : 5 - CVA6Cfg[17038-:32])], 1'b0};
				end
				12'hd00:
					// Trace: core/csr_regfile.sv:869:11
					csr_rdata = c3_enable_q;
				default:
					// Trace: core/csr_regfile.sv:871:18
					read_access_exception = 1'b1;
			endcase
	end
	// Trace: core/csr_regfile.sv:878:3
	reg [CVA6Cfg[17102-:32] - 1:0] mask;
	// Trace: core/csr_regfile.sv:879:3
	// removed localparam type ariane_pkg_fu_t
	localparam [2:0] ariane_pkg_CauseBreakpoint = 3'h1;
	localparam [2:0] ariane_pkg_CauseRequest = 3'h3;
	localparam [2:0] ariane_pkg_CauseSingleStep = 3'h4;
	localparam [63:0] riscv_HSTATUS_GVA = 'h40;
	localparam [63:0] riscv_HSTATUS_HU = 'h200;
	localparam [63:0] riscv_HSTATUS_SPV = 'h80;
	localparam [63:0] riscv_HSTATUS_SPVP = 'h100;
	localparam [63:0] riscv_HSTATUS_VSBE = 'h20;
	localparam [63:0] riscv_HSTATUS_VTSR = 'h400000;
	localparam [63:0] riscv_HSTATUS_VTVM = 'h100000;
	localparam [63:0] riscv_HSTATUS_VTW = 'h200000;
	localparam [63:0] ariane_pkg_HSTATUS_WRITE_MASK = ((((((riscv_HSTATUS_VSBE | riscv_HSTATUS_GVA) | riscv_HSTATUS_SPV) | riscv_HSTATUS_SPVP) | riscv_HSTATUS_HU) | riscv_HSTATUS_VTVM) | riscv_HSTATUS_VTW) | riscv_HSTATUS_VTSR;
	localparam [63:0] ariane_pkg_SMODE_STATUS_WRITE_MASK = ((((riscv_SSTATUS_SIE | riscv_SSTATUS_SPIE) | riscv_SSTATUS_SPP) | riscv_SSTATUS_FS) | riscv_SSTATUS_SUM) | riscv_SSTATUS_MXR;
	localparam [0:0] ariane_pkg_ZERO_TVAL = 1'b0;
	localparam cva6_config_pkg_CVA6ConfigXlen = 64;
	localparam riscv_XLEN = cva6_config_pkg_CVA6ConfigXlen;
	localparam [63:0] riscv_BREAKPOINT = 3;
	localparam [63:0] riscv_DEBUG_REQUEST = 24;
	localparam [63:0] riscv_ENV_CALL_MMODE = 11;
	localparam [63:0] riscv_ENV_CALL_SMODE = 9;
	localparam [63:0] riscv_ENV_CALL_UMODE = 8;
	localparam [63:0] riscv_ENV_CALL_VSMODE = 10;
	localparam [63:0] riscv_ILLEGAL_INSTR = 2;
	localparam [63:0] riscv_INSTR_ACCESS_FAULT = 1;
	localparam [63:0] riscv_INSTR_ADDR_MISALIGNED = 0;
	localparam [63:0] riscv_INSTR_GUEST_PAGE_FAULT = 20;
	localparam [63:0] riscv_INSTR_PAGE_FAULT = 12;
	localparam [31:0] riscv_IRQ_M_EXT = 11;
	localparam [31:0] riscv_IRQ_M_SOFT = 3;
	localparam [31:0] riscv_IRQ_M_TIMER = 7;
	localparam [63:0] riscv_LD_ACCESS_FAULT = 5;
	localparam [63:0] riscv_LD_ADDR_MISALIGNED = 4;
	localparam [63:0] riscv_LOAD_GUEST_PAGE_FAULT = 21;
	localparam [63:0] riscv_LOAD_PAGE_FAULT = 13;
	localparam [31:0] riscv_MIP_MEIP = 2048;
	localparam [31:0] riscv_MIP_MSIP = 8;
	localparam [31:0] riscv_MIP_MTIP = 128;
	localparam [31:0] riscv_IRQ_S_EXT = 9;
	localparam [31:0] riscv_MIP_SEIP = 512;
	localparam [31:0] riscv_IRQ_S_SOFT = 1;
	localparam [31:0] riscv_MIP_SSIP = 2;
	localparam [31:0] riscv_IRQ_S_TIMER = 5;
	localparam [31:0] riscv_MIP_STIP = 32;
	localparam [63:0] riscv_STORE_GUEST_PAGE_FAULT = 23;
	localparam [63:0] riscv_STORE_PAGE_FAULT = 15;
	localparam [63:0] riscv_ST_ACCESS_FAULT = 7;
	localparam [63:0] riscv_ST_ADDR_MISALIGNED = 6;
	localparam [63:0] riscv_VIRTUAL_INSTRUCTION = 22;
	function automatic [((CVA6Cfg[515-:32] + CVA6Cfg[483-:32]) + CVA6Cfg[419-:32]) - 1:0] sv2v_cast_21121;
		input reg [((CVA6Cfg[515-:32] + CVA6Cfg[483-:32]) + CVA6Cfg[419-:32]) - 1:0] inp;
		sv2v_cast_21121 = inp;
	endfunction
	function automatic [3:0] sv2v_cast_4;
		input reg [3:0] inp;
		sv2v_cast_4 = inp;
	endfunction
	function automatic [(((CVA6Cfg[515-:32] + 2) + CVA6Cfg[451-:32]) + CVA6Cfg[419-:32]) - 1:0] sv2v_cast_85D8A;
		input reg [(((CVA6Cfg[515-:32] + 2) + CVA6Cfg[451-:32]) + CVA6Cfg[419-:32]) - 1:0] inp;
		sv2v_cast_85D8A = inp;
	endfunction
	function automatic [1:0] sv2v_cast_2;
		input reg [1:0] inp;
		sv2v_cast_2 = inp;
	endfunction
	always @(*) begin : csr_update
		// Trace: core/csr_regfile.sv:880:5
		reg [((CVA6Cfg[515-:32] + CVA6Cfg[483-:32]) + CVA6Cfg[419-:32]) - 1:0] satp;
		// Trace: core/csr_regfile.sv:881:5
		reg [((CVA6Cfg[515-:32] + CVA6Cfg[483-:32]) + CVA6Cfg[419-:32]) - 1:0] vsatp;
		// Trace: core/csr_regfile.sv:882:5
		reg [(((CVA6Cfg[515-:32] + 2) + CVA6Cfg[451-:32]) + CVA6Cfg[419-:32]) - 1:0] hgatp;
		// Trace: core/csr_regfile.sv:883:5
		reg [63:0] instret;
		if (_sv2v_0)
			;
		// Trace: core/csr_regfile.sv:885:5
		if (CVA6Cfg[16366])
			// Trace: core/csr_regfile.sv:886:7
			satp = satp_q;
		if (CVA6Cfg[16543]) begin
			// Trace: core/csr_regfile.sv:889:7
			hgatp = hgatp_q;
			// Trace: core/csr_regfile.sv:890:7
			vsatp = vsatp_q;
		end
		// Trace: core/csr_regfile.sv:892:5
		instret = instret_q;
		// Trace: core/csr_regfile.sv:894:5
		mcountinhibit_d = mcountinhibit_q;
		// Trace: core/csr_regfile.sv:899:5
		cycle_d = cycle_q;
		// Trace: core/csr_regfile.sv:900:5
		instret_d = instret_q;
		if (!debug_mode_q) begin
			// Trace: core/csr_regfile.sv:903:7
			begin : sv2v_autoblock_3
				// Trace: core/csr_regfile.sv:903:12
				reg signed [31:0] i;
				// Trace: core/csr_regfile.sv:903:12
				for (i = 0; i < CVA6Cfg[16873-:32]; i = i + 1)
					begin
						// Trace: core/csr_regfile.sv:904:9
						if ((commit_ack_i[i] && !ex_i[0]) && (!CVA6Cfg[16368] || (CVA6Cfg[16368] && !mcountinhibit_q[2])))
							// Trace: core/csr_regfile.sv:905:11
							instret = instret + 1;
					end
			end
			// Trace: core/csr_regfile.sv:907:7
			instret_d = instret;
			if (!CVA6Cfg[16368] || (CVA6Cfg[16368] && !mcountinhibit_q[0]))
				// Trace: core/csr_regfile.sv:910:9
				cycle_d = cycle_q + 1'b1;
			else
				// Trace: core/csr_regfile.sv:911:12
				cycle_d = cycle_q;
		end
		// Trace: core/csr_regfile.sv:914:5
		eret_o = 1'b0;
		// Trace: core/csr_regfile.sv:915:5
		flush_o = 1'b0;
		// Trace: core/csr_regfile.sv:916:5
		update_access_exception = 1'b0;
		// Trace: core/csr_regfile.sv:917:5
		virtual_update_access_exception = 1'b0;
		// Trace: core/csr_regfile.sv:919:5
		set_debug_pc_o = 1'b0;
		// Trace: core/csr_regfile.sv:921:5
		perf_we_o = 1'b0;
		// Trace: core/csr_regfile.sv:922:5
		perf_data_o = 'b0;
		// Trace: core/csr_regfile.sv:924:5
		fcsr_d = fcsr_q;
		// Trace: core/csr_regfile.sv:926:5
		priv_lvl_d = priv_lvl_q;
		// Trace: core/csr_regfile.sv:927:5
		v_d = v_q;
		// Trace: core/csr_regfile.sv:928:5
		debug_mode_d = debug_mode_q;
		// Trace: core/csr_regfile.sv:929:5
		c3_enable_d = c3_enable_q;
		if (CVA6Cfg[1321]) begin
			// Trace: core/csr_regfile.sv:932:7
			dcsr_d = dcsr_q;
			// Trace: core/csr_regfile.sv:933:7
			dpc_d = dpc_q;
			// Trace: core/csr_regfile.sv:934:7
			dscratch0_d = dscratch0_q;
			// Trace: core/csr_regfile.sv:935:7
			dscratch1_d = dscratch1_q;
		end
		// Trace: core/csr_regfile.sv:937:5
		mstatus_d = mstatus_q;
		if (CVA6Cfg[16543]) begin
			// Trace: core/csr_regfile.sv:939:7
			hstatus_d = hstatus_q;
			// Trace: core/csr_regfile.sv:940:7
			vsstatus_d = vsstatus_q;
		end
		if (mtvec_rst_load_q)
			// Trace: core/csr_regfile.sv:950:7
			mtvec_d = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {1'b0}}, boot_addr_i} + 'h40;
		else
			// Trace: core/csr_regfile.sv:952:7
			mtvec_d = mtvec_q;
		if (CVA6Cfg[16366]) begin
			// Trace: core/csr_regfile.sv:956:7
			medeleg_d = medeleg_q;
			// Trace: core/csr_regfile.sv:957:7
			mideleg_d = mideleg_q;
		end
		// Trace: core/csr_regfile.sv:959:5
		mip_d = mip_q;
		// Trace: core/csr_regfile.sv:960:5
		mie_d = mie_q;
		// Trace: core/csr_regfile.sv:961:5
		mepc_d = mepc_q;
		// Trace: core/csr_regfile.sv:962:5
		mcause_d = mcause_q;
		// Trace: core/csr_regfile.sv:963:5
		mcounteren_d = mcounteren_q;
		// Trace: core/csr_regfile.sv:964:5
		mscratch_d = mscratch_q;
		// Trace: core/csr_regfile.sv:965:5
		mtval_d = mtval_q;
		if (CVA6Cfg[16543]) begin
			// Trace: core/csr_regfile.sv:967:7
			mtinst_d = mtinst_q;
			// Trace: core/csr_regfile.sv:968:7
			mtval2_d = mtval2_q;
		end
		// Trace: core/csr_regfile.sv:971:5
		fiom_d = fiom_q;
		// Trace: core/csr_regfile.sv:972:5
		dcache_d = dcache_q;
		// Trace: core/csr_regfile.sv:973:5
		icache_d = icache_q;
		// Trace: core/csr_regfile.sv:974:5
		acc_cons_d = acc_cons_q;
		if (CVA6Cfg[16543]) begin
			// Trace: core/csr_regfile.sv:977:7
			vstvec_d = vstvec_q;
			// Trace: core/csr_regfile.sv:978:7
			vsscratch_d = vsscratch_q;
			// Trace: core/csr_regfile.sv:979:7
			vsepc_d = vsepc_q;
			// Trace: core/csr_regfile.sv:980:7
			vscause_d = vscause_q;
			// Trace: core/csr_regfile.sv:981:7
			vstval_d = vstval_q;
			// Trace: core/csr_regfile.sv:982:7
			vsatp_d = vsatp_q;
			// Trace: core/csr_regfile.sv:983:7
			hgatp_d = hgatp_q;
			// Trace: core/csr_regfile.sv:984:7
			hedeleg_d = hedeleg_q;
			// Trace: core/csr_regfile.sv:985:7
			hideleg_d = hideleg_q;
			// Trace: core/csr_regfile.sv:986:7
			hgeie_d = hgeie_q;
			// Trace: core/csr_regfile.sv:987:7
			hcounteren_d = hcounteren_q;
			// Trace: core/csr_regfile.sv:988:7
			htinst_d = htinst_q;
			// Trace: core/csr_regfile.sv:989:7
			htval_d = htval_q;
			// Trace: core/csr_regfile.sv:990:7
			en_ld_st_g_translation_d = en_ld_st_g_translation_q;
		end
		if (CVA6Cfg[16366]) begin
			// Trace: core/csr_regfile.sv:994:7
			sepc_d = sepc_q;
			// Trace: core/csr_regfile.sv:995:7
			scause_d = scause_q;
			// Trace: core/csr_regfile.sv:996:7
			stvec_d = stvec_q;
			// Trace: core/csr_regfile.sv:997:7
			scounteren_d = scounteren_q;
			// Trace: core/csr_regfile.sv:998:7
			sscratch_d = sscratch_q;
			// Trace: core/csr_regfile.sv:999:7
			stval_d = stval_q;
			// Trace: core/csr_regfile.sv:1000:7
			satp_d = satp_q;
		end
		// Trace: core/csr_regfile.sv:1003:5
		en_ld_st_translation_d = en_ld_st_translation_q;
		// Trace: core/csr_regfile.sv:1004:5
		dirty_fp_state_csr = 1'b0;
		// Trace: core/csr_regfile.sv:1006:5
		pmpcfg_d = pmpcfg_q;
		// Trace: core/csr_regfile.sv:1007:5
		pmpaddr_d = pmpaddr_q;
		if (csr_we)
			// Trace: core/csr_regfile.sv:1011:7
			(* full_case, parallel_case *)
			case (conv_csr_addr[11-:12])
				12'h001:
					// Trace: core/csr_regfile.sv:1014:11
					if (CVA6Cfg[16471] && !((mstatus_q[14-:2] == 2'b00) || ((CVA6Cfg[16543] && v_q) && (vsstatus_q[14-:2] == 2'b00)))) begin
						// Trace: core/csr_regfile.sv:1015:13
						dirty_fp_state_csr = 1'b1;
						// Trace: core/csr_regfile.sv:1016:13
						fcsr_d[4-:5] = csr_wdata[4:0];
						// Trace: core/csr_regfile.sv:1018:13
						flush_o = 1'b1;
					end
					else
						// Trace: core/csr_regfile.sv:1020:13
						update_access_exception = 1'b1;
				12'h002:
					// Trace: core/csr_regfile.sv:1024:11
					if (CVA6Cfg[16471] && !((mstatus_q[14-:2] == 2'b00) || ((CVA6Cfg[16543] && v_q) && (vsstatus_q[14-:2] == 2'b00)))) begin
						// Trace: core/csr_regfile.sv:1025:13
						dirty_fp_state_csr = 1'b1;
						// Trace: core/csr_regfile.sv:1026:13
						fcsr_d[7-:3] = csr_wdata[2:0];
						// Trace: core/csr_regfile.sv:1028:13
						flush_o = 1'b1;
					end
					else
						// Trace: core/csr_regfile.sv:1030:13
						update_access_exception = 1'b1;
				12'h003:
					// Trace: core/csr_regfile.sv:1034:11
					if (CVA6Cfg[16471] && !((mstatus_q[14-:2] == 2'b00) || ((CVA6Cfg[16543] && v_q) && (vsstatus_q[14-:2] == 2'b00)))) begin
						// Trace: core/csr_regfile.sv:1035:13
						dirty_fp_state_csr = 1'b1;
						// Trace: core/csr_regfile.sv:1036:13
						fcsr_d[7:0] = csr_wdata[7:0];
						// Trace: core/csr_regfile.sv:1038:13
						flush_o = 1'b1;
					end
					else
						// Trace: core/csr_regfile.sv:1040:13
						update_access_exception = 1'b1;
				12'h800:
					// Trace: core/csr_regfile.sv:1044:11
					if (CVA6Cfg[16471] && !((mstatus_q[14-:2] == 2'b00) || ((CVA6Cfg[16543] && v_q) && (vsstatus_q[14-:2] == 2'b00)))) begin
						// Trace: core/csr_regfile.sv:1045:13
						dirty_fp_state_csr = 1'b1;
						// Trace: core/csr_regfile.sv:1046:13
						fcsr_d[14-:7] = csr_wdata[6:0];
						// Trace: core/csr_regfile.sv:1048:13
						flush_o = 1'b1;
					end
					else
						// Trace: core/csr_regfile.sv:1050:13
						update_access_exception = 1'b1;
				12'h7b0:
					// Trace: core/csr_regfile.sv:1055:11
					if (CVA6Cfg[1321]) begin
						// Trace: core/csr_regfile.sv:1056:13
						dcsr_d = csr_wdata[31:0];
						// Trace: core/csr_regfile.sv:1058:13
						dcsr_d[31-:4] = 4'h4;
						// Trace: core/csr_regfile.sv:1060:13
						dcsr_d[3] = 1'b0;
						// Trace: core/csr_regfile.sv:1061:13
						dcsr_d[10] = 1'b0;
						// Trace: core/csr_regfile.sv:1062:13
						dcsr_d[9] = 1'b0;
					end
					else
						// Trace: core/csr_regfile.sv:1064:13
						update_access_exception = 1'b1;
				12'h7b1:
					if (CVA6Cfg[1321])
						// Trace: core/csr_regfile.sv:1068:30
						dpc_d = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1069:14
						update_access_exception = 1'b1;
				12'h7b2:
					if (CVA6Cfg[1321])
						// Trace: core/csr_regfile.sv:1071:30
						dscratch0_d = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1072:14
						update_access_exception = 1'b1;
				12'h7b3:
					if (CVA6Cfg[1321])
						// Trace: core/csr_regfile.sv:1074:30
						dscratch1_d = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1075:14
						update_access_exception = 1'b1;
				12'h7a0:
					// Trace: core/csr_regfile.sv:1077:29
					update_access_exception = 1'b1;
				12'h7a1:
					// Trace: core/csr_regfile.sv:1078:28
					update_access_exception = 1'b1;
				12'h7a2:
					// Trace: core/csr_regfile.sv:1079:28
					update_access_exception = 1'b1;
				12'h7a3:
					// Trace: core/csr_regfile.sv:1080:28
					update_access_exception = 1'b1;
				12'h200:
					// Trace: core/csr_regfile.sv:1083:11
					if (CVA6Cfg[16543]) begin
						// Trace: core/csr_regfile.sv:1084:13
						mask = ariane_pkg_SMODE_STATUS_WRITE_MASK[CVA6Cfg[17102-:32] - 1:0];
						// Trace: core/csr_regfile.sv:1085:13
						vsstatus_d = (vsstatus_q & ~{{64 - CVA6Cfg[17102-:32] {1'b0}}, mask}) | {{64 - CVA6Cfg[17102-:32] {1'b0}}, csr_wdata & mask};
						// Trace: core/csr_regfile.sv:1087:13
						vsstatus_d[16-:2] = 2'b00;
						// Trace: core/csr_regfile.sv:1088:13
						if (!CVA6Cfg[16471])
							// Trace: core/csr_regfile.sv:1089:15
							vsstatus_d[14-:2] = 2'b00;
						// Trace: core/csr_regfile.sv:1092:13
						flush_o = 1'b1;
					end
					else
						// Trace: core/csr_regfile.sv:1094:13
						update_access_exception = 1'b1;
				12'h204:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1098:26
						mie_d = (mie_q & ~hideleg_q) | ((csr_wdata << 1) & hideleg_q);
					else
						// Trace: core/csr_regfile.sv:1099:14
						update_access_exception = 1'b1;
				12'h244:
					// Trace: core/csr_regfile.sv:1101:11
					if (CVA6Cfg[16543]) begin
						// Trace: core/csr_regfile.sv:1103:13
						mask = sv2v_cast_94688(riscv_MIP_VSSIP) & hideleg_q;
						// Trace: core/csr_regfile.sv:1104:13
						mip_d = (mip_q & ~mask) | ((csr_wdata << 1) & mask);
					end
					else
						// Trace: core/csr_regfile.sv:1106:13
						update_access_exception = 1'b1;
				12'h205:
					// Trace: core/csr_regfile.sv:1110:11
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1111:13
						vstvec_d = {csr_wdata[CVA6Cfg[17102-:32] - 1:2], 1'b0, csr_wdata[0]};
					else
						// Trace: core/csr_regfile.sv:1113:13
						update_access_exception = 1'b1;
				12'h240:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1117:26
						vsscratch_d = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1118:14
						update_access_exception = 1'b1;
				12'h241:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1120:26
						vsepc_d = {csr_wdata[CVA6Cfg[17102-:32] - 1:1], 1'b0};
					else
						// Trace: core/csr_regfile.sv:1121:14
						update_access_exception = 1'b1;
				12'h242:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1123:26
						vscause_d = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1124:14
						update_access_exception = 1'b1;
				12'h243:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1126:26
						vstval_d = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1127:14
						update_access_exception = 1'b1;
				12'h280:
					// Trace: core/csr_regfile.sv:1130:11
					if (CVA6Cfg[16543]) begin
						// Trace: core/csr_regfile.sv:1131:13
						if (((priv_lvl_o == 2'b01) && hstatus_q[20]) && v_q)
							// Trace: core/csr_regfile.sv:1132:15
							virtual_update_access_exception = 1'b1;
						else begin
							// Trace: core/csr_regfile.sv:1134:15
							vsatp = sv2v_cast_21121(csr_wdata);
							// Trace: core/csr_regfile.sv:1136:15
							vsatp[CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)-:((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)) >= (CVA6Cfg[419-:32] + 0) ? ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)) - (CVA6Cfg[419-:32] + 0)) + 1 : ((CVA6Cfg[419-:32] + 0) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) + 1)] = vsatp[CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)-:((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)) >= (CVA6Cfg[419-:32] + 0) ? ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)) - (CVA6Cfg[419-:32] + 0)) + 1 : ((CVA6Cfg[419-:32] + 0) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) + 1)] & {{CVA6Cfg[483-:32] - CVA6Cfg[16940-:32] {1'b0}}, {CVA6Cfg[16940-:32] {1'b1}}};
							// Trace: core/csr_regfile.sv:1138:15
							if ((sv2v_cast_4(vsatp[CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))-:((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) >= (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) ? ((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0))) + 1 : ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) - (CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)))) + 1)]) == 4'd0) || (sv2v_cast_4(vsatp[CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))-:((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) >= (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) ? ((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0))) + 1 : ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) - (CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)))) + 1)]) == CVA6Cfg[355-:4]))
								// Trace: core/csr_regfile.sv:1140:17
								vsatp_d = vsatp;
						end
						// Trace: core/csr_regfile.sv:1144:13
						flush_o = 1'b1;
					end
					else
						// Trace: core/csr_regfile.sv:1146:13
						update_access_exception = 1'b1;
				12'h100:
					// Trace: core/csr_regfile.sv:1151:11
					if (CVA6Cfg[16366]) begin
						// Trace: core/csr_regfile.sv:1152:13
						mask = ariane_pkg_SMODE_STATUS_WRITE_MASK[CVA6Cfg[17102-:32] - 1:0];
						// Trace: core/csr_regfile.sv:1153:13
						mstatus_d = (mstatus_q & ~{{64 - CVA6Cfg[17102-:32] {1'b0}}, mask}) | {{64 - CVA6Cfg[17102-:32] {1'b0}}, csr_wdata & mask};
						// Trace: core/csr_regfile.sv:1155:13
						if (!CVA6Cfg[16471])
							// Trace: core/csr_regfile.sv:1156:15
							mstatus_d[14-:2] = 2'b00;
						if (!CVA6Cfg[16545])
							// Trace: core/csr_regfile.sv:1160:15
							mstatus_d[10-:2] = 2'b00;
						if (!CVA6Cfg[16543]) begin
							begin
								// Trace: core/csr_regfile.sv:1164:15
								if (mstatus_d[12-:2] == 2'b10)
									// Trace: core/csr_regfile.sv:1165:17
									mstatus_d[12-:2] = mstatus_q[12-:2];
							end
						end
						// Trace: core/csr_regfile.sv:1169:13
						flush_o = 1'b1;
					end
					else
						// Trace: core/csr_regfile.sv:1171:13
						update_access_exception = 1'b1;
				12'h104:
					// Trace: core/csr_regfile.sv:1177:11
					if (CVA6Cfg[16366]) begin
						// Trace: core/csr_regfile.sv:1178:13
						mask = (CVA6Cfg[16543] ? mideleg_q & ~HS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0] : mideleg_q);
						// Trace: core/csr_regfile.sv:1180:13
						mie_d = (mie_q & ~mask) | (csr_wdata & mask);
					end
					else
						// Trace: core/csr_regfile.sv:1182:13
						update_access_exception = 1'b1;
				12'h144:
					// Trace: core/csr_regfile.sv:1187:11
					if (CVA6Cfg[16366]) begin
						// Trace: core/csr_regfile.sv:1189:13
						mask = sv2v_cast_94688(riscv_MIP_SSIP) & mideleg_q;
						// Trace: core/csr_regfile.sv:1190:13
						mip_d = (mip_q & ~mask) | (csr_wdata & mask);
					end
					else
						// Trace: core/csr_regfile.sv:1192:13
						update_access_exception = 1'b1;
				12'h105:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:1197:26
						stvec_d = {csr_wdata[CVA6Cfg[17102-:32] - 1:2], 1'b0, csr_wdata[0]};
					else
						// Trace: core/csr_regfile.sv:1198:14
						update_access_exception = 1'b1;
				12'h106:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:1200:26
						scounteren_d = {{CVA6Cfg[17102-:32] - 32 {1'b0}}, csr_wdata[31:0]};
					else
						// Trace: core/csr_regfile.sv:1201:14
						update_access_exception = 1'b1;
				12'h140:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:1203:26
						sscratch_d = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1204:14
						update_access_exception = 1'b1;
				12'h141:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:1206:26
						sepc_d = {csr_wdata[CVA6Cfg[17102-:32] - 1:1], 1'b0};
					else
						// Trace: core/csr_regfile.sv:1207:14
						update_access_exception = 1'b1;
				12'h142:
					if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:1209:26
						scause_d = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1210:14
						update_access_exception = 1'b1;
				12'h143:
					if (CVA6Cfg[16366] && CVA6Cfg[15915])
						// Trace: core/csr_regfile.sv:1212:44
						stval_d = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1213:14
						update_access_exception = 1'b1;
				12'h180:
					// Trace: core/csr_regfile.sv:1216:11
					if (CVA6Cfg[16366]) begin
						// Trace: core/csr_regfile.sv:1218:13
						if ((priv_lvl_o == 2'b01) && mstatus_q[20])
							// Trace: core/csr_regfile.sv:1218:67
							update_access_exception = 1'b1;
						else begin
							// Trace: core/csr_regfile.sv:1220:15
							satp = sv2v_cast_21121(csr_wdata);
							// Trace: core/csr_regfile.sv:1222:15
							satp[CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)-:((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)) >= (CVA6Cfg[419-:32] + 0) ? ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)) - (CVA6Cfg[419-:32] + 0)) + 1 : ((CVA6Cfg[419-:32] + 0) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) + 1)] = satp[CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)-:((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)) >= (CVA6Cfg[419-:32] + 0) ? ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)) - (CVA6Cfg[419-:32] + 0)) + 1 : ((CVA6Cfg[419-:32] + 0) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) + 1)] & {{CVA6Cfg[483-:32] - CVA6Cfg[16940-:32] {1'b0}}, {CVA6Cfg[16940-:32] {1'b1}}};
							// Trace: core/csr_regfile.sv:1224:15
							if ((sv2v_cast_4(satp[CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))-:((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) >= (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) ? ((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0))) + 1 : ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) - (CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)))) + 1)]) == 4'd0) || (sv2v_cast_4(satp[CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))-:((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) >= (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) ? ((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0))) + 1 : ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) - (CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)))) + 1)]) == CVA6Cfg[355-:4]))
								// Trace: core/csr_regfile.sv:1226:17
								satp_d = satp;
						end
						// Trace: core/csr_regfile.sv:1230:13
						flush_o = 1'b1;
					end
					else
						// Trace: core/csr_regfile.sv:1232:13
						update_access_exception = 1'b1;
				12'h10a:
					if (CVA6Cfg[16365])
						// Trace: core/csr_regfile.sv:1236:26
						fiom_d = csr_wdata[0];
					else
						// Trace: core/csr_regfile.sv:1237:14
						update_access_exception = 1'b1;
				12'h600:
					// Trace: core/csr_regfile.sv:1240:11
					if (CVA6Cfg[16543]) begin
						// Trace: core/csr_regfile.sv:1241:13
						mask = ariane_pkg_HSTATUS_WRITE_MASK[CVA6Cfg[17102-:32] - 1:0];
						// Trace: core/csr_regfile.sv:1242:13
						hstatus_d = (hstatus_q & ~{{64 - CVA6Cfg[17102-:32] {1'b0}}, mask}) | {{64 - CVA6Cfg[17102-:32] {1'b0}}, csr_wdata & mask};
						// Trace: core/csr_regfile.sv:1244:13
						flush_o = 1'b1;
					end
					else
						// Trace: core/csr_regfile.sv:1246:13
						update_access_exception = 1'b1;
				12'h602:
					// Trace: core/csr_regfile.sv:1250:11
					if (CVA6Cfg[16543]) begin
						// Trace: core/csr_regfile.sv:1251:13
						mask = 45567;
						// Trace: core/csr_regfile.sv:1263:13
						hedeleg_d = (hedeleg_q & ~mask) | (csr_wdata & mask);
					end
					else
						// Trace: core/csr_regfile.sv:1265:13
						update_access_exception = 1'b1;
				12'h603:
					// Trace: core/csr_regfile.sv:1269:11
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1270:13
						hideleg_d = (hideleg_q & ~VS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0]) | (csr_wdata & VS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0]);
					else
						// Trace: core/csr_regfile.sv:1272:13
						update_access_exception = 1'b1;
				12'h604:
					// Trace: core/csr_regfile.sv:1276:11
					if (CVA6Cfg[16543]) begin
						// Trace: core/csr_regfile.sv:1277:13
						mask = HS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0];
						// Trace: core/csr_regfile.sv:1278:13
						mie_d = (mie_q & ~mask) | (csr_wdata & mask);
					end
					else
						// Trace: core/csr_regfile.sv:1280:13
						update_access_exception = 1'b1;
				12'h644:
					// Trace: core/csr_regfile.sv:1284:11
					if (CVA6Cfg[16543]) begin
						// Trace: core/csr_regfile.sv:1285:13
						mask = sv2v_cast_94688(riscv_MIP_VSSIP);
						// Trace: core/csr_regfile.sv:1286:13
						mip_d = (mip_q & ~mask) | (csr_wdata & mask);
					end
					else
						// Trace: core/csr_regfile.sv:1288:13
						update_access_exception = 1'b1;
				12'h645:
					// Trace: core/csr_regfile.sv:1292:11
					if (CVA6Cfg[16543]) begin
						// Trace: core/csr_regfile.sv:1293:13
						mask = VS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0];
						// Trace: core/csr_regfile.sv:1294:13
						mip_d = (mip_q & ~mask) | (csr_wdata & mask);
					end
					else
						// Trace: core/csr_regfile.sv:1296:13
						update_access_exception = 1'b1;
				12'h606:
					// Trace: core/csr_regfile.sv:1300:11
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1301:13
						hcounteren_d = {{CVA6Cfg[17102-:32] - 32 {1'b0}}, csr_wdata[31:0]};
					else
						// Trace: core/csr_regfile.sv:1303:13
						update_access_exception = 1'b1;
				12'h643:
					// Trace: core/csr_regfile.sv:1307:11
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1308:13
						htval_d = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1310:13
						update_access_exception = 1'b1;
				12'h64a:
					// Trace: core/csr_regfile.sv:1314:11
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1315:13
						htinst_d = {{CVA6Cfg[17102-:32] - 32 {1'b0}}, csr_wdata[31:0]};
					else
						// Trace: core/csr_regfile.sv:1317:13
						update_access_exception = 1'b1;
				12'h607:
					// Trace: core/csr_regfile.sv:1322:11
					if (!CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1323:13
						update_access_exception = 1'b1;
				12'h680:
					// Trace: core/csr_regfile.sv:1327:11
					if (CVA6Cfg[16543]) begin
						// Trace: core/csr_regfile.sv:1329:13
						if (((priv_lvl_o == 2'b01) && !v_q) && mstatus_q[20])
							// Trace: core/csr_regfile.sv:1330:15
							update_access_exception = 1'b1;
						else begin
							// Trace: core/csr_regfile.sv:1332:15
							hgatp = sv2v_cast_85D8A(csr_wdata);
							// Trace: core/csr_regfile.sv:1334:15
							hgatp[1:0] = 2'b00;
							// Trace: core/csr_regfile.sv:1336:15
							hgatp[CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)-:((CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)) >= (CVA6Cfg[419-:32] + 0) ? ((CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)) - (CVA6Cfg[419-:32] + 0)) + 1 : ((CVA6Cfg[419-:32] + 0) - (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1))) + 1)] = hgatp[CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)-:((CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)) >= (CVA6Cfg[419-:32] + 0) ? ((CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)) - (CVA6Cfg[419-:32] + 0)) + 1 : ((CVA6Cfg[419-:32] + 0) - (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1))) + 1)] & {{CVA6Cfg[451-:32] - CVA6Cfg[16908-:32] {1'b0}}, {CVA6Cfg[16908-:32] {1'b1}}};
							// Trace: core/csr_regfile.sv:1338:15
							if ((sv2v_cast_4(hgatp[CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))-:((CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))) >= (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0))) ? ((CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))) - (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0)))) + 1 : ((2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0))) - (CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1))))) + 1)]) == 4'd0) || (sv2v_cast_4(hgatp[CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))-:((CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))) >= (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0))) ? ((CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))) - (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0)))) + 1 : ((2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0))) - (CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1))))) + 1)]) == CVA6Cfg[355-:4]))
								// Trace: core/csr_regfile.sv:1340:17
								hgatp_d = hgatp;
						end
						// Trace: core/csr_regfile.sv:1344:13
						flush_o = 1'b1;
					end
					else
						// Trace: core/csr_regfile.sv:1346:13
						update_access_exception = 1'b1;
				12'h60a:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1350:26
						fiom_d = csr_wdata[0];
					else
						// Trace: core/csr_regfile.sv:1351:14
						update_access_exception = 1'b1;
				12'h300: begin
					// Trace: core/csr_regfile.sv:1353:11
					mstatus_d = {{64 - CVA6Cfg[17102-:32] {1'b0}}, csr_wdata};
					// Trace: core/csr_regfile.sv:1354:11
					mstatus_d[16-:2] = 2'b00;
					// Trace: core/csr_regfile.sv:1355:11
					if (!CVA6Cfg[16471])
						// Trace: core/csr_regfile.sv:1356:13
						mstatus_d[14-:2] = 2'b00;
					if (!CVA6Cfg[16545])
						// Trace: core/csr_regfile.sv:1359:13
						mstatus_d[10-:2] = 2'b00;
					if (!CVA6Cfg[16366]) begin
						// Trace: core/csr_regfile.sv:1362:13
						mstatus_d[1] = 2'b00;
						// Trace: core/csr_regfile.sv:1363:13
						mstatus_d[5] = 2'b00;
						// Trace: core/csr_regfile.sv:1364:13
						mstatus_d[8] = 2'b00;
						// Trace: core/csr_regfile.sv:1365:13
						mstatus_d[18] = 2'b00;
						// Trace: core/csr_regfile.sv:1366:13
						mstatus_d[19] = 2'b00;
						// Trace: core/csr_regfile.sv:1367:13
						mstatus_d[20] = 2'b00;
						// Trace: core/csr_regfile.sv:1368:13
						mstatus_d[22] = 2'b00;
					end
					if (!CVA6Cfg[16365]) begin
						// Trace: core/csr_regfile.sv:1371:13
						mstatus_d[21] = 2'b00;
						// Trace: core/csr_regfile.sv:1372:13
						mstatus_d[17] = 2'b00;
					end
					if (((!CVA6Cfg[16543] & (mstatus_d[12-:2] == 2'b10)) | (!CVA6Cfg[16366] & (mstatus_d[12-:2] == 2'b01))) | (!CVA6Cfg[16365] & (mstatus_d[12-:2] == 2'b00)))
						// Trace: core/csr_regfile.sv:1377:13
						mstatus_d[12-:2] = mstatus_q[12-:2];
					// Trace: core/csr_regfile.sv:1379:11
					mstatus_d[31-:9] = 9'b000000000;
					// Trace: core/csr_regfile.sv:1380:11
					mstatus_d[2] = 1'b0;
					// Trace: core/csr_regfile.sv:1381:11
					mstatus_d[4] = 1'b0;
					// Trace: core/csr_regfile.sv:1382:11
					mstatus_d[0] = 1'b0;
					// Trace: core/csr_regfile.sv:1383:11
					mstatus_d[6] = 1'b0;
					// Trace: core/csr_regfile.sv:1385:11
					flush_o = 1'b1;
				end
				12'h310:
					if (CVA6Cfg[17102-:32] != 32)
						// Trace: core/csr_regfile.sv:1387:54
						update_access_exception = 1'b1;
				12'h301:
					;
				12'h302:
					// Trace: core/csr_regfile.sv:1393:11
					if (CVA6Cfg[16366]) begin
						// Trace: core/csr_regfile.sv:1394:13
						mask = (((((((511 | ((CVA6Cfg[16543] ? 1 : 0) << riscv_ENV_CALL_VSMODE)) | 4096) | 8192) | 32768) | ((CVA6Cfg[16543] ? 1 : 0) << riscv_INSTR_GUEST_PAGE_FAULT)) | ((CVA6Cfg[16543] ? 1 : 0) << riscv_LOAD_GUEST_PAGE_FAULT)) | ((CVA6Cfg[16543] ? 1 : 0) << riscv_VIRTUAL_INSTRUCTION)) | ((CVA6Cfg[16543] ? 1 : 0) << riscv_STORE_GUEST_PAGE_FAULT);
						// Trace: core/csr_regfile.sv:1411:13
						medeleg_d = (medeleg_q & ~mask) | (csr_wdata & mask);
					end
					else
						// Trace: core/csr_regfile.sv:1413:13
						update_access_exception = 1'b1;
				12'h303:
					// Trace: core/csr_regfile.sv:1419:11
					if (CVA6Cfg[16366]) begin
						// Trace: core/csr_regfile.sv:1420:13
						mask = (sv2v_cast_94688(riscv_MIP_SSIP) | sv2v_cast_94688(riscv_MIP_STIP)) | sv2v_cast_94688(riscv_MIP_SEIP);
						// Trace: core/csr_regfile.sv:1423:13
						if (CVA6Cfg[16543])
							// Trace: core/csr_regfile.sv:1424:15
							mideleg_d = ((mideleg_q & ~mask) | (csr_wdata & mask)) | HS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0];
						else
							// Trace: core/csr_regfile.sv:1426:15
							mideleg_d = (mideleg_q & ~mask) | (csr_wdata & mask);
					end
					else
						// Trace: core/csr_regfile.sv:1429:13
						update_access_exception = 1'b1;
				12'h304: begin
					// Trace: core/csr_regfile.sv:1434:11
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1435:13
						mask = (((((HS_DELEG_INTERRUPTS[CVA6Cfg[17102-:32] - 1:0] | sv2v_cast_94688(riscv_MIP_SSIP)) | sv2v_cast_94688(riscv_MIP_STIP)) | sv2v_cast_94688(riscv_MIP_SEIP)) | sv2v_cast_94688(riscv_MIP_MSIP)) | sv2v_cast_94688(riscv_MIP_MTIP)) | sv2v_cast_94688(riscv_MIP_MEIP);
					else
						// Trace: core/csr_regfile.sv:1443:13
						if (CVA6Cfg[16366])
							// Trace: core/csr_regfile.sv:1444:15
							mask = ((((sv2v_cast_94688(riscv_MIP_SSIP) | sv2v_cast_94688(riscv_MIP_STIP)) | sv2v_cast_94688(riscv_MIP_SEIP)) | sv2v_cast_94688(riscv_MIP_MSIP)) | sv2v_cast_94688(riscv_MIP_MTIP)) | sv2v_cast_94688(riscv_MIP_MEIP);
						else
							// Trace: core/csr_regfile.sv:1451:15
							mask = (sv2v_cast_94688(riscv_MIP_MSIP) | sv2v_cast_94688(riscv_MIP_MTIP)) | sv2v_cast_94688(riscv_MIP_MEIP);
					// Trace: core/csr_regfile.sv:1456:11
					mie_d = (mie_q & ~mask) | (csr_wdata & mask);
				end
				12'h305: begin : sv2v_autoblock_4
					// Trace: core/csr_regfile.sv:1460:11
					reg DirVecOnly;
					// Trace: core/csr_regfile.sv:1461:11
					DirVecOnly = (CVA6Cfg[15914] ? 1'b0 : csr_wdata[0]);
					// Trace: core/csr_regfile.sv:1462:11
					mtvec_d = {csr_wdata[CVA6Cfg[17102-:32] - 1:2], 1'b0, DirVecOnly};
					// Trace: core/csr_regfile.sv:1465:11
					if (DirVecOnly)
						// Trace: core/csr_regfile.sv:1465:27
						mtvec_d = {csr_wdata[CVA6Cfg[17102-:32] - 1:8], 7'b0000000, DirVecOnly};
				end
				12'h306:
					// Trace: core/csr_regfile.sv:1468:11
					if (CVA6Cfg[16365])
						// Trace: core/csr_regfile.sv:1468:28
						mcounteren_d = {{CVA6Cfg[17102-:32] - 32 {1'b0}}, csr_wdata[31:0]};
					else
						// Trace: core/csr_regfile.sv:1469:16
						update_access_exception = 1'b1;
				12'h340:
					// Trace: core/csr_regfile.sv:1472:30
					mscratch_d = csr_wdata;
				12'h341:
					// Trace: core/csr_regfile.sv:1473:26
					mepc_d = {csr_wdata[CVA6Cfg[17102-:32] - 1:1], 1'b0};
				12'h342:
					// Trace: core/csr_regfile.sv:1474:28
					mcause_d = csr_wdata;
				12'h343:
					// Trace: core/csr_regfile.sv:1476:11
					if (CVA6Cfg[15915])
						// Trace: core/csr_regfile.sv:1476:31
						mtval_d = csr_wdata;
				12'h34a:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1479:26
						mtinst_d = {{CVA6Cfg[17102-:32] - 32 {1'b0}}, csr_wdata[31:0]};
					else
						// Trace: core/csr_regfile.sv:1480:14
						update_access_exception = 1'b1;
				12'h34b:
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1482:26
						mtval2_d = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1483:14
						update_access_exception = 1'b1;
				12'h344: begin
					// Trace: core/csr_regfile.sv:1485:11
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:1486:13
						mask = ((sv2v_cast_94688(riscv_MIP_SSIP) | sv2v_cast_94688(riscv_MIP_STIP)) | sv2v_cast_94688(riscv_MIP_SEIP)) | sv2v_cast_94688(riscv_MIP_VSSIP);
					else if (CVA6Cfg[16366])
						// Trace: core/csr_regfile.sv:1491:13
						mask = (sv2v_cast_94688(riscv_MIP_SSIP) | sv2v_cast_94688(riscv_MIP_STIP)) | sv2v_cast_94688(riscv_MIP_SEIP);
					else
						// Trace: core/csr_regfile.sv:1495:13
						mask = 1'sb0;
					// Trace: core/csr_regfile.sv:1497:11
					mip_d = (mip_q & ~mask) | (csr_wdata & mask);
				end
				12'h30a:
					if (CVA6Cfg[16365])
						// Trace: core/csr_regfile.sv:1499:46
						fiom_d = csr_wdata[0];
				12'h31a:
					// Trace: core/csr_regfile.sv:1501:11
					if (!CVA6Cfg[16365] || (CVA6Cfg[17102-:32] != 32))
						// Trace: core/csr_regfile.sv:1501:51
						update_access_exception = 1'b1;
				12'h320:
					if (CVA6Cfg[16368])
						// Trace: core/csr_regfile.sv:1505:11
						mcountinhibit_d = {csr_wdata[MHPMCounterNum + 2:2], 1'b0, csr_wdata[0]};
					else
						// Trace: core/csr_regfile.sv:1506:14
						update_access_exception = 1'b1;
				12'hb00:
					// Trace: core/csr_regfile.sv:1508:28
					cycle_d[CVA6Cfg[17102-:32] - 1:0] = csr_wdata;
				12'hb80:
					if (CVA6Cfg[17102-:32] == 32)
						// Trace: core/csr_regfile.sv:1510:33
						cycle_d[63:32] = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1511:14
						update_access_exception = 1'b1;
				12'hb02:
					// Trace: core/csr_regfile.sv:1512:30
					instret_d[CVA6Cfg[17102-:32] - 1:0] = csr_wdata;
				12'hb82:
					if (CVA6Cfg[17102-:32] == 32)
						// Trace: core/csr_regfile.sv:1514:33
						instret_d[63:32] = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1515:14
						update_access_exception = 1'b1;
				12'h323, 12'h324, 12'h325, 12'h326, 12'h327, 12'h328, 12'h329, 12'h32a, 12'h32b, 12'h32c, 12'h32d, 12'h32e, 12'h32f, 12'h330, 12'h331, 12'h332, 12'h333, 12'h334, 12'h335, 12'h336, 12'h337, 12'h338, 12'h339, 12'h33a, 12'h33b, 12'h33c, 12'h33d, 12'h33e, 12'h33f: begin
					// Trace: core/csr_regfile.sv:1546:11
					perf_we_o = 1'b1;
					// Trace: core/csr_regfile.sv:1547:11
					perf_data_o = csr_wdata;
				end
				12'hb03, 12'hb04, 12'hb05, 12'hb06, 12'hb07, 12'hb08, 12'hb09, 12'hb0a, 12'hb0b, 12'hb0c, 12'hb0d, 12'hb0e, 12'hb0f, 12'hb10, 12'hb11, 12'hb12, 12'hb13, 12'hb14, 12'hb15, 12'hb16, 12'hb17, 12'hb18, 12'hb19, 12'hb1a, 12'hb1b, 12'hb1c, 12'hb1d, 12'hb1e, 12'hb1f: begin
					// Trace: core/csr_regfile.sv:1579:11
					perf_we_o = 1'b1;
					// Trace: core/csr_regfile.sv:1580:11
					perf_data_o = csr_wdata;
				end
				12'hb83, 12'hb84, 12'hb85, 12'hb86, 12'hb87, 12'hb88, 12'hb89, 12'hb8a, 12'hb8b, 12'hb8c, 12'hb8d, 12'hb8e, 12'hb8f, 12'hb90, 12'hb91, 12'hb92, 12'hb93, 12'hb94, 12'hb95, 12'hb96, 12'hb97, 12'hb98, 12'hb99, 12'hb9a, 12'hb9b, 12'hb9c, 12'hb9d, 12'hb9e, 12'hb9f: begin
					// Trace: core/csr_regfile.sv:1612:11
					perf_we_o = 1'b1;
					// Trace: core/csr_regfile.sv:1613:11
					if (CVA6Cfg[17102-:32] == 32)
						// Trace: core/csr_regfile.sv:1613:35
						perf_data_o = csr_wdata;
					else
						// Trace: core/csr_regfile.sv:1614:16
						update_access_exception = 1'b1;
				end
				12'h7c1:
					// Trace: core/csr_regfile.sv:1617:28
					dcache_d = {{CVA6Cfg[17102-:32] - 1 {1'b0}}, csr_wdata[0]};
				12'h7c0:
					// Trace: core/csr_regfile.sv:1618:28
					icache_d = {{CVA6Cfg[17102-:32] - 1 {1'b0}}, csr_wdata[0]};
				12'h7c2:
					// Trace: core/csr_regfile.sv:1620:11
					if (CVA6Cfg[16369])
						// Trace: core/csr_regfile.sv:1621:13
						acc_cons_d = {{CVA6Cfg[17102-:32] - 1 {1'b0}}, csr_wdata[0]};
					else
						// Trace: core/csr_regfile.sv:1623:13
						update_access_exception = 1'b1;
				12'h3a0, 12'h3a1, 12'h3a2, 12'h3a3, 12'h3a4, 12'h3a5, 12'h3a6, 12'h3a7, 12'h3a8, 12'h3a9, 12'h3aa, 12'h3ab, 12'h3ac, 12'h3ad, 12'h3ae, 12'h3af: begin : sv2v_autoblock_5
					// Trace: core/csr_regfile.sv:1647:11
					reg [11:0] index;
					index = csr_addr[11:0] - 12'h3a0;
					// Trace: core/csr_regfile.sv:1650:11
					if ((CVA6Cfg[17102-:32] == 64) && (index[0] == 1'b1))
						// Trace: core/csr_regfile.sv:1650:55
						update_access_exception = 1'b1;
					else
						// Trace: core/csr_regfile.sv:1652:13
						begin : sv2v_autoblock_6
							// Trace: core/csr_regfile.sv:1652:18
							reg signed [31:0] i;
							// Trace: core/csr_regfile.sv:1652:18
							for (i = 0; i < (CVA6Cfg[17102-:32] / 8); i = i + 1)
								begin
									// Trace: core/csr_regfile.sv:1653:15
									if (!pmpcfg_q[(((index * 4) + i) * 8) + 7])
										// Trace: core/csr_regfile.sv:1653:48
										pmpcfg_d[((index * 4) + i) * 8+:8] = csr_wdata[i * 8+:8];
								end
						end
				end
				12'h3b0, 12'h3b1, 12'h3b2, 12'h3b3, 12'h3b4, 12'h3b5, 12'h3b6, 12'h3b7, 12'h3b8, 12'h3b9, 12'h3ba, 12'h3bb, 12'h3bc, 12'h3bd, 12'h3be, 12'h3bf, 12'h3c0, 12'h3c1, 12'h3c2, 12'h3c3, 12'h3c4, 12'h3c5, 12'h3c6, 12'h3c7, 12'h3c8, 12'h3c9, 12'h3ca, 12'h3cb, 12'h3cc, 12'h3cd, 12'h3ce, 12'h3cf, 12'h3d0, 12'h3d1, 12'h3d2, 12'h3d3, 12'h3d4, 12'h3d5, 12'h3d6, 12'h3d7, 12'h3d8, 12'h3d9, 12'h3da, 12'h3db, 12'h3dc, 12'h3dd, 12'h3de, 12'h3df, 12'h3e0, 12'h3e1, 12'h3e2, 12'h3e3, 12'h3e4, 12'h3e5, 12'h3e6, 12'h3e7, 12'h3e8, 12'h3e9, 12'h3ea, 12'h3eb, 12'h3ec, 12'h3ed, 12'h3ee, 12'h3ef: begin : sv2v_autoblock_7
					// Trace: core/csr_regfile.sv:1722:11
					reg [11:0] index;
					index = csr_addr[11:0] - 12'h3b0;
					// Trace: core/csr_regfile.sv:1724:11
					if (!pmpcfg_q[(index * 8) + 7] && !(pmpcfg_q[((index + 1) * 8) + 7] && (pmpcfg_q[((index + 1) * 8) + 4-:2] == 2'b01)))
						// Trace: core/csr_regfile.sv:1725:13
						pmpaddr_d[((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3) + (index * ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32]))+:((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])] = csr_wdata[CVA6Cfg[17038-:32] - 3:0];
				end
				12'hd00:
					// Trace: core/csr_regfile.sv:1729:11
					c3_enable_d = csr_wdata;
				default:
					// Trace: core/csr_regfile.sv:1731:18
					update_access_exception = 1'b1;
			endcase
		// Trace: core/csr_regfile.sv:1735:5
		mstatus_d[35-:2] = 2'b10;
		// Trace: core/csr_regfile.sv:1736:5
		mstatus_d[33-:2] = 2'b10;
		if (!CVA6Cfg[16365])
			// Trace: core/csr_regfile.sv:1738:7
			mstatus_d[12-:2] = 2'b11;
		if (CVA6Cfg[16543]) begin
			// Trace: core/csr_regfile.sv:1742:7
			hstatus_d[33-:2] = 2'b10;
			// Trace: core/csr_regfile.sv:1743:7
			vsstatus_d[33-:2] = 2'b10;
		end
		if (CVA6Cfg[16471] && (dirty_fp_state_csr || dirty_fp_state_i)) begin
			// Trace: core/csr_regfile.sv:1747:7
			mstatus_d[14-:2] = 2'b11;
			// Trace: core/csr_regfile.sv:1748:7
			if (CVA6Cfg[16543] && v_q)
				// Trace: core/csr_regfile.sv:1749:9
				vsstatus_d[14-:2] = 2'b11;
		end
		if (CVA6Cfg[16545] && dirty_v_state_i)
			// Trace: core/csr_regfile.sv:1754:7
			mstatus_d[10-:2] = 2'b11;
		if (CVA6Cfg[16366] || CVA6Cfg[16552])
			// Trace: core/csr_regfile.sv:1758:7
			mstatus_d[63] = (mstatus_q[16-:2] == 2'b11) | (mstatus_q[14-:2] == 2'b11);
		else
			// Trace: core/csr_regfile.sv:1760:7
			mstatus_d[63] = 2'b00;
		if (CVA6Cfg[16543])
			// Trace: core/csr_regfile.sv:1763:7
			vsstatus_d[63] = (vsstatus_q[16-:2] == 2'b11) | (vsstatus_q[14-:2] == 2'b11);
		begin : sv2v_autoblock_8
			// Trace: core/csr_regfile.sv:1767:10
			reg signed [31:0] i;
			// Trace: core/csr_regfile.sv:1767:10
			for (i = 0; i < CVA6Cfg[15913-:32]; i = i + 1)
				begin
					// Trace: core/csr_regfile.sv:1767:52
					pmpcfg_d[(i * 8) + 6-:2] = 2'b00;
				end
		end
		if (CVA6Cfg[16471] && csr_write_fflags_i)
			// Trace: core/csr_regfile.sv:1771:7
			fcsr_d[4-:5] = csr_wdata_i[4:0] | fcsr_q[4-:5];
		if (CVA6Cfg[16369])
			// Trace: core/csr_regfile.sv:1781:7
			fcsr_d[4-:5] = fcsr_d[4-:5] | (acc_fflags_ex_valid_i ? acc_fflags_ex_i : 5'b00000);
		// Trace: core/csr_regfile.sv:1788:5
		mip_d[riscv_IRQ_M_EXT] = irq_i[0];
		// Trace: core/csr_regfile.sv:1790:5
		mip_d[riscv_IRQ_M_SOFT] = ipi_i;
		// Trace: core/csr_regfile.sv:1792:5
		mip_d[riscv_IRQ_M_TIMER] = time_irq_i;
		// Trace: core/csr_regfile.sv:1799:5
		trap_to_priv_lvl = 2'b11;
		// Trace: core/csr_regfile.sv:1800:5
		trap_to_v = 1'b0;
		if ((((CVA6Cfg[1321] && !debug_mode_q) && (ex_i[exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] != riscv_DEBUG_REQUEST)) && ex_i[0]) || (!CVA6Cfg[1321] && ex_i[0])) begin
			// Trace: core/csr_regfile.sv:1805:7
			flush_o = 1'b0;
			// Trace: core/csr_regfile.sv:1810:7
			if (CVA6Cfg[16543]) begin
				begin
					// Trace: core/csr_regfile.sv:1811:9
					if (((ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[17102-:32] - 1))] && mideleg_q[ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - ($clog2(CVA6Cfg[17102-:32]) - 1)):(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] - 1)]]) && ~hideleg_q[ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - ($clog2(CVA6Cfg[17102-:32]) - 1)):(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] - 1)]]) || ((~ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[17102-:32] - 1))] && medeleg_q[ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - ($clog2(CVA6Cfg[17102-:32]) - 1)):(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] - 1)]]) && ~hedeleg_q[ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - ($clog2(CVA6Cfg[17102-:32]) - 1)):(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] - 1)]]))
						// Trace: core/csr_regfile.sv:1822:11
						trap_to_priv_lvl = (priv_lvl_o == 2'b11 ? 2'b11 : 2'b01);
					else if ((ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[17102-:32] - 1))] && hideleg_q[ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - ($clog2(CVA6Cfg[17102-:32]) - 1)):(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] - 1)]]) || (~ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[17102-:32] - 1))] && hedeleg_q[ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - ($clog2(CVA6Cfg[17102-:32]) - 1)):(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] - 1)]])) begin
						// Trace: core/csr_regfile.sv:1828:11
						trap_to_priv_lvl = (priv_lvl_o == 2'b11 ? 2'b11 : 2'b01);
						// Trace: core/csr_regfile.sv:1830:11
						trap_to_v = v_q;
					end
				end
			end
			else
				// Trace: core/csr_regfile.sv:1833:9
				if (CVA6Cfg[16366]) begin
					begin
						// Trace: core/csr_regfile.sv:1834:11
						if ((ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[17102-:32] - 1))] && mideleg_q[ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - ($clog2(CVA6Cfg[17102-:32]) - 1)):(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] - 1)]]) || (~ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[17102-:32] - 1))] && medeleg_q[ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - ($clog2(CVA6Cfg[17102-:32]) - 1)):(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] - 1)]]))
							// Trace: core/csr_regfile.sv:1841:13
							trap_to_priv_lvl = (priv_lvl_o == 2'b11 ? 2'b11 : 2'b01);
					end
				end
			if (CVA6Cfg[16366] && (trap_to_priv_lvl == 2'b01)) begin
				begin
					// Trace: core/csr_regfile.sv:1848:9
					if (CVA6Cfg[16543]) begin
						begin
							// Trace: core/csr_regfile.sv:1849:11
							if (trap_to_v) begin
								// Trace: core/csr_regfile.sv:1851:13
								vsstatus_d[1] = 1'b0;
								// Trace: core/csr_regfile.sv:1852:13
								vsstatus_d[5] = vsstatus_q[1];
								// Trace: core/csr_regfile.sv:1854:13
								vsstatus_d[8] = priv_lvl_q[0];
								// Trace: core/csr_regfile.sv:1856:13
								vscause_d = (ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[17102-:32] - 1))] ? {ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[17102-:32] - 1)):(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] - 3)], 2'b01} : ex_i[exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)]);
								// Trace: core/csr_regfile.sv:1858:13
								vsepc_d = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {pc_i[CVA6Cfg[17070-:32] - 1]}}, pc_i};
								// Trace: core/csr_regfile.sv:1860:13
								vstval_d = ex_i[exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) + 1)];
							end
						end
					end
					else begin
						// Trace: core/csr_regfile.sv:1869:11
						mstatus_d[1] = 1'b0;
						// Trace: core/csr_regfile.sv:1870:11
						mstatus_d[5] = mstatus_q[1];
						// Trace: core/csr_regfile.sv:1872:11
						mstatus_d[8] = priv_lvl_q[0];
						// Trace: core/csr_regfile.sv:1874:11
						scause_d = ex_i[exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)];
						// Trace: core/csr_regfile.sv:1876:11
						sepc_d = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {pc_i[CVA6Cfg[17070-:32] - 1]}}, pc_i};
						// Trace: core/csr_regfile.sv:1878:11
						stval_d = ex_i[exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) + 1)];
						// Trace: core/csr_regfile.sv:1886:11
						if (CVA6Cfg[16543]) begin
							// Trace: core/csr_regfile.sv:1887:13
							htinst_d = {{CVA6Cfg[17102-:32] - 32 {1'b0}}, ex_i[33-:32]};
							// Trace: core/csr_regfile.sv:1899:13
							hstatus_d[8] = (v_q ? priv_lvl_q[0] : hstatus_d[8]);
							// Trace: core/csr_regfile.sv:1900:13
							htval_d = {{(CVA6Cfg[17102-:32] - CVA6Cfg[17006-:32]) + 2 {1'b0}}, ex_i[(exception_t_CVA6Cfg[17006-:32] + 33) - ((exception_t_CVA6Cfg[17006-:32] - 1) - (CVA6Cfg[17006-:32] - 1)):(exception_t_CVA6Cfg[17006-:32] + 33) - (exception_t_CVA6Cfg[17006-:32] - 3)]};
							// Trace: core/csr_regfile.sv:1901:13
							hstatus_d[6] = ex_i[1];
							// Trace: core/csr_regfile.sv:1902:13
							hstatus_d[7] = v_q;
						end
					end
				end
			end
			else begin
				// Trace: core/csr_regfile.sv:1908:9
				mstatus_d[3] = 1'b0;
				// Trace: core/csr_regfile.sv:1909:9
				mstatus_d[7] = mstatus_q[3];
				// Trace: core/csr_regfile.sv:1911:9
				mstatus_d[12-:2] = priv_lvl_q;
				// Trace: core/csr_regfile.sv:1912:9
				mcause_d = ex_i[exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)];
				// Trace: core/csr_regfile.sv:1914:9
				mepc_d = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {pc_i[CVA6Cfg[17070-:32] - 1]}}, pc_i};
				// Trace: core/csr_regfile.sv:1916:9
				if (CVA6Cfg[15915])
					// Trace: core/csr_regfile.sv:1917:11
					mtval_d = ex_i[exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) + 1)];
				else
					// Trace: core/csr_regfile.sv:1926:11
					mtval_d = 1'sb0;
				if (CVA6Cfg[16543]) begin
					// Trace: core/csr_regfile.sv:1931:11
					mstatus_d[39] = v_q;
					// Trace: core/csr_regfile.sv:1932:11
					mtinst_d = {{CVA6Cfg[17102-:32] - 32 {1'b0}}, ex_i[33-:32]};
					// Trace: core/csr_regfile.sv:1945:11
					mtval2_d = {{(CVA6Cfg[17102-:32] - CVA6Cfg[17006-:32]) + 2 {1'b0}}, ex_i[(exception_t_CVA6Cfg[17006-:32] + 33) - ((exception_t_CVA6Cfg[17006-:32] - 1) - (CVA6Cfg[17006-:32] - 1)):(exception_t_CVA6Cfg[17006-:32] + 33) - (exception_t_CVA6Cfg[17006-:32] - 3)]};
					// Trace: core/csr_regfile.sv:1946:11
					mstatus_d[38] = ex_i[1];
				end
			end
			// Trace: core/csr_regfile.sv:1950:7
			priv_lvl_d = trap_to_priv_lvl;
			if (CVA6Cfg[16543])
				// Trace: core/csr_regfile.sv:1952:9
				v_d = trap_to_v;
		end
		if (!debug_mode_q) begin
			// Trace: core/csr_regfile.sv:1967:7
			dcsr_d[1-:2] = priv_lvl_o;
			// Trace: core/csr_regfile.sv:1969:7
			dcsr_d[5] = (!CVA6Cfg[16543] ? 1'b0 : v_q);
			// Trace: core/csr_regfile.sv:1973:7
			if ((CVA6Cfg[1321] && ex_i[0]) && (ex_i[exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] == riscv_BREAKPOINT)) begin
				// Trace: core/csr_regfile.sv:1974:9
				dcsr_d[1-:2] = priv_lvl_o;
				// Trace: core/csr_regfile.sv:1976:9
				dcsr_d[5] = (!CVA6Cfg[16543] ? 1'b0 : v_q);
				// Trace: core/csr_regfile.sv:1978:9
				(* full_case, parallel_case *)
				case (priv_lvl_o)
					2'b11: begin
						// Trace: core/csr_regfile.sv:1980:13
						debug_mode_d = dcsr_q[15];
						// Trace: core/csr_regfile.sv:1981:13
						set_debug_pc_o = dcsr_q[15];
					end
					2'b01:
						// Trace: core/csr_regfile.sv:1984:13
						if (CVA6Cfg[16366]) begin
							// Trace: core/csr_regfile.sv:1985:15
							debug_mode_d = (CVA6Cfg[16543] && v_q ? dcsr_q[17] : dcsr_q[13]);
							// Trace: core/csr_regfile.sv:1986:15
							set_debug_pc_o = (CVA6Cfg[16543] && v_q ? dcsr_q[17] : dcsr_q[13]);
						end
					2'b00:
						// Trace: core/csr_regfile.sv:1990:13
						if (CVA6Cfg[16365]) begin
							// Trace: core/csr_regfile.sv:1991:15
							debug_mode_d = (CVA6Cfg[16543] && v_q ? dcsr_q[16] : dcsr_q[12]);
							// Trace: core/csr_regfile.sv:1992:15
							set_debug_pc_o = (CVA6Cfg[16543] && v_q ? dcsr_q[16] : dcsr_q[12]);
						end
					default:
						;
				endcase
				// Trace: core/csr_regfile.sv:1998:9
				dpc_d = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {pc_i[CVA6Cfg[17070-:32] - 1]}}, pc_i};
				// Trace: core/csr_regfile.sv:1999:9
				dcsr_d[8-:3] = ariane_pkg_CauseBreakpoint;
			end
			if ((CVA6Cfg[1321] && ex_i[0]) && (ex_i[exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] == riscv_DEBUG_REQUEST)) begin
				// Trace: core/csr_regfile.sv:2004:9
				dcsr_d[1-:2] = priv_lvl_o;
				// Trace: core/csr_regfile.sv:2005:9
				dcsr_d[5] = (!CVA6Cfg[16543] ? 1'b0 : v_q);
				// Trace: core/csr_regfile.sv:2007:9
				dpc_d = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {pc_i[CVA6Cfg[17070-:32] - 1]}}, pc_i};
				// Trace: core/csr_regfile.sv:2009:9
				debug_mode_d = 1'b1;
				// Trace: core/csr_regfile.sv:2011:9
				set_debug_pc_o = 1'b1;
				// Trace: core/csr_regfile.sv:2013:9
				dcsr_d[8-:3] = ariane_pkg_CauseRequest;
			end
			if ((CVA6Cfg[1321] && dcsr_q[2]) && commit_ack_i[0]) begin
				// Trace: core/csr_regfile.sv:2018:9
				dcsr_d[1-:2] = priv_lvl_o;
				// Trace: core/csr_regfile.sv:2019:9
				dcsr_d[5] = (!CVA6Cfg[16543] ? 1'b0 : v_q);
				// Trace: core/csr_regfile.sv:2021:9
				if (commit_instr_i[((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? 0 + ((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? 27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4)))) : (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) - (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4)))))) : ((0 + ((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? 27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4)))) : (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) - (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4))))))) + ((27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4))))) >= (23 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 5))))) ? ((27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4))))) - (23 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 5)))))) + 1 : ((23 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 5))))) - (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4)))))) + 1)) - 1)-:((27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4))))) >= (23 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 5))))) ? ((27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4))))) - (23 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 5)))))) + 1 : ((23 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 5))))) - (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4)))))) + 1)] == 4'd4)
					// Trace: core/csr_regfile.sv:2023:11
					dpc_d = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {commit_instr_i[0 + ((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4) - (((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) - 1) - ((scoreboard_entry_t_CVA6Cfg[17070-:32] - 1) - ((scoreboard_entry_t_CVA6Cfg[17070-:32] - 1) - (CVA6Cfg[17070-:32] - 1)))) : (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) - (((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4) - (((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) - 1) - ((scoreboard_entry_t_CVA6Cfg[17070-:32] - 1) - ((scoreboard_entry_t_CVA6Cfg[17070-:32] - 1) - (CVA6Cfg[17070-:32] - 1))))))]}}, commit_instr_i[((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? 0 + ((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4) - (((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) - 1) - (scoreboard_entry_t_CVA6Cfg[17070-:32] - 1)) : (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) - (((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4) - (((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) - 1) - (scoreboard_entry_t_CVA6Cfg[17070-:32] - 1)))) : ((0 + ((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4) - (((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) - 1) - (scoreboard_entry_t_CVA6Cfg[17070-:32] - 1)) : (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) - (((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4) - (((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) - 1) - (scoreboard_entry_t_CVA6Cfg[17070-:32] - 1))))) + scoreboard_entry_t_CVA6Cfg[17070-:32]) - 1)-:scoreboard_entry_t_CVA6Cfg[17070-:32]]};
				else if (ex_i[0])
					// Trace: core/csr_regfile.sv:2029:11
					dpc_d = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {1'b0}}, trap_vector_base_o};
				else if (eret_o)
					// Trace: core/csr_regfile.sv:2032:11
					dpc_d = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {1'b0}}, epc_o};
				else
					// Trace: core/csr_regfile.sv:2035:11
					dpc_d = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {commit_instr_i[0 + ((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? (scoreboard_entry_t_CVA6Cfg[17070-:32] + (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4))))))) - ((scoreboard_entry_t_CVA6Cfg[17070-:32] - 1) - (CVA6Cfg[17070-:32] - 1)) : (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) - ((scoreboard_entry_t_CVA6Cfg[17070-:32] + (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4))))))) - ((scoreboard_entry_t_CVA6Cfg[17070-:32] - 1) - (CVA6Cfg[17070-:32] - 1))))]}}, commit_instr_i[((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? 0 + ((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? scoreboard_entry_t_CVA6Cfg[17070-:32] + (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4)))))) : (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) - (scoreboard_entry_t_CVA6Cfg[17070-:32] + (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4)))))))) : ((0 + ((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? scoreboard_entry_t_CVA6Cfg[17070-:32] + (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4)))))) : (((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) - (scoreboard_entry_t_CVA6Cfg[17070-:32] + (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4))))))))) + ((scoreboard_entry_t_CVA6Cfg[17070-:32] + (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4))))))) >= (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 5)))))) ? ((scoreboard_entry_t_CVA6Cfg[17070-:32] + (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4))))))) - (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 5))))))) + 1 : ((scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 5)))))) - (scoreboard_entry_t_CVA6Cfg[17070-:32] + (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4)))))))) + 1)) - 1)-:((scoreboard_entry_t_CVA6Cfg[17070-:32] + (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4))))))) >= (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 5)))))) ? ((scoreboard_entry_t_CVA6Cfg[17070-:32] + (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4))))))) - (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 5))))))) + 1 : ((scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 5)))))) - (scoreboard_entry_t_CVA6Cfg[17070-:32] + (scoreboard_entry_t_CVA6Cfg[16503-:32] + (27 + (scoreboard_entry_t_CVA6Cfg[17102-:32] + (4 + (((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33)) + ((3 + scoreboard_entry_t_CVA6Cfg[17070-:32]) + 4)))))))) + 1)] + (commit_instr_i[0 + ((((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4) >= 0 ? 4 : ((((((scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_CVA6Cfg[17070-:32])) + 0)] ? 'h2 : 'h4)};
				// Trace: core/csr_regfile.sv:2040:9
				debug_mode_d = 1'b1;
				// Trace: core/csr_regfile.sv:2041:9
				set_debug_pc_o = 1'b1;
				// Trace: core/csr_regfile.sv:2042:9
				dcsr_d[8-:3] = ariane_pkg_CauseSingleStep;
			end
		end
		if (((CVA6Cfg[1321] && debug_mode_q) && ex_i[0]) && (ex_i[exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] == riscv_BREAKPOINT))
			// Trace: core/csr_regfile.sv:2047:7
			set_debug_pc_o = 1'b1;
		if (CVA6Cfg[16543]) begin
			// Trace: core/csr_regfile.sv:2056:7
			if (((mprv && (mstatus_q[39] == 1'b0)) && (sv2v_cast_4(satp_q[CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))-:((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) >= (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) ? ((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0))) + 1 : ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) - (CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)))) + 1)]) == CVA6Cfg[355-:4])) && (mstatus_q[12-:2] != 2'b11))
				// Trace: core/csr_regfile.sv:2057:9
				en_ld_st_translation_d = 1'b1;
			else if (mprv && (mstatus_q[39] == 1'b1)) begin
				begin
					// Trace: core/csr_regfile.sv:2059:9
					if (sv2v_cast_4(vsatp_q[CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))-:((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) >= (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) ? ((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0))) + 1 : ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) - (CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)))) + 1)]) == CVA6Cfg[355-:4])
						// Trace: core/csr_regfile.sv:2060:11
						en_ld_st_translation_d = 1'b1;
					else
						// Trace: core/csr_regfile.sv:2062:11
						en_ld_st_translation_d = 1'b0;
				end
			end
			else
				// Trace: core/csr_regfile.sv:2065:9
				en_ld_st_translation_d = en_translation_o;
			if (mprv && (mstatus_q[39] == 1'b1)) begin
				begin
					// Trace: core/csr_regfile.sv:2069:9
					if (sv2v_cast_4(hgatp_q[CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))-:((CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))) >= (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0))) ? ((CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))) - (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0)))) + 1 : ((2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0))) - (CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1))))) + 1)]) == CVA6Cfg[355-:4])
						// Trace: core/csr_regfile.sv:2070:11
						en_ld_st_g_translation_d = 1'b1;
					else
						// Trace: core/csr_regfile.sv:2072:11
						en_ld_st_g_translation_d = 1'b0;
				end
			end
			else
				// Trace: core/csr_regfile.sv:2075:9
				en_ld_st_g_translation_d = en_g_translation_o;
			if (csr_hs_ld_st_inst_i)
				// Trace: core/csr_regfile.sv:2078:32
				ld_st_priv_lvl_o = sv2v_cast_2(hstatus_q[8]);
			else
				// Trace: core/csr_regfile.sv:2079:12
				ld_st_priv_lvl_o = (mprv ? mstatus_q[12-:2] : priv_lvl_o);
			// Trace: core/csr_regfile.sv:2081:7
			ld_st_v_o = (mprv ? mstatus_q[39] : v_q) || csr_hs_ld_st_inst_i;
			// Trace: core/csr_regfile.sv:2083:7
			en_ld_st_translation_o = (en_ld_st_translation_q && !csr_hs_ld_st_inst_i) || ((sv2v_cast_4(vsatp_q[CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))-:((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) >= (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) ? ((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0))) + 1 : ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) - (CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)))) + 1)]) == CVA6Cfg[355-:4]) && csr_hs_ld_st_inst_i);
			// Trace: core/csr_regfile.sv:2085:7
			en_ld_st_g_translation_o = (en_ld_st_g_translation_q && !csr_hs_ld_st_inst_i) || ((csr_hs_ld_st_inst_i && (sv2v_cast_4(hgatp_q[CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))-:((CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))) >= (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0))) ? ((CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))) - (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0)))) + 1 : ((2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0))) - (CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1))))) + 1)]) == CVA6Cfg[355-:4])) && csr_hs_ld_st_inst_i);
		end
		else begin
			// Trace: core/csr_regfile.sv:2087:7
			if ((((CVA6Cfg[16367] && mprv) && CVA6Cfg[16366]) && (sv2v_cast_4(satp_q[CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))-:((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) >= (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) ? ((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0))) + 1 : ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) - (CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)))) + 1)]) == CVA6Cfg[355-:4])) && (mstatus_q[12-:2] != 2'b11))
				// Trace: core/csr_regfile.sv:2088:9
				en_ld_st_translation_d = 1'b1;
			else
				// Trace: core/csr_regfile.sv:2090:9
				en_ld_st_translation_d = en_translation_o;
			if (CVA6Cfg[16365])
				// Trace: core/csr_regfile.sv:2093:9
				ld_st_priv_lvl_o = (mprv ? mstatus_q[12-:2] : priv_lvl_o);
			else
				// Trace: core/csr_regfile.sv:2095:9
				ld_st_priv_lvl_o = priv_lvl_o;
			// Trace: core/csr_regfile.sv:2097:7
			en_ld_st_translation_o = en_ld_st_translation_q;
			// Trace: core/csr_regfile.sv:2098:7
			ld_st_v_o = 1'b0;
			// Trace: core/csr_regfile.sv:2099:7
			en_ld_st_g_translation_o = 1'b0;
		end
		if (mret) begin
			// Trace: core/csr_regfile.sv:2108:7
			eret_o = 1'b1;
			// Trace: core/csr_regfile.sv:2111:7
			mstatus_d[3] = mstatus_q[7];
			// Trace: core/csr_regfile.sv:2113:7
			priv_lvl_d = mstatus_q[12-:2];
			// Trace: core/csr_regfile.sv:2114:7
			mstatus_d[12-:2] = 2'b11;
			// Trace: core/csr_regfile.sv:2115:7
			if (CVA6Cfg[16365])
				// Trace: core/csr_regfile.sv:2117:9
				mstatus_d[12-:2] = 2'b00;
			// Trace: core/csr_regfile.sv:2120:7
			mstatus_d[7] = 1'b1;
			if (CVA6Cfg[16543]) begin
				// Trace: core/csr_regfile.sv:2123:9
				v_d = mstatus_q[39];
				// Trace: core/csr_regfile.sv:2125:9
				mstatus_d[39] = 1'b0;
				// Trace: core/csr_regfile.sv:2126:9
				if (mstatus_q[12-:2] != 2'b11)
					// Trace: core/csr_regfile.sv:2126:49
					mstatus_d[17] = 1'b0;
			end
		end
		if ((CVA6Cfg[16366] && sret) && ((CVA6Cfg[16543] && !v_q) || !CVA6Cfg[16543])) begin
			// Trace: core/csr_regfile.sv:2132:7
			eret_o = 1'b1;
			// Trace: core/csr_regfile.sv:2134:7
			mstatus_d[1] = mstatus_q[5];
			// Trace: core/csr_regfile.sv:2136:7
			priv_lvl_d = sv2v_cast_2({1'b0, mstatus_q[8]});
			// Trace: core/csr_regfile.sv:2138:7
			mstatus_d[8] = 1'b0;
			// Trace: core/csr_regfile.sv:2140:7
			mstatus_d[5] = 1'b1;
			// Trace: core/csr_regfile.sv:2141:7
			if (CVA6Cfg[16543]) begin
				// Trace: core/csr_regfile.sv:2143:9
				v_d = hstatus_q[7];
				// Trace: core/csr_regfile.sv:2145:9
				hstatus_d[7] = 1'b0;
				// Trace: core/csr_regfile.sv:2146:9
				mstatus_d[17] = 1'b0;
			end
		end
		if (CVA6Cfg[16543]) begin
			begin
				// Trace: core/csr_regfile.sv:2151:7
				if (sret && v_q) begin
					// Trace: core/csr_regfile.sv:2153:9
					eret_o = 1'b1;
					// Trace: core/csr_regfile.sv:2155:9
					vsstatus_d[1] = vsstatus_q[5];
					// Trace: core/csr_regfile.sv:2157:9
					priv_lvl_d = sv2v_cast_2({1'b0, vsstatus_q[8]});
					// Trace: core/csr_regfile.sv:2159:9
					vsstatus_d[8] = 1'b0;
					// Trace: core/csr_regfile.sv:2161:9
					vsstatus_d[5] = 1'b1;
				end
			end
		end
		if (CVA6Cfg[1321]) begin
			begin
				// Trace: core/csr_regfile.sv:2167:7
				if (dret) begin
					// Trace: core/csr_regfile.sv:2169:9
					eret_o = 1'b1;
					// Trace: core/csr_regfile.sv:2171:9
					priv_lvl_d = sv2v_cast_2(dcsr_q[1-:2]);
					// Trace: core/csr_regfile.sv:2172:9
					if (CVA6Cfg[16543])
						// Trace: core/csr_regfile.sv:2174:11
						v_d = dcsr_q[5];
					// Trace: core/csr_regfile.sv:2177:9
					debug_mode_d = 1'b0;
				end
			end
		end
	end
	// Trace: core/csr_regfile.sv:2185:3
	always @(*) begin : csr_op_logic
		if (_sv2v_0)
			;
		// Trace: core/csr_regfile.sv:2186:5
		csr_wdata = csr_wdata_i;
		// Trace: core/csr_regfile.sv:2187:5
		csr_we = 1'b1;
		// Trace: core/csr_regfile.sv:2188:5
		csr_read = 1'b1;
		// Trace: core/csr_regfile.sv:2189:5
		mret = 1'b0;
		// Trace: core/csr_regfile.sv:2190:5
		sret = 1'b0;
		// Trace: core/csr_regfile.sv:2191:5
		dret = 1'b0;
		// Trace: core/csr_regfile.sv:2193:5
		(* full_case, parallel_case *)
		case (csr_op_i)
			8'd33:
				// Trace: core/csr_regfile.sv:2194:18
				csr_wdata = csr_wdata_i;
			8'd35:
				// Trace: core/csr_regfile.sv:2195:18
				csr_wdata = csr_wdata_i | csr_rdata;
			8'd36:
				// Trace: core/csr_regfile.sv:2196:18
				csr_wdata = ~csr_wdata_i & csr_rdata;
			8'd34:
				// Trace: core/csr_regfile.sv:2197:18
				csr_we = 1'b0;
			8'd23: begin
				// Trace: core/csr_regfile.sv:2200:9
				csr_we = 1'b0;
				// Trace: core/csr_regfile.sv:2201:9
				csr_read = 1'b0;
				// Trace: core/csr_regfile.sv:2202:9
				mret = 1'b1;
			end
			default:
				// Trace: core/csr_regfile.sv:2205:9
				if (CVA6Cfg[16366] && (csr_op_i == 8'd24)) begin
					// Trace: core/csr_regfile.sv:2207:11
					csr_we = 1'b0;
					// Trace: core/csr_regfile.sv:2208:11
					csr_read = 1'b0;
					// Trace: core/csr_regfile.sv:2209:11
					sret = 1'b1;
				end
				else if (CVA6Cfg[1321] && (csr_op_i == 8'd25)) begin
					// Trace: core/csr_regfile.sv:2212:11
					csr_we = 1'b0;
					// Trace: core/csr_regfile.sv:2213:11
					csr_read = 1'b0;
					// Trace: core/csr_regfile.sv:2214:11
					dret = 1'b1;
				end
				else begin
					// Trace: core/csr_regfile.sv:2216:11
					csr_we = 1'b0;
					// Trace: core/csr_regfile.sv:2217:11
					csr_read = 1'b0;
				end
		endcase
		if (privilege_violation) begin
			// Trace: core/csr_regfile.sv:2223:7
			csr_we = 1'b0;
			// Trace: core/csr_regfile.sv:2224:7
			csr_read = 1'b0;
		end
	end
	// Trace: core/csr_regfile.sv:2228:3
	assign irq_ctrl_o[irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)))-:((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)))) >= (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 2))) ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)))) - (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 2)))) + 1 : ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 2))) - (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))))) + 1)] = mie_q;
	// Trace: core/csr_regfile.sv:2229:3
	assign irq_ctrl_o[irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))-:((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) >= (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 2)) ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) - (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 2))) + 1 : ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 2)) - (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)))) + 1)] = mip_q;
	// Trace: core/csr_regfile.sv:2230:3
	generate
		if (CVA6Cfg[16543]) begin : genblk2
			// Trace: core/csr_regfile.sv:2231:5
			assign irq_ctrl_o[1] = (v_q ? vsstatus_q[1] : mstatus_q[1]);
		end
		else begin : genblk2
			// Trace: core/csr_regfile.sv:2233:5
			assign irq_ctrl_o[1] = mstatus_q[1];
		end
	endgenerate
	// Trace: core/csr_regfile.sv:2235:3
	assign irq_ctrl_o[irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)-:((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) >= (irq_ctrl_t_CVA6Cfg[17102-:32] + 2) ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - (irq_ctrl_t_CVA6Cfg[17102-:32] + 2)) + 1 : ((irq_ctrl_t_CVA6Cfg[17102-:32] + 2) - (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1)] = (CVA6Cfg[16366] ? mideleg_q : {((((((irq_ctrl_t_CVA6Cfg[17102-:32] + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + 1) >= 0 ? irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1) : ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) >= (irq_ctrl_t_CVA6Cfg[17102-:32] + 2) ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - (irq_ctrl_t_CVA6Cfg[17102-:32] + 2)) + 1 : ((irq_ctrl_t_CVA6Cfg[17102-:32] + 2) - (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1)) + 1) >= (((((irq_ctrl_t_CVA6Cfg[17102-:32] + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + 1) >= 0 ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) >= (irq_ctrl_t_CVA6Cfg[17102-:32] + 2) ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - (irq_ctrl_t_CVA6Cfg[17102-:32] + 2)) + 1 : ((irq_ctrl_t_CVA6Cfg[17102-:32] + 2) - (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1)) + 1 : irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) ? ((((((irq_ctrl_t_CVA6Cfg[17102-:32] + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + 1) >= 0 ? irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1) : ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) >= (irq_ctrl_t_CVA6Cfg[17102-:32] + 2) ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - (irq_ctrl_t_CVA6Cfg[17102-:32] + 2)) + 1 : ((irq_ctrl_t_CVA6Cfg[17102-:32] + 2) - (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1)) + 1) - (((((irq_ctrl_t_CVA6Cfg[17102-:32] + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + 1) >= 0 ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) >= (irq_ctrl_t_CVA6Cfg[17102-:32] + 2) ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - (irq_ctrl_t_CVA6Cfg[17102-:32] + 2)) + 1 : ((irq_ctrl_t_CVA6Cfg[17102-:32] + 2) - (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1)) + 1 : irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1 : ((((((irq_ctrl_t_CVA6Cfg[17102-:32] + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + 1) >= 0 ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) >= (irq_ctrl_t_CVA6Cfg[17102-:32] + 2) ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - (irq_ctrl_t_CVA6Cfg[17102-:32] + 2)) + 1 : ((irq_ctrl_t_CVA6Cfg[17102-:32] + 2) - (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1)) + 1 : irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - (((((irq_ctrl_t_CVA6Cfg[17102-:32] + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + 1) >= 0 ? irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1) : ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) >= (irq_ctrl_t_CVA6Cfg[17102-:32] + 2) ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) - (irq_ctrl_t_CVA6Cfg[17102-:32] + 2)) + 1 : ((irq_ctrl_t_CVA6Cfg[17102-:32] + 2) - (irq_ctrl_t_CVA6Cfg[17102-:32] + (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1)) + 1)) + 1) {1'sb0}});
	// Trace: core/csr_regfile.sv:2236:3
	assign irq_ctrl_o[irq_ctrl_t_CVA6Cfg[17102-:32] + 1-:((irq_ctrl_t_CVA6Cfg[17102-:32] + 1) >= 2 ? irq_ctrl_t_CVA6Cfg[17102-:32] + 0 : 3 - (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))] = (CVA6Cfg[16543] ? hideleg_q : {((((((irq_ctrl_t_CVA6Cfg[17102-:32] + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + 1) >= 0 ? irq_ctrl_t_CVA6Cfg[17102-:32] + 1 : ((irq_ctrl_t_CVA6Cfg[17102-:32] + 1) - ((irq_ctrl_t_CVA6Cfg[17102-:32] + 1) >= 2 ? irq_ctrl_t_CVA6Cfg[17102-:32] + 0 : 3 - (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1) >= (((((irq_ctrl_t_CVA6Cfg[17102-:32] + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + 1) >= 0 ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + 1) - ((irq_ctrl_t_CVA6Cfg[17102-:32] + 1) >= 2 ? irq_ctrl_t_CVA6Cfg[17102-:32] + 0 : 3 - (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1 : irq_ctrl_t_CVA6Cfg[17102-:32] + 1) ? ((((((irq_ctrl_t_CVA6Cfg[17102-:32] + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + 1) >= 0 ? irq_ctrl_t_CVA6Cfg[17102-:32] + 1 : ((irq_ctrl_t_CVA6Cfg[17102-:32] + 1) - ((irq_ctrl_t_CVA6Cfg[17102-:32] + 1) >= 2 ? irq_ctrl_t_CVA6Cfg[17102-:32] + 0 : 3 - (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1) - (((((irq_ctrl_t_CVA6Cfg[17102-:32] + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + 1) >= 0 ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + 1) - ((irq_ctrl_t_CVA6Cfg[17102-:32] + 1) >= 2 ? irq_ctrl_t_CVA6Cfg[17102-:32] + 0 : 3 - (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1 : irq_ctrl_t_CVA6Cfg[17102-:32] + 1)) + 1 : ((((((irq_ctrl_t_CVA6Cfg[17102-:32] + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + 1) >= 0 ? ((irq_ctrl_t_CVA6Cfg[17102-:32] + 1) - ((irq_ctrl_t_CVA6Cfg[17102-:32] + 1) >= 2 ? irq_ctrl_t_CVA6Cfg[17102-:32] + 0 : 3 - (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1 : irq_ctrl_t_CVA6Cfg[17102-:32] + 1) - (((((irq_ctrl_t_CVA6Cfg[17102-:32] + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + irq_ctrl_t_CVA6Cfg[17102-:32]) + 1) >= 0 ? irq_ctrl_t_CVA6Cfg[17102-:32] + 1 : ((irq_ctrl_t_CVA6Cfg[17102-:32] + 1) - ((irq_ctrl_t_CVA6Cfg[17102-:32] + 1) >= 2 ? irq_ctrl_t_CVA6Cfg[17102-:32] + 0 : 3 - (irq_ctrl_t_CVA6Cfg[17102-:32] + 1))) + 1)) + 1) {1'sb0}});
	// Trace: core/csr_regfile.sv:2237:3
	assign irq_ctrl_o[0] = (~(CVA6Cfg[1321] & debug_mode_q) & (~CVA6Cfg[1321] | (~dcsr_q[2] | dcsr_q[11]))) & ((mstatus_q[3] & (priv_lvl_o == 2'b11)) | (CVA6Cfg[16365] & (priv_lvl_o != 2'b11)));
	// Trace: core/csr_regfile.sv:2244:3
	always @(*) begin : privilege_check
		if (_sv2v_0)
			;
		// Trace: core/csr_regfile.sv:2245:5
		if (CVA6Cfg[16543]) begin : sv2v_autoblock_9
			// Trace: core/csr_regfile.sv:2246:7
			reg [1:0] access_priv;
			// Trace: core/csr_regfile.sv:2247:7
			reg [1:0] curr_priv;
			// Trace: core/csr_regfile.sv:2248:7
			reg [SELECT_COUNTER_WIDTH - 1:0] sel_cnt_en;
			// Trace: core/csr_regfile.sv:2250:7
			access_priv = ((priv_lvl_o == 2'b01) && !v_q ? 2'b10 : priv_lvl_o);
			// Trace: core/csr_regfile.sv:2251:7
			curr_priv = priv_lvl_o;
			// Trace: core/csr_regfile.sv:2252:7
			sel_cnt_en = {{SELECT_COUNTER_WIDTH - 5 {1'b0}}, csr_addr_i[4:0]};
			// Trace: core/csr_regfile.sv:2256:7
			privilege_violation = 1'b0;
			// Trace: core/csr_regfile.sv:2257:7
			virtual_privilege_violation = 1'b0;
			// Trace: core/csr_regfile.sv:2260:7
			if (|{csr_op_i == 8'd33, csr_op_i == 8'd35, csr_op_i == 8'd36, csr_op_i == 8'd34}) begin
				// Trace: core/csr_regfile.sv:2261:9
				if (access_priv < csr_addr[9-:2]) begin
					begin
						// Trace: core/csr_regfile.sv:2262:11
						if (v_q && (csr_addr[9-:2] <= 2'b10))
							// Trace: core/csr_regfile.sv:2263:13
							virtual_privilege_violation = 1'b1;
						else
							// Trace: core/csr_regfile.sv:2264:16
							privilege_violation = 1'b1;
					end
				end
				if ((!CVA6Cfg[1321] && (csr_addr_i[11:4] == 8'h7b)) || ((CVA6Cfg[1321] && (csr_addr_i[11:4] == 8'h7b)) && !debug_mode_q))
					// Trace: core/csr_regfile.sv:2268:11
					privilege_violation = 1'b1;
				if (CVA6Cfg[16536]) begin
					begin
						// Trace: core/csr_regfile.sv:2273:11
						if (((12'hc03 <= csr_addr_i) && (12'hc1f >= csr_addr_i)) | ((12'hc83 <= csr_addr_i) && (12'hc9f >= csr_addr_i))) begin
							begin
								// Trace: core/csr_regfile.sv:2275:13
								if ((curr_priv == 2'b01) && CVA6Cfg[16366]) begin
									// Trace: core/csr_regfile.sv:2276:15
									virtual_privilege_violation = (v_q & mcounteren_q[sel_cnt_en]) & ~hcounteren_q[sel_cnt_en];
									// Trace: core/csr_regfile.sv:2277:15
									privilege_violation = ~mcounteren_q[sel_cnt_en];
								end
								else if ((priv_lvl_o == 2'b00) && CVA6Cfg[16365]) begin
									// Trace: core/csr_regfile.sv:2279:15
									virtual_privilege_violation = (v_q & mcounteren_q[sel_cnt_en]) & ~hcounteren_q[sel_cnt_en];
									// Trace: core/csr_regfile.sv:2280:15
									if (v_q)
										// Trace: core/csr_regfile.sv:2281:17
										privilege_violation = (~mcounteren_q[sel_cnt_en] & ~scounteren_q[sel_cnt_en]) & hcounteren_q[sel_cnt_en];
									else
										// Trace: core/csr_regfile.sv:2283:17
										privilege_violation = ~mcounteren_q[sel_cnt_en] & ~scounteren_q[sel_cnt_en];
								end
								else if (priv_lvl_o == 2'b11)
									// Trace: core/csr_regfile.sv:2286:15
									privilege_violation = 1'b0;
							end
						end
					end
				end
				if (CVA6Cfg[16537]) begin
					begin
						// Trace: core/csr_regfile.sv:2291:11
						if (((12'hc00 <= csr_addr_i) && (12'hc02 >= csr_addr_i)) | ((12'hc80 <= csr_addr_i) && (12'hc82 >= csr_addr_i))) begin
							begin
								// Trace: core/csr_regfile.sv:2293:13
								if ((curr_priv == 2'b01) && CVA6Cfg[16366]) begin
									// Trace: core/csr_regfile.sv:2294:15
									virtual_privilege_violation = (v_q & mcounteren_q[sel_cnt_en]) & ~hcounteren_q[sel_cnt_en];
									// Trace: core/csr_regfile.sv:2295:15
									privilege_violation = ~mcounteren_q[sel_cnt_en];
								end
								else if ((priv_lvl_o == 2'b00) && CVA6Cfg[16365]) begin
									// Trace: core/csr_regfile.sv:2297:15
									virtual_privilege_violation = (v_q & mcounteren_q[sel_cnt_en]) & ~hcounteren_q[sel_cnt_en];
									// Trace: core/csr_regfile.sv:2298:15
									if (v_q)
										// Trace: core/csr_regfile.sv:2299:17
										privilege_violation = (~mcounteren_q[sel_cnt_en] & ~scounteren_q[sel_cnt_en]) & hcounteren_q[sel_cnt_en];
									else
										// Trace: core/csr_regfile.sv:2301:17
										privilege_violation = ~mcounteren_q[sel_cnt_en] & ~scounteren_q[sel_cnt_en];
								end
								else if (priv_lvl_o == 2'b11)
									// Trace: core/csr_regfile.sv:2304:15
									privilege_violation = 1'b0;
							end
						end
					end
				end
			end
		end
		else begin
			// Trace: core/csr_regfile.sv:2313:7
			privilege_violation = 1'b0;
			// Trace: core/csr_regfile.sv:2316:7
			if (|{csr_op_i == 8'd33, csr_op_i == 8'd35, csr_op_i == 8'd36, csr_op_i == 8'd34}) begin
				// Trace: core/csr_regfile.sv:2317:9
				if (CVA6Cfg[16365] && (sv2v_cast_2(priv_lvl_o & csr_addr[9-:2]) != csr_addr[9-:2]))
					// Trace: core/csr_regfile.sv:2318:11
					privilege_violation = 1'b1;
				if ((!CVA6Cfg[1321] && (csr_addr_i[11:4] == 8'h7b)) || ((CVA6Cfg[1321] && (csr_addr_i[11:4] == 8'h7b)) && !debug_mode_q))
					// Trace: core/csr_regfile.sv:2322:11
					privilege_violation = 1'b1;
				if (CVA6Cfg[16536]) begin
					begin
						// Trace: core/csr_regfile.sv:2327:11
						if (((12'hc03 <= csr_addr_i) && (12'hc1f >= csr_addr_i)) | ((12'hc83 <= csr_addr_i) && (12'hc9f >= csr_addr_i))) begin
							begin
								// Trace: core/csr_regfile.sv:2329:13
								if ((priv_lvl_o == 2'b01) && CVA6Cfg[16366])
									// Trace: core/csr_regfile.sv:2330:15
									privilege_violation = ~mcounteren_q[csr_addr_i[4:0]];
								else if ((priv_lvl_o == 2'b00) && CVA6Cfg[16365])
									// Trace: core/csr_regfile.sv:2332:15
									privilege_violation = ~mcounteren_q[csr_addr_i[4:0]] | ~scounteren_q[csr_addr_i[4:0]];
								else if (priv_lvl_o == 2'b11)
									// Trace: core/csr_regfile.sv:2334:15
									privilege_violation = 1'b0;
							end
						end
					end
				end
				if (CVA6Cfg[16537]) begin
					begin
						// Trace: core/csr_regfile.sv:2339:11
						if (((12'hc00 <= csr_addr_i) && (12'hc02 >= csr_addr_i)) | ((12'hc80 <= csr_addr_i) && (12'hc82 >= csr_addr_i))) begin
							begin
								// Trace: core/csr_regfile.sv:2341:13
								if ((priv_lvl_o == 2'b01) && CVA6Cfg[16366])
									// Trace: core/csr_regfile.sv:2342:15
									privilege_violation = ~mcounteren_q[csr_addr_i[4:0]];
								else if ((priv_lvl_o == 2'b00) && CVA6Cfg[16365])
									// Trace: core/csr_regfile.sv:2344:15
									privilege_violation = ~mcounteren_q[csr_addr_i[4:0]] | ~scounteren_q[csr_addr_i[4:0]];
								else if (priv_lvl_o == 2'b11)
									// Trace: core/csr_regfile.sv:2346:15
									privilege_violation = 1'b0;
							end
						end
					end
				end
			end
		end
	end
	// Trace: core/csr_regfile.sv:2356:3
	always @(*) begin : exception_ctrl
		if (_sv2v_0)
			;
		// Trace: core/csr_regfile.sv:2357:5
		csr_exception_o = {{CVA6Cfg[17102-:32] {1'b0}}, {CVA6Cfg[17102-:32] {1'b0}}, {CVA6Cfg[17006-:32] {1'b0}}, {32 {1'b0}}, 2'b00};
		// Trace: core/csr_regfile.sv:2365:5
		if (update_access_exception || read_access_exception) begin
			// Trace: core/csr_regfile.sv:2366:7
			csr_exception_o[exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_ILLEGAL_INSTR;
			// Trace: core/csr_regfile.sv:2369:7
			csr_exception_o[0] = 1'b1;
		end
		if (privilege_violation) begin
			// Trace: core/csr_regfile.sv:2373:7
			csr_exception_o[exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_ILLEGAL_INSTR;
			// Trace: core/csr_regfile.sv:2374:7
			csr_exception_o[0] = 1'b1;
		end
		if (CVA6Cfg[16543] && ((virtual_update_access_exception || virtual_read_access_exception) || virtual_privilege_violation)) begin
			// Trace: core/csr_regfile.sv:2378:7
			csr_exception_o[exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_VIRTUAL_INSTRUCTION;
			// Trace: core/csr_regfile.sv:2379:7
			csr_exception_o[0] = 1'b1;
		end
	end
	// Trace: core/csr_regfile.sv:2386:3
	always @(*) begin : wfi_ctrl
		if (_sv2v_0)
			;
		// Trace: core/csr_regfile.sv:2388:5
		wfi_d = wfi_q;
		// Trace: core/csr_regfile.sv:2391:5
		if ((|(mip_q & mie_q) || (CVA6Cfg[1321] && debug_req_i)) || irq_i[1])
			// Trace: core/csr_regfile.sv:2392:7
			wfi_d = 1'b0;
		else if ((((CVA6Cfg[1321] && !debug_mode_q) && (csr_op_i == 8'd27)) && !ex_i[0]) || ((!CVA6Cfg[1321] && (csr_op_i == 8'd27)) && !ex_i[0]))
			// Trace: core/csr_regfile.sv:2396:7
			wfi_d = 1'b1;
	end
	// Trace: core/csr_regfile.sv:2401:3
	always @(*) begin : priv_output
		if (_sv2v_0)
			;
		// Trace: core/csr_regfile.sv:2402:5
		trap_vector_base_o = {mtvec_q[CVA6Cfg[17070-:32] - 1:2], 2'b00};
		// Trace: core/csr_regfile.sv:2404:5
		if (CVA6Cfg[16366] && (trap_to_priv_lvl == 2'b01))
			// Trace: core/csr_regfile.sv:2405:7
			trap_vector_base_o = (CVA6Cfg[16543] && trap_to_v ? {vstvec_q[CVA6Cfg[17070-:32] - 1:2], 2'b00} : {stvec_q[CVA6Cfg[17070-:32] - 1:2], 2'b00});
		if (CVA6Cfg[1321] && debug_mode_q)
			// Trace: core/csr_regfile.sv:2410:7
			trap_vector_base_o = CVA6Cfg[15915 + CVA6Cfg[17070-:32]:15916] + CVA6Cfg[16236 + CVA6Cfg[17070-:32]:16237];
		if (ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[17102-:32] - 1))] && (((((CVA6Cfg[16366] || CVA6Cfg[16365]) && (trap_to_priv_lvl == 2'b11)) && (!CVA6Cfg[15914] && mtvec_q[0])) || ((!CVA6Cfg[16366] && !CVA6Cfg[16365]) && (!CVA6Cfg[15914] && mtvec_q[0]))) || (((CVA6Cfg[16366] && (trap_to_priv_lvl == 2'b01)) && !trap_to_v) && stvec_q[0])))
			// Trace: core/csr_regfile.sv:2421:7
			trap_vector_base_o[7:2] = ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] - 6):(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] - 1)];
		if (ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - ((exception_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[17102-:32] - 1))] && (((CVA6Cfg[16543] && (trap_to_priv_lvl == 2'b01)) && trap_to_v) && vstvec_q[0]))
			// Trace: core/csr_regfile.sv:2425:7
			trap_vector_base_o[7:2] = {ex_i[(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] - 6):(exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17102-:32] + (exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_CVA6Cfg[17102-:32] - 3)], 2'b01};
		// Trace: core/csr_regfile.sv:2428:5
		epc_o = mepc_q[CVA6Cfg[17070-:32] - 1:0];
		if (CVA6Cfg[16366]) begin
			begin
				// Trace: core/csr_regfile.sv:2431:7
				if (sret)
					// Trace: core/csr_regfile.sv:2432:9
					epc_o = (CVA6Cfg[16543] && v_q ? vsepc_q[CVA6Cfg[17070-:32] - 1:0] : sepc_q[CVA6Cfg[17070-:32] - 1:0]);
			end
		end
		if (CVA6Cfg[1321]) begin
			begin
				// Trace: core/csr_regfile.sv:2437:7
				if (dret)
					// Trace: core/csr_regfile.sv:2438:9
					epc_o = dpc_q[CVA6Cfg[17070-:32] - 1:0];
			end
		end
	end
	// Trace: core/csr_regfile.sv:2446:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/csr_regfile.sv:2450:5
		csr_rdata_o = csr_rdata;
		// Trace: core/csr_regfile.sv:2452:5
		(* full_case, parallel_case *)
		case (conv_csr_addr[11-:12])
			12'h344:
				// Trace: core/csr_regfile.sv:2454:7
				csr_rdata_o = csr_rdata | ({{CVA6Cfg[17102-:32] - 1 {1'b0}}, irq_i[1]} << riscv_IRQ_S_EXT);
			12'h144:
				// Trace: core/csr_regfile.sv:2457:9
				if (CVA6Cfg[16366])
					// Trace: core/csr_regfile.sv:2458:11
					csr_rdata_o = csr_rdata | ({{CVA6Cfg[17102-:32] - 1 {1'b0}}, irq_i[1] & mideleg_q[riscv_IRQ_S_EXT]} << riscv_IRQ_S_EXT);
			default:
				;
		endcase
	end
	// Trace: core/csr_regfile.sv:2467:3
	assign priv_lvl_o = (CVA6Cfg[1321] && debug_mode_q ? 2'b11 : priv_lvl_q);
	// Trace: core/csr_regfile.sv:2468:3
	assign v_o = (CVA6Cfg[16543] ? v_q : 1'b0);
	// Trace: core/csr_regfile.sv:2470:3
	assign fflags_o = fcsr_q[4-:5];
	// Trace: core/csr_regfile.sv:2471:3
	assign frm_o = fcsr_q[7-:3];
	// Trace: core/csr_regfile.sv:2472:3
	assign fprec_o = fcsr_q[14-:7];
	// Trace: core/csr_regfile.sv:2474:3
	assign satp_ppn_o = (CVA6Cfg[16366] ? satp_q[CVA6Cfg[419-:32] - 1-:CVA6Cfg[419-:32]] : {CVA6Cfg[419-:32] {1'sb0}});
	// Trace: core/csr_regfile.sv:2475:3
	assign vsatp_ppn_o = (CVA6Cfg[16543] ? vsatp_q[CVA6Cfg[419-:32] - 1-:CVA6Cfg[419-:32]] : {CVA6Cfg[419-:32] {1'sb0}});
	// Trace: core/csr_regfile.sv:2476:3
	assign hgatp_ppn_o = (CVA6Cfg[16543] ? hgatp_q[CVA6Cfg[419-:32] - 1-:CVA6Cfg[419-:32]] : {CVA6Cfg[419-:32] {1'sb0}});
	// Trace: core/csr_regfile.sv:2477:3
	generate
		if (CVA6Cfg[16366]) begin : genblk3
			// Trace: core/csr_regfile.sv:2478:5
			assign asid_o = satp_q[(CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)) - ((CVA6Cfg[483-:32] - 1) - (CVA6Cfg[16940-:32] - 1)):(CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)) - (CVA6Cfg[483-:32] - 1)];
		end
		else begin : genblk3
			// Trace: core/csr_regfile.sv:2480:5
			assign asid_o = 1'sb0;
		end
	endgenerate
	// Trace: core/csr_regfile.sv:2482:3
	assign vs_asid_o = (CVA6Cfg[16543] ? vsatp_q[(CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)) - ((CVA6Cfg[483-:32] - 1) - (CVA6Cfg[16940-:32] - 1)):(CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)) - (CVA6Cfg[483-:32] - 1)] : {CVA6Cfg[16940-:32] {1'sb0}});
	// Trace: core/csr_regfile.sv:2483:3
	assign vmid_o = (CVA6Cfg[16543] ? hgatp_q[(CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)) - ((CVA6Cfg[451-:32] - 1) - (CVA6Cfg[16908-:32] - 1)):(CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)) - (CVA6Cfg[451-:32] - 1)] : {CVA6Cfg[16908-:32] {1'sb0}});
	// Trace: core/csr_regfile.sv:2484:3
	assign sum_o = mstatus_q[18];
	// Trace: core/csr_regfile.sv:2485:3
	assign vs_sum_o = (CVA6Cfg[16543] ? vsstatus_q[18] : 1'b0);
	// Trace: core/csr_regfile.sv:2486:3
	assign hu_o = (CVA6Cfg[16543] ? hstatus_q[9] : 1'b0);
	// Trace: core/csr_regfile.sv:2488:3
	generate
		if (CVA6Cfg[16543]) begin : genblk4
			// Trace: core/csr_regfile.sv:2489:5
			assign en_translation_o = ((((sv2v_cast_4(satp_q[CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))-:((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) >= (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) ? ((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0))) + 1 : ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) - (CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)))) + 1)]) == CVA6Cfg[355-:4]) && !v_q) || ((sv2v_cast_4(vsatp_q[CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))-:((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) >= (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) ? ((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0))) + 1 : ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) - (CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)))) + 1)]) == CVA6Cfg[355-:4]) && v_q)) && (priv_lvl_o != 2'b11) ? 1'b1 : 1'b0);
			// Trace: core/csr_regfile.sv:2493:5
			assign en_g_translation_o = (((sv2v_cast_4(hgatp_q[CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))-:((CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))) >= (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0))) ? ((CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1)))) - (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0)))) + 1 : ((2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] + 0))) - (CVA6Cfg[515-:32] + (2 + (CVA6Cfg[451-:32] + (CVA6Cfg[419-:32] - 1))))) + 1)]) == CVA6Cfg[355-:4]) && (priv_lvl_o != 2'b11)) && v_q ? 1'b1 : 1'b0);
		end
		else begin : genblk4
			// Trace: core/csr_regfile.sv:2498:5
			assign en_translation_o = ((CVA6Cfg[16366] && (sv2v_cast_4(satp_q[CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))-:((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) >= (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) ? ((CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1))) - (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0))) + 1 : ((CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] + 0)) - (CVA6Cfg[515-:32] + (CVA6Cfg[483-:32] + (CVA6Cfg[419-:32] - 1)))) + 1)]) == CVA6Cfg[355-:4])) && (priv_lvl_o != 2'b11) ? 1'b1 : 1'b0);
			// Trace: core/csr_regfile.sv:2502:5
			assign en_g_translation_o = 1'b0;
		end
	endgenerate
	// Trace: core/csr_regfile.sv:2504:3
	assign mxr_o = mstatus_q[19];
	// Trace: core/csr_regfile.sv:2505:3
	assign vmxr_o = (CVA6Cfg[16543] ? vsstatus_q[19] : 1'b0);
	// Trace: core/csr_regfile.sv:2506:3
	generate
		if (CVA6Cfg[16543]) begin : genblk5
			// Trace: core/csr_regfile.sv:2507:5
			assign tvm_o = (v_q ? hstatus_q[20] : mstatus_q[20]);
		end
		else begin : genblk5
			// Trace: core/csr_regfile.sv:2509:5
			assign tvm_o = mstatus_q[20];
		end
	endgenerate
	// Trace: core/csr_regfile.sv:2511:3
	assign tw_o = mstatus_q[21];
	// Trace: core/csr_regfile.sv:2512:3
	assign vtw_o = (CVA6Cfg[16543] ? hstatus_q[21] : 1'b0);
	// Trace: core/csr_regfile.sv:2513:3
	generate
		if (CVA6Cfg[16543]) begin : genblk6
			// Trace: core/csr_regfile.sv:2514:5
			assign tsr_o = (v_q ? hstatus_q[22] : mstatus_q[22]);
		end
		else begin : genblk6
			// Trace: core/csr_regfile.sv:2516:5
			assign tsr_o = mstatus_q[22];
		end
	endgenerate
	// Trace: core/csr_regfile.sv:2518:3
	assign halt_csr_o = wfi_q;
	// Trace: core/csr_regfile.sv:2522:3
	assign icache_en_o = icache_q[0] & ~(CVA6Cfg[1321] && debug_mode_q);
	// Trace: core/csr_regfile.sv:2524:3
	assign dcache_en_o = dcache_q[0];
	// Trace: core/csr_regfile.sv:2525:3
	assign acc_cons_en_o = (CVA6Cfg[16369] ? acc_cons_q[0] : 1'b0);
	// Trace: core/csr_regfile.sv:2528:3
	assign mprv = ((CVA6Cfg[1321] && debug_mode_q) && !dcsr_q[4] ? 1'b0 : mstatus_q[17]);
	// Trace: core/csr_regfile.sv:2529:3
	assign debug_mode_o = debug_mode_q;
	// Trace: core/csr_regfile.sv:2530:3
	assign single_step_o = (CVA6Cfg[1321] ? dcsr_q[2] : 1'b0);
	// Trace: core/csr_regfile.sv:2531:3
	assign mcountinhibit_o = {{29 - MHPMCounterNum {1'b0}}, mcountinhibit_q};
	// Trace: core/csr_regfile.sv:2533:3
	assign c3_enable_o = c3_enable_q;
	// Trace: core/csr_regfile.sv:2535:3
	function automatic [7:0] sv2v_cast_8;
		input reg [7:0] inp;
		sv2v_cast_8 = inp;
	endfunction
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/csr_regfile.sv:2536:5
		if (~rst_ni) begin
			// Trace: core/csr_regfile.sv:2537:7
			priv_lvl_q <= 2'b11;
			// Trace: core/csr_regfile.sv:2539:7
			fcsr_q <= 1'sb0;
			// Trace: core/csr_regfile.sv:2541:7
			debug_mode_q <= 1'b0;
			// Trace: core/csr_regfile.sv:2542:7
			c3_enable_q <= 1'sb0;
			// Trace: core/csr_regfile.sv:2543:7
			if (CVA6Cfg[1321]) begin
				// Trace: core/csr_regfile.sv:2544:9
				dcsr_q <= 1'sb0;
				// Trace: core/csr_regfile.sv:2545:9
				dcsr_q[1-:2] <= 2'b11;
				// Trace: core/csr_regfile.sv:2546:9
				dcsr_q[31-:4] <= 4'h4;
				// Trace: core/csr_regfile.sv:2547:9
				dpc_q <= 1'sb0;
				// Trace: core/csr_regfile.sv:2548:9
				dscratch0_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2549:9
				dscratch1_q <= {CVA6Cfg[17102-:32] {1'b0}};
			end
			// Trace: core/csr_regfile.sv:2552:7
			mstatus_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
			// Trace: core/csr_regfile.sv:2554:7
			mtvec_rst_load_q <= 1'b1;
			// Trace: core/csr_regfile.sv:2555:7
			mtvec_q <= 1'sb0;
			// Trace: core/csr_regfile.sv:2556:7
			mip_q <= {CVA6Cfg[17102-:32] {1'b0}};
			// Trace: core/csr_regfile.sv:2557:7
			mie_q <= {CVA6Cfg[17102-:32] {1'b0}};
			// Trace: core/csr_regfile.sv:2558:7
			mepc_q <= {CVA6Cfg[17102-:32] {1'b0}};
			// Trace: core/csr_regfile.sv:2559:7
			mcause_q <= {CVA6Cfg[17102-:32] {1'b0}};
			// Trace: core/csr_regfile.sv:2560:7
			mcounteren_q <= {CVA6Cfg[17102-:32] {1'b0}};
			// Trace: core/csr_regfile.sv:2561:7
			mscratch_q <= {CVA6Cfg[17102-:32] {1'b0}};
			// Trace: core/csr_regfile.sv:2562:7
			mtval_q <= {CVA6Cfg[17102-:32] {1'b0}};
			// Trace: core/csr_regfile.sv:2563:7
			fiom_q <= 1'sb0;
			// Trace: core/csr_regfile.sv:2564:7
			dcache_q <= {{CVA6Cfg[17102-:32] - 1 {1'b0}}, 1'b1};
			// Trace: core/csr_regfile.sv:2565:7
			icache_q <= {{CVA6Cfg[17102-:32] - 1 {1'b0}}, 1'b1};
			// Trace: core/csr_regfile.sv:2566:7
			mcountinhibit_q <= 1'sb0;
			// Trace: core/csr_regfile.sv:2567:7
			acc_cons_q <= {{CVA6Cfg[17102-:32] - 1 {1'b0}}, CVA6Cfg[16369]};
			if (CVA6Cfg[16366]) begin
				// Trace: core/csr_regfile.sv:2570:9
				medeleg_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2571:9
				mideleg_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2572:9
				sepc_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2573:9
				scause_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2574:9
				stvec_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2575:9
				scounteren_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2576:9
				sscratch_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2577:9
				stval_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2578:9
				satp_q <= {CVA6Cfg[17102-:32] {1'b0}};
			end
			if (CVA6Cfg[16543]) begin
				// Trace: core/csr_regfile.sv:2582:9
				v_q <= 1'sb0;
				// Trace: core/csr_regfile.sv:2583:9
				mtval2_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2584:9
				mtinst_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2585:9
				hstatus_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
				// Trace: core/csr_regfile.sv:2586:9
				hedeleg_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2587:9
				hideleg_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2588:9
				hgeie_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2589:9
				hgatp_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2590:9
				hcounteren_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2591:9
				htval_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2592:9
				htinst_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2594:9
				vsstatus_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
				// Trace: core/csr_regfile.sv:2595:9
				vsepc_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2596:9
				vscause_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2597:9
				vstvec_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2598:9
				vsscratch_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2599:9
				vstval_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2600:9
				vsatp_q <= {CVA6Cfg[17102-:32] {1'b0}};
				// Trace: core/csr_regfile.sv:2601:9
				en_ld_st_g_translation_q <= 1'b0;
			end
			// Trace: core/csr_regfile.sv:2604:7
			cycle_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
			// Trace: core/csr_regfile.sv:2605:7
			instret_q <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
			// Trace: core/csr_regfile.sv:2607:7
			en_ld_st_translation_q <= 1'b0;
			// Trace: core/csr_regfile.sv:2609:7
			wfi_q <= 1'b0;
			begin : sv2v_autoblock_10
				// Trace: core/csr_regfile.sv:2611:12
				reg signed [31:0] i;
				// Trace: core/csr_regfile.sv:2611:12
				for (i = 0; i < 64; i = i + 1)
					begin
						// Trace: core/csr_regfile.sv:2612:9
						if (i < CVA6Cfg[15913-:32]) begin
							// Trace: core/csr_regfile.sv:2613:11
							pmpcfg_q[i * 8+:8] <= sv2v_cast_8(CVA6Cfg[11786 + (i * 64)+:64]);
							// Trace: core/csr_regfile.sv:2614:11
							pmpaddr_q[((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3) + (i * ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32]))+:((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])] <= CVA6Cfg[7690 + ((i * 64) + ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 3 : ((CVA6Cfg[17038-:32] - 3) + ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])) - 1))-:((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])];
						end
						else begin
							// Trace: core/csr_regfile.sv:2616:11
							pmpcfg_q[i * 8+:8] <= 1'sb0;
							// Trace: core/csr_regfile.sv:2617:11
							pmpaddr_q[((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3) + (i * ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32]))+:((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])] <= 1'sb0;
						end
					end
			end
		end
		else begin
			// Trace: core/csr_regfile.sv:2621:7
			c3_enable_q <= c3_enable_d;
			// Trace: core/csr_regfile.sv:2622:7
			priv_lvl_q <= priv_lvl_d;
			// Trace: core/csr_regfile.sv:2624:7
			fcsr_q <= fcsr_d;
			// Trace: core/csr_regfile.sv:2626:7
			if (CVA6Cfg[1321]) begin
				// Trace: core/csr_regfile.sv:2627:9
				debug_mode_q <= debug_mode_d;
				// Trace: core/csr_regfile.sv:2628:9
				dcsr_q <= dcsr_d;
				// Trace: core/csr_regfile.sv:2629:9
				dpc_q <= dpc_d;
				// Trace: core/csr_regfile.sv:2630:9
				dscratch0_q <= dscratch0_d;
				// Trace: core/csr_regfile.sv:2631:9
				dscratch1_q <= dscratch1_d;
			end
			// Trace: core/csr_regfile.sv:2634:7
			mstatus_q <= mstatus_d;
			// Trace: core/csr_regfile.sv:2635:7
			mtvec_rst_load_q <= 1'b0;
			// Trace: core/csr_regfile.sv:2636:7
			mtvec_q <= mtvec_d;
			// Trace: core/csr_regfile.sv:2637:7
			mip_q <= mip_d;
			// Trace: core/csr_regfile.sv:2638:7
			mie_q <= mie_d;
			// Trace: core/csr_regfile.sv:2639:7
			mepc_q <= mepc_d;
			// Trace: core/csr_regfile.sv:2640:7
			mcause_q <= mcause_d;
			// Trace: core/csr_regfile.sv:2641:7
			mcounteren_q <= mcounteren_d;
			// Trace: core/csr_regfile.sv:2642:7
			mscratch_q <= mscratch_d;
			if (CVA6Cfg[15915])
				// Trace: core/csr_regfile.sv:2643:27
				mtval_q <= mtval_d;
			// Trace: core/csr_regfile.sv:2644:7
			fiom_q <= fiom_d;
			// Trace: core/csr_regfile.sv:2645:7
			dcache_q <= dcache_d;
			// Trace: core/csr_regfile.sv:2646:7
			icache_q <= icache_d;
			// Trace: core/csr_regfile.sv:2647:7
			mcountinhibit_q <= mcountinhibit_d;
			// Trace: core/csr_regfile.sv:2648:7
			acc_cons_q <= acc_cons_d;
			if (CVA6Cfg[16366]) begin
				// Trace: core/csr_regfile.sv:2651:9
				medeleg_q <= medeleg_d;
				// Trace: core/csr_regfile.sv:2652:9
				mideleg_q <= mideleg_d;
				// Trace: core/csr_regfile.sv:2653:9
				sepc_q <= sepc_d;
				// Trace: core/csr_regfile.sv:2654:9
				scause_q <= scause_d;
				// Trace: core/csr_regfile.sv:2655:9
				stvec_q <= stvec_d;
				// Trace: core/csr_regfile.sv:2656:9
				scounteren_q <= scounteren_d;
				// Trace: core/csr_regfile.sv:2657:9
				sscratch_q <= sscratch_d;
				// Trace: core/csr_regfile.sv:2658:9
				if (CVA6Cfg[15915])
					// Trace: core/csr_regfile.sv:2658:29
					stval_q <= stval_d;
				// Trace: core/csr_regfile.sv:2659:9
				satp_q <= satp_d;
			end
			if (CVA6Cfg[16543]) begin
				// Trace: core/csr_regfile.sv:2662:9
				v_q <= v_d;
				// Trace: core/csr_regfile.sv:2663:9
				mtval2_q <= mtval2_d;
				// Trace: core/csr_regfile.sv:2664:9
				mtinst_q <= mtinst_d;
				// Trace: core/csr_regfile.sv:2666:9
				hstatus_q <= hstatus_d;
				// Trace: core/csr_regfile.sv:2667:9
				hedeleg_q <= hedeleg_d;
				// Trace: core/csr_regfile.sv:2668:9
				hideleg_q <= hideleg_d;
				// Trace: core/csr_regfile.sv:2669:9
				hgeie_q <= hgeie_d;
				// Trace: core/csr_regfile.sv:2670:9
				hgatp_q <= hgatp_d;
				// Trace: core/csr_regfile.sv:2671:9
				hcounteren_q <= hcounteren_d;
				// Trace: core/csr_regfile.sv:2672:9
				htval_q <= htval_d;
				// Trace: core/csr_regfile.sv:2673:9
				htinst_q <= htinst_d;
				// Trace: core/csr_regfile.sv:2675:9
				vsstatus_q <= vsstatus_d;
				// Trace: core/csr_regfile.sv:2676:9
				vsepc_q <= vsepc_d;
				// Trace: core/csr_regfile.sv:2677:9
				vscause_q <= vscause_d;
				// Trace: core/csr_regfile.sv:2678:9
				vstvec_q <= vstvec_d;
				// Trace: core/csr_regfile.sv:2679:9
				vsscratch_q <= vsscratch_d;
				// Trace: core/csr_regfile.sv:2680:9
				vstval_q <= vstval_d;
				// Trace: core/csr_regfile.sv:2681:9
				vsatp_q <= vsatp_d;
				// Trace: core/csr_regfile.sv:2682:9
				en_ld_st_g_translation_q <= en_ld_st_g_translation_d;
			end
			// Trace: core/csr_regfile.sv:2685:7
			cycle_q <= cycle_d;
			// Trace: core/csr_regfile.sv:2686:7
			instret_q <= instret_d;
			// Trace: core/csr_regfile.sv:2688:7
			en_ld_st_translation_q <= en_ld_st_translation_d;
			// Trace: core/csr_regfile.sv:2690:7
			wfi_q <= wfi_d;
			// Trace: core/csr_regfile.sv:2692:7
			pmpcfg_q <= pmpcfg_next;
			// Trace: core/csr_regfile.sv:2693:7
			pmpaddr_q <= pmpaddr_next;
		end
	// Trace: core/csr_regfile.sv:2698:3
	always @(*) begin : write
		if (_sv2v_0)
			;
		// Trace: core/csr_regfile.sv:2699:5
		begin : sv2v_autoblock_11
			// Trace: core/csr_regfile.sv:2699:10
			reg signed [31:0] i;
			// Trace: core/csr_regfile.sv:2699:10
			for (i = 0; i < 64; i = i + 1)
				begin
					// Trace: core/csr_regfile.sv:2700:7
					if (i < CVA6Cfg[15913-:32]) begin
						// Trace: core/csr_regfile.sv:2701:9
						if (!CVA6Cfg[7626 + i]) begin
							// Trace: core/csr_regfile.sv:2703:11
							pmpcfg_next[i * 8+:8] = pmpcfg_d[i * 8+:8];
							// Trace: core/csr_regfile.sv:2705:11
							if (pmpcfg_d[(i * 8) + 4-:2] == 2'b10)
								// Trace: core/csr_regfile.sv:2706:13
								pmpcfg_next[(i * 8) + 4-:2] = pmpcfg_q[(i * 8) + 4-:2];
							if ((pmpcfg_d[i * 8] == 1'b0) && (pmpcfg_d[(i * 8) + 1] == 1'b1))
								// Trace: core/csr_regfile.sv:2710:13
								pmpcfg_next[(i * 8) + 2-:3] = pmpcfg_q[(i * 8) + 2-:3];
						end
						else
							// Trace: core/csr_regfile.sv:2713:11
							pmpcfg_next[i * 8+:8] = pmpcfg_q[i * 8+:8];
						if (!CVA6Cfg[7626 + i])
							// Trace: core/csr_regfile.sv:2716:11
							pmpaddr_next[((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3) + (i * ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32]))+:((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])] = pmpaddr_d[((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3) + (i * ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32]))+:((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])];
						else
							// Trace: core/csr_regfile.sv:2718:11
							pmpaddr_next[((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3) + (i * ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32]))+:((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])] = pmpaddr_q[((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3) + (i * ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32]))+:((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])];
					end
					else begin
						// Trace: core/csr_regfile.sv:2721:9
						pmpcfg_next[i * 8+:8] = 1'sb0;
						// Trace: core/csr_regfile.sv:2722:9
						pmpaddr_next[((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3) + (i * ((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32]))+:((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32])] = 1'sb0;
					end
				end
		end
	end
	// Trace: core/csr_regfile.sv:2732:3
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni !== '0)
	// 	!(eret_o && ex_i.valid)
	// ) else begin
	// 	// Trace: core/csr_regfile.sv:2734:5
	// 	$error("eret and exception should never be valid at the same time");
	// 	// Trace: core/csr_regfile.sv:2735:5
	// 	$stop;
	// end
	// Trace: core/csr_regfile.sv:2745:3
	assign rvfi_csr_o.fcsr_q = (CVA6Cfg[16471] ? fcsr_q : {$bits(type(rvfi_csr_o.fcsr_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2746:3
	assign rvfi_csr_o.dcsr_q = (CVA6Cfg[1321] ? dcsr_q : {$bits(type(rvfi_csr_o.dcsr_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2747:3
	assign rvfi_csr_o.dpc_q = (CVA6Cfg[1321] ? dpc_q : {$bits(type(rvfi_csr_o.dpc_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2748:3
	assign rvfi_csr_o.dscratch0_q = (CVA6Cfg[1321] ? dscratch0_q : {$bits(type(rvfi_csr_o.dscratch0_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2749:3
	assign rvfi_csr_o.dscratch1_q = (CVA6Cfg[1321] ? dscratch1_q : {$bits(type(rvfi_csr_o.dscratch1_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2750:3
	assign rvfi_csr_o.mie_q = mie_q;
	// Trace: core/csr_regfile.sv:2751:3
	assign rvfi_csr_o.mip_q = mip_q;
	// Trace: core/csr_regfile.sv:2752:3
	assign rvfi_csr_o.stvec_q = (CVA6Cfg[16366] ? stvec_q : {$bits(type(rvfi_csr_o.stvec_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2753:3
	assign rvfi_csr_o.scounteren_q = (CVA6Cfg[16366] ? scounteren_q : {$bits(type(rvfi_csr_o.scounteren_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2754:3
	assign rvfi_csr_o.sscratch_q = (CVA6Cfg[16366] ? sscratch_q : {$bits(type(rvfi_csr_o.sscratch_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2755:3
	assign rvfi_csr_o.sepc_q = (CVA6Cfg[16366] ? sepc_q : {$bits(type(rvfi_csr_o.sepc_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2756:3
	assign rvfi_csr_o.scause_q = (CVA6Cfg[16366] ? scause_q : {$bits(type(rvfi_csr_o.scause_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2757:3
	assign rvfi_csr_o.stval_q = (CVA6Cfg[16366] ? stval_q : {$bits(type(rvfi_csr_o.stval_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2758:3
	assign rvfi_csr_o.satp_q = (CVA6Cfg[16366] ? satp_q : {$bits(type(rvfi_csr_o.satp_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2759:3
	assign rvfi_csr_o.mstatus_extended = mstatus_extended;
	// Trace: core/csr_regfile.sv:2760:3
	assign rvfi_csr_o.medeleg_q = (CVA6Cfg[16366] ? medeleg_q : {$bits(type(rvfi_csr_o.medeleg_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2761:3
	assign rvfi_csr_o.mideleg_q = (CVA6Cfg[16366] ? mideleg_q : {$bits(type(rvfi_csr_o.mideleg_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2762:3
	assign rvfi_csr_o.mtvec_q = mtvec_q;
	// Trace: core/csr_regfile.sv:2763:3
	assign rvfi_csr_o.mcounteren_q = mcounteren_q;
	// Trace: core/csr_regfile.sv:2764:3
	assign rvfi_csr_o.mscratch_q = mscratch_q;
	// Trace: core/csr_regfile.sv:2765:3
	assign rvfi_csr_o.mepc_q = mepc_q;
	// Trace: core/csr_regfile.sv:2766:3
	assign rvfi_csr_o.mcause_q = mcause_q;
	// Trace: core/csr_regfile.sv:2767:3
	assign rvfi_csr_o.mtval_q = mtval_q;
	// Trace: core/csr_regfile.sv:2768:3
	assign rvfi_csr_o.fiom_q = fiom_q;
	// Trace: core/csr_regfile.sv:2769:3
	assign rvfi_csr_o.mcountinhibit_q = mcountinhibit_q;
	// Trace: core/csr_regfile.sv:2770:3
	assign rvfi_csr_o.cycle_q = cycle_q;
	// Trace: core/csr_regfile.sv:2771:3
	assign rvfi_csr_o.instret_q = instret_q;
	// Trace: core/csr_regfile.sv:2772:3
	assign rvfi_csr_o.dcache_q = dcache_q;
	// Trace: core/csr_regfile.sv:2773:3
	assign rvfi_csr_o.icache_q = icache_q;
	// Trace: core/csr_regfile.sv:2774:3
	assign rvfi_csr_o.acc_cons_q = (CVA6Cfg[16369] ? acc_cons_q : {$bits(type(rvfi_csr_o.acc_cons_q)) {1'sb0}});
	// Trace: core/csr_regfile.sv:2775:3
	assign rvfi_csr_o.pmpcfg_q = pmpcfg_q;
	// Trace: core/csr_regfile.sv:2776:3
	assign rvfi_csr_o.pmpaddr_q = pmpaddr_q;
	initial _sv2v_0 = 0;
endmodule
