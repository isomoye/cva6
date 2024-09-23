module hpdcache_mem_req_write_arbiter_6DD54_E43AC (
	clk_i,
	rst_ni,
	mem_req_write_ready_o,
	mem_req_write_valid_i,
	mem_req_write_i,
	mem_req_write_data_ready_o,
	mem_req_write_data_valid_i,
	mem_req_write_data_i,
	mem_req_write_ready_i,
	mem_req_write_valid_o,
	mem_req_write_o,
	mem_req_write_data_ready_i,
	mem_req_write_data_valid_o,
	mem_req_write_data_o
);
	// removed localparam type hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:30:15
	parameter [31:0] N = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:31:20
	// removed localparam type hpdcache_mem_req_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:32:20
	// removed localparam type hpdcache_mem_req_w_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:39:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:40:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:42:5
	output wire [N - 1:0] mem_req_write_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:43:5
	input wire [N - 1:0] mem_req_write_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:44:5
	input wire [((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? (N * (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7)) - 1 : (N * (1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))) + (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 5)):((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)] mem_req_write_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:46:5
	output wire [N - 1:0] mem_req_write_data_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:47:5
	input wire [N - 1:0] mem_req_write_data_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:48:5
	input wire [(((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? (N * ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 1)) - 1 : (N * (1 - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0))) + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) - 1)):(((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? 0 : (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0)] mem_req_write_data_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:50:5
	input wire mem_req_write_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:51:5
	output wire mem_req_write_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:52:5
	output wire [((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] mem_req_write_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:54:5
	input wire mem_req_write_data_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:55:5
	output wire mem_req_write_data_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:56:5
	output wire [(hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0:0] mem_req_write_data_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:60:5
	// removed localparam type req_send_fsm_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:66:5
	reg [31:0] req_send_fsm_q;
	reg [31:0] req_send_fsm_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:67:5
	wire req_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:68:5
	wire req_data_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:70:5
	wire [N - 1:0] mem_write_arb_req_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:71:5
	wire [((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? (N * (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7)) - 1 : (N * (1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))) + (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 5)):((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)] mem_write_arb_req;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:72:5
	wire [N - 1:0] mem_write_arb_req_data_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:73:5
	wire [(((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? (N * ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 1)) - 1 : (N * (1 - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0))) + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) - 1)):(((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? 0 : (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0)] mem_write_arb_req_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:74:5
	wire [N - 1:0] mem_write_arb_req_gnt;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:75:5
	reg mem_write_arb_req_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:77:5
	genvar _gv_gen_i_8;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:80:5
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		for (_gv_gen_i_8 = 0; _gv_gen_i_8 < sv2v_cast_32_signed(N); _gv_gen_i_8 = _gv_gen_i_8 + 1) begin : pack_inputs_gen
			localparam gen_i = _gv_gen_i_8;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:82:13
			assign mem_write_arb_req_valid[gen_i] = mem_req_write_valid_i[gen_i];
			assign mem_write_arb_req[((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) + (gen_i * ((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)))+:((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))] = mem_req_write_i[((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? 0 : ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) + (gen_i * ((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6)))+:((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))];
			assign mem_write_arb_req_data_valid[gen_i] = mem_req_write_data_valid_i[gen_i];
			assign mem_write_arb_req_data[(((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? 0 : (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) + (gen_i * (((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 1 : 1 - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0)))+:(((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 1 : 1 - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0))] = mem_req_write_data_i[(((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? 0 : (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) + (gen_i * (((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 1 : 1 - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0)))+:(((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 1 : 1 - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0))];
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:90:5
	hpdcache_fxarb #(.N(2)) hpdcache_fxarb_mem_req_write_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(mem_write_arb_req_valid),
		.gnt_o(mem_write_arb_req_gnt),
		.ready_i(mem_write_arb_req_ready)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:100:5
	assign req_valid = |(mem_write_arb_req_gnt & mem_write_arb_req_valid);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:101:5
	assign req_data_valid = |(mem_write_arb_req_gnt & mem_write_arb_req_data_valid);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:111:5
	always @(*) begin : req_send_fsm_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:113:9
		req_send_fsm_d = req_send_fsm_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:114:9
		mem_write_arb_req_ready = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:115:9
		case (req_send_fsm_q)
			32'd0:
				if (req_valid && mem_req_write_ready_i) begin
					begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:118:21
						if (req_data_valid) begin
							begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:119:25
								if (mem_req_write_data_ready_i) begin
									// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:120:29
									mem_write_arb_req_ready = 1'b1;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:121:29
									req_send_fsm_d = 32'd0;
								end
								else
									// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:123:29
									req_send_fsm_d = 32'd1;
							end
						end
					end
				end
				else if (req_data_valid && mem_req_write_data_ready_i)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:127:21
					req_send_fsm_d = 32'd2;
			32'd1:
				if (req_data_valid && mem_req_write_data_ready_i) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:132:21
					mem_write_arb_req_ready = 1'b1;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:133:21
					req_send_fsm_d = 32'd0;
				end
			32'd2:
				if (req_valid && mem_req_write_ready_i) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:138:21
					mem_write_arb_req_ready = 1'b1;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:139:21
					req_send_fsm_d = 32'd0;
				end
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:144:5
	always @(posedge clk_i or negedge rst_ni) begin : req_send_fsm_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:146:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:147:13
			req_send_fsm_q <= 32'd0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:149:13
			req_send_fsm_q <= req_send_fsm_d;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:154:5
	generate
		for (_gv_gen_i_8 = 0; _gv_gen_i_8 < sv2v_cast_32_signed(N); _gv_gen_i_8 = _gv_gen_i_8 + 1) begin : req_ready_gen
			localparam gen_i = _gv_gen_i_8;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:156:13
			assign mem_req_write_ready_o[gen_i] = (mem_write_arb_req_gnt[gen_i] & mem_req_write_ready_i) & (req_send_fsm_q != 32'd1);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:160:13
			assign mem_req_write_data_ready_o[gen_i] = (mem_write_arb_req_gnt[gen_i] & mem_req_write_data_ready_i) & (req_send_fsm_q != 32'd2);
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:168:5
	assign mem_req_write_valid_o = req_valid & (req_send_fsm_q != 32'd1);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:169:5
	assign mem_req_write_data_valid_o = req_data_valid & (req_send_fsm_q != 32'd2);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:171:5
	hpdcache_mux #(
		.NINPUT(N),
		.DATA_WIDTH(((((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6) >= 0 ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 7 : 1 - (((hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6))),
		.ONE_HOT_SEL(1'b1)
	) mem_write_req_mux_i(
		.data_i(mem_write_arb_req),
		.sel_i(mem_write_arb_req_gnt),
		.data_o(mem_req_write_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv:181:5
	hpdcache_mux #(
		.NINPUT(N),
		.DATA_WIDTH((((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0) >= 0 ? (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 1 : 1 - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0))),
		.ONE_HOT_SEL(1'b1)
	) mem_write_data_req_mux_i(
		.data_i(mem_write_arb_req_data),
		.sel_i(mem_write_arb_req_gnt),
		.data_o(mem_req_write_data_o)
	);
	initial _sv2v_0 = 0;
endmodule
