// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:44:1
// removed ["import defs_div_sqrt_mvp::*;"]
module norm_div_sqrt_mvp (
	Mant_in_DI,
	Exp_in_DI,
	Sign_in_DI,
	Div_enable_SI,
	Sqrt_enable_SI,
	Inf_a_SI,
	Inf_b_SI,
	Zero_a_SI,
	Zero_b_SI,
	NaN_a_SI,
	NaN_b_SI,
	SNaN_SI,
	RM_SI,
	Full_precision_SI,
	FP32_SI,
	FP64_SI,
	FP16_SI,
	FP16ALT_SI,
	Result_DO,
	Fflags_SO
);
	reg _sv2v_0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:48:4
	localparam defs_div_sqrt_mvp_C_MANT_FP64 = 52;
	input wire [56:0] Mant_in_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:49:4
	localparam defs_div_sqrt_mvp_C_EXP_FP64 = 11;
	input wire signed [12:0] Exp_in_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:50:4
	input wire Sign_in_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:51:4
	input wire Div_enable_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:52:4
	input wire Sqrt_enable_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:53:4
	input wire Inf_a_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:54:4
	input wire Inf_b_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:55:4
	input wire Zero_a_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:56:4
	input wire Zero_b_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:57:4
	input wire NaN_a_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:58:4
	input wire NaN_b_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:59:4
	input wire SNaN_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:60:4
	localparam defs_div_sqrt_mvp_C_RM = 3;
	input wire [2:0] RM_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:61:4
	input wire Full_precision_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:62:4
	input wire FP32_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:63:4
	input wire FP64_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:64:4
	input wire FP16_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:65:4
	input wire FP16ALT_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:67:4
	output reg [63:0] Result_DO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:68:4
	output wire [4:0] Fflags_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:72:4
	reg Sign_res_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:74:4
	reg NV_OP_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:75:4
	reg Exp_OF_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:76:4
	reg Exp_UF_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:77:4
	reg Div_Zero_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:78:4
	wire In_Exact_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:83:4
	reg [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_res_norm_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:84:4
	reg [10:0] Exp_res_norm_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:90:3
	wire [12:0] Exp_Max_RS_FP64_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:91:3
	localparam defs_div_sqrt_mvp_C_EXP_FP32 = 8;
	wire [9:0] Exp_Max_RS_FP32_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:92:3
	localparam defs_div_sqrt_mvp_C_EXP_FP16 = 5;
	wire [6:0] Exp_Max_RS_FP16_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:93:3
	localparam defs_div_sqrt_mvp_C_EXP_FP16ALT = 8;
	wire [9:0] Exp_Max_RS_FP16ALT_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:95:3
	assign Exp_Max_RS_FP64_D = (Exp_in_DI[defs_div_sqrt_mvp_C_EXP_FP64:0] + defs_div_sqrt_mvp_C_MANT_FP64) + 1;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:96:3
	localparam defs_div_sqrt_mvp_C_MANT_FP32 = 23;
	assign Exp_Max_RS_FP32_D = (Exp_in_DI[defs_div_sqrt_mvp_C_EXP_FP32:0] + defs_div_sqrt_mvp_C_MANT_FP32) + 1;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:97:3
	localparam defs_div_sqrt_mvp_C_MANT_FP16 = 10;
	assign Exp_Max_RS_FP16_D = (Exp_in_DI[defs_div_sqrt_mvp_C_EXP_FP16:0] + defs_div_sqrt_mvp_C_MANT_FP16) + 1;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:98:3
	localparam defs_div_sqrt_mvp_C_MANT_FP16ALT = 7;
	assign Exp_Max_RS_FP16ALT_D = (Exp_in_DI[defs_div_sqrt_mvp_C_EXP_FP16ALT:0] + defs_div_sqrt_mvp_C_MANT_FP16ALT) + 1;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:99:3
	wire [12:0] Num_RS_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:100:3
	assign Num_RS_D = ~Exp_in_DI + 2;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:101:3
	wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_RS_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:102:3
	wire [56:0] Mant_forsticky_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:103:3
	assign {Mant_RS_D, Mant_forsticky_D} = {Mant_in_DI, {53 {1'b0}}} >> Num_RS_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:105:3
	wire [12:0] Exp_subOne_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:106:3
	assign Exp_subOne_D = Exp_in_DI - 1;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:109:4
	reg [1:0] Mant_lower_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:110:4
	reg Mant_sticky_bit_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:111:4
	reg [56:0] Mant_forround_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:113:4
	localparam defs_div_sqrt_mvp_C_EXP_ONE_FP64 = 13'h0001;
	localparam defs_div_sqrt_mvp_C_MANT_NAN_FP64 = 52'h8000000000000;
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:116:8
		if (NaN_a_SI) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:118:12
			Div_Zero_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:119:12
			Exp_OF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:120:12
			Exp_UF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:121:12
			Mant_res_norm_D = {1'b0, defs_div_sqrt_mvp_C_MANT_NAN_FP64};
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:122:12
			Exp_res_norm_D = 1'sb1;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:123:12
			Mant_forround_D = 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:124:12
			Sign_res_D = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:125:12
			NV_OP_S = SNaN_SI;
		end
		else if (NaN_b_SI) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:130:11
			Div_Zero_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:131:11
			Exp_OF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:132:11
			Exp_UF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:133:11
			Mant_res_norm_D = {1'b0, defs_div_sqrt_mvp_C_MANT_NAN_FP64};
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:134:11
			Exp_res_norm_D = 1'sb1;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:135:11
			Mant_forround_D = 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:136:11
			Sign_res_D = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:137:11
			NV_OP_S = SNaN_SI;
		end
		else if (Inf_a_SI) begin
			begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:142:11
				if (Div_enable_SI && Inf_b_SI) begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:144:15
					Div_Zero_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:145:15
					Exp_OF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:146:15
					Exp_UF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:147:15
					Mant_res_norm_D = {1'b0, defs_div_sqrt_mvp_C_MANT_NAN_FP64};
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:148:15
					Exp_res_norm_D = 1'sb1;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:149:15
					Mant_forround_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:150:15
					Sign_res_D = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:151:15
					NV_OP_S = 1'b1;
				end
				else if (Sqrt_enable_SI && Sign_in_DI) begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:154:13
					Div_Zero_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:155:13
					Exp_OF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:156:13
					Exp_UF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:157:13
					Mant_res_norm_D = {1'b0, defs_div_sqrt_mvp_C_MANT_NAN_FP64};
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:158:13
					Exp_res_norm_D = 1'sb1;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:159:13
					Mant_forround_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:160:13
					Sign_res_D = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:161:13
					NV_OP_S = 1'b1;
				end
				else begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:163:13
					Div_Zero_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:164:13
					Exp_OF_S = 1'b1;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:165:13
					Exp_UF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:166:13
					Mant_res_norm_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:167:13
					Exp_res_norm_D = 1'sb1;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:168:13
					Mant_forround_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:169:13
					Sign_res_D = Sign_in_DI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:170:13
					NV_OP_S = 1'b0;
				end
			end
		end
		else if (Div_enable_SI && Inf_b_SI) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:176:11
			Div_Zero_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:177:11
			Exp_OF_S = 1'b1;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:178:11
			Exp_UF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:179:11
			Mant_res_norm_D = 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:180:11
			Exp_res_norm_D = 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:181:11
			Mant_forround_D = 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:182:11
			Sign_res_D = Sign_in_DI;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:183:11
			NV_OP_S = 1'b0;
		end
		else if (Zero_a_SI) begin
			begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:188:10
				if (Div_enable_SI && Zero_b_SI) begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:190:15
					Div_Zero_S = 1'b1;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:191:15
					Exp_OF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:192:15
					Exp_UF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:193:15
					Mant_res_norm_D = {1'b0, defs_div_sqrt_mvp_C_MANT_NAN_FP64};
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:194:15
					Exp_res_norm_D = 1'sb1;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:195:15
					Mant_forround_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:196:15
					Sign_res_D = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:197:15
					NV_OP_S = 1'b1;
				end
				else begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:201:14
					Div_Zero_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:202:14
					Exp_OF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:203:14
					Exp_UF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:204:14
					Mant_res_norm_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:205:14
					Exp_res_norm_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:206:14
					Mant_forround_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:207:14
					Sign_res_D = Sign_in_DI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:208:14
					NV_OP_S = 1'b0;
				end
			end
		end
		else if (Div_enable_SI && Zero_b_SI) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:214:10
			Div_Zero_S = 1'b1;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:215:10
			Exp_OF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:216:10
			Exp_UF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:217:10
			Mant_res_norm_D = 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:218:10
			Exp_res_norm_D = 1'sb1;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:219:10
			Mant_forround_D = 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:220:10
			Sign_res_D = Sign_in_DI;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:221:10
			NV_OP_S = 1'b0;
		end
		else if (Sign_in_DI && Sqrt_enable_SI) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:226:11
			Div_Zero_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:227:11
			Exp_OF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:228:11
			Exp_UF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:229:11
			Mant_res_norm_D = {1'b0, defs_div_sqrt_mvp_C_MANT_NAN_FP64};
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:230:11
			Exp_res_norm_D = 1'sb1;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:231:11
			Mant_forround_D = 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:232:11
			Sign_res_D = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:233:11
			NV_OP_S = 1'b1;
		end
		else if (Exp_in_DI[defs_div_sqrt_mvp_C_EXP_FP64:0] == {12 {1'sb0}}) begin
			begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:238:10
				if (Mant_in_DI != {57 {1'sb0}}) begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:240:14
					Div_Zero_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:241:14
					Exp_OF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:242:14
					Exp_UF_S = 1'b1;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:243:14
					Mant_res_norm_D = {1'b0, Mant_in_DI[56:5]};
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:244:14
					Exp_res_norm_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:245:14
					Mant_forround_D = {Mant_in_DI[4:0], {defs_div_sqrt_mvp_C_MANT_FP64 {1'b0}}};
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:246:14
					Sign_res_D = Sign_in_DI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:247:14
					NV_OP_S = 1'b0;
				end
				else begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:251:14
					Div_Zero_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:252:14
					Exp_OF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:253:14
					Exp_UF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:254:14
					Mant_res_norm_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:255:14
					Exp_res_norm_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:256:14
					Mant_forround_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:257:14
					Sign_res_D = Sign_in_DI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:258:14
					NV_OP_S = 1'b0;
				end
			end
		end
		else if ((Exp_in_DI[defs_div_sqrt_mvp_C_EXP_FP64:0] == defs_div_sqrt_mvp_C_EXP_ONE_FP64) && ~Mant_in_DI[56]) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:264:11
			Div_Zero_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:265:11
			Exp_OF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:266:11
			Exp_UF_S = 1'b1;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:267:11
			Mant_res_norm_D = Mant_in_DI[56:4];
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:268:11
			Exp_res_norm_D = 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:269:11
			Mant_forround_D = {Mant_in_DI[3:0], {53 {1'b0}}};
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:270:11
			Sign_res_D = Sign_in_DI;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:271:11
			NV_OP_S = 1'b0;
		end
		else if (Exp_in_DI[12]) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:276:11
			Div_Zero_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:277:11
			Exp_OF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:278:11
			Exp_UF_S = 1'b1;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:279:11
			Mant_res_norm_D = {Mant_RS_D[defs_div_sqrt_mvp_C_MANT_FP64:0]};
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:280:11
			Exp_res_norm_D = 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:281:11
			Mant_forround_D = {Mant_forsticky_D[56:0]};
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:282:11
			Sign_res_D = Sign_in_DI;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:283:11
			NV_OP_S = 1'b0;
		end
		else if ((((Exp_in_DI[defs_div_sqrt_mvp_C_EXP_FP32] && FP32_SI) | (Exp_in_DI[defs_div_sqrt_mvp_C_EXP_FP64] && FP64_SI)) | (Exp_in_DI[defs_div_sqrt_mvp_C_EXP_FP16] && FP16_SI)) | (Exp_in_DI[defs_div_sqrt_mvp_C_EXP_FP16ALT] && FP16ALT_SI)) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:288:11
			Div_Zero_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:289:11
			Exp_OF_S = 1'b1;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:290:11
			Exp_UF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:291:11
			Mant_res_norm_D = 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:292:11
			Exp_res_norm_D = 1'sb1;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:293:11
			Mant_forround_D = 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:294:11
			Sign_res_D = Sign_in_DI;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:295:11
			NV_OP_S = 1'b0;
		end
		else if (((((Exp_in_DI[7:0] == {8 {1'sb1}}) && FP32_SI) | ((Exp_in_DI[10:0] == {11 {1'sb1}}) && FP64_SI)) | ((Exp_in_DI[4:0] == {5 {1'sb1}}) && FP16_SI)) | ((Exp_in_DI[7:0] == {8 {1'sb1}}) && FP16ALT_SI)) begin
			begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:300:11
				if (~Mant_in_DI[56]) begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:302:15
					Div_Zero_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:303:15
					Exp_OF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:304:15
					Exp_UF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:305:15
					Mant_res_norm_D = Mant_in_DI[55:3];
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:306:15
					Exp_res_norm_D = Exp_subOne_D;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:307:15
					Mant_forround_D = {Mant_in_DI[2:0], {54 {1'b0}}};
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:308:15
					Sign_res_D = Sign_in_DI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:309:15
					NV_OP_S = 1'b0;
				end
				else if (Mant_in_DI != {57 {1'sb0}}) begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:313:15
					Div_Zero_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:314:15
					Exp_OF_S = 1'b1;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:315:15
					Exp_UF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:316:15
					Mant_res_norm_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:317:15
					Exp_res_norm_D = 1'sb1;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:318:15
					Mant_forround_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:319:15
					Sign_res_D = Sign_in_DI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:320:15
					NV_OP_S = 1'b0;
				end
				else begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:324:15
					Div_Zero_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:325:15
					Exp_OF_S = 1'b1;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:326:15
					Exp_UF_S = 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:327:15
					Mant_res_norm_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:328:15
					Exp_res_norm_D = 1'sb1;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:329:15
					Mant_forround_D = 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:330:15
					Sign_res_D = Sign_in_DI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:331:15
					NV_OP_S = 1'b0;
				end
			end
		end
		else if (Mant_in_DI[56]) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:337:12
			Div_Zero_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:338:12
			Exp_OF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:339:12
			Exp_UF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:340:12
			Mant_res_norm_D = Mant_in_DI[56:4];
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:341:12
			Exp_res_norm_D = Exp_in_DI[10:0];
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:342:12
			Mant_forround_D = {Mant_in_DI[3:0], {53 {1'b0}}};
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:343:12
			Sign_res_D = Sign_in_DI;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:344:12
			NV_OP_S = 1'b0;
		end
		else begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:349:12
			Div_Zero_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:350:12
			Exp_OF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:351:12
			Exp_UF_S = 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:352:12
			Mant_res_norm_D = Mant_in_DI[55:3];
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:353:12
			Exp_res_norm_D = Exp_subOne_D;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:354:12
			Mant_forround_D = {Mant_in_DI[2:0], {54 {1'b0}}};
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:355:12
			Sign_res_D = Sign_in_DI;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:356:12
			NV_OP_S = 1'b0;
		end
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:365:4
	reg [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_upper_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:366:4
	wire [53:0] Mant_upperRounded_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:367:4
	reg Mant_roundUp_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:368:4
	wire Mant_rounded_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:370:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:372:7
		if (FP32_SI) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:374:11
			Mant_upper_D = {Mant_res_norm_D[defs_div_sqrt_mvp_C_MANT_FP64:29], {29 {1'b0}}};
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:375:11
			Mant_lower_D = Mant_res_norm_D[28:27];
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:376:11
			Mant_sticky_bit_D = |Mant_res_norm_D[26:0];
		end
		else if (FP64_SI) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:380:11
			Mant_upper_D = Mant_res_norm_D[defs_div_sqrt_mvp_C_MANT_FP64:0];
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:381:11
			Mant_lower_D = Mant_forround_D[56:55];
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:382:11
			Mant_sticky_bit_D = |Mant_forround_D[55:0];
		end
		else if (FP16_SI) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:386:11
			Mant_upper_D = {Mant_res_norm_D[defs_div_sqrt_mvp_C_MANT_FP64:42], {42 {1'b0}}};
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:387:11
			Mant_lower_D = Mant_res_norm_D[41:40];
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:388:11
			Mant_sticky_bit_D = |Mant_res_norm_D[39:30];
		end
		else begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:392:11
			Mant_upper_D = {Mant_res_norm_D[defs_div_sqrt_mvp_C_MANT_FP64:45], {45 {1'b0}}};
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:393:11
			Mant_lower_D = Mant_res_norm_D[44:43];
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:394:11
			Mant_sticky_bit_D = |Mant_res_norm_D[42:30];
		end
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:398:4
	assign Mant_rounded_S = |Mant_lower_D | Mant_sticky_bit_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:403:4
	localparam defs_div_sqrt_mvp_C_RM_MINUSINF = 3'h3;
	localparam defs_div_sqrt_mvp_C_RM_NEAREST = 3'h0;
	localparam defs_div_sqrt_mvp_C_RM_PLUSINF = 3'h2;
	localparam defs_div_sqrt_mvp_C_RM_TRUNC = 3'h1;
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:405:9
		Mant_roundUp_S = 1'b0;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:406:9
		case (RM_SI)
			defs_div_sqrt_mvp_C_RM_NEAREST:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:408:13
				Mant_roundUp_S = Mant_lower_D[1] && ((Mant_lower_D[0] | Mant_sticky_bit_D) | ((((FP32_SI && Mant_upper_D[29]) | (FP64_SI && Mant_upper_D[0])) | (FP16_SI && Mant_upper_D[42])) | (FP16ALT_SI && Mant_upper_D[45])));
			defs_div_sqrt_mvp_C_RM_TRUNC:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:410:13
				Mant_roundUp_S = 0;
			defs_div_sqrt_mvp_C_RM_PLUSINF:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:412:13
				Mant_roundUp_S = Mant_rounded_S & ~Sign_in_DI;
			defs_div_sqrt_mvp_C_RM_MINUSINF:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:414:13
				Mant_roundUp_S = Mant_rounded_S & Sign_in_DI;
			default:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:416:13
				Mant_roundUp_S = 0;
		endcase
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:420:3
	wire Mant_renorm_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:421:3
	wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_roundUp_Vector_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:423:3
	assign Mant_roundUp_Vector_S = {7'h00, FP16ALT_SI && Mant_roundUp_S, 2'h0, FP16_SI && Mant_roundUp_S, 12'h000, FP32_SI && Mant_roundUp_S, 28'h0000000, FP64_SI && Mant_roundUp_S};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:426:3
	assign Mant_upperRounded_D = Mant_upper_D + Mant_roundUp_Vector_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:427:3
	assign Mant_renorm_S = Mant_upperRounded_D[53];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:432:3
	wire [51:0] Mant_res_round_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:433:3
	wire [10:0] Exp_res_round_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:436:3
	assign Mant_res_round_D = (Mant_renorm_S ? Mant_upperRounded_D[defs_div_sqrt_mvp_C_MANT_FP64:1] : Mant_upperRounded_D[51:0]);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:437:3
	assign Exp_res_round_D = Exp_res_norm_D + Mant_renorm_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:442:3
	wire [51:0] Mant_before_format_ctl_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:443:3
	wire [10:0] Exp_before_format_ctl_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:444:3
	assign Mant_before_format_ctl_D = (Full_precision_SI ? Mant_res_round_D : Mant_res_norm_D);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:445:3
	assign Exp_before_format_ctl_D = (Full_precision_SI ? Exp_res_round_D : Exp_res_norm_D);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:447:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:449:7
		if (FP32_SI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:451:13
			Result_DO = {32'hffffffff, Sign_res_D, Exp_before_format_ctl_D[7:0], Mant_before_format_ctl_D[51:29]};
		else if (FP64_SI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:455:13
			Result_DO = {Sign_res_D, Exp_before_format_ctl_D[10:0], Mant_before_format_ctl_D[51:0]};
		else if (FP16_SI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:459:13
			Result_DO = {48'hffffffffffff, Sign_res_D, Exp_before_format_ctl_D[4:0], Mant_before_format_ctl_D[51:42]};
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:463:13
			Result_DO = {48'hffffffffffff, Sign_res_D, Exp_before_format_ctl_D[7:0], Mant_before_format_ctl_D[51:45]};
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:467:1
	assign In_Exact_S = ~Full_precision_SI | Mant_rounded_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/norm_div_sqrt_mvp.sv:468:1
	assign Fflags_SO = {NV_OP_S, Div_Zero_S, Exp_OF_S, Exp_UF_S, In_Exact_S};
	initial _sv2v_0 = 0;
endmodule
