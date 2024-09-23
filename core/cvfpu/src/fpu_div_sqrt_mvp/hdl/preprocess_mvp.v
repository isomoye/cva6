// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:35:1
// removed ["import defs_div_sqrt_mvp::*;"]
module preprocess_mvp (
	Clk_CI,
	Rst_RBI,
	Div_start_SI,
	Sqrt_start_SI,
	Ready_SI,
	Operand_a_DI,
	Operand_b_DI,
	RM_SI,
	Format_sel_SI,
	Start_SO,
	Exp_a_DO_norm,
	Exp_b_DO_norm,
	Mant_a_DO_norm,
	Mant_b_DO_norm,
	RM_dly_SO,
	Sign_z_DO,
	Inf_a_SO,
	Inf_b_SO,
	Zero_a_SO,
	Zero_b_SO,
	NaN_a_SO,
	NaN_b_SO,
	SNaN_SO,
	Special_case_SBO,
	Special_case_dly_SBO
);
	reg _sv2v_0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:39:4
	input wire Clk_CI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:40:4
	input wire Rst_RBI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:41:4
	input wire Div_start_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:42:4
	input wire Sqrt_start_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:43:4
	input wire Ready_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:45:4
	localparam defs_div_sqrt_mvp_C_OP_FP64 = 64;
	input wire [63:0] Operand_a_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:46:4
	input wire [63:0] Operand_b_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:47:4
	localparam defs_div_sqrt_mvp_C_RM = 3;
	input wire [2:0] RM_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:48:4
	localparam defs_div_sqrt_mvp_C_FS = 2;
	input wire [1:0] Format_sel_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:51:4
	output wire Start_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:52:4
	localparam defs_div_sqrt_mvp_C_EXP_FP64 = 11;
	output wire [defs_div_sqrt_mvp_C_EXP_FP64:0] Exp_a_DO_norm;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:53:4
	output wire [defs_div_sqrt_mvp_C_EXP_FP64:0] Exp_b_DO_norm;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:54:4
	localparam defs_div_sqrt_mvp_C_MANT_FP64 = 52;
	output wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_a_DO_norm;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:55:4
	output wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_b_DO_norm;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:57:4
	output wire [2:0] RM_dly_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:59:4
	output wire Sign_z_DO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:60:4
	output wire Inf_a_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:61:4
	output wire Inf_b_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:62:4
	output wire Zero_a_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:63:4
	output wire Zero_b_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:64:4
	output wire NaN_a_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:65:4
	output wire NaN_b_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:66:4
	output wire SNaN_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:67:4
	output wire Special_case_SBO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:68:4
	output reg Special_case_dly_SBO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:72:4
	wire Hb_a_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:73:4
	wire Hb_b_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:75:4
	reg [10:0] Exp_a_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:76:4
	reg [10:0] Exp_b_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:77:4
	reg [51:0] Mant_a_NonH_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:78:4
	reg [51:0] Mant_b_NonH_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:79:4
	wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_a_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:80:4
	wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_b_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:85:4
	reg Sign_a_D;
	reg Sign_b_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:86:4
	wire Start_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:88:6
	localparam defs_div_sqrt_mvp_C_MANT_FP16 = 10;
	localparam defs_div_sqrt_mvp_C_MANT_FP16ALT = 7;
	localparam defs_div_sqrt_mvp_C_MANT_FP32 = 23;
	localparam defs_div_sqrt_mvp_C_OP_FP16 = 16;
	localparam defs_div_sqrt_mvp_C_OP_FP16ALT = 16;
	localparam defs_div_sqrt_mvp_C_OP_FP32 = 32;
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:90:10
		case (Format_sel_SI)
			2'b00: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:93:16
				Sign_a_D = Operand_a_DI[31];
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:94:16
				Sign_b_D = Operand_b_DI[31];
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:95:16
				Exp_a_D = {3'h0, Operand_a_DI[30:defs_div_sqrt_mvp_C_MANT_FP32]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:96:16
				Exp_b_D = {3'h0, Operand_b_DI[30:defs_div_sqrt_mvp_C_MANT_FP32]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:97:16
				Mant_a_NonH_D = {Operand_a_DI[22:0], 29'h00000000};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:98:16
				Mant_b_NonH_D = {Operand_b_DI[22:0], 29'h00000000};
			end
			2'b01: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:102:16
				Sign_a_D = Operand_a_DI[63];
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:103:16
				Sign_b_D = Operand_b_DI[63];
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:104:16
				Exp_a_D = Operand_a_DI[62:defs_div_sqrt_mvp_C_MANT_FP64];
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:105:16
				Exp_b_D = Operand_b_DI[62:defs_div_sqrt_mvp_C_MANT_FP64];
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:106:16
				Mant_a_NonH_D = Operand_a_DI[51:0];
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:107:16
				Mant_b_NonH_D = Operand_b_DI[51:0];
			end
			2'b10: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:111:16
				Sign_a_D = Operand_a_DI[15];
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:112:16
				Sign_b_D = Operand_b_DI[15];
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:113:16
				Exp_a_D = {6'h00, Operand_a_DI[14:defs_div_sqrt_mvp_C_MANT_FP16]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:114:16
				Exp_b_D = {6'h00, Operand_b_DI[14:defs_div_sqrt_mvp_C_MANT_FP16]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:115:16
				Mant_a_NonH_D = {Operand_a_DI[9:0], 42'h00000000000};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:116:16
				Mant_b_NonH_D = {Operand_b_DI[9:0], 42'h00000000000};
			end
			2'b11: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:120:16
				Sign_a_D = Operand_a_DI[15];
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:121:16
				Sign_b_D = Operand_b_DI[15];
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:122:16
				Exp_a_D = {3'h0, Operand_a_DI[14:defs_div_sqrt_mvp_C_MANT_FP16ALT]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:123:16
				Exp_b_D = {3'h0, Operand_b_DI[14:defs_div_sqrt_mvp_C_MANT_FP16ALT]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:124:16
				Mant_a_NonH_D = {Operand_a_DI[6:0], 45'h000000000000};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:125:16
				Mant_b_NonH_D = {Operand_b_DI[6:0], 45'h000000000000};
			end
		endcase
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:131:4
	assign Mant_a_D = {Hb_a_D, Mant_a_NonH_D};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:132:4
	assign Mant_b_D = {Hb_b_D, Mant_b_NonH_D};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:134:4
	assign Hb_a_D = |Exp_a_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:135:4
	assign Hb_b_D = |Exp_b_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:137:4
	assign Start_S = Div_start_SI | Sqrt_start_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:145:4
	reg Mant_a_prenorm_zero_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:146:4
	reg Mant_b_prenorm_zero_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:148:4
	wire Exp_a_prenorm_zero_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:149:4
	wire Exp_b_prenorm_zero_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:150:4
	assign Exp_a_prenorm_zero_S = ~Hb_a_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:151:4
	assign Exp_b_prenorm_zero_S = ~Hb_b_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:153:4
	reg Exp_a_prenorm_Inf_NaN_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:154:4
	reg Exp_b_prenorm_Inf_NaN_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:156:4
	wire Mant_a_prenorm_QNaN_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:157:4
	wire Mant_a_prenorm_SNaN_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:158:4
	wire Mant_b_prenorm_QNaN_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:159:4
	wire Mant_b_prenorm_SNaN_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:161:4
	assign Mant_a_prenorm_QNaN_S = Mant_a_NonH_D[51] && ~(|Mant_a_NonH_D[50:0]);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:162:4
	assign Mant_a_prenorm_SNaN_S = ~Mant_a_NonH_D[51] && |Mant_a_NonH_D[50:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:163:4
	assign Mant_b_prenorm_QNaN_S = Mant_b_NonH_D[51] && ~(|Mant_b_NonH_D[50:0]);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:164:4
	assign Mant_b_prenorm_SNaN_S = ~Mant_b_NonH_D[51] && |Mant_b_NonH_D[50:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:166:6
	localparam defs_div_sqrt_mvp_C_EXP_INF_FP16 = 5'h1f;
	localparam defs_div_sqrt_mvp_C_EXP_INF_FP16ALT = 8'hff;
	localparam defs_div_sqrt_mvp_C_EXP_INF_FP32 = 8'hff;
	localparam defs_div_sqrt_mvp_C_EXP_INF_FP64 = 11'h7ff;
	localparam defs_div_sqrt_mvp_C_MANT_ZERO_FP16 = 10'h000;
	localparam defs_div_sqrt_mvp_C_MANT_ZERO_FP16ALT = 7'h00;
	localparam defs_div_sqrt_mvp_C_MANT_ZERO_FP32 = 23'h000000;
	localparam defs_div_sqrt_mvp_C_MANT_ZERO_FP64 = 52'h0000000000000;
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:168:10
		case (Format_sel_SI)
			2'b00: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:171:16
				Mant_a_prenorm_zero_S = Operand_a_DI[22:0] == defs_div_sqrt_mvp_C_MANT_ZERO_FP32;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:172:16
				Mant_b_prenorm_zero_S = Operand_b_DI[22:0] == defs_div_sqrt_mvp_C_MANT_ZERO_FP32;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:173:16
				Exp_a_prenorm_Inf_NaN_S = Operand_a_DI[30:defs_div_sqrt_mvp_C_MANT_FP32] == defs_div_sqrt_mvp_C_EXP_INF_FP32;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:174:16
				Exp_b_prenorm_Inf_NaN_S = Operand_b_DI[30:defs_div_sqrt_mvp_C_MANT_FP32] == defs_div_sqrt_mvp_C_EXP_INF_FP32;
			end
			2'b01: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:178:16
				Mant_a_prenorm_zero_S = Operand_a_DI[51:0] == defs_div_sqrt_mvp_C_MANT_ZERO_FP64;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:179:16
				Mant_b_prenorm_zero_S = Operand_b_DI[51:0] == defs_div_sqrt_mvp_C_MANT_ZERO_FP64;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:180:16
				Exp_a_prenorm_Inf_NaN_S = Operand_a_DI[62:defs_div_sqrt_mvp_C_MANT_FP64] == defs_div_sqrt_mvp_C_EXP_INF_FP64;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:181:16
				Exp_b_prenorm_Inf_NaN_S = Operand_b_DI[62:defs_div_sqrt_mvp_C_MANT_FP64] == defs_div_sqrt_mvp_C_EXP_INF_FP64;
			end
			2'b10: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:185:16
				Mant_a_prenorm_zero_S = Operand_a_DI[9:0] == defs_div_sqrt_mvp_C_MANT_ZERO_FP16;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:186:16
				Mant_b_prenorm_zero_S = Operand_b_DI[9:0] == defs_div_sqrt_mvp_C_MANT_ZERO_FP16;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:187:16
				Exp_a_prenorm_Inf_NaN_S = Operand_a_DI[14:defs_div_sqrt_mvp_C_MANT_FP16] == defs_div_sqrt_mvp_C_EXP_INF_FP16;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:188:16
				Exp_b_prenorm_Inf_NaN_S = Operand_b_DI[14:defs_div_sqrt_mvp_C_MANT_FP16] == defs_div_sqrt_mvp_C_EXP_INF_FP16;
			end
			2'b11: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:192:16
				Mant_a_prenorm_zero_S = Operand_a_DI[6:0] == defs_div_sqrt_mvp_C_MANT_ZERO_FP16ALT;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:193:16
				Mant_b_prenorm_zero_S = Operand_b_DI[6:0] == defs_div_sqrt_mvp_C_MANT_ZERO_FP16ALT;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:194:16
				Exp_a_prenorm_Inf_NaN_S = Operand_a_DI[14:defs_div_sqrt_mvp_C_MANT_FP16ALT] == defs_div_sqrt_mvp_C_EXP_INF_FP16ALT;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:195:16
				Exp_b_prenorm_Inf_NaN_S = Operand_b_DI[14:defs_div_sqrt_mvp_C_MANT_FP16ALT] == defs_div_sqrt_mvp_C_EXP_INF_FP16ALT;
			end
		endcase
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:203:4
	wire Zero_a_SN;
	reg Zero_a_SP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:204:4
	wire Zero_b_SN;
	reg Zero_b_SP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:205:4
	wire Inf_a_SN;
	reg Inf_a_SP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:206:4
	wire Inf_b_SN;
	reg Inf_b_SP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:207:4
	wire NaN_a_SN;
	reg NaN_a_SP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:208:4
	wire NaN_b_SN;
	reg NaN_b_SP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:209:4
	wire SNaN_SN;
	reg SNaN_SP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:211:4
	assign Zero_a_SN = (Start_S && Ready_SI ? Exp_a_prenorm_zero_S && Mant_a_prenorm_zero_S : Zero_a_SP);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:212:4
	assign Zero_b_SN = (Start_S && Ready_SI ? Exp_b_prenorm_zero_S && Mant_b_prenorm_zero_S : Zero_b_SP);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:213:4
	assign Inf_a_SN = (Start_S && Ready_SI ? Exp_a_prenorm_Inf_NaN_S && Mant_a_prenorm_zero_S : Inf_a_SP);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:214:4
	assign Inf_b_SN = (Start_S && Ready_SI ? Exp_b_prenorm_Inf_NaN_S && Mant_b_prenorm_zero_S : Inf_b_SP);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:215:4
	assign NaN_a_SN = (Start_S && Ready_SI ? Exp_a_prenorm_Inf_NaN_S && ~Mant_a_prenorm_zero_S : NaN_a_SP);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:216:4
	assign NaN_b_SN = (Start_S && Ready_SI ? Exp_b_prenorm_Inf_NaN_S && ~Mant_b_prenorm_zero_S : NaN_b_SP);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:217:4
	assign SNaN_SN = (Start_S && Ready_SI ? (Mant_a_prenorm_SNaN_S && NaN_a_SN) | (Mant_b_prenorm_SNaN_S && NaN_b_SN) : SNaN_SP);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:219:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:221:9
		if (~Rst_RBI) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:223:13
			Zero_a_SP <= 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:224:13
			Zero_b_SP <= 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:225:13
			Inf_a_SP <= 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:226:13
			Inf_b_SP <= 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:227:13
			NaN_a_SP <= 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:228:13
			NaN_b_SP <= 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:229:13
			SNaN_SP <= 1'sb0;
		end
		else begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:233:12
			Inf_a_SP <= Inf_a_SN;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:234:12
			Inf_b_SP <= Inf_b_SN;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:235:12
			Zero_a_SP <= Zero_a_SN;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:236:12
			Zero_b_SP <= Zero_b_SN;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:237:12
			NaN_a_SP <= NaN_a_SN;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:238:12
			NaN_b_SP <= NaN_b_SN;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:239:12
			SNaN_SP <= SNaN_SN;
		end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:247:4
	assign Special_case_SBO = ~{(Div_start_SI ? ((((Zero_a_SN | Zero_b_SN) | Inf_a_SN) | Inf_b_SN) | NaN_a_SN) | NaN_b_SN : ((Zero_a_SN | Inf_a_SN) | NaN_a_SN) | Sign_a_D)} && (Start_S && Ready_SI);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:250:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:252:8
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:254:13
			Special_case_dly_SBO <= 1'sb0;
		else if (Start_S && Ready_SI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:258:13
			Special_case_dly_SBO <= Special_case_SBO;
		else if (Special_case_dly_SBO)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:262:10
			Special_case_dly_SBO <= 1'b1;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:266:13
			Special_case_dly_SBO <= 1'sb0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:274:4
	reg Sign_z_DN;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:275:4
	reg Sign_z_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:277:4
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:279:8
		if (Div_start_SI && Ready_SI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:280:12
			Sign_z_DN = Sign_a_D ^ Sign_b_D;
		else if (Sqrt_start_SI && Ready_SI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:282:12
			Sign_z_DN = Sign_a_D;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:284:12
			Sign_z_DN = Sign_z_DP;
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:287:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:289:8
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:291:13
			Sign_z_DP <= 1'sb0;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:295:13
			Sign_z_DP <= Sign_z_DN;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:299:4
	reg [2:0] RM_DN;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:300:4
	reg [2:0] RM_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:302:4
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:304:8
		if (Start_S && Ready_SI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:305:12
			RM_DN = RM_SI;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:307:12
			RM_DN = RM_DP;
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:310:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:312:8
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:314:13
			RM_DP <= 1'sb0;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:318:13
			RM_DP <= RM_DN;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:321:4
	assign RM_dly_SO = RM_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:323:4
	wire [5:0] Mant_leadingOne_a;
	wire [5:0] Mant_leadingOne_b;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:324:4
	wire Mant_zero_S_a;
	wire Mant_zero_S_b;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:326:3
	lzc #(
		.WIDTH(53),
		.MODE(1)
	) LOD_Ua(
		.in_i(Mant_a_D),
		.cnt_o(Mant_leadingOne_a),
		.empty_o(Mant_zero_S_a)
	);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:335:4
	wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_a_norm_DN;
	reg [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_a_norm_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:337:4
	assign Mant_a_norm_DN = (Start_S && Ready_SI ? Mant_a_D << Mant_leadingOne_a : Mant_a_norm_DP);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:339:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:341:9
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:343:13
			Mant_a_norm_DP <= 1'sb0;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:347:13
			Mant_a_norm_DP <= Mant_a_norm_DN;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:351:4
	wire [defs_div_sqrt_mvp_C_EXP_FP64:0] Exp_a_norm_DN;
	reg [defs_div_sqrt_mvp_C_EXP_FP64:0] Exp_a_norm_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:352:4
	assign Exp_a_norm_DN = (Start_S && Ready_SI ? (Exp_a_D - Mant_leadingOne_a) + |Mant_leadingOne_a : Exp_a_norm_DP);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:354:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:356:9
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:358:13
			Exp_a_norm_DP <= 1'sb0;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:362:13
			Exp_a_norm_DP <= Exp_a_norm_DN;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:366:3
	lzc #(
		.WIDTH(53),
		.MODE(1)
	) LOD_Ub(
		.in_i(Mant_b_D),
		.cnt_o(Mant_leadingOne_b),
		.empty_o(Mant_zero_S_b)
	);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:376:4
	wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_b_norm_DN;
	reg [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_b_norm_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:378:4
	assign Mant_b_norm_DN = (Start_S && Ready_SI ? Mant_b_D << Mant_leadingOne_b : Mant_b_norm_DP);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:380:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:382:9
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:384:13
			Mant_b_norm_DP <= 1'sb0;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:388:13
			Mant_b_norm_DP <= Mant_b_norm_DN;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:392:4
	wire [defs_div_sqrt_mvp_C_EXP_FP64:0] Exp_b_norm_DN;
	reg [defs_div_sqrt_mvp_C_EXP_FP64:0] Exp_b_norm_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:393:4
	assign Exp_b_norm_DN = (Start_S && Ready_SI ? (Exp_b_D - Mant_leadingOne_b) + |Mant_leadingOne_b : Exp_b_norm_DP);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:395:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:397:9
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:399:13
			Exp_b_norm_DP <= 1'sb0;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:403:13
			Exp_b_norm_DP <= Exp_b_norm_DN;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:411:4
	assign Start_SO = Start_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:412:4
	assign Exp_a_DO_norm = Exp_a_norm_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:413:4
	assign Exp_b_DO_norm = Exp_b_norm_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:414:4
	assign Mant_a_DO_norm = Mant_a_norm_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:415:4
	assign Mant_b_DO_norm = Mant_b_norm_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:416:4
	assign Sign_z_DO = Sign_z_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:417:4
	assign Inf_a_SO = Inf_a_SP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:418:4
	assign Inf_b_SO = Inf_b_SP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:419:4
	assign Zero_a_SO = Zero_a_SP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:420:4
	assign Zero_b_SO = Zero_b_SP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:421:4
	assign NaN_a_SO = NaN_a_SP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:422:4
	assign NaN_b_SO = NaN_b_SP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/preprocess_mvp.sv:423:4
	assign SNaN_SO = SNaN_SP;
	initial _sv2v_0 = 0;
endmodule
