module controller_AD18E_A90D3 (
	clk_i,
	rst_ni,
	v_i,
	set_pc_commit_o,
	flush_if_o,
	flush_unissued_instr_o,
	flush_id_o,
	flush_ex_o,
	flush_bp_o,
	flush_icache_o,
	flush_dcache_o,
	flush_dcache_ack_i,
	flush_tlb_o,
	flush_tlb_vvma_o,
	flush_tlb_gvma_o,
	halt_csr_i,
	halt_acc_i,
	halt_o,
	eret_i,
	ex_valid_i,
	set_debug_pc_i,
	resolved_branch_i,
	flush_csr_i,
	fence_i_i,
	fence_i,
	sfence_vma_i,
	hfence_vvma_i,
	hfence_gvma_i,
	flush_commit_i,
	flush_acc_i
);
	// removed localparam type bp_resolve_t_CVA6Cfg_type
	// removed localparam type bp_resolve_t_config_pkg_NrMaxRules_type
	parameter [17102:0] bp_resolve_t_CVA6Cfg = 0;
	parameter signed [31:0] bp_resolve_t_config_pkg_NrMaxRules = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/controller.sv:19:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/controller.sv:20:20
	// removed localparam type bp_resolve_t
	// Trace: core/controller.sv:23:5
	input wire clk_i;
	// Trace: core/controller.sv:25:5
	input wire rst_ni;
	// Trace: core/controller.sv:27:5
	input wire v_i;
	// Trace: core/controller.sv:29:5
	output reg set_pc_commit_o;
	// Trace: core/controller.sv:31:5
	output reg flush_if_o;
	// Trace: core/controller.sv:33:5
	output reg flush_unissued_instr_o;
	// Trace: core/controller.sv:35:5
	output reg flush_id_o;
	// Trace: core/controller.sv:37:5
	output reg flush_ex_o;
	// Trace: core/controller.sv:39:5
	output reg flush_bp_o;
	// Trace: core/controller.sv:41:5
	output reg flush_icache_o;
	// Trace: core/controller.sv:43:5
	output reg flush_dcache_o;
	// Trace: core/controller.sv:45:5
	input wire flush_dcache_ack_i;
	// Trace: core/controller.sv:47:5
	output reg flush_tlb_o;
	// Trace: core/controller.sv:48:5
	output reg flush_tlb_vvma_o;
	// Trace: core/controller.sv:49:5
	output reg flush_tlb_gvma_o;
	// Trace: core/controller.sv:51:5
	input wire halt_csr_i;
	// Trace: core/controller.sv:53:5
	input wire halt_acc_i;
	// Trace: core/controller.sv:55:5
	output reg halt_o;
	// Trace: core/controller.sv:57:5
	input wire eret_i;
	// Trace: core/controller.sv:59:5
	input wire ex_valid_i;
	// Trace: core/controller.sv:61:5
	input wire set_debug_pc_i;
	// Trace: core/controller.sv:63:5
	input wire [((1 + bp_resolve_t_CVA6Cfg[9509 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) + bp_resolve_t_CVA6Cfg[9509 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + (32 + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + ((bp_resolve_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) + 4:0] resolved_branch_i;
	// Trace: core/controller.sv:65:5
	input wire flush_csr_i;
	// Trace: core/controller.sv:67:5
	input wire fence_i_i;
	// Trace: core/controller.sv:69:5
	input wire fence_i;
	// Trace: core/controller.sv:71:5
	input wire sfence_vma_i;
	// Trace: core/controller.sv:72:5
	input wire hfence_vvma_i;
	// Trace: core/controller.sv:73:5
	input wire hfence_gvma_i;
	// Trace: core/controller.sv:75:5
	input wire flush_commit_i;
	// Trace: core/controller.sv:77:5
	input wire flush_acc_i;
	// Trace: core/controller.sv:81:3
	reg fence_active_d;
	reg fence_active_q;
	// Trace: core/controller.sv:82:3
	reg flush_dcache;
	// Trace: core/controller.sv:87:3
	always @(*) begin : flush_ctrl
		if (_sv2v_0)
			;
		// Trace: core/controller.sv:88:5
		fence_active_d = fence_active_q;
		// Trace: core/controller.sv:89:5
		set_pc_commit_o = 1'b0;
		// Trace: core/controller.sv:90:5
		flush_if_o = 1'b0;
		// Trace: core/controller.sv:91:5
		flush_unissued_instr_o = 1'b0;
		// Trace: core/controller.sv:92:5
		flush_id_o = 1'b0;
		// Trace: core/controller.sv:93:5
		flush_ex_o = 1'b0;
		// Trace: core/controller.sv:94:5
		flush_dcache = 1'b0;
		// Trace: core/controller.sv:95:5
		flush_icache_o = 1'b0;
		// Trace: core/controller.sv:96:5
		flush_tlb_o = 1'b0;
		// Trace: core/controller.sv:97:5
		flush_tlb_vvma_o = 1'b0;
		// Trace: core/controller.sv:98:5
		flush_tlb_gvma_o = 1'b0;
		// Trace: core/controller.sv:99:5
		flush_bp_o = 1'b0;
		// Trace: core/controller.sv:104:5
		if (resolved_branch_i[4]) begin
			// Trace: core/controller.sv:106:7
			flush_unissued_instr_o = 1'b1;
			// Trace: core/controller.sv:108:7
			flush_if_o = 1'b1;
		end
		if (fence_i) begin
			// Trace: core/controller.sv:116:7
			set_pc_commit_o = 1'b1;
			// Trace: core/controller.sv:117:7
			flush_if_o = 1'b1;
			// Trace: core/controller.sv:118:7
			flush_unissued_instr_o = 1'b1;
			// Trace: core/controller.sv:119:7
			flush_id_o = 1'b1;
			// Trace: core/controller.sv:120:7
			flush_ex_o = 1'b1;
			// Trace: core/controller.sv:123:7
			if (CVA6Cfg[1126-:2] == 2'd0) begin
				// Trace: core/controller.sv:124:9
				flush_dcache = 1'b1;
				// Trace: core/controller.sv:125:9
				fence_active_d = 1'b1;
			end
		end
		if (fence_i_i) begin
			// Trace: core/controller.sv:133:7
			set_pc_commit_o = 1'b1;
			// Trace: core/controller.sv:134:7
			flush_if_o = 1'b1;
			// Trace: core/controller.sv:135:7
			flush_unissued_instr_o = 1'b1;
			// Trace: core/controller.sv:136:7
			flush_id_o = 1'b1;
			// Trace: core/controller.sv:137:7
			flush_ex_o = 1'b1;
			// Trace: core/controller.sv:138:7
			flush_icache_o = 1'b1;
			// Trace: core/controller.sv:141:7
			if (CVA6Cfg[1126-:2] == 2'd0) begin
				// Trace: core/controller.sv:142:9
				flush_dcache = 1'b1;
				// Trace: core/controller.sv:143:9
				fence_active_d = 1'b1;
			end
		end
		if (CVA6Cfg[1126-:2] == 2'd0) begin
			begin
				// Trace: core/controller.sv:151:7
				if (flush_dcache_ack_i && fence_active_q)
					// Trace: core/controller.sv:152:9
					fence_active_d = 1'b0;
				else if (fence_active_q)
					// Trace: core/controller.sv:155:9
					flush_dcache = 1'b1;
			end
		end
		if (CVA6Cfg[16366] && sfence_vma_i) begin
			// Trace: core/controller.sv:162:7
			set_pc_commit_o = 1'b1;
			// Trace: core/controller.sv:163:7
			flush_if_o = 1'b1;
			// Trace: core/controller.sv:164:7
			flush_unissued_instr_o = 1'b1;
			// Trace: core/controller.sv:165:7
			flush_id_o = 1'b1;
			// Trace: core/controller.sv:166:7
			flush_ex_o = 1'b1;
			// Trace: core/controller.sv:168:7
			if (CVA6Cfg[16543] && v_i)
				// Trace: core/controller.sv:168:31
				flush_tlb_vvma_o = 1'b1;
			else
				// Trace: core/controller.sv:169:12
				flush_tlb_o = 1'b1;
		end
		if (CVA6Cfg[16543] && hfence_vvma_i) begin
			// Trace: core/controller.sv:176:7
			set_pc_commit_o = 1'b1;
			// Trace: core/controller.sv:177:7
			flush_if_o = 1'b1;
			// Trace: core/controller.sv:178:7
			flush_unissued_instr_o = 1'b1;
			// Trace: core/controller.sv:179:7
			flush_id_o = 1'b1;
			// Trace: core/controller.sv:180:7
			flush_ex_o = 1'b1;
			// Trace: core/controller.sv:182:7
			flush_tlb_vvma_o = 1'b1;
		end
		if (CVA6Cfg[16543] && hfence_gvma_i) begin
			// Trace: core/controller.sv:189:7
			set_pc_commit_o = 1'b1;
			// Trace: core/controller.sv:190:7
			flush_if_o = 1'b1;
			// Trace: core/controller.sv:191:7
			flush_unissued_instr_o = 1'b1;
			// Trace: core/controller.sv:192:7
			flush_id_o = 1'b1;
			// Trace: core/controller.sv:193:7
			flush_ex_o = 1'b1;
			// Trace: core/controller.sv:195:7
			flush_tlb_gvma_o = 1'b1;
		end
		if (flush_csr_i || flush_acc_i) begin
			// Trace: core/controller.sv:203:7
			set_pc_commit_o = 1'b1;
			// Trace: core/controller.sv:204:7
			flush_if_o = 1'b1;
			// Trace: core/controller.sv:205:7
			flush_unissued_instr_o = 1'b1;
			// Trace: core/controller.sv:206:7
			flush_id_o = 1'b1;
			// Trace: core/controller.sv:207:7
			flush_ex_o = 1'b1;
		end
		else if (CVA6Cfg[16547] && flush_commit_i) begin
			// Trace: core/controller.sv:209:7
			set_pc_commit_o = 1'b1;
			// Trace: core/controller.sv:210:7
			flush_if_o = 1'b1;
			// Trace: core/controller.sv:211:7
			flush_unissued_instr_o = 1'b1;
			// Trace: core/controller.sv:212:7
			flush_id_o = 1'b1;
			// Trace: core/controller.sv:213:7
			flush_ex_o = 1'b1;
		end
		if ((ex_valid_i || eret_i) || (CVA6Cfg[1321] && set_debug_pc_i)) begin
			// Trace: core/controller.sv:223:7
			set_pc_commit_o = 1'b0;
			// Trace: core/controller.sv:224:7
			flush_if_o = 1'b1;
			// Trace: core/controller.sv:225:7
			flush_unissued_instr_o = 1'b1;
			// Trace: core/controller.sv:226:7
			flush_id_o = 1'b1;
			// Trace: core/controller.sv:227:7
			flush_ex_o = 1'b1;
			// Trace: core/controller.sv:232:7
			flush_bp_o = 1'b1;
		end
	end
	// Trace: core/controller.sv:239:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/controller.sv:241:5
		halt_o = (halt_csr_i || halt_acc_i) || ((CVA6Cfg[1126-:2] == 2'd0) && fence_active_q);
	end
	// Trace: core/controller.sv:247:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/controller.sv:248:5
		if (~rst_ni) begin
			// Trace: core/controller.sv:249:7
			fence_active_q <= 1'b0;
			// Trace: core/controller.sv:250:7
			flush_dcache_o <= 1'b0;
		end
		else begin
			// Trace: core/controller.sv:252:7
			fence_active_q <= fence_active_d;
			// Trace: core/controller.sv:254:7
			flush_dcache_o <= flush_dcache;
		end
	initial _sv2v_0 = 0;
endmodule
