module axi_atop_filter_BF115 (
	clk_i,
	rst_ni,
	slv_req_i,
	slv_resp_o,
	mst_req_o,
	mst_resp_i
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:39:13
	parameter [31:0] AxiIdWidth = 0;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:41:13
	parameter [31:0] AxiMaxWriteTxns = 0;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:43:18
	// removed localparam type req_t
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:45:18
	// removed localparam type resp_t
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:48:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:50:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:52:3
	input wire slv_req_i;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:54:3
	output reg slv_resp_o;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:56:3
	output reg mst_req_o;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:58:3
	input wire mst_resp_i;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:62:3
	localparam [31:0] COUNTER_WIDTH = (AxiMaxWriteTxns == 1 ? 2 : $clog2(AxiMaxWriteTxns + 1));
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:63:3
	// removed localparam type cnt_t
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:67:3
	reg [(1 + COUNTER_WIDTH) - 1:0] w_cnt_d;
	reg [(1 + COUNTER_WIDTH) - 1:0] w_cnt_q;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:69:3
	// removed localparam type w_state_e
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:72:3
	reg [2:0] w_state_d;
	reg [2:0] w_state_q;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:74:3
	// removed localparam type r_state_e
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:75:3
	reg [1:0] r_state_d;
	reg [1:0] r_state_q;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:77:3
	// removed localparam type id_t
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:78:3
	reg [AxiIdWidth - 1:0] id_d;
	reg [AxiIdWidth - 1:0] id_q;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:80:3
	// removed localparam type len_t
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:81:3
	reg [7:0] r_beats_d;
	reg [7:0] r_beats_q;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:83:3
	// removed localparam type r_resp_cmd_t
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:86:3
	wire [7:0] r_resp_cmd_push;
	wire [7:0] r_resp_cmd_pop;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:88:3
	wire aw_without_complete_w_downstream;
	wire complete_w_without_aw_downstream;
	reg r_resp_cmd_push_valid;
	wire r_resp_cmd_push_ready;
	wire r_resp_cmd_pop_valid;
	reg r_resp_cmd_pop_ready;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:95:3
	assign aw_without_complete_w_downstream = !w_cnt_q[COUNTER_WIDTH + 0] && (w_cnt_q[COUNTER_WIDTH - 1-:COUNTER_WIDTH] > 0);
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:97:3
	assign complete_w_without_aw_downstream = w_cnt_q[COUNTER_WIDTH + 0] && &w_cnt_q[COUNTER_WIDTH - 1-:COUNTER_WIDTH];
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:100:3
	localparam axi_pkg_ATOP_ATOMICSTORE = 2'b01;
	localparam axi_pkg_ATOP_NONE = 2'b00;
	localparam axi_pkg_RESP_SLVERR = 2'b10;
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:103:5
		mst_req_o.aw_valid = 1'b0;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:104:5
		slv_resp_o.aw_ready = 1'b0;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:105:5
		mst_req_o.w_valid = 1'b0;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:106:5
		slv_resp_o.w_ready = 1'b0;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:108:5
		mst_req_o.b_ready = slv_req_i.b_ready;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:109:5
		slv_resp_o.b_valid = mst_resp_i.b_valid;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:110:5
		slv_resp_o.b = mst_resp_i.b;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:112:5
		id_d = id_q;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:114:5
		r_resp_cmd_push_valid = 1'b0;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:116:5
		w_state_d = w_state_q;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:118:5
		(* full_case, parallel_case *)
		case (w_state_q)
			3'd0: begin
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:121:9
				if (complete_w_without_aw_downstream || (w_cnt_q[COUNTER_WIDTH - 1-:COUNTER_WIDTH] < AxiMaxWriteTxns)) begin
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:122:11
					mst_req_o.aw_valid = slv_req_i.aw_valid;
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:123:11
					slv_resp_o.aw_ready = mst_resp_i.aw_ready;
				end
				if (aw_without_complete_w_downstream || ((slv_req_i.aw_valid && (slv_req_i.aw.atop[5:4] == axi_pkg_ATOP_NONE)) && !complete_w_without_aw_downstream)) begin
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:132:11
					mst_req_o.w_valid = slv_req_i.w_valid;
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:133:11
					slv_resp_o.w_ready = mst_resp_i.w_ready;
				end
				if (slv_req_i.aw_valid && (slv_req_i.aw.atop[5:4] != axi_pkg_ATOP_NONE)) begin
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:137:11
					mst_req_o.aw_valid = 1'b0;
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:138:11
					slv_resp_o.aw_ready = 1'b1;
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:139:11
					id_d = slv_req_i.aw.id;
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:141:11
					if (slv_req_i.aw.atop[5:4] != axi_pkg_ATOP_ATOMICSTORE)
						// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:145:13
						r_resp_cmd_push_valid = 1'b1;
					if (aw_without_complete_w_downstream)
						// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:149:13
						w_state_d = 3'd1;
					else begin
						// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:152:13
						mst_req_o.w_valid = 1'b0;
						// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:153:13
						slv_resp_o.w_ready = 1'b1;
						// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:154:13
						if (slv_req_i.w_valid && slv_req_i.w.last) begin
							begin
								// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:158:15
								if (slv_resp_o.b_valid && !slv_req_i.b_ready)
									// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:159:17
									w_state_d = 3'd3;
								else
									// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:161:17
									w_state_d = 3'd4;
							end
						end
						else
							// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:165:15
							w_state_d = 3'd2;
					end
				end
			end
			3'd1:
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:173:9
				if (aw_without_complete_w_downstream) begin
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:174:11
					mst_req_o.w_valid = slv_req_i.w_valid;
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:175:11
					slv_resp_o.w_ready = mst_resp_i.w_ready;
				end
				else begin
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:178:11
					slv_resp_o.w_ready = 1'b1;
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:179:11
					if (slv_req_i.w_valid && slv_req_i.w.last) begin
						begin
							// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:181:13
							if (slv_resp_o.b_valid && !slv_req_i.b_ready)
								// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:182:15
								w_state_d = 3'd3;
							else
								// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:184:15
								w_state_d = 3'd4;
						end
					end
					else
						// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:188:13
						w_state_d = 3'd2;
				end
			3'd2: begin
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:195:9
				slv_resp_o.w_ready = 1'b1;
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:196:9
				if (slv_req_i.w_valid && slv_req_i.w.last) begin
					begin
						// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:197:11
						if (slv_resp_o.b_valid && !slv_req_i.b_ready)
							// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:198:13
							w_state_d = 3'd3;
						else
							// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:200:13
							w_state_d = 3'd4;
					end
				end
			end
			3'd3:
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:207:9
				if (slv_resp_o.b_valid && slv_req_i.b_ready)
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:208:11
					w_state_d = 3'd4;
			3'd4: begin
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:214:9
				mst_req_o.b_ready = 1'b0;
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:218:9
				slv_resp_o.b = 1'sb0;
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:219:9
				slv_resp_o.b.id = id_q;
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:220:9
				slv_resp_o.b.resp = axi_pkg_RESP_SLVERR;
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:221:9
				slv_resp_o.b_valid = 1'b1;
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:222:9
				if (slv_req_i.b_ready) begin
					begin
						// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:225:11
						if (r_resp_cmd_pop_valid && !r_resp_cmd_pop_ready)
							// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:226:13
							w_state_d = 3'd5;
						else
							// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:228:13
							w_state_d = 3'd0;
					end
				end
			end
			3'd5:
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:236:9
				if (!r_resp_cmd_pop_valid)
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:237:11
					w_state_d = 3'd0;
			default:
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:241:16
				w_state_d = 3'd0;
		endcase
	end
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:247:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:249:5
		mst_req_o.aw = slv_req_i.aw;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:250:5
		mst_req_o.aw.atop = 1'sb0;
	end
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:252:3
	wire [$bits(type(mst_req_o.w)):1] sv2v_tmp_78014;
	assign sv2v_tmp_78014 = slv_req_i.w;
	always @(*) mst_req_o.w = sv2v_tmp_78014;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:255:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:258:5
		slv_resp_o.r = mst_resp_i.r;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:259:5
		slv_resp_o.r_valid = mst_resp_i.r_valid;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:260:5
		mst_req_o.r_ready = slv_req_i.r_ready;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:262:5
		r_resp_cmd_pop_ready = 1'b0;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:264:5
		r_beats_d = r_beats_q;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:266:5
		r_state_d = r_state_q;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:268:5
		(* full_case, parallel_case *)
		case (r_state_q)
			2'd0:
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:270:9
				if (mst_resp_i.r_valid && !slv_req_i.r_ready)
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:271:11
					r_state_d = 2'd2;
				else if (r_resp_cmd_pop_valid) begin
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:276:11
					r_beats_d = r_resp_cmd_pop[7-:8];
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:277:11
					r_state_d = 2'd1;
				end
			2'd1: begin
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:282:9
				mst_req_o.r_ready = 1'b0;
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:283:9
				slv_resp_o.r = 1'sb0;
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:284:9
				slv_resp_o.r.id = id_q;
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:285:9
				slv_resp_o.r.resp = axi_pkg_RESP_SLVERR;
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:286:9
				slv_resp_o.r.last = r_beats_q == {8 {1'sb0}};
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:287:9
				slv_resp_o.r_valid = 1'b1;
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:288:9
				if (slv_req_i.r_ready) begin
					begin
						// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:289:11
						if (slv_resp_o.r.last) begin
							// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:290:13
							r_resp_cmd_pop_ready = 1'b1;
							// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:291:13
							r_state_d = 2'd0;
						end
						else
							// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:293:13
							r_beats_d = r_beats_d - 1;
					end
				end
			end
			2'd2:
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:299:9
				if (mst_resp_i.r_valid && slv_req_i.r_ready)
					// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:300:11
					r_state_d = 2'd0;
			default:
				// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:304:16
				r_state_d = 2'd0;
		endcase
	end
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:308:3
	wire [$bits(type(mst_req_o.ar)):1] sv2v_tmp_93666;
	assign sv2v_tmp_93666 = slv_req_i.ar;
	always @(*) mst_req_o.ar = sv2v_tmp_93666;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:309:3
	wire [$bits(type(mst_req_o.ar_valid)):1] sv2v_tmp_113EA;
	assign sv2v_tmp_113EA = slv_req_i.ar_valid;
	always @(*) mst_req_o.ar_valid = sv2v_tmp_113EA;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:310:3
	wire [$bits(type(slv_resp_o.ar_ready)):1] sv2v_tmp_EF1C4;
	assign sv2v_tmp_EF1C4 = mst_resp_i.ar_ready;
	always @(*) slv_resp_o.ar_ready = sv2v_tmp_EF1C4;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:313:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:314:5
		w_cnt_d = w_cnt_q;
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:315:5
		if (mst_req_o.aw_valid && mst_resp_i.aw_ready)
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:316:7
			w_cnt_d[COUNTER_WIDTH - 1-:COUNTER_WIDTH] = w_cnt_d[COUNTER_WIDTH - 1-:COUNTER_WIDTH] + 1;
		if ((mst_req_o.w_valid && mst_resp_i.w_ready) && mst_req_o.w.last)
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:319:7
			w_cnt_d[COUNTER_WIDTH - 1-:COUNTER_WIDTH] = w_cnt_d[COUNTER_WIDTH - 1-:COUNTER_WIDTH] - 1;
		if (w_cnt_q[COUNTER_WIDTH + 0] && (w_cnt_d[COUNTER_WIDTH - 1-:COUNTER_WIDTH] == {COUNTER_WIDTH * 1 {1'sb0}}))
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:322:7
			w_cnt_d[COUNTER_WIDTH + 0] = 1'b0;
		else if ((w_cnt_q[COUNTER_WIDTH - 1-:COUNTER_WIDTH] == {COUNTER_WIDTH * 1 {1'sb0}}) && &w_cnt_d[COUNTER_WIDTH - 1-:COUNTER_WIDTH])
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:324:7
			w_cnt_d[COUNTER_WIDTH + 0] = 1'b1;
	end
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:328:3
	function automatic [COUNTER_WIDTH - 1:0] sv2v_cast_B90DC;
		input reg [COUNTER_WIDTH - 1:0] inp;
		sv2v_cast_B90DC = inp;
	endfunction
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:329:5
		if (!rst_ni) begin
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:330:7
			id_q <= 1'sb0;
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:331:7
			r_beats_q <= 1'sb0;
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:332:7
			r_state_q <= 2'd0;
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:333:7
			w_cnt_q <= {1'b0, sv2v_cast_B90DC(1'sb0)};
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:334:7
			w_state_q <= 3'd0;
		end
		else begin
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:336:7
			id_q <= id_d;
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:337:7
			r_beats_q <= r_beats_d;
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:338:7
			r_state_q <= r_state_d;
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:339:7
			w_cnt_q <= w_cnt_d;
			// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:340:7
			w_state_q <= w_state_d;
		end
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:344:3
	stream_register_11179 r_resp_cmd(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.clr_i(1'b0),
		.testmode_i(1'b0),
		.valid_i(r_resp_cmd_push_valid),
		.ready_o(r_resp_cmd_push_ready),
		.data_i(r_resp_cmd_push),
		.valid_o(r_resp_cmd_pop_valid),
		.ready_i(r_resp_cmd_pop_ready),
		.data_o(r_resp_cmd_pop)
	);
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:358:3
	assign r_resp_cmd_push[7-:8] = slv_req_i.aw.len;
	// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:362:3
	initial begin : p_assertions
		// Trace: vendor/pulp-platform/axi/src/axi_atop_filter.sv:363:5
	end
	initial _sv2v_0 = 0;
endmodule
// removed module with interface ports: axi_atop_filter_intf
