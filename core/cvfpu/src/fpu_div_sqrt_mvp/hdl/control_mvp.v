// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:41:1
// removed ["import defs_div_sqrt_mvp::*;"]
module control_mvp (
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
	Numerator_DI,
	Exp_num_DI,
	Denominator_DI,
	Exp_den_DI,
	Div_start_dly_SO,
	Sqrt_start_dly_SO,
	Div_enable_SO,
	Sqrt_enable_SO,
	Full_precision_SO,
	FP32_SO,
	FP64_SO,
	FP16_SO,
	FP16ALT_SO,
	Ready_SO,
	Done_SO,
	Mant_result_prenorm_DO,
	Exp_result_prenorm_DO
);
	reg _sv2v_0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:46:4
	input wire Clk_CI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:47:4
	input wire Rst_RBI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:48:4
	input wire Div_start_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:49:4
	input wire Sqrt_start_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:50:4
	input wire Start_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:51:4
	input wire Kill_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:52:4
	input wire Special_case_SBI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:53:4
	input wire Special_case_dly_SBI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:54:4
	localparam defs_div_sqrt_mvp_C_PC = 6;
	input wire [5:0] Precision_ctl_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:55:4
	input wire [1:0] Format_sel_SI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:56:4
	localparam defs_div_sqrt_mvp_C_MANT_FP64 = 52;
	input wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Numerator_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:57:4
	localparam defs_div_sqrt_mvp_C_EXP_FP64 = 11;
	input wire [defs_div_sqrt_mvp_C_EXP_FP64:0] Exp_num_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:58:4
	input wire [defs_div_sqrt_mvp_C_MANT_FP64:0] Denominator_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:59:4
	input wire [defs_div_sqrt_mvp_C_EXP_FP64:0] Exp_den_DI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:62:4
	output wire Div_start_dly_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:63:4
	output wire Sqrt_start_dly_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:64:4
	output reg Div_enable_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:65:4
	output reg Sqrt_enable_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:69:4
	output wire Full_precision_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:70:4
	output wire FP32_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:71:4
	output wire FP64_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:72:4
	output wire FP16_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:73:4
	output wire FP16ALT_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:75:4
	output reg Ready_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:76:4
	output reg Done_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:78:4
	output reg [56:0] Mant_result_prenorm_DO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:80:4
	output wire [12:0] Exp_result_prenorm_DO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:83:4
	reg [57:0] Partial_remainder_DN;
	reg [57:0] Partial_remainder_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:84:4
	reg [56:0] Quotient_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:88:4
	wire [53:0] Numerator_se_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:89:4
	wire [53:0] Denominator_se_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:90:4
	reg [53:0] Denominator_se_DB;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:92:4
	assign Numerator_se_D = {1'b0, Numerator_DI};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:94:4
	assign Denominator_se_D = {1'b0, Denominator_DI};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:96:3
	localparam defs_div_sqrt_mvp_C_MANT_FP16 = 10;
	localparam defs_div_sqrt_mvp_C_MANT_FP16ALT = 7;
	localparam defs_div_sqrt_mvp_C_MANT_FP32 = 23;
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:98:6
		if (FP32_SO)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:100:10
			Denominator_se_DB = {~Denominator_se_D[53:29], {29 {1'b0}}};
		else if (FP64_SO)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:103:10
			Denominator_se_DB = ~Denominator_se_D;
		else if (FP16_SO)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:106:10
			Denominator_se_DB = {~Denominator_se_D[53:42], {42 {1'b0}}};
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:109:10
			Denominator_se_DB = {~Denominator_se_D[53:45], {45 {1'b0}}};
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:114:4
	wire [53:0] Mant_D_sqrt_Norm;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:116:4
	assign Mant_D_sqrt_Norm = (Exp_num_DI[0] ? {1'b0, Numerator_DI} : {Numerator_DI, 1'b0});
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:121:4
	reg [1:0] Format_sel_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:123:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:125:9
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:127:13
			Format_sel_S <= 'b0;
		else if (Start_SI && Ready_SO)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:131:13
			Format_sel_S <= Format_sel_SI;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:135:13
			Format_sel_S <= Format_sel_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:139:4
	assign FP32_SO = Format_sel_S == 2'b00;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:140:4
	assign FP64_SO = Format_sel_S == 2'b01;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:141:4
	assign FP16_SO = Format_sel_S == 2'b10;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:142:4
	assign FP16ALT_SO = Format_sel_S == 2'b11;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:150:4
	reg [5:0] Precision_ctl_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:151:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:153:9
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:155:13
			Precision_ctl_S <= 'b0;
		else if (Start_SI && Ready_SO)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:159:13
			Precision_ctl_S <= Precision_ctl_SI;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:163:13
			Precision_ctl_S <= Precision_ctl_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:166:3
	assign Full_precision_SO = Precision_ctl_S == 6'h00;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:170:6
	reg [5:0] State_ctl_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:171:6
	wire [5:0] State_Two_iteration_unit_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:172:6
	wire [5:0] State_Four_iteration_unit_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:174:5
	assign State_Two_iteration_unit_S = Precision_ctl_S[5:1];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:175:5
	assign State_Four_iteration_unit_S = Precision_ctl_S[5:2];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:176:6
	localparam defs_div_sqrt_mvp_Iteration_unit_num_S = 2'b10;
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:178:10
		case (defs_div_sqrt_mvp_Iteration_unit_num_S)
			2'b00:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:182:16
				case (Format_sel_S)
					2'b00:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:185:22
						if (Full_precision_SO)
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:187:26
							State_ctl_S = 6'h1b;
						else
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:191:26
							State_ctl_S = Precision_ctl_S;
					2'b01:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:196:22
						if (Full_precision_SO)
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:198:26
							State_ctl_S = 6'h38;
						else
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:202:26
							State_ctl_S = Precision_ctl_S;
					2'b10:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:207:22
						if (Full_precision_SO)
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:209:26
							State_ctl_S = 6'h0e;
						else
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:213:26
							State_ctl_S = Precision_ctl_S;
					2'b11:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:218:22
						if (Full_precision_SO)
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:220:26
							State_ctl_S = 6'h0b;
						else
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:224:26
							State_ctl_S = Precision_ctl_S;
				endcase
			2'b01:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:234:16
				case (Format_sel_S)
					2'b00:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:237:22
						if (Full_precision_SO)
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:239:26
							State_ctl_S = 6'h0d;
						else
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:243:26
							State_ctl_S = State_Two_iteration_unit_S;
					2'b01:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:248:22
						if (Full_precision_SO)
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:250:26
							State_ctl_S = 6'h1b;
						else
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:254:26
							State_ctl_S = State_Two_iteration_unit_S;
					2'b10:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:259:22
						if (Full_precision_SO)
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:261:26
							State_ctl_S = 6'h06;
						else
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:265:26
							State_ctl_S = State_Two_iteration_unit_S;
					2'b11:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:270:22
						if (Full_precision_SO)
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:272:26
							State_ctl_S = 6'h05;
						else
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:276:26
							State_ctl_S = State_Two_iteration_unit_S;
				endcase
			2'b10:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:286:16
				case (Format_sel_S)
					2'b00:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:289:22
						case (Precision_ctl_S)
							6'h00:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:292:28
								State_ctl_S = 6'h08;
							6'h06, 6'h07, 6'h08:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:296:28
								State_ctl_S = 6'h02;
							6'h09, 6'h0a, 6'h0b:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:300:28
								State_ctl_S = 6'h03;
							6'h0c, 6'h0d, 6'h0e:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:304:28
								State_ctl_S = 6'h04;
							6'h0f, 6'h10, 6'h11:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:308:28
								State_ctl_S = 6'h05;
							6'h12, 6'h13, 6'h14:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:312:28
								State_ctl_S = 6'h06;
							6'h15, 6'h16, 6'h17:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:316:28
								State_ctl_S = 6'h07;
							default:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:320:28
								State_ctl_S = 6'h08;
						endcase
					2'b01:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:326:22
						case (Precision_ctl_S)
							6'h00:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:329:28
								State_ctl_S = 6'h12;
							6'h06, 6'h07, 6'h08:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:333:28
								State_ctl_S = 6'h02;
							6'h09, 6'h0a, 6'h0b:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:337:28
								State_ctl_S = 6'h03;
							6'h0c, 6'h0d, 6'h0e:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:341:28
								State_ctl_S = 6'h04;
							6'h0f, 6'h10, 6'h11:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:345:28
								State_ctl_S = 6'h05;
							6'h12, 6'h13, 6'h14:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:349:28
								State_ctl_S = 6'h06;
							6'h15, 6'h16, 6'h17:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:353:28
								State_ctl_S = 6'h07;
							6'h18, 6'h19, 6'h1a:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:357:28
								State_ctl_S = 6'h08;
							6'h1b, 6'h1c, 6'h1d:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:361:28
								State_ctl_S = 6'h09;
							6'h1e, 6'h1f, 6'h20:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:365:28
								State_ctl_S = 6'h0a;
							6'h21, 6'h22, 6'h23:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:369:28
								State_ctl_S = 6'h0b;
							6'h24, 6'h25, 6'h26:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:373:28
								State_ctl_S = 6'h0c;
							6'h27, 6'h28, 6'h29:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:377:28
								State_ctl_S = 6'h0d;
							6'h2a, 6'h2b, 6'h2c:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:381:28
								State_ctl_S = 6'h0e;
							6'h2d, 6'h2e, 6'h2f:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:385:28
								State_ctl_S = 6'h0f;
							6'h30, 6'h31, 6'h32:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:389:28
								State_ctl_S = 6'h10;
							6'h33, 6'h34, 6'h35:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:393:28
								State_ctl_S = 6'h11;
							default:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:397:28
								State_ctl_S = 6'h12;
						endcase
					2'b10:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:403:22
						case (Precision_ctl_S)
							6'h00:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:406:28
								State_ctl_S = 6'h04;
							6'h06, 6'h07, 6'h08:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:410:28
								State_ctl_S = 6'h02;
							6'h09, 6'h0a, 6'h0b:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:414:28
								State_ctl_S = 6'h03;
							default:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:418:28
								State_ctl_S = 6'h04;
						endcase
					2'b11:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:424:22
						case (Precision_ctl_S)
							6'h00:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:427:28
								State_ctl_S = 6'h03;
							6'h06, 6'h07, 6'h08:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:431:28
								State_ctl_S = 6'h02;
							default:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:435:28
								State_ctl_S = 6'h03;
						endcase
				endcase
			2'b11:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:446:16
				case (Format_sel_S)
					2'b00:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:449:22
						if (Full_precision_SO)
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:451:26
							State_ctl_S = 6'h06;
						else
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:455:26
							State_ctl_S = State_Four_iteration_unit_S;
					2'b01:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:460:22
						if (Full_precision_SO)
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:462:26
							State_ctl_S = 6'h0d;
						else
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:466:26
							State_ctl_S = State_Four_iteration_unit_S;
					2'b10:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:471:22
						if (Full_precision_SO)
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:473:26
							State_ctl_S = 6'h03;
						else
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:477:26
							State_ctl_S = State_Four_iteration_unit_S;
					2'b11:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:482:22
						if (Full_precision_SO)
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:484:26
							State_ctl_S = 6'h02;
						else
							// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:488:26
							State_ctl_S = State_Four_iteration_unit_S;
				endcase
		endcase
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:503:4
	reg Div_start_dly_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:505:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:507:9
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:509:13
			Div_start_dly_S <= 1'b0;
		else if (Div_start_SI && Ready_SO)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:513:12
			Div_start_dly_S <= 1'b1;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:517:13
			Div_start_dly_S <= 1'b0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:521:4
	assign Div_start_dly_SO = Div_start_dly_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:523:3
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:524:5
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:525:7
			Div_enable_SO <= 1'b0;
		else if (Kill_SI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:528:7
			Div_enable_SO <= 1'b0;
		else if (Div_start_SI && Ready_SO)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:530:7
			Div_enable_SO <= 1'b1;
		else if (Done_SO)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:532:7
			Div_enable_SO <= 1'b0;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:534:7
			Div_enable_SO <= Div_enable_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:537:4
	reg Sqrt_start_dly_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:539:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:541:9
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:543:13
			Sqrt_start_dly_S <= 1'b0;
		else if (Sqrt_start_SI && Ready_SO)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:547:12
			Sqrt_start_dly_S <= 1'b1;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:551:13
			Sqrt_start_dly_S <= 1'b0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:554:5
	assign Sqrt_start_dly_SO = Sqrt_start_dly_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:556:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:557:5
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:558:7
			Sqrt_enable_SO <= 1'b0;
		else if (Kill_SI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:560:7
			Sqrt_enable_SO <= 1'b0;
		else if (Sqrt_start_SI && Ready_SO)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:562:7
			Sqrt_enable_SO <= 1'b1;
		else if (Done_SO)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:564:7
			Sqrt_enable_SO <= 1'b0;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:566:7
			Sqrt_enable_SO <= Sqrt_enable_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:569:4
	reg [5:0] Crtl_cnt_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:570:4
	wire Start_dly_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:572:4
	assign Start_dly_S = Div_start_dly_S | Sqrt_start_dly_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:574:4
	wire Fsm_enable_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:575:4
	assign Fsm_enable_S = ((Start_dly_S | (|Crtl_cnt_S)) && ~Kill_SI) && Special_case_dly_SBI;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:577:4
	wire Final_state_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:578:4
	assign Final_state_S = Crtl_cnt_S == State_ctl_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:581:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:583:9
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:585:14
			Crtl_cnt_S <= 1'sb0;
		else if (Final_state_S | Kill_SI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:589:15
			Crtl_cnt_S <= 1'sb0;
		else if (Fsm_enable_S)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:593:15
			Crtl_cnt_S <= Crtl_cnt_S + 1;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:597:15
			Crtl_cnt_S <= 1'sb0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:603:5
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:605:9
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:607:13
			Done_SO <= 1'b0;
		else if (Start_SI && Ready_SO) begin
			begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:611:13
				if (~Special_case_SBI)
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:613:17
					Done_SO <= 1'b1;
				else
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:617:17
					Done_SO <= 1'b0;
			end
		end
		else if (Final_state_S)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:622:13
			Done_SO <= 1'b1;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:626:13
			Done_SO <= 1'b0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:633:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:635:8
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:637:12
			Ready_SO <= 1'b1;
		else if (Start_SI && Ready_SO) begin
			begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:642:13
				if (~Special_case_SBI)
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:644:17
					Ready_SO <= 1'b1;
				else
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:648:17
					Ready_SO <= 1'b0;
			end
		end
		else if (Final_state_S | Kill_SI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:653:12
			Ready_SO <= 1'b1;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:657:12
			Ready_SO <= Ready_SO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:666:3
	wire Qcnt_one_0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:667:3
	wire Qcnt_one_1;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:668:3
	wire [1:0] Qcnt_one_2;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:669:3
	wire [2:0] Qcnt_one_3;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:670:3
	wire [3:0] Qcnt_one_4;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:671:3
	wire [4:0] Qcnt_one_5;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:672:3
	wire [5:0] Qcnt_one_6;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:673:3
	wire [6:0] Qcnt_one_7;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:674:3
	wire [7:0] Qcnt_one_8;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:675:3
	wire [8:0] Qcnt_one_9;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:676:3
	wire [9:0] Qcnt_one_10;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:677:3
	wire [10:0] Qcnt_one_11;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:678:3
	wire [11:0] Qcnt_one_12;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:679:3
	wire [12:0] Qcnt_one_13;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:680:3
	wire [13:0] Qcnt_one_14;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:681:3
	wire [14:0] Qcnt_one_15;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:682:3
	wire [15:0] Qcnt_one_16;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:683:3
	wire [16:0] Qcnt_one_17;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:684:3
	wire [17:0] Qcnt_one_18;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:685:3
	wire [18:0] Qcnt_one_19;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:686:3
	wire [19:0] Qcnt_one_20;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:687:3
	wire [20:0] Qcnt_one_21;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:688:3
	wire [21:0] Qcnt_one_22;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:689:3
	wire [22:0] Qcnt_one_23;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:690:3
	wire [23:0] Qcnt_one_24;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:691:3
	wire [24:0] Qcnt_one_25;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:692:3
	wire [25:0] Qcnt_one_26;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:693:3
	wire [26:0] Qcnt_one_27;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:694:3
	wire [27:0] Qcnt_one_28;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:695:3
	wire [28:0] Qcnt_one_29;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:696:3
	wire [29:0] Qcnt_one_30;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:697:3
	wire [30:0] Qcnt_one_31;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:698:3
	wire [31:0] Qcnt_one_32;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:699:3
	wire [32:0] Qcnt_one_33;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:700:3
	wire [33:0] Qcnt_one_34;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:701:3
	wire [34:0] Qcnt_one_35;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:702:3
	wire [35:0] Qcnt_one_36;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:703:3
	wire [36:0] Qcnt_one_37;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:704:3
	wire [37:0] Qcnt_one_38;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:705:3
	wire [38:0] Qcnt_one_39;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:706:3
	wire [39:0] Qcnt_one_40;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:707:3
	wire [40:0] Qcnt_one_41;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:708:3
	wire [41:0] Qcnt_one_42;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:709:3
	wire [42:0] Qcnt_one_43;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:710:3
	wire [43:0] Qcnt_one_44;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:711:3
	wire [44:0] Qcnt_one_45;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:712:3
	wire [45:0] Qcnt_one_46;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:713:3
	wire [46:0] Qcnt_one_47;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:714:3
	wire [47:0] Qcnt_one_48;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:715:3
	wire [48:0] Qcnt_one_49;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:716:3
	wire [49:0] Qcnt_one_50;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:717:3
	wire [50:0] Qcnt_one_51;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:718:3
	wire [51:0] Qcnt_one_52;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:719:3
	wire [52:0] Qcnt_one_53;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:720:3
	wire [53:0] Qcnt_one_54;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:721:3
	wire [54:0] Qcnt_one_55;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:722:3
	wire [55:0] Qcnt_one_56;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:723:3
	wire [56:0] Qcnt_one_57;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:724:3
	wire [57:0] Qcnt_one_58;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:725:3
	wire [58:0] Qcnt_one_59;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:726:3
	wire [59:0] Qcnt_one_60;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:737:3
	wire [1:0] Qcnt_two_0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:738:3
	wire [2:0] Qcnt_two_1;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:739:3
	wire [4:0] Qcnt_two_2;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:740:3
	wire [6:0] Qcnt_two_3;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:741:3
	wire [8:0] Qcnt_two_4;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:742:3
	wire [10:0] Qcnt_two_5;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:743:3
	wire [12:0] Qcnt_two_6;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:744:3
	wire [14:0] Qcnt_two_7;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:745:3
	wire [16:0] Qcnt_two_8;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:746:3
	wire [18:0] Qcnt_two_9;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:747:3
	wire [20:0] Qcnt_two_10;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:748:3
	wire [22:0] Qcnt_two_11;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:749:3
	wire [24:0] Qcnt_two_12;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:750:3
	wire [26:0] Qcnt_two_13;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:751:3
	wire [28:0] Qcnt_two_14;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:752:3
	wire [30:0] Qcnt_two_15;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:753:3
	wire [32:0] Qcnt_two_16;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:754:3
	wire [34:0] Qcnt_two_17;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:755:3
	wire [36:0] Qcnt_two_18;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:756:3
	wire [38:0] Qcnt_two_19;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:757:3
	wire [40:0] Qcnt_two_20;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:758:3
	wire [42:0] Qcnt_two_21;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:759:3
	wire [44:0] Qcnt_two_22;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:760:3
	wire [46:0] Qcnt_two_23;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:761:3
	wire [48:0] Qcnt_two_24;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:762:3
	wire [50:0] Qcnt_two_25;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:763:3
	wire [52:0] Qcnt_two_26;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:764:3
	wire [54:0] Qcnt_two_27;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:765:3
	wire [56:0] Qcnt_two_28;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:774:3
	wire [2:0] Qcnt_three_0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:775:3
	wire [4:0] Qcnt_three_1;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:776:3
	wire [7:0] Qcnt_three_2;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:777:3
	wire [10:0] Qcnt_three_3;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:778:3
	wire [13:0] Qcnt_three_4;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:779:3
	wire [16:0] Qcnt_three_5;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:780:3
	wire [19:0] Qcnt_three_6;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:781:3
	wire [22:0] Qcnt_three_7;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:782:3
	wire [25:0] Qcnt_three_8;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:783:3
	wire [28:0] Qcnt_three_9;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:784:3
	wire [31:0] Qcnt_three_10;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:785:3
	wire [34:0] Qcnt_three_11;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:786:3
	wire [37:0] Qcnt_three_12;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:787:3
	wire [40:0] Qcnt_three_13;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:788:3
	wire [43:0] Qcnt_three_14;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:789:3
	wire [46:0] Qcnt_three_15;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:790:3
	wire [49:0] Qcnt_three_16;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:791:3
	wire [52:0] Qcnt_three_17;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:792:3
	wire [55:0] Qcnt_three_18;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:793:3
	wire [58:0] Qcnt_three_19;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:794:3
	wire [61:0] Qcnt_three_20;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:803:3
	wire [3:0] Qcnt_four_0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:804:3
	wire [6:0] Qcnt_four_1;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:805:3
	wire [10:0] Qcnt_four_2;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:806:3
	wire [14:0] Qcnt_four_3;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:807:3
	wire [18:0] Qcnt_four_4;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:808:3
	wire [22:0] Qcnt_four_5;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:809:3
	wire [26:0] Qcnt_four_6;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:810:3
	wire [30:0] Qcnt_four_7;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:811:3
	wire [34:0] Qcnt_four_8;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:812:3
	wire [38:0] Qcnt_four_9;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:813:3
	wire [42:0] Qcnt_four_10;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:814:3
	wire [46:0] Qcnt_four_11;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:815:3
	wire [50:0] Qcnt_four_12;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:816:3
	wire [54:0] Qcnt_four_13;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:817:3
	wire [58:0] Qcnt_four_14;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:825:4
	wire [57:0] Sqrt_R0;
	reg [57:0] Sqrt_Q0;
	reg [57:0] Q_sqrt0;
	reg [57:0] Q_sqrt_com_0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:826:4
	wire [57:0] Sqrt_R1;
	reg [57:0] Sqrt_Q1;
	reg [57:0] Q_sqrt1;
	reg [57:0] Q_sqrt_com_1;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:827:4
	wire [57:0] Sqrt_R2;
	reg [57:0] Sqrt_Q2;
	reg [57:0] Q_sqrt2;
	reg [57:0] Q_sqrt_com_2;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:828:4
	wire [57:0] Sqrt_R3;
	reg [57:0] Sqrt_Q3;
	reg [57:0] Q_sqrt3;
	reg [57:0] Q_sqrt_com_3;
	wire [57:0] Sqrt_R4;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:831:4
	reg [1:0] Sqrt_DI [3:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:832:4
	wire [1:0] Sqrt_DO [3:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:833:4
	wire Sqrt_carry_DO;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:836:3
	wire [57:0] Iteration_cell_a_D [3:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:837:3
	wire [57:0] Iteration_cell_b_D [3:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:838:3
	wire [57:0] Iteration_cell_a_BMASK_D [3:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:839:3
	wire [57:0] Iteration_cell_b_BMASK_D [3:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:840:3
	wire Iteration_cell_carry_D [3:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:841:3
	wire [57:0] Iteration_cell_sum_D [3:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:842:3
	wire [57:0] Iteration_cell_sum_AMASK_D [3:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:845:3
	reg [3:0] Sqrt_quotinent_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:848:4
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:850:7
		case (Format_sel_S)
			2'b00: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:853:13
				Sqrt_quotinent_S = {~Iteration_cell_sum_AMASK_D[0][28], ~Iteration_cell_sum_AMASK_D[1][28], ~Iteration_cell_sum_AMASK_D[2][28], ~Iteration_cell_sum_AMASK_D[3][28]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:854:13
				Q_sqrt_com_0 = {{29 {1'b0}}, ~Q_sqrt0[28:0]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:855:13
				Q_sqrt_com_1 = {{29 {1'b0}}, ~Q_sqrt1[28:0]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:856:13
				Q_sqrt_com_2 = {{29 {1'b0}}, ~Q_sqrt2[28:0]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:857:13
				Q_sqrt_com_3 = {{29 {1'b0}}, ~Q_sqrt3[28:0]};
			end
			2'b01: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:861:13
				Sqrt_quotinent_S = {Iteration_cell_carry_D[0], Iteration_cell_carry_D[1], Iteration_cell_carry_D[2], Iteration_cell_carry_D[3]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:862:13
				Q_sqrt_com_0 = ~Q_sqrt0;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:863:13
				Q_sqrt_com_1 = ~Q_sqrt1;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:864:13
				Q_sqrt_com_2 = ~Q_sqrt2;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:865:13
				Q_sqrt_com_3 = ~Q_sqrt3;
			end
			2'b10: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:869:13
				Sqrt_quotinent_S = {~Iteration_cell_sum_AMASK_D[0][15], ~Iteration_cell_sum_AMASK_D[1][15], ~Iteration_cell_sum_AMASK_D[2][15], ~Iteration_cell_sum_AMASK_D[3][15]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:870:13
				Q_sqrt_com_0 = {{42 {1'b0}}, ~Q_sqrt0[15:0]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:871:13
				Q_sqrt_com_1 = {{42 {1'b0}}, ~Q_sqrt1[15:0]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:872:13
				Q_sqrt_com_2 = {{42 {1'b0}}, ~Q_sqrt2[15:0]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:873:13
				Q_sqrt_com_3 = {{42 {1'b0}}, ~Q_sqrt3[15:0]};
			end
			2'b11: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:877:13
				Sqrt_quotinent_S = {~Iteration_cell_sum_AMASK_D[0][12], ~Iteration_cell_sum_AMASK_D[1][12], ~Iteration_cell_sum_AMASK_D[2][12], ~Iteration_cell_sum_AMASK_D[3][12]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:878:13
				Q_sqrt_com_0 = {{45 {1'b0}}, ~Q_sqrt0[12:0]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:879:13
				Q_sqrt_com_1 = {{45 {1'b0}}, ~Q_sqrt1[12:0]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:880:13
				Q_sqrt_com_2 = {{45 {1'b0}}, ~Q_sqrt2[12:0]};
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:881:13
				Q_sqrt_com_3 = {{45 {1'b0}}, ~Q_sqrt3[12:0]};
			end
		endcase
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:888:3
	assign Qcnt_one_0 = 1'b0;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:889:3
	assign Qcnt_one_1 = {Quotient_DP[0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:890:3
	assign Qcnt_one_2 = {Quotient_DP[1:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:891:3
	assign Qcnt_one_3 = {Quotient_DP[2:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:892:3
	assign Qcnt_one_4 = {Quotient_DP[3:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:893:3
	assign Qcnt_one_5 = {Quotient_DP[4:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:894:3
	assign Qcnt_one_6 = {Quotient_DP[5:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:895:3
	assign Qcnt_one_7 = {Quotient_DP[6:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:896:3
	assign Qcnt_one_8 = {Quotient_DP[7:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:897:3
	assign Qcnt_one_9 = {Quotient_DP[8:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:898:3
	assign Qcnt_one_10 = {Quotient_DP[9:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:899:3
	assign Qcnt_one_11 = {Quotient_DP[10:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:900:3
	assign Qcnt_one_12 = {Quotient_DP[11:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:901:3
	assign Qcnt_one_13 = {Quotient_DP[12:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:902:3
	assign Qcnt_one_14 = {Quotient_DP[13:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:903:3
	assign Qcnt_one_15 = {Quotient_DP[14:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:904:3
	assign Qcnt_one_16 = {Quotient_DP[15:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:905:3
	assign Qcnt_one_17 = {Quotient_DP[16:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:906:3
	assign Qcnt_one_18 = {Quotient_DP[17:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:907:3
	assign Qcnt_one_19 = {Quotient_DP[18:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:908:3
	assign Qcnt_one_20 = {Quotient_DP[19:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:909:3
	assign Qcnt_one_21 = {Quotient_DP[20:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:910:3
	assign Qcnt_one_22 = {Quotient_DP[21:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:911:3
	assign Qcnt_one_23 = {Quotient_DP[22:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:912:3
	assign Qcnt_one_24 = {Quotient_DP[23:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:913:3
	assign Qcnt_one_25 = {Quotient_DP[24:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:914:3
	assign Qcnt_one_26 = {Quotient_DP[25:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:915:3
	assign Qcnt_one_27 = {Quotient_DP[26:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:916:3
	assign Qcnt_one_28 = {Quotient_DP[27:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:917:3
	assign Qcnt_one_29 = {Quotient_DP[28:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:918:3
	assign Qcnt_one_30 = {Quotient_DP[29:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:919:3
	assign Qcnt_one_31 = {Quotient_DP[30:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:920:3
	assign Qcnt_one_32 = {Quotient_DP[31:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:921:3
	assign Qcnt_one_33 = {Quotient_DP[32:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:922:3
	assign Qcnt_one_34 = {Quotient_DP[33:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:923:3
	assign Qcnt_one_35 = {Quotient_DP[34:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:924:3
	assign Qcnt_one_36 = {Quotient_DP[35:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:925:3
	assign Qcnt_one_37 = {Quotient_DP[36:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:926:3
	assign Qcnt_one_38 = {Quotient_DP[37:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:927:3
	assign Qcnt_one_39 = {Quotient_DP[38:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:928:3
	assign Qcnt_one_40 = {Quotient_DP[39:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:929:3
	assign Qcnt_one_41 = {Quotient_DP[40:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:930:3
	assign Qcnt_one_42 = {Quotient_DP[41:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:931:3
	assign Qcnt_one_43 = {Quotient_DP[42:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:932:3
	assign Qcnt_one_44 = {Quotient_DP[43:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:933:3
	assign Qcnt_one_45 = {Quotient_DP[44:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:934:3
	assign Qcnt_one_46 = {Quotient_DP[45:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:935:3
	assign Qcnt_one_47 = {Quotient_DP[46:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:936:3
	assign Qcnt_one_48 = {Quotient_DP[47:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:937:3
	assign Qcnt_one_49 = {Quotient_DP[48:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:938:3
	assign Qcnt_one_50 = {Quotient_DP[49:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:939:3
	assign Qcnt_one_51 = {Quotient_DP[50:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:940:3
	assign Qcnt_one_52 = {Quotient_DP[51:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:941:3
	assign Qcnt_one_53 = {Quotient_DP[52:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:942:3
	assign Qcnt_one_54 = {Quotient_DP[53:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:943:3
	assign Qcnt_one_55 = {Quotient_DP[54:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:944:3
	assign Qcnt_one_56 = {Quotient_DP[55:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:945:3
	assign Qcnt_one_57 = {Quotient_DP[56:0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:948:3
	assign Qcnt_two_0 = {1'b0, Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:949:3
	assign Qcnt_two_1 = {Quotient_DP[1:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:950:3
	assign Qcnt_two_2 = {Quotient_DP[3:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:951:3
	assign Qcnt_two_3 = {Quotient_DP[5:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:952:3
	assign Qcnt_two_4 = {Quotient_DP[7:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:953:3
	assign Qcnt_two_5 = {Quotient_DP[9:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:954:3
	assign Qcnt_two_6 = {Quotient_DP[11:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:955:3
	assign Qcnt_two_7 = {Quotient_DP[13:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:956:3
	assign Qcnt_two_8 = {Quotient_DP[15:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:957:3
	assign Qcnt_two_9 = {Quotient_DP[17:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:958:3
	assign Qcnt_two_10 = {Quotient_DP[19:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:959:3
	assign Qcnt_two_11 = {Quotient_DP[21:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:960:3
	assign Qcnt_two_12 = {Quotient_DP[23:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:961:3
	assign Qcnt_two_13 = {Quotient_DP[25:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:962:3
	assign Qcnt_two_14 = {Quotient_DP[27:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:963:3
	assign Qcnt_two_15 = {Quotient_DP[29:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:964:3
	assign Qcnt_two_16 = {Quotient_DP[31:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:965:3
	assign Qcnt_two_17 = {Quotient_DP[33:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:966:3
	assign Qcnt_two_18 = {Quotient_DP[35:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:967:3
	assign Qcnt_two_19 = {Quotient_DP[37:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:968:3
	assign Qcnt_two_20 = {Quotient_DP[39:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:969:3
	assign Qcnt_two_21 = {Quotient_DP[41:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:970:3
	assign Qcnt_two_22 = {Quotient_DP[43:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:971:3
	assign Qcnt_two_23 = {Quotient_DP[45:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:972:3
	assign Qcnt_two_24 = {Quotient_DP[47:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:973:3
	assign Qcnt_two_25 = {Quotient_DP[49:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:974:3
	assign Qcnt_two_26 = {Quotient_DP[51:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:975:3
	assign Qcnt_two_27 = {Quotient_DP[53:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:976:3
	assign Qcnt_two_28 = {Quotient_DP[55:0], Sqrt_quotinent_S[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:979:3
	assign Qcnt_three_0 = {1'b0, Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:980:3
	assign Qcnt_three_1 = {Quotient_DP[2:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:981:3
	assign Qcnt_three_2 = {Quotient_DP[5:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:982:3
	assign Qcnt_three_3 = {Quotient_DP[8:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:983:3
	assign Qcnt_three_4 = {Quotient_DP[11:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:984:3
	assign Qcnt_three_5 = {Quotient_DP[14:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:985:3
	assign Qcnt_three_6 = {Quotient_DP[17:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:986:3
	assign Qcnt_three_7 = {Quotient_DP[20:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:987:3
	assign Qcnt_three_8 = {Quotient_DP[23:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:988:3
	assign Qcnt_three_9 = {Quotient_DP[26:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:989:3
	assign Qcnt_three_10 = {Quotient_DP[29:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:990:3
	assign Qcnt_three_11 = {Quotient_DP[32:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:991:3
	assign Qcnt_three_12 = {Quotient_DP[35:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:992:3
	assign Qcnt_three_13 = {Quotient_DP[38:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:993:3
	assign Qcnt_three_14 = {Quotient_DP[41:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:994:3
	assign Qcnt_three_15 = {Quotient_DP[44:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:995:3
	assign Qcnt_three_16 = {Quotient_DP[47:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:996:3
	assign Qcnt_three_17 = {Quotient_DP[50:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:997:3
	assign Qcnt_three_18 = {Quotient_DP[53:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:998:3
	assign Qcnt_three_19 = {Quotient_DP[56:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1001:3
	assign Qcnt_four_0 = {1'b0, Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1002:3
	assign Qcnt_four_1 = {Quotient_DP[3:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1003:3
	assign Qcnt_four_2 = {Quotient_DP[7:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1004:3
	assign Qcnt_four_3 = {Quotient_DP[11:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1005:3
	assign Qcnt_four_4 = {Quotient_DP[15:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1006:3
	assign Qcnt_four_5 = {Quotient_DP[19:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1007:3
	assign Qcnt_four_6 = {Quotient_DP[23:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1008:3
	assign Qcnt_four_7 = {Quotient_DP[27:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1009:3
	assign Qcnt_four_8 = {Quotient_DP[31:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1010:3
	assign Qcnt_four_9 = {Quotient_DP[35:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1011:3
	assign Qcnt_four_10 = {Quotient_DP[39:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1012:3
	assign Qcnt_four_11 = {Quotient_DP[43:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1013:3
	assign Qcnt_four_12 = {Quotient_DP[47:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1014:3
	assign Qcnt_four_13 = {Quotient_DP[51:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1015:3
	assign Qcnt_four_14 = {Quotient_DP[55:0], Sqrt_quotinent_S[3], Sqrt_quotinent_S[2], Sqrt_quotinent_S[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1020:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1022:3
		case (defs_div_sqrt_mvp_Iteration_unit_num_S)
			2'b00:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1033:9
				case (Crtl_cnt_S)
					6'b000000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1037:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[53:defs_div_sqrt_mvp_C_MANT_FP64];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1038:15
						Q_sqrt0 = {{57 {1'b0}}, Qcnt_one_0};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1039:15
						Sqrt_Q0 = Q_sqrt_com_0;
					end
					6'b000001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1043:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[51:50];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1044:15
						Q_sqrt0 = {{57 {1'b0}}, Qcnt_one_1};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1045:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b000010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1049:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[49:48];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1050:15
						Q_sqrt0 = {{56 {1'b0}}, Qcnt_one_2};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1051:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b000011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1055:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[47:46];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1056:15
						Q_sqrt0 = {{55 {1'b0}}, Qcnt_one_3};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1057:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b000100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1061:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[45:44];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1062:15
						Q_sqrt0 = {{54 {1'b0}}, Qcnt_one_4};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1063:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b000101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1067:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[43:42];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1068:15
						Q_sqrt0 = {{53 {1'b0}}, Qcnt_one_5};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1069:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b000110: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1073:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[41:40];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1074:15
						Q_sqrt0 = {{defs_div_sqrt_mvp_C_MANT_FP64 {1'b0}}, Qcnt_one_6};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1075:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b000111: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1079:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[39:38];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1080:15
						Q_sqrt0 = {{51 {1'b0}}, Qcnt_one_7};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1081:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b001000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1085:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[37:36];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1086:15
						Q_sqrt0 = {{50 {1'b0}}, Qcnt_one_8};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1087:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b001001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1091:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[35:34];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1092:15
						Q_sqrt0 = {{49 {1'b0}}, Qcnt_one_9};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1093:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b001010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1097:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[33:32];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1098:15
						Q_sqrt0 = {{48 {1'b0}}, Qcnt_one_10};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1099:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b001011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1103:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[31:30];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1104:15
						Q_sqrt0 = {{47 {1'b0}}, Qcnt_one_11};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1105:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b001100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1109:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[29:28];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1110:15
						Q_sqrt0 = {{46 {1'b0}}, Qcnt_one_12};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1111:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b001101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1115:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[27:26];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1116:15
						Q_sqrt0 = {{45 {1'b0}}, Qcnt_one_13};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1117:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b001110: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1121:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[25:24];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1122:15
						Q_sqrt0 = {{44 {1'b0}}, Qcnt_one_14};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1123:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b001111: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1127:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[23:22];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1128:15
						Q_sqrt0 = {{43 {1'b0}}, Qcnt_one_15};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1129:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b010000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1133:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[21:20];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1134:15
						Q_sqrt0 = {{42 {1'b0}}, Qcnt_one_16};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1135:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b010001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1139:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[19:18];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1140:15
						Q_sqrt0 = {{41 {1'b0}}, Qcnt_one_17};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1141:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b010010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1145:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[17:16];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1146:15
						Q_sqrt0 = {{40 {1'b0}}, Qcnt_one_18};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1147:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b010011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1151:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[15:14];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1152:15
						Q_sqrt0 = {{39 {1'b0}}, Qcnt_one_19};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1153:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b010100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1157:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[13:12];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1158:15
						Q_sqrt0 = {{38 {1'b0}}, Qcnt_one_20};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1159:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b010101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1163:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[11:10];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1164:15
						Q_sqrt0 = {{37 {1'b0}}, Qcnt_one_21};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1165:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b010110: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1169:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[9:8];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1170:15
						Q_sqrt0 = {{36 {1'b0}}, Qcnt_one_22};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1171:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b010111: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1175:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[7:6];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1176:15
						Q_sqrt0 = {{35 {1'b0}}, Qcnt_one_23};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1177:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b011000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1181:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[5:4];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1182:15
						Q_sqrt0 = {{34 {1'b0}}, Qcnt_one_24};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1183:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b011001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1187:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[3:2];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1188:15
						Q_sqrt0 = {{33 {1'b0}}, Qcnt_one_25};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1189:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b011010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1193:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[1:0];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1194:15
						Q_sqrt0 = {{32 {1'b0}}, Qcnt_one_26};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1195:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b011011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1199:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1200:15
						Q_sqrt0 = {{31 {1'b0}}, Qcnt_one_27};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1201:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b011100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1205:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1206:15
						Q_sqrt0 = {{30 {1'b0}}, Qcnt_one_28};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1207:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b011101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1211:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1212:15
						Q_sqrt0 = {{29 {1'b0}}, Qcnt_one_29};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1213:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b011110: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1217:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1218:15
						Q_sqrt0 = {{28 {1'b0}}, Qcnt_one_30};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1219:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b011111: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1223:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1224:15
						Q_sqrt0 = {{27 {1'b0}}, Qcnt_one_31};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1225:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b100000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1229:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1230:15
						Q_sqrt0 = {{26 {1'b0}}, Qcnt_one_32};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1231:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b100001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1235:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1236:15
						Q_sqrt0 = {{25 {1'b0}}, Qcnt_one_33};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1237:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b100010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1241:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1242:15
						Q_sqrt0 = {{24 {1'b0}}, Qcnt_one_34};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1243:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b100011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1247:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1248:15
						Q_sqrt0 = {{23 {1'b0}}, Qcnt_one_35};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1249:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b100100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1253:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1254:15
						Q_sqrt0 = {{22 {1'b0}}, Qcnt_one_36};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1255:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b100101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1259:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1260:15
						Q_sqrt0 = {{21 {1'b0}}, Qcnt_one_37};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1261:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b100110: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1265:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1266:15
						Q_sqrt0 = {{20 {1'b0}}, Qcnt_one_38};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1267:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b100111: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1271:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1272:15
						Q_sqrt0 = {{19 {1'b0}}, Qcnt_one_39};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1273:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b101000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1277:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1278:15
						Q_sqrt0 = {{18 {1'b0}}, Qcnt_one_40};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1279:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b101001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1283:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1284:15
						Q_sqrt0 = {{17 {1'b0}}, Qcnt_one_41};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1285:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b101010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1289:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1290:15
						Q_sqrt0 = {{16 {1'b0}}, Qcnt_one_42};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1291:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b101011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1295:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1296:15
						Q_sqrt0 = {{15 {1'b0}}, Qcnt_one_43};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1297:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b101100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1301:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1302:15
						Q_sqrt0 = {{14 {1'b0}}, Qcnt_one_44};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1303:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b101101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1307:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1308:15
						Q_sqrt0 = {{13 {1'b0}}, Qcnt_one_45};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1309:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b101110: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1313:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1314:15
						Q_sqrt0 = {{12 {1'b0}}, Qcnt_one_46};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1315:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b101111: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1319:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1320:15
						Q_sqrt0 = {{11 {1'b0}}, Qcnt_one_47};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1321:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b110000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1325:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1326:15
						Q_sqrt0 = {{10 {1'b0}}, Qcnt_one_48};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1327:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b110001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1331:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1332:15
						Q_sqrt0 = {{9 {1'b0}}, Qcnt_one_49};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1333:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b110010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1337:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1338:15
						Q_sqrt0 = {{8 {1'b0}}, Qcnt_one_50};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1339:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b110011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1343:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1344:15
						Q_sqrt0 = {{7 {1'b0}}, Qcnt_one_51};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1345:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b110100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1349:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1350:15
						Q_sqrt0 = {{6 {1'b0}}, Qcnt_one_52};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1351:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b110101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1355:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1356:15
						Q_sqrt0 = {{5 {1'b0}}, Qcnt_one_53};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1357:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b110110: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1361:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1362:15
						Q_sqrt0 = {{4 {1'b0}}, Qcnt_one_54};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1363:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b110111: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1367:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1368:15
						Q_sqrt0 = {{3 {1'b0}}, Qcnt_one_55};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1369:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					6'b111000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1373:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1374:15
						Q_sqrt0 = {{2 {1'b0}}, Qcnt_one_56};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1375:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
					end
					default: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1380:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1381:15
						Q_sqrt0 = 1'sb0;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1382:15
						Sqrt_Q0 = 1'sb0;
					end
				endcase
			2'b01:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1398:9
				case (Crtl_cnt_S)
					6'b000000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1402:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[53:defs_div_sqrt_mvp_C_MANT_FP64];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1403:15
						Q_sqrt0 = {{57 {1'b0}}, Qcnt_two_0[1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1404:15
						Sqrt_Q0 = Q_sqrt_com_0;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1405:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[51:50];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1406:15
						Q_sqrt1 = {{56 {1'b0}}, Qcnt_two_0[1:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1407:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b000001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1412:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[49:48];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1413:15
						Q_sqrt0 = {{56 {1'b0}}, Qcnt_two_1[2:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1414:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1415:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[47:46];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1416:15
						Q_sqrt1 = {{55 {1'b0}}, Qcnt_two_1[2:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1417:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b000010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1422:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[45:44];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1423:15
						Q_sqrt0 = {{54 {1'b0}}, Qcnt_two_2[4:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1424:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1425:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[43:42];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1426:15
						Q_sqrt1 = {{53 {1'b0}}, Qcnt_two_2[4:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1427:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b000011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1432:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[41:40];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1433:15
						Q_sqrt0 = {{defs_div_sqrt_mvp_C_MANT_FP64 {1'b0}}, Qcnt_two_3[6:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1434:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1435:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[39:38];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1436:15
						Q_sqrt1 = {{51 {1'b0}}, Qcnt_two_3[6:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1437:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b000100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1442:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[37:36];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1443:15
						Q_sqrt0 = {{50 {1'b0}}, Qcnt_two_4[8:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1444:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1445:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[35:34];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1446:15
						Q_sqrt1 = {{49 {1'b0}}, Qcnt_two_4[8:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1447:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b000101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1452:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[33:32];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1453:15
						Q_sqrt0 = {{48 {1'b0}}, Qcnt_two_5[10:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1454:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1455:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[31:30];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1456:15
						Q_sqrt1 = {{47 {1'b0}}, Qcnt_two_5[10:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1457:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b000110: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1462:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[29:28];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1463:15
						Q_sqrt0 = {{46 {1'b0}}, Qcnt_two_6[12:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1464:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1465:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[27:26];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1466:15
						Q_sqrt1 = {{45 {1'b0}}, Qcnt_two_6[12:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1467:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b000111: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1472:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[25:24];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1473:15
						Q_sqrt0 = {{44 {1'b0}}, Qcnt_two_7[14:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1474:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1475:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[23:22];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1476:15
						Q_sqrt1 = {{43 {1'b0}}, Qcnt_two_7[14:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1477:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b001000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1482:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[21:20];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1483:15
						Q_sqrt0 = {{42 {1'b0}}, Qcnt_two_8[16:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1484:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1485:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[19:18];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1486:15
						Q_sqrt1 = {{41 {1'b0}}, Qcnt_two_8[16:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1487:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b001001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1492:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[17:16];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1493:15
						Q_sqrt0 = {{40 {1'b0}}, Qcnt_two_9[18:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1494:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1495:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[15:14];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1496:15
						Q_sqrt1 = {{39 {1'b0}}, Qcnt_two_9[18:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1497:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b001010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1502:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[13:12];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1503:15
						Q_sqrt0 = {{38 {1'b0}}, Qcnt_two_10[20:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1504:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1505:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[11:10];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1506:15
						Q_sqrt1 = {{37 {1'b0}}, Qcnt_two_10[20:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1507:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b001011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1512:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[9:8];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1513:15
						Q_sqrt0 = {{36 {1'b0}}, Qcnt_two_11[22:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1514:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1515:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[7:6];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1516:15
						Q_sqrt1 = {{35 {1'b0}}, Qcnt_two_11[22:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1517:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b001100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1522:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[5:4];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1523:15
						Q_sqrt0 = {{34 {1'b0}}, Qcnt_two_12[24:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1524:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1525:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[3:2];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1526:15
						Q_sqrt1 = {{33 {1'b0}}, Qcnt_two_12[24:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1527:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b001101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1532:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[1:0];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1533:15
						Q_sqrt0 = {{32 {1'b0}}, Qcnt_two_13[26:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1534:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1535:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1536:15
						Q_sqrt1 = {{31 {1'b0}}, Qcnt_two_13[26:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1537:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b001110: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1542:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1543:15
						Q_sqrt0 = {{30 {1'b0}}, Qcnt_two_14[28:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1544:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1545:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1546:15
						Q_sqrt1 = {{29 {1'b0}}, Qcnt_two_14[28:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1547:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b001111: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1552:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1553:15
						Q_sqrt0 = {{28 {1'b0}}, Qcnt_two_15[30:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1554:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1555:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1556:15
						Q_sqrt1 = {{27 {1'b0}}, Qcnt_two_15[30:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1557:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b010000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1562:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1563:15
						Q_sqrt0 = {{26 {1'b0}}, Qcnt_two_16[32:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1564:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1565:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1566:15
						Q_sqrt1 = {{25 {1'b0}}, Qcnt_two_16[32:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1567:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b010001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1572:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1573:15
						Q_sqrt0 = {{24 {1'b0}}, Qcnt_two_17[34:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1574:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1575:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1576:15
						Q_sqrt1 = {{23 {1'b0}}, Qcnt_two_17[34:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1577:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b010010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1582:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1583:15
						Q_sqrt0 = {{22 {1'b0}}, Qcnt_two_18[36:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1584:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1585:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1586:15
						Q_sqrt1 = {{21 {1'b0}}, Qcnt_two_18[36:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1587:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b010011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1592:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1593:15
						Q_sqrt0 = {{20 {1'b0}}, Qcnt_two_19[38:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1594:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1595:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1596:15
						Q_sqrt1 = {{19 {1'b0}}, Qcnt_two_19[38:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1597:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b010100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1602:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1603:15
						Q_sqrt0 = {{18 {1'b0}}, Qcnt_two_20[40:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1604:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1605:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1606:15
						Q_sqrt1 = {{17 {1'b0}}, Qcnt_two_20[40:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1607:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b010101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1612:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1613:15
						Q_sqrt0 = {{16 {1'b0}}, Qcnt_two_21[42:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1614:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1615:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1616:15
						Q_sqrt1 = {{15 {1'b0}}, Qcnt_two_21[42:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1617:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b010110: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1622:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1623:15
						Q_sqrt0 = {{14 {1'b0}}, Qcnt_two_22[44:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1624:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1625:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1626:15
						Q_sqrt1 = {{13 {1'b0}}, Qcnt_two_22[44:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1627:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b010111: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1632:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1633:15
						Q_sqrt0 = {{12 {1'b0}}, Qcnt_two_23[46:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1634:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1635:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1636:15
						Q_sqrt1 = {{11 {1'b0}}, Qcnt_two_23[46:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1637:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b011000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1642:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1643:15
						Q_sqrt0 = {{10 {1'b0}}, Qcnt_two_24[48:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1644:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1645:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1646:15
						Q_sqrt1 = {{9 {1'b0}}, Qcnt_two_24[48:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1647:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b011001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1652:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1653:15
						Q_sqrt0 = {{8 {1'b0}}, Qcnt_two_25[50:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1654:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1655:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1656:15
						Q_sqrt1 = {{7 {1'b0}}, Qcnt_two_25[50:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1657:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b011010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1662:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1663:15
						Q_sqrt0 = {{6 {1'b0}}, Qcnt_two_26[52:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1664:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1665:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1666:15
						Q_sqrt1 = {{5 {1'b0}}, Qcnt_two_26[52:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1667:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b011011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1672:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1673:15
						Q_sqrt0 = {{4 {1'b0}}, Qcnt_two_27[54:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1674:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1675:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1676:15
						Q_sqrt1 = {{3 {1'b0}}, Qcnt_two_27[54:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1677:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					6'b011100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1682:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1683:15
						Q_sqrt0 = {{2 {1'b0}}, Qcnt_two_28[56:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1684:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1685:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1686:15
						Q_sqrt1 = {1'b0, Qcnt_two_28[56:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1687:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
					default: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1692:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[53:defs_div_sqrt_mvp_C_MANT_FP64];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1693:15
						Q_sqrt0 = {{57 {1'b0}}, Qcnt_two_0[1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1694:15
						Sqrt_Q0 = Q_sqrt_com_0;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1695:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[51:50];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1696:15
						Q_sqrt1 = {{56 {1'b0}}, Qcnt_two_0[1:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1697:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
					end
				endcase
			2'b10:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1714:9
				case (Crtl_cnt_S)
					6'b000000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1717:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[53:defs_div_sqrt_mvp_C_MANT_FP64];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1718:15
						Q_sqrt0 = {{57 {1'b0}}, Qcnt_three_0[2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1719:15
						Sqrt_Q0 = Q_sqrt_com_0;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1720:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[51:50];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1721:15
						Q_sqrt1 = {{56 {1'b0}}, Qcnt_three_0[2:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1722:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1723:15
						Sqrt_DI[2] = Mant_D_sqrt_Norm[49:48];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1724:15
						Q_sqrt2 = {{55 {1'b0}}, Qcnt_three_0[2:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1725:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b000001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1730:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[47:46];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1731:15
						Q_sqrt0 = {{54 {1'b0}}, Qcnt_three_1[4:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1732:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1733:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[45:44];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1734:15
						Q_sqrt1 = {{53 {1'b0}}, Qcnt_three_1[4:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1735:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1736:15
						Sqrt_DI[2] = Mant_D_sqrt_Norm[43:42];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1737:15
						Q_sqrt2 = {{defs_div_sqrt_mvp_C_MANT_FP64 {1'b0}}, Qcnt_three_1[4:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1738:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b000010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1743:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[41:40];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1744:15
						Q_sqrt0 = {{51 {1'b0}}, Qcnt_three_2[7:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1745:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1746:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[39:38];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1747:15
						Q_sqrt1 = {{50 {1'b0}}, Qcnt_three_2[7:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1748:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1749:15
						Sqrt_DI[2] = Mant_D_sqrt_Norm[37:36];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1750:15
						Q_sqrt2 = {{49 {1'b0}}, Qcnt_three_2[7:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1751:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b000011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1756:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[35:34];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1757:15
						Q_sqrt0 = {{48 {1'b0}}, Qcnt_three_3[10:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1758:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1759:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[33:32];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1760:15
						Q_sqrt1 = {{47 {1'b0}}, Qcnt_three_3[10:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1761:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1762:15
						Sqrt_DI[2] = Mant_D_sqrt_Norm[31:30];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1763:15
						Q_sqrt2 = {{46 {1'b0}}, Qcnt_three_3[10:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1764:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b000100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1769:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[29:28];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1770:15
						Q_sqrt0 = {{45 {1'b0}}, Qcnt_three_4[13:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1771:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1772:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[27:26];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1773:15
						Q_sqrt1 = {{44 {1'b0}}, Qcnt_three_4[13:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1774:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1775:15
						Sqrt_DI[2] = Mant_D_sqrt_Norm[25:24];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1776:15
						Q_sqrt2 = {{43 {1'b0}}, Qcnt_three_4[13:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1777:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b000101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1782:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[23:22];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1783:15
						Q_sqrt0 = {{42 {1'b0}}, Qcnt_three_5[16:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1784:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1785:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[21:20];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1786:15
						Q_sqrt1 = {{41 {1'b0}}, Qcnt_three_5[16:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1787:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1788:15
						Sqrt_DI[2] = Mant_D_sqrt_Norm[19:18];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1789:15
						Q_sqrt2 = {{40 {1'b0}}, Qcnt_three_5[16:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1790:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b000110: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1795:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[17:16];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1796:15
						Q_sqrt0 = {{39 {1'b0}}, Qcnt_three_6[19:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1797:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1798:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[15:14];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1799:15
						Q_sqrt1 = {{38 {1'b0}}, Qcnt_three_6[19:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1800:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1801:15
						Sqrt_DI[2] = Mant_D_sqrt_Norm[13:12];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1802:15
						Q_sqrt2 = {{37 {1'b0}}, Qcnt_three_6[19:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1803:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b000111: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1808:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[11:10];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1809:15
						Q_sqrt0 = {{36 {1'b0}}, Qcnt_three_7[22:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1810:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1811:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[9:8];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1812:15
						Q_sqrt1 = {{35 {1'b0}}, Qcnt_three_7[22:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1813:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1814:15
						Sqrt_DI[2] = Mant_D_sqrt_Norm[7:6];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1815:15
						Q_sqrt2 = {{34 {1'b0}}, Qcnt_three_7[22:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1816:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b001000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1821:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[5:4];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1822:15
						Q_sqrt0 = {{33 {1'b0}}, Qcnt_three_8[25:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1823:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1824:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[3:2];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1825:15
						Q_sqrt1 = {{32 {1'b0}}, Qcnt_three_8[25:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1826:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1827:15
						Sqrt_DI[2] = Mant_D_sqrt_Norm[1:0];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1828:15
						Q_sqrt2 = {{31 {1'b0}}, Qcnt_three_8[25:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1829:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b001001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1834:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1835:15
						Q_sqrt0 = {{30 {1'b0}}, Qcnt_three_9[28:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1836:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1837:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1838:15
						Q_sqrt1 = {{29 {1'b0}}, Qcnt_three_9[28:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1839:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1840:15
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1841:15
						Q_sqrt2 = {{28 {1'b0}}, Qcnt_three_9[28:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1842:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b001010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1847:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1848:15
						Q_sqrt0 = {{27 {1'b0}}, Qcnt_three_10[31:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1849:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1850:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1851:15
						Q_sqrt1 = {{26 {1'b0}}, Qcnt_three_10[31:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1852:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1853:15
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1854:15
						Q_sqrt2 = {{25 {1'b0}}, Qcnt_three_10[31:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1855:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b001011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1860:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1861:15
						Q_sqrt0 = {{24 {1'b0}}, Qcnt_three_11[34:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1862:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1863:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1864:15
						Q_sqrt1 = {{23 {1'b0}}, Qcnt_three_11[34:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1865:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1866:15
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1867:15
						Q_sqrt2 = {{22 {1'b0}}, Qcnt_three_11[34:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1868:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b001100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1873:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1874:15
						Q_sqrt0 = {{21 {1'b0}}, Qcnt_three_12[37:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1875:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1876:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1877:15
						Q_sqrt1 = {{20 {1'b0}}, Qcnt_three_12[37:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1878:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1879:15
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1880:15
						Q_sqrt2 = {{19 {1'b0}}, Qcnt_three_12[37:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1881:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b001101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1886:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1887:15
						Q_sqrt0 = {{18 {1'b0}}, Qcnt_three_13[40:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1888:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1889:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1890:15
						Q_sqrt1 = {{17 {1'b0}}, Qcnt_three_13[40:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1891:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1892:15
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1893:15
						Q_sqrt2 = {{16 {1'b0}}, Qcnt_three_13[40:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1894:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b001110: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1899:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1900:15
						Q_sqrt0 = {{15 {1'b0}}, Qcnt_three_14[43:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1901:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1902:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1903:15
						Q_sqrt1 = {{14 {1'b0}}, Qcnt_three_14[43:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1904:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1905:15
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1906:15
						Q_sqrt2 = {{13 {1'b0}}, Qcnt_three_14[43:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1907:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b001111: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1912:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1913:15
						Q_sqrt0 = {{12 {1'b0}}, Qcnt_three_15[46:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1914:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1915:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1916:15
						Q_sqrt1 = {{11 {1'b0}}, Qcnt_three_15[46:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1917:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1918:15
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1919:15
						Q_sqrt2 = {{10 {1'b0}}, Qcnt_three_15[46:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1920:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b010000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1925:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1926:15
						Q_sqrt0 = {{9 {1'b0}}, Qcnt_three_16[49:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1927:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1928:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1929:15
						Q_sqrt1 = {{8 {1'b0}}, Qcnt_three_16[49:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1930:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1931:15
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1932:15
						Q_sqrt2 = {{7 {1'b0}}, Qcnt_three_16[49:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1933:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b010001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1938:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1939:15
						Q_sqrt0 = {{6 {1'b0}}, Qcnt_three_17[52:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1940:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1941:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1942:15
						Q_sqrt1 = {{5 {1'b0}}, Qcnt_three_17[52:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1943:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1944:15
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1945:15
						Q_sqrt2 = {{4 {1'b0}}, Qcnt_three_17[52:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1946:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					6'b010010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1951:15
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1952:15
						Q_sqrt0 = {{3 {1'b0}}, Qcnt_three_18[55:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1953:15
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1954:15
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1955:15
						Q_sqrt1 = {{2 {1'b0}}, Qcnt_three_18[55:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1956:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1957:15
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1958:15
						Q_sqrt2 = {1'b0, Qcnt_three_18[55:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1959:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
					default: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1964:15
						Sqrt_DI[0] = Mant_D_sqrt_Norm[53:defs_div_sqrt_mvp_C_MANT_FP64];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1965:15
						Q_sqrt0 = {{57 {1'b0}}, Qcnt_three_0[2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1966:15
						Sqrt_Q0 = Q_sqrt_com_0;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1967:15
						Sqrt_DI[1] = Mant_D_sqrt_Norm[51:50];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1968:15
						Q_sqrt1 = {{56 {1'b0}}, Qcnt_three_0[2:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1969:15
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1970:15
						Sqrt_DI[2] = Mant_D_sqrt_Norm[49:48];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1971:15
						Q_sqrt2 = {{55 {1'b0}}, Qcnt_three_0[2:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1972:15
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
					end
				endcase
			2'b11:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1988:15
				case (Crtl_cnt_S)
					6'b000000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1992:21
						Sqrt_DI[0] = Mant_D_sqrt_Norm[53:defs_div_sqrt_mvp_C_MANT_FP64];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1993:21
						Q_sqrt0 = {{57 {1'b0}}, Qcnt_four_0[3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1994:21
						Sqrt_Q0 = Q_sqrt_com_0;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1995:21
						Sqrt_DI[1] = Mant_D_sqrt_Norm[51:50];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1996:21
						Q_sqrt1 = {{56 {1'b0}}, Qcnt_four_0[3:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1997:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1998:21
						Sqrt_DI[2] = Mant_D_sqrt_Norm[49:48];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:1999:21
						Q_sqrt2 = {{55 {1'b0}}, Qcnt_four_0[3:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2000:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2001:21
						Sqrt_DI[3] = Mant_D_sqrt_Norm[47:46];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2002:21
						Q_sqrt3 = {{54 {1'b0}}, Qcnt_four_0[3:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2003:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					6'b000001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2008:21
						Sqrt_DI[0] = Mant_D_sqrt_Norm[45:44];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2009:21
						Q_sqrt0 = {{53 {1'b0}}, Qcnt_four_1[6:3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2010:21
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2011:21
						Sqrt_DI[1] = Mant_D_sqrt_Norm[43:42];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2012:21
						Q_sqrt1 = {{defs_div_sqrt_mvp_C_MANT_FP64 {1'b0}}, Qcnt_four_1[6:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2013:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2014:21
						Sqrt_DI[2] = Mant_D_sqrt_Norm[41:40];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2015:21
						Q_sqrt2 = {{51 {1'b0}}, Qcnt_four_1[6:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2016:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2017:21
						Sqrt_DI[3] = Mant_D_sqrt_Norm[39:38];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2018:21
						Q_sqrt3 = {{50 {1'b0}}, Qcnt_four_1[6:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2019:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					6'b000010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2024:21
						Sqrt_DI[0] = Mant_D_sqrt_Norm[37:36];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2025:21
						Q_sqrt0 = {{49 {1'b0}}, Qcnt_four_2[10:3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2026:21
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2027:21
						Sqrt_DI[1] = Mant_D_sqrt_Norm[35:34];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2028:21
						Q_sqrt1 = {{48 {1'b0}}, Qcnt_four_2[10:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2029:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2030:21
						Sqrt_DI[2] = Mant_D_sqrt_Norm[33:32];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2031:21
						Q_sqrt2 = {{47 {1'b0}}, Qcnt_four_2[10:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2032:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2033:21
						Sqrt_DI[3] = Mant_D_sqrt_Norm[31:30];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2034:21
						Q_sqrt3 = {{46 {1'b0}}, Qcnt_four_2[10:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2035:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					6'b000011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2040:21
						Sqrt_DI[0] = Mant_D_sqrt_Norm[29:28];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2041:21
						Q_sqrt0 = {{45 {1'b0}}, Qcnt_four_3[14:3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2042:21
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2043:21
						Sqrt_DI[1] = Mant_D_sqrt_Norm[27:26];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2044:21
						Q_sqrt1 = {{44 {1'b0}}, Qcnt_four_3[14:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2045:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2046:21
						Sqrt_DI[2] = Mant_D_sqrt_Norm[25:24];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2047:21
						Q_sqrt2 = {{43 {1'b0}}, Qcnt_four_3[14:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2048:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2049:21
						Sqrt_DI[3] = Mant_D_sqrt_Norm[23:22];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2050:21
						Q_sqrt3 = {{42 {1'b0}}, Qcnt_four_3[14:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2051:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					6'b000100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2056:21
						Sqrt_DI[0] = Mant_D_sqrt_Norm[21:20];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2057:21
						Q_sqrt0 = {{41 {1'b0}}, Qcnt_four_4[18:3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2058:21
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2059:21
						Sqrt_DI[1] = Mant_D_sqrt_Norm[19:18];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2060:21
						Q_sqrt1 = {{40 {1'b0}}, Qcnt_four_4[18:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2061:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2062:21
						Sqrt_DI[2] = Mant_D_sqrt_Norm[17:16];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2063:21
						Q_sqrt2 = {{39 {1'b0}}, Qcnt_four_4[18:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2064:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2065:21
						Sqrt_DI[3] = Mant_D_sqrt_Norm[15:14];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2066:21
						Q_sqrt3 = {{38 {1'b0}}, Qcnt_four_4[18:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2067:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					6'b000101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2072:21
						Sqrt_DI[0] = Mant_D_sqrt_Norm[13:12];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2073:21
						Q_sqrt0 = {{37 {1'b0}}, Qcnt_four_5[22:3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2074:21
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2075:21
						Sqrt_DI[1] = Mant_D_sqrt_Norm[11:10];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2076:21
						Q_sqrt1 = {{36 {1'b0}}, Qcnt_four_5[22:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2077:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2078:21
						Sqrt_DI[2] = Mant_D_sqrt_Norm[9:8];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2079:21
						Q_sqrt2 = {{35 {1'b0}}, Qcnt_four_5[22:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2080:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2081:21
						Sqrt_DI[3] = Mant_D_sqrt_Norm[7:6];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2082:21
						Q_sqrt3 = {{34 {1'b0}}, Qcnt_four_5[22:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2083:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					6'b000110: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2088:21
						Sqrt_DI[0] = Mant_D_sqrt_Norm[5:4];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2089:21
						Q_sqrt0 = {{33 {1'b0}}, Qcnt_four_6[26:3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2090:21
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2091:21
						Sqrt_DI[1] = Mant_D_sqrt_Norm[3:2];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2092:21
						Q_sqrt1 = {{32 {1'b0}}, Qcnt_four_6[26:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2093:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2094:21
						Sqrt_DI[2] = Mant_D_sqrt_Norm[1:0];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2095:21
						Q_sqrt2 = {{31 {1'b0}}, Qcnt_four_6[26:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2096:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2097:21
						Sqrt_DI[3] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2098:21
						Q_sqrt3 = {{30 {1'b0}}, Qcnt_four_6[26:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2099:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					6'b000111: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2104:21
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2105:21
						Q_sqrt0 = {{29 {1'b0}}, Qcnt_four_7[30:3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2106:21
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2107:21
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2108:21
						Q_sqrt1 = {{28 {1'b0}}, Qcnt_four_7[30:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2109:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2110:21
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2111:21
						Q_sqrt2 = {{27 {1'b0}}, Qcnt_four_7[30:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2112:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2113:21
						Sqrt_DI[3] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2114:21
						Q_sqrt3 = {{26 {1'b0}}, Qcnt_four_7[30:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2115:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					6'b001000: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2120:21
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2121:21
						Q_sqrt0 = {{25 {1'b0}}, Qcnt_four_8[34:3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2122:21
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2123:21
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2124:21
						Q_sqrt1 = {{24 {1'b0}}, Qcnt_four_8[34:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2125:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2126:21
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2127:21
						Q_sqrt2 = {{23 {1'b0}}, Qcnt_four_8[34:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2128:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2129:21
						Sqrt_DI[3] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2130:21
						Q_sqrt3 = {{22 {1'b0}}, Qcnt_four_8[34:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2131:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					6'b001001: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2136:21
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2137:21
						Q_sqrt0 = {{21 {1'b0}}, Qcnt_four_9[38:3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2138:21
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2139:21
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2140:21
						Q_sqrt1 = {{20 {1'b0}}, Qcnt_four_9[38:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2141:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2142:21
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2143:21
						Q_sqrt2 = {{19 {1'b0}}, Qcnt_four_9[38:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2144:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2145:21
						Sqrt_DI[3] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2146:21
						Q_sqrt3 = {{18 {1'b0}}, Qcnt_four_9[38:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2147:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					6'b001010: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2152:21
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2153:21
						Q_sqrt0 = {{17 {1'b0}}, Qcnt_four_10[42:3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2154:21
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2155:21
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2156:21
						Q_sqrt1 = {{16 {1'b0}}, Qcnt_four_10[42:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2157:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2158:21
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2159:21
						Q_sqrt2 = {{15 {1'b0}}, Qcnt_four_10[42:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2160:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2161:21
						Sqrt_DI[3] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2162:21
						Q_sqrt3 = {{14 {1'b0}}, Qcnt_four_10[42:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2163:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					6'b001011: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2168:21
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2169:21
						Q_sqrt0 = {{13 {1'b0}}, Qcnt_four_11[46:3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2170:21
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2171:21
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2172:21
						Q_sqrt1 = {{12 {1'b0}}, Qcnt_four_11[46:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2173:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2174:21
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2175:21
						Q_sqrt2 = {{11 {1'b0}}, Qcnt_four_11[46:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2176:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2177:21
						Sqrt_DI[3] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2178:21
						Q_sqrt3 = {{10 {1'b0}}, Qcnt_four_11[46:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2179:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					6'b001100: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2184:21
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2185:21
						Q_sqrt0 = {{9 {1'b0}}, Qcnt_four_12[50:3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2186:21
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2187:21
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2188:21
						Q_sqrt1 = {{8 {1'b0}}, Qcnt_four_12[50:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2189:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2190:21
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2191:21
						Q_sqrt2 = {{7 {1'b0}}, Qcnt_four_12[50:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2192:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2193:21
						Sqrt_DI[3] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2194:21
						Q_sqrt3 = {{6 {1'b0}}, Qcnt_four_12[50:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2195:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					6'b001101: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2200:21
						Sqrt_DI[0] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2201:21
						Q_sqrt0 = {{5 {1'b0}}, Qcnt_four_13[54:3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2202:21
						Sqrt_Q0 = (Quotient_DP[0] ? Q_sqrt_com_0 : Q_sqrt0);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2203:21
						Sqrt_DI[1] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2204:21
						Q_sqrt1 = {{4 {1'b0}}, Qcnt_four_13[54:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2205:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2206:21
						Sqrt_DI[2] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2207:21
						Q_sqrt2 = {{3 {1'b0}}, Qcnt_four_13[54:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2208:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2209:21
						Sqrt_DI[3] = 2'b00;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2210:21
						Q_sqrt3 = {{2 {1'b0}}, Qcnt_four_13[54:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2211:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
					default: begin
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2216:21
						Sqrt_DI[0] = Mant_D_sqrt_Norm[53:defs_div_sqrt_mvp_C_MANT_FP64];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2217:21
						Q_sqrt0 = {{57 {1'b0}}, Qcnt_four_0[3]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2218:21
						Sqrt_Q0 = Q_sqrt_com_0;
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2219:21
						Sqrt_DI[1] = Mant_D_sqrt_Norm[51:50];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2220:21
						Q_sqrt1 = {{56 {1'b0}}, Qcnt_four_0[3:2]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2221:21
						Sqrt_Q1 = (Sqrt_quotinent_S[3] ? Q_sqrt_com_1 : Q_sqrt1);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2222:21
						Sqrt_DI[2] = Mant_D_sqrt_Norm[49:48];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2223:21
						Q_sqrt2 = {{55 {1'b0}}, Qcnt_four_0[3:1]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2224:21
						Sqrt_Q2 = (Sqrt_quotinent_S[2] ? Q_sqrt_com_2 : Q_sqrt2);
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2225:21
						Sqrt_DI[3] = Mant_D_sqrt_Norm[47:46];
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2226:21
						Q_sqrt3 = {{54 {1'b0}}, Qcnt_four_0[3:0]};
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2227:21
						Sqrt_Q3 = (Sqrt_quotinent_S[1] ? Q_sqrt_com_3 : Q_sqrt3);
					end
				endcase
		endcase
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2239:3
	assign Sqrt_R0 = (Sqrt_start_dly_S ? {58 {1'sb0}} : {Partial_remainder_DP[57:0]});
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2240:3
	assign Sqrt_R1 = {Iteration_cell_sum_AMASK_D[0][57], Iteration_cell_sum_AMASK_D[0][54:0], Sqrt_DO[0]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2241:3
	assign Sqrt_R2 = {Iteration_cell_sum_AMASK_D[1][57], Iteration_cell_sum_AMASK_D[1][54:0], Sqrt_DO[1]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2242:3
	assign Sqrt_R3 = {Iteration_cell_sum_AMASK_D[2][57], Iteration_cell_sum_AMASK_D[2][54:0], Sqrt_DO[2]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2243:3
	assign Sqrt_R4 = {Iteration_cell_sum_AMASK_D[3][57], Iteration_cell_sum_AMASK_D[3][54:0], Sqrt_DO[3]};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2245:3
	wire [57:0] Denominator_se_format_DB;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2247:3
	assign Denominator_se_format_DB = {Denominator_se_DB[53:45], (FP16ALT_SO ? FP16ALT_SO : Denominator_se_DB[44]), Denominator_se_DB[43:42], (FP16_SO ? FP16_SO : Denominator_se_DB[41]), Denominator_se_DB[40:29], (FP32_SO ? FP32_SO : Denominator_se_DB[28]), Denominator_se_DB[27:0], FP64_SO, 3'b000};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2252:3
	wire [57:0] First_iteration_cell_div_a_D;
	wire [57:0] First_iteration_cell_div_b_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2253:3
	wire Sel_b_for_first_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2256:3
	assign First_iteration_cell_div_a_D = (Div_start_dly_S ? {Numerator_se_D[53:45], (FP16ALT_SO ? FP16ALT_SO : Numerator_se_D[44]), Numerator_se_D[43:42], (FP16_SO ? FP16_SO : Numerator_se_D[41]), Numerator_se_D[40:29], (FP32_SO ? FP32_SO : Numerator_se_D[28]), Numerator_se_D[27:0], FP64_SO, 3'b000} : {Partial_remainder_DP[56:48], (FP16ALT_SO ? Quotient_DP[0] : Partial_remainder_DP[47]), Partial_remainder_DP[46:45], (FP16_SO ? Quotient_DP[0] : Partial_remainder_DP[44]), Partial_remainder_DP[43:32], (FP32_SO ? Quotient_DP[0] : Partial_remainder_DP[31]), Partial_remainder_DP[30:3], FP64_SO && Quotient_DP[0], 3'b000});
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2264:3
	assign Sel_b_for_first_S = (Div_start_dly_S ? 1 : Quotient_DP[0]);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2265:3
	assign First_iteration_cell_div_b_D = (Sel_b_for_first_S ? Denominator_se_format_DB : {Denominator_se_D, 4'b0000});
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2266:3
	assign Iteration_cell_a_BMASK_D[0] = (Sqrt_enable_SO ? Sqrt_R0 : {First_iteration_cell_div_a_D});
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2267:3
	assign Iteration_cell_b_BMASK_D[0] = (Sqrt_enable_SO ? Sqrt_Q0 : {First_iteration_cell_div_b_D});
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2272:3
	wire [57:0] Sec_iteration_cell_div_a_D;
	wire [57:0] Sec_iteration_cell_div_b_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2273:3
	wire Sel_b_for_sec_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2274:3
	generate
		if (|defs_div_sqrt_mvp_Iteration_unit_num_S) begin : genblk1
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2277:9
			assign Sel_b_for_sec_S = ~Iteration_cell_sum_AMASK_D[0][57];
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2278:9
			assign Sec_iteration_cell_div_a_D = {Iteration_cell_sum_AMASK_D[0][56:48], (FP16ALT_SO ? Sel_b_for_sec_S : Iteration_cell_sum_AMASK_D[0][47]), Iteration_cell_sum_AMASK_D[0][46:45], (FP16_SO ? Sel_b_for_sec_S : Iteration_cell_sum_AMASK_D[0][44]), Iteration_cell_sum_AMASK_D[0][43:32], (FP32_SO ? Sel_b_for_sec_S : Iteration_cell_sum_AMASK_D[0][31]), Iteration_cell_sum_AMASK_D[0][30:3], FP64_SO && Sel_b_for_sec_S, 3'b000};
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2282:9
			assign Sec_iteration_cell_div_b_D = (Sel_b_for_sec_S ? Denominator_se_format_DB : {Denominator_se_D, 4'b0000});
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2283:9
			assign Iteration_cell_a_BMASK_D[1] = (Sqrt_enable_SO ? Sqrt_R1 : {Sec_iteration_cell_div_a_D});
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2284:9
			assign Iteration_cell_b_BMASK_D[1] = (Sqrt_enable_SO ? Sqrt_Q1 : {Sec_iteration_cell_div_b_D});
		end
	endgenerate
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2289:3
	wire [57:0] Thi_iteration_cell_div_a_D;
	wire [57:0] Thi_iteration_cell_div_b_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2290:3
	wire Sel_b_for_thi_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2291:3
	generate
		if (1'd1 | 1'd0) begin : genblk2
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2294:9
			assign Sel_b_for_thi_S = ~Iteration_cell_sum_AMASK_D[1][57];
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2295:9
			assign Thi_iteration_cell_div_a_D = {Iteration_cell_sum_AMASK_D[1][56:48], (FP16ALT_SO ? Sel_b_for_thi_S : Iteration_cell_sum_AMASK_D[1][47]), Iteration_cell_sum_AMASK_D[1][46:45], (FP16_SO ? Sel_b_for_thi_S : Iteration_cell_sum_AMASK_D[1][44]), Iteration_cell_sum_AMASK_D[1][43:32], (FP32_SO ? Sel_b_for_thi_S : Iteration_cell_sum_AMASK_D[1][31]), Iteration_cell_sum_AMASK_D[1][30:3], FP64_SO && Sel_b_for_thi_S, 3'b000};
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2299:9
			assign Thi_iteration_cell_div_b_D = (Sel_b_for_thi_S ? Denominator_se_format_DB : {Denominator_se_D, 4'b0000});
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2300:9
			assign Iteration_cell_a_BMASK_D[2] = (Sqrt_enable_SO ? Sqrt_R2 : {Thi_iteration_cell_div_a_D});
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2301:9
			assign Iteration_cell_b_BMASK_D[2] = (Sqrt_enable_SO ? Sqrt_Q2 : {Thi_iteration_cell_div_b_D});
		end
	endgenerate
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2306:3
	wire [57:0] Fou_iteration_cell_div_a_D;
	wire [57:0] Fou_iteration_cell_div_b_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2307:3
	wire Sel_b_for_fou_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2309:3
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2328:3
	wire [57:0] Mask_bits_ctl_S;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2330:3
	assign Mask_bits_ctl_S = 58'h3ffffffffffffff;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2337:3
	wire Div_enable_SI [3:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2338:3
	wire Div_start_dly_SI [3:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2339:3
	wire Sqrt_enable_SI [3:0];
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2340:3
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2341:5
	genvar _gv_i_57;
	genvar _gv_j_8;
	generate
		for (_gv_i_57 = 0; _gv_i_57 <= defs_div_sqrt_mvp_Iteration_unit_num_S; _gv_i_57 = _gv_i_57 + 1) begin : genblk4
			localparam i = _gv_i_57;
			for (_gv_j_8 = 0; _gv_j_8 <= 57; _gv_j_8 = _gv_j_8 + 1) begin : genblk1
				localparam j = _gv_j_8;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2345:15
				assign Iteration_cell_a_D[i][j] = Mask_bits_ctl_S[j] && Iteration_cell_a_BMASK_D[i][j];
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2346:15
				assign Iteration_cell_b_D[i][j] = Mask_bits_ctl_S[j] && Iteration_cell_b_BMASK_D[i][j];
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2347:15
				assign Iteration_cell_sum_AMASK_D[i][j] = Mask_bits_ctl_S[j] && Iteration_cell_sum_D[i][j];
			end
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2350:11
			assign Div_enable_SI[i] = Div_enable_SO;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2351:11
			assign Div_start_dly_SI[i] = Div_start_dly_S;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2352:11
			assign Sqrt_enable_SI[i] = Sqrt_enable_SO;
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2353:11
			iteration_div_sqrt_mvp #(.WIDTH(58)) iteration_div_sqrt(
				.A_DI(Iteration_cell_a_D[i]),
				.B_DI(Iteration_cell_b_D[i]),
				.Div_enable_SI(Div_enable_SI[i]),
				.Div_start_dly_SI(Div_start_dly_SI[i]),
				.Sqrt_enable_SI(Sqrt_enable_SI[i]),
				.D_DI(Sqrt_DI[i]),
				.D_DO(Sqrt_DO[i]),
				.Sum_DO(Iteration_cell_sum_D[i]),
				.Carry_out_DO(Iteration_cell_carry_D[i])
			);
		end
	endgenerate
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2372:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2374:7
		case (defs_div_sqrt_mvp_Iteration_unit_num_S)
			2'b00:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2377:13
				if (Fsm_enable_S)
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2378:16
					Partial_remainder_DN = (Sqrt_enable_SO ? Sqrt_R1 : Iteration_cell_sum_AMASK_D[0]);
				else
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2380:16
					Partial_remainder_DN = Partial_remainder_DP;
			2'b01:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2384:13
				if (Fsm_enable_S)
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2385:16
					Partial_remainder_DN = (Sqrt_enable_SO ? Sqrt_R2 : Iteration_cell_sum_AMASK_D[1]);
				else
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2387:16
					Partial_remainder_DN = Partial_remainder_DP;
			2'b10:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2391:13
				if (Fsm_enable_S)
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2392:16
					Partial_remainder_DN = (Sqrt_enable_SO ? Sqrt_R3 : Iteration_cell_sum_AMASK_D[2]);
				else
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2394:16
					Partial_remainder_DN = Partial_remainder_DP;
			2'b11:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2398:13
				if (Fsm_enable_S)
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2399:16
					Partial_remainder_DN = (Sqrt_enable_SO ? Sqrt_R4 : Iteration_cell_sum_AMASK_D[3]);
				else
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2401:16
					Partial_remainder_DN = Partial_remainder_DP;
		endcase
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2408:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2410:9
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2412:14
			Partial_remainder_DP <= 1'sb0;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2416:14
			Partial_remainder_DP <= Partial_remainder_DN;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2420:4
	reg [56:0] Quotient_DN;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2422:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2424:7
		case (defs_div_sqrt_mvp_Iteration_unit_num_S)
			2'b00:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2427:13
				if (Fsm_enable_S)
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2428:16
					Quotient_DN = (Sqrt_enable_SO ? {Quotient_DP[55:0], Sqrt_quotinent_S[3]} : {Quotient_DP[55:0], Iteration_cell_carry_D[0]});
				else
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2430:16
					Quotient_DN = Quotient_DP;
			2'b01:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2434:13
				if (Fsm_enable_S)
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2435:16
					Quotient_DN = (Sqrt_enable_SO ? {Quotient_DP[54:0], Sqrt_quotinent_S[3:2]} : {Quotient_DP[54:0], Iteration_cell_carry_D[0], Iteration_cell_carry_D[1]});
				else
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2437:16
					Quotient_DN = Quotient_DP;
			2'b10:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2441:13
				if (Fsm_enable_S)
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2442:16
					Quotient_DN = (Sqrt_enable_SO ? {Quotient_DP[53:0], Sqrt_quotinent_S[3:1]} : {Quotient_DP[53:0], Iteration_cell_carry_D[0], Iteration_cell_carry_D[1], Iteration_cell_carry_D[2]});
				else
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2444:16
					Quotient_DN = Quotient_DP;
			2'b11:
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2448:13
				if (Fsm_enable_S)
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2449:16
					Quotient_DN = (Sqrt_enable_SO ? {Quotient_DP[defs_div_sqrt_mvp_C_MANT_FP64:0], Sqrt_quotinent_S} : {Quotient_DP[defs_div_sqrt_mvp_C_MANT_FP64:0], Iteration_cell_carry_D[0], Iteration_cell_carry_D[1], Iteration_cell_carry_D[2], Iteration_cell_carry_D[3]});
				else
					// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2451:16
					Quotient_DN = Quotient_DP;
		endcase
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2456:4
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2458:9
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2460:11
			Quotient_DP <= 1'sb0;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2463:11
			Quotient_DP <= Quotient_DN;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2473:4
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:2814:4
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3030:4
	generate
		if (1) begin : genblk7
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3033:9
			always @(*) begin
				if (_sv2v_0)
					;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3035:13
				case (Format_sel_S)
					2'b00:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3038:19
						case (Precision_ctl_S)
							6'h00:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3041:25
								Mant_result_prenorm_DO = {Quotient_DP[26:0], {30 {1'b0}}};
							6'h17, 6'h16, 6'h15:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3045:25
								Mant_result_prenorm_DO = {Quotient_DP[defs_div_sqrt_mvp_C_MANT_FP32:0], {33 {1'b0}}};
							6'h14, 6'h13, 6'h12:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3049:25
								Mant_result_prenorm_DO = {Quotient_DP[20:0], {36 {1'b0}}};
							6'h11, 6'h10, 6'h0f:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3053:25
								Mant_result_prenorm_DO = {Quotient_DP[17:0], {39 {1'b0}}};
							6'h0e, 6'h0d, 6'h0c:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3057:25
								Mant_result_prenorm_DO = {Quotient_DP[14:0], {42 {1'b0}}};
							6'h0b, 6'h0a, 6'h09:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3061:25
								Mant_result_prenorm_DO = {Quotient_DP[11:0], {45 {1'b0}}};
							6'h08, 6'h07, 6'h06:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3065:25
								Mant_result_prenorm_DO = {Quotient_DP[8:0], {48 {1'b0}}};
							default:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3069:25
								Mant_result_prenorm_DO = {Quotient_DP[26:0], {30 {1'b0}}};
						endcase
					2'b01:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3076:19
						case (Precision_ctl_S)
							6'h00:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3079:25
								Mant_result_prenorm_DO = Quotient_DP[56:0];
							6'h34, 6'h33:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3083:25
								Mant_result_prenorm_DO = {Quotient_DP[53:1], {4 {1'b0}}};
							6'h32, 6'h31, 6'h30:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3087:25
								Mant_result_prenorm_DO = {Quotient_DP[50:0], {6 {1'b0}}};
							6'h2f, 6'h2e, 6'h2d:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3091:25
								Mant_result_prenorm_DO = {Quotient_DP[47:0], {9 {1'b0}}};
							6'h2c, 6'h2b, 6'h2a:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3095:25
								Mant_result_prenorm_DO = {Quotient_DP[44:0], {12 {1'b0}}};
							6'h29, 6'h28, 6'h27:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3099:25
								Mant_result_prenorm_DO = {Quotient_DP[41:0], {15 {1'b0}}};
							6'h26, 6'h25, 6'h24:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3103:25
								Mant_result_prenorm_DO = {Quotient_DP[38:0], {18 {1'b0}}};
							6'h23, 6'h22, 6'h21:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3107:25
								Mant_result_prenorm_DO = {Quotient_DP[35:0], {21 {1'b0}}};
							6'h20, 6'h1f, 6'h1e:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3111:25
								Mant_result_prenorm_DO = {Quotient_DP[32:0], {24 {1'b0}}};
							6'h1d, 6'h1c, 6'h1b:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3115:25
								Mant_result_prenorm_DO = {Quotient_DP[29:0], {27 {1'b0}}};
							6'h1a, 6'h19, 6'h18:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3119:25
								Mant_result_prenorm_DO = {Quotient_DP[26:0], {30 {1'b0}}};
							6'h17, 6'h16, 6'h15:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3123:25
								Mant_result_prenorm_DO = {Quotient_DP[23:0], {33 {1'b0}}};
							6'h14, 6'h13, 6'h12:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3127:25
								Mant_result_prenorm_DO = {Quotient_DP[20:0], {36 {1'b0}}};
							6'h11, 6'h10, 6'h0f:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3131:25
								Mant_result_prenorm_DO = {Quotient_DP[17:0], {39 {1'b0}}};
							6'h0e, 6'h0d, 6'h0c:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3135:25
								Mant_result_prenorm_DO = {Quotient_DP[14:0], {42 {1'b0}}};
							6'h0b, 6'h0a, 6'h09:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3139:25
								Mant_result_prenorm_DO = {Quotient_DP[11:0], {45 {1'b0}}};
							6'h08, 6'h07, 6'h06:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3143:25
								Mant_result_prenorm_DO = {Quotient_DP[8:0], {48 {1'b0}}};
							default:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3147:25
								Mant_result_prenorm_DO = Quotient_DP[56:0];
						endcase
					2'b10:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3154:19
						case (Precision_ctl_S)
							6'b000000:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3157:25
								Mant_result_prenorm_DO = {Quotient_DP[14:0], {42 {1'b0}}};
							6'h0a, 6'h09:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3161:25
								Mant_result_prenorm_DO = {Quotient_DP[11:1], {46 {1'b0}}};
							6'h08, 6'h07, 6'h06:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3165:25
								Mant_result_prenorm_DO = {Quotient_DP[8:0], {48 {1'b0}}};
							default:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3169:25
								Mant_result_prenorm_DO = {Quotient_DP[14:0], {42 {1'b0}}};
						endcase
					2'b11:
						// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3177:19
						case (Precision_ctl_S)
							6'b000000:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3180:25
								Mant_result_prenorm_DO = {Quotient_DP[11:0], {45 {1'b0}}};
							6'h07, 6'h06:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3184:25
								Mant_result_prenorm_DO = {Quotient_DP[8:1], {49 {1'b0}}};
							default:
								// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3188:25
								Mant_result_prenorm_DO = {Quotient_DP[11:0], {45 {1'b0}}};
						endcase
				endcase
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3199:4
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3356:4
	wire [12:0] Exp_result_prenorm_DN;
	reg [12:0] Exp_result_prenorm_DP;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3358:4
	wire [12:0] Exp_add_a_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3359:4
	wire [12:0] Exp_add_b_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3360:4
	wire [12:0] Exp_add_c_D;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3362:3
	integer C_BIAS_AONE;
	integer C_HALF_BIAS;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3363:3
	localparam defs_div_sqrt_mvp_C_BIAS_AONE_FP16 = 5'h10;
	localparam defs_div_sqrt_mvp_C_BIAS_AONE_FP16ALT = 8'h80;
	localparam defs_div_sqrt_mvp_C_BIAS_AONE_FP32 = 8'h80;
	localparam defs_div_sqrt_mvp_C_BIAS_AONE_FP64 = 11'h400;
	localparam defs_div_sqrt_mvp_C_HALF_BIAS_FP16 = 7;
	localparam defs_div_sqrt_mvp_C_HALF_BIAS_FP16ALT = 63;
	localparam defs_div_sqrt_mvp_C_HALF_BIAS_FP32 = 63;
	localparam defs_div_sqrt_mvp_C_HALF_BIAS_FP64 = 511;
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3365:7
		case (Format_sel_S)
			2'b00: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3368:13
				C_BIAS_AONE = defs_div_sqrt_mvp_C_BIAS_AONE_FP32;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3369:13
				C_HALF_BIAS = defs_div_sqrt_mvp_C_HALF_BIAS_FP32;
			end
			2'b01: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3373:13
				C_BIAS_AONE = defs_div_sqrt_mvp_C_BIAS_AONE_FP64;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3374:13
				C_HALF_BIAS = defs_div_sqrt_mvp_C_HALF_BIAS_FP64;
			end
			2'b10: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3378:13
				C_BIAS_AONE = defs_div_sqrt_mvp_C_BIAS_AONE_FP16;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3379:13
				C_HALF_BIAS = defs_div_sqrt_mvp_C_HALF_BIAS_FP16;
			end
			2'b11: begin
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3383:13
				C_BIAS_AONE = defs_div_sqrt_mvp_C_BIAS_AONE_FP16ALT;
				// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3384:13
				C_HALF_BIAS = defs_div_sqrt_mvp_C_HALF_BIAS_FP16ALT;
			end
		endcase
	end
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3393:3
	assign Exp_add_a_D = {(Sqrt_start_dly_S ? {Exp_num_DI[defs_div_sqrt_mvp_C_EXP_FP64], Exp_num_DI[defs_div_sqrt_mvp_C_EXP_FP64], Exp_num_DI[defs_div_sqrt_mvp_C_EXP_FP64], Exp_num_DI[defs_div_sqrt_mvp_C_EXP_FP64:1]} : {Exp_num_DI[defs_div_sqrt_mvp_C_EXP_FP64], Exp_num_DI[defs_div_sqrt_mvp_C_EXP_FP64], Exp_num_DI})};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3394:3
	localparam defs_div_sqrt_mvp_C_EXP_ZERO_FP64 = 11'h000;
	assign Exp_add_b_D = {(Sqrt_start_dly_S ? {1'b0, defs_div_sqrt_mvp_C_EXP_ZERO_FP64, Exp_num_DI[0]} : {~Exp_den_DI[defs_div_sqrt_mvp_C_EXP_FP64], ~Exp_den_DI[defs_div_sqrt_mvp_C_EXP_FP64], ~Exp_den_DI})};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3395:3
	assign Exp_add_c_D = {(Div_start_dly_S ? {C_BIAS_AONE} : {C_HALF_BIAS})};
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3396:3
	assign Exp_result_prenorm_DN = (Start_dly_S ? {(Exp_add_a_D + Exp_add_b_D) + Exp_add_c_D} : Exp_result_prenorm_DP);
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3399:3
	always @(posedge Clk_CI or negedge Rst_RBI)
		// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3401:7
		if (~Rst_RBI)
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3403:11
			Exp_result_prenorm_DP <= 1'sb0;
		else
			// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3407:11
			Exp_result_prenorm_DP <= Exp_result_prenorm_DN;
	// Trace: core/cvfpu/src/fpu_div_sqrt_mvp/hdl/control_mvp.sv:3411:3
	assign Exp_result_prenorm_DO = Exp_result_prenorm_DP;
	initial _sv2v_0 = 0;
endmodule
