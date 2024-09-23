// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:34:1
// removed ["import defs_div_sqrt_mvp::*;"]
module nrbd_nrsc_mvp (
	Clk_CI,
	Rst_RBI,
	Div_start_SI,
	Sqrt_start_SI,
	Start_SI,
	Kill_SI,
	Special_case_SBI,
	Special_case_dly_SBI,
	Precision_ctl_SI,
	Format_sel_SI,
	Mant_a_DI,
	Mant_b_DI,
	Exp_a_DI,
	Exp_b_DI,
	Div_enable_SO,
	Sqrt_enable_SO,
	Full_precision_SO,
	FP32_SO,
	FP64_SO,
	FP16_SO,
	FP16ALT_SO,
	Ready_SO,
	Done_SO,
	Mant_z_DO,
	Exp_z_DO
);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:39:4
	input wire Clk_CI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:40:4
	input wire Rst_RBI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:41:4
	input wire Div_start_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:42:4
	input wire Sqrt_start_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:43:4
	input wire Start_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:44:4
	input wire Kill_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:45:4
	input wire Special_case_SBI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:46:4
	input wire Special_case_dly_SBI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:47:4
	localparam defs_div_sqrt_mvp_C_PC = 6;
	input wire [5:0] Precision_ctl_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:48:4
	input wire [1:0] Format_sel_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:49:4
	localparam defs_div_sqrt_mvp_C_MANT_FP64 = 52;
	input wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_a_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:50:4
	input wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Mant_b_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:51:4
	localparam defs_div_sqrt_mvp_C_EXP_FP64 = 11;
	input wire [defs_div_sqrt_mvp_C_EXP_FP64:0] Exp_a_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:52:4
	input wire [defs_div_sqrt_mvp_C_EXP_FP64:0] Exp_b_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:54:4
	output wire Div_enable_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:55:4
	output wire Sqrt_enable_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:57:4
	output wire Full_precision_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:58:4
	output wire FP32_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:59:4
	output wire FP64_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:60:4
	output wire FP16_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:61:4
	output wire FP16ALT_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:62:4
	output wire Ready_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:63:4
	output wire Done_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:64:4
	output wire [56:0] Mant_z_DO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:65:4
	output wire [12:0] Exp_z_DO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:69:5
	wire Div_start_dly_S;
	wire Sqrt_start_dly_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/nrbd_nrsc_mvp.sv:72:1
	control_mvp control_U0(
		.Clk_CI(Clk_CI),
		.Rst_RBI(Rst_RBI),
		.Div_start_SI(Div_start_SI),
		.Sqrt_start_SI(Sqrt_start_SI),
		.Start_SI(Start_SI),
		.Kill_SI(Kill_SI),
		.Special_case_SBI(Special_case_SBI),
		.Special_case_dly_SBI(Special_case_dly_SBI),
		.Precision_ctl_SI(Precision_ctl_SI),
		.Format_sel_SI(Format_sel_SI),
		.Numerator_DI(Mant_a_DI),
		.Exp_num_DI(Exp_a_DI),
		.Denominator_DI(Mant_b_DI),
		.Exp_den_DI(Exp_b_DI),
		.Div_start_dly_SO(Div_start_dly_S),
		.Sqrt_start_dly_SO(Sqrt_start_dly_S),
		.Div_enable_SO(Div_enable_SO),
		.Sqrt_enable_SO(Sqrt_enable_SO),
		.Full_precision_SO(Full_precision_SO),
		.FP32_SO(FP32_SO),
		.FP64_SO(FP64_SO),
		.FP16_SO(FP16_SO),
		.FP16ALT_SO(FP16ALT_SO),
		.Ready_SO(Ready_SO),
		.Done_SO(Done_SO),
		.Mant_result_prenorm_DO(Mant_z_DO),
		.Exp_result_prenorm_DO(Exp_z_DO)
	);
endmodule
