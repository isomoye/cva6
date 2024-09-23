module hpdcache_core_arbiter_2E6C6_AC782 (
	clk_i,
	rst_ni,
	core_req_valid_i,
	core_req_ready_o,
	core_req_i,
	core_req_abort_i,
	core_req_tag_i,
	core_req_pma_i,
	core_rsp_valid_i,
	core_rsp_i,
	core_rsp_valid_o,
	core_rsp_o,
	arb_req_valid_o,
	arb_req_ready_i,
	arb_req_o,
	arb_abort_o,
	arb_tag_o,
	arb_pma_o
);
	// removed localparam type hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// removed import hpdcache_pkg::*;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:31:15
	// removed localparam type hpdcache_pkg_hpdcache_victim_sel_policy_t
	// removed localparam type hpdcache_pkg_hpdcache_user_cfg_t
	// removed localparam type hpdcache_pkg_hpdcache_cfg_t
	parameter [1349:0] HPDcacheCfg = 1'sb0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:32:20
	// removed localparam type hpdcache_tag_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:33:20
	// removed localparam type hpdcache_req_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:34:20
	// removed localparam type hpdcache_rsp_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:42:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:43:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:47:5
	input wire [0:HPDcacheCfg[1349-:32] - 1] core_req_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:48:5
	output wire [0:HPDcacheCfg[1349-:32] - 1] core_req_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:49:5
	input wire [((((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? (HPDcacheCfg[1349-:32] * (((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2)) - 1 : (HPDcacheCfg[1349-:32] * (1 - (((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + (((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 0)):((((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 0 : ((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1)] core_req_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:51:5
	input wire [0:HPDcacheCfg[1349-:32] - 1] core_req_abort_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:52:5
	input wire [(HPDcacheCfg[1349-:32] * hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) - 1:0] core_req_tag_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:53:5
	// removed localparam type hpdcache_pkg_hpdcache_pma_t
	input wire [(HPDcacheCfg[1349-:32] * 2) - 1:0] core_req_pma_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:56:5
	input wire core_rsp_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:57:5
	input wire [(((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1:0] core_rsp_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:58:5
	output reg [0:HPDcacheCfg[1349-:32] - 1] core_rsp_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:59:5
	output reg [(((((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (HPDcacheCfg[1349-:32] * ((((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2)) - 1 : (HPDcacheCfg[1349-:32] * (1 - ((((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1))) + ((((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 0)):(((((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? 0 : (((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1)] core_rsp_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:62:5
	output wire arb_req_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:63:5
	input wire arb_req_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:64:5
	output wire [((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1:0] arb_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:65:5
	output wire arb_abort_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:66:5
	output wire [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] arb_tag_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:67:5
	output wire [1:0] arb_pma_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:74:5
	wire [HPDcacheCfg[1349-:32] - 1:0] core_req_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:75:5
	wire [((((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? (HPDcacheCfg[1349-:32] * (((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2)) - 1 : (HPDcacheCfg[1349-:32] * (1 - (((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))) + (((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 0)):((((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 0 : ((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1)] core_req;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:76:5
	wire [HPDcacheCfg[1349-:32] - 1:0] core_req_abort;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:77:5
	wire [(HPDcacheCfg[1349-:32] * hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]) - 1:0] core_req_tag;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:78:5
	wire [(HPDcacheCfg[1349-:32] * 2) - 1:0] core_req_pma;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:80:5
	reg [HPDcacheCfg[1349-:32] - 1:0] arb_req_gnt_q;
	wire [HPDcacheCfg[1349-:32] - 1:0] arb_req_gnt_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:86:5
	genvar _gv_gen_i_3;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:88:5
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		for (_gv_gen_i_3 = 0; _gv_gen_i_3 < sv2v_cast_32_signed(HPDcacheCfg[1349-:32]); _gv_gen_i_3 = _gv_gen_i_3 + 1) begin : gen_core_req
			localparam gen_i = _gv_gen_i_3;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:90:13
			assign core_req_ready_o[gen_i] = arb_req_gnt_d[gen_i] & arb_req_ready_i;
			assign core_req_valid[gen_i] = core_req_valid_i[gen_i];
			assign core_req[((((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 0 : ((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) + (gen_i * ((((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1)))+:((((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))] = core_req_i[((((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? 0 : ((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) + (((HPDcacheCfg[1349-:32] - 1) - gen_i) * ((((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1)))+:((((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1) >= 0 ? ((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2 : 1 - (((((((((hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32] + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 1))];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:94:13
			assign core_req_abort[gen_i] = core_req_abort_i[gen_i];
			assign core_req_tag[gen_i * hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]+:hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]] = core_req_tag_i[((HPDcacheCfg[1349-:32] - 1) - gen_i) * hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]+:hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]];
			assign core_req_pma[gen_i * 2+:2] = core_req_pma_i[((HPDcacheCfg[1349-:32] - 1) - gen_i) * 2+:2];
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:101:5
	hpdcache_fxarb #(.N(HPDcacheCfg[1349-:32])) req_arbiter_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(core_req_valid),
		.gnt_o(arb_req_gnt_d),
		.ready_i(arb_req_ready_i)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:111:5
	hpdcache_mux #(
		.NINPUT(HPDcacheCfg[1349-:32]),
		.DATA_WIDTH(1 * ((((((((((0 + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[287-:32]) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32])) + 4) + (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1157-:32] * (hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1285-:32] / 8))) + 3) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1093-:32]) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[1125-:32]) + 2) + hpdcache_req_t_hpdcache_req_t_hpdcache_req_t_HPDcacheCfg[351-:32]) + 2)),
		.ONE_HOT_SEL(1'b1)
	) core_req_mux_i(
		.data_i(core_req),
		.sel_i(arb_req_gnt_d),
		.data_o(arb_req_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:122:5
	hpdcache_mux #(
		.NINPUT(HPDcacheCfg[1349-:32]),
		.DATA_WIDTH(1),
		.ONE_HOT_SEL(1'b1)
	) core_req_abort_mux_i(
		.data_i(core_req_abort),
		.sel_i(arb_req_gnt_q),
		.data_o(arb_abort_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:133:5
	hpdcache_mux #(
		.NINPUT(HPDcacheCfg[1349-:32]),
		.DATA_WIDTH(hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32]),
		.ONE_HOT_SEL(1'b1)
	) core_req_tag_mux_i(
		.data_i(core_req_tag),
		.sel_i(arb_req_gnt_q),
		.data_o(arb_tag_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:144:5
	hpdcache_mux #(
		.NINPUT(HPDcacheCfg[1349-:32]),
		.DATA_WIDTH(2),
		.ONE_HOT_SEL(1'b1)
	) core_req_pma_mux_i(
		.data_i(core_req_pma),
		.sel_i(arb_req_gnt_q),
		.data_o(arb_pma_o)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:155:5
	always @(posedge clk_i or negedge rst_ni) begin : arb_req_gnt_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:157:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:157:22
			arb_req_gnt_q <= 1'sb0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:158:22
			arb_req_gnt_q <= arb_req_gnt_d;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:161:5
	assign arb_req_valid_o = |arb_req_gnt_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:166:5
	always @(*) begin : resp_demux
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:168:9
		begin : sv2v_autoblock_1
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:168:14
			reg [31:0] i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:168:14
			for (i = 0; i < HPDcacheCfg[1349-:32]; i = i + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:169:13
					core_rsp_valid_o[i] = core_rsp_valid_i && (i == sv2v_cast_32_signed(core_rsp_i[hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1)-:((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1)) >= (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2) ? ((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1)) - (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2)) + 1 : ((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 2) - (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32] + (hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32] + 1))) + 1)]));
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv:170:13
					core_rsp_o[(((((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? 0 : (((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) + (((HPDcacheCfg[1349-:32] - 1) - i) * (((((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2 : 1 - ((((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1)))+:(((((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1) >= 0 ? (((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 2 : 1 - ((((hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1))] = core_rsp_i;
				end
		end
	end
	initial _sv2v_0 = 0;
endmodule
