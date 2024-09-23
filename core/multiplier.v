module multiplier (
	clk_i,
	rst_ni,
	trans_id_i,
	mult_valid_i,
	operation_i,
	operand_a_i,
	operand_b_i,
	result_o,
	mult_valid_o,
	mult_ready_o,
	mult_trans_id_o
);
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/multiplier.sv:21:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/multiplier.sv:24:5
	input wire clk_i;
	// Trace: core/multiplier.sv:26:5
	input wire rst_ni;
	// Trace: core/multiplier.sv:28:5
	input wire [CVA6Cfg[16503-:32] - 1:0] trans_id_i;
	// Trace: core/multiplier.sv:30:5
	input wire mult_valid_i;
	// Trace: core/multiplier.sv:32:5
	// removed localparam type ariane_pkg_fu_op
	input wire [7:0] operation_i;
	// Trace: core/multiplier.sv:34:5
	input wire [CVA6Cfg[17102-:32] - 1:0] operand_a_i;
	// Trace: core/multiplier.sv:36:5
	input wire [CVA6Cfg[17102-:32] - 1:0] operand_b_i;
	// Trace: core/multiplier.sv:38:5
	output reg [CVA6Cfg[17102-:32] - 1:0] result_o;
	// Trace: core/multiplier.sv:40:5
	output wire mult_valid_o;
	// Trace: core/multiplier.sv:42:5
	output wire mult_ready_o;
	// Trace: core/multiplier.sv:44:5
	output wire [CVA6Cfg[16503-:32] - 1:0] mult_trans_id_o;
	// Trace: core/multiplier.sv:47:3
	reg [CVA6Cfg[17102-:32] - 1:0] clmul_q;
	reg [CVA6Cfg[17102-:32] - 1:0] clmul_d;
	reg [CVA6Cfg[17102-:32] - 1:0] clmulr_q;
	wire [CVA6Cfg[17102-:32] - 1:0] clmulr_d;
	wire [CVA6Cfg[17102-:32] - 1:0] operand_a;
	wire [CVA6Cfg[17102-:32] - 1:0] operand_b;
	wire [CVA6Cfg[17102-:32] - 1:0] operand_a_rev;
	wire [CVA6Cfg[17102-:32] - 1:0] operand_b_rev;
	// Trace: core/multiplier.sv:49:3
	wire clmul_rmode;
	wire clmul_hmode;
	// Trace: core/multiplier.sv:51:3
	generate
		if (CVA6Cfg[16546]) begin : gen_bitmanip
			// Trace: core/multiplier.sv:53:5
			assign clmul_rmode = operation_i == 8'd157;
			// Trace: core/multiplier.sv:54:5
			assign clmul_hmode = operation_i == 8'd156;
			genvar _gv_i_44;
			for (_gv_i_44 = 0; _gv_i_44 < CVA6Cfg[17102-:32]; _gv_i_44 = _gv_i_44 + 1) begin : genblk1
				localparam i = _gv_i_44;
				// Trace: core/multiplier.sv:58:7
				assign operand_a_rev[i] = operand_a_i[(CVA6Cfg[17102-:32] - 1) - i];
				// Trace: core/multiplier.sv:59:7
				assign operand_b_rev[i] = operand_b_i[(CVA6Cfg[17102-:32] - 1) - i];
			end
			// Trace: core/multiplier.sv:63:5
			assign operand_a = (clmul_rmode | clmul_hmode ? operand_a_rev : operand_a_i);
			// Trace: core/multiplier.sv:64:5
			assign operand_b = (clmul_rmode | clmul_hmode ? operand_b_rev : operand_b_i);
			// Trace: core/multiplier.sv:67:5
			always @(*) begin
				if (_sv2v_0)
					;
				// Trace: core/multiplier.sv:68:7
				clmul_d = 1'sb0;
				// Trace: core/multiplier.sv:69:7
				begin : sv2v_autoblock_1
					// Trace: core/multiplier.sv:69:12
					reg signed [31:0] i;
					// Trace: core/multiplier.sv:69:12
					for (i = 0; i <= CVA6Cfg[17102-:32]; i = i + 1)
						begin
							// Trace: core/multiplier.sv:70:9
							clmul_d = (|((operand_b >> i) & 1) ? clmul_d ^ (operand_a << i) : clmul_d);
						end
				end
			end
			genvar _gv_i_45;
			for (_gv_i_45 = 0; _gv_i_45 < CVA6Cfg[17102-:32]; _gv_i_45 = _gv_i_45 + 1) begin : genblk2
				localparam i = _gv_i_45;
				// Trace: core/multiplier.sv:76:7
				assign clmulr_d[i] = clmul_d[(CVA6Cfg[17102-:32] - 1) - i];
			end
		end
	endgenerate
	// Trace: core/multiplier.sv:81:3
	reg [CVA6Cfg[16503-:32] - 1:0] trans_id_q;
	// Trace: core/multiplier.sv:82:3
	reg mult_valid_q;
	// Trace: core/multiplier.sv:83:3
	wire [7:0] operator_d;
	reg [7:0] operator_q;
	// Trace: core/multiplier.sv:84:3
	wire [(CVA6Cfg[17102-:32] * 2) - 1:0] mult_result_d;
	reg [(CVA6Cfg[17102-:32] * 2) - 1:0] mult_result_q;
	// Trace: core/multiplier.sv:87:3
	reg sign_a;
	reg sign_b;
	// Trace: core/multiplier.sv:88:3
	wire mult_valid;
	// Trace: core/multiplier.sv:91:3
	assign mult_valid_o = mult_valid_q;
	// Trace: core/multiplier.sv:92:3
	assign mult_trans_id_o = trans_id_q;
	// Trace: core/multiplier.sv:93:3
	assign mult_ready_o = 1'b1;
	// Trace: core/multiplier.sv:95:3
	assign mult_valid = mult_valid_i && |{operation_i == 8'd83, operation_i == 8'd84, operation_i == 8'd85, operation_i == 8'd86, operation_i == 8'd87, operation_i == 8'd155, operation_i == 8'd156, operation_i == 8'd157};
	// Trace: core/multiplier.sv:98:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/multiplier.sv:99:5
		sign_a = 1'b0;
		// Trace: core/multiplier.sv:100:5
		sign_b = 1'b0;
		// Trace: core/multiplier.sv:103:5
		if (operation_i == 8'd84) begin
			// Trace: core/multiplier.sv:104:7
			sign_a = 1'b1;
			// Trace: core/multiplier.sv:105:7
			sign_b = 1'b1;
		end
		else if (operation_i == 8'd86)
			// Trace: core/multiplier.sv:108:7
			sign_a = 1'b1;
		else begin
			// Trace: core/multiplier.sv:111:7
			sign_a = 1'b0;
			// Trace: core/multiplier.sv:112:7
			sign_b = 1'b0;
		end
	end
	// Trace: core/multiplier.sv:118:3
	assign mult_result_d = $signed({operand_a_i[CVA6Cfg[17102-:32] - 1] & sign_a, operand_a_i}) * $signed({operand_b_i[CVA6Cfg[17102-:32] - 1] & sign_b, operand_b_i});
	// Trace: core/multiplier.sv:125:3
	assign operator_d = operation_i;
	// Trace: core/multiplier.sv:127:3
	function automatic [63:0] ariane_pkg_sext32to64;
		// Trace: core/include/ariane_pkg.sv:729:46
		input reg [31:0] operand;
		// Trace: core/include/ariane_pkg.sv:730:5
		ariane_pkg_sext32to64 = {{32 {operand[31]}}, operand[31:0]};
	endfunction
	always @(*) begin : p_selmux
		if (_sv2v_0)
			;
		// Trace: core/multiplier.sv:128:5
		(* full_case, parallel_case *)
		case (operator_q)
			8'd84, 8'd85, 8'd86:
				// Trace: core/multiplier.sv:129:28
				result_o = mult_result_q[(CVA6Cfg[17102-:32] * 2) - 1:CVA6Cfg[17102-:32]];
			8'd155:
				// Trace: core/multiplier.sv:130:28
				result_o = clmul_q;
			8'd156:
				// Trace: core/multiplier.sv:131:28
				result_o = clmulr_q >> 1;
			8'd157:
				// Trace: core/multiplier.sv:132:28
				result_o = clmulr_q;
			default:
				// Trace: core/multiplier.sv:135:9
				if ((operator_q == 8'd87) && CVA6Cfg[16973])
					// Trace: core/multiplier.sv:135:54
					result_o = ariane_pkg_sext32to64(mult_result_q[31:0]);
				else
					// Trace: core/multiplier.sv:136:14
					result_o = mult_result_q[CVA6Cfg[17102-:32] - 1:0];
		endcase
	end
	// Trace: core/multiplier.sv:140:3
	generate
		if (CVA6Cfg[16546]) begin : genblk2
			// Trace: core/multiplier.sv:141:5
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/multiplier.sv:142:7
				if (~rst_ni) begin
					// Trace: core/multiplier.sv:143:9
					clmul_q <= 1'sb0;
					// Trace: core/multiplier.sv:144:9
					clmulr_q <= 1'sb0;
				end
				else begin
					// Trace: core/multiplier.sv:146:9
					clmul_q <= clmul_d;
					// Trace: core/multiplier.sv:147:9
					clmulr_q <= clmulr_d;
				end
		end
	endgenerate
	// Trace: core/multiplier.sv:154:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/multiplier.sv:155:5
		if (~rst_ni) begin
			// Trace: core/multiplier.sv:156:7
			mult_valid_q <= 1'sb0;
			// Trace: core/multiplier.sv:157:7
			trans_id_q <= 1'sb0;
			// Trace: core/multiplier.sv:158:7
			operator_q <= 8'd83;
			// Trace: core/multiplier.sv:159:7
			mult_result_q <= 1'sb0;
		end
		else begin
			// Trace: core/multiplier.sv:162:7
			trans_id_q <= trans_id_i;
			// Trace: core/multiplier.sv:164:7
			mult_valid_q <= mult_valid;
			// Trace: core/multiplier.sv:165:7
			operator_q <= operator_d;
			// Trace: core/multiplier.sv:166:7
			mult_result_q <= mult_result_d;
		end
	initial _sv2v_0 = 0;
endmodule
