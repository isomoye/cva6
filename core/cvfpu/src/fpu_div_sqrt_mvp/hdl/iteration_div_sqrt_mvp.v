module iteration_div_sqrt_mvp (
	A_DI,
	B_DI,
	Div_enable_SI,
	Div_start_dly_SI,
	Sqrt_enable_SI,
	D_DI,
	D_DO,
	Sum_DO,
	Carry_out_DO
);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:34:16
	parameter WIDTH = 25;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:38:4
	input wire [WIDTH - 1:0] A_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:39:4
	input wire [WIDTH - 1:0] B_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:40:4
	input wire Div_enable_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:41:4
	input wire Div_start_dly_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:42:4
	input wire Sqrt_enable_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:43:4
	input wire [1:0] D_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:45:4
	output wire [1:0] D_DO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:46:4
	output wire [WIDTH - 1:0] Sum_DO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:47:4
	output wire Carry_out_DO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:50:4
	wire D_carry_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:51:4
	wire Sqrt_cin_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:52:4
	wire Cin_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:54:4
	assign D_DO[0] = ~D_DI[0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:55:4
	assign D_DO[1] = ~(D_DI[1] ^ D_DI[0]);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:56:4
	assign D_carry_D = D_DI[1] | D_DI[0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:57:4
	assign Sqrt_cin_D = Sqrt_enable_SI && D_carry_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:58:4
	assign Cin_D = (Div_enable_SI ? 1'b0 : Sqrt_cin_D);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/iteration_div_sqrt_mvp.sv:59:4
	assign {Carry_out_DO, Sum_DO} = (A_DI + B_DI) + Cin_D;
endmodule
