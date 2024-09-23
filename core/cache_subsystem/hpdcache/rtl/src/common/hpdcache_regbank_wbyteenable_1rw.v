module hpdcache_regbank_wbyteenable_1rw (
	clk,
	rst_n,
	cs,
	we,
	addr,
	wdata,
	wbyteenable,
	rdata
);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:28:15
	parameter [31:0] ADDR_SIZE = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:29:15
	parameter [31:0] DATA_SIZE = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:30:15
	parameter [31:0] DEPTH = 2 ** ADDR_SIZE;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:33:5
	input wire clk;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:34:5
	input wire rst_n;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:35:5
	input wire cs;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:36:5
	input wire we;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:37:5
	input wire [ADDR_SIZE - 1:0] addr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:38:5
	input wire [DATA_SIZE - 1:0] wdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:39:5
	input wire [(DATA_SIZE / 8) - 1:0] wbyteenable;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:40:5
	output reg [DATA_SIZE - 1:0] rdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:46:5
	// removed localparam type mem_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:47:5
	reg [DATA_SIZE - 1:0] mem [0:DEPTH - 1];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:52:5
	always @(posedge clk) begin : mem_update_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:54:9
		if (cs == 1'b1) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:55:13
			if (we == 1'b1)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:56:17
				begin : sv2v_autoblock_1
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:56:22
					reg signed [31:0] i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:56:22
					for (i = 0; i < (DATA_SIZE / 8); i = i + 1)
						begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:57:21
							if (wbyteenable[i])
								// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:57:41
								mem[addr][i * 8+:8] <= wdata[i * 8+:8];
						end
				end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv:60:13
			rdata <= mem[addr];
		end
	end
endmodule
