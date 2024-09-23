module hpdcache_demux (
	data_i,
	sel_i,
	data_o
);
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:31:16
	parameter [31:0] NOUTPUT = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:34:16
	parameter [31:0] DATA_WIDTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:37:16
	parameter [0:0] ONE_HOT_SEL = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:40:16
	localparam [31:0] NOUTPUT_LOG2 = $clog2(NOUTPUT);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:41:16
	localparam [31:0] SEL_WIDTH = (ONE_HOT_SEL ? NOUTPUT : NOUTPUT_LOG2);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:43:21
	// removed localparam type data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:44:21
	// removed localparam type sel_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:51:5
	input wire [DATA_WIDTH - 1:0] data_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:52:5
	input wire [SEL_WIDTH - 1:0] sel_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:53:5
	output reg [(NOUTPUT * DATA_WIDTH) - 1:0] data_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:57:5
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:58:9
	function automatic [SEL_WIDTH - 1:0] sv2v_cast_36ACF;
		input reg [SEL_WIDTH - 1:0] inp;
		sv2v_cast_36ACF = inp;
	endfunction
	always @(*) begin : demux_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:60:13
		begin : sv2v_autoblock_1
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:60:18
			reg [31:0] i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:60:18
			for (i = 0; i < NOUTPUT; i = i + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:61:17
					if (!ONE_HOT_SEL)
						// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:62:21
						data_o[i * DATA_WIDTH+:DATA_WIDTH] = (sv2v_cast_36ACF(i) == sel_i ? data_i : {DATA_WIDTH * 1 {1'sb0}});
					else
						// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv:64:21
						data_o[i * DATA_WIDTH+:DATA_WIDTH] = (sel_i[i] ? data_i : {DATA_WIDTH * 1 {1'sb0}});
				end
		end
	end
	initial _sv2v_0 = 0;
endmodule
