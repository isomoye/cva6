module axi_mux (
	clk_i,
	rst_ni,
	test_i,
	slv_reqs_i,
	slv_resps_o,
	mst_req_o,
	mst_resp_i
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:29:13
	parameter [31:0] SlvAxiIDWidth = 32'd0;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:30:26
	// removed localparam type slv_aw_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:31:26
	// removed localparam type mst_aw_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:32:26
	// removed localparam type w_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:33:26
	// removed localparam type slv_b_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:34:26
	// removed localparam type mst_b_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:35:26
	// removed localparam type slv_ar_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:36:26
	// removed localparam type mst_ar_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:37:26
	// removed localparam type slv_r_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:38:26
	// removed localparam type mst_r_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:39:26
	// removed localparam type slv_req_t
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:40:26
	// removed localparam type slv_resp_t
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:41:26
	// removed localparam type mst_req_t
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:42:26
	// removed localparam type mst_resp_t
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:43:13
	parameter [31:0] NoSlvPorts = 32'd0;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:45:13
	parameter [31:0] MaxWTrans = 32'd8;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:47:13
	parameter [0:0] FallThrough = 1'b0;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:49:13
	parameter [0:0] SpillAw = 1'b1;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:50:13
	parameter [0:0] SpillW = 1'b0;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:51:13
	parameter [0:0] SpillB = 1'b0;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:53:13
	parameter [0:0] SpillAr = 1'b1;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:54:13
	parameter [0:0] SpillR = 1'b0;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:56:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:57:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:58:3
	input wire test_i;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:60:3
	input wire [NoSlvPorts - 1:0] slv_reqs_i;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:61:3
	output wire [NoSlvPorts - 1:0] slv_resps_o;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:63:3
	output wire mst_req_o;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:64:3
	input wire mst_resp_i;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:67:3
	localparam [31:0] MstIdxBits = $clog2(NoSlvPorts);
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:68:3
	localparam [31:0] MstAxiIDWidth = SlvAxiIDWidth + MstIdxBits;
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:71:3
	function automatic [MstIdxBits - 1:0] sv2v_cast_753CC;
		input reg [MstIdxBits - 1:0] inp;
		sv2v_cast_753CC = inp;
	endfunction
	generate
		if (NoSlvPorts == 32'h00000001) begin : gen_no_mux
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:72:5
			assign mst_req_o = slv_reqs_i[0];
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:73:5
			assign slv_resps_o[0] = mst_resp_i;
		end
		else begin : gen_mux
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:77:5
			// removed localparam type switch_id_t
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:80:5
			wire [NoSlvPorts - 1:0] slv_aw_chans;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:81:5
			wire [NoSlvPorts - 1:0] slv_aw_valids;
			wire [NoSlvPorts - 1:0] slv_aw_readies;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:82:5
			wire [NoSlvPorts - 1:0] slv_w_chans;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:83:5
			wire [NoSlvPorts - 1:0] slv_w_valids;
			reg [NoSlvPorts - 1:0] slv_w_readies;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:84:5
			wire [NoSlvPorts - 1:0] slv_b_chans;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:85:5
			wire [NoSlvPorts - 1:0] slv_b_valids;
			wire [NoSlvPorts - 1:0] slv_b_readies;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:86:5
			wire [NoSlvPorts - 1:0] slv_ar_chans;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:87:5
			wire [NoSlvPorts - 1:0] slv_ar_valids;
			wire [NoSlvPorts - 1:0] slv_ar_readies;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:88:5
			wire [NoSlvPorts - 1:0] slv_r_chans;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:89:5
			wire [NoSlvPorts - 1:0] slv_r_valids;
			wire [NoSlvPorts - 1:0] slv_r_readies;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:93:5
			wire mst_aw_chan;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:94:5
			reg mst_aw_valid;
			wire mst_aw_ready;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:97:5
			wire aw_valid;
			reg aw_ready;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:102:5
			reg lock_aw_valid_d;
			reg lock_aw_valid_q;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:103:5
			reg load_aw_lock;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:106:5
			wire w_fifo_full;
			wire w_fifo_empty;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:107:5
			reg w_fifo_push;
			reg w_fifo_pop;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:108:5
			wire [MstIdxBits - 1:0] w_fifo_data;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:111:5
			wire mst_w_chan;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:112:5
			reg mst_w_valid;
			wire mst_w_ready;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:115:5
			wire [MstIdxBits - 1:0] switch_b_id;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:118:5
			wire mst_b_chan;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:119:5
			wire mst_b_valid;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:122:5
			wire mst_ar_chan;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:123:5
			wire ar_valid;
			wire ar_ready;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:126:5
			wire [MstIdxBits - 1:0] switch_r_id;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:129:5
			wire mst_r_chan;
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:130:5
			wire mst_r_valid;
			genvar _gv_i_8;
			for (_gv_i_8 = 0; _gv_i_8 < NoSlvPorts; _gv_i_8 = _gv_i_8 + 1) begin : gen_id_prepend
				localparam i = _gv_i_8;
				// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:136:7
				axi_id_prepend_C4E23 #(
					.NoBus(32'd1),
					.AxiIdWidthSlvPort(SlvAxiIDWidth),
					.AxiIdWidthMstPort(MstAxiIDWidth)
				) i_id_prepend(
					.pre_id_i(sv2v_cast_753CC(i)),
					.slv_aw_chans_i(slv_reqs_i[i].aw),
					.slv_aw_valids_i(slv_reqs_i[i].aw_valid),
					.slv_aw_readies_o(slv_resps_o[i].aw_ready),
					.slv_w_chans_i(slv_reqs_i[i].w),
					.slv_w_valids_i(slv_reqs_i[i].w_valid),
					.slv_w_readies_o(slv_resps_o[i].w_ready),
					.slv_b_chans_o(slv_resps_o[i].b),
					.slv_b_valids_o(slv_resps_o[i].b_valid),
					.slv_b_readies_i(slv_reqs_i[i].b_ready),
					.slv_ar_chans_i(slv_reqs_i[i].ar),
					.slv_ar_valids_i(slv_reqs_i[i].ar_valid),
					.slv_ar_readies_o(slv_resps_o[i].ar_ready),
					.slv_r_chans_o(slv_resps_o[i].r),
					.slv_r_valids_o(slv_resps_o[i].r_valid),
					.slv_r_readies_i(slv_reqs_i[i].r_ready),
					.mst_aw_chans_o(slv_aw_chans[i]),
					.mst_aw_valids_o(slv_aw_valids[i]),
					.mst_aw_readies_i(slv_aw_readies[i]),
					.mst_w_chans_o(slv_w_chans[i]),
					.mst_w_valids_o(slv_w_valids[i]),
					.mst_w_readies_i(slv_w_readies[i]),
					.mst_b_chans_i(slv_b_chans[i]),
					.mst_b_valids_i(slv_b_valids[i]),
					.mst_b_readies_o(slv_b_readies[i]),
					.mst_ar_chans_o(slv_ar_chans[i]),
					.mst_ar_valids_o(slv_ar_valids[i]),
					.mst_ar_readies_i(slv_ar_readies[i]),
					.mst_r_chans_i(slv_r_chans[i]),
					.mst_r_valids_i(slv_r_valids[i]),
					.mst_r_readies_o(slv_r_readies[i])
				);
			end
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:188:5
			localparam [31:0] sv2v_uu_i_aw_arbiter_NumIn = NoSlvPorts;
			localparam [31:0] sv2v_uu_i_aw_arbiter_IdxWidth = (sv2v_uu_i_aw_arbiter_NumIn > 32'd1 ? $unsigned($clog2(sv2v_uu_i_aw_arbiter_NumIn)) : 32'd1);
			// removed localparam type sv2v_uu_i_aw_arbiter_idx_t
			// removed localparam type sv2v_uu_i_aw_arbiter_rr_i
			localparam [sv2v_uu_i_aw_arbiter_IdxWidth - 1:0] sv2v_uu_i_aw_arbiter_ext_rr_i_0 = 1'sb0;
			rr_arb_tree_93F52 #(
				.NumIn(NoSlvPorts),
				.AxiVldRdy(1'b1),
				.LockIn(1'b1)
			) i_aw_arbiter(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.flush_i(1'b0),
				.rr_i(sv2v_uu_i_aw_arbiter_ext_rr_i_0),
				.req_i(slv_aw_valids),
				.gnt_o(slv_aw_readies),
				.data_i(slv_aw_chans),
				.gnt_i(aw_ready),
				.req_o(aw_valid),
				.data_o(mst_aw_chan),
				.idx_o()
			);
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:208:5
			always @(*) begin
				if (_sv2v_0)
					;
				// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:210:7
				lock_aw_valid_d = lock_aw_valid_q;
				// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:211:7
				load_aw_lock = 1'b0;
				// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:212:7
				w_fifo_push = 1'b0;
				// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:213:7
				mst_aw_valid = 1'b0;
				// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:214:7
				aw_ready = 1'b0;
				// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:216:7
				if (lock_aw_valid_q) begin
					// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:217:9
					mst_aw_valid = 1'b1;
					// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:219:9
					if (mst_aw_ready) begin
						// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:220:11
						aw_ready = 1'b1;
						// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:221:11
						lock_aw_valid_d = 1'b0;
						// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:222:11
						load_aw_lock = 1'b1;
					end
				end
				else
					// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:225:9
					if (!w_fifo_full && aw_valid) begin
						// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:226:11
						mst_aw_valid = 1'b1;
						// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:227:11
						w_fifo_push = 1'b1;
						// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:228:11
						if (mst_aw_ready)
							// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:229:13
							aw_ready = 1'b1;
						else begin
							// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:232:13
							lock_aw_valid_d = 1'b1;
							// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:233:13
							load_aw_lock = 1'b1;
						end
					end
			end
			// Trace: macro expansion of FFL at vendor/pulp-platform/axi/src/axi_mux.sv:239:128
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at vendor/pulp-platform/axi/src/axi_mux.sv:239:225
				if (!rst_ni)
					// Trace: macro expansion of FFL at vendor/pulp-platform/axi/src/axi_mux.sv:239:322
					lock_aw_valid_q <= 1'sb0;
				else
					// Trace: macro expansion of FFL at vendor/pulp-platform/axi/src/axi_mux.sv:239:512
					lock_aw_valid_q <= (load_aw_lock ? lock_aw_valid_d : lock_aw_valid_q);
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:241:5
			fifo_v3_7ABAC_FAAEB #(
				.dtype_MstIdxBits(MstIdxBits),
				.FALL_THROUGH(FallThrough),
				.DEPTH(MaxWTrans)
			) i_w_fifo(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.flush_i(1'b0),
				.testmode_i(test_i),
				.full_o(w_fifo_full),
				.empty_o(w_fifo_empty),
				.usage_o(),
				.data_i(mst_aw_chan.id[SlvAxiIDWidth+:MstIdxBits]),
				.push_i(w_fifo_push),
				.data_o(w_fifo_data),
				.pop_i(w_fifo_pop)
			);
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:259:5
			spill_register_736F9 #(.Bypass(~SpillAw)) i_aw_spill_reg(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.valid_i(mst_aw_valid),
				.ready_o(mst_aw_ready),
				.data_i(mst_aw_chan),
				.valid_o(mst_req_o.aw_valid),
				.ready_i(mst_resp_i.aw_ready),
				.data_o(mst_req_o.aw)
			);
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:277:5
			assign mst_w_chan = slv_w_chans[w_fifo_data];
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:278:5
			always @(*) begin
				if (_sv2v_0)
					;
				// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:280:7
				mst_w_valid = 1'b0;
				// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:281:7
				slv_w_readies = 1'sb0;
				// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:282:7
				w_fifo_pop = 1'b0;
				// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:284:7
				if (!w_fifo_empty) begin
					// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:286:9
					mst_w_valid = slv_w_valids[w_fifo_data];
					// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:287:9
					slv_w_readies[w_fifo_data] = mst_w_ready;
					// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:289:9
					w_fifo_pop = (slv_w_valids[w_fifo_data] & mst_w_ready) & mst_w_chan.last;
				end
			end
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:293:5
			spill_register_736F9 #(.Bypass(~SpillW)) i_w_spill_reg(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.valid_i(mst_w_valid),
				.ready_o(mst_w_ready),
				.data_i(mst_w_chan),
				.valid_o(mst_req_o.w_valid),
				.ready_i(mst_resp_i.w_ready),
				.data_o(mst_req_o.w)
			);
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:311:5
			assign slv_b_chans = {NoSlvPorts {mst_b_chan}};
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:313:5
			assign switch_b_id = mst_b_chan.id[SlvAxiIDWidth+:MstIdxBits];
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:314:5
			assign slv_b_valids = (mst_b_valid ? 1 << switch_b_id : {NoSlvPorts {1'sb0}});
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:316:5
			spill_register_736F9 #(.Bypass(~SpillB)) i_b_spill_reg(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.valid_i(mst_resp_i.b_valid),
				.ready_o(mst_req_o.b_ready),
				.data_i(mst_resp_i.b),
				.valid_o(mst_b_valid),
				.ready_i(slv_b_readies[switch_b_id]),
				.data_o(mst_b_chan)
			);
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:333:5
			localparam [31:0] sv2v_uu_i_ar_arbiter_NumIn = NoSlvPorts;
			localparam [31:0] sv2v_uu_i_ar_arbiter_IdxWidth = (sv2v_uu_i_ar_arbiter_NumIn > 32'd1 ? $unsigned($clog2(sv2v_uu_i_ar_arbiter_NumIn)) : 32'd1);
			// removed localparam type sv2v_uu_i_ar_arbiter_idx_t
			// removed localparam type sv2v_uu_i_ar_arbiter_rr_i
			localparam [sv2v_uu_i_ar_arbiter_IdxWidth - 1:0] sv2v_uu_i_ar_arbiter_ext_rr_i_0 = 1'sb0;
			rr_arb_tree_93F52 #(
				.NumIn(NoSlvPorts),
				.AxiVldRdy(1'b1),
				.LockIn(1'b1)
			) i_ar_arbiter(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.flush_i(1'b0),
				.rr_i(sv2v_uu_i_ar_arbiter_ext_rr_i_0),
				.req_i(slv_ar_valids),
				.gnt_o(slv_ar_readies),
				.data_i(slv_ar_chans),
				.gnt_i(ar_ready),
				.req_o(ar_valid),
				.data_o(mst_ar_chan),
				.idx_o()
			);
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:352:5
			spill_register_736F9 #(.Bypass(~SpillAr)) i_ar_spill_reg(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.valid_i(ar_valid),
				.ready_o(ar_ready),
				.data_i(mst_ar_chan),
				.valid_o(mst_req_o.ar_valid),
				.ready_i(mst_resp_i.ar_ready),
				.data_o(mst_req_o.ar)
			);
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:370:5
			assign slv_r_chans = {NoSlvPorts {mst_r_chan}};
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:372:5
			assign switch_r_id = mst_r_chan.id[SlvAxiIDWidth+:MstIdxBits];
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:373:5
			assign slv_r_valids = (mst_r_valid ? 1 << switch_r_id : {NoSlvPorts {1'sb0}});
			// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:375:5
			spill_register_736F9 #(.Bypass(~SpillR)) i_r_spill_reg(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.valid_i(mst_resp_i.r_valid),
				.ready_o(mst_req_o.r_ready),
				.data_i(mst_resp_i.r),
				.valid_o(mst_r_valid),
				.ready_i(slv_r_readies[switch_r_id]),
				.data_o(mst_r_chan)
			);
		end
	endgenerate
	// Trace: vendor/pulp-platform/axi/src/axi_mux.sv:392:3
	initial _sv2v_0 = 0;
endmodule
// removed module with interface ports: axi_mux_intf
