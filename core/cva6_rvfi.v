module cva6_rvfi (
	clk_i,
	rst_ni,
	rvfi_probes_i,
	rvfi_instr_o,
	rvfi_csr_o
);
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/cva6_rvfi.sv:15:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cva6_rvfi.sv:16:20
	// removed localparam type rvfi_instr_t
	// Trace: core/cva6_rvfi.sv:17:20
	// removed localparam type rvfi_csr_t
	// Trace: core/cva6_rvfi.sv:18:20
	// removed localparam type rvfi_probes_instr_t
	// Trace: core/cva6_rvfi.sv:19:20
	// removed localparam type rvfi_probes_csr_t
	// Trace: core/cva6_rvfi.sv:20:20
	// removed localparam type rvfi_probes_t
	// Trace: core/cva6_rvfi.sv:24:5
	input wire clk_i;
	// Trace: core/cva6_rvfi.sv:25:5
	input wire rst_ni;
	// Trace: core/cva6_rvfi.sv:27:5
	input wire rvfi_probes_i;
	// Trace: core/cva6_rvfi.sv:28:5
	output reg [CVA6Cfg[16873-:32] - 1:0] rvfi_instr_o;
	// Trace: core/cva6_rvfi.sv:29:5
	output reg rvfi_csr_o;
	// Trace: core/cva6_rvfi.sv:33:3
	function automatic [CVA6Cfg[17102-:32] - 1:0] sv2v_cast_94688;
		input reg [CVA6Cfg[17102-:32] - 1:0] inp;
		sv2v_cast_94688 = inp;
	endfunction
	function automatic signed [CVA6Cfg[17102-:32] - 1:0] sv2v_cast_94688_signed;
		input reg signed [CVA6Cfg[17102-:32] - 1:0] inp;
		sv2v_cast_94688_signed = inp;
	endfunction
	localparam [CVA6Cfg[17102-:32] - 1:0] IsaCode = (((((((((((((sv2v_cast_94688(CVA6Cfg[16547]) << 0) | (sv2v_cast_94688(CVA6Cfg[16546]) << 1)) | (sv2v_cast_94688(CVA6Cfg[16544]) << 2)) | (sv2v_cast_94688(CVA6Cfg[16551]) << 3)) | (sv2v_cast_94688(CVA6Cfg[16552]) << 5)) | (sv2v_cast_94688(CVA6Cfg[16543]) << 7)) | (sv2v_cast_94688_signed(1) << 8)) | (sv2v_cast_94688_signed(1) << 12)) | (sv2v_cast_94688_signed(0) << 13)) | (sv2v_cast_94688(CVA6Cfg[16366]) << 18)) | (sv2v_cast_94688(CVA6Cfg[16365]) << 20)) | (sv2v_cast_94688(CVA6Cfg[16545]) << 21)) | (sv2v_cast_94688(CVA6Cfg[16470]) << 23)) | ((CVA6Cfg[17102-:32] == 64 ? 2 : 1) << (CVA6Cfg[17102-:32] - 2));
	// Trace: core/cva6_rvfi.sv:49:3
	localparam [CVA6Cfg[17102-:32] - 1:0] hart_id_i = 1'sb0;
	// Trace: core/cva6_rvfi.sv:51:3
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
	// Trace: core/cva6_rvfi.sv:53:3
	wire flush;
	// Trace: core/cva6_rvfi.sv:54:3
	wire [CVA6Cfg[16841-:32] - 1:0] issue_instr_ack;
	// Trace: core/cva6_rvfi.sv:55:3
	wire [CVA6Cfg[16841-:32] - 1:0] fetch_entry_valid;
	// Trace: core/cva6_rvfi.sv:56:3
	wire [(CVA6Cfg[16841-:32] * 32) - 1:0] instruction;
	// Trace: core/cva6_rvfi.sv:57:3
	wire [CVA6Cfg[16841-:32] - 1:0] is_compressed;
	// Trace: core/cva6_rvfi.sv:58:3
	wire [(CVA6Cfg[16841-:32] * 32) - 1:0] truncated;
	// Trace: core/cva6_rvfi.sv:60:3
	wire [(CVA6Cfg[16841-:32] * CVA6Cfg[16503-:32]) - 1:0] issue_pointer;
	// Trace: core/cva6_rvfi.sv:61:3
	wire [(CVA6Cfg[16873-:32] * CVA6Cfg[16503-:32]) - 1:0] commit_pointer;
	// Trace: core/cva6_rvfi.sv:63:3
	wire flush_unissued_instr;
	// Trace: core/cva6_rvfi.sv:64:3
	wire [CVA6Cfg[16841-:32] - 1:0] decoded_instr_valid;
	// Trace: core/cva6_rvfi.sv:65:3
	wire [CVA6Cfg[16841-:32] - 1:0] decoded_instr_ack;
	// Trace: core/cva6_rvfi.sv:67:3
	wire [(CVA6Cfg[16841-:32] * CVA6Cfg[17102-:32]) - 1:0] rs1_forwarding;
	// Trace: core/cva6_rvfi.sv:68:3
	wire [(CVA6Cfg[16841-:32] * CVA6Cfg[17102-:32]) - 1:0] rs2_forwarding;
	// Trace: core/cva6_rvfi.sv:70:3
	wire [(CVA6Cfg[16873-:32] * CVA6Cfg[17070-:32]) - 1:0] commit_instr_pc;
	// Trace: core/cva6_rvfi.sv:71:3
	// removed localparam type ariane_pkg_fu_op
	wire [(CVA6Cfg[16873-:32] * 8) - 1:0] commit_instr_op;
	// Trace: core/cva6_rvfi.sv:72:3
	localparam ariane_pkg_REG_ADDR_SIZE = 5;
	wire [(CVA6Cfg[16873-:32] * 5) - 1:0] commit_instr_rs1;
	// Trace: core/cva6_rvfi.sv:73:3
	wire [(CVA6Cfg[16873-:32] * 5) - 1:0] commit_instr_rs2;
	// Trace: core/cva6_rvfi.sv:74:3
	wire [(CVA6Cfg[16873-:32] * 5) - 1:0] commit_instr_rd;
	// Trace: core/cva6_rvfi.sv:75:3
	wire [(CVA6Cfg[16873-:32] * CVA6Cfg[17102-:32]) - 1:0] commit_instr_result;
	// Trace: core/cva6_rvfi.sv:76:3
	wire [CVA6Cfg[16873-:32] - 1:0] commit_instr_valid;
	// Trace: core/cva6_rvfi.sv:77:3
	wire [CVA6Cfg[16873-:32] - 1:0] commit_drop;
	// Trace: core/cva6_rvfi.sv:79:3
	wire [CVA6Cfg[17102-:32] - 1:0] ex_commit_cause;
	// Trace: core/cva6_rvfi.sv:80:3
	wire ex_commit_valid;
	// Trace: core/cva6_rvfi.sv:82:3
	// removed localparam type riscv_priv_lvl_t
	wire [1:0] priv_lvl;
	// Trace: core/cva6_rvfi.sv:84:3
	wire [CVA6Cfg[17070-:32] - 1:0] lsu_ctrl_vaddr;
	// Trace: core/cva6_rvfi.sv:85:3
	// removed localparam type ariane_pkg_fu_t
	wire [3:0] lsu_ctrl_fu;
	// Trace: core/cva6_rvfi.sv:86:3
	wire [(CVA6Cfg[17102-:32] / 8) - 1:0] lsu_ctrl_be;
	// Trace: core/cva6_rvfi.sv:87:3
	wire [CVA6Cfg[16503-:32] - 1:0] lsu_ctrl_trans_id;
	// Trace: core/cva6_rvfi.sv:89:3
	wire [((CVA6Cfg[16539] || CVA6Cfg[16545] ? 5 : 4) * CVA6Cfg[17102-:32]) - 1:0] wbdata;
	// Trace: core/cva6_rvfi.sv:90:3
	wire [CVA6Cfg[16873-:32] - 1:0] commit_ack;
	// Trace: core/cva6_rvfi.sv:91:3
	wire [CVA6Cfg[17038-:32] - 1:0] mem_paddr;
	// Trace: core/cva6_rvfi.sv:92:3
	wire debug_mode;
	// Trace: core/cva6_rvfi.sv:93:3
	wire [(CVA6Cfg[16873-:32] * CVA6Cfg[17102-:32]) - 1:0] wdata;
	// Trace: core/cva6_rvfi.sv:95:3
	wire [CVA6Cfg[17070-:32] - 1:0] lsu_addr;
	// Trace: core/cva6_rvfi.sv:96:3
	wire [(CVA6Cfg[17102-:32] / 8) - 1:0] lsu_rmask;
	// Trace: core/cva6_rvfi.sv:97:3
	wire [(CVA6Cfg[17102-:32] / 8) - 1:0] lsu_wmask;
	// Trace: core/cva6_rvfi.sv:98:3
	wire [CVA6Cfg[16503-:32] - 1:0] lsu_addr_trans_id;
	// Trace: core/cva6_rvfi.sv:100:3
	// removed localparam type riscv_pmp_addr_mode_t
	// removed localparam type riscv_pmpcfg_access_t
	// removed localparam type riscv_pmpcfg_t
	wire [127:0] pmpcfg_q;
	wire [127:0] pmpcfg_d;
	// Trace: core/cva6_rvfi.sv:102:3
	reg csr;
	// Trace: core/cva6_rvfi.sv:103:3
	reg instr;
	// Trace: core/cva6_rvfi.sv:105:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cva6_rvfi.sv:106:5
		csr = 1'sb0;
		// Trace: core/cva6_rvfi.sv:107:5
		instr = 1'sb0;
		// Trace: core/cva6_rvfi.sv:109:5
		if ($bits(type(rvfi_probes_i.instr)) == 1)
			// Trace: core/cva6_rvfi.sv:110:7
			instr = rvfi_probes_i.instr;
		if ($bits(type(rvfi_probes_i.csr)) == 1)
			// Trace: core/cva6_rvfi.sv:114:7
			csr = rvfi_probes_i.csr;
	end
	// Trace: core/cva6_rvfi.sv:120:3
	assign flush = instr.flush;
	// Trace: core/cva6_rvfi.sv:121:3
	assign issue_instr_ack = instr.issue_instr_ack;
	// Trace: core/cva6_rvfi.sv:122:3
	assign fetch_entry_valid = instr.fetch_entry_valid;
	// Trace: core/cva6_rvfi.sv:123:3
	assign instruction = instr.instruction;
	// Trace: core/cva6_rvfi.sv:124:3
	assign is_compressed = instr.is_compressed;
	// Trace: core/cva6_rvfi.sv:126:3
	assign issue_pointer = instr.issue_pointer;
	// Trace: core/cva6_rvfi.sv:127:3
	assign commit_pointer = instr.commit_pointer;
	// Trace: core/cva6_rvfi.sv:129:3
	assign flush_unissued_instr = instr.flush_unissued_instr;
	// Trace: core/cva6_rvfi.sv:130:3
	assign decoded_instr_valid = instr.decoded_instr_valid;
	// Trace: core/cva6_rvfi.sv:131:3
	assign decoded_instr_ack = instr.decoded_instr_ack;
	// Trace: core/cva6_rvfi.sv:133:3
	assign rs1_forwarding = instr.rs1_forwarding;
	// Trace: core/cva6_rvfi.sv:134:3
	assign rs2_forwarding = instr.rs2_forwarding;
	// Trace: core/cva6_rvfi.sv:136:3
	assign commit_instr_pc = instr.commit_instr_pc;
	// Trace: core/cva6_rvfi.sv:137:3
	assign commit_instr_op = instr.commit_instr_op;
	// Trace: core/cva6_rvfi.sv:138:3
	assign commit_instr_rs1 = instr.commit_instr_rs1;
	// Trace: core/cva6_rvfi.sv:139:3
	assign commit_instr_rs2 = instr.commit_instr_rs2;
	// Trace: core/cva6_rvfi.sv:140:3
	assign commit_instr_rd = instr.commit_instr_rd;
	// Trace: core/cva6_rvfi.sv:141:3
	assign commit_instr_result = instr.commit_instr_result;
	// Trace: core/cva6_rvfi.sv:142:3
	assign commit_instr_valid = instr.commit_instr_valid;
	// Trace: core/cva6_rvfi.sv:143:3
	assign commit_drop = instr.commit_drop;
	// Trace: core/cva6_rvfi.sv:145:3
	assign ex_commit_cause = instr.ex_commit_cause;
	// Trace: core/cva6_rvfi.sv:146:3
	assign ex_commit_valid = instr.ex_commit_valid;
	// Trace: core/cva6_rvfi.sv:148:3
	assign priv_lvl = instr.priv_lvl;
	// Trace: core/cva6_rvfi.sv:150:3
	assign wbdata = instr.wbdata;
	// Trace: core/cva6_rvfi.sv:151:3
	assign commit_ack = instr.commit_ack;
	// Trace: core/cva6_rvfi.sv:152:3
	assign mem_paddr = instr.mem_paddr;
	// Trace: core/cva6_rvfi.sv:153:3
	assign debug_mode = instr.debug_mode;
	// Trace: core/cva6_rvfi.sv:154:3
	assign wdata = instr.wdata;
	// Trace: core/cva6_rvfi.sv:156:3
	assign lsu_addr = instr.lsu_ctrl_vaddr;
	// Trace: core/cva6_rvfi.sv:157:3
	assign lsu_rmask = (instr.lsu_ctrl_fu == 4'd1 ? instr.lsu_ctrl_be : {CVA6Cfg[17102-:32] / 8 {1'sb0}});
	// Trace: core/cva6_rvfi.sv:158:3
	assign lsu_wmask = (instr.lsu_ctrl_fu == 4'd2 ? instr.lsu_ctrl_be : {CVA6Cfg[17102-:32] / 8 {1'sb0}});
	// Trace: core/cva6_rvfi.sv:159:3
	assign lsu_addr_trans_id = instr.lsu_ctrl_trans_id;
	// Trace: core/cva6_rvfi.sv:164:3
	genvar _gv_i_1;
	generate
		for (_gv_i_1 = 0; _gv_i_1 < CVA6Cfg[16841-:32]; _gv_i_1 = _gv_i_1 + 1) begin : genblk1
			localparam i = _gv_i_1;
			// Trace: core/cva6_rvfi.sv:165:5
			assign truncated[i * 32+:32] = (is_compressed[i] ? {16'b0000000000000000, instruction[(i * 32) + 15-:16]} : instruction[i * 32+:32]);
		end
	endgenerate
	// Trace: core/cva6_rvfi.sv:168:3
	// removed localparam type issue_struct_t
	// Trace: core/cva6_rvfi.sv:172:3
	reg [(CVA6Cfg[16841-:32] * 33) - 1:0] issue_n;
	reg [(CVA6Cfg[16841-:32] * 33) - 1:0] issue_q;
	// Trace: core/cva6_rvfi.sv:173:3
	reg took0;
	// Trace: core/cva6_rvfi.sv:175:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cva6_rvfi.sv:176:5
		issue_n = issue_q;
		// Trace: core/cva6_rvfi.sv:177:5
		took0 = 1'b0;
		// Trace: core/cva6_rvfi.sv:179:5
		begin : sv2v_autoblock_1
			// Trace: core/cva6_rvfi.sv:179:10
			reg [31:0] i;
			// Trace: core/cva6_rvfi.sv:179:10
			for (i = 0; i < CVA6Cfg[16841-:32]; i = i + 1)
				begin
					// Trace: core/cva6_rvfi.sv:180:7
					if (issue_instr_ack[i])
						// Trace: core/cva6_rvfi.sv:181:9
						issue_n[(i * 33) + 32] = 1'b0;
				end
		end
		if (!issue_n[((CVA6Cfg[16841-:32] - 1) * 33) + 32]) begin
			// Trace: core/cva6_rvfi.sv:186:7
			issue_n[((CVA6Cfg[16841-:32] - 1) * 33) + 32] = fetch_entry_valid[0];
			// Trace: core/cva6_rvfi.sv:187:7
			issue_n[((CVA6Cfg[16841-:32] - 1) * 33) + 31-:32] = truncated[0+:32];
			// Trace: core/cva6_rvfi.sv:188:7
			took0 = 1'b1;
		end
		if (!issue_n[32]) begin
			// Trace: core/cva6_rvfi.sv:192:7
			issue_n[0+:33] = issue_n[(CVA6Cfg[16841-:32] - 1) * 33+:33];
			// Trace: core/cva6_rvfi.sv:193:7
			issue_n[((CVA6Cfg[16841-:32] - 1) * 33) + 32] = 1'b0;
		end
		if (!issue_n[((CVA6Cfg[16841-:32] - 1) * 33) + 32]) begin
			begin
				// Trace: core/cva6_rvfi.sv:197:7
				if (took0) begin
					// Trace: core/cva6_rvfi.sv:198:9
					issue_n[((CVA6Cfg[16841-:32] - 1) * 33) + 32] = fetch_entry_valid[CVA6Cfg[16841-:32] - 1];
					// Trace: core/cva6_rvfi.sv:199:9
					issue_n[((CVA6Cfg[16841-:32] - 1) * 33) + 31-:32] = truncated[(CVA6Cfg[16841-:32] - 1) * 32+:32];
				end
				else begin
					// Trace: core/cva6_rvfi.sv:201:9
					issue_n[((CVA6Cfg[16841-:32] - 1) * 33) + 32] = fetch_entry_valid[0];
					// Trace: core/cva6_rvfi.sv:202:9
					issue_n[((CVA6Cfg[16841-:32] - 1) * 33) + 31-:32] = truncated[0+:32];
				end
			end
		end
		if (flush)
			// Trace: core/cva6_rvfi.sv:207:7
			begin : sv2v_autoblock_2
				// Trace: core/cva6_rvfi.sv:207:12
				reg [31:0] i;
				// Trace: core/cva6_rvfi.sv:207:12
				for (i = 0; i < CVA6Cfg[16841-:32]; i = i + 1)
					begin
						// Trace: core/cva6_rvfi.sv:208:9
						issue_n[(i * 33) + 32] = 1'b0;
					end
			end
	end
	// Trace: core/cva6_rvfi.sv:213:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cva6_rvfi.sv:214:5
		if (~rst_ni)
			// Trace: core/cva6_rvfi.sv:215:7
			issue_q <= 1'sb0;
		else
			// Trace: core/cva6_rvfi.sv:217:7
			issue_q <= issue_n;
	// Trace: core/cva6_rvfi.sv:224:3
	// removed localparam type sb_mem_t
	// Trace: core/cva6_rvfi.sv:233:3
	reg [(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (CVA6Cfg[16535-:32] * ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32)) - 1 : (CVA6Cfg[16535-:32] * (1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 30)):(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? 0 : (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31)] mem_q;
	reg [(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (CVA6Cfg[16535-:32] * ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32)) - 1 : (CVA6Cfg[16535-:32] * (1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 30)):(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? 0 : (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31)] mem_n;
	// Trace: core/cva6_rvfi.sv:235:3
	localparam ariane_pkg_STORE_WB = 1;
	function automatic [CVA6Cfg[17070-:32] - 1:0] sv2v_cast_E5624;
		input reg [CVA6Cfg[17070-:32] - 1:0] inp;
		sv2v_cast_E5624 = inp;
	endfunction
	function automatic [(CVA6Cfg[17102-:32] / 8) - 1:0] sv2v_cast_A5861;
		input reg [(CVA6Cfg[17102-:32] / 8) - 1:0] inp;
		sv2v_cast_A5861 = inp;
	endfunction
	function automatic [CVA6Cfg[17102-:32] - 1:0] sv2v_cast_C446A;
		input reg [CVA6Cfg[17102-:32] - 1:0] inp;
		sv2v_cast_C446A = inp;
	endfunction
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	always @(*) begin : issue_fifo
		if (_sv2v_0)
			;
		// Trace: core/cva6_rvfi.sv:236:5
		mem_n = mem_q;
		// Trace: core/cva6_rvfi.sv:238:5
		begin : sv2v_autoblock_3
			// Trace: core/cva6_rvfi.sv:238:10
			reg [31:0] i;
			// Trace: core/cva6_rvfi.sv:238:10
			for (i = 0; i < CVA6Cfg[16841-:32]; i = i + 1)
				begin
					// Trace: core/cva6_rvfi.sv:239:7
					if ((decoded_instr_valid[i] && decoded_instr_ack[i]) && !flush_unissued_instr)
						// Trace: core/cva6_rvfi.sv:240:9
						mem_n[(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? 0 : (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) + (issue_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31)))+:(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))] = {sv2v_cast_94688(rs1_forwarding[i * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]]), sv2v_cast_94688(rs2_forwarding[i * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]]), sv2v_cast_E5624(1'sb0), sv2v_cast_A5861(1'sb0), sv2v_cast_A5861(1'sb0), sv2v_cast_C446A(1'sb0), sv2v_cast_32(issue_q[(i * 33) + 31-:32])};
				end
		end
		if (lsu_rmask != 0) begin
			// Trace: core/cva6_rvfi.sv:253:7
			mem_n[(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (lsu_addr_trans_id * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) : (((lsu_addr_trans_id * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))))) + ((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) >= ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) ? ((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)))) + 1 : (((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) + 1)) - 1)-:((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) >= ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) ? ((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)))) + 1 : (((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) + 1)] = lsu_addr;
			// Trace: core/cva6_rvfi.sv:254:7
			mem_n[(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (lsu_addr_trans_id * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) : (((lsu_addr_trans_id * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) + (((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) >= ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)) ? (((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) - ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) + 1 : (((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) + 1)) - 1)-:(((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) >= ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)) ? (((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) - ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) + 1 : (((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) + 1)] = lsu_rmask;
		end
		else if (lsu_wmask != 0) begin
			// Trace: core/cva6_rvfi.sv:256:7
			mem_n[(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (lsu_addr_trans_id * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) : (((lsu_addr_trans_id * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))))) + ((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) >= ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) ? ((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)))) + 1 : (((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) + 1)) - 1)-:((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) >= ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) ? ((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)))) + 1 : (((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) + 1)] = lsu_addr;
			// Trace: core/cva6_rvfi.sv:257:7
			mem_n[(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (lsu_addr_trans_id * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) : (((lsu_addr_trans_id * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) + (((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)) >= (CVA6Cfg[17102-:32] + 32) ? (((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)) - (CVA6Cfg[17102-:32] + 32)) + 1 : ((CVA6Cfg[17102-:32] + 32) - ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) + 1)) - 1)-:(((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)) >= (CVA6Cfg[17102-:32] + 32) ? (((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)) - (CVA6Cfg[17102-:32] + 32)) + 1 : ((CVA6Cfg[17102-:32] + 32) - ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) + 1)] = lsu_wmask;
			// Trace: core/cva6_rvfi.sv:258:7
			mem_n[(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (lsu_addr_trans_id * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17102-:32] + 31 : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17102-:32] + 31)) : (((lsu_addr_trans_id * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17102-:32] + 31 : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17102-:32] + 31))) + ((CVA6Cfg[17102-:32] + 31) >= 32 ? CVA6Cfg[17102-:32] + 0 : 33 - (CVA6Cfg[17102-:32] + 31))) - 1)-:((CVA6Cfg[17102-:32] + 31) >= 32 ? CVA6Cfg[17102-:32] + 0 : 33 - (CVA6Cfg[17102-:32] + 31))] = wbdata[ariane_pkg_STORE_WB * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]];
		end
	end
	// Trace: core/cva6_rvfi.sv:262:3
	function automatic [(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31)) - 1:0] sv2v_cast_70C6B;
		input reg [(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31)) - 1:0] inp;
		sv2v_cast_70C6B = inp;
	endfunction
	always @(posedge clk_i or negedge rst_ni) begin : regs
		// Trace: core/cva6_rvfi.sv:263:5
		if (!rst_ni)
			// Trace: core/cva6_rvfi.sv:264:7
			mem_q <= {CVA6Cfg[16535-:32] {sv2v_cast_70C6B(0)}};
		else
			// Trace: core/cva6_rvfi.sv:266:7
			mem_q <= mem_n;
	end
	// Trace: core/cva6_rvfi.sv:274:3
	function automatic ariane_pkg_is_rd_fpr;
		// Trace: core/include/ariane_pkg.sv:597:38
		input reg [7:0] op;
		// Trace: core/include/ariane_pkg.sv:598:5
		(* full_case, parallel_case *)
		case (op)
			8'd96, 8'd97, 8'd98, 8'd99, 8'd104, 8'd105, 8'd106, 8'd107, 8'd108, 8'd109, 8'd110, 8'd111, 8'd112, 8'd113, 8'd115, 8'd116, 8'd117, 8'd119, 8'd122, 8'd123, 8'd124, 8'd125, 8'd126, 8'd133, 8'd134, 8'd135, 8'd136, 8'd183: ariane_pkg_is_rd_fpr = 1'b1;
			default: ariane_pkg_is_rd_fpr = 1'b0;
		endcase
	endfunction
	localparam cva6_config_pkg_CVA6ConfigXlen = 64;
	localparam riscv_XLEN = cva6_config_pkg_CVA6ConfigXlen;
	localparam [63:0] riscv_ENV_CALL_MMODE = 11;
	localparam [63:0] riscv_ENV_CALL_SMODE = 9;
	localparam [63:0] riscv_ENV_CALL_UMODE = 8;
	always @(posedge clk_i)
		// Trace: core/cva6_rvfi.sv:275:5
		begin : sv2v_autoblock_4
			// Trace: core/cva6_rvfi.sv:275:10
			reg signed [31:0] i;
			// Trace: core/cva6_rvfi.sv:275:10
			for (i = 0; i < CVA6Cfg[16873-:32]; i = i + 1)
				begin : sv2v_autoblock_5
					// Trace: core/cva6_rvfi.sv:276:7
					reg exception;
					// Trace: core/cva6_rvfi.sv:277:7
					exception = (((i == 0) && commit_instr_valid[i]) && ex_commit_valid) && !commit_drop[i];
					// Trace: core/cva6_rvfi.sv:278:7
					rvfi_instr_o[i].valid <= ((commit_ack[i] && !ex_commit_valid) && !commit_drop[i]) || (exception && (((ex_commit_cause == riscv_ENV_CALL_MMODE) || (ex_commit_cause == riscv_ENV_CALL_SMODE)) || (ex_commit_cause == riscv_ENV_CALL_UMODE)));
					// Trace: core/cva6_rvfi.sv:282:7
					rvfi_instr_o[i].insn <= mem_q[(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? 31 : (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 0) : ((commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? 31 : (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 0)) + 31)-:32];
					// Trace: core/cva6_rvfi.sv:284:7
					rvfi_instr_o[i].trap <= exception;
					// Trace: core/cva6_rvfi.sv:285:7
					rvfi_instr_o[i].cause <= ex_commit_cause;
					// Trace: core/cva6_rvfi.sv:286:7
					rvfi_instr_o[i].mode <= (CVA6Cfg[1321] && debug_mode ? 2'b10 : priv_lvl);
					// Trace: core/cva6_rvfi.sv:287:7
					rvfi_instr_o[i].ixl <= (CVA6Cfg[17102-:32] == 64 ? 2 : 1);
					// Trace: core/cva6_rvfi.sv:288:7
					rvfi_instr_o[i].rs1_addr <= commit_instr_rs1[(i * 5) + 4-:5];
					// Trace: core/cva6_rvfi.sv:289:7
					rvfi_instr_o[i].rs2_addr <= commit_instr_rs2[(i * 5) + 4-:5];
					// Trace: core/cva6_rvfi.sv:290:7
					rvfi_instr_o[i].rd_addr <= commit_instr_rd[(i * 5) + 4-:5];
					// Trace: core/cva6_rvfi.sv:291:7
					rvfi_instr_o[i].rd_wdata <= (CVA6Cfg[16471] && ariane_pkg_is_rd_fpr(commit_instr_op[i * 8+:8]) ? commit_instr_result[i * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]] : wdata[i * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]]);
					// Trace: core/cva6_rvfi.sv:294:7
					rvfi_instr_o[i].pc_rdata <= commit_instr_pc[i * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
					// Trace: core/cva6_rvfi.sv:295:7
					rvfi_instr_o[i].mem_addr <= mem_q[(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) : (((commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))))) + ((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) >= ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) ? ((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)))) + 1 : (((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) + 1)) - 1)-:((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) >= ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) ? ((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)))) + 1 : (((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) + 1)];
					// Trace: core/cva6_rvfi.sv:297:7
					rvfi_instr_o[i].mem_paddr <= mem_paddr;
					// Trace: core/cva6_rvfi.sv:298:7
					rvfi_instr_o[i].mem_wmask <= mem_q[(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) : (((commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) + (((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)) >= (CVA6Cfg[17102-:32] + 32) ? (((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)) - (CVA6Cfg[17102-:32] + 32)) + 1 : ((CVA6Cfg[17102-:32] + 32) - ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) + 1)) - 1)-:(((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)) >= (CVA6Cfg[17102-:32] + 32) ? (((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)) - (CVA6Cfg[17102-:32] + 32)) + 1 : ((CVA6Cfg[17102-:32] + 32) - ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) + 1)];
					// Trace: core/cva6_rvfi.sv:299:7
					rvfi_instr_o[i].mem_wdata <= mem_q[(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17102-:32] + 31 : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17102-:32] + 31)) : (((commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17102-:32] + 31 : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17102-:32] + 31))) + ((CVA6Cfg[17102-:32] + 31) >= 32 ? CVA6Cfg[17102-:32] + 0 : 33 - (CVA6Cfg[17102-:32] + 31))) - 1)-:((CVA6Cfg[17102-:32] + 31) >= 32 ? CVA6Cfg[17102-:32] + 0 : 33 - (CVA6Cfg[17102-:32] + 31))];
					// Trace: core/cva6_rvfi.sv:300:7
					rvfi_instr_o[i].mem_rmask <= mem_q[(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) : (((commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) + (((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) >= ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)) ? (((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) - ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) + 1 : (((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) + 1)) - 1)-:(((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) >= ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)) ? (((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))) - ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))) + 1 : (((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)) - ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) + 1)];
					// Trace: core/cva6_rvfi.sv:301:7
					rvfi_instr_o[i].mem_rdata <= commit_instr_result[i * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]];
					// Trace: core/cva6_rvfi.sv:302:7
					rvfi_instr_o[i].rs1_rdata <= mem_q[(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17102-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17102-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))))) : (((commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17102-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17102-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))))))) + ((CVA6Cfg[17102-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))))) >= (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))))) ? ((CVA6Cfg[17102-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))))) - (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)))))) + 1 : ((CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))))) - (CVA6Cfg[17102-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))))) + 1)) - 1)-:((CVA6Cfg[17102-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))))) >= (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))))) ? ((CVA6Cfg[17102-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))))) - (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)))))) + 1 : ((CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))))) - (CVA6Cfg[17102-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))))) + 1)];
					// Trace: core/cva6_rvfi.sv:303:7
					rvfi_instr_o[i].rs2_rdata <= mem_q[(((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))))) : (((commit_pointer[i * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] * (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 32 : 1 - ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31))) + (((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) >= 0 ? CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))) : ((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17070-:32]) + (CVA6Cfg[17102-:32] / 8)) + (CVA6Cfg[17102-:32] / 8)) + CVA6Cfg[17102-:32]) + 31) - (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))))) + ((CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) >= (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)))) ? ((CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))))) + 1 : ((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)))) - (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))))) + 1)) - 1)-:((CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) >= (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)))) ? ((CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31))))) - (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32))))) + 1 : ((CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 32)))) - (CVA6Cfg[17102-:32] + (CVA6Cfg[17070-:32] + ((CVA6Cfg[17102-:32] / 8) + ((CVA6Cfg[17102-:32] / 8) + (CVA6Cfg[17102-:32] + 31)))))) + 1)];
				end
		end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:328:54
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:328:96
		if (CVA6Cfg[16471])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:328:136
			rvfi_csr_o.fflags.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.fcsr_q.fflags)), csr.fcsr_q.fflags};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:328:256
	wire [$bits(type(rvfi_csr_o.fflags.wdata)):1] sv2v_tmp_B91E9;
	assign sv2v_tmp_B91E9 = (CVA6Cfg[16471] ? {CVA6Cfg[17102-:32] - $bits(type(csr.fcsr_q.fflags)), csr.fcsr_q.fflags} : 0);
	always @(*) rvfi_csr_o.fflags.wdata = sv2v_tmp_B91E9;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:328:384
	wire [$bits(type(rvfi_csr_o.fflags.rmask)):1] sv2v_tmp_0A451;
	assign sv2v_tmp_0A451 = (CVA6Cfg[16471] ? 1 : 0);
	always @(*) rvfi_csr_o.fflags.rmask = sv2v_tmp_0A451;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:328:453
	wire [$bits(type(rvfi_csr_o.fflags.wmask)):1] sv2v_tmp_51D9E;
	assign sv2v_tmp_51D9E = (rvfi_csr_o.fflags.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.fcsr_q.fflags)), csr.fcsr_q.fflags}) && CVA6Cfg[16471];
	always @(*) rvfi_csr_o.fflags.wmask = sv2v_tmp_51D9E;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:329:48
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:329:90
		if (CVA6Cfg[16471])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:329:130
			rvfi_csr_o.frm.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.fcsr_q.frm)), csr.fcsr_q.frm};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:329:250
	wire [$bits(type(rvfi_csr_o.frm.wdata)):1] sv2v_tmp_314D0;
	assign sv2v_tmp_314D0 = (CVA6Cfg[16471] ? {CVA6Cfg[17102-:32] - $bits(type(csr.fcsr_q.frm)), csr.fcsr_q.frm} : 0);
	always @(*) rvfi_csr_o.frm.wdata = sv2v_tmp_314D0;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:329:378
	wire [$bits(type(rvfi_csr_o.frm.rmask)):1] sv2v_tmp_9395C;
	assign sv2v_tmp_9395C = (CVA6Cfg[16471] ? 1 : 0);
	always @(*) rvfi_csr_o.frm.rmask = sv2v_tmp_9395C;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:329:447
	wire [$bits(type(rvfi_csr_o.frm.wmask)):1] sv2v_tmp_E89C2;
	assign sv2v_tmp_E89C2 = (rvfi_csr_o.frm.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.fcsr_q.frm)), csr.fcsr_q.frm}) && CVA6Cfg[16471];
	always @(*) rvfi_csr_o.frm.wmask = sv2v_tmp_E89C2;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:330:77
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:330:119
		if (CVA6Cfg[16471])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:330:159
			rvfi_csr_o.fcsr.rdata <= {CVA6Cfg[17102-:32] - ((0 + $bits(type(csr.fcsr_q.frm))) + $bits(type(csr.fcsr_q.fflags))), csr.fcsr_q.frm, csr.fcsr_q.fflags};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:330:279
	wire [$bits(type(rvfi_csr_o.fcsr.wdata)):1] sv2v_tmp_B2E0C;
	assign sv2v_tmp_B2E0C = (CVA6Cfg[16471] ? {CVA6Cfg[17102-:32] - ((0 + $bits(type(csr.fcsr_q.frm))) + $bits(type(csr.fcsr_q.fflags))), csr.fcsr_q.frm, csr.fcsr_q.fflags} : 0);
	always @(*) rvfi_csr_o.fcsr.wdata = sv2v_tmp_B2E0C;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:330:407
	wire [$bits(type(rvfi_csr_o.fcsr.rmask)):1] sv2v_tmp_2CDBE;
	assign sv2v_tmp_2CDBE = (CVA6Cfg[16471] ? 1 : 0);
	always @(*) rvfi_csr_o.fcsr.rmask = sv2v_tmp_2CDBE;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:330:476
	wire [$bits(type(rvfi_csr_o.fcsr.wmask)):1] sv2v_tmp_1BF70;
	assign sv2v_tmp_1BF70 = (rvfi_csr_o.fcsr.rdata != {CVA6Cfg[17102-:32] - ((0 + $bits(type(csr.fcsr_q.frm))) + $bits(type(csr.fcsr_q.fflags))), csr.fcsr_q.frm, csr.fcsr_q.fflags}) && CVA6Cfg[16471];
	always @(*) rvfi_csr_o.fcsr.wmask = sv2v_tmp_1BF70;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:332:52
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:332:94
		if (CVA6Cfg[16471])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:332:134
			rvfi_csr_o.ftran.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.fcsr_q.fprec)), csr.fcsr_q.fprec};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:332:254
	wire [$bits(type(rvfi_csr_o.ftran.wdata)):1] sv2v_tmp_5BAF0;
	assign sv2v_tmp_5BAF0 = (CVA6Cfg[16471] ? {CVA6Cfg[17102-:32] - $bits(type(csr.fcsr_q.fprec)), csr.fcsr_q.fprec} : 0);
	always @(*) rvfi_csr_o.ftran.wdata = sv2v_tmp_5BAF0;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:332:382
	wire [$bits(type(rvfi_csr_o.ftran.rmask)):1] sv2v_tmp_E5C54;
	assign sv2v_tmp_E5C54 = (CVA6Cfg[16471] ? 1 : 0);
	always @(*) rvfi_csr_o.ftran.rmask = sv2v_tmp_E5C54;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:332:451
	wire [$bits(type(rvfi_csr_o.ftran.wmask)):1] sv2v_tmp_EFC4A;
	assign sv2v_tmp_EFC4A = (rvfi_csr_o.ftran.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.fcsr_q.fprec)), csr.fcsr_q.fprec}) && CVA6Cfg[16471];
	always @(*) rvfi_csr_o.ftran.wmask = sv2v_tmp_EFC4A;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:333:93
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:333:135
		if (CVA6Cfg[16471])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:333:175
			rvfi_csr_o.dcsr.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.dcsr_q)), csr.dcsr_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:333:295
	wire [$bits(type(rvfi_csr_o.dcsr.wdata)):1] sv2v_tmp_52196;
	assign sv2v_tmp_52196 = (CVA6Cfg[16471] ? {CVA6Cfg[17102-:32] - $bits(type(csr.dcsr_q)), csr.dcsr_q} : 0);
	always @(*) rvfi_csr_o.dcsr.wdata = sv2v_tmp_52196;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:333:423
	wire [$bits(type(rvfi_csr_o.dcsr.rmask)):1] sv2v_tmp_C393C;
	assign sv2v_tmp_C393C = (CVA6Cfg[16471] ? 1 : 0);
	always @(*) rvfi_csr_o.dcsr.rmask = sv2v_tmp_C393C;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:333:492
	wire [$bits(type(rvfi_csr_o.dcsr.wmask)):1] sv2v_tmp_CF728;
	assign sv2v_tmp_CF728 = (rvfi_csr_o.dcsr.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.dcsr_q)), csr.dcsr_q}) && CVA6Cfg[16471];
	always @(*) rvfi_csr_o.dcsr.wmask = sv2v_tmp_CF728;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:335:90
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:335:132
		if (CVA6Cfg[1321])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:335:172
			rvfi_csr_o.dpc.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.dpc_q)), csr.dpc_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:335:292
	wire [$bits(type(rvfi_csr_o.dpc.wdata)):1] sv2v_tmp_C87FB;
	assign sv2v_tmp_C87FB = (CVA6Cfg[1321] ? {CVA6Cfg[17102-:32] - $bits(type(csr.dpc_q)), csr.dpc_q} : 0);
	always @(*) rvfi_csr_o.dpc.wdata = sv2v_tmp_C87FB;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:335:420
	wire [$bits(type(rvfi_csr_o.dpc.rmask)):1] sv2v_tmp_1EC63;
	assign sv2v_tmp_1EC63 = (CVA6Cfg[1321] ? 1 : 0);
	always @(*) rvfi_csr_o.dpc.rmask = sv2v_tmp_1EC63;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:335:489
	wire [$bits(type(rvfi_csr_o.dpc.wmask)):1] sv2v_tmp_50A1A;
	assign sv2v_tmp_50A1A = (rvfi_csr_o.dpc.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.dpc_q)), csr.dpc_q}) && CVA6Cfg[1321];
	always @(*) rvfi_csr_o.dpc.wmask = sv2v_tmp_50A1A;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:337:96
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:337:138
		if (CVA6Cfg[1321])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:337:178
			rvfi_csr_o.dscratch0.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.dscratch0_q)), csr.dscratch0_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:337:298
	wire [$bits(type(rvfi_csr_o.dscratch0.wdata)):1] sv2v_tmp_71866;
	assign sv2v_tmp_71866 = (CVA6Cfg[1321] ? {CVA6Cfg[17102-:32] - $bits(type(csr.dscratch0_q)), csr.dscratch0_q} : 0);
	always @(*) rvfi_csr_o.dscratch0.wdata = sv2v_tmp_71866;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:337:426
	wire [$bits(type(rvfi_csr_o.dscratch0.rmask)):1] sv2v_tmp_4F9B6;
	assign sv2v_tmp_4F9B6 = (CVA6Cfg[1321] ? 1 : 0);
	always @(*) rvfi_csr_o.dscratch0.rmask = sv2v_tmp_4F9B6;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:337:495
	wire [$bits(type(rvfi_csr_o.dscratch0.wmask)):1] sv2v_tmp_2DDF2;
	assign sv2v_tmp_2DDF2 = (rvfi_csr_o.dscratch0.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.dscratch0_q)), csr.dscratch0_q}) && CVA6Cfg[1321];
	always @(*) rvfi_csr_o.dscratch0.wmask = sv2v_tmp_2DDF2;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:338:96
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:338:138
		if (CVA6Cfg[1321])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:338:178
			rvfi_csr_o.dscratch1.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.dscratch1_q)), csr.dscratch1_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:338:298
	wire [$bits(type(rvfi_csr_o.dscratch1.wdata)):1] sv2v_tmp_6D6A7;
	assign sv2v_tmp_6D6A7 = (CVA6Cfg[1321] ? {CVA6Cfg[17102-:32] - $bits(type(csr.dscratch1_q)), csr.dscratch1_q} : 0);
	always @(*) rvfi_csr_o.dscratch1.wdata = sv2v_tmp_6D6A7;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:338:426
	wire [$bits(type(rvfi_csr_o.dscratch1.rmask)):1] sv2v_tmp_99717;
	assign sv2v_tmp_99717 = (CVA6Cfg[1321] ? 1 : 0);
	always @(*) rvfi_csr_o.dscratch1.rmask = sv2v_tmp_99717;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:338:495
	wire [$bits(type(rvfi_csr_o.dscratch1.wmask)):1] sv2v_tmp_8B4E2;
	assign sv2v_tmp_8B4E2 = (rvfi_csr_o.dscratch1.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.dscratch1_q)), csr.dscratch1_q}) && CVA6Cfg[1321];
	always @(*) rvfi_csr_o.dscratch1.wmask = sv2v_tmp_8B4E2;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:341:73
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:341:115
		if (CVA6Cfg[16366])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:341:155
			rvfi_csr_o.sstatus.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mstatus_extended + SMODE_STATUS_READ_MASK[CVA6Cfg[(64 + 64) + ((2 + 64) + ((33 + 2) + ((64 + 33) + ((64 + 64) + ((64 + 33) + ((2 + 2) + ((2 + 2) + ((2 + 2) + ((2 + 2) + ((64 + 2) + ((33 + 2) + ((33 + 33) + ((2 + 2) + ((128 + 64) + ((64 + 33) + ((64 + 96) + ((2 + 4128) + ((4160 + 64) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (33 + ((2 + 64) + ((64 + 64) + ((34 + 64) + ((64 + 64) + ((64 + 64) + ((64 + 64) + ((33 + 64) + ((64 + 64) + ((64 + 36) + ((64 + 64) + ((64 + 64) + (64 - 1)))))))))))))))))))))))))))))))))))))))-:((128 + ((66 + 35) + ((97 + 128) + ((97 + 4) + ((4 + 4) + ((4 + 66) + ((35 + 66) + ((4 + 192) + ((97 + 160) + ((4130 + 4224) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1353)))))))))))))))))) >= (97 + ((97 + 35) + ((97 + 128) + ((66 + 4) + ((4 + 4) + ((35 + 66) + ((4 + 66) + ((67 + 160) + ((97 + 129) + ((8225 + 128) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1354)))))))))))))))))) ? (((128 + 101) + ((225 + 101) + ((8 + 70) + ((101 + 196) + ((257 + 8354) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1353))))))))))))) - ((97 + 132) + ((225 + 70) + ((8 + 101) + ((70 + 227) + ((226 + 8353) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1354)))))))))))))) + 1 : (((97 + 132) + ((225 + 70) + ((8 + 101) + ((70 + 227) + ((226 + 8353) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1354))))))))))))) - ((128 + 101) + ((225 + 101) + ((8 + 70) + ((101 + 196) + ((257 + 8354) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1353)))))))))))))) + 1)] - 1:0])), csr.mstatus_extended & SMODE_STATUS_READ_MASK[CVA6Cfg[17102-:32] - 1:0]};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:341:275
	wire [$bits(type(rvfi_csr_o.sstatus.wdata)):1] sv2v_tmp_E5194;
	assign sv2v_tmp_E5194 = (CVA6Cfg[16366] ? {CVA6Cfg[17102-:32] - $bits(type(csr.mstatus_extended + SMODE_STATUS_READ_MASK[CVA6Cfg[(64 + 64) + ((2 + 64) + ((33 + 2) + ((64 + 33) + ((64 + 64) + ((64 + 33) + ((2 + 2) + ((2 + 2) + ((2 + 2) + ((2 + 2) + ((64 + 2) + ((33 + 2) + ((33 + 33) + ((2 + 2) + ((128 + 64) + ((64 + 33) + ((64 + 96) + ((2 + 4128) + ((4160 + 64) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (33 + ((2 + 64) + ((64 + 64) + ((34 + 64) + ((64 + 64) + ((64 + 64) + ((64 + 64) + ((33 + 64) + ((64 + 64) + ((64 + 36) + ((64 + 64) + ((64 + 64) + (64 - 1)))))))))))))))))))))))))))))))))))))))-:((128 + ((66 + 35) + ((97 + 128) + ((97 + 4) + ((4 + 4) + ((4 + 66) + ((35 + 66) + ((4 + 192) + ((97 + 160) + ((4130 + 4224) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1353)))))))))))))))))) >= (97 + ((97 + 35) + ((97 + 128) + ((66 + 4) + ((4 + 4) + ((35 + 66) + ((4 + 66) + ((67 + 160) + ((97 + 129) + ((8225 + 128) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1354)))))))))))))))))) ? (((128 + 101) + ((225 + 101) + ((8 + 70) + ((101 + 196) + ((257 + 8354) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1353))))))))))))) - ((97 + 132) + ((225 + 70) + ((8 + 101) + ((70 + 227) + ((226 + 8353) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1354)))))))))))))) + 1 : (((97 + 132) + ((225 + 70) + ((8 + 101) + ((70 + 227) + ((226 + 8353) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1354))))))))))))) - ((128 + 101) + ((225 + 101) + ((8 + 70) + ((101 + 196) + ((257 + 8354) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1353)))))))))))))) + 1)] - 1:0])), csr.mstatus_extended & SMODE_STATUS_READ_MASK[CVA6Cfg[17102-:32] - 1:0]} : 0);
	always @(*) rvfi_csr_o.sstatus.wdata = sv2v_tmp_E5194;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:341:403
	wire [$bits(type(rvfi_csr_o.sstatus.rmask)):1] sv2v_tmp_EE748;
	assign sv2v_tmp_EE748 = (CVA6Cfg[16366] ? 1 : 0);
	always @(*) rvfi_csr_o.sstatus.rmask = sv2v_tmp_EE748;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:341:472
	wire [$bits(type(rvfi_csr_o.sstatus.wmask)):1] sv2v_tmp_0EB86;
	assign sv2v_tmp_0EB86 = (rvfi_csr_o.sstatus.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mstatus_extended + SMODE_STATUS_READ_MASK[CVA6Cfg[(64 + 64) + ((2 + 64) + ((33 + 2) + ((64 + 33) + ((64 + 64) + ((64 + 33) + ((2 + 2) + ((2 + 2) + ((2 + 2) + ((2 + 2) + ((64 + 2) + ((33 + 2) + ((33 + 33) + ((2 + 2) + ((128 + 64) + ((64 + 33) + ((64 + 96) + ((2 + 4128) + ((4160 + 64) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (33 + ((2 + 64) + ((64 + 64) + ((34 + 64) + ((64 + 64) + ((64 + 64) + ((64 + 64) + ((33 + 64) + ((64 + 64) + ((64 + 36) + ((64 + 64) + ((64 + 64) + (64 - 1)))))))))))))))))))))))))))))))))))))))-:((128 + ((66 + 35) + ((97 + 128) + ((97 + 4) + ((4 + 4) + ((4 + 66) + ((35 + 66) + ((4 + 192) + ((97 + 160) + ((4130 + 4224) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1353)))))))))))))))))) >= (97 + ((97 + 35) + ((97 + 128) + ((66 + 4) + ((4 + 4) + ((35 + 66) + ((4 + 66) + ((67 + 160) + ((97 + 129) + ((8225 + 128) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1354)))))))))))))))))) ? (((128 + 101) + ((225 + 101) + ((8 + 70) + ((101 + 196) + ((257 + 8354) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1353))))))))))))) - ((97 + 132) + ((225 + 70) + ((8 + 101) + ((70 + 227) + ((226 + 8353) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1354)))))))))))))) + 1 : (((97 + 132) + ((225 + 70) + ((8 + 101) + ((70 + 227) + ((226 + 8353) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1354))))))))))))) - ((128 + 101) + ((225 + 101) + ((8 + 70) + ((101 + 196) + ((257 + 8354) + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + (32 + ((config_pkg_NrMaxRules * 64) + ((config_pkg_NrMaxRules * 64) + 1353)))))))))))))) + 1)] - 1:0])), csr.mstatus_extended & SMODE_STATUS_READ_MASK[CVA6Cfg[17102-:32] - 1:0]}) && CVA6Cfg[16366];
	always @(*) rvfi_csr_o.sstatus.wmask = sv2v_tmp_0EB86;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:343:53
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:343:95
		if (CVA6Cfg[16366])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:343:135
			rvfi_csr_o.sie.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mie_q + csr.mideleg_q)), csr.mie_q & csr.mideleg_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:343:255
	wire [$bits(type(rvfi_csr_o.sie.wdata)):1] sv2v_tmp_BD813;
	assign sv2v_tmp_BD813 = (CVA6Cfg[16366] ? {CVA6Cfg[17102-:32] - $bits(type(csr.mie_q + csr.mideleg_q)), csr.mie_q & csr.mideleg_q} : 0);
	always @(*) rvfi_csr_o.sie.wdata = sv2v_tmp_BD813;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:343:383
	wire [$bits(type(rvfi_csr_o.sie.rmask)):1] sv2v_tmp_0A074;
	assign sv2v_tmp_0A074 = (CVA6Cfg[16366] ? 1 : 0);
	always @(*) rvfi_csr_o.sie.rmask = sv2v_tmp_0A074;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:343:452
	wire [$bits(type(rvfi_csr_o.sie.wmask)):1] sv2v_tmp_8FCF5;
	assign sv2v_tmp_8FCF5 = (rvfi_csr_o.sie.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mie_q + csr.mideleg_q)), csr.mie_q & csr.mideleg_q}) && CVA6Cfg[16366];
	always @(*) rvfi_csr_o.sie.wmask = sv2v_tmp_8FCF5;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:344:53
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:344:95
		if (CVA6Cfg[16366])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:344:135
			rvfi_csr_o.sip.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mip_q + csr.mideleg_q)), csr.mip_q & csr.mideleg_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:344:255
	wire [$bits(type(rvfi_csr_o.sip.wdata)):1] sv2v_tmp_E9A36;
	assign sv2v_tmp_E9A36 = (CVA6Cfg[16366] ? {CVA6Cfg[17102-:32] - $bits(type(csr.mip_q + csr.mideleg_q)), csr.mip_q & csr.mideleg_q} : 0);
	always @(*) rvfi_csr_o.sip.wdata = sv2v_tmp_E9A36;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:344:383
	wire [$bits(type(rvfi_csr_o.sip.rmask)):1] sv2v_tmp_E0051;
	assign sv2v_tmp_E0051 = (CVA6Cfg[16366] ? 1 : 0);
	always @(*) rvfi_csr_o.sip.rmask = sv2v_tmp_E0051;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:344:452
	wire [$bits(type(rvfi_csr_o.sip.wmask)):1] sv2v_tmp_FC205;
	assign sv2v_tmp_FC205 = (rvfi_csr_o.sip.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mip_q + csr.mideleg_q)), csr.mip_q & csr.mideleg_q}) && CVA6Cfg[16366];
	always @(*) rvfi_csr_o.sip.wmask = sv2v_tmp_FC205;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:346:88
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:346:130
		if (CVA6Cfg[16366])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:346:170
			rvfi_csr_o.stvec.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.stvec_q)), csr.stvec_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:346:290
	wire [$bits(type(rvfi_csr_o.stvec.wdata)):1] sv2v_tmp_81F10;
	assign sv2v_tmp_81F10 = (CVA6Cfg[16366] ? {CVA6Cfg[17102-:32] - $bits(type(csr.stvec_q)), csr.stvec_q} : 0);
	always @(*) rvfi_csr_o.stvec.wdata = sv2v_tmp_81F10;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:346:418
	wire [$bits(type(rvfi_csr_o.stvec.rmask)):1] sv2v_tmp_F0BFE;
	assign sv2v_tmp_F0BFE = (CVA6Cfg[16366] ? 1 : 0);
	always @(*) rvfi_csr_o.stvec.rmask = sv2v_tmp_F0BFE;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:346:487
	wire [$bits(type(rvfi_csr_o.stvec.wmask)):1] sv2v_tmp_53810;
	assign sv2v_tmp_53810 = (rvfi_csr_o.stvec.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.stvec_q)), csr.stvec_q}) && CVA6Cfg[16366];
	always @(*) rvfi_csr_o.stvec.wmask = sv2v_tmp_53810;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:348:93
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:348:135
		if (CVA6Cfg[16366])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:348:175
			rvfi_csr_o.scounteren.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.scounteren_q)), csr.scounteren_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:348:295
	wire [$bits(type(rvfi_csr_o.scounteren.wdata)):1] sv2v_tmp_EB2E8;
	assign sv2v_tmp_EB2E8 = (CVA6Cfg[16366] ? {CVA6Cfg[17102-:32] - $bits(type(csr.scounteren_q)), csr.scounteren_q} : 0);
	always @(*) rvfi_csr_o.scounteren.wdata = sv2v_tmp_EB2E8;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:348:423
	wire [$bits(type(rvfi_csr_o.scounteren.rmask)):1] sv2v_tmp_5CC6E;
	assign sv2v_tmp_5CC6E = (CVA6Cfg[16366] ? 1 : 0);
	always @(*) rvfi_csr_o.scounteren.rmask = sv2v_tmp_5CC6E;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:348:492
	wire [$bits(type(rvfi_csr_o.scounteren.wmask)):1] sv2v_tmp_02264;
	assign sv2v_tmp_02264 = (rvfi_csr_o.scounteren.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.scounteren_q)), csr.scounteren_q}) && CVA6Cfg[16366];
	always @(*) rvfi_csr_o.scounteren.wmask = sv2v_tmp_02264;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:350:91
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:350:133
		if (CVA6Cfg[16366])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:350:173
			rvfi_csr_o.sscratch.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.sscratch_q)), csr.sscratch_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:350:293
	wire [$bits(type(rvfi_csr_o.sscratch.wdata)):1] sv2v_tmp_7BCA1;
	assign sv2v_tmp_7BCA1 = (CVA6Cfg[16366] ? {CVA6Cfg[17102-:32] - $bits(type(csr.sscratch_q)), csr.sscratch_q} : 0);
	always @(*) rvfi_csr_o.sscratch.wdata = sv2v_tmp_7BCA1;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:350:421
	wire [$bits(type(rvfi_csr_o.sscratch.rmask)):1] sv2v_tmp_667C3;
	assign sv2v_tmp_667C3 = (CVA6Cfg[16366] ? 1 : 0);
	always @(*) rvfi_csr_o.sscratch.rmask = sv2v_tmp_667C3;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:350:490
	wire [$bits(type(rvfi_csr_o.sscratch.wmask)):1] sv2v_tmp_2FBDC;
	assign sv2v_tmp_2FBDC = (rvfi_csr_o.sscratch.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.sscratch_q)), csr.sscratch_q}) && CVA6Cfg[16366];
	always @(*) rvfi_csr_o.sscratch.wmask = sv2v_tmp_2FBDC;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:351:87
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:351:129
		if (CVA6Cfg[16366])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:351:169
			rvfi_csr_o.sepc.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.sepc_q)), csr.sepc_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:351:289
	wire [$bits(type(rvfi_csr_o.sepc.wdata)):1] sv2v_tmp_BF1A7;
	assign sv2v_tmp_BF1A7 = (CVA6Cfg[16366] ? {CVA6Cfg[17102-:32] - $bits(type(csr.sepc_q)), csr.sepc_q} : 0);
	always @(*) rvfi_csr_o.sepc.wdata = sv2v_tmp_BF1A7;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:351:417
	wire [$bits(type(rvfi_csr_o.sepc.rmask)):1] sv2v_tmp_7987D;
	assign sv2v_tmp_7987D = (CVA6Cfg[16366] ? 1 : 0);
	always @(*) rvfi_csr_o.sepc.rmask = sv2v_tmp_7987D;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:351:486
	wire [$bits(type(rvfi_csr_o.sepc.wmask)):1] sv2v_tmp_B7D8C;
	assign sv2v_tmp_B7D8C = (rvfi_csr_o.sepc.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.sepc_q)), csr.sepc_q}) && CVA6Cfg[16366];
	always @(*) rvfi_csr_o.sepc.wmask = sv2v_tmp_B7D8C;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:353:89
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:353:131
		if (CVA6Cfg[16366])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:353:171
			rvfi_csr_o.scause.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.scause_q)), csr.scause_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:353:291
	wire [$bits(type(rvfi_csr_o.scause.wdata)):1] sv2v_tmp_80EEA;
	assign sv2v_tmp_80EEA = (CVA6Cfg[16366] ? {CVA6Cfg[17102-:32] - $bits(type(csr.scause_q)), csr.scause_q} : 0);
	always @(*) rvfi_csr_o.scause.wdata = sv2v_tmp_80EEA;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:353:419
	wire [$bits(type(rvfi_csr_o.scause.rmask)):1] sv2v_tmp_A8C1C;
	assign sv2v_tmp_A8C1C = (CVA6Cfg[16366] ? 1 : 0);
	always @(*) rvfi_csr_o.scause.rmask = sv2v_tmp_A8C1C;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:353:488
	wire [$bits(type(rvfi_csr_o.scause.wmask)):1] sv2v_tmp_3AB34;
	assign sv2v_tmp_3AB34 = (rvfi_csr_o.scause.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.scause_q)), csr.scause_q}) && CVA6Cfg[16366];
	always @(*) rvfi_csr_o.scause.wmask = sv2v_tmp_3AB34;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:355:88
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:355:130
		if (CVA6Cfg[16366])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:355:170
			rvfi_csr_o.stval.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.stval_q)), csr.stval_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:355:290
	wire [$bits(type(rvfi_csr_o.stval.wdata)):1] sv2v_tmp_E55EB;
	assign sv2v_tmp_E55EB = (CVA6Cfg[16366] ? {CVA6Cfg[17102-:32] - $bits(type(csr.stval_q)), csr.stval_q} : 0);
	always @(*) rvfi_csr_o.stval.wdata = sv2v_tmp_E55EB;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:355:418
	wire [$bits(type(rvfi_csr_o.stval.rmask)):1] sv2v_tmp_69C45;
	assign sv2v_tmp_69C45 = (CVA6Cfg[16366] ? 1 : 0);
	always @(*) rvfi_csr_o.stval.rmask = sv2v_tmp_69C45;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:355:487
	wire [$bits(type(rvfi_csr_o.stval.wmask)):1] sv2v_tmp_ACE20;
	assign sv2v_tmp_ACE20 = (rvfi_csr_o.stval.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.stval_q)), csr.stval_q}) && CVA6Cfg[16366];
	always @(*) rvfi_csr_o.stval.wmask = sv2v_tmp_ACE20;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:356:87
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:356:129
		if (CVA6Cfg[16366])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:356:169
			rvfi_csr_o.satp.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.satp_q)), csr.satp_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:356:289
	wire [$bits(type(rvfi_csr_o.satp.wdata)):1] sv2v_tmp_57FD4;
	assign sv2v_tmp_57FD4 = (CVA6Cfg[16366] ? {CVA6Cfg[17102-:32] - $bits(type(csr.satp_q)), csr.satp_q} : 0);
	always @(*) rvfi_csr_o.satp.wdata = sv2v_tmp_57FD4;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:356:417
	wire [$bits(type(rvfi_csr_o.satp.rmask)):1] sv2v_tmp_BB07E;
	assign sv2v_tmp_BB07E = (CVA6Cfg[16366] ? 1 : 0);
	always @(*) rvfi_csr_o.satp.rmask = sv2v_tmp_BB07E;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:356:486
	wire [$bits(type(rvfi_csr_o.satp.wmask)):1] sv2v_tmp_9C4DC;
	assign sv2v_tmp_9C4DC = (rvfi_csr_o.satp.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.satp_q)), csr.satp_q}) && CVA6Cfg[16366];
	always @(*) rvfi_csr_o.satp.wmask = sv2v_tmp_9C4DC;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:358:45
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:358:87
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:358:127
		rvfi_csr_o.mstatus.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mstatus_extended)), csr.mstatus_extended};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:358:247
	wire [$bits(type(rvfi_csr_o.mstatus.wdata)):1] sv2v_tmp_8589A;
	assign sv2v_tmp_8589A = {CVA6Cfg[17102-:32] - $bits(type(csr.mstatus_extended)), csr.mstatus_extended};
	always @(*) rvfi_csr_o.mstatus.wdata = sv2v_tmp_8589A;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:358:375
	wire [$bits(type(rvfi_csr_o.mstatus.rmask)):1] sv2v_tmp_3CB3C;
	assign sv2v_tmp_3CB3C = 1;
	always @(*) rvfi_csr_o.mstatus.rmask = sv2v_tmp_3CB3C;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:358:444
	wire [$bits(type(rvfi_csr_o.mstatus.wmask)):1] sv2v_tmp_86BDD;
	assign sv2v_tmp_86BDD = (rvfi_csr_o.mstatus.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mstatus_extended)), csr.mstatus_extended}) && 1'b1;
	always @(*) rvfi_csr_o.mstatus.wmask = sv2v_tmp_86BDD;
	// Trace: core/cva6_rvfi.sv:360:3
	wire [31:0] mstatush_q;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:361:36
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:361:78
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:361:118
		rvfi_csr_o.mstatush.rdata <= {CVA6Cfg[17102-:32] - 32, mstatush_q};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:361:238
	wire [$bits(type(rvfi_csr_o.mstatush.wdata)):1] sv2v_tmp_BF864;
	assign sv2v_tmp_BF864 = {CVA6Cfg[17102-:32] - 32, mstatush_q};
	always @(*) rvfi_csr_o.mstatush.wdata = sv2v_tmp_BF864;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:361:366
	wire [$bits(type(rvfi_csr_o.mstatush.rmask)):1] sv2v_tmp_2BED5;
	assign sv2v_tmp_2BED5 = 1;
	always @(*) rvfi_csr_o.mstatush.rmask = sv2v_tmp_2BED5;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:361:435
	wire [$bits(type(rvfi_csr_o.mstatush.wmask)):1] sv2v_tmp_D4A24;
	assign sv2v_tmp_D4A24 = (rvfi_csr_o.mstatush.rdata != {CVA6Cfg[17102-:32] - 32, mstatush_q}) && 1'b1;
	always @(*) rvfi_csr_o.mstatush.wmask = sv2v_tmp_D4A24;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:363:29
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:363:71
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:363:111
		rvfi_csr_o.misa.rdata <= {CVA6Cfg[17102-:32] - CVA6Cfg[17102-:32], IsaCode};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:363:231
	wire [$bits(type(rvfi_csr_o.misa.wdata)):1] sv2v_tmp_B6AE4;
	assign sv2v_tmp_B6AE4 = {CVA6Cfg[17102-:32] - CVA6Cfg[17102-:32], IsaCode};
	always @(*) rvfi_csr_o.misa.wdata = sv2v_tmp_B6AE4;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:363:359
	wire [$bits(type(rvfi_csr_o.misa.rmask)):1] sv2v_tmp_F19B6;
	assign sv2v_tmp_F19B6 = 1;
	always @(*) rvfi_csr_o.misa.rmask = sv2v_tmp_F19B6;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:363:428
	wire [$bits(type(rvfi_csr_o.misa.wmask)):1] sv2v_tmp_56FDF;
	assign sv2v_tmp_56FDF = (rvfi_csr_o.misa.rdata != {CVA6Cfg[17102-:32] - CVA6Cfg[17102-:32], IsaCode}) && 1'b1;
	always @(*) rvfi_csr_o.misa.wmask = sv2v_tmp_56FDF;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:365:90
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:365:132
		if (CVA6Cfg[16366])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:365:172
			rvfi_csr_o.medeleg.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.medeleg_q)), csr.medeleg_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:365:292
	wire [$bits(type(rvfi_csr_o.medeleg.wdata)):1] sv2v_tmp_5901A;
	assign sv2v_tmp_5901A = (CVA6Cfg[16366] ? {CVA6Cfg[17102-:32] - $bits(type(csr.medeleg_q)), csr.medeleg_q} : 0);
	always @(*) rvfi_csr_o.medeleg.wdata = sv2v_tmp_5901A;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:365:420
	wire [$bits(type(rvfi_csr_o.medeleg.rmask)):1] sv2v_tmp_B3A68;
	assign sv2v_tmp_B3A68 = (CVA6Cfg[16366] ? 1 : 0);
	always @(*) rvfi_csr_o.medeleg.rmask = sv2v_tmp_B3A68;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:365:489
	wire [$bits(type(rvfi_csr_o.medeleg.wmask)):1] sv2v_tmp_6C848;
	assign sv2v_tmp_6C848 = (rvfi_csr_o.medeleg.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.medeleg_q)), csr.medeleg_q}) && CVA6Cfg[16366];
	always @(*) rvfi_csr_o.medeleg.wmask = sv2v_tmp_6C848;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:366:90
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:366:132
		if (CVA6Cfg[16366])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:366:172
			rvfi_csr_o.mideleg.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mideleg_q)), csr.mideleg_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:366:292
	wire [$bits(type(rvfi_csr_o.mideleg.wdata)):1] sv2v_tmp_F4096;
	assign sv2v_tmp_F4096 = (CVA6Cfg[16366] ? {CVA6Cfg[17102-:32] - $bits(type(csr.mideleg_q)), csr.mideleg_q} : 0);
	always @(*) rvfi_csr_o.mideleg.wdata = sv2v_tmp_F4096;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:366:420
	wire [$bits(type(rvfi_csr_o.mideleg.rmask)):1] sv2v_tmp_2FF64;
	assign sv2v_tmp_2FF64 = (CVA6Cfg[16366] ? 1 : 0);
	always @(*) rvfi_csr_o.mideleg.rmask = sv2v_tmp_2FF64;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:366:489
	wire [$bits(type(rvfi_csr_o.mideleg.wmask)):1] sv2v_tmp_5CC88;
	assign sv2v_tmp_5CC88 = (rvfi_csr_o.mideleg.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mideleg_q)), csr.mideleg_q}) && CVA6Cfg[16366];
	always @(*) rvfi_csr_o.mideleg.wmask = sv2v_tmp_5CC88;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:368:79
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:368:121
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:368:161
		rvfi_csr_o.mie.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mie_q)), csr.mie_q};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:368:281
	wire [$bits(type(rvfi_csr_o.mie.wdata)):1] sv2v_tmp_D8F54;
	assign sv2v_tmp_D8F54 = {CVA6Cfg[17102-:32] - $bits(type(csr.mie_q)), csr.mie_q};
	always @(*) rvfi_csr_o.mie.wdata = sv2v_tmp_D8F54;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:368:409
	wire [$bits(type(rvfi_csr_o.mie.rmask)):1] sv2v_tmp_D8D20;
	assign sv2v_tmp_D8D20 = 1;
	always @(*) rvfi_csr_o.mie.rmask = sv2v_tmp_D8D20;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:368:478
	wire [$bits(type(rvfi_csr_o.mie.wmask)):1] sv2v_tmp_3A3E3;
	assign sv2v_tmp_3A3E3 = (rvfi_csr_o.mie.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mie_q)), csr.mie_q}) && 1'b1;
	always @(*) rvfi_csr_o.mie.wmask = sv2v_tmp_3A3E3;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:369:81
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:369:123
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:369:163
		rvfi_csr_o.mtvec.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mtvec_q)), csr.mtvec_q};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:369:283
	wire [$bits(type(rvfi_csr_o.mtvec.wdata)):1] sv2v_tmp_69E56;
	assign sv2v_tmp_69E56 = {CVA6Cfg[17102-:32] - $bits(type(csr.mtvec_q)), csr.mtvec_q};
	always @(*) rvfi_csr_o.mtvec.wdata = sv2v_tmp_69E56;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:369:411
	wire [$bits(type(rvfi_csr_o.mtvec.rmask)):1] sv2v_tmp_0872A;
	assign sv2v_tmp_0872A = 1;
	always @(*) rvfi_csr_o.mtvec.rmask = sv2v_tmp_0872A;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:369:480
	wire [$bits(type(rvfi_csr_o.mtvec.wmask)):1] sv2v_tmp_4567B;
	assign sv2v_tmp_4567B = (rvfi_csr_o.mtvec.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mtvec_q)), csr.mtvec_q}) && 1'b1;
	always @(*) rvfi_csr_o.mtvec.wmask = sv2v_tmp_4567B;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:370:86
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:370:128
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:370:168
		rvfi_csr_o.mcounteren.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mcounteren_q)), csr.mcounteren_q};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:370:288
	wire [$bits(type(rvfi_csr_o.mcounteren.wdata)):1] sv2v_tmp_492BC;
	assign sv2v_tmp_492BC = {CVA6Cfg[17102-:32] - $bits(type(csr.mcounteren_q)), csr.mcounteren_q};
	always @(*) rvfi_csr_o.mcounteren.wdata = sv2v_tmp_492BC;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:370:416
	wire [$bits(type(rvfi_csr_o.mcounteren.rmask)):1] sv2v_tmp_50B34;
	assign sv2v_tmp_50B34 = 1;
	always @(*) rvfi_csr_o.mcounteren.rmask = sv2v_tmp_50B34;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:370:485
	wire [$bits(type(rvfi_csr_o.mcounteren.wmask)):1] sv2v_tmp_EDF0F;
	assign sv2v_tmp_EDF0F = (rvfi_csr_o.mcounteren.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mcounteren_q)), csr.mcounteren_q}) && 1'b1;
	always @(*) rvfi_csr_o.mcounteren.wmask = sv2v_tmp_EDF0F;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:372:84
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:372:126
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:372:166
		rvfi_csr_o.mscratch.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mscratch_q)), csr.mscratch_q};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:372:286
	wire [$bits(type(rvfi_csr_o.mscratch.wdata)):1] sv2v_tmp_788E5;
	assign sv2v_tmp_788E5 = {CVA6Cfg[17102-:32] - $bits(type(csr.mscratch_q)), csr.mscratch_q};
	always @(*) rvfi_csr_o.mscratch.wdata = sv2v_tmp_788E5;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:372:414
	wire [$bits(type(rvfi_csr_o.mscratch.rmask)):1] sv2v_tmp_0B395;
	assign sv2v_tmp_0B395 = 1;
	always @(*) rvfi_csr_o.mscratch.rmask = sv2v_tmp_0B395;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:372:483
	wire [$bits(type(rvfi_csr_o.mscratch.wmask)):1] sv2v_tmp_32947;
	assign sv2v_tmp_32947 = (rvfi_csr_o.mscratch.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mscratch_q)), csr.mscratch_q}) && 1'b1;
	always @(*) rvfi_csr_o.mscratch.wmask = sv2v_tmp_32947;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:374:80
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:374:122
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:374:162
		rvfi_csr_o.mepc.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mepc_q)), csr.mepc_q};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:374:282
	wire [$bits(type(rvfi_csr_o.mepc.wdata)):1] sv2v_tmp_12C83;
	assign sv2v_tmp_12C83 = {CVA6Cfg[17102-:32] - $bits(type(csr.mepc_q)), csr.mepc_q};
	always @(*) rvfi_csr_o.mepc.wdata = sv2v_tmp_12C83;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:374:410
	wire [$bits(type(rvfi_csr_o.mepc.rmask)):1] sv2v_tmp_C0ACB;
	assign sv2v_tmp_C0ACB = 1;
	always @(*) rvfi_csr_o.mepc.rmask = sv2v_tmp_C0ACB;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:374:479
	wire [$bits(type(rvfi_csr_o.mepc.wmask)):1] sv2v_tmp_F08B7;
	assign sv2v_tmp_F08B7 = (rvfi_csr_o.mepc.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mepc_q)), csr.mepc_q}) && 1'b1;
	always @(*) rvfi_csr_o.mepc.wmask = sv2v_tmp_F08B7;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:375:82
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:375:124
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:375:164
		rvfi_csr_o.mcause.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mcause_q)), csr.mcause_q};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:375:284
	wire [$bits(type(rvfi_csr_o.mcause.wdata)):1] sv2v_tmp_8EE1E;
	assign sv2v_tmp_8EE1E = {CVA6Cfg[17102-:32] - $bits(type(csr.mcause_q)), csr.mcause_q};
	always @(*) rvfi_csr_o.mcause.wdata = sv2v_tmp_8EE1E;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:375:412
	wire [$bits(type(rvfi_csr_o.mcause.rmask)):1] sv2v_tmp_921FE;
	assign sv2v_tmp_921FE = 1;
	always @(*) rvfi_csr_o.mcause.rmask = sv2v_tmp_921FE;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:375:481
	wire [$bits(type(rvfi_csr_o.mcause.wmask)):1] sv2v_tmp_C769F;
	assign sv2v_tmp_C769F = (rvfi_csr_o.mcause.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mcause_q)), csr.mcause_q}) && 1'b1;
	always @(*) rvfi_csr_o.mcause.wmask = sv2v_tmp_C769F;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:376:81
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:376:123
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:376:163
		rvfi_csr_o.mtval.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mtval_q)), csr.mtval_q};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:376:283
	wire [$bits(type(rvfi_csr_o.mtval.wdata)):1] sv2v_tmp_806FD;
	assign sv2v_tmp_806FD = {CVA6Cfg[17102-:32] - $bits(type(csr.mtval_q)), csr.mtval_q};
	always @(*) rvfi_csr_o.mtval.wdata = sv2v_tmp_806FD;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:376:411
	wire [$bits(type(rvfi_csr_o.mtval.rmask)):1] sv2v_tmp_BBB01;
	assign sv2v_tmp_BBB01 = 1;
	always @(*) rvfi_csr_o.mtval.rmask = sv2v_tmp_BBB01;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:376:480
	wire [$bits(type(rvfi_csr_o.mtval.wmask)):1] sv2v_tmp_097CB;
	assign sv2v_tmp_097CB = (rvfi_csr_o.mtval.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mtval_q)), csr.mtval_q}) && 1'b1;
	always @(*) rvfi_csr_o.mtval.wmask = sv2v_tmp_097CB;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:377:79
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:377:121
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:377:161
		rvfi_csr_o.mip.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mip_q)), csr.mip_q};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:377:281
	wire [$bits(type(rvfi_csr_o.mip.wdata)):1] sv2v_tmp_BE5A1;
	assign sv2v_tmp_BE5A1 = {CVA6Cfg[17102-:32] - $bits(type(csr.mip_q)), csr.mip_q};
	always @(*) rvfi_csr_o.mip.wdata = sv2v_tmp_BE5A1;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:377:409
	wire [$bits(type(rvfi_csr_o.mip.rmask)):1] sv2v_tmp_1CF75;
	assign sv2v_tmp_1CF75 = 1;
	always @(*) rvfi_csr_o.mip.rmask = sv2v_tmp_1CF75;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:377:478
	wire [$bits(type(rvfi_csr_o.mip.wmask)):1] sv2v_tmp_D8AF3;
	assign sv2v_tmp_D8AF3 = (rvfi_csr_o.mip.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mip_q)), csr.mip_q}) && 1'b1;
	always @(*) rvfi_csr_o.mip.wmask = sv2v_tmp_D8AF3;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:379:35
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:379:77
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:379:117
		rvfi_csr_o.menvcfg.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.fiom_q)), csr.fiom_q};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:379:237
	wire [$bits(type(rvfi_csr_o.menvcfg.wdata)):1] sv2v_tmp_A5FCD;
	assign sv2v_tmp_A5FCD = {CVA6Cfg[17102-:32] - $bits(type(csr.fiom_q)), csr.fiom_q};
	always @(*) rvfi_csr_o.menvcfg.wdata = sv2v_tmp_A5FCD;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:379:365
	wire [$bits(type(rvfi_csr_o.menvcfg.rmask)):1] sv2v_tmp_B7BF7;
	assign sv2v_tmp_B7BF7 = 1;
	always @(*) rvfi_csr_o.menvcfg.rmask = sv2v_tmp_B7BF7;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:379:434
	wire [$bits(type(rvfi_csr_o.menvcfg.wmask)):1] sv2v_tmp_4B4C9;
	assign sv2v_tmp_4B4C9 = (rvfi_csr_o.menvcfg.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.fiom_q)), csr.fiom_q}) && 1'b1;
	always @(*) rvfi_csr_o.menvcfg.wmask = sv2v_tmp_4B4C9;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:381:45
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:381:87
		if (CVA6Cfg[17102-:32] == 32)
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:381:127
			rvfi_csr_o.menvcfgh.rdata <= {CVA6Cfg[17102-:32] - 32, 32'h00000000};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:381:247
	wire [$bits(type(rvfi_csr_o.menvcfgh.wdata)):1] sv2v_tmp_30D84;
	assign sv2v_tmp_30D84 = (CVA6Cfg[17102-:32] == 32 ? {CVA6Cfg[17102-:32] - 32, 32'h00000000} : 0);
	always @(*) rvfi_csr_o.menvcfgh.wdata = sv2v_tmp_30D84;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:381:375
	wire [$bits(type(rvfi_csr_o.menvcfgh.rmask)):1] sv2v_tmp_A92D2;
	assign sv2v_tmp_A92D2 = (CVA6Cfg[17102-:32] == 32 ? 1 : 0);
	always @(*) rvfi_csr_o.menvcfgh.rmask = sv2v_tmp_A92D2;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:381:444
	wire [$bits(type(rvfi_csr_o.menvcfgh.wmask)):1] sv2v_tmp_3CF1C;
	assign sv2v_tmp_3CF1C = (rvfi_csr_o.menvcfgh.rdata != {CVA6Cfg[17102-:32] - 32, 32'h00000000}) && (CVA6Cfg[17102-:32] == 32);
	always @(*) rvfi_csr_o.menvcfgh.wmask = sv2v_tmp_3CF1C;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:383:48
	localparam [31:0] ariane_pkg_OPENHWGROUP_MVENDORID = 32'h00000602;
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:383:90
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:383:130
		rvfi_csr_o.mvendorid.rdata <= {CVA6Cfg[17102-:32] - 32, ariane_pkg_OPENHWGROUP_MVENDORID};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:383:250
	wire [$bits(type(rvfi_csr_o.mvendorid.wdata)):1] sv2v_tmp_D0AC4;
	assign sv2v_tmp_D0AC4 = {CVA6Cfg[17102-:32] - 32, ariane_pkg_OPENHWGROUP_MVENDORID};
	always @(*) rvfi_csr_o.mvendorid.wdata = sv2v_tmp_D0AC4;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:383:378
	wire [$bits(type(rvfi_csr_o.mvendorid.rmask)):1] sv2v_tmp_94BB3;
	assign sv2v_tmp_94BB3 = 1;
	always @(*) rvfi_csr_o.mvendorid.rmask = sv2v_tmp_94BB3;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:383:447
	wire [$bits(type(rvfi_csr_o.mvendorid.wmask)):1] sv2v_tmp_F2FB0;
	assign sv2v_tmp_F2FB0 = (rvfi_csr_o.mvendorid.rdata != {CVA6Cfg[17102-:32] - 32, ariane_pkg_OPENHWGROUP_MVENDORID}) && 1'b1;
	always @(*) rvfi_csr_o.mvendorid.wmask = sv2v_tmp_F2FB0;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:384:39
	localparam [31:0] ariane_pkg_ARIANE_MARCHID = 32'd3;
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:384:81
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:384:121
		rvfi_csr_o.marchid.rdata <= {CVA6Cfg[17102-:32] - 32, ariane_pkg_ARIANE_MARCHID};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:384:241
	wire [$bits(type(rvfi_csr_o.marchid.wdata)):1] sv2v_tmp_E7707;
	assign sv2v_tmp_E7707 = {CVA6Cfg[17102-:32] - 32, ariane_pkg_ARIANE_MARCHID};
	always @(*) rvfi_csr_o.marchid.wdata = sv2v_tmp_E7707;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:384:369
	wire [$bits(type(rvfi_csr_o.marchid.rmask)):1] sv2v_tmp_B9E7D;
	assign sv2v_tmp_B9E7D = 1;
	always @(*) rvfi_csr_o.marchid.rmask = sv2v_tmp_B9E7D;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:384:438
	wire [$bits(type(rvfi_csr_o.marchid.wmask)):1] sv2v_tmp_82C3D;
	assign sv2v_tmp_82C3D = (rvfi_csr_o.marchid.rdata != {CVA6Cfg[17102-:32] - 32, ariane_pkg_ARIANE_MARCHID}) && 1'b1;
	always @(*) rvfi_csr_o.marchid.wmask = sv2v_tmp_82C3D;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:385:34
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:385:76
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:385:116
		rvfi_csr_o.mhartid.rdata <= {CVA6Cfg[17102-:32] - CVA6Cfg[17102-:32], hart_id_i};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:385:236
	wire [$bits(type(rvfi_csr_o.mhartid.wdata)):1] sv2v_tmp_296CB;
	assign sv2v_tmp_296CB = {CVA6Cfg[17102-:32] - CVA6Cfg[17102-:32], hart_id_i};
	always @(*) rvfi_csr_o.mhartid.wdata = sv2v_tmp_296CB;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:385:364
	wire [$bits(type(rvfi_csr_o.mhartid.rmask)):1] sv2v_tmp_0A2CA;
	assign sv2v_tmp_0A2CA = 1;
	always @(*) rvfi_csr_o.mhartid.rmask = sv2v_tmp_0A2CA;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:385:433
	wire [$bits(type(rvfi_csr_o.mhartid.wmask)):1] sv2v_tmp_8A18A;
	assign sv2v_tmp_8A18A = (rvfi_csr_o.mhartid.rdata != {CVA6Cfg[17102-:32] - CVA6Cfg[17102-:32], hart_id_i}) && 1'b1;
	always @(*) rvfi_csr_o.mhartid.wmask = sv2v_tmp_8A18A;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:387:89
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:387:131
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:387:171
		rvfi_csr_o.mcountinhibit.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.mcountinhibit_q)), csr.mcountinhibit_q};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:387:291
	wire [$bits(type(rvfi_csr_o.mcountinhibit.wdata)):1] sv2v_tmp_81ED0;
	assign sv2v_tmp_81ED0 = {CVA6Cfg[17102-:32] - $bits(type(csr.mcountinhibit_q)), csr.mcountinhibit_q};
	always @(*) rvfi_csr_o.mcountinhibit.wdata = sv2v_tmp_81ED0;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:387:419
	wire [$bits(type(rvfi_csr_o.mcountinhibit.rmask)):1] sv2v_tmp_E6C7C;
	assign sv2v_tmp_E6C7C = 1;
	always @(*) rvfi_csr_o.mcountinhibit.rmask = sv2v_tmp_E6C7C;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:387:488
	wire [$bits(type(rvfi_csr_o.mcountinhibit.wmask)):1] sv2v_tmp_E3E5B;
	assign sv2v_tmp_E3E5B = (rvfi_csr_o.mcountinhibit.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.mcountinhibit_q)), csr.mcountinhibit_q}) && 1'b1;
	always @(*) rvfi_csr_o.mcountinhibit.wmask = sv2v_tmp_E3E5B;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:389:53
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:389:95
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:389:135
		rvfi_csr_o.mcycle.rdata <= {CVA6Cfg[17102-:32] - (CVA6Cfg[17102-:32] * $bits(type(csr.cycle_q[0]))), csr.cycle_q[CVA6Cfg[17102-:32] - 1:0]};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:389:255
	wire [$bits(type(rvfi_csr_o.mcycle.wdata)):1] sv2v_tmp_F9810;
	assign sv2v_tmp_F9810 = {CVA6Cfg[17102-:32] - (CVA6Cfg[17102-:32] * $bits(type(csr.cycle_q[0]))), csr.cycle_q[CVA6Cfg[17102-:32] - 1:0]};
	always @(*) rvfi_csr_o.mcycle.wdata = sv2v_tmp_F9810;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:389:383
	wire [$bits(type(rvfi_csr_o.mcycle.rmask)):1] sv2v_tmp_0BC5F;
	assign sv2v_tmp_0BC5F = 1;
	always @(*) rvfi_csr_o.mcycle.rmask = sv2v_tmp_0BC5F;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:389:452
	wire [$bits(type(rvfi_csr_o.mcycle.wmask)):1] sv2v_tmp_41780;
	assign sv2v_tmp_41780 = (rvfi_csr_o.mcycle.rdata != {CVA6Cfg[17102-:32] - (CVA6Cfg[17102-:32] * $bits(type(csr.cycle_q[0]))), csr.cycle_q[CVA6Cfg[17102-:32] - 1:0]}) && 1'b1;
	always @(*) rvfi_csr_o.mcycle.wmask = sv2v_tmp_41780;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:390:57
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:390:99
		if (CVA6Cfg[17102-:32] == 32)
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:390:139
			rvfi_csr_o.mcycleh.rdata <= {CVA6Cfg[17102-:32] - (32 * $bits(type(csr.cycle_q[0]))), csr.cycle_q[63:32]};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:390:259
	wire [$bits(type(rvfi_csr_o.mcycleh.wdata)):1] sv2v_tmp_B47DF;
	assign sv2v_tmp_B47DF = (CVA6Cfg[17102-:32] == 32 ? {CVA6Cfg[17102-:32] - (32 * $bits(type(csr.cycle_q[0]))), csr.cycle_q[63:32]} : 0);
	always @(*) rvfi_csr_o.mcycleh.wdata = sv2v_tmp_B47DF;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:390:387
	wire [$bits(type(rvfi_csr_o.mcycleh.rmask)):1] sv2v_tmp_69DCC;
	assign sv2v_tmp_69DCC = (CVA6Cfg[17102-:32] == 32 ? 1 : 0);
	always @(*) rvfi_csr_o.mcycleh.rmask = sv2v_tmp_69DCC;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:390:456
	wire [$bits(type(rvfi_csr_o.mcycleh.wmask)):1] sv2v_tmp_E7153;
	assign sv2v_tmp_E7153 = (rvfi_csr_o.mcycleh.rdata != {CVA6Cfg[17102-:32] - (32 * $bits(type(csr.cycle_q[0]))), csr.cycle_q[63:32]}) && (CVA6Cfg[17102-:32] == 32);
	always @(*) rvfi_csr_o.mcycleh.wmask = sv2v_tmp_E7153;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:392:57
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:392:99
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:392:139
		rvfi_csr_o.minstret.rdata <= {CVA6Cfg[17102-:32] - (CVA6Cfg[17102-:32] * $bits(type(csr.instret_q[0]))), csr.instret_q[CVA6Cfg[17102-:32] - 1:0]};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:392:259
	wire [$bits(type(rvfi_csr_o.minstret.wdata)):1] sv2v_tmp_22389;
	assign sv2v_tmp_22389 = {CVA6Cfg[17102-:32] - (CVA6Cfg[17102-:32] * $bits(type(csr.instret_q[0]))), csr.instret_q[CVA6Cfg[17102-:32] - 1:0]};
	always @(*) rvfi_csr_o.minstret.wdata = sv2v_tmp_22389;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:392:387
	wire [$bits(type(rvfi_csr_o.minstret.rmask)):1] sv2v_tmp_1418A;
	assign sv2v_tmp_1418A = 1;
	always @(*) rvfi_csr_o.minstret.rmask = sv2v_tmp_1418A;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:392:456
	wire [$bits(type(rvfi_csr_o.minstret.wmask)):1] sv2v_tmp_D2488;
	assign sv2v_tmp_D2488 = (rvfi_csr_o.minstret.rdata != {CVA6Cfg[17102-:32] - (CVA6Cfg[17102-:32] * $bits(type(csr.instret_q[0]))), csr.instret_q[CVA6Cfg[17102-:32] - 1:0]}) && 1'b1;
	always @(*) rvfi_csr_o.minstret.wmask = sv2v_tmp_D2488;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:393:61
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:393:103
		if (CVA6Cfg[17102-:32] == 32)
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:393:143
			rvfi_csr_o.minstreth.rdata <= {CVA6Cfg[17102-:32] - (32 * $bits(type(csr.instret_q[0]))), csr.instret_q[63:32]};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:393:263
	wire [$bits(type(rvfi_csr_o.minstreth.wdata)):1] sv2v_tmp_262C6;
	assign sv2v_tmp_262C6 = (CVA6Cfg[17102-:32] == 32 ? {CVA6Cfg[17102-:32] - (32 * $bits(type(csr.instret_q[0]))), csr.instret_q[63:32]} : 0);
	always @(*) rvfi_csr_o.minstreth.wdata = sv2v_tmp_262C6;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:393:391
	wire [$bits(type(rvfi_csr_o.minstreth.rmask)):1] sv2v_tmp_C7551;
	assign sv2v_tmp_C7551 = (CVA6Cfg[17102-:32] == 32 ? 1 : 0);
	always @(*) rvfi_csr_o.minstreth.rmask = sv2v_tmp_C7551;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:393:460
	wire [$bits(type(rvfi_csr_o.minstreth.wmask)):1] sv2v_tmp_C748B;
	assign sv2v_tmp_C748B = (rvfi_csr_o.minstreth.rdata != {CVA6Cfg[17102-:32] - (32 * $bits(type(csr.instret_q[0]))), csr.instret_q[63:32]}) && (CVA6Cfg[17102-:32] == 32);
	always @(*) rvfi_csr_o.minstreth.wmask = sv2v_tmp_C748B;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:395:52
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:395:94
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:395:134
		rvfi_csr_o.cycle.rdata <= {CVA6Cfg[17102-:32] - (CVA6Cfg[17102-:32] * $bits(type(csr.cycle_q[0]))), csr.cycle_q[CVA6Cfg[17102-:32] - 1:0]};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:395:254
	wire [$bits(type(rvfi_csr_o.cycle.wdata)):1] sv2v_tmp_0BBAE;
	assign sv2v_tmp_0BBAE = {CVA6Cfg[17102-:32] - (CVA6Cfg[17102-:32] * $bits(type(csr.cycle_q[0]))), csr.cycle_q[CVA6Cfg[17102-:32] - 1:0]};
	always @(*) rvfi_csr_o.cycle.wdata = sv2v_tmp_0BBAE;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:395:382
	wire [$bits(type(rvfi_csr_o.cycle.rmask)):1] sv2v_tmp_D0DD3;
	assign sv2v_tmp_D0DD3 = 1;
	always @(*) rvfi_csr_o.cycle.rmask = sv2v_tmp_D0DD3;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:395:451
	wire [$bits(type(rvfi_csr_o.cycle.wmask)):1] sv2v_tmp_CD7C2;
	assign sv2v_tmp_CD7C2 = (rvfi_csr_o.cycle.rdata != {CVA6Cfg[17102-:32] - (CVA6Cfg[17102-:32] * $bits(type(csr.cycle_q[0]))), csr.cycle_q[CVA6Cfg[17102-:32] - 1:0]}) && 1'b1;
	always @(*) rvfi_csr_o.cycle.wmask = sv2v_tmp_CD7C2;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:396:56
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:396:98
		if (CVA6Cfg[17102-:32] == 32)
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:396:138
			rvfi_csr_o.cycleh.rdata <= {CVA6Cfg[17102-:32] - (32 * $bits(type(csr.cycle_q[0]))), csr.cycle_q[63:32]};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:396:258
	wire [$bits(type(rvfi_csr_o.cycleh.wdata)):1] sv2v_tmp_C5C81;
	assign sv2v_tmp_C5C81 = (CVA6Cfg[17102-:32] == 32 ? {CVA6Cfg[17102-:32] - (32 * $bits(type(csr.cycle_q[0]))), csr.cycle_q[63:32]} : 0);
	always @(*) rvfi_csr_o.cycleh.wdata = sv2v_tmp_C5C81;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:396:386
	wire [$bits(type(rvfi_csr_o.cycleh.rmask)):1] sv2v_tmp_67112;
	assign sv2v_tmp_67112 = (CVA6Cfg[17102-:32] == 32 ? 1 : 0);
	always @(*) rvfi_csr_o.cycleh.rmask = sv2v_tmp_67112;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:396:455
	wire [$bits(type(rvfi_csr_o.cycleh.wmask)):1] sv2v_tmp_C95A5;
	assign sv2v_tmp_C95A5 = (rvfi_csr_o.cycleh.rdata != {CVA6Cfg[17102-:32] - (32 * $bits(type(csr.cycle_q[0]))), csr.cycle_q[63:32]}) && (CVA6Cfg[17102-:32] == 32);
	always @(*) rvfi_csr_o.cycleh.wmask = sv2v_tmp_C95A5;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:398:56
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:398:98
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:398:138
		rvfi_csr_o.instret.rdata <= {CVA6Cfg[17102-:32] - (CVA6Cfg[17102-:32] * $bits(type(csr.instret_q[0]))), csr.instret_q[CVA6Cfg[17102-:32] - 1:0]};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:398:258
	wire [$bits(type(rvfi_csr_o.instret.wdata)):1] sv2v_tmp_B139B;
	assign sv2v_tmp_B139B = {CVA6Cfg[17102-:32] - (CVA6Cfg[17102-:32] * $bits(type(csr.instret_q[0]))), csr.instret_q[CVA6Cfg[17102-:32] - 1:0]};
	always @(*) rvfi_csr_o.instret.wdata = sv2v_tmp_B139B;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:398:386
	wire [$bits(type(rvfi_csr_o.instret.rmask)):1] sv2v_tmp_AE566;
	assign sv2v_tmp_AE566 = 1;
	always @(*) rvfi_csr_o.instret.rmask = sv2v_tmp_AE566;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:398:455
	wire [$bits(type(rvfi_csr_o.instret.wmask)):1] sv2v_tmp_C67FA;
	assign sv2v_tmp_C67FA = (rvfi_csr_o.instret.rdata != {CVA6Cfg[17102-:32] - (CVA6Cfg[17102-:32] * $bits(type(csr.instret_q[0]))), csr.instret_q[CVA6Cfg[17102-:32] - 1:0]}) && 1'b1;
	always @(*) rvfi_csr_o.instret.wmask = sv2v_tmp_C67FA;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:399:60
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:399:102
		if (CVA6Cfg[17102-:32] == 32)
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:399:142
			rvfi_csr_o.instreth.rdata <= {CVA6Cfg[17102-:32] - (32 * $bits(type(csr.instret_q[0]))), csr.instret_q[63:32]};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:399:262
	wire [$bits(type(rvfi_csr_o.instreth.wdata)):1] sv2v_tmp_91FB4;
	assign sv2v_tmp_91FB4 = (CVA6Cfg[17102-:32] == 32 ? {CVA6Cfg[17102-:32] - (32 * $bits(type(csr.instret_q[0]))), csr.instret_q[63:32]} : 0);
	always @(*) rvfi_csr_o.instreth.wdata = sv2v_tmp_91FB4;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:399:390
	wire [$bits(type(rvfi_csr_o.instreth.rmask)):1] sv2v_tmp_C8813;
	assign sv2v_tmp_C8813 = (CVA6Cfg[17102-:32] == 32 ? 1 : 0);
	always @(*) rvfi_csr_o.instreth.rmask = sv2v_tmp_C8813;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:399:459
	wire [$bits(type(rvfi_csr_o.instreth.wmask)):1] sv2v_tmp_A1EAD;
	assign sv2v_tmp_A1EAD = (rvfi_csr_o.instreth.rdata != {CVA6Cfg[17102-:32] - (32 * $bits(type(csr.instret_q[0]))), csr.instret_q[63:32]}) && (CVA6Cfg[17102-:32] == 32);
	always @(*) rvfi_csr_o.instreth.wmask = sv2v_tmp_A1EAD;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:401:82
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:401:124
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:401:164
		rvfi_csr_o.dcache.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.dcache_q)), csr.dcache_q};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:401:284
	wire [$bits(type(rvfi_csr_o.dcache.wdata)):1] sv2v_tmp_3CBDA;
	assign sv2v_tmp_3CBDA = {CVA6Cfg[17102-:32] - $bits(type(csr.dcache_q)), csr.dcache_q};
	always @(*) rvfi_csr_o.dcache.wdata = sv2v_tmp_3CBDA;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:401:412
	wire [$bits(type(rvfi_csr_o.dcache.rmask)):1] sv2v_tmp_1CC3A;
	assign sv2v_tmp_1CC3A = 1;
	always @(*) rvfi_csr_o.dcache.rmask = sv2v_tmp_1CC3A;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:401:481
	wire [$bits(type(rvfi_csr_o.dcache.wmask)):1] sv2v_tmp_4CFBF;
	assign sv2v_tmp_4CFBF = (rvfi_csr_o.dcache.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.dcache_q)), csr.dcache_q}) && 1'b1;
	always @(*) rvfi_csr_o.dcache.wmask = sv2v_tmp_4CFBF;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:402:82
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:402:124
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:402:164
		rvfi_csr_o.icache.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.icache_q)), csr.icache_q};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:402:284
	wire [$bits(type(rvfi_csr_o.icache.wdata)):1] sv2v_tmp_8B317;
	assign sv2v_tmp_8B317 = {CVA6Cfg[17102-:32] - $bits(type(csr.icache_q)), csr.icache_q};
	always @(*) rvfi_csr_o.icache.wdata = sv2v_tmp_8B317;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:402:412
	wire [$bits(type(rvfi_csr_o.icache.rmask)):1] sv2v_tmp_5DCE7;
	assign sv2v_tmp_5DCE7 = 1;
	always @(*) rvfi_csr_o.icache.rmask = sv2v_tmp_5DCE7;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:402:481
	wire [$bits(type(rvfi_csr_o.icache.wmask)):1] sv2v_tmp_066CF;
	assign sv2v_tmp_066CF = (rvfi_csr_o.icache.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.icache_q)), csr.icache_q}) && 1'b1;
	always @(*) rvfi_csr_o.icache.wmask = sv2v_tmp_066CF;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:404:105
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:404:147
		if (CVA6Cfg[16369])
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:404:187
			rvfi_csr_o.acc_cons.rdata <= {CVA6Cfg[17102-:32] - $bits(type(csr.acc_cons_q)), csr.acc_cons_q};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:404:307
	wire [$bits(type(rvfi_csr_o.acc_cons.wdata)):1] sv2v_tmp_E2BD9;
	assign sv2v_tmp_E2BD9 = (CVA6Cfg[16369] ? {CVA6Cfg[17102-:32] - $bits(type(csr.acc_cons_q)), csr.acc_cons_q} : 0);
	always @(*) rvfi_csr_o.acc_cons.wdata = sv2v_tmp_E2BD9;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:404:435
	wire [$bits(type(rvfi_csr_o.acc_cons.rmask)):1] sv2v_tmp_0684B;
	assign sv2v_tmp_0684B = (CVA6Cfg[16369] ? 1 : 0);
	always @(*) rvfi_csr_o.acc_cons.rmask = sv2v_tmp_0684B;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:404:504
	wire [$bits(type(rvfi_csr_o.acc_cons.wmask)):1] sv2v_tmp_47E8D;
	assign sv2v_tmp_47E8D = (rvfi_csr_o.acc_cons.rdata != {CVA6Cfg[17102-:32] - $bits(type(csr.acc_cons_q)), csr.acc_cons_q}) && CVA6Cfg[16369];
	always @(*) rvfi_csr_o.acc_cons.wmask = sv2v_tmp_47E8D;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:406:57
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:406:99
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:406:139
		rvfi_csr_o.pmpcfg0.rdata <= {CVA6Cfg[17102-:32] - ((CVA6Cfg[17102-:32] / 8) * $bits(type(csr.pmpcfg_q[0]))), csr.pmpcfg_q[(CVA6Cfg[17102-:32] / 8) - 1:0]};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:406:259
	wire [$bits(type(rvfi_csr_o.pmpcfg0.wdata)):1] sv2v_tmp_366F1;
	assign sv2v_tmp_366F1 = {CVA6Cfg[17102-:32] - ((CVA6Cfg[17102-:32] / 8) * $bits(type(csr.pmpcfg_q[0]))), csr.pmpcfg_q[(CVA6Cfg[17102-:32] / 8) - 1:0]};
	always @(*) rvfi_csr_o.pmpcfg0.wdata = sv2v_tmp_366F1;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:406:387
	wire [$bits(type(rvfi_csr_o.pmpcfg0.rmask)):1] sv2v_tmp_64A5A;
	assign sv2v_tmp_64A5A = 1;
	always @(*) rvfi_csr_o.pmpcfg0.rmask = sv2v_tmp_64A5A;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:406:456
	wire [$bits(type(rvfi_csr_o.pmpcfg0.wmask)):1] sv2v_tmp_27640;
	assign sv2v_tmp_27640 = (rvfi_csr_o.pmpcfg0.rdata != {CVA6Cfg[17102-:32] - ((CVA6Cfg[17102-:32] / 8) * $bits(type(csr.pmpcfg_q[0]))), csr.pmpcfg_q[(CVA6Cfg[17102-:32] / 8) - 1:0]}) && 1'b1;
	always @(*) rvfi_csr_o.pmpcfg0.wmask = sv2v_tmp_27640;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:407:56
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:407:98
		if (CVA6Cfg[17102-:32] == 32)
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:407:138
			rvfi_csr_o.pmpcfg1.rdata <= {CVA6Cfg[17102-:32] - (4 * $bits(type(csr.pmpcfg_q[0]))), csr.pmpcfg_q[7:4]};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:407:258
	wire [$bits(type(rvfi_csr_o.pmpcfg1.wdata)):1] sv2v_tmp_4B0F5;
	assign sv2v_tmp_4B0F5 = (CVA6Cfg[17102-:32] == 32 ? {CVA6Cfg[17102-:32] - (4 * $bits(type(csr.pmpcfg_q[0]))), csr.pmpcfg_q[7:4]} : 0);
	always @(*) rvfi_csr_o.pmpcfg1.wdata = sv2v_tmp_4B0F5;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:407:386
	wire [$bits(type(rvfi_csr_o.pmpcfg1.rmask)):1] sv2v_tmp_69327;
	assign sv2v_tmp_69327 = (CVA6Cfg[17102-:32] == 32 ? 1 : 0);
	always @(*) rvfi_csr_o.pmpcfg1.rmask = sv2v_tmp_69327;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:407:455
	wire [$bits(type(rvfi_csr_o.pmpcfg1.wmask)):1] sv2v_tmp_4F426;
	assign sv2v_tmp_4F426 = (rvfi_csr_o.pmpcfg1.rdata != {CVA6Cfg[17102-:32] - (4 * $bits(type(csr.pmpcfg_q[0]))), csr.pmpcfg_q[7:4]}) && (CVA6Cfg[17102-:32] == 32);
	always @(*) rvfi_csr_o.pmpcfg1.wmask = sv2v_tmp_4F426;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:409:56
	always @(posedge clk_i) begin
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:409:98
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:409:138
		rvfi_csr_o.pmpcfg2.rdata <= {CVA6Cfg[17102-:32] - ((CVA6Cfg[17102-:32] / 8) * $bits(type(csr.pmpcfg_q[0]))), csr.pmpcfg_q[8+:CVA6Cfg[17102-:32] / 8]};
	end
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:409:258
	wire [$bits(type(rvfi_csr_o.pmpcfg2.wdata)):1] sv2v_tmp_AC120;
	assign sv2v_tmp_AC120 = {CVA6Cfg[17102-:32] - ((CVA6Cfg[17102-:32] / 8) * $bits(type(csr.pmpcfg_q[0]))), csr.pmpcfg_q[8+:CVA6Cfg[17102-:32] / 8]};
	always @(*) rvfi_csr_o.pmpcfg2.wdata = sv2v_tmp_AC120;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:409:386
	wire [$bits(type(rvfi_csr_o.pmpcfg2.rmask)):1] sv2v_tmp_27558;
	assign sv2v_tmp_27558 = 1;
	always @(*) rvfi_csr_o.pmpcfg2.rmask = sv2v_tmp_27558;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:409:455
	wire [$bits(type(rvfi_csr_o.pmpcfg2.wmask)):1] sv2v_tmp_8D31B;
	assign sv2v_tmp_8D31B = (rvfi_csr_o.pmpcfg2.rdata != {CVA6Cfg[17102-:32] - ((CVA6Cfg[17102-:32] / 8) * $bits(type(csr.pmpcfg_q[0]))), csr.pmpcfg_q[8+:CVA6Cfg[17102-:32] / 8]}) && 1'b1;
	always @(*) rvfi_csr_o.pmpcfg2.wmask = sv2v_tmp_8D31B;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:410:58
	always @(posedge clk_i)
		// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:410:100
		if (CVA6Cfg[17102-:32] == 32)
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:410:140
			rvfi_csr_o.pmpcfg3.rdata <= {CVA6Cfg[17102-:32] - (4 * $bits(type(csr.pmpcfg_q[0]))), csr.pmpcfg_q[15:12]};
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:410:260
	wire [$bits(type(rvfi_csr_o.pmpcfg3.wdata)):1] sv2v_tmp_CB5B1;
	assign sv2v_tmp_CB5B1 = (CVA6Cfg[17102-:32] == 32 ? {CVA6Cfg[17102-:32] - (4 * $bits(type(csr.pmpcfg_q[0]))), csr.pmpcfg_q[15:12]} : 0);
	always @(*) rvfi_csr_o.pmpcfg3.wdata = sv2v_tmp_CB5B1;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:410:388
	wire [$bits(type(rvfi_csr_o.pmpcfg3.rmask)):1] sv2v_tmp_78D65;
	assign sv2v_tmp_78D65 = (CVA6Cfg[17102-:32] == 32 ? 1 : 0);
	always @(*) rvfi_csr_o.pmpcfg3.rmask = sv2v_tmp_78D65;
	// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:410:457
	wire [$bits(type(rvfi_csr_o.pmpcfg3.wmask)):1] sv2v_tmp_504C4;
	assign sv2v_tmp_504C4 = (rvfi_csr_o.pmpcfg3.rdata != {CVA6Cfg[17102-:32] - (4 * $bits(type(csr.pmpcfg_q[0]))), csr.pmpcfg_q[15:12]}) && (CVA6Cfg[17102-:32] == 32);
	always @(*) rvfi_csr_o.pmpcfg3.wmask = sv2v_tmp_504C4;
	// Trace: core/cva6_rvfi.sv:412:3
	wire [CVA6Cfg[17102-:32] - 1:0] pmpaddr_q;
	// Trace: core/cva6_rvfi.sv:413:3
	genvar _gv_i_2;
	// Trace: core/cva6_rvfi.sv:414:3
	generate
		for (_gv_i_2 = 0; _gv_i_2 < 16; _gv_i_2 = _gv_i_2 + 1) begin : genblk2
			localparam i = _gv_i_2;
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:416:66
			always @(posedge clk_i) begin
				// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:416:108
				// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:416:148
				rvfi_csr_o.pmpaddr[i].rdata <= {CVA6Cfg[17102-:32] - (((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32]) * $bits(type(csr.pmpaddr_q[i][0]))), csr.pmpaddr_q[i][CVA6Cfg[17038-:32] - 3:0]};
			end
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:416:268
			wire [$bits(type(rvfi_csr_o.pmpaddr[i].wdata)):1] sv2v_tmp_48F41;
			assign sv2v_tmp_48F41 = {CVA6Cfg[17102-:32] - (((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32]) * $bits(type(csr.pmpaddr_q[i][0]))), csr.pmpaddr_q[i][CVA6Cfg[17038-:32] - 3:0]};
			always @(*) rvfi_csr_o.pmpaddr[i].wdata = sv2v_tmp_48F41;
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:416:396
			wire [$bits(type(rvfi_csr_o.pmpaddr[i].rmask)):1] sv2v_tmp_ACC47;
			assign sv2v_tmp_ACC47 = 1;
			always @(*) rvfi_csr_o.pmpaddr[i].rmask = sv2v_tmp_ACC47;
			// Trace: macro expansion of CONNECT_RVFI_FULL at core/cva6_rvfi.sv:416:465
			wire [$bits(type(rvfi_csr_o.pmpaddr[i].wmask)):1] sv2v_tmp_8BC51;
			assign sv2v_tmp_8BC51 = (rvfi_csr_o.pmpaddr[i].rdata != {CVA6Cfg[17102-:32] - (((CVA6Cfg[17038-:32] - 3) >= 0 ? CVA6Cfg[17038-:32] - 2 : 4 - CVA6Cfg[17038-:32]) * $bits(type(csr.pmpaddr_q[i][0]))), csr.pmpaddr_q[i][CVA6Cfg[17038-:32] - 3:0]}) && 1'b1;
			always @(*) rvfi_csr_o.pmpaddr[i].wmask = sv2v_tmp_8BC51;
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
