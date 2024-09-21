// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:35:1
// removed ["import defs_div_sqrt_mvp::*;"]
module div_sqrt_top_mvp (
	Clk_CI,
	Rst_RBI,
	Div_start_SI,
	Sqrt_start_SI,
	Operand_a_DI,
	Operand_b_DI,
	RM_SI,
	Precision_ctl_SI,
	Format_sel_SI,
	Kill_SI,
	Result_DO,
	Fflags_SO,
	Ready_SO,
	Done_SO
);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:40:4
	input wire Clk_CI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:41:4
	input wire Rst_RBI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:42:4
	input wire Div_start_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:43:4
	input wire Sqrt_start_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:46:4
	localparam defs_div_sqrt_mvp_C_OP_FP64 = 64;
	input wire [63:0] Operand_a_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:47:4
	input wire [63:0] Operand_b_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:50:4
	localparam defs_div_sqrt_mvp_C_RM = 3;
	input wire [2:0] RM_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:51:4
	localparam defs_div_sqrt_mvp_C_PC = 6;
	input wire [5:0] Precision_ctl_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:52:4
	localparam defs_div_sqrt_mvp_C_FS = 2;
	input wire [1:0] Format_sel_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:53:4
	input wire Kill_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:56:4
	output wire [63:0] Result_DO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:59:4
	output wire [4:0] Fflags_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:60:4
	output wire Ready_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:61:4
	output wire Done_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:69:4
	localparam defs_div_sqrt_mvp_C_EXP_FP64 = 11;
	wire [defs_div_sqrt_mvp_C_EXP_FP64:0] Exp_a_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:70:4
	wire [defs_div_sqrt_mvp_C_EXP_FP64:0] Exp_b_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:71:4
	localparam defs_div_sqrt_mvp_C_MANT_FP64 = 52;
	wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_a_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:72:4
	wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_b_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:74:4
	wire [12:0] Exp_z_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:75:4
	wire [56:0] Mant_z_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:76:4
	wire Sign_z_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:77:4
	wire Start_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:78:4
	wire [2:0] RM_dly_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:79:4
	wire Div_enable_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:80:4
	wire Sqrt_enable_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:81:4
	wire Inf_a_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:82:4
	wire Inf_b_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:83:4
	wire Zero_a_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:84:4
	wire Zero_b_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:85:4
	wire NaN_a_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:86:4
	wire NaN_b_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:87:4
	wire SNaN_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:88:4
	wire Special_case_SB;
	wire Special_case_dly_SB;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:90:4
	wire Full_precision_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:91:4
	wire FP32_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:92:4
	wire FP64_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:93:4
	wire FP16_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:94:4
	wire FP16ALT_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:97:2
	preprocess_mvp preprocess_U0(
		.Clk_CI(Clk_CI),
		.Rst_RBI(Rst_RBI),
		.Div_start_SI(Div_start_SI),
		.Sqrt_start_SI(Sqrt_start_SI),
		.Ready_SI(Ready_SO),
		.Operand_a_DI(Operand_a_DI),
		.Operand_b_DI(Operand_b_DI),
		.RM_SI(RM_SI),
		.Format_sel_SI(Format_sel_SI),
		.Start_SO(Start_S),
		.Exp_a_DO_norm(Exp_a_D),
		.Exp_b_DO_norm(Exp_b_D),
		.Mant_a_DO_norm(Mant_a_D),
		.Mant_b_DO_norm(Mant_b_D),
		.RM_dly_SO(RM_dly_S),
		.Sign_z_DO(Sign_z_D),
		.Inf_a_SO(Inf_a_S),
		.Inf_b_SO(Inf_b_S),
		.Zero_a_SO(Zero_a_S),
		.Zero_b_SO(Zero_b_S),
		.NaN_a_SO(NaN_a_S),
		.NaN_b_SO(NaN_b_S),
		.SNaN_SO(SNaN_S),
		.Special_case_SBO(Special_case_SB),
		.Special_case_dly_SBO(Special_case_dly_SB)
	);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:126:2
	nrbd_nrsc_mvp nrbd_nrsc_U0(
		.Clk_CI(Clk_CI),
		.Rst_RBI(Rst_RBI),
		.Div_start_SI(Div_start_SI),
		.Sqrt_start_SI(Sqrt_start_SI),
		.Start_SI(Start_S),
		.Kill_SI(Kill_SI),
		.Special_case_SBI(Special_case_SB),
		.Special_case_dly_SBI(Special_case_dly_SB),
		.Div_enable_SO(Div_enable_S),
		.Sqrt_enable_SO(Sqrt_enable_S),
		.Precision_ctl_SI(Precision_ctl_SI),
		.Format_sel_SI(Format_sel_SI),
		.Exp_a_DI(Exp_a_D),
		.Exp_b_DI(Exp_b_D),
		.Mant_a_DI(Mant_a_D),
		.Mant_b_DI(Mant_b_D),
		.Full_precision_SO(Full_precision_S),
		.FP32_SO(FP32_S),
		.FP64_SO(FP64_S),
		.FP16_SO(FP16_S),
		.FP16ALT_SO(FP16ALT_S),
		.Ready_SO(Ready_SO),
		.Done_SO(Done_SO),
		.Exp_z_DO(Exp_z_D),
		.Mant_z_DO(Mant_z_D)
	);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_top_mvp.sv:156:2
	norm_div_sqrt_mvp fpu_norm_U0(
		.Mant_in_DI(Mant_z_D),
		.Exp_in_DI(Exp_z_D),
		.Sign_in_DI(Sign_z_D),
		.Div_enable_SI(Div_enable_S),
		.Sqrt_enable_SI(Sqrt_enable_S),
		.Inf_a_SI(Inf_a_S),
		.Inf_b_SI(Inf_b_S),
		.Zero_a_SI(Zero_a_S),
		.Zero_b_SI(Zero_b_S),
		.NaN_a_SI(NaN_a_S),
		.NaN_b_SI(NaN_b_S),
		.SNaN_SI(SNaN_S),
		.RM_SI(RM_dly_S),
		.Full_precision_SI(Full_precision_S),
		.FP32_SI(FP32_S),
		.FP64_SI(FP64_S),
		.FP16_SI(FP16_S),
		.FP16ALT_SI(FP16ALT_S),
		.Result_DO(Result_DO),
		.Fflags_SO(Fflags_SO)
	);
endmodule
