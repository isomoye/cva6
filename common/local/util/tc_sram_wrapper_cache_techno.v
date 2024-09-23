module tc_sram_wrapper_cache_techno (
	clk_i,
	rst_ni,
	req_i,
	we_i,
	addr_i,
	wdata_i,
	be_i,
	rdata_o
);
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:14:13
	parameter [31:0] NumWords = 32'd1024;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:15:13
	parameter [31:0] DataWidth = 32'd128;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:16:13
	parameter [31:0] ByteWidth = 32'd8;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:17:13
	parameter [31:0] NumPorts = 32'd2;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:18:13
	parameter [31:0] Latency = 32'd1;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:19:26
	parameter SimInit = "none";
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:20:26
	parameter BYTE_ACCESS = 1;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:21:13
	parameter [0:0] PrintSimCfg = 1'b0;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:23:13
	parameter [31:0] AddrWidth = (NumWords > 32'd1 ? $clog2(NumWords) : 32'd1);
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:24:13
	parameter [31:0] BeWidth = ((DataWidth + ByteWidth) - 32'd1) / ByteWidth;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:25:26
	// removed localparam type addr_t
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:26:26
	// removed localparam type data_t
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:27:26
	// removed localparam type be_t
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:29:3
	input wire clk_i;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:30:3
	input wire rst_ni;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:32:3
	input wire [NumPorts - 1:0] req_i;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:33:3
	input wire [NumPorts - 1:0] we_i;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:34:3
	input wire [(NumPorts * AddrWidth) - 1:0] addr_i;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:35:3
	input wire [(NumPorts * DataWidth) - 1:0] wdata_i;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:36:3
	input wire [(NumPorts * BeWidth) - 1:0] be_i;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:38:3
	output wire [(NumPorts * DataWidth) - 1:0] rdata_o;
	// Trace: common/local/util/tc_sram_wrapper_cache_techno.sv:43:3
	tc_sram #(
		.NumWords(NumWords),
		.DataWidth(DataWidth),
		.ByteWidth(ByteWidth),
		.NumPorts(NumPorts),
		.Latency(Latency),
		.SimInit(SimInit),
		.PrintSimCfg(PrintSimCfg)
	) i_tc_sram(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(req_i),
		.we_i(we_i),
		.be_i(be_i),
		.wdata_i(wdata_i),
		.addr_i(addr_i),
		.rdata_o(rdata_o)
	);
endmodule
