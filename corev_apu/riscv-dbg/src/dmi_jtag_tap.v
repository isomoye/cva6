module dmi_jtag_tap (
	tck_i,
	tms_i,
	trst_ni,
	td_i,
	td_o,
	tdo_oe_o,
	testmode_i,
	test_logic_reset_o,
	shift_dr_o,
	update_dr_o,
	capture_dr_o,
	dmi_access_o,
	dtmcs_select_o,
	dmi_reset_o,
	dmi_error_i,
	dmi_tdi_o,
	dmi_tdo_i
);
	reg _sv2v_0;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:20:13
	parameter [31:0] IrLength = 5;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:22:13
	parameter [31:0] IdcodeValue = 32'h00000001;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:28:3
	input wire tck_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:29:3
	input wire tms_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:30:3
	input wire trst_ni;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:31:3
	input wire td_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:32:3
	output reg td_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:33:3
	output reg tdo_oe_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:34:3
	input wire testmode_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:35:3
	output reg test_logic_reset_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:36:3
	output reg shift_dr_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:37:3
	output reg update_dr_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:38:3
	output reg capture_dr_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:41:3
	output reg dmi_access_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:43:3
	output reg dtmcs_select_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:45:3
	output wire dmi_reset_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:46:3
	input wire [1:0] dmi_error_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:48:3
	output wire dmi_tdi_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:50:3
	input wire dmi_tdo_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:54:3
	assign dmi_tdi_o = td_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:56:3
	// removed localparam type tap_state_e
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:63:3
	reg [3:0] tap_state_q;
	reg [3:0] tap_state_d;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:65:3
	// removed localparam type ir_reg_e
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:73:3
	// removed localparam type dtmcs_t
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:89:3
	reg [IrLength - 1:0] jtag_ir_shift_d;
	reg [IrLength - 1:0] jtag_ir_shift_q;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:91:3
	reg [IrLength - 1:0] jtag_ir_d;
	reg [IrLength - 1:0] jtag_ir_q;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:92:3
	reg capture_ir;
	reg shift_ir;
	reg update_ir;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:94:3
	function automatic [IrLength - 1:0] sv2v_cast_154DA;
		input reg [IrLength - 1:0] inp;
		sv2v_cast_154DA = inp;
	endfunction
	always @(*) begin : p_jtag
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:95:5
		jtag_ir_shift_d = jtag_ir_shift_q;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:96:5
		jtag_ir_d = jtag_ir_q;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:99:5
		if (shift_ir)
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:100:7
			jtag_ir_shift_d = {td_i, jtag_ir_shift_q[IrLength - 1:1]};
		if (capture_ir)
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:105:7
			jtag_ir_shift_d = sv2v_cast_154DA(4'b0101);
		if (update_ir)
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:110:7
			jtag_ir_d = sv2v_cast_154DA(jtag_ir_shift_q);
		if (test_logic_reset_o) begin
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:115:7
			jtag_ir_shift_d = 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:116:7
			jtag_ir_d = sv2v_cast_154DA('h1);
		end
	end
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:120:3
	always @(posedge tck_i or negedge trst_ni) begin : p_jtag_ir_reg
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:121:5
		if (!trst_ni) begin
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:122:7
			jtag_ir_shift_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:123:7
			jtag_ir_q <= sv2v_cast_154DA('h1);
		end
		else begin
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:125:7
			jtag_ir_shift_q <= jtag_ir_shift_d;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:126:7
			jtag_ir_q <= jtag_ir_d;
		end
	end
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:136:3
	reg [31:0] idcode_d;
	reg [31:0] idcode_q;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:137:3
	reg idcode_select;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:138:3
	reg bypass_select;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:139:3
	reg [31:0] dtmcs_d;
	reg [31:0] dtmcs_q;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:140:3
	reg bypass_d;
	reg bypass_q;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:142:3
	assign dmi_reset_o = dtmcs_q[16];
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:144:3
	function automatic [30:0] sv2v_cast_31;
		input reg [30:0] inp;
		sv2v_cast_31 = inp;
	endfunction
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:145:5
		idcode_d = idcode_q;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:146:5
		bypass_d = bypass_q;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:147:5
		dtmcs_d = dtmcs_q;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:149:5
		if (capture_dr_o) begin
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:150:7
			if (idcode_select)
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:150:26
				idcode_d = IdcodeValue;
			if (bypass_select)
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:151:26
				bypass_d = 1'b0;
			if (dtmcs_select_o)
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:153:9
				dtmcs_d = {20'h00001, dmi_error_i, 10'h071};
		end
		if (shift_dr_o) begin
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:167:7
			if (idcode_select)
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:167:27
				idcode_d = {td_i, sv2v_cast_31(idcode_q >> 1)};
			if (bypass_select)
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:168:27
				bypass_d = td_i;
			if (dtmcs_select_o)
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:169:27
				dtmcs_d = {td_i, sv2v_cast_31(dtmcs_q >> 1)};
		end
		if (test_logic_reset_o) begin
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:173:7
			idcode_d = IdcodeValue;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:174:7
			bypass_d = 1'b0;
		end
	end
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:181:3
	always @(*) begin : p_data_reg_sel
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:182:5
		dmi_access_o = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:183:5
		dtmcs_select_o = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:184:5
		idcode_select = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:185:5
		bypass_select = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:186:5
		(* full_case, parallel_case *)
		case (jtag_ir_q)
			sv2v_cast_154DA('h0):
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:187:18
				bypass_select = 1'b1;
			sv2v_cast_154DA('h1):
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:188:18
				idcode_select = 1'b1;
			sv2v_cast_154DA('h10):
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:189:18
				dtmcs_select_o = 1'b1;
			sv2v_cast_154DA('h11):
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:190:18
				dmi_access_o = 1'b1;
			sv2v_cast_154DA('h1f):
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:191:18
				bypass_select = 1'b1;
			default:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:192:18
				bypass_select = 1'b1;
		endcase
	end
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:199:3
	reg tdo_mux;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:201:3
	always @(*) begin : p_out_sel
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:203:5
		if (shift_ir)
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:204:7
			tdo_mux = jtag_ir_shift_q[0];
		else
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:207:7
			(* full_case, parallel_case *)
			case (jtag_ir_q)
				sv2v_cast_154DA('h1):
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:208:25
					tdo_mux = idcode_q[0];
				sv2v_cast_154DA('h10):
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:209:25
					tdo_mux = dtmcs_q[0];
				sv2v_cast_154DA('h11):
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:210:25
					tdo_mux = dmi_tdo_i;
				default:
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:211:25
					tdo_mux = bypass_q;
			endcase
	end
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:219:3
	wire tck_n;
	wire tck_ni;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:221:3
	cluster_clock_inverter i_tck_inv(
		.clk_i(tck_i),
		.clk_o(tck_ni)
	);
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:226:3
	pulp_clock_mux2 i_dft_tck_mux(
		.clk0_i(tck_ni),
		.clk1_i(tck_i),
		.clk_sel_i(testmode_i),
		.clk_o(tck_n)
	);
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:234:3
	always @(posedge tck_n or negedge trst_ni) begin : p_tdo_regs
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:235:5
		if (!trst_ni) begin
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:236:7
			td_o <= 1'b0;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:237:7
			tdo_oe_o <= 1'b0;
		end
		else begin
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:239:7
			td_o <= tdo_mux;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:240:7
			tdo_oe_o <= shift_ir | shift_dr_o;
		end
	end
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:247:3
	always @(*) begin : p_tap_fsm
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:249:5
		test_logic_reset_o = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:251:5
		capture_dr_o = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:252:5
		shift_dr_o = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:253:5
		update_dr_o = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:255:5
		capture_ir = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:256:5
		shift_ir = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:258:5
		update_ir = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:260:5
		(* full_case, parallel_case *)
		case (tap_state_q)
			4'd0: begin
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:262:9
				tap_state_d = (tms_i ? 4'd0 : 4'd1);
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:263:9
				test_logic_reset_o = 1'b1;
			end
			4'd1:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:266:9
				tap_state_d = (tms_i ? 4'd2 : 4'd1);
			4'd2:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:270:9
				tap_state_d = (tms_i ? 4'd9 : 4'd3);
			4'd3: begin
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:273:9
				capture_dr_o = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:274:9
				tap_state_d = (tms_i ? 4'd5 : 4'd4);
			end
			4'd4: begin
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:277:9
				shift_dr_o = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:278:9
				tap_state_d = (tms_i ? 4'd5 : 4'd4);
			end
			4'd5:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:281:9
				tap_state_d = (tms_i ? 4'd8 : 4'd6);
			4'd6:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:284:9
				tap_state_d = (tms_i ? 4'd7 : 4'd6);
			4'd7:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:287:9
				tap_state_d = (tms_i ? 4'd8 : 4'd4);
			4'd8: begin
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:290:9
				update_dr_o = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:291:9
				tap_state_d = (tms_i ? 4'd2 : 4'd1);
			end
			4'd9:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:295:9
				tap_state_d = (tms_i ? 4'd0 : 4'd10);
			4'd10: begin
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:302:9
				capture_ir = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:303:9
				tap_state_d = (tms_i ? 4'd12 : 4'd11);
			end
			4'd11: begin
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:310:9
				shift_ir = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:311:9
				tap_state_d = (tms_i ? 4'd12 : 4'd11);
			end
			4'd12:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:314:9
				tap_state_d = (tms_i ? 4'd15 : 4'd13);
			4'd13:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:318:9
				tap_state_d = (tms_i ? 4'd14 : 4'd13);
			4'd14:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:321:9
				tap_state_d = (tms_i ? 4'd15 : 4'd11);
			4'd15: begin
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:328:9
				update_ir = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:329:9
				tap_state_d = (tms_i ? 4'd2 : 4'd1);
			end
			default:
				;
		endcase
	end
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:335:3
	always @(posedge tck_i or negedge trst_ni) begin : p_regs
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:336:5
		if (!trst_ni) begin
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:337:7
			tap_state_q <= 4'd1;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:338:7
			idcode_q <= IdcodeValue;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:339:7
			bypass_q <= 1'b0;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:340:7
			dtmcs_q <= 1'sb0;
		end
		else begin
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:342:7
			tap_state_q <= tap_state_d;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:343:7
			idcode_q <= idcode_d;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:344:7
			bypass_q <= bypass_d;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag_tap.sv:345:7
			dtmcs_q <= dtmcs_d;
		end
	end
	initial _sv2v_0 = 0;
endmodule
