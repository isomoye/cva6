module dmi_jtag (
	clk_i,
	rst_ni,
	testmode_i,
	dmi_rst_no,
	dmi_req_o,
	dmi_req_valid_o,
	dmi_req_ready_i,
	dmi_resp_i,
	dmi_resp_ready_o,
	dmi_resp_valid_i,
	tck_i,
	tms_i,
	trst_ni,
	td_i,
	td_o,
	tdo_oe_o
);
	reg _sv2v_0;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:20:13
	parameter [31:0] IdcodeValue = 32'h00000001;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:22:3
	input wire clk_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:23:3
	input wire rst_ni;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:24:3
	input wire testmode_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:26:3
	output wire dmi_rst_no;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:27:3
	// removed localparam type dm_dtm_op_e
	// removed localparam type dm_dmi_req_t
	output wire [40:0] dmi_req_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:28:3
	output wire dmi_req_valid_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:29:3
	input wire dmi_req_ready_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:31:3
	// removed localparam type dm_dmi_resp_t
	input wire [33:0] dmi_resp_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:32:3
	output wire dmi_resp_ready_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:33:3
	input wire dmi_resp_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:35:3
	input wire tck_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:36:3
	input wire tms_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:37:3
	input wire trst_ni;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:38:3
	input wire td_i;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:39:3
	output wire td_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:40:3
	output wire tdo_oe_o;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:42:3
	assign dmi_rst_no = rst_ni;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:44:3
	wire test_logic_reset;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:45:3
	wire shift_dr;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:46:3
	wire update_dr;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:47:3
	wire capture_dr;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:48:3
	wire dmi_access;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:49:3
	wire dtmcs_select;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:50:3
	wire dmi_reset;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:51:3
	wire dmi_tdi;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:52:3
	wire dmi_tdo;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:54:3
	wire [40:0] dmi_req;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:55:3
	wire dmi_req_ready;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:56:3
	reg dmi_req_valid;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:58:3
	wire [33:0] dmi_resp;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:59:3
	wire dmi_resp_valid;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:60:3
	wire dmi_resp_ready;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:62:3
	// removed localparam type dmi_t
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:68:3
	// removed localparam type dmi_error_e
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:73:3
	// removed localparam type state_e
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:74:3
	reg [2:0] state_d;
	reg [2:0] state_q;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:76:3
	reg [40:0] dr_d;
	reg [40:0] dr_q;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:77:3
	reg [6:0] address_d;
	reg [6:0] address_q;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:78:3
	reg [31:0] data_d;
	reg [31:0] data_q;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:80:3
	wire [40:0] dmi;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:81:3
	assign dmi = dr_q;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:82:3
	assign dmi_req[40-:7] = address_q;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:83:3
	assign dmi_req[31-:32] = data_q;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:84:3
	assign dmi_req[33-:2] = (state_q == 3'd3 ? 2'h2 : 2'h1);
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:86:3
	assign dmi_resp_ready = 1'b1;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:88:3
	reg error_dmi_busy;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:89:3
	reg [1:0] error_d;
	reg [1:0] error_q;
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:91:3
	function automatic [1:0] sv2v_cast_2;
		input reg [1:0] inp;
		sv2v_cast_2 = inp;
	endfunction
	always @(*) begin : p_fsm
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:92:5
		error_dmi_busy = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:94:5
		state_d = state_q;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:95:5
		address_d = address_q;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:96:5
		data_d = data_q;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:97:5
		error_d = error_q;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:99:5
		dmi_req_valid = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:101:5
		(* full_case, parallel_case *)
		case (state_q)
			3'd0:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:104:9
				if ((dmi_access && update_dr) && (error_q == 2'h0)) begin
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:106:11
					address_d = dmi[40-:7];
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:107:11
					data_d = dmi[33-:32];
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:108:11
					if (sv2v_cast_2(dmi[1-:2]) == 2'h1)
						// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:109:13
						state_d = 3'd1;
					else if (sv2v_cast_2(dmi[1-:2]) == 2'h2)
						// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:111:13
						state_d = 3'd3;
				end
			3'd1: begin
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:118:9
				dmi_req_valid = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:119:9
				if (dmi_req_ready)
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:120:11
					state_d = 3'd2;
			end
			3'd2:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:126:9
				if (dmi_resp_valid) begin
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:127:11
					data_d = dmi_resp[33-:32];
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:128:11
					state_d = 3'd0;
				end
			3'd3: begin
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:133:9
				dmi_req_valid = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:135:9
				if (dmi_req_ready)
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:136:11
					state_d = 3'd4;
			end
			3'd4:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:142:9
				if (dmi_resp_valid)
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:143:11
					state_d = 3'd0;
			default:
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:149:9
				if (dmi_resp_valid)
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:150:11
					state_d = 3'd0;
		endcase
		if (update_dr && (state_q != 3'd0))
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:158:7
			error_dmi_busy = 1'b1;
		if (capture_dr && |{state_q == 3'd1, state_q == 3'd2})
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:165:7
			error_dmi_busy = 1'b1;
		if (error_dmi_busy)
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:169:7
			error_d = 2'h3;
		if ((update_dr && dmi_reset) && dtmcs_select)
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:173:7
			error_d = 2'h0;
	end
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:178:3
	assign dmi_tdo = dr_q[0];
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:180:3
	always @(*) begin : p_shift
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:181:5
		dr_d = dr_q;
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:183:5
		if (capture_dr) begin
			begin
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:184:7
				if (dmi_access) begin
					begin
						// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:185:9
						if ((error_q == 2'h0) && !error_dmi_busy)
							// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:186:11
							dr_d = {address_q, data_q, 2'h0};
						else if ((error_q == 2'h3) || error_dmi_busy)
							// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:189:11
							dr_d = {address_q, data_q, 2'h3};
					end
				end
			end
		end
		if (shift_dr) begin
			begin
				// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:195:7
				if (dmi_access)
					// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:196:9
					dr_d = {dmi_tdi, dr_q[40:1]};
			end
		end
		if (test_logic_reset)
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:201:7
			dr_d = 1'sb0;
	end
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:205:3
	always @(posedge tck_i or negedge trst_ni) begin : p_regs
		// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:206:5
		if (!trst_ni) begin
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:207:7
			dr_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:208:7
			state_q <= 3'd0;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:209:7
			address_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:210:7
			data_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:211:7
			error_q <= 2'h0;
		end
		else begin
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:213:7
			dr_q <= dr_d;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:214:7
			state_q <= state_d;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:215:7
			address_q <= address_d;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:216:7
			data_q <= data_d;
			// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:217:7
			error_q <= error_d;
		end
	end
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:224:3
	dmi_jtag_tap #(
		.IrLength(5),
		.IdcodeValue(IdcodeValue)
	) i_dmi_jtag_tap(
		.tck_i(tck_i),
		.tms_i(tms_i),
		.trst_ni(trst_ni),
		.td_i(td_i),
		.td_o(td_o),
		.tdo_oe_o(tdo_oe_o),
		.testmode_i(testmode_i),
		.test_logic_reset_o(test_logic_reset),
		.shift_dr_o(shift_dr),
		.update_dr_o(update_dr),
		.capture_dr_o(capture_dr),
		.dmi_access_o(dmi_access),
		.dtmcs_select_o(dtmcs_select),
		.dmi_reset_o(dmi_reset),
		.dmi_error_i(error_q),
		.dmi_tdi_o(dmi_tdi),
		.dmi_tdo_i(dmi_tdo)
	);
	// Trace: corev_apu/riscv-dbg/src/dmi_jtag.sv:250:3
	dmi_cdc i_dmi_cdc(
		.tck_i(tck_i),
		.trst_ni(trst_ni),
		.jtag_dmi_req_i(dmi_req),
		.jtag_dmi_ready_o(dmi_req_ready),
		.jtag_dmi_valid_i(dmi_req_valid),
		.jtag_dmi_resp_o(dmi_resp),
		.jtag_dmi_valid_o(dmi_resp_valid),
		.jtag_dmi_ready_i(dmi_resp_ready),
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.core_dmi_req_o(dmi_req_o),
		.core_dmi_valid_o(dmi_req_valid_o),
		.core_dmi_ready_i(dmi_req_ready_i),
		.core_dmi_resp_i(dmi_resp_i),
		.core_dmi_ready_o(dmi_resp_ready_o),
		.core_dmi_valid_i(dmi_resp_valid_i)
	);
	initial _sv2v_0 = 0;
endmodule
