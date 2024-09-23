module hpdcache_sram_wbyteenable (
	clk,
	rst_n,
	cs,
	we,
	addr,
	wdata,
	wbyteenable,
	rdata
);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv:28:15
	parameter [31:0] ADDR_SIZE = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv:29:15
	parameter [31:0] DATA_SIZE = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv:30:15
	parameter [31:0] DEPTH = 2 ** ADDR_SIZE;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv:33:5
	input wire clk;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv:34:5
	input wire rst_n;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv:35:5
	input wire cs;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv:36:5
	input wire we;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv:37:5
	input wire [ADDR_SIZE - 1:0] addr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv:38:5
	input wire [DATA_SIZE - 1:0] wdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv:39:5
	input wire [(DATA_SIZE / 8) - 1:0] wbyteenable;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv:40:5
	output wire [DATA_SIZE - 1:0] rdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv:43:5
	hpdcache_sram_wbyteenable_1rw #(
		.ADDR_SIZE(ADDR_SIZE),
		.DATA_SIZE(DATA_SIZE),
		.DEPTH(DEPTH)
	) ram_i(
		.clk(clk),
		.rst_n(rst_n),
		.cs(cs),
		.we(we),
		.addr(addr),
		.wdata(wdata),
		.wbyteenable(wbyteenable),
		.rdata(rdata)
	);
endmodule
