module sram_cache (
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
	// Trace: common/local/util/sram_cache.sv:22:15
	parameter DATA_WIDTH = 64;
	// Trace: common/local/util/sram_cache.sv:23:15
	parameter USER_WIDTH = 1;
	// Trace: common/local/util/sram_cache.sv:24:15
	parameter USER_EN = 0;
	// Trace: common/local/util/sram_cache.sv:25:15
	parameter NUM_WORDS = 1024;
	// Trace: common/local/util/sram_cache.sv:26:15
	parameter SIM_INIT = "none";
	// Trace: common/local/util/sram_cache.sv:27:15
	parameter BYTE_ACCESS = 1;
	// Trace: common/local/util/sram_cache.sv:28:15
	parameter TECHNO_CUT = 0;
	// Trace: common/local/util/sram_cache.sv:29:15
	parameter OUT_REGS = 0;
	// Trace: common/local/util/sram_cache.sv:31:4
	input wire clk_i;
	// Trace: common/local/util/sram_cache.sv:32:4
	input wire rst_ni;
	// Trace: common/local/util/sram_cache.sv:33:4
	input wire req_i;
	// Trace: common/local/util/sram_cache.sv:34:4
	input wire we_i;
	// Trace: common/local/util/sram_cache.sv:35:4
	input wire [$clog2(NUM_WORDS) - 1:0] addr_i;
	// Trace: common/local/util/sram_cache.sv:36:4
	input wire [USER_WIDTH - 1:0] wuser_i;
	// Trace: common/local/util/sram_cache.sv:37:4
	input wire [DATA_WIDTH - 1:0] wdata_i;
	// Trace: common/local/util/sram_cache.sv:38:4
	input wire [((DATA_WIDTH + 7) / 8) - 1:0] be_i;
	// Trace: common/local/util/sram_cache.sv:39:4
	output reg [USER_WIDTH - 1:0] ruser_o;
	// Trace: common/local/util/sram_cache.sv:40:4
	output reg [DATA_WIDTH - 1:0] rdata_o;
	// Trace: common/local/util/sram_cache.sv:42:3
	localparam DATA_AND_USER_WIDTH = (USER_EN ? DATA_WIDTH + USER_WIDTH : DATA_WIDTH);
	// Trace: common/local/util/sram_cache.sv:43:3
	generate
		if (TECHNO_CUT) begin : gen_techno_cut
			if (USER_EN > 0) begin : genblk1
				// Trace: common/local/util/sram_cache.sv:45:7
				reg [(DATA_WIDTH + USER_WIDTH) - 1:0] wdata_user;
				// Trace: common/local/util/sram_cache.sv:46:7
				wire [(DATA_WIDTH + USER_WIDTH) - 1:0] rdata_user;
				// Trace: common/local/util/sram_cache.sv:47:7
				reg [(((DATA_WIDTH + 7) / 8) + ((DATA_WIDTH + 7) / 8)) - 1:0] be;
				// Trace: common/local/util/sram_cache.sv:49:7
				always @(*) begin
					if (_sv2v_0)
						;
					// Trace: common/local/util/sram_cache.sv:50:9
					wdata_user = {wdata_i, wuser_i};
					// Trace: common/local/util/sram_cache.sv:51:9
					be = {be_i, be_i};
					// Trace: common/local/util/sram_cache.sv:52:9
					rdata_o = rdata_user[DATA_AND_USER_WIDTH - 1:DATA_WIDTH];
					// Trace: common/local/util/sram_cache.sv:53:9
					ruser_o = rdata_user[USER_WIDTH - 1:0];
				end
				// Trace: common/local/util/sram_cache.sv:55:7
				tc_sram_wrapper_cache_techno #(
					.NumWords(NUM_WORDS),
					.DataWidth(DATA_AND_USER_WIDTH),
					.ByteWidth(32'd8),
					.NumPorts(32'd1),
					.Latency(32'd1),
					.SimInit(SIM_INIT),
					.BYTE_ACCESS(BYTE_ACCESS),
					.PrintSimCfg(1'b0)
				) i_tc_sram_wrapper(
					.clk_i(clk_i),
					.rst_ni(rst_ni),
					.req_i(req_i),
					.we_i(we_i),
					.be_i(be),
					.wdata_i(wdata_user),
					.addr_i(addr_i),
					.rdata_o(rdata_user)
				);
			end
			else begin : genblk1
				// Trace: common/local/util/sram_cache.sv:75:7
				reg [DATA_WIDTH - 1:0] wdata_user;
				// Trace: common/local/util/sram_cache.sv:76:7
				wire [DATA_WIDTH - 1:0] rdata_user;
				// Trace: common/local/util/sram_cache.sv:77:7
				reg [((DATA_WIDTH + 7) / 8) - 1:0] be;
				// Trace: common/local/util/sram_cache.sv:79:7
				always @(*) begin
					if (_sv2v_0)
						;
					// Trace: common/local/util/sram_cache.sv:80:9
					wdata_user = wdata_i;
					// Trace: common/local/util/sram_cache.sv:81:9
					be = be_i;
					// Trace: common/local/util/sram_cache.sv:82:9
					rdata_o = rdata_user;
					// Trace: common/local/util/sram_cache.sv:83:9
					ruser_o = 1'sb0;
				end
				// Trace: common/local/util/sram_cache.sv:85:7
				tc_sram_wrapper_cache_techno #(
					.NumWords(NUM_WORDS),
					.DataWidth(DATA_AND_USER_WIDTH),
					.ByteWidth(32'd8),
					.NumPorts(32'd1),
					.Latency(32'd1),
					.SimInit(SIM_INIT),
					.BYTE_ACCESS(BYTE_ACCESS),
					.PrintSimCfg(1'b0)
				) i_tc_sram_wrapper(
					.clk_i(clk_i),
					.rst_ni(rst_ni),
					.req_i(req_i),
					.we_i(we_i),
					.be_i(be),
					.wdata_i(wdata_user),
					.addr_i(addr_i),
					.rdata_o(rdata_user)
				);
			end
		end
		else begin : genblk1
			// Trace: common/local/util/sram_cache.sv:106:5
			// rewrote reg-to-output bindings
			wire [USER_WIDTH:1] sv2v_tmp_data_sram_ruser_o;
			always @(*) ruser_o = sv2v_tmp_data_sram_ruser_o;
			wire [DATA_WIDTH:1] sv2v_tmp_data_sram_rdata_o;
			always @(*) rdata_o = sv2v_tmp_data_sram_rdata_o;
			sram #(
				.USER_WIDTH(USER_WIDTH),
				.DATA_WIDTH(DATA_WIDTH),
				.USER_EN(USER_EN),
				.NUM_WORDS(NUM_WORDS)
			) data_sram(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.req_i(req_i),
				.we_i(we_i),
				.addr_i(addr_i),
				.wuser_i(wuser_i),
				.wdata_i(wdata_i),
				.be_i(be_i),
				.ruser_o(sv2v_tmp_data_sram_ruser_o),
				.rdata_o(sv2v_tmp_data_sram_rdata_o)
			);
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
