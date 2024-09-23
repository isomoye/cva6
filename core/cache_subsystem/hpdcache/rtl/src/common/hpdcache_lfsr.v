module hpdcache_lfsr (
	clk_i,
	rst_ni,
	shift_i,
	val_o
);
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:30:15
	parameter signed [31:0] WIDTH = 8;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:32:21
	// removed localparam type data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:39:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:40:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:41:5
	input wire shift_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:42:5
	output wire [WIDTH - 1:0] val_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:48:1
	wire [15:0] polynomial;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:50:1
	assign polynomial = (WIDTH == 8 ? 16'h00e1 : (WIDTH == 9 ? 16'h01ea : (WIDTH == 10 ? 16'h02e3 : (WIDTH == 11 ? 16'h04e3 : (WIDTH == 12 ? 16'h0ae2 : (WIDTH == 13 ? 16'h10e3 : (WIDTH == 14 ? 16'h20ea : (WIDTH == 15 ? 16'h41e2 : (WIDTH == 16 ? 16'h81ee : 16'h0bad)))))))));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:63:1
	reg [WIDTH - 1:0] lfsr_q;
	reg [WIDTH - 1:0] lfsr_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:64:1
	wire [WIDTH - 1:0] lfsr_shifted;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:66:1
	assign lfsr_shifted = {1'b0, lfsr_q[WIDTH - 1:1]};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:68:1
	always @(*) begin : lfsr_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:70:5
		if (lfsr_q[0])
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:70:20
			lfsr_d = lfsr_shifted ^ polynomial[WIDTH - 1:0];
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:71:20
			lfsr_d = lfsr_shifted;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:74:1
	assign val_o = lfsr_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:76:1
	always @(posedge clk_i or negedge rst_ni) begin : lfsr_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:78:5
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:79:9
			lfsr_q <= 1'sb1;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:81:9
			if (shift_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:81:22
				lfsr_q <= lfsr_d;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:89:1
	initial begin : assertions_initials
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv:90:5
	end
	initial _sv2v_0 = 0;
endmodule
