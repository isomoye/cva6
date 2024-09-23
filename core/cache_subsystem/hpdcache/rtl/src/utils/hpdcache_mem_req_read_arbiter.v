module hpdcache_mem_req_read_arbiter_D3F78_6A011 (
	clk_i,
	rst_ni,
	mem_req_read_ready_o,
	mem_req_read_valid_i,
	mem_req_read_i,
	mem_req_read_ready_i,
	mem_req_read_valid_o,
	mem_req_read_o
);
	// removed localparam type hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:30:15
	parameter [31:0] N = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:31:20
	// removed localparam type hpdcache_mem_req_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:38:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:39:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:41:5
	output wire [N - 1:0] mem_req_read_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:42:5
	input wire [N - 1:0] mem_req_read_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:43:5
	input wire [((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? (N * (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7)) - 1 : (N * (1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))) + (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 5)):((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)] mem_req_read_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:45:5
	input wire mem_req_read_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:46:5
	output wire mem_req_read_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:47:5
	output wire [((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] mem_req_read_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:51:5
	wire [N - 1:0] mem_read_arb_req_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:52:5
	wire [((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? (N * (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7)) - 1 : (N * (1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))) + (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 5)):((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)] mem_read_arb_req;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:53:5
	wire [N - 1:0] mem_read_arb_req_gnt;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:55:5
	wire req_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:57:5
	genvar _gv_gen_i_7;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:61:5
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		for (_gv_gen_i_7 = 0; _gv_gen_i_7 < sv2v_cast_32_signed(N); _gv_gen_i_7 = _gv_gen_i_7 + 1) begin : pack_inputs_gen
			localparam gen_i = _gv_gen_i_7;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:63:13
			assign mem_read_arb_req_valid[gen_i] = mem_req_read_valid_i[gen_i];
			assign mem_read_arb_req[((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) + (gen_i * ((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)))+:((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))] = mem_req_read_i[((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) + (gen_i * ((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)))+:((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))];
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:68:5
	assign req_valid = |(mem_read_arb_req_gnt & mem_read_arb_req_valid);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:71:5
	hpdcache_fxarb #(.N(N)) hpdcache_fxarb_mem_req_write_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(mem_read_arb_req_valid),
		.gnt_o(mem_read_arb_req_gnt),
		.ready_i(mem_req_read_ready_i)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:82:5
	generate
		for (_gv_gen_i_7 = 0; _gv_gen_i_7 < sv2v_cast_32_signed(N); _gv_gen_i_7 = _gv_gen_i_7 + 1) begin : req_ready_gen
			localparam gen_i = _gv_gen_i_7;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:84:13
			assign mem_req_read_ready_o[gen_i] = (mem_req_read_ready_i & mem_read_arb_req_gnt[gen_i]) & mem_read_arb_req_valid[gen_i];
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:89:5
	assign mem_req_read_valid_o = req_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv:92:5
	hpdcache_mux #(
		.NINPUT(N),
		.DATA_WIDTH(((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))),
		.ONE_HOT_SEL(1'b1)
	) mem_read_req_mux_i(
		.data_i(mem_read_arb_req),
		.sel_i(mem_read_arb_req_gnt),
		.data_o(mem_req_read_o)
	);
endmodule
