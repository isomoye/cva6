module hpdcache_prio_1hot_encoder (
	val_i,
	val_o
);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_prio_1hot_encoder.sv:29:15
	parameter [31:0] N = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_prio_1hot_encoder.sv:33:5
	input wire [N - 1:0] val_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_prio_1hot_encoder.sv:34:5
	output wire [N - 1:0] val_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_prio_1hot_encoder.sv:37:5
	assign val_o[0] = val_i[0];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_prio_1hot_encoder.sv:39:5
	genvar _gv_i_79;
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		for (_gv_i_79 = 1; _gv_i_79 < sv2v_cast_32_signed(N); _gv_i_79 = _gv_i_79 + 1) begin : gen_prio
			localparam i = _gv_i_79;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_prio_1hot_encoder.sv:40:9
			assign val_o[i] = val_i[i] & ~(|val_i[i - 1:0]);
		end
	endgenerate
endmodule
