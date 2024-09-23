module hpdcache_fifo_reg_39EDB_3F998 (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg_type
	// removed localparam type fifo_data_t_hpdcache_nline_t_HPDcacheCfg_type
	parameter [1349:0] fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg = 0;
	parameter [1349:0] fifo_data_t_hpdcache_nline_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:30:15
	parameter [31:0] FIFO_DEPTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:31:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:32:20
	// removed localparam type fifo_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:38:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:39:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:40:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:41:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:42:5
	input wire [(((2 + fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) + 1) + fifo_data_t_hpdcache_nline_t_HPDcacheCfg[383-:32]) - 1:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:43:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:44:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:45:5
	output wire [(((2 + fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) + 1) + fifo_data_t_hpdcache_nline_t_HPDcacheCfg[383-:32]) - 1:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:52:5
	function automatic [$clog2(FIFO_DEPTH) - 1:0] sv2v_cast_1CC33;
		input reg [$clog2(FIFO_DEPTH) - 1:0] inp;
		sv2v_cast_1CC33 = inp;
	endfunction
	generate
		if (FIFO_DEPTH == 1) begin : gen_sync_buffer
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:53:9
			hpdcache_sync_buffer_91A37_F5B7E #(
				.data_t_fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg(fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg),
				.data_t_fifo_data_t_hpdcache_nline_t_HPDcacheCfg(fifo_data_t_hpdcache_nline_t_HPDcacheCfg),
				.FEEDTHROUGH(FEEDTHROUGH)
			) i_sync_buffer(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.w_i(w_i),
				.wok_o(wok_o),
				.wdata_i(wdata_i),
				.r_i(r_i),
				.rok_o(rok_o),
				.rdata_o(rdata_o)
			);
		end
		else if (FIFO_DEPTH > 0) begin : gen_fifo
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:73:9
			// removed localparam type fifo_addr_t
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:78:9
			reg [(FIFO_DEPTH * (((2 + fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) + 1) + fifo_data_t_hpdcache_nline_t_HPDcacheCfg[383-:32])) - 1:0] fifo_mem_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:79:9
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:80:9
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:81:9
			reg crossover_q;
			reg crossover_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:82:9
			wire rexec;
			wire wexec;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:83:9
			wire rptr_max;
			wire wptr_max;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:84:9
			wire match_ptr;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:85:9
			wire empty;
			wire full;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:90:9
			assign match_ptr = wptr_q == rptr_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:92:9
			assign empty = match_ptr & ~crossover_q;
			assign full = match_ptr & crossover_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:95:9
			assign rok_o = ~empty | (FEEDTHROUGH & w_i);
			assign wok_o = ~full | (FEEDTHROUGH & r_i);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:98:9
			assign rexec = r_i & ~empty;
			assign wexec = w_i & ((FEEDTHROUGH & (((empty & ~r_i) | (full & r_i)) | (~full & ~empty))) | (~FEEDTHROUGH & ~full));
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:106:9
			assign rptr_max = rptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:107:9
			assign wptr_max = wptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:109:9
			always @(*) begin : fifo_ctrl_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:111:13
				rptr_d = rptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:112:13
				wptr_d = wptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:113:13
				crossover_d = crossover_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:115:13
				if (rexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:116:17
					rptr_d = (rptr_max ? 0 : rptr_q + 1);
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:120:17
					wptr_d = (wptr_max ? 0 : wptr_q + 1);
				if (wexec && wptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:124:17
					crossover_d = 1'b1;
				else if (rexec && rptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:126:17
					crossover_d = 1'b0;
			end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:133:9
			always @(posedge clk_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:13
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:24
					fifo_mem_q[wptr_q * (((2 + fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) + 1) + fifo_data_t_hpdcache_nline_t_HPDcacheCfg[383-:32])+:((2 + fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) + 1) + fifo_data_t_hpdcache_nline_t_HPDcacheCfg[383-:32]] <= wdata_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:138:9
			assign rdata_o = (FEEDTHROUGH && empty ? wdata_i : fifo_mem_q[rptr_q * (((2 + fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) + 1) + fifo_data_t_hpdcache_nline_t_HPDcacheCfg[383-:32])+:((2 + fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) + 1) + fifo_data_t_hpdcache_nline_t_HPDcacheCfg[383-:32]]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:143:9
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:145:13
				if (!rst_ni) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:146:17
					rptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:147:17
					wptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:148:17
					crossover_q <= 1'b0;
				end
				else begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:150:17
					rptr_q <= rptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:151:17
					wptr_q <= wptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:152:17
					crossover_q <= crossover_d;
				end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:160:9
			// removed an assertion item
			// rptr_ahead_wptr_assert : assert property (@(posedge clk_i) disable iff (!rst_ni)
			// 	((rptr_q <= wptr_q) && !crossover_q) || ((rptr_q >= wptr_q) && crossover_q)
			// ) else begin
			// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:163:17
			// 	$error("fifo: read pointer is ahead of the write pointer");
			// end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
module hpdcache_fifo_reg_49514_9F998 (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg_type
	// removed localparam type fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg_type
	parameter [1349:0] fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg = 0;
	parameter [1349:0] fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:30:15
	parameter [31:0] FIFO_DEPTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:31:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:32:20
	// removed localparam type fifo_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:38:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:39:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:40:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:41:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:42:5
	input wire [(fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32] * fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:43:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:44:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:45:5
	output wire [(fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32] * fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:52:5
	function automatic [$clog2(FIFO_DEPTH) - 1:0] sv2v_cast_1CC33;
		input reg [$clog2(FIFO_DEPTH) - 1:0] inp;
		sv2v_cast_1CC33 = inp;
	endfunction
	generate
		if (FIFO_DEPTH == 1) begin : gen_sync_buffer
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:53:9
			hpdcache_sync_buffer_1EE38_A38DF #(
				.data_t_fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg(fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg),
				.data_t_fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg(fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg),
				.FEEDTHROUGH(FEEDTHROUGH)
			) i_sync_buffer(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.w_i(w_i),
				.wok_o(wok_o),
				.wdata_i(wdata_i),
				.r_i(r_i),
				.rok_o(rok_o),
				.rdata_o(rdata_o)
			);
		end
		else if (FIFO_DEPTH > 0) begin : gen_fifo
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:73:9
			// removed localparam type fifo_addr_t
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:78:9
			reg [((FIFO_DEPTH * fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32]) * fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] fifo_mem_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:79:9
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:80:9
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:81:9
			reg crossover_q;
			reg crossover_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:82:9
			wire rexec;
			wire wexec;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:83:9
			wire rptr_max;
			wire wptr_max;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:84:9
			wire match_ptr;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:85:9
			wire empty;
			wire full;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:90:9
			assign match_ptr = wptr_q == rptr_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:92:9
			assign empty = match_ptr & ~crossover_q;
			assign full = match_ptr & crossover_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:95:9
			assign rok_o = ~empty | (FEEDTHROUGH & w_i);
			assign wok_o = ~full | (FEEDTHROUGH & r_i);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:98:9
			assign rexec = r_i & ~empty;
			assign wexec = w_i & ((FEEDTHROUGH & (((empty & ~r_i) | (full & r_i)) | (~full & ~empty))) | (~FEEDTHROUGH & ~full));
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:106:9
			assign rptr_max = rptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:107:9
			assign wptr_max = wptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:109:9
			always @(*) begin : fifo_ctrl_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:111:13
				rptr_d = rptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:112:13
				wptr_d = wptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:113:13
				crossover_d = crossover_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:115:13
				if (rexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:116:17
					rptr_d = (rptr_max ? 0 : rptr_q + 1);
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:120:17
					wptr_d = (wptr_max ? 0 : wptr_q + 1);
				if (wexec && wptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:124:17
					crossover_d = 1'b1;
				else if (rexec && rptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:126:17
					crossover_d = 1'b0;
			end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:133:9
			always @(posedge clk_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:13
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:24
					fifo_mem_q[fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * (wptr_q * fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32])+:fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32]] <= wdata_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:138:9
			assign rdata_o = (FEEDTHROUGH && empty ? wdata_i : fifo_mem_q[fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * (rptr_q * fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32])+:fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] * fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32]]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:143:9
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:145:13
				if (!rst_ni) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:146:17
					rptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:147:17
					wptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:148:17
					crossover_q <= 1'b0;
				end
				else begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:150:17
					rptr_q <= rptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:151:17
					wptr_q <= wptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:152:17
					crossover_q <= crossover_d;
				end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:160:9
			// removed an assertion item
			// rptr_ahead_wptr_assert : assert property (@(posedge clk_i) disable iff (!rst_ni)
			// 	((rptr_q <= wptr_q) && !crossover_q) || ((rptr_q >= wptr_q) && crossover_q)
			// ) else begin
			// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:163:17
			// 	$error("fifo: read pointer is ahead of the write pointer");
			// end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
module hpdcache_fifo_reg_77EEE_CBEAA (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg_type
	parameter [1349:0] fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:30:15
	parameter [31:0] FIFO_DEPTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:31:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:32:20
	// removed localparam type fifo_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:38:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:39:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:40:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:41:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:42:5
	input wire [(((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:43:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:44:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:45:5
	output wire [(((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:52:5
	function automatic [$clog2(FIFO_DEPTH) - 1:0] sv2v_cast_1CC33;
		input reg [$clog2(FIFO_DEPTH) - 1:0] inp;
		sv2v_cast_1CC33 = inp;
	endfunction
	generate
		if (FIFO_DEPTH == 1) begin : gen_sync_buffer
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:53:9
			hpdcache_sync_buffer_4FAFD_74451 #(
				.data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg(fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg),
				.FEEDTHROUGH(FEEDTHROUGH)
			) i_sync_buffer(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.w_i(w_i),
				.wok_o(wok_o),
				.wdata_i(wdata_i),
				.r_i(r_i),
				.rok_o(rok_o),
				.rdata_o(rdata_o)
			);
		end
		else if (FIFO_DEPTH > 0) begin : gen_fifo
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:73:9
			// removed localparam type fifo_addr_t
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:78:9
			reg [(((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (FIFO_DEPTH * ((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2)) - 1 : (FIFO_DEPTH * (1 - ((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1))) + ((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 0)):(((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? 0 : (((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1)] fifo_mem_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:79:9
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:80:9
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:81:9
			reg crossover_q;
			reg crossover_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:82:9
			wire rexec;
			wire wexec;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:83:9
			wire rptr_max;
			wire wptr_max;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:84:9
			wire match_ptr;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:85:9
			wire empty;
			wire full;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:90:9
			assign match_ptr = wptr_q == rptr_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:92:9
			assign empty = match_ptr & ~crossover_q;
			assign full = match_ptr & crossover_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:95:9
			assign rok_o = ~empty | (FEEDTHROUGH & w_i);
			assign wok_o = ~full | (FEEDTHROUGH & r_i);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:98:9
			assign rexec = r_i & ~empty;
			assign wexec = w_i & ((FEEDTHROUGH & (((empty & ~r_i) | (full & r_i)) | (~full & ~empty))) | (~FEEDTHROUGH & ~full));
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:106:9
			assign rptr_max = rptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:107:9
			assign wptr_max = wptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:109:9
			always @(*) begin : fifo_ctrl_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:111:13
				rptr_d = rptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:112:13
				wptr_d = wptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:113:13
				crossover_d = crossover_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:115:13
				if (rexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:116:17
					rptr_d = (rptr_max ? 0 : rptr_q + 1);
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:120:17
					wptr_d = (wptr_max ? 0 : wptr_q + 1);
				if (wexec && wptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:124:17
					crossover_d = 1'b1;
				else if (rexec && rptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:126:17
					crossover_d = 1'b0;
			end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:133:9
			always @(posedge clk_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:13
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:24
					fifo_mem_q[(((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? 0 : (((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) + (wptr_q * (((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2 : 1 - ((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1)))+:(((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2 : 1 - ((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1))] <= wdata_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:138:9
			assign rdata_o = (FEEDTHROUGH && empty ? wdata_i : fifo_mem_q[(((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? 0 : (((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) + (rptr_q * (((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2 : 1 - ((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1)))+:(((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2 : 1 - ((((fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1))]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:143:9
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:145:13
				if (!rst_ni) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:146:17
					rptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:147:17
					wptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:148:17
					crossover_q <= 1'b0;
				end
				else begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:150:17
					rptr_q <= rptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:151:17
					wptr_q <= wptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:152:17
					crossover_q <= crossover_d;
				end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:160:9
			// removed an assertion item
			// rptr_ahead_wptr_assert : assert property (@(posedge clk_i) disable iff (!rst_ni)
			// 	((rptr_q <= wptr_q) && !crossover_q) || ((rptr_q >= wptr_q) && crossover_q)
			// ) else begin
			// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:163:17
			// 	$error("fifo: read pointer is ahead of the write pointer");
			// end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
module hpdcache_fifo_reg_850F0_64A15 (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg_type
	parameter [1349:0] fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:30:15
	parameter [31:0] FIFO_DEPTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:31:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:32:20
	// removed localparam type fifo_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:38:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:39:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:40:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:41:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:42:5
	input wire [fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:43:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:44:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:45:5
	output wire [fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:52:5
	function automatic [$clog2(FIFO_DEPTH) - 1:0] sv2v_cast_1CC33;
		input reg [$clog2(FIFO_DEPTH) - 1:0] inp;
		sv2v_cast_1CC33 = inp;
	endfunction
	generate
		if (FIFO_DEPTH == 1) begin : gen_sync_buffer
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:53:9
			hpdcache_sync_buffer_59580_A7CEC #(
				.data_t_fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg(fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg),
				.FEEDTHROUGH(FEEDTHROUGH)
			) i_sync_buffer(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.w_i(w_i),
				.wok_o(wok_o),
				.wdata_i(wdata_i),
				.r_i(r_i),
				.rok_o(rok_o),
				.rdata_o(rdata_o)
			);
		end
		else if (FIFO_DEPTH > 0) begin : gen_fifo
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:73:9
			// removed localparam type fifo_addr_t
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:78:9
			reg [(FIFO_DEPTH * fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) - 1:0] fifo_mem_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:79:9
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:80:9
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:81:9
			reg crossover_q;
			reg crossover_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:82:9
			wire rexec;
			wire wexec;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:83:9
			wire rptr_max;
			wire wptr_max;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:84:9
			wire match_ptr;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:85:9
			wire empty;
			wire full;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:90:9
			assign match_ptr = wptr_q == rptr_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:92:9
			assign empty = match_ptr & ~crossover_q;
			assign full = match_ptr & crossover_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:95:9
			assign rok_o = ~empty | (FEEDTHROUGH & w_i);
			assign wok_o = ~full | (FEEDTHROUGH & r_i);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:98:9
			assign rexec = r_i & ~empty;
			assign wexec = w_i & ((FEEDTHROUGH & (((empty & ~r_i) | (full & r_i)) | (~full & ~empty))) | (~FEEDTHROUGH & ~full));
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:106:9
			assign rptr_max = rptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:107:9
			assign wptr_max = wptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:109:9
			always @(*) begin : fifo_ctrl_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:111:13
				rptr_d = rptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:112:13
				wptr_d = wptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:113:13
				crossover_d = crossover_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:115:13
				if (rexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:116:17
					rptr_d = (rptr_max ? 0 : rptr_q + 1);
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:120:17
					wptr_d = (wptr_max ? 0 : wptr_q + 1);
				if (wexec && wptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:124:17
					crossover_d = 1'b1;
				else if (rexec && rptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:126:17
					crossover_d = 1'b0;
			end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:133:9
			always @(posedge clk_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:13
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:24
					fifo_mem_q[wptr_q * fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]+:fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]] <= wdata_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:138:9
			assign rdata_o = (FEEDTHROUGH && empty ? wdata_i : fifo_mem_q[rptr_q * fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]+:fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:143:9
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:145:13
				if (!rst_ni) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:146:17
					rptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:147:17
					wptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:148:17
					crossover_q <= 1'b0;
				end
				else begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:150:17
					rptr_q <= rptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:151:17
					wptr_q <= wptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:152:17
					crossover_q <= crossover_d;
				end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:160:9
			// removed an assertion item
			// rptr_ahead_wptr_assert : assert property (@(posedge clk_i) disable iff (!rst_ni)
			// 	((rptr_q <= wptr_q) && !crossover_q) || ((rptr_q >= wptr_q) && crossover_q)
			// ) else begin
			// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:163:17
			// 	$error("fifo: read pointer is ahead of the write pointer");
			// end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
module hpdcache_fifo_reg_D868F_2B410 (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg_type
	parameter [1349:0] fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:30:15
	parameter [31:0] FIFO_DEPTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:31:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:32:20
	// removed localparam type fifo_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:38:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:39:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:40:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:41:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:42:5
	input wire [((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:43:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:44:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:45:5
	output wire [((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:52:5
	function automatic [$clog2(FIFO_DEPTH) - 1:0] sv2v_cast_1CC33;
		input reg [$clog2(FIFO_DEPTH) - 1:0] inp;
		sv2v_cast_1CC33 = inp;
	endfunction
	generate
		if (FIFO_DEPTH == 1) begin : gen_sync_buffer
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:53:9
			hpdcache_sync_buffer_55BF2_D4981 #(
				.data_t_fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg(fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg),
				.FEEDTHROUGH(FEEDTHROUGH)
			) i_sync_buffer(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.w_i(w_i),
				.wok_o(wok_o),
				.wdata_i(wdata_i),
				.r_i(r_i),
				.rok_o(rok_o),
				.rdata_o(rdata_o)
			);
		end
		else if (FIFO_DEPTH > 0) begin : gen_fifo
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:73:9
			// removed localparam type fifo_addr_t
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:78:9
			reg [((((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? (FIFO_DEPTH * (((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7)) - 1 : (FIFO_DEPTH * (1 - (((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))) + (((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 5)):((((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)] fifo_mem_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:79:9
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:80:9
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:81:9
			reg crossover_q;
			reg crossover_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:82:9
			wire rexec;
			wire wexec;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:83:9
			wire rptr_max;
			wire wptr_max;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:84:9
			wire match_ptr;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:85:9
			wire empty;
			wire full;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:90:9
			assign match_ptr = wptr_q == rptr_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:92:9
			assign empty = match_ptr & ~crossover_q;
			assign full = match_ptr & crossover_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:95:9
			assign rok_o = ~empty | (FEEDTHROUGH & w_i);
			assign wok_o = ~full | (FEEDTHROUGH & r_i);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:98:9
			assign rexec = r_i & ~empty;
			assign wexec = w_i & ((FEEDTHROUGH & (((empty & ~r_i) | (full & r_i)) | (~full & ~empty))) | (~FEEDTHROUGH & ~full));
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:106:9
			assign rptr_max = rptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:107:9
			assign wptr_max = wptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:109:9
			always @(*) begin : fifo_ctrl_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:111:13
				rptr_d = rptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:112:13
				wptr_d = wptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:113:13
				crossover_d = crossover_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:115:13
				if (rexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:116:17
					rptr_d = (rptr_max ? 0 : rptr_q + 1);
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:120:17
					wptr_d = (wptr_max ? 0 : wptr_q + 1);
				if (wexec && wptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:124:17
					crossover_d = 1'b1;
				else if (rexec && rptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:126:17
					crossover_d = 1'b0;
			end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:133:9
			always @(posedge clk_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:13
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:24
					fifo_mem_q[((((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) + (wptr_q * ((((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)))+:((((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))] <= wdata_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:138:9
			assign rdata_o = (FEEDTHROUGH && empty ? wdata_i : fifo_mem_q[((((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) + (rptr_q * ((((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)))+:((((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:143:9
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:145:13
				if (!rst_ni) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:146:17
					rptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:147:17
					wptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:148:17
					crossover_q <= 1'b0;
				end
				else begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:150:17
					rptr_q <= rptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:151:17
					wptr_q <= wptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:152:17
					crossover_q <= crossover_d;
				end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:160:9
			// removed an assertion item
			// rptr_ahead_wptr_assert : assert property (@(posedge clk_i) disable iff (!rst_ni)
			// 	((rptr_q <= wptr_q) && !crossover_q) || ((rptr_q >= wptr_q) && crossover_q)
			// ) else begin
			// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:163:17
			// 	$error("fifo: read pointer is ahead of the write pointer");
			// end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
module hpdcache_fifo_reg_C7CE8_7E04B (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type fifo_data_t_HPDcacheCfg_type
	// removed localparam type fifo_data_t_WBUF_TAG_WIDTH_type
	parameter [1349:0] fifo_data_t_HPDcacheCfg = 0;
	parameter [31:0] fifo_data_t_WBUF_TAG_WIDTH = 0;
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:30:15
	parameter [31:0] FIFO_DEPTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:31:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:32:20
	// removed localparam type fifo_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:38:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:39:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:40:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:41:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:42:5
	input wire [(fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:43:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:44:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:45:5
	output wire [(fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:52:5
	function automatic [$clog2(FIFO_DEPTH) - 1:0] sv2v_cast_1CC33;
		input reg [$clog2(FIFO_DEPTH) - 1:0] inp;
		sv2v_cast_1CC33 = inp;
	endfunction
	generate
		if (FIFO_DEPTH == 1) begin : gen_sync_buffer
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:53:9
			hpdcache_sync_buffer_3A8E4_D629C #(
				.data_t_fifo_data_t_HPDcacheCfg(fifo_data_t_HPDcacheCfg),
				.data_t_fifo_data_t_WBUF_TAG_WIDTH(fifo_data_t_WBUF_TAG_WIDTH),
				.FEEDTHROUGH(FEEDTHROUGH)
			) i_sync_buffer(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.w_i(w_i),
				.wok_o(wok_o),
				.wdata_i(wdata_i),
				.r_i(r_i),
				.rok_o(rok_o),
				.rdata_o(rdata_o)
			);
		end
		else if (FIFO_DEPTH > 0) begin : gen_fifo
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:73:9
			// removed localparam type fifo_addr_t
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:78:9
			reg [(((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0) >= 0 ? (FIFO_DEPTH * ((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 1)) - 1 : (FIFO_DEPTH * (1 - ((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0))) + ((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) - 1)):(((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0) >= 0 ? 0 : (fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0)] fifo_mem_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:79:9
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:80:9
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:81:9
			reg crossover_q;
			reg crossover_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:82:9
			wire rexec;
			wire wexec;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:83:9
			wire rptr_max;
			wire wptr_max;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:84:9
			wire match_ptr;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:85:9
			wire empty;
			wire full;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:90:9
			assign match_ptr = wptr_q == rptr_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:92:9
			assign empty = match_ptr & ~crossover_q;
			assign full = match_ptr & crossover_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:95:9
			assign rok_o = ~empty | (FEEDTHROUGH & w_i);
			assign wok_o = ~full | (FEEDTHROUGH & r_i);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:98:9
			assign rexec = r_i & ~empty;
			assign wexec = w_i & ((FEEDTHROUGH & (((empty & ~r_i) | (full & r_i)) | (~full & ~empty))) | (~FEEDTHROUGH & ~full));
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:106:9
			assign rptr_max = rptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:107:9
			assign wptr_max = wptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:109:9
			always @(*) begin : fifo_ctrl_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:111:13
				rptr_d = rptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:112:13
				wptr_d = wptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:113:13
				crossover_d = crossover_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:115:13
				if (rexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:116:17
					rptr_d = (rptr_max ? 0 : rptr_q + 1);
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:120:17
					wptr_d = (wptr_max ? 0 : wptr_q + 1);
				if (wexec && wptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:124:17
					crossover_d = 1'b1;
				else if (rexec && rptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:126:17
					crossover_d = 1'b0;
			end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:133:9
			always @(posedge clk_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:13
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:24
					fifo_mem_q[(((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0) >= 0 ? 0 : (fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0) + (wptr_q * (((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0) >= 0 ? (fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 1 : 1 - ((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0)))+:(((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0) >= 0 ? (fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 1 : 1 - ((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0))] <= wdata_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:138:9
			assign rdata_o = (FEEDTHROUGH && empty ? wdata_i : fifo_mem_q[(((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0) >= 0 ? 0 : (fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0) + (rptr_q * (((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0) >= 0 ? (fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 1 : 1 - ((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0)))+:(((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0) >= 0 ? (fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 1 : 1 - ((fifo_data_t_WBUF_TAG_WIDTH + fifo_data_t_HPDcacheCfg[95-:32]) + 0))]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:143:9
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:145:13
				if (!rst_ni) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:146:17
					rptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:147:17
					wptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:148:17
					crossover_q <= 1'b0;
				end
				else begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:150:17
					rptr_q <= rptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:151:17
					wptr_q <= wptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:152:17
					crossover_q <= crossover_d;
				end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:160:9
			// removed an assertion item
			// rptr_ahead_wptr_assert : assert property (@(posedge clk_i) disable iff (!rst_ni)
			// 	((rptr_q <= wptr_q) && !crossover_q) || ((rptr_q >= wptr_q) && crossover_q)
			// ) else begin
			// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:163:17
			// 	$error("fifo: read pointer is ahead of the write pointer");
			// end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
module hpdcache_fifo_reg_F03C9_21C1E (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type fifo_data_t_HPDcacheCfg_type
	// removed localparam type fifo_data_t_WBUF_TAG_WIDTH_type
	parameter [1349:0] fifo_data_t_HPDcacheCfg = 0;
	parameter [31:0] fifo_data_t_WBUF_TAG_WIDTH = 0;
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:30:15
	parameter [31:0] FIFO_DEPTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:31:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:32:20
	// removed localparam type fifo_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:38:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:39:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:40:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:41:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:42:5
	input wire [(fifo_data_t_HPDcacheCfg[63-:32] + fifo_data_t_WBUF_TAG_WIDTH) - 1:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:43:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:44:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:45:5
	output wire [(fifo_data_t_HPDcacheCfg[63-:32] + fifo_data_t_WBUF_TAG_WIDTH) - 1:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:52:5
	function automatic [$clog2(FIFO_DEPTH) - 1:0] sv2v_cast_1CC33;
		input reg [$clog2(FIFO_DEPTH) - 1:0] inp;
		sv2v_cast_1CC33 = inp;
	endfunction
	generate
		if (FIFO_DEPTH == 1) begin : gen_sync_buffer
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:53:9
			hpdcache_sync_buffer_AC0A5_5EFB1 #(
				.data_t_fifo_data_t_HPDcacheCfg(fifo_data_t_HPDcacheCfg),
				.data_t_fifo_data_t_WBUF_TAG_WIDTH(fifo_data_t_WBUF_TAG_WIDTH),
				.FEEDTHROUGH(FEEDTHROUGH)
			) i_sync_buffer(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.w_i(w_i),
				.wok_o(wok_o),
				.wdata_i(wdata_i),
				.r_i(r_i),
				.rok_o(rok_o),
				.rdata_o(rdata_o)
			);
		end
		else if (FIFO_DEPTH > 0) begin : gen_fifo
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:73:9
			// removed localparam type fifo_addr_t
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:78:9
			reg [(FIFO_DEPTH * (fifo_data_t_HPDcacheCfg[63-:32] + fifo_data_t_WBUF_TAG_WIDTH)) - 1:0] fifo_mem_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:79:9
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] rptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:80:9
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_q;
			reg [$clog2(FIFO_DEPTH) - 1:0] wptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:81:9
			reg crossover_q;
			reg crossover_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:82:9
			wire rexec;
			wire wexec;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:83:9
			wire rptr_max;
			wire wptr_max;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:84:9
			wire match_ptr;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:85:9
			wire empty;
			wire full;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:90:9
			assign match_ptr = wptr_q == rptr_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:92:9
			assign empty = match_ptr & ~crossover_q;
			assign full = match_ptr & crossover_q;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:95:9
			assign rok_o = ~empty | (FEEDTHROUGH & w_i);
			assign wok_o = ~full | (FEEDTHROUGH & r_i);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:98:9
			assign rexec = r_i & ~empty;
			assign wexec = w_i & ((FEEDTHROUGH & (((empty & ~r_i) | (full & r_i)) | (~full & ~empty))) | (~FEEDTHROUGH & ~full));
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:106:9
			assign rptr_max = rptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:107:9
			assign wptr_max = wptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:109:9
			always @(*) begin : fifo_ctrl_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:111:13
				rptr_d = rptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:112:13
				wptr_d = wptr_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:113:13
				crossover_d = crossover_q;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:115:13
				if (rexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:116:17
					rptr_d = (rptr_max ? 0 : rptr_q + 1);
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:120:17
					wptr_d = (wptr_max ? 0 : wptr_q + 1);
				if (wexec && wptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:124:17
					crossover_d = 1'b1;
				else if (rexec && rptr_max)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:126:17
					crossover_d = 1'b0;
			end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:133:9
			always @(posedge clk_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:13
				if (wexec)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:135:24
					fifo_mem_q[wptr_q * (fifo_data_t_HPDcacheCfg[63-:32] + fifo_data_t_WBUF_TAG_WIDTH)+:fifo_data_t_HPDcacheCfg[63-:32] + fifo_data_t_WBUF_TAG_WIDTH] <= wdata_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:138:9
			assign rdata_o = (FEEDTHROUGH && empty ? wdata_i : fifo_mem_q[rptr_q * (fifo_data_t_HPDcacheCfg[63-:32] + fifo_data_t_WBUF_TAG_WIDTH)+:fifo_data_t_HPDcacheCfg[63-:32] + fifo_data_t_WBUF_TAG_WIDTH]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:143:9
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:145:13
				if (!rst_ni) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:146:17
					rptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:147:17
					wptr_q <= 0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:148:17
					crossover_q <= 1'b0;
				end
				else begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:150:17
					rptr_q <= rptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:151:17
					wptr_q <= wptr_d;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:152:17
					crossover_q <= crossover_d;
				end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:160:9
			// removed an assertion item
			// rptr_ahead_wptr_assert : assert property (@(posedge clk_i) disable iff (!rst_ni)
			// 	((rptr_q <= wptr_q) && !crossover_q) || ((rptr_q >= wptr_q) && crossover_q)
			// ) else begin
			// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv:163:17
			// 	$error("fifo: read pointer is ahead of the write pointer");
			// end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
