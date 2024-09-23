module load_unit_BE1C9_7E14E (
	clk_i,
	rst_ni,
	flush_i,
	valid_i,
	lsu_ctrl_i,
	pop_ld_o,
	valid_o,
	trans_id_o,
	result_o,
	ex_o,
	translation_req_o,
	vaddr_o,
	tinst_o,
	hs_ld_st_inst_o,
	hlvx_inst_o,
	paddr_i,
	ex_i,
	dtlb_hit_i,
	dtlb_ppn_i,
	page_offset_o,
	page_offset_matches_i,
	store_buffer_empty_i,
	commit_tran_id_i,
	req_port_i,
	req_port_o,
	dcache_wbuffer_not_ni_i
);
	// removed localparam type dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg = 0;
	// removed localparam type exception_t_exception_t_exception_t_CVA6Cfg_type
	parameter [17102:0] exception_t_exception_t_exception_t_CVA6Cfg = 0;
	// removed localparam type lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg_type
	parameter [17102:0] lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/load_unit.sv:24:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/load_unit.sv:25:20
	// removed localparam type dcache_req_i_t
	// Trace: core/load_unit.sv:26:20
	// removed localparam type dcache_req_o_t
	// Trace: core/load_unit.sv:27:20
	// removed localparam type exception_t
	// Trace: core/load_unit.sv:28:20
	// removed localparam type lsu_ctrl_t
	// Trace: core/load_unit.sv:31:5
	input wire clk_i;
	// Trace: core/load_unit.sv:33:5
	input wire rst_ni;
	// Trace: core/load_unit.sv:35:5
	input wire flush_i;
	// Trace: core/load_unit.sv:37:5
	input wire valid_i;
	// Trace: core/load_unit.sv:39:5
	input wire [((((((1 + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32]) - 1:0] lsu_ctrl_i;
	// Trace: core/load_unit.sv:41:5
	output reg pop_ld_o;
	// Trace: core/load_unit.sv:43:5
	output reg valid_o;
	// Trace: core/load_unit.sv:45:5
	output reg [CVA6Cfg[16503-:32] - 1:0] trans_id_o;
	// Trace: core/load_unit.sv:47:5
	output reg [CVA6Cfg[17102-:32] - 1:0] result_o;
	// Trace: core/load_unit.sv:49:5
	output reg [((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] ex_o;
	// Trace: core/load_unit.sv:51:5
	output reg translation_req_o;
	// Trace: core/load_unit.sv:53:5
	output wire [CVA6Cfg[17070-:32] - 1:0] vaddr_o;
	// Trace: core/load_unit.sv:55:5
	output wire [31:0] tinst_o;
	// Trace: core/load_unit.sv:57:5
	output wire hs_ld_st_inst_o;
	// Trace: core/load_unit.sv:59:5
	output wire hlvx_inst_o;
	// Trace: core/load_unit.sv:61:5
	input wire [CVA6Cfg[17038-:32] - 1:0] paddr_i;
	// Trace: core/load_unit.sv:63:5
	input wire [((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] ex_i;
	// Trace: core/load_unit.sv:65:5
	input wire dtlb_hit_i;
	// Trace: core/load_unit.sv:67:5
	input wire [CVA6Cfg[419-:32] - 1:0] dtlb_ppn_i;
	// Trace: core/load_unit.sv:69:5
	output wire [11:0] page_offset_o;
	// Trace: core/load_unit.sv:71:5
	input wire page_offset_matches_i;
	// Trace: core/load_unit.sv:73:5
	input wire store_buffer_empty_i;
	// Trace: core/load_unit.sv:75:5
	input wire [CVA6Cfg[16503-:32] - 1:0] commit_tran_id_i;
	// Trace: core/load_unit.sv:77:5
	input wire [(((2 + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]) - 1:0] req_port_i;
	// Trace: core/load_unit.sv:79:5
	output reg [(((((((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1:0] req_port_o;
	// Trace: core/load_unit.sv:81:5
	input wire dcache_wbuffer_not_ni_i;
	// Trace: core/load_unit.sv:83:3
	reg [3:0] state_d;
	reg [3:0] state_q;
	// Trace: core/load_unit.sv:98:3
	// removed localparam type ariane_pkg_fu_op
	// removed localparam type ldbuf_t
	// Trace: core/load_unit.sv:109:3
	localparam [0:0] LDBUF_FALLTHROUGH = CVA6Cfg[16584-:32] == 1;
	// Trace: core/load_unit.sv:110:3
	localparam [31:0] REQ_ID_BITS = (CVA6Cfg[16584-:32] > 1 ? $clog2(CVA6Cfg[16584-:32]) : 1);
	// Trace: core/load_unit.sv:114:3
	// removed localparam type ldbuf_id_t
	// Trace: core/load_unit.sv:116:3
	reg [CVA6Cfg[16584-:32] - 1:0] ldbuf_valid_q;
	reg [CVA6Cfg[16584-:32] - 1:0] ldbuf_valid_d;
	// Trace: core/load_unit.sv:117:3
	reg [CVA6Cfg[16584-:32] - 1:0] ldbuf_flushed_q;
	reg [CVA6Cfg[16584-:32] - 1:0] ldbuf_flushed_d;
	// Trace: core/load_unit.sv:118:3
	reg [(((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) >= 0 ? (CVA6Cfg[16584-:32] * ((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 8)) - 1 : (CVA6Cfg[16584-:32] * (1 - ((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7))) + ((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 6)):(((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) >= 0 ? 0 : (CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7)] ldbuf_q;
	// Trace: core/load_unit.sv:119:3
	wire ldbuf_empty;
	wire ldbuf_full;
	// Trace: core/load_unit.sv:120:3
	wire [REQ_ID_BITS - 1:0] ldbuf_free_index;
	// Trace: core/load_unit.sv:121:3
	wire ldbuf_w;
	// Trace: core/load_unit.sv:122:3
	wire [(CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7:0] ldbuf_wdata;
	// Trace: core/load_unit.sv:123:3
	wire [REQ_ID_BITS - 1:0] ldbuf_windex;
	// Trace: core/load_unit.sv:124:3
	reg ldbuf_r;
	// Trace: core/load_unit.sv:125:3
	wire [(CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7:0] ldbuf_rdata;
	// Trace: core/load_unit.sv:126:3
	wire [REQ_ID_BITS - 1:0] ldbuf_rindex;
	// Trace: core/load_unit.sv:127:3
	reg [REQ_ID_BITS - 1:0] ldbuf_last_id_q;
	// Trace: core/load_unit.sv:129:3
	assign ldbuf_full = &ldbuf_valid_q;
	// Trace: core/load_unit.sv:135:3
	generate
		if (CVA6Cfg[16584-:32] > 1) begin : ldbuf_free_index_multi_gen
			// Trace: core/load_unit.sv:137:7
			lzc #(
				.WIDTH(CVA6Cfg[16584-:32]),
				.MODE(1'b0)
			) lzc_windex_i(
				.in_i(~ldbuf_valid_q),
				.cnt_o(ldbuf_free_index),
				.empty_o(ldbuf_empty)
			);
		end
		else begin : ldbuf_free_index_single_gen
			// Trace: core/load_unit.sv:146:7
			assign ldbuf_free_index = 1'b0;
		end
	endgenerate
	// Trace: core/load_unit.sv:150:3
	assign ldbuf_windex = (LDBUF_FALLTHROUGH && ldbuf_r ? ldbuf_rindex : ldbuf_free_index);
	// Trace: core/load_unit.sv:152:3
	always @(*) begin : ldbuf_comb
		if (_sv2v_0)
			;
		// Trace: core/load_unit.sv:153:5
		ldbuf_flushed_d = ldbuf_flushed_q;
		// Trace: core/load_unit.sv:154:5
		ldbuf_valid_d = ldbuf_valid_q;
		// Trace: core/load_unit.sv:157:5
		if (flush_i)
			// Trace: core/load_unit.sv:158:7
			ldbuf_flushed_d = 1'sb1;
		if (ldbuf_r && (!LDBUF_FALLTHROUGH || !ldbuf_w))
			// Trace: core/load_unit.sv:163:7
			ldbuf_valid_d[ldbuf_rindex] = 1'b0;
		if (ldbuf_w) begin
			// Trace: core/load_unit.sv:167:7
			ldbuf_flushed_d[ldbuf_windex] = 1'b0;
			// Trace: core/load_unit.sv:168:7
			ldbuf_valid_d[ldbuf_windex] = 1'b1;
		end
	end
	// Trace: core/load_unit.sv:172:3
	always @(posedge clk_i or negedge rst_ni) begin : ldbuf_ff
		// Trace: core/load_unit.sv:173:5
		if (!rst_ni) begin
			// Trace: core/load_unit.sv:174:7
			ldbuf_flushed_q <= 1'sb0;
			// Trace: core/load_unit.sv:175:7
			ldbuf_valid_q <= 1'sb0;
			// Trace: core/load_unit.sv:176:7
			ldbuf_last_id_q <= 1'sb0;
			// Trace: core/load_unit.sv:177:7
			ldbuf_q <= 1'sb0;
		end
		else begin
			// Trace: core/load_unit.sv:179:7
			ldbuf_flushed_q <= ldbuf_flushed_d;
			// Trace: core/load_unit.sv:180:7
			ldbuf_valid_q <= ldbuf_valid_d;
			// Trace: core/load_unit.sv:181:7
			if (ldbuf_w) begin
				// Trace: core/load_unit.sv:182:9
				ldbuf_last_id_q <= ldbuf_windex;
				// Trace: core/load_unit.sv:183:9
				ldbuf_q[(((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) >= 0 ? 0 : (CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) + (ldbuf_windex * (((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) >= 0 ? (CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 8 : 1 - ((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7)))+:(((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) >= 0 ? (CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 8 : 1 - ((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7))] <= ldbuf_wdata;
			end
		end
	end
	// Trace: core/load_unit.sv:189:3
	assign page_offset_o = lsu_ctrl_i[(lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] - 12):(lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] - 1)];
	// Trace: core/load_unit.sv:191:3
	assign vaddr_o = lsu_ctrl_i[lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))-:((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) >= (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))))) + 1)];
	// Trace: core/load_unit.sv:192:3
	assign hs_ld_st_inst_o = (CVA6Cfg[16543] ? lsu_ctrl_i[4 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))] : 1'b0);
	// Trace: core/load_unit.sv:193:3
	assign hlvx_inst_o = (CVA6Cfg[16543] ? lsu_ctrl_i[3 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))] : 1'b0);
	// Trace: core/load_unit.sv:195:3
	assign tinst_o = (CVA6Cfg[16543] ? lsu_ctrl_i[36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))-:((36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) >= (4 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) - (4 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((4 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) + 1)] : {32 {1'sb0}});
	// Trace: core/load_unit.sv:197:3
	wire [1:1] sv2v_tmp_D8927;
	assign sv2v_tmp_D8927 = 1'b0;
	always @(*) req_port_o[1 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] = sv2v_tmp_D8927;
	// Trace: core/load_unit.sv:198:3
	wire [((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) + 1) * 1:1] sv2v_tmp_48039;
	assign sv2v_tmp_48039 = 1'sb0;
	always @(*) req_port_o[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) + 1)] = sv2v_tmp_48039;
	// Trace: core/load_unit.sv:200:3
	assign ldbuf_wdata = {lsu_ctrl_i[lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] - 1-:lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32]], lsu_ctrl_i[(lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] - 1) - (CVA6Cfg[16972-:32] - 1)):(lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] - 1)], lsu_ctrl_i[lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7-:((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) >= (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) ? ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) + 1 : ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7)) + 1)]};
	// Trace: core/load_unit.sv:205:3
	wire [((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))))) + 1) * 1:1] sv2v_tmp_EE0D5;
	assign sv2v_tmp_EE0D5 = lsu_ctrl_i[(lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] - 1) - (CVA6Cfg[1028-:32] - 1)):(lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] - 1)];
	always @(*) req_port_o[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))))) + 1)] = sv2v_tmp_EE0D5;
	// Trace: core/load_unit.sv:207:3
	wire [((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + 1) * 1:1] sv2v_tmp_57E27;
	assign sv2v_tmp_57E27 = paddr_i[(CVA6Cfg[996-:32] + CVA6Cfg[1028-:32]) - 1:CVA6Cfg[1028-:32]];
	always @(*) req_port_o[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + 1)] = sv2v_tmp_57E27;
	// Trace: core/load_unit.sv:211:3
	wire [((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1) >= 2 ? dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 0 : 3 - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) * 1:1] sv2v_tmp_7B6E6;
	assign sv2v_tmp_7B6E6 = ldbuf_windex;
	always @(*) req_port_o[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1) >= 2 ? dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 0 : 3 - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))] = sv2v_tmp_7B6E6;
	// Trace: core/load_unit.sv:213:3
	wire [((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1) * 1:1] sv2v_tmp_AF86D;
	assign sv2v_tmp_AF86D = ex_i[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)];
	always @(*) ex_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = sv2v_tmp_AF86D;
	// Trace: core/load_unit.sv:214:3
	wire [((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1) * 1:1] sv2v_tmp_8A707;
	assign sv2v_tmp_8A707 = ex_i[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)];
	always @(*) ex_o[exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = sv2v_tmp_8A707;
	// Trace: core/load_unit.sv:215:3
	wire [((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) * 1:1] sv2v_tmp_D5506;
	assign sv2v_tmp_D5506 = (CVA6Cfg[16543] ? ex_i[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] : {(((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) - ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1) >= ((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) - ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1 : exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) ? (((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) - ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1) - ((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) - ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1 : exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) + 1 : (((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) - ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1 : exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) - ((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33 : ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) - ((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)) + 1) {1'sb0}});
	always @(*) ex_o[exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33-:((exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33) >= 34 ? exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 0 : 35 - (exception_t_exception_t_exception_t_CVA6Cfg[17006-:32] + 33))] = sv2v_tmp_D5506;
	// Trace: core/load_unit.sv:216:3
	wire [32:1] sv2v_tmp_EEB88;
	assign sv2v_tmp_EEB88 = (CVA6Cfg[16543] ? ex_i[33-:32] : {(((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 33 : 2) >= ((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 2 : 33) ? (((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 33 : 2) - ((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 2 : 33)) + 1 : (((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 2 : 33) - ((((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? 33 : 2)) + 1) {1'sb0}});
	always @(*) ex_o[33-:32] = sv2v_tmp_EEB88;
	// Trace: core/load_unit.sv:217:3
	wire [1:1] sv2v_tmp_C3EC6;
	assign sv2v_tmp_C3EC6 = (CVA6Cfg[16543] ? ex_i[1] : 1'b0);
	always @(*) ex_o[1] = sv2v_tmp_C3EC6;
	// Trace: core/load_unit.sv:220:3
	wire paddr_ni;
	// Trace: core/load_unit.sv:221:3
	wire not_commit_time;
	// Trace: core/load_unit.sv:222:3
	wire inflight_stores;
	// Trace: core/load_unit.sv:223:3
	wire stall_ni;
	// Trace: core/load_unit.sv:224:3
	function automatic [64:0] sv2v_cast_65;
		input reg [64:0] inp;
		sv2v_cast_65 = inp;
	endfunction
	function automatic config_pkg_range_check;
		// Trace: core/include/config_pkg.sv:375:40
		input reg [63:0] base;
		// Trace: core/include/config_pkg.sv:375:59
		input reg [63:0] len;
		// Trace: core/include/config_pkg.sv:375:77
		input reg [63:0] address;
		// Trace: core/include/config_pkg.sv:378:5
		config_pkg_range_check = (address >= base) && ({1'b0, address} < (sv2v_cast_65(base) + len));
	endfunction
	function automatic config_pkg_is_inside_nonidempotent_regions;
		// Trace: core/include/config_pkg.sv:382:60
		input reg [17102:0] Cfg;
		// Trace: core/include/config_pkg.sv:382:76
		input reg [63:0] address;
		// Trace: core/include/config_pkg.sv:383:5
		reg [15:0] pass;
		begin
			// Trace: core/include/config_pkg.sv:384:5
			pass = 1'sb0;
			// Trace: core/include/config_pkg.sv:385:5
			begin : sv2v_autoblock_1
				// Trace: core/include/config_pkg.sv:385:10
				reg [31:0] k;
				// Trace: core/include/config_pkg.sv:385:10
				for (k = 0; k < Cfg[7593-:32]; k = k + 1)
					begin
						// Trace: core/include/config_pkg.sv:386:7
						pass[k] = config_pkg_range_check(Cfg[6538 + (k * 64)+:64], Cfg[5514 + (k * 64)+:64], address);
					end
			end
			config_pkg_is_inside_nonidempotent_regions = |pass;
		end
	endfunction
	assign paddr_ni = config_pkg_is_inside_nonidempotent_regions(CVA6Cfg, {{52 - CVA6Cfg[419-:32] {1'b0}}, dtlb_ppn_i, 12'd0});
	// Trace: core/load_unit.sv:227:3
	assign not_commit_time = commit_tran_id_i != lsu_ctrl_i[lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] - 1-:lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32]];
	// Trace: core/load_unit.sv:228:3
	assign inflight_stores = !dcache_wbuffer_not_ni_i || !store_buffer_empty_i;
	// Trace: core/load_unit.sv:229:3
	assign stall_ni = (inflight_stores || not_commit_time) && (paddr_ni && CVA6Cfg[1320]);
	// Trace: core/load_unit.sv:234:3
	function automatic [1:0] ariane_pkg_extract_transfer_size;
		// Trace: core/include/ariane_pkg.sv:809:56
		input reg [7:0] op;
		// Trace: core/include/ariane_pkg.sv:810:5
		case (op)
			8'd37, 8'd59, 8'd38, 8'd60, 8'd96, 8'd100, 8'd62, 8'd64, 8'd74, 8'd75, 8'd76, 8'd77, 8'd78, 8'd79, 8'd80, 8'd81, 8'd82:
				// Trace: core/include/ariane_pkg.sv:818:9
				ariane_pkg_extract_transfer_size = 2'b11;
			8'd39, 8'd40, 8'd53, 8'd58, 8'd54, 8'd41, 8'd57, 8'd97, 8'd101, 8'd61, 8'd63, 8'd65, 8'd66, 8'd67, 8'd68, 8'd69, 8'd70, 8'd71, 8'd72, 8'd73:
				// Trace: core/include/ariane_pkg.sv:828:9
				ariane_pkg_extract_transfer_size = 2'b10;
			8'd42, 8'd43, 8'd50, 8'd51, 8'd52, 8'd44, 8'd56, 8'd98, 8'd102: ariane_pkg_extract_transfer_size = 2'b01;
			8'd45, 8'd47, 8'd48, 8'd49, 8'd46, 8'd55, 8'd99, 8'd103: ariane_pkg_extract_transfer_size = 2'b00;
			default: ariane_pkg_extract_transfer_size = 2'b11;
		endcase
	endfunction
	always @(*) begin : load_control
		// Trace: core/load_unit.sv:235:5
		reg accept_req;
		if (_sv2v_0)
			;
		// Trace: core/load_unit.sv:238:5
		state_d = state_q;
		// Trace: core/load_unit.sv:239:5
		translation_req_o = 1'b0;
		// Trace: core/load_unit.sv:240:5
		req_port_o[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] = 1'b0;
		// Trace: core/load_unit.sv:242:5
		req_port_o[1] = 1'b0;
		// Trace: core/load_unit.sv:243:5
		req_port_o[0] = 1'b0;
		// Trace: core/load_unit.sv:244:5
		req_port_o[(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))-:(((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1)] = lsu_ctrl_i[(lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)-:(((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)) >= (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) ? (((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)) - (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))) + 1 : ((12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) - ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))) + 1)];
		// Trace: core/load_unit.sv:245:5
		req_port_o[2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)-:((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) ? ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) + 1)] = ariane_pkg_extract_transfer_size(lsu_ctrl_i[lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7-:((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) >= (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) ? ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) + 1 : ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7)) + 1)]);
		// Trace: core/load_unit.sv:246:5
		pop_ld_o = 1'b0;
		// Trace: core/load_unit.sv:251:5
		accept_req = valid_i && (!ldbuf_full || (LDBUF_FALLTHROUGH && ldbuf_r));
		// Trace: core/load_unit.sv:253:5
		case (state_q)
			4'd0:
				// Trace: core/load_unit.sv:255:9
				if (accept_req) begin
					// Trace: core/load_unit.sv:258:11
					translation_req_o = 1'b1;
					// Trace: core/load_unit.sv:260:11
					if (!page_offset_matches_i) begin
						// Trace: core/load_unit.sv:262:13
						req_port_o[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] = 1'b1;
						// Trace: core/load_unit.sv:264:13
						if (!req_port_i[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))])
							// Trace: core/load_unit.sv:265:15
							state_d = 4'd1;
						else
							// Trace: core/load_unit.sv:267:15
							if (CVA6Cfg[16367] && !dtlb_hit_i)
								// Trace: core/load_unit.sv:268:17
								state_d = 4'd4;
							else
								// Trace: core/load_unit.sv:270:17
								if (!stall_ni) begin
									// Trace: core/load_unit.sv:272:19
									state_d = 4'd2;
									// Trace: core/load_unit.sv:273:19
									pop_ld_o = 1'b1;
								end
								else if (CVA6Cfg[1320])
									// Trace: core/load_unit.sv:276:19
									state_d = 4'd5;
					end
					else
						// Trace: core/load_unit.sv:282:13
						state_d = 4'd3;
				end
			4'd3:
				// Trace: core/load_unit.sv:290:9
				if (!page_offset_matches_i)
					// Trace: core/load_unit.sv:291:11
					state_d = 4'd1;
			4'd1: begin
				// Trace: core/load_unit.sv:297:9
				translation_req_o = 1'b1;
				// Trace: core/load_unit.sv:299:9
				req_port_o[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] = 1'b1;
				// Trace: core/load_unit.sv:301:9
				if (req_port_i[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))]) begin
					begin
						// Trace: core/load_unit.sv:303:11
						if (CVA6Cfg[16367] && !dtlb_hit_i)
							// Trace: core/load_unit.sv:304:13
							state_d = 4'd4;
						else
							// Trace: core/load_unit.sv:306:13
							if (!stall_ni) begin
								// Trace: core/load_unit.sv:308:15
								state_d = 4'd2;
								// Trace: core/load_unit.sv:309:15
								pop_ld_o = 1'b1;
							end
							else if (CVA6Cfg[1320])
								// Trace: core/load_unit.sv:312:15
								state_d = 4'd5;
					end
				end
			end
			4'd2: begin
				// Trace: core/load_unit.sv:321:9
				req_port_o[0] = 1'b1;
				// Trace: core/load_unit.sv:322:9
				state_d = 4'd0;
				// Trace: core/load_unit.sv:324:9
				if (accept_req) begin
					// Trace: core/load_unit.sv:327:11
					translation_req_o = 1'b1;
					// Trace: core/load_unit.sv:329:11
					if (!page_offset_matches_i) begin
						// Trace: core/load_unit.sv:331:13
						req_port_o[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] = 1'b1;
						// Trace: core/load_unit.sv:333:13
						if (!req_port_i[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))])
							// Trace: core/load_unit.sv:334:15
							state_d = 4'd1;
						else
							// Trace: core/load_unit.sv:337:15
							if (CVA6Cfg[16367] && !dtlb_hit_i)
								// Trace: core/load_unit.sv:338:17
								state_d = 4'd4;
							else
								// Trace: core/load_unit.sv:340:17
								if (!stall_ni) begin
									// Trace: core/load_unit.sv:342:19
									state_d = 4'd2;
									// Trace: core/load_unit.sv:343:19
									pop_ld_o = 1'b1;
								end
								else if (CVA6Cfg[1320])
									// Trace: core/load_unit.sv:346:19
									state_d = 4'd5;
					end
					else
						// Trace: core/load_unit.sv:352:13
						state_d = 4'd3;
				end
				if (ex_i[0])
					// Trace: core/load_unit.sv:360:11
					req_port_o[1] = 1'b1;
			end
			4'd7: begin
				// Trace: core/load_unit.sv:367:9
				req_port_o[1] = 1'b1;
				// Trace: core/load_unit.sv:368:9
				req_port_o[0] = 1'b1;
				// Trace: core/load_unit.sv:370:9
				state_d = 4'd0;
			end
			default:
				// Trace: core/load_unit.sv:377:9
				if ((state_q == 4'd4) && CVA6Cfg[16367]) begin
					// Trace: core/load_unit.sv:378:11
					req_port_o[1] = 1'b1;
					// Trace: core/load_unit.sv:379:11
					req_port_o[0] = 1'b1;
					// Trace: core/load_unit.sv:381:11
					state_d = 4'd6;
				end
				else if ((state_q == 4'd5) && CVA6Cfg[1320]) begin
					// Trace: core/load_unit.sv:383:11
					req_port_o[1] = 1'b1;
					// Trace: core/load_unit.sv:384:11
					req_port_o[0] = 1'b1;
					// Trace: core/load_unit.sv:386:11
					state_d = 4'd8;
				end
				else if (((state_q == 4'd8) && CVA6Cfg[1320]) && dcache_wbuffer_not_ni_i)
					// Trace: core/load_unit.sv:390:11
					state_d = 4'd6;
				else if ((state_q == 4'd6) && (CVA6Cfg[16367] || CVA6Cfg[1320])) begin
					// Trace: core/load_unit.sv:392:11
					translation_req_o = 1'b1;
					// Trace: core/load_unit.sv:394:11
					if (dtlb_hit_i)
						// Trace: core/load_unit.sv:394:27
						state_d = 4'd1;
					if (ex_i[0]) begin
						// Trace: core/load_unit.sv:399:13
						state_d = 4'd0;
						// Trace: core/load_unit.sv:401:13
						pop_ld_o = ~req_port_i[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))];
					end
				end
				else
					// Trace: core/load_unit.sv:404:11
					state_d = 4'd0;
		endcase
		if (flush_i)
			// Trace: core/load_unit.sv:411:7
			state_d = 4'd7;
	end
	// Trace: core/load_unit.sv:416:3
	assign ldbuf_w = req_port_o[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] & req_port_i[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))];
	// Trace: core/load_unit.sv:421:3
	function automatic [REQ_ID_BITS - 1:0] sv2v_cast_45D39;
		input reg [REQ_ID_BITS - 1:0] inp;
		sv2v_cast_45D39 = inp;
	endfunction
	assign ldbuf_rindex = (CVA6Cfg[16584-:32] > 1 ? sv2v_cast_45D39(req_port_i[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))-:((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0))) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))) + 1)]) : 1'b0);
	assign ldbuf_rdata = ldbuf_q[(((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) >= 0 ? 0 : (CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) + (ldbuf_rindex * (((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) >= 0 ? (CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 8 : 1 - ((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7)))+:(((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) >= 0 ? (CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 8 : 1 - ((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7))];
	// Trace: core/load_unit.sv:425:3
	always @(*) begin : rvalid_output
		if (_sv2v_0)
			;
		// Trace: core/load_unit.sv:427:5
		ldbuf_r = req_port_i[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))];
		// Trace: core/load_unit.sv:428:5
		trans_id_o = ldbuf_q[(((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) >= 0 ? (ldbuf_rindex * (((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) >= 0 ? (CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 8 : 1 - ((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7))) + (((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) >= 0 ? CVA6Cfg[16503-:32] + (CVA6Cfg[16972-:32] + 7) : ((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) - (CVA6Cfg[16503-:32] + (CVA6Cfg[16972-:32] + 7))) : (((ldbuf_rindex * (((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) >= 0 ? (CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 8 : 1 - ((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7))) + (((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) >= 0 ? CVA6Cfg[16503-:32] + (CVA6Cfg[16972-:32] + 7) : ((CVA6Cfg[16503-:32] + CVA6Cfg[16972-:32]) + 7) - (CVA6Cfg[16503-:32] + (CVA6Cfg[16972-:32] + 7)))) + ((CVA6Cfg[16503-:32] + (CVA6Cfg[16972-:32] + 7)) >= (CVA6Cfg[16972-:32] + 8) ? ((CVA6Cfg[16503-:32] + (CVA6Cfg[16972-:32] + 7)) - (CVA6Cfg[16972-:32] + 8)) + 1 : ((CVA6Cfg[16972-:32] + 8) - (CVA6Cfg[16503-:32] + (CVA6Cfg[16972-:32] + 7))) + 1)) - 1)-:((CVA6Cfg[16503-:32] + (CVA6Cfg[16972-:32] + 7)) >= (CVA6Cfg[16972-:32] + 8) ? ((CVA6Cfg[16503-:32] + (CVA6Cfg[16972-:32] + 7)) - (CVA6Cfg[16972-:32] + 8)) + 1 : ((CVA6Cfg[16972-:32] + 8) - (CVA6Cfg[16503-:32] + (CVA6Cfg[16972-:32] + 7))) + 1)];
		// Trace: core/load_unit.sv:429:5
		valid_o = 1'b0;
		// Trace: core/load_unit.sv:430:5
		ex_o[0] = 1'b0;
		// Trace: core/load_unit.sv:433:5
		if (req_port_i[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] && !ldbuf_flushed_q[ldbuf_rindex]) begin
			// Trace: core/load_unit.sv:435:7
			if ((ldbuf_last_id_q != ldbuf_rindex) || !req_port_o[1])
				// Trace: core/load_unit.sv:435:70
				valid_o = 1'b1;
			if (ex_i[0] && (state_q == 4'd2)) begin
				// Trace: core/load_unit.sv:440:9
				valid_o = 1'b1;
				// Trace: core/load_unit.sv:441:9
				ex_o[0] = 1'b1;
			end
		end
		if (((((CVA6Cfg[16367] || CVA6Cfg[1320]) && (state_q == 4'd6)) && !req_port_i[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))]) && ex_i[0]) && valid_i) begin
			// Trace: core/load_unit.sv:450:7
			trans_id_o = lsu_ctrl_i[lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] - 1-:lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32]];
			// Trace: core/load_unit.sv:451:7
			valid_o = 1'b1;
			// Trace: core/load_unit.sv:452:7
			ex_o[0] = 1'b1;
		end
	end
	// Trace: core/load_unit.sv:458:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/load_unit.sv:459:5
		if (~rst_ni)
			// Trace: core/load_unit.sv:460:7
			state_q <= 4'd0;
		else
			// Trace: core/load_unit.sv:462:7
			state_q <= state_d;
	// Trace: core/load_unit.sv:469:3
	wire [CVA6Cfg[17102-:32] - 1:0] shifted_data;
	// Trace: core/load_unit.sv:472:3
	assign shifted_data = req_port_i[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)-:((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) + 1)] >> {ldbuf_rdata[CVA6Cfg[16972-:32] + 7-:((CVA6Cfg[16972-:32] + 7) >= 8 ? CVA6Cfg[16972-:32] + 0 : 9 - (CVA6Cfg[16972-:32] + 7))], 3'b000};
	// Trace: core/load_unit.sv:489:3
	wire [(CVA6Cfg[17102-:32] / 8) - 1:0] rdata_sign_bits;
	// Trace: core/load_unit.sv:490:3
	wire [CVA6Cfg[16972-:32] - 1:0] rdata_offset;
	// Trace: core/load_unit.sv:491:3
	wire rdata_sign_bit;
	wire rdata_is_signed;
	wire rdata_is_fp_signed;
	// Trace: core/load_unit.sv:495:3
	assign rdata_is_signed = |{ldbuf_rdata[7-:8] == 8'd39, ldbuf_rdata[7-:8] == 8'd42, ldbuf_rdata[7-:8] == 8'd45, ldbuf_rdata[7-:8] == 8'd53, ldbuf_rdata[7-:8] == 8'd50, ldbuf_rdata[7-:8] == 8'd48};
	// Trace: core/load_unit.sv:496:3
	assign rdata_is_fp_signed = |{ldbuf_rdata[7-:8] == 8'd97, ldbuf_rdata[7-:8] == 8'd98, ldbuf_rdata[7-:8] == 8'd99};
	// Trace: core/load_unit.sv:497:3
	assign rdata_offset = (|{ldbuf_rdata[7-:8] == 8'd39, ldbuf_rdata[7-:8] == 8'd97, ldbuf_rdata[7-:8] == 8'd53} & CVA6Cfg[16973] ? ldbuf_rdata[CVA6Cfg[16972-:32] + 7-:((CVA6Cfg[16972-:32] + 7) >= 8 ? CVA6Cfg[16972-:32] + 0 : 9 - (CVA6Cfg[16972-:32] + 7))] + 3 : (|{ldbuf_rdata[7-:8] == 8'd42, ldbuf_rdata[7-:8] == 8'd98, ldbuf_rdata[7-:8] == 8'd50} ? ldbuf_rdata[CVA6Cfg[16972-:32] + 7-:((CVA6Cfg[16972-:32] + 7) >= 8 ? CVA6Cfg[16972-:32] + 0 : 9 - (CVA6Cfg[16972-:32] + 7))] + 1 : ldbuf_rdata[CVA6Cfg[16972-:32] + 7-:((CVA6Cfg[16972-:32] + 7) >= 8 ? CVA6Cfg[16972-:32] + 0 : 9 - (CVA6Cfg[16972-:32] + 7))]));
	// Trace: core/load_unit.sv:501:3
	genvar _gv_i_43;
	generate
		for (_gv_i_43 = 0; _gv_i_43 < (CVA6Cfg[17102-:32] / 8); _gv_i_43 = _gv_i_43 + 1) begin : gen_sign_bits
			localparam i = _gv_i_43;
			// Trace: core/load_unit.sv:502:5
			assign rdata_sign_bits[i] = req_port_i[(dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) - ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] - 1) - (((i + 1) * 8) - 1))];
		end
	endgenerate
	// Trace: core/load_unit.sv:508:3
	assign rdata_sign_bit = (rdata_is_signed & rdata_sign_bits[rdata_offset]) | (CVA6Cfg[16471] && rdata_is_fp_signed);
	// Trace: core/load_unit.sv:511:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/load_unit.sv:512:5
		(* full_case, parallel_case *)
		case (ldbuf_rdata[7-:8])
			8'd39, 8'd40, 8'd53, 8'd58, 8'd54:
				// Trace: core/load_unit.sv:514:7
				result_o = {{CVA6Cfg[17102-:32] - 32 {rdata_sign_bit}}, shifted_data[31:0]};
			8'd42, 8'd43, 8'd50, 8'd51, 8'd52:
				// Trace: core/load_unit.sv:516:7
				result_o = {{CVA6Cfg[17102-:32] - 16 {rdata_sign_bit}}, shifted_data[15:0]};
			8'd45, 8'd47, 8'd48, 8'd49:
				// Trace: core/load_unit.sv:518:7
				result_o = {{CVA6Cfg[17102-:32] - 8 {rdata_sign_bit}}, shifted_data[7:0]};
			default:
				// Trace: core/load_unit.sv:521:9
				if (CVA6Cfg[16471])
					// Trace: core/load_unit.sv:522:11
					(* full_case, parallel_case *)
					case (ldbuf_rdata[7-:8])
						8'd97:
							// Trace: core/load_unit.sv:524:15
							result_o = {{CVA6Cfg[17102-:32] - 32 {rdata_sign_bit}}, shifted_data[31:0]};
						8'd98:
							// Trace: core/load_unit.sv:527:15
							result_o = {{CVA6Cfg[17102-:32] - 16 {rdata_sign_bit}}, shifted_data[15:0]};
						8'd99:
							// Trace: core/load_unit.sv:530:15
							result_o = {{CVA6Cfg[17102-:32] - 8 {rdata_sign_bit}}, shifted_data[7:0]};
						default:
							// Trace: core/load_unit.sv:533:15
							result_o = shifted_data[CVA6Cfg[17102-:32] - 1:0];
					endcase
				else
					// Trace: core/load_unit.sv:537:11
					result_o = shifted_data[CVA6Cfg[17102-:32] - 1:0];
		endcase
	end
	// Trace: core/load_unit.sv:550:3
	// Trace: core/load_unit.sv:554:3
	// removed an assertion item
	// addr_offset0 : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(ldbuf_w |-> ((ldbuf_wdata.operation inside { ariane_pkg_LW, ariane_pkg_LWU }) |-> ldbuf_wdata.address_offset < 5))
	// ) else begin
	// 	// Trace: core/load_unit.sv:557:8
	// 	$fatal(1, "invalid address offset used with {LW, LWU}");
	// end
	// Trace: core/load_unit.sv:558:3
	// removed an assertion item
	// addr_offset1 : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(ldbuf_w |-> ((ldbuf_wdata.operation inside { ariane_pkg_LH, ariane_pkg_LHU }) |-> ldbuf_wdata.address_offset < 7))
	// ) else begin
	// 	// Trace: core/load_unit.sv:561:8
	// 	$fatal(1, "invalid address offset used with {LH, LHU}");
	// end
	// Trace: core/load_unit.sv:562:3
	// removed an assertion item
	// addr_offset2 : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(ldbuf_w |-> ((ldbuf_wdata.operation inside { ariane_pkg_LB, ariane_pkg_LBU }) |-> ldbuf_wdata.address_offset < 8))
	// ) else begin
	// 	// Trace: core/load_unit.sv:565:8
	// 	$fatal(1, "invalid address offset used with {LB, LBU}");
	// end
	initial _sv2v_0 = 0;
endmodule
