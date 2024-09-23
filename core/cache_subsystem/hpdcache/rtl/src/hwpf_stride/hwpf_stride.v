module hwpf_stride_04E73_7B29C (
	clk_i,
	rst_ni,
	csr_base_set_i,
	csr_base_i,
	csr_param_set_i,
	csr_param_i,
	csr_throttle_set_i,
	csr_throttle_i,
	csr_base_o,
	csr_param_o,
	csr_throttle_o,
	busy_o,
	snoop_nline_o,
	snoop_match_i,
	hpdcache_req_valid_o,
	hpdcache_req_ready_i,
	hpdcache_req_o,
	hpdcache_rsp_valid_i,
	hpdcache_rsp_i
);
	// removed localparam type hpdcache_nline_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_nline_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_set_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_set_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// removed import hwpf_stride_pkg::*;
	// removed import hpdcache_pkg::*;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:33:15
	// removed localparam type hpdcache_pkg_hpdcache_victim_sel_policy_t
	// removed localparam type hpdcache_pkg_hpdcache_user_cfg_t
	// removed localparam type hpdcache_pkg_hpdcache_cfg_t
	parameter [1349:0] HPDcacheCfg = 1'sb0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:34:20
	// removed localparam type hpdcache_nline_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:35:20
	// removed localparam type hpdcache_tag_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:36:20
	// removed localparam type hpdcache_set_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:37:20
	// removed localparam type hpdcache_req_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:38:20
	// removed localparam type hpdcache_rsp_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:45:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:46:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:49:5
	input wire csr_base_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:50:5
	// removed localparam type hwpf_stride_pkg_hwpf_stride_base_t
	input wire [63:0] csr_base_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:51:5
	input wire csr_param_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:52:5
	// removed localparam type hwpf_stride_pkg_hwpf_stride_param_t
	input wire [63:0] csr_param_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:53:5
	input wire csr_throttle_set_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:54:5
	// removed localparam type hwpf_stride_pkg_hwpf_stride_throttle_t
	input wire [31:0] csr_throttle_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:56:5
	output wire [63:0] csr_base_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:57:5
	output wire [63:0] csr_param_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:58:5
	output wire [31:0] csr_throttle_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:61:5
	output reg busy_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:65:5
	output wire [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] snoop_nline_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:67:5
	input wire snoop_match_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:70:5
	output reg hpdcache_req_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:71:5
	input wire hpdcache_req_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:72:5
	output wire [((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1:0] hpdcache_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:73:5
	input wire hpdcache_rsp_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:74:5
	input wire [(((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1:0] hpdcache_rsp_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:80:5
	localparam signed [31:0] STRIDE_WIDTH = 32;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:81:5
	localparam signed [31:0] NBLOCKS_WIDTH = 16;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:82:5
	localparam signed [31:0] NLINES_WIDTH = 16;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:83:5
	localparam signed [31:0] NWAIT_WIDTH = 16;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:84:5
	localparam signed [31:0] INFLIGHT_WIDTH = 16;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:85:5
	localparam signed [31:0] NLINES_CNT_WIDTH = NLINES_WIDTH;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:91:5
	// removed localparam type hwpf_stride_fsm_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:100:5
	reg [31:0] state_d;
	reg [31:0] state_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:102:5
	reg [15:0] nblocks_cnt_d;
	reg [15:0] nblocks_cnt_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:103:5
	reg [15:0] nlines_cnt_d;
	reg [15:0] nlines_cnt_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:104:5
	reg [15:0] nwait_cnt_d;
	reg [15:0] nwait_cnt_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:105:5
	reg [15:0] inflight_cnt_d;
	reg [15:0] inflight_cnt_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:106:5
	reg inflight_inc;
	wire inflight_dec;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:108:5
	reg [63:0] csr_base_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:109:5
	reg [63:0] shadow_base_q;
	reg [63:0] shadow_base_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:110:5
	reg [63:0] csr_param_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:111:5
	reg [63:0] shadow_param_q;
	reg [63:0] shadow_param_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:112:5
	reg [31:0] csr_throttle_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:113:5
	reg [31:0] shadow_throttle_q;
	reg [31:0] shadow_throttle_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:114:5
	reg [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] request_nline_q;
	reg [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] request_nline_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:116:5
	wire [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] hpdcache_req_set;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:117:5
	wire [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] hpdcache_req_tag;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:119:5
	reg csr_base_update;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:120:5
	wire [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] increment_stride;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:121:5
	wire is_inflight_max;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:124:5
	function automatic [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] sv2v_cast_A0071;
		input reg [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] inp;
		sv2v_cast_A0071 = inp;
	endfunction
	assign increment_stride = sv2v_cast_A0071(shadow_param_q[31-:32]) + 1'b1;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:125:5
	assign inflight_dec = hpdcache_rsp_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:126:5
	assign snoop_nline_o = shadow_base_q[63-:58];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:127:5
	assign is_inflight_max = (shadow_throttle_q[31-:16] == {16 {1'sb0}} ? 1'b0 : inflight_cnt_q >= shadow_throttle_q[31-:16]);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:129:5
	assign csr_base_o = csr_base_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:130:5
	assign csr_param_o = csr_param_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:131:5
	assign csr_throttle_o = csr_throttle_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:136:5
	assign hpdcache_req_set = request_nline_q[0+:HPDcacheCfg[415-:32]];
	assign hpdcache_req_tag = request_nline_q[HPDcacheCfg[415-:32]+:HPDcacheCfg[351-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:139:5
	assign hpdcache_req_o[hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))-:((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) >= ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) ? ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) - ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))))) + 1 : (((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) - (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))))) + 1)] = {hpdcache_req_set, {HPDcacheCfg[447-:32] {1'b0}}};
	assign hpdcache_req_o[(hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))-:(((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) >= (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))) ? (((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) - (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))))) + 1 : ((4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))) - ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32]) + (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))))) + 1)] = 1'sb0;
	// removed localparam type hpdcache_pkg_hpdcache_req_op_t
	assign hpdcache_req_o[4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))-:((4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))) >= ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))) ? ((4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))) - ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))))) + 1 : (((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))) - (4 + ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))))) + 1)] = 4'hf;
	assign hpdcache_req_o[(hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))-:(((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))) >= (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))) ? (((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))) - (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))))) + 1 : ((3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))) - ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8)) + (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))))) + 1)] = 1'sb1;
	// removed localparam type hpdcache_pkg_hpdcache_req_size_t
	// removed localparam type _sv2v_keep_enum_for_params
	assign hpdcache_req_o[3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))-:((3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))) >= (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))) ? ((3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))) - (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))))) + 1 : ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))) - (3 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))))) + 1)] = 3'h5;
	assign hpdcache_req_o[hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))-:((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))) >= (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))) ? ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))) - (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)))) + 1 : ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))) - (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))))) + 1)] = 1'sb0;
	assign hpdcache_req_o[hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))-:((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))) >= (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)) ? ((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))) - (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2))) + 1 : ((2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 2)) - (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32] + (2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)))) + 1)] = 1'sb0;
	assign hpdcache_req_o[2 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)] = 1'b1;
	assign hpdcache_req_o[1 + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1)] = 1'b1;
	assign hpdcache_req_o[hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1-:((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1) >= 2 ? hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 0 : 3 - (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32] + 1))] = hpdcache_req_tag;
	assign hpdcache_req_o[1] = 1'b0;
	assign hpdcache_req_o[0] = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:155:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:157:9
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:158:13
			csr_base_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:159:13
			csr_param_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:160:13
			shadow_base_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:161:13
			shadow_param_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:162:13
			shadow_throttle_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:163:13
			request_nline_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:164:13
			state_q <= 32'd0;
		end
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:166:13
			if (csr_base_set_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:166:38
				csr_base_q <= csr_base_i;
			else if (csr_base_update)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:167:39
				csr_base_q <= shadow_base_d;
			if (csr_param_set_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:168:39
				csr_param_q <= csr_param_i;
			if (csr_throttle_set_i)
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:169:42
				csr_throttle_q <= csr_throttle_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:170:13
			shadow_base_q <= shadow_base_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:171:13
			shadow_param_q <= shadow_param_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:172:13
			shadow_throttle_q <= shadow_throttle_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:173:13
			request_nline_q <= request_nline_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:174:13
			state_q <= state_d;
		end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:181:5
	always @(*) begin : inflight_cnt
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:182:9
		inflight_cnt_d = inflight_cnt_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:185:9
		if (inflight_inc)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:186:13
			inflight_cnt_d = inflight_cnt_d + 1;
		if (inflight_dec && (inflight_cnt_q > 0))
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:191:13
			inflight_cnt_d = inflight_cnt_d - 1;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:195:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:196:9
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:197:13
			nblocks_cnt_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:198:13
			nlines_cnt_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:199:13
			nwait_cnt_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:200:13
			inflight_cnt_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:202:13
			nblocks_cnt_q <= nblocks_cnt_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:203:13
			nlines_cnt_q <= nlines_cnt_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:204:13
			nwait_cnt_q <= nwait_cnt_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:205:13
			inflight_cnt_q <= inflight_cnt_d;
		end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:212:5
	always @(*) begin : fsm_control
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:214:9
		hpdcache_req_valid_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:215:9
		nblocks_cnt_d = nblocks_cnt_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:216:9
		nlines_cnt_d = nlines_cnt_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:217:9
		nwait_cnt_d = nwait_cnt_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:218:9
		inflight_inc = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:219:9
		busy_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:220:9
		csr_base_update = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:222:9
		shadow_base_d = shadow_base_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:223:9
		shadow_param_d = shadow_param_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:224:9
		shadow_throttle_d = shadow_throttle_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:225:9
		request_nline_d = request_nline_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:226:9
		state_d = state_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:228:9
		(* full_case, parallel_case *)
		case (state_q)
			32'd0:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:232:17
				if (csr_base_q[0]) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:233:21
					shadow_base_d = csr_base_q;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:234:21
					if ((csr_param_q[47-:16] > 0) || (csr_param_q[63-:16] > 0)) begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:235:25
						shadow_param_d = csr_param_q;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:236:25
						shadow_throttle_d = csr_throttle_q;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:237:25
						state_d = 32'd1;
					end
					else begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:240:25
						shadow_base_d[0] = 1'b0;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:241:25
						csr_base_update = 1'b1;
					end
				end
			32'd1:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:248:17
				if (csr_base_q[0]) begin
					begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:250:21
						if (snoop_match_i) begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:251:25
							state_d = 32'd2;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:253:25
							if (shadow_param_q[47-:16] == 0) begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:255:29
								request_nline_d = shadow_base_q[63-:58] + sv2v_cast_A0071(increment_stride);
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:257:29
								nblocks_cnt_d = (shadow_param_q[63-:16] > 0 ? shadow_param_q[63-:16] - 1 : 0);
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:259:29
								nlines_cnt_d = 0;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:262:29
								shadow_base_d[63-:58] = request_nline_d;
							end
							else begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:265:29
								request_nline_d = shadow_base_q[63-:58] + 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:266:29
								nblocks_cnt_d = shadow_param_q[63-:16];
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:267:29
								nlines_cnt_d = shadow_param_q[47-:16] - 1;
							end
						end
					end
				end
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:271:21
					state_d = 32'd0;
			32'd2: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:277:17
				busy_o = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:280:17
				hpdcache_req_valid_o = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:283:17
				if (hpdcache_req_ready_i) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:284:21
					inflight_inc = 1'b1;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:286:21
					if (nlines_cnt_q == 0) begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:288:25
						request_nline_d = shadow_base_q[63-:58] + sv2v_cast_A0071(increment_stride);
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:290:25
						nblocks_cnt_d = (nblocks_cnt_q > 0 ? nblocks_cnt_q - 1 : 0);
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:291:25
						nlines_cnt_d = shadow_param_q[47-:16];
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:294:25
						shadow_base_d[63-:58] = request_nline_d;
					end
					else begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:297:25
						request_nline_d = request_nline_q + 1'b1;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:298:25
						nlines_cnt_d = nlines_cnt_q - 1;
					end
					if ((nblocks_cnt_q == 0) && (nlines_cnt_q == 0))
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:303:25
						state_d = 32'd4;
					else if (shadow_throttle_q[15-:16] == 0)
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:307:25
						state_d = (is_inflight_max ? 32'd3 : 32'd2);
					else begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:310:25
						nwait_cnt_d = shadow_throttle_q[15-:16];
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:311:25
						state_d = 32'd3;
					end
					if (!csr_base_q[0])
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:314:47
						state_d = 32'd5;
				end
			end
			32'd3: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:323:17
				busy_o = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:324:17
				if (csr_base_q[0]) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:325:21
					if (!is_inflight_max && (nwait_cnt_q == 0))
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:326:25
						state_d = 32'd2;
					if (nwait_cnt_q > 0)
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:330:25
						nwait_cnt_d = nwait_cnt_q - 1;
				end
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:333:21
					state_d = 32'd5;
			end
			32'd4: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:339:17
				busy_o = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:340:17
				if (csr_base_q[0]) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:341:21
					if (((inflight_cnt_q == 0) && !is_inflight_max) && (nwait_cnt_q == 0)) begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:343:25
						csr_base_update = 1'b1;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:346:25
						if (shadow_base_q[1])
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:347:29
							state_d = 32'd1;
						else begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:349:29
							state_d = 32'd0;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:352:29
							shadow_base_d[0] = 1'b0;
						end
						if (shadow_base_q[2])
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:358:29
							shadow_base_d[63-:58] = csr_base_q[63-:58];
					end
					if (nwait_cnt_q > 0)
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:363:25
						nwait_cnt_d = nwait_cnt_q - 1;
				end
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:366:21
					state_d = 32'd5;
			end
			32'd5: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:371:17
				busy_o = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:372:17
				if (inflight_cnt_q == 0)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv:373:21
					state_d = 32'd0;
			end
		endcase
	end
	initial _sv2v_0 = 0;
endmodule
