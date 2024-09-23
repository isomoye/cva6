// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:39:1
// removed ["import defs_div_sqrt_mvp::*;"]
module div_sqrt_mvp_wrapper (
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
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:43:16
	parameter PrePipeline_depth_S = 0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:44:16
	parameter PostPipeline_depth_S = 2;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:47:4
	input wire Clk_CI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:48:4
	input wire Rst_RBI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:49:4
	input wire Div_start_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:50:4
	input wire Sqrt_start_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:53:4
	localparam defs_div_sqrt_mvp_C_OP_FP64 = 64;
	input wire [63:0] Operand_a_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:54:4
	input wire [63:0] Operand_b_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:57:4
	localparam defs_div_sqrt_mvp_C_RM = 3;
	input wire [2:0] RM_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:58:4
	localparam defs_div_sqrt_mvp_C_PC = 6;
	input wire [5:0] Precision_ctl_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:59:4
	localparam defs_div_sqrt_mvp_C_FS = 2;
	input wire [1:0] Format_sel_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:60:4
	input wire Kill_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:63:4
	output wire [63:0] Result_DO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:66:4
	output wire [4:0] Fflags_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:67:4
	output wire Ready_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:68:4
	output wire Done_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:72:4
	reg Div_start_S_S;
	reg Sqrt_start_S_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:73:4
	reg [63:0] Operand_a_S_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:74:4
	reg [63:0] Operand_b_S_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:77:4
	reg [2:0] RM_S_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:78:4
	reg [5:0] Precision_ctl_S_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:79:4
	reg [1:0] Format_sel_S_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:80:4
	reg Kill_S_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:83:3
	wire [63:0] Result_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:84:3
	wire Ready_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:85:3
	wire Done_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:86:3
	wire [4:0] Fflags_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:89:3
	generate
		if (PrePipeline_depth_S == 1) begin : genblk1
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:93:10
			div_sqrt_top_mvp div_top_U0(
				.Clk_CI(Clk_CI),
				.Rst_RBI(Rst_RBI),
				.Div_start_SI(Div_start_S_S),
				.Sqrt_start_SI(Sqrt_start_S_S),
				.Operand_a_DI(Operand_a_S_D),
				.Operand_b_DI(Operand_b_S_D),
				.RM_SI(RM_S_S),
				.Precision_ctl_SI(Precision_ctl_S_S),
				.Format_sel_SI(Format_sel_S_S),
				.Kill_SI(Kill_S_S),
				.Result_DO(Result_D),
				.Fflags_SO(Fflags_S),
				.Ready_SO(Ready_S),
				.Done_SO(Done_S)
			);
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:113:12
			always @(posedge Clk_CI or negedge Rst_RBI)
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:115:17
				if (~Rst_RBI) begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:117:21
					Div_start_S_S <= 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:118:21
					Sqrt_start_S_S <= 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:119:21
					Operand_a_S_D <= 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:120:21
					Operand_b_S_D <= 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:121:21
					RM_S_S <= 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:122:21
					Precision_ctl_S_S <= 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:123:21
					Format_sel_S_S <= 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:124:21
					Kill_S_S <= 1'sb0;
				end
				else begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:128:21
					Div_start_S_S <= Div_start_SI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:129:21
					Sqrt_start_S_S <= Sqrt_start_SI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:130:21
					Operand_a_S_D <= Operand_a_DI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:131:21
					Operand_b_S_D <= Operand_b_DI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:132:21
					RM_S_S <= RM_SI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:133:21
					Precision_ctl_S_S <= Precision_ctl_SI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:134:21
					Format_sel_S_S <= Format_sel_SI;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:135:21
					Kill_S_S <= Kill_SI;
				end
		end
		else begin : genblk1
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:142:11
			div_sqrt_top_mvp div_top_U0(
				.Clk_CI(Clk_CI),
				.Rst_RBI(Rst_RBI),
				.Div_start_SI(Div_start_SI),
				.Sqrt_start_SI(Sqrt_start_SI),
				.Operand_a_DI(Operand_a_DI),
				.Operand_b_DI(Operand_b_DI),
				.RM_SI(RM_SI),
				.Precision_ctl_SI(Precision_ctl_SI),
				.Format_sel_SI(Format_sel_SI),
				.Kill_SI(Kill_SI),
				.Result_DO(Result_D),
				.Fflags_SO(Fflags_S),
				.Ready_SO(Ready_S),
				.Done_SO(Done_S)
			);
		end
	endgenerate
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:166:3
	reg [63:0] Result_dly_S_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:167:3
	reg Ready_dly_S_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:168:3
	reg Done_dly_S_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:169:3
	reg [4:0] Fflags_dly_S_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:170:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:172:9
		if (~Rst_RBI) begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:174:13
			Result_dly_S_D <= 1'sb0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:175:13
			Ready_dly_S_S <= 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:176:13
			Done_dly_S_S <= 1'b0;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:177:13
			Fflags_dly_S_S <= 1'b0;
		end
		else begin
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:181:13
			Result_dly_S_D <= Result_D;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:182:13
			Ready_dly_S_S <= Ready_S;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:183:13
			Done_dly_S_S <= Done_S;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:184:13
			Fflags_dly_S_S <= Fflags_S;
		end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:192:3
	reg [63:0] Result_dly_D_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:193:3
	reg Ready_dly_D_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:194:3
	reg Done_dly_D_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:195:3
	reg [4:0] Fflags_dly_D_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:196:3
	generate
		if (PostPipeline_depth_S == 2) begin : genblk2
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:199:9
			always @(posedge Clk_CI or negedge Rst_RBI)
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:201:13
				if (~Rst_RBI) begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:203:17
					Result_dly_D_D <= 1'sb0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:204:17
					Ready_dly_D_S <= 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:205:17
					Done_dly_D_S <= 1'b0;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:206:17
					Fflags_dly_D_S <= 1'b0;
				end
				else begin
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:210:16
					Result_dly_D_D <= Result_dly_S_D;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:211:16
					Ready_dly_D_S <= Ready_dly_S_S;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:212:16
					Done_dly_D_S <= Done_dly_S_S;
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:213:16
					Fflags_dly_D_S <= Fflags_dly_S_S;
				end
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:216:9
			assign Result_DO = Result_dly_D_D;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:217:9
			assign Ready_SO = Ready_dly_D_S;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:218:9
			assign Done_SO = Done_dly_D_S;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:219:9
			assign Fflags_SO = Fflags_dly_D_S;
		end
		else begin : genblk2
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:224:10
			assign Result_DO = Result_dly_S_D;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:225:10
			assign Ready_SO = Ready_dly_S_S;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:226:10
			assign Done_SO = Done_dly_S_S;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/div_sqrt_mvp_wrapper.sv:227:10
			assign Fflags_SO = Fflags_dly_S_S;
		end
	endgenerate
endmodule
