module hpdcache_mem_resp_demux_8DB2C_93A06 (
	clk_i,
	rst_ni,
	mem_resp_ready_o,
	mem_resp_valid_i,
	mem_resp_id_i,
	mem_resp_i,
	mem_resp_ready_i,
	mem_resp_valid_o,
	mem_resp_o,
	mem_resp_rt_i
);
	// removed localparam type resp_id_t_hpdcache_mem_id_t_HPDcacheCfg_type
	parameter [1349:0] resp_id_t_hpdcache_mem_id_t_HPDcacheCfg = 0;
	// removed localparam type resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg_type
	parameter [1349:0] resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:30:13
	parameter signed [31:0] N = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:31:18
	// removed localparam type resp_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:32:18
	// removed localparam type resp_id_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:34:14
	localparam signed [31:0] RT_DEPTH = 1 << resp_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:35:19
	// removed localparam type rt_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:42:3
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:43:3
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:45:3
	output wire mem_resp_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:46:3
	input wire mem_resp_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:47:3
	input wire [resp_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] mem_resp_id_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:48:3
	input wire [((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0:0] mem_resp_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:50:3
	input wire [N - 1:0] mem_resp_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:51:3
	output wire [N - 1:0] mem_resp_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:52:3
	output wire [((((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? (N * (((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 1)) - 1 : (N * (1 - (((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0))) + (((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) - 1)):((((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? 0 : ((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0)] mem_resp_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:54:3
	input wire [(RT_DEPTH * resp_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) - 1:0] mem_resp_rt_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:58:3
	// removed localparam type sel_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:60:3
	wire [N - 1:0] mem_resp_demux_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:61:3
	wire [((((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? (N * (((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 1)) - 1 : (N * (1 - (((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0))) + (((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) - 1)):((((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? 0 : ((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0)] mem_resp_demux;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:62:3
	wire [N - 1:0] mem_resp_demux_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:63:3
	wire [$clog2(N) - 1:0] mem_resp_demux_sel;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:66:3
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	assign mem_resp_demux_sel = mem_resp_rt_i[sv2v_cast_32_signed(mem_resp_id_i) * resp_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]+:resp_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:69:3
	hpdcache_demux #(
		.NOUTPUT(N),
		.DATA_WIDTH(1),
		.ONE_HOT_SEL(0)
	) i_resp_valid_demux(
		.data_i(mem_resp_valid_i),
		.sel_i(mem_resp_demux_sel),
		.data_o(mem_resp_demux_valid)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:79:3
	hpdcache_demux #(
		.NOUTPUT(N),
		.DATA_WIDTH(((((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? ((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 1 : 1 - (((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0))),
		.ONE_HOT_SEL(0)
	) i_resp_demux(
		.data_i(mem_resp_i),
		.sel_i(mem_resp_demux_sel),
		.data_o(mem_resp_demux)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:89:3
	hpdcache_mux #(
		.NINPUT(N),
		.DATA_WIDTH(1),
		.ONE_HOT_SEL(0)
	) i_resp_ready_mux(
		.data_i(mem_resp_demux_ready),
		.sel_i(mem_resp_demux_sel),
		.data_o(mem_resp_ready_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:100:3
	genvar _gv_gen_i_9;
	generate
		for (_gv_gen_i_9 = 0; _gv_gen_i_9 < N; _gv_gen_i_9 = _gv_gen_i_9 + 1) begin : pack_unpack_resp_gen
			localparam gen_i = _gv_gen_i_9;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:102:9
			assign mem_resp_valid_o[gen_i] = mem_resp_demux_valid[gen_i];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:103:9
			assign mem_resp_o[((((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? 0 : ((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) + (gen_i * ((((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? ((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 1 : 1 - (((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0)))+:((((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? ((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 1 : 1 - (((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0))] = mem_resp_demux[((((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? 0 : ((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) + (gen_i * ((((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? ((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 1 : 1 - (((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0)))+:((((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0) >= 0 ? ((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 1 : 1 - (((2 + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[607-:32]) + resp_t_hpdcache_mem_resp_r_t_HPDcacheCfg[575-:32]) + 0))];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:104:9
			assign mem_resp_demux_ready[gen_i] = mem_resp_ready_i[gen_i];
		end
	endgenerate
endmodule
module hpdcache_mem_resp_demux_E5C71_C8B09 (
	clk_i,
	rst_ni,
	mem_resp_ready_o,
	mem_resp_valid_i,
	mem_resp_id_i,
	mem_resp_i,
	mem_resp_ready_i,
	mem_resp_valid_o,
	mem_resp_o,
	mem_resp_rt_i
);
	// removed localparam type resp_id_t_hpdcache_mem_id_t_HPDcacheCfg_type
	parameter [1349:0] resp_id_t_hpdcache_mem_id_t_HPDcacheCfg = 0;
	// removed localparam type resp_t_hpdcache_mem_resp_w_t_HPDcacheCfg_type
	parameter [1349:0] resp_t_hpdcache_mem_resp_w_t_HPDcacheCfg = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:30:13
	parameter signed [31:0] N = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:31:18
	// removed localparam type resp_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:32:18
	// removed localparam type resp_id_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:34:14
	localparam signed [31:0] RT_DEPTH = 1 << resp_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:35:19
	// removed localparam type rt_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:42:3
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:43:3
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:45:3
	output wire mem_resp_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:46:3
	input wire mem_resp_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:47:3
	input wire [resp_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] mem_resp_id_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:48:3
	input wire [(3 + resp_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]) - 1:0] mem_resp_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:50:3
	input wire [N - 1:0] mem_resp_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:51:3
	output wire [N - 1:0] mem_resp_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:52:3
	output wire [(N * (3 + resp_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32])) - 1:0] mem_resp_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:54:3
	input wire [(RT_DEPTH * resp_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) - 1:0] mem_resp_rt_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:58:3
	// removed localparam type sel_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:60:3
	wire [N - 1:0] mem_resp_demux_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:61:3
	wire [(N * (3 + resp_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32])) - 1:0] mem_resp_demux;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:62:3
	wire [N - 1:0] mem_resp_demux_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:63:3
	wire [$clog2(N) - 1:0] mem_resp_demux_sel;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:66:3
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	assign mem_resp_demux_sel = mem_resp_rt_i[sv2v_cast_32_signed(mem_resp_id_i) * resp_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]+:resp_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:69:3
	hpdcache_demux #(
		.NOUTPUT(N),
		.DATA_WIDTH(1),
		.ONE_HOT_SEL(0)
	) i_resp_valid_demux(
		.data_i(mem_resp_valid_i),
		.sel_i(mem_resp_demux_sel),
		.data_o(mem_resp_demux_valid)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:79:3
	hpdcache_demux #(
		.NOUTPUT(N),
		.DATA_WIDTH(3 + resp_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]),
		.ONE_HOT_SEL(0)
	) i_resp_demux(
		.data_i(mem_resp_i),
		.sel_i(mem_resp_demux_sel),
		.data_o(mem_resp_demux)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:89:3
	hpdcache_mux #(
		.NINPUT(N),
		.DATA_WIDTH(1),
		.ONE_HOT_SEL(0)
	) i_resp_ready_mux(
		.data_i(mem_resp_demux_ready),
		.sel_i(mem_resp_demux_sel),
		.data_o(mem_resp_ready_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:100:3
	genvar _gv_gen_i_9;
	generate
		for (_gv_gen_i_9 = 0; _gv_gen_i_9 < N; _gv_gen_i_9 = _gv_gen_i_9 + 1) begin : pack_unpack_resp_gen
			localparam gen_i = _gv_gen_i_9;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:102:9
			assign mem_resp_valid_o[gen_i] = mem_resp_demux_valid[gen_i];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:103:9
			assign mem_resp_o[gen_i * (3 + resp_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32])+:3 + resp_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]] = mem_resp_demux[gen_i * (3 + resp_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32])+:3 + resp_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv:104:9
			assign mem_resp_demux_ready[gen_i] = mem_resp_ready_i[gen_i];
		end
	endgenerate
endmodule
