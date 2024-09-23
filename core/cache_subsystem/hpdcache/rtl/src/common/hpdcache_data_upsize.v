module hpdcache_data_upsize (
	clk_i,
	rst_ni,
	w_i,
	wlast_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	reg _sv2v_0;
	// removed import hpdcache_pkg::*;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:32:15
	parameter signed [31:0] WR_WIDTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:33:15
	parameter signed [31:0] RD_WIDTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:34:15
	parameter signed [31:0] DEPTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:36:21
	// removed localparam type wdata_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:37:21
	// removed localparam type rdata_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:43:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:44:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:46:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:47:5
	input wire wlast_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:48:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:49:5
	input wire [WR_WIDTH - 1:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:51:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:52:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:53:5
	output wire [RD_WIDTH - 1:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:60:5
	localparam signed [31:0] WR_WORDS = RD_WIDTH / WR_WIDTH;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:61:5
	localparam signed [31:0] PTR_WIDTH = $clog2(DEPTH);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:62:5
	localparam signed [31:0] WORDCNT_WIDTH = $clog2(WR_WORDS);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:63:5
	// removed localparam type bufptr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:64:5
	// removed localparam type wordptr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:65:5
	// removed localparam type occupancy_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:70:5
	reg [((DEPTH * WR_WORDS) * WR_WIDTH) - 1:0] buf_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:71:5
	reg [PTR_WIDTH - 1:0] wrptr_q;
	reg [PTR_WIDTH - 1:0] wrptr_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:72:5
	reg [PTR_WIDTH - 1:0] rdptr_q;
	reg [PTR_WIDTH - 1:0] rdptr_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:73:5
	reg [PTR_WIDTH:0] used_q;
	reg [PTR_WIDTH:0] used_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:74:5
	reg [(DEPTH * WORDCNT_WIDTH) - 1:0] words_q;
	reg [(DEPTH * WORDCNT_WIDTH) - 1:0] words_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:75:5
	wire full;
	wire empty;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:76:5
	reg shift;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:81:5
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
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:86:5
	always @(*) begin : ctrl_comb
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:88:9
		reg used_inc;
		reg used_dec;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:89:9
		reg words_inc;
		reg words_reset;
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:91:9
		wrptr_d = wrptr_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:92:9
		rdptr_d = rdptr_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:93:9
		words_d = words_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:94:9
		used_dec = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:95:9
		used_inc = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:96:9
		words_reset = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:97:9
		words_inc = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:98:9
		shift = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:100:9
		if (w_i && wok_o) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:101:13
			shift = 1'b1;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:102:13
			words_inc = sv2v_cast_32(words_q[wrptr_q * WORDCNT_WIDTH+:WORDCNT_WIDTH]) < (WR_WORDS - 1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:103:13
			if ((sv2v_cast_32(words_q[wrptr_q * WORDCNT_WIDTH+:WORDCNT_WIDTH]) == (WR_WORDS - 1)) || wlast_i) begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:104:17
				used_inc = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:105:17
				if (sv2v_cast_32(wrptr_q) == (DEPTH - 1))
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:106:21
					wrptr_d = 0;
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:108:21
					wrptr_d = wrptr_q + 1;
			end
		end
		if (r_i && rok_o) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:114:13
			used_dec = 1'b1;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:115:13
			words_reset = 1'b1;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:116:13
			if (sv2v_cast_32(rdptr_q) == (DEPTH - 1))
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:117:17
				rdptr_d = 0;
			else
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:119:17
				rdptr_d = rdptr_q + 1;
		end
		case ({used_inc, used_dec})
			2'b10:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:124:22
				used_d = used_q + 1;
			2'b01:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:125:22
				used_d = used_q - 1;
			default:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:126:22
				used_d = used_q;
		endcase
		if (words_inc)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:129:26
			words_d[wrptr_q * WORDCNT_WIDTH+:WORDCNT_WIDTH] = words_q[wrptr_q * WORDCNT_WIDTH+:WORDCNT_WIDTH] + 1;
		if (words_reset)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:130:26
			words_d[rdptr_q * WORDCNT_WIDTH+:WORDCNT_WIDTH] = 0;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:134:5
	always @(posedge clk_i or negedge rst_ni) begin : ctrl_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:136:9
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:137:13
			rdptr_q <= 0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:138:13
			wrptr_q <= 0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:139:13
			used_q <= 0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:140:13
			words_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:142:13
			rdptr_q <= rdptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:143:13
			wrptr_q <= wrptr_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:144:13
			used_q <= used_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:145:13
			words_q <= words_d;
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:152:5
	always @(posedge clk_i or negedge rst_ni) begin : buf_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:154:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:155:13
			buf_q <= 1'sb0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:157:13
			if (shift)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:158:17
				buf_q[((wrptr_q * WR_WORDS) + words_q[wrptr_q * WORDCNT_WIDTH+:WORDCNT_WIDTH]) * WR_WIDTH+:WR_WIDTH] <= wdata_i;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:163:5
	assign rdata_o = buf_q[WR_WIDTH * (rdptr_q * WR_WORDS)+:WR_WIDTH * WR_WORDS];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:169:5
	initial begin : initial_assertions
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv:171:9
	end
	initial _sv2v_0 = 0;
endmodule
