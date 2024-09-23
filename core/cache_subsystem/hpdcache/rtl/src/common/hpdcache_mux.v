module hpdcache_mux (
	data_i,
	sel_i,
	data_o
);
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:31:16
	parameter [31:0] NINPUT = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:34:16
	parameter [31:0] DATA_WIDTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:37:16
	parameter [0:0] ONE_HOT_SEL = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:40:16
	localparam [31:0] NINPUT_LOG2 = $clog2(NINPUT);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:41:16
	localparam [31:0] SEL_WIDTH = (ONE_HOT_SEL ? NINPUT : NINPUT_LOG2);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:43:21
	// removed localparam type data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:44:21
	// removed localparam type sel_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:51:5
	input wire [(NINPUT * DATA_WIDTH) - 1:0] data_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:52:5
	input wire [SEL_WIDTH - 1:0] sel_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:53:5
	output reg [DATA_WIDTH - 1:0] data_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:58:5
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		if (ONE_HOT_SEL == 1) begin : gen_onehot_sel
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:59:9
			always @(*) begin : data_out_mux_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:61:13
				data_o = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:62:13
				begin : sv2v_autoblock_1
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:62:18
					reg [31:0] i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:62:18
					for (i = 0; i < NINPUT; i = i + 1)
						begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:63:17
							data_o = data_o | (sel_i[i] ? data_i[i * DATA_WIDTH+:DATA_WIDTH] : {DATA_WIDTH {1'sb0}});
						end
				end
			end
		end
		else begin : gen_binary_sel
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:69:9
			always @(*) begin : data_out_mux_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:71:13
				data_o = 1'sb0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:72:13
				begin : sv2v_autoblock_2
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:72:18
					reg [31:0] i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:72:18
					for (i = 0; i < NINPUT; i = i + 1)
						begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv:73:17
							data_o = data_o | (i == sv2v_cast_32_signed(sel_i) ? data_i[i * DATA_WIDTH+:DATA_WIDTH] : {DATA_WIDTH {1'sb0}});
						end
				end
			end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
