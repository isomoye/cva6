module instr_scan (
	instr_i,
	rvi_return_o,
	rvi_call_o,
	rvi_branch_o,
	rvi_jalr_o,
	rvi_jump_o,
	rvi_imm_o,
	rvc_branch_o,
	rvc_jump_o,
	rvc_jr_o,
	rvc_return_o,
	rvc_jalr_o,
	rvc_call_o,
	rvc_imm_o
);
	// Trace: core/frontend/instr_scan.sv:19:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/frontend/instr_scan.sv:22:5
	input wire [31:0] instr_i;
	// Trace: core/frontend/instr_scan.sv:24:5
	output wire rvi_return_o;
	// Trace: core/frontend/instr_scan.sv:26:5
	output wire rvi_call_o;
	// Trace: core/frontend/instr_scan.sv:28:5
	output wire rvi_branch_o;
	// Trace: core/frontend/instr_scan.sv:30:5
	output wire rvi_jalr_o;
	// Trace: core/frontend/instr_scan.sv:32:5
	output wire rvi_jump_o;
	// Trace: core/frontend/instr_scan.sv:34:5
	output wire [CVA6Cfg[17070-:32] - 1:0] rvi_imm_o;
	// Trace: core/frontend/instr_scan.sv:36:5
	output wire rvc_branch_o;
	// Trace: core/frontend/instr_scan.sv:38:5
	output wire rvc_jump_o;
	// Trace: core/frontend/instr_scan.sv:40:5
	output wire rvc_jr_o;
	// Trace: core/frontend/instr_scan.sv:42:5
	output wire rvc_return_o;
	// Trace: core/frontend/instr_scan.sv:44:5
	output wire rvc_jalr_o;
	// Trace: core/frontend/instr_scan.sv:46:5
	output wire rvc_call_o;
	// Trace: core/frontend/instr_scan.sv:48:5
	output wire [CVA6Cfg[17070-:32] - 1:0] rvc_imm_o;
	// Trace: core/frontend/instr_scan.sv:51:3
	function automatic [CVA6Cfg[17070-:32] - 1:0] uj_imm;
		// Trace: core/frontend/instr_scan.sv:51:54
		input reg [31:0] instruction_i;
		// Trace: core/frontend/instr_scan.sv:52:5
		uj_imm = {{(44 + CVA6Cfg[17070-:32]) - 64 {instruction_i[31]}}, instruction_i[19:12], instruction_i[20], instruction_i[30:21], 1'b0};
	endfunction
	// Trace: core/frontend/instr_scan.sv:61:3
	function automatic [CVA6Cfg[17070-:32] - 1:0] sb_imm;
		// Trace: core/frontend/instr_scan.sv:61:54
		input reg [31:0] instruction_i;
		// Trace: core/frontend/instr_scan.sv:62:5
		sb_imm = {{(51 + CVA6Cfg[17070-:32]) - 64 {instruction_i[31]}}, instruction_i[31], instruction_i[7], instruction_i[30:25], instruction_i[11:8], 1'b0};
	endfunction
	// Trace: core/frontend/instr_scan.sv:72:3
	wire is_rvc;
	// Trace: core/frontend/instr_scan.sv:73:3
	assign is_rvc = instr_i[1:0] != 2'b11;
	// Trace: core/frontend/instr_scan.sv:75:3
	wire rv32_rvc_jal;
	// Trace: core/frontend/instr_scan.sv:76:3
	localparam riscv_OpcodeC1 = 2'b01;
	localparam riscv_OpcodeC1Jal = 3'b001;
	assign rv32_rvc_jal = (CVA6Cfg[17102-:32] == 32) & (((instr_i[15:13] == riscv_OpcodeC1Jal) & is_rvc) & (instr_i[1:0] == riscv_OpcodeC1));
	// Trace: core/frontend/instr_scan.sv:78:3
	wire is_xret;
	// Trace: core/frontend/instr_scan.sv:79:3
	assign is_xret = (instr_i[31:30] == 2'b00) & (instr_i[28:0] == 29'b10000001000000000000001110011);
	// Trace: core/frontend/instr_scan.sv:82:3
	assign rvi_return_o = (rvi_jalr_o & ((instr_i[19:15] == 5'd1) | (instr_i[19:15] == 5'd5))) & (instr_i[19:15] != instr_i[11:7]);
	// Trace: core/frontend/instr_scan.sv:85:3
	assign rvi_call_o = (rvi_jalr_o | rvi_jump_o) & ((instr_i[11:7] == 5'd1) | (instr_i[11:7] == 5'd5));
	// Trace: core/frontend/instr_scan.sv:87:3
	assign rvi_imm_o = (is_xret ? {CVA6Cfg[17070-:32] {1'sb0}} : (instr_i[3] ? uj_imm(instr_i) : sb_imm(instr_i)));
	// Trace: core/frontend/instr_scan.sv:88:3
	localparam riscv_OpcodeBranch = 7'b1100011;
	assign rvi_branch_o = instr_i[6:0] == riscv_OpcodeBranch;
	// Trace: core/frontend/instr_scan.sv:89:3
	localparam riscv_OpcodeJalr = 7'b1100111;
	assign rvi_jalr_o = instr_i[6:0] == riscv_OpcodeJalr;
	// Trace: core/frontend/instr_scan.sv:90:3
	localparam riscv_OpcodeJal = 7'b1101111;
	assign rvi_jump_o = (instr_i[6:0] == riscv_OpcodeJal) | is_xret;
	// Trace: core/frontend/instr_scan.sv:93:3
	localparam riscv_OpcodeC1J = 3'b101;
	assign rvc_jump_o = (((instr_i[15:13] == riscv_OpcodeC1J) & is_rvc) & (instr_i[1:0] == riscv_OpcodeC1)) | rv32_rvc_jal;
	// Trace: core/frontend/instr_scan.sv:96:3
	wire is_jal_r;
	// Trace: core/frontend/instr_scan.sv:97:3
	localparam riscv_OpcodeC2 = 2'b10;
	localparam riscv_OpcodeC2JalrMvAdd = 3'b100;
	assign is_jal_r = (((instr_i[15:13] == riscv_OpcodeC2JalrMvAdd) & (instr_i[6:2] == 5'b00000)) & (instr_i[1:0] == riscv_OpcodeC2)) & is_rvc;
	// Trace: core/frontend/instr_scan.sv:101:3
	assign rvc_jr_o = is_jal_r & ~instr_i[12];
	// Trace: core/frontend/instr_scan.sv:103:3
	assign rvc_jalr_o = is_jal_r & instr_i[12];
	// Trace: core/frontend/instr_scan.sv:104:3
	assign rvc_call_o = rvc_jalr_o | rv32_rvc_jal;
	// Trace: core/frontend/instr_scan.sv:106:3
	localparam riscv_OpcodeC1Beqz = 3'b110;
	localparam riscv_OpcodeC1Bnez = 3'b111;
	assign rvc_branch_o = (((instr_i[15:13] == riscv_OpcodeC1Beqz) | (instr_i[15:13] == riscv_OpcodeC1Bnez)) & (instr_i[1:0] == riscv_OpcodeC1)) & is_rvc;
	// Trace: core/frontend/instr_scan.sv:110:3
	assign rvc_return_o = ((instr_i[11:7] == 5'd1) | (instr_i[11:7] == 5'd5)) & rvc_jr_o;
	// Trace: core/frontend/instr_scan.sv:113:3
	assign rvc_imm_o = (instr_i[14] ? {{(56 + CVA6Cfg[17070-:32]) - 64 {instr_i[12]}}, instr_i[6:5], instr_i[2], instr_i[11:10], instr_i[4:3], 1'b0} : {{(53 + CVA6Cfg[17070-:32]) - 64 {instr_i[12]}}, instr_i[8], instr_i[10:9], instr_i[6], instr_i[7], instr_i[2], instr_i[11], instr_i[5:3], 1'b0});
endmodule
