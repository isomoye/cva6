module hpdcache_data_downsize (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	reg _sv2v_0;
	// removed import hpdcache_pkg::*;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:32:15
	parameter signed [31:0] WR_WIDTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:33:15
	parameter signed [31:0] RD_WIDTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:34:15
	parameter signed [31:0] DEPTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:36:21
	// removed localparam type wdata_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:37:21
	// removed localparam type rdata_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:43:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:44:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:46:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:47:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:48:5
	input wire [WR_WIDTH - 1:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:50:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:51:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:52:5
	output wire [RD_WIDTH - 1:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:59:5
	localparam signed [31:0] RD_WORDS = WR_WIDTH / RD_WIDTH;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:60:5
	localparam signed [31:0] PTR_WIDTH = $clog2(DEPTH);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:61:5
	localparam signed [31:0] WORDCNT_WIDTH = $clog2(RD_WORDS);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:62:5
	// removed localparam type bufptr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:63:5
	// removed localparam type wordptr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:64:5
	// removed localparam type occupancy_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:69:5
	reg [((DEPTH * RD_WORDS) * RD_WIDTH) - 1:0] buf_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:70:5
	reg [PTR_WIDTH - 1:0] wrptr_q;
	reg [PTR_WIDTH - 1:0] wrptr_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:71:5
	reg [PTR_WIDTH - 1:0] rdptr_q;
	reg [PTR_WIDTH - 1:0] rdptr_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:72:5
	reg [PTR_WIDTH:0] used_q;
	reg [PTR_WIDTH:0] used_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:73:5
	reg [(DEPTH * WORDCNT_WIDTH) - 1:0] words_q;
	reg [(DEPTH * WORDCNT_WIDTH) - 1:0] words_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:74:5
	reg words_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:75:5
	wire full;
	wire empty;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:80:5
	// removed localparam type hpdcache_pkg_hpdcache_uint32
	// removed localparam type hpdcache_pkg_hpdcache_uint
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	assign full = sv2v_cast_32(used_q) == DEPTH;
	assign empty = used_q == 0;
	assign wok_o = ~full;
	assign rok_o = ~empty;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:85:5
	function automatic [WORDCNT_WIDTH - 1:0] sv2v_cast_0DC16;
		input reg [WORDCNT_WIDTH - 1:0] inp;
		sv2v_cast_0DC16 = inp;
	endfunction
	always @(*) begin : ctrl_comb
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:87:9
		reg used_inc;
		reg used_dec;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:88:9
		reg words_dec;
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:90:9
		rdptr_d = rdptr_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:91:9
		wrptr_d = wrptr_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:92:9
		used_dec = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:93:9
		used_inc = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:94:9
		words_dec = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:95:9
		words_set = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:97:9
		if (w_i && wok_o) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:98:13
			used_inc = 1'b1;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:99:13
			words_set = 1'b1;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:100:13
			if (sv2v_cast_32(wrptr_q) == (DEPTH - 1))
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:101:17
				wrptr_d = 0;
			else
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:103:17
				wrptr_d = wrptr_q + 1;
		end
		if (r_i && rok_o) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:108:13
			words_dec = words_q[rdptr_q * WORDCNT_WIDTH+:WORDCNT_WIDTH] > 0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:109:13
			if (words_q[rdptr_q * WORDCNT_WIDTH+:WORDCNT_WIDTH] == 0) begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:110:17
				used_dec = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:111:17
				if (sv2v_cast_32(rdptr_q) == (DEPTH - 1))
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:112:21
					rdptr_d = 0;
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:114:21
					rdptr_d = rdptr_q + 1;
			end
		end
		case ({used_inc, used_dec})
			2'b10:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:120:22
				used_d = used_q + 1;
			2'b01:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:121:22
				used_d = used_q - 1;
			default:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:122:22
				used_d = used_q;
		endcase
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:125:9
		words_d = words_q;
		if (words_set)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:127:13
			words_d[wrptr_q * WORDCNT_WIDTH+:WORDCNT_WIDTH] = sv2v_cast_0DC16(RD_WORDS - 1);
		if (words_dec)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:130:13
			words_d[rdptr_q * WORDCNT_WIDTH+:WORDCNT_WIDTH] = words_q[rdptr_q * WORDCNT_WIDTH+:WORDCNT_WIDTH] - 1;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:134:5
	always @(posedge clk_i or negedge rst_ni) begin : ctrl_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:136:9
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:137:13
			rdptr_q <= 0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:138:13
			wrptr_q <= 0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:139:13
			used_q <= 0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:140:13
			words_q <= 0;
		end
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:142:13
			rdptr_q <= rdptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:143:13
			wrptr_q <= wrptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:144:13
			used_q <= used_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:145:13
			words_q <= words_d;
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:152:5
	always @(posedge clk_i or negedge rst_ni) begin : buf_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:154:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:155:13
			buf_q <= 1'sb0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:157:13
			if (words_set)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:158:17
				buf_q[RD_WIDTH * (wrptr_q * RD_WORDS)+:RD_WIDTH * RD_WORDS] <= wdata_i;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:163:5
	assign rdata_o = buf_q[((rdptr_q * RD_WORDS) + ((RD_WORDS - sv2v_cast_32(words_q[rdptr_q * WORDCNT_WIDTH+:WORDCNT_WIDTH])) - 1)) * RD_WIDTH+:RD_WIDTH];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:169:5
	initial begin : initial_assertions
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv:171:9
	end
	initial _sv2v_0 = 0;
endmodule
