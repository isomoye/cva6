module branch_unit_FFB66_4F10C (
	clk_i,
	rst_ni,
	v_i,
	debug_mode_i,
	fu_data_i,
	pc_i,
	is_compressed_instr_i,
	branch_valid_i,
	branch_comp_res_i,
	branch_result_o,
	branch_predict_i,
	resolved_branch_o,
	resolve_branch_o,
	branch_exception_o
);
	// removed localparam type bp_resolve_t_bp_resolve_t_CVA6Cfg_type
	parameter [17102:0] bp_resolve_t_bp_resolve_t_CVA6Cfg = 0;
	// removed localparam type branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg_type
	parameter [17102:0] branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg = 0;
	// removed localparam type exception_t_exception_t_CVA6Cfg_type
	parameter [17102:0] exception_t_exception_t_CVA6Cfg = 0;
	// removed localparam type fu_data_t_fu_data_t_CVA6Cfg_type
	parameter [17102:0] fu_data_t_fu_data_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// Trace: core/branch_unit.sv:16:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/branch_unit.sv:17:20
	// removed localparam type bp_resolve_t
	// Trace: core/branch_unit.sv:18:20
	// removed localparam type branchpredict_sbe_t
	// Trace: core/branch_unit.sv:19:20
	// removed localparam type exception_t
	// Trace: core/branch_unit.sv:20:20
	// removed localparam type fu_data_t
	// Trace: core/branch_unit.sv:23:5
	input wire clk_i;
	// Trace: core/branch_unit.sv:25:5
	input wire rst_ni;
	// Trace: core/branch_unit.sv:27:5
	input wire v_i;
	// Trace: core/branch_unit.sv:29:5
	input wire debug_mode_i;
	// Trace: core/branch_unit.sv:31:5
	input wire [((((12 + fu_data_t_fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_fu_data_t_CVA6Cfg[16503-:32]) - 1:0] fu_data_i;
	// Trace: core/branch_unit.sv:33:5
	input wire [CVA6Cfg[17070-:32] - 1:0] pc_i;
	// Trace: core/branch_unit.sv:35:5
	input wire is_compressed_instr_i;
	// Trace: core/branch_unit.sv:37:5
	input wire branch_valid_i;
	// Trace: core/branch_unit.sv:39:5
	input wire branch_comp_res_i;
	// Trace: core/branch_unit.sv:41:5
	output reg [CVA6Cfg[17070-:32] - 1:0] branch_result_o;
	// Trace: core/branch_unit.sv:43:5
	input wire [(3 + branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32]) - 1:0] branch_predict_i;
	// Trace: core/branch_unit.sv:45:5
	output reg [((1 + bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32]) + bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32]) + 4:0] resolved_branch_o;
	// Trace: core/branch_unit.sv:47:5
	output reg resolve_branch_o;
	// Trace: core/branch_unit.sv:49:5
	output reg [((exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] branch_exception_o;
	// Trace: core/branch_unit.sv:51:3
	reg [CVA6Cfg[17070-:32] - 1:0] target_address;
	// Trace: core/branch_unit.sv:52:3
	reg [CVA6Cfg[17070-:32] - 1:0] next_pc;
	// Trace: core/branch_unit.sv:55:3
	// removed localparam type ariane_pkg_cf_t
	// removed localparam type ariane_pkg_fu_op
	function automatic ariane_pkg_op_is_branch;
		// Trace: core/include/ariane_pkg.sv:495:41
		input reg [7:0] op;
		// Trace: core/include/ariane_pkg.sv:496:5
		(* full_case, parallel_case *)
		case (op)
			8'd17, 8'd18, 8'd13, 8'd15, 8'd14, 8'd16: ariane_pkg_op_is_branch = 1'b1;
			default: ariane_pkg_op_is_branch = 1'b0;
		endcase
	endfunction
	always @(*) begin : mispredict_handler
		// Trace: core/branch_unit.sv:57:5
		reg [CVA6Cfg[17070-:32] - 1:0] jump_base;
		if (_sv2v_0)
			;
		// Trace: core/branch_unit.sv:59:5
		jump_base = (fu_data_i[8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)] == 8'd19 ? fu_data_i[(fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))) - ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[17070-:32] - 1)):(fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] - 1)] : pc_i);
		// Trace: core/branch_unit.sv:61:5
		target_address = {CVA6Cfg[17070-:32] {1'b0}};
		// Trace: core/branch_unit.sv:62:5
		resolve_branch_o = 1'b0;
		// Trace: core/branch_unit.sv:63:5
		resolved_branch_o[bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 4-:((bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 4) >= 5 ? bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 0 : 6 - (bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 4))] = {CVA6Cfg[17070-:32] {1'b0}};
		// Trace: core/branch_unit.sv:64:5
		resolved_branch_o[3] = 1'b0;
		// Trace: core/branch_unit.sv:65:5
		resolved_branch_o[1 + (bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + (bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 4))] = branch_valid_i;
		// Trace: core/branch_unit.sv:66:5
		resolved_branch_o[4] = 1'b0;
		// Trace: core/branch_unit.sv:67:5
		resolved_branch_o[2-:3] = branch_predict_i[branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2-:((branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2) >= (branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 0) ? ((branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2) - (branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 0)) + 1 : ((branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 0) - (branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2)) + 1)];
		// Trace: core/branch_unit.sv:70:5
		next_pc = pc_i + (is_compressed_instr_i ? {{CVA6Cfg[17070-:32] - 2 {1'b0}}, 2'h2} : {{CVA6Cfg[17070-:32] - 3 {1'b0}}, 3'h4});
		// Trace: core/branch_unit.sv:72:5
		target_address = $unsigned($signed(jump_base) + $signed(fu_data_i[(fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)) - ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[17070-:32] - 1)):(fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] - 1)]));
		// Trace: core/branch_unit.sv:74:5
		if (fu_data_i[8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)] == 8'd19)
			// Trace: core/branch_unit.sv:74:50
			target_address[0] = 1'b0;
		// Trace: core/branch_unit.sv:76:5
		branch_result_o = next_pc;
		// Trace: core/branch_unit.sv:77:5
		resolved_branch_o[bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + (bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 4)-:((bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + (bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 4)) >= (bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 5) ? ((bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + (bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 4)) - (bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 5)) + 1 : ((bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 5) - (bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + (bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 4))) + 1)] = pc_i;
		if (branch_valid_i) begin
			// Trace: core/branch_unit.sv:83:7
			resolved_branch_o[bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 4-:((bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 4) >= 5 ? bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 0 : 6 - (bp_resolve_t_bp_resolve_t_CVA6Cfg[17070-:32] + 4))] = (branch_comp_res_i ? target_address : next_pc);
			// Trace: core/branch_unit.sv:84:7
			resolved_branch_o[3] = branch_comp_res_i;
			// Trace: core/branch_unit.sv:86:7
			if (ariane_pkg_op_is_branch(fu_data_i[8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)])) begin
				// Trace: core/branch_unit.sv:88:9
				resolved_branch_o[2-:3] = 3'd1;
				// Trace: core/branch_unit.sv:90:9
				resolved_branch_o[4] = branch_comp_res_i != (branch_predict_i[branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2-:((branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2) >= (branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 0) ? ((branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2) - (branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 0)) + 1 : ((branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 0) - (branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2)) + 1)] == 3'd1);
			end
			if ((fu_data_i[8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)] == 8'd19) && ((branch_predict_i[branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2-:((branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2) >= (branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 0) ? ((branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2) - (branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 0)) + 1 : ((branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 0) - (branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2)) + 1)] == 3'd0) || (target_address != branch_predict_i[branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] - 1-:branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32]]))) begin
				// Trace: core/branch_unit.sv:95:9
				resolved_branch_o[4] = 1'b1;
				// Trace: core/branch_unit.sv:97:9
				if (branch_predict_i[branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2-:((branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2) >= (branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 0) ? ((branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2) - (branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 0)) + 1 : ((branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 0) - (branchpredict_sbe_t_branchpredict_sbe_t_CVA6Cfg[17070-:32] + 2)) + 1)] != 3'd4)
					// Trace: core/branch_unit.sv:98:11
					resolved_branch_o[2-:3] = 3'd3;
			end
			// Trace: core/branch_unit.sv:101:7
			resolve_branch_o = 1'b1;
		end
	end
	// Trace: core/branch_unit.sv:107:3
	reg jump_taken;
	// Trace: core/branch_unit.sv:108:3
	localparam cva6_config_pkg_CVA6ConfigXlen = 64;
	localparam riscv_XLEN = cva6_config_pkg_CVA6ConfigXlen;
	localparam [63:0] riscv_INSTR_ADDR_MISALIGNED = 0;
	always @(*) begin : exception_handling
		if (_sv2v_0)
			;
		// Trace: core/branch_unit.sv:111:5
		branch_exception_o[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_INSTR_ADDR_MISALIGNED;
		// Trace: core/branch_unit.sv:112:5
		branch_exception_o[0] = 1'b0;
		// Trace: core/branch_unit.sv:113:5
		if (CVA6Cfg[15915])
			// Trace: core/branch_unit.sv:114:7
			branch_exception_o[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = {{CVA6Cfg[17102-:32] - CVA6Cfg[17070-:32] {pc_i[CVA6Cfg[17070-:32] - 1]}}, pc_i};
		else
			// Trace: core/branch_unit.sv:115:10
			branch_exception_o[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = 1'sb0;
		// Trace: core/branch_unit.sv:116:5
		branch_exception_o[exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = {CVA6Cfg[17006-:32] {1'b0}};
		// Trace: core/branch_unit.sv:117:5
		branch_exception_o[33-:32] = 1'sb0;
		// Trace: core/branch_unit.sv:118:5
		branch_exception_o[1] = (CVA6Cfg[16543] ? v_i : 1'b0);
		if (!CVA6Cfg[16544]) begin
			// Trace: core/branch_unit.sv:122:7
			jump_taken = !ariane_pkg_op_is_branch(fu_data_i[8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)]) || (ariane_pkg_op_is_branch(fu_data_i[8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)]) && branch_comp_res_i);
			// Trace: core/branch_unit.sv:124:7
			if ((branch_valid_i && (target_address[0] || target_address[1])) && jump_taken)
				// Trace: core/branch_unit.sv:125:9
				branch_exception_o[0] = 1'b1;
		end
	end
	initial _sv2v_0 = 0;
endmodule
