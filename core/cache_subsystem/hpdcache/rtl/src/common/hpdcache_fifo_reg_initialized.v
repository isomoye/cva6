module hpdcache_fifo_reg_initialized (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o,
	initial_value_i
);
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:31:15
	parameter [31:0] FIFO_DEPTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:32:20
	// removed localparam type fifo_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:38:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:39:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:40:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:41:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:42:5
	input wire wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:43:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:44:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:45:5
	output wire rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:46:5
	input wire [FIFO_DEPTH - 1:0] initial_value_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:52:5
	// removed localparam type fifo_addr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:57:5
	reg [FIFO_DEPTH - 1:0] fifo_mem_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:58:5
	reg [$clog2(FIFO_DEPTH) - 1:0] rptr_q;
	reg [$clog2(FIFO_DEPTH) - 1:0] rptr_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:59:5
	reg [$clog2(FIFO_DEPTH) - 1:0] wptr_q;
	reg [$clog2(FIFO_DEPTH) - 1:0] wptr_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:60:5
	reg crossover_q;
	reg crossover_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:61:5
	wire rexec;
	wire wexec;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:62:5
	wire rptr_max;
	wire wptr_max;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:63:5
	wire match_ptr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:68:5
	assign match_ptr = wptr_q == rptr_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:69:5
	assign rok_o = (match_ptr ? crossover_q : 1'b1);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:70:5
	assign wok_o = (match_ptr ? ~crossover_q : 1'b1);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:71:5
	assign rexec = rok_o & r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:72:5
	assign wexec = wok_o & w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:77:5
	function automatic [$clog2(FIFO_DEPTH) - 1:0] sv2v_cast_1CC33;
		input reg [$clog2(FIFO_DEPTH) - 1:0] inp;
		sv2v_cast_1CC33 = inp;
	endfunction
	assign rptr_max = rptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:78:5
	assign wptr_max = wptr_q == sv2v_cast_1CC33(FIFO_DEPTH - 1);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:80:5
	always @(*) begin : rptr_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:82:9
		if (rexec)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:83:13
			rptr_d = (rptr_max ? 0 : rptr_q + 1);
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:85:13
			rptr_d = rptr_q;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:89:5
	always @(*) begin : wptr_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:91:9
		if (wexec)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:92:13
			wptr_d = (wptr_max ? 0 : wptr_q + 1);
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:94:13
			wptr_d = wptr_q;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:98:5
	always @(*) begin : crossover_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:100:9
		if (rexec && rptr_max)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:101:13
			crossover_d = 1'b0;
		else if (wexec && wptr_max)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:103:13
			crossover_d = 1'b1;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:105:13
			crossover_d = crossover_q;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:112:5
	always @(posedge clk_i)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:114:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:115:13
			fifo_mem_q <= initial_value_i;
		else if (wexec)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:116:29
			fifo_mem_q[wptr_q] <= wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:119:5
	assign rdata_o = fifo_mem_q[rptr_q];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:124:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:126:9
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:127:13
			rptr_q <= 0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:128:13
			wptr_q <= 0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:129:13
			crossover_q <= 1'b1;
		end
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:131:13
			rptr_q <= rptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:132:13
			wptr_q <= wptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:133:13
			crossover_q <= crossover_d;
		end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:141:5
	// removed an assertion item
	// rptr_ahead_wptr_assert : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	((rptr_q <= wptr_q) && !crossover_q) || ((rptr_q >= wptr_q) && crossover_q)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv:143:13
	// 	$error("fifo: read pointer is ahead of the write pointer");
	// end
	initial _sv2v_0 = 0;
endmodule
