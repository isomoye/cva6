module sram (
	clk_i,
	rst_ni,
	req_i,
	we_i,
	addr_i,
	wuser_i,
	wdata_i,
	be_i,
	ruser_o,
	rdata_o
);
	reg _sv2v_0;
	// Trace: common/local/util/sram.sv:22:15
	parameter signed [31:0] DATA_WIDTH = 64;
	// Trace: common/local/util/sram.sv:23:15
	parameter signed [31:0] USER_WIDTH = 1;
	// Trace: common/local/util/sram.sv:24:15
	parameter signed [31:0] USER_EN = 0;
	// Trace: common/local/util/sram.sv:25:15
	parameter signed [31:0] NUM_WORDS = 1024;
	// Trace: common/local/util/sram.sv:26:15
	parameter signed [31:0] SIM_INIT = "none";
	// Trace: common/local/util/sram.sv:27:15
	parameter signed [31:0] OUT_REGS = 0;
	// Trace: common/local/util/sram.sv:29:4
	input wire clk_i;
	// Trace: common/local/util/sram.sv:30:4
	input wire rst_ni;
	// Trace: common/local/util/sram.sv:31:4
	input wire req_i;
	// Trace: common/local/util/sram.sv:32:4
	input wire we_i;
	// Trace: common/local/util/sram.sv:33:4
	input wire [$clog2(NUM_WORDS) - 1:0] addr_i;
	// Trace: common/local/util/sram.sv:34:4
	input wire [USER_WIDTH - 1:0] wuser_i;
	// Trace: common/local/util/sram.sv:35:4
	input wire [DATA_WIDTH - 1:0] wdata_i;
	// Trace: common/local/util/sram.sv:36:4
	input wire [((DATA_WIDTH + 7) / 8) - 1:0] be_i;
	// Trace: common/local/util/sram.sv:37:4
	output reg [USER_WIDTH - 1:0] ruser_o;
	// Trace: common/local/util/sram.sv:38:4
	output reg [DATA_WIDTH - 1:0] rdata_o;
	// Trace: common/local/util/sram.sv:41:1
	localparam DATA_WIDTH_ALIGNED = ((DATA_WIDTH + 63) / 64) * 64;
	// Trace: common/local/util/sram.sv:42:1
	localparam USER_WIDTH_ALIGNED = DATA_WIDTH_ALIGNED;
	// Trace: common/local/util/sram.sv:43:1
	localparam BE_WIDTH_ALIGNED = ((((DATA_WIDTH + 7) / 8) + 7) / 8) * 8;
	// Trace: common/local/util/sram.sv:45:1
	reg [DATA_WIDTH_ALIGNED - 1:0] wdata_aligned;
	// Trace: common/local/util/sram.sv:46:1
	reg [USER_WIDTH_ALIGNED - 1:0] wuser_aligned;
	// Trace: common/local/util/sram.sv:47:1
	reg [BE_WIDTH_ALIGNED - 1:0] be_aligned;
	// Trace: common/local/util/sram.sv:48:1
	wire [DATA_WIDTH_ALIGNED - 1:0] rdata_aligned;
	// Trace: common/local/util/sram.sv:49:1
	wire [USER_WIDTH_ALIGNED - 1:0] ruser_aligned;
	// Trace: common/local/util/sram.sv:53:1
	always @(*) begin : p_align
		if (_sv2v_0)
			;
		// Trace: common/local/util/sram.sv:54:5
		wdata_aligned = 1'sb0;
		// Trace: common/local/util/sram.sv:55:5
		wuser_aligned = 1'sb0;
		// Trace: common/local/util/sram.sv:56:5
		be_aligned = 1'sb0;
		// Trace: common/local/util/sram.sv:57:5
		wdata_aligned[DATA_WIDTH - 1:0] = wdata_i;
		// Trace: common/local/util/sram.sv:58:5
		wuser_aligned[USER_WIDTH - 1:0] = wuser_i;
		// Trace: common/local/util/sram.sv:59:5
		be_aligned[BE_WIDTH_ALIGNED - 1:0] = be_i;
		// Trace: common/local/util/sram.sv:61:5
		rdata_o = rdata_aligned[DATA_WIDTH - 1:0];
		// Trace: common/local/util/sram.sv:62:5
		ruser_o = ruser_aligned[USER_WIDTH - 1:0];
	end
	initial _sv2v_0 = 0;
endmodule
