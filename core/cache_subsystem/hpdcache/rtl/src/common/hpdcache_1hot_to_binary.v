module hpdcache_1hot_to_binary (
	val_i,
	val_o
);
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_1hot_to_binary.sv:30:16
	parameter [31:0] N = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_1hot_to_binary.sv:31:16
	localparam [31:0] Log2N = (N > 1 ? $clog2(N) : 1);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_1hot_to_binary.sv:38:5
	input wire [N - 1:0] val_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_1hot_to_binary.sv:39:5
	output reg [Log2N - 1:0] val_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_1hot_to_binary.sv:43:5
	always @(*) begin : decode_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_1hot_to_binary.sv:45:9
		val_o = 0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_1hot_to_binary.sv:46:9
		begin : sv2v_autoblock_1
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_1hot_to_binary.sv:46:14
			reg signed [31:0] i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_1hot_to_binary.sv:46:14
			for (i = 0; i < N; i = i + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_1hot_to_binary.sv:47:13
					if (val_i[i])
						// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_1hot_to_binary.sv:47:27
						val_o = i;
				end
		end
	end
	initial _sv2v_0 = 0;
endmodule
