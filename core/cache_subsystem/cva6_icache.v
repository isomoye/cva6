module cva6_icache_CA401_5F806 (
	clk_i,
	rst_ni,
	flush_i,
	en_i,
	miss_o,
	areq_i,
	areq_o,
	dreq_i,
	dreq_o,
	mem_rtrn_vld_i,
	mem_rtrn_i,
	mem_data_req_o,
	mem_data_ack_i,
	mem_data_o
);
	// removed localparam type icache_areq_t_icache_areq_t_CVA6Cfg_type
	parameter [17102:0] icache_areq_t_icache_areq_t_CVA6Cfg = 0;
	// removed localparam type icache_arsp_t_icache_arsp_t_CVA6Cfg_type
	parameter [17102:0] icache_arsp_t_icache_arsp_t_CVA6Cfg = 0;
	// removed localparam type icache_dreq_t_icache_dreq_t_CVA6Cfg_type
	parameter [17102:0] icache_dreq_t_icache_dreq_t_CVA6Cfg = 0;
	// removed localparam type icache_drsp_t_icache_drsp_t_CVA6Cfg_type
	parameter [17102:0] icache_drsp_t_icache_drsp_t_CVA6Cfg = 0;
	// removed localparam type icache_req_t_icache_req_t_CVA6Cfg_type
	parameter [17102:0] icache_req_t_icache_req_t_CVA6Cfg = 0;
	// removed localparam type icache_rtrn_t_icache_rtrn_t_CVA6Cfg_type
	parameter [17102:0] icache_rtrn_t_icache_rtrn_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// removed import wt_cache_pkg::*;
	// Trace: core/cache_subsystem/cva6_icache.sv:32:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/cva6_icache.sv:33:20
	// removed localparam type icache_areq_t
	// Trace: core/cache_subsystem/cva6_icache.sv:34:20
	// removed localparam type icache_arsp_t
	// Trace: core/cache_subsystem/cva6_icache.sv:35:20
	// removed localparam type icache_dreq_t
	// Trace: core/cache_subsystem/cva6_icache.sv:36:20
	// removed localparam type icache_drsp_t
	// Trace: core/cache_subsystem/cva6_icache.sv:37:20
	// removed localparam type icache_req_t
	// Trace: core/cache_subsystem/cva6_icache.sv:38:20
	// removed localparam type icache_rtrn_t
	// Trace: core/cache_subsystem/cva6_icache.sv:40:15
	parameter [CVA6Cfg[16616-:32] - 1:0] RdTxId = 0;
	// Trace: core/cache_subsystem/cva6_icache.sv:42:5
	input wire clk_i;
	// Trace: core/cache_subsystem/cva6_icache.sv:43:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/cva6_icache.sv:46:5
	input wire flush_i;
	// Trace: core/cache_subsystem/cva6_icache.sv:48:5
	input wire en_i;
	// Trace: core/cache_subsystem/cva6_icache.sv:50:5
	output reg miss_o;
	// Trace: core/cache_subsystem/cva6_icache.sv:52:5
	input wire [((1 + icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] areq_i;
	// Trace: core/cache_subsystem/cva6_icache.sv:53:5
	output reg [(1 + icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32]) - 1:0] areq_o;
	// Trace: core/cache_subsystem/cva6_icache.sv:55:5
	input wire [(4 + icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32]) - 1:0] dreq_i;
	// Trace: core/cache_subsystem/cva6_icache.sv:56:5
	output reg [((((2 + icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32]) + ((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] dreq_o;
	// Trace: core/cache_subsystem/cva6_icache.sv:58:5
	input wire mem_rtrn_vld_i;
	// Trace: core/cache_subsystem/cva6_icache.sv:59:5
	input wire [((((1 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32]) + ((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32])) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32]) - 1:0] mem_rtrn_i;
	// Trace: core/cache_subsystem/cva6_icache.sv:60:5
	output reg mem_data_req_o;
	// Trace: core/cache_subsystem/cva6_icache.sv:61:5
	input wire mem_data_ack_i;
	// Trace: core/cache_subsystem/cva6_icache.sv:62:5
	output wire [(((icache_req_t_icache_req_t_CVA6Cfg[1286-:32] + icache_req_t_icache_req_t_CVA6Cfg[17038-:32]) + 1) + icache_req_t_icache_req_t_CVA6Cfg[16616-:32]) - 1:0] mem_data_o;
	// Trace: core/cache_subsystem/cva6_icache.sv:65:3
	localparam ICACHE_OFFSET_WIDTH = $clog2(CVA6Cfg[1190-:32] / 8);
	// Trace: core/cache_subsystem/cva6_icache.sv:66:3
	localparam ICACHE_NUM_WORDS = 2 ** (CVA6Cfg[1254-:32] - ICACHE_OFFSET_WIDTH);
	// Trace: core/cache_subsystem/cva6_icache.sv:67:3
	localparam ICACHE_CL_IDX_WIDTH = $clog2(ICACHE_NUM_WORDS);
	// Trace: core/cache_subsystem/cva6_icache.sv:70:3
	function automatic [CVA6Cfg[1318-:32] - 1:0] icache_way_bin2oh;
		// Trace: core/cache_subsystem/cva6_icache.sv:71:7
		input reg [CVA6Cfg[1286-:32] - 1:0] in;
		// Trace: core/cache_subsystem/cva6_icache.sv:72:5
		reg [CVA6Cfg[1318-:32] - 1:0] out;
		begin
			// Trace: core/cache_subsystem/cva6_icache.sv:73:5
			out = 1'sb0;
			// Trace: core/cache_subsystem/cva6_icache.sv:74:5
			out[in] = 1'b1;
			// Trace: core/cache_subsystem/cva6_icache.sv:75:5
			icache_way_bin2oh = out;
		end
	endfunction
	// Trace: core/cache_subsystem/cva6_icache.sv:79:3
	reg cache_en_d;
	reg cache_en_q;
	// Trace: core/cache_subsystem/cva6_icache.sv:80:3
	wire [CVA6Cfg[17070-:32] - 1:0] vaddr_d;
	reg [CVA6Cfg[17070-:32] - 1:0] vaddr_q;
	// Trace: core/cache_subsystem/cva6_icache.sv:81:3
	wire paddr_is_nc;
	// Trace: core/cache_subsystem/cva6_icache.sv:82:3
	wire [CVA6Cfg[1318-:32] - 1:0] cl_hit;
	// Trace: core/cache_subsystem/cva6_icache.sv:83:3
	reg cache_rden;
	// Trace: core/cache_subsystem/cva6_icache.sv:84:3
	reg cache_wren;
	// Trace: core/cache_subsystem/cva6_icache.sv:85:3
	reg cmp_en_d;
	reg cmp_en_q;
	// Trace: core/cache_subsystem/cva6_icache.sv:88:3
	reg flush_d;
	reg flush_q;
	// Trace: core/cache_subsystem/cva6_icache.sv:91:3
	wire update_lfsr;
	// Trace: core/cache_subsystem/cva6_icache.sv:92:3
	wire [CVA6Cfg[1286-:32] - 1:0] inv_way;
	// Trace: core/cache_subsystem/cva6_icache.sv:93:3
	wire [CVA6Cfg[1286-:32] - 1:0] rnd_way;
	// Trace: core/cache_subsystem/cva6_icache.sv:94:3
	wire [CVA6Cfg[1286-:32] - 1:0] repl_way;
	// Trace: core/cache_subsystem/cva6_icache.sv:95:3
	wire [CVA6Cfg[1318-:32] - 1:0] repl_way_oh_d;
	reg [CVA6Cfg[1318-:32] - 1:0] repl_way_oh_q;
	// Trace: core/cache_subsystem/cva6_icache.sv:96:3
	wire all_ways_valid;
	// Trace: core/cache_subsystem/cva6_icache.sv:99:3
	reg inv_en;
	// Trace: core/cache_subsystem/cva6_icache.sv:100:3
	wire inv_d;
	reg inv_q;
	// Trace: core/cache_subsystem/cva6_icache.sv:101:3
	reg flush_en;
	wire flush_done;
	// Trace: core/cache_subsystem/cva6_icache.sv:102:3
	wire [ICACHE_CL_IDX_WIDTH - 1:0] flush_cnt_d;
	reg [ICACHE_CL_IDX_WIDTH - 1:0] flush_cnt_q;
	// Trace: core/cache_subsystem/cva6_icache.sv:105:3
	wire cl_we;
	// Trace: core/cache_subsystem/cva6_icache.sv:106:3
	wire [CVA6Cfg[1318-:32] - 1:0] cl_req;
	// Trace: core/cache_subsystem/cva6_icache.sv:107:3
	wire [ICACHE_CL_IDX_WIDTH - 1:0] cl_index;
	// Trace: core/cache_subsystem/cva6_icache.sv:108:3
	wire [ICACHE_OFFSET_WIDTH - 1:0] cl_offset_d;
	reg [ICACHE_OFFSET_WIDTH - 1:0] cl_offset_q;
	// Trace: core/cache_subsystem/cva6_icache.sv:109:3
	wire [CVA6Cfg[1222-:32] - 1:0] cl_tag_d;
	reg [CVA6Cfg[1222-:32] - 1:0] cl_tag_q;
	// Trace: core/cache_subsystem/cva6_icache.sv:110:3
	wire [CVA6Cfg[1222-:32] - 1:0] cl_tag_rdata [CVA6Cfg[1318-:32] - 1:0];
	// Trace: core/cache_subsystem/cva6_icache.sv:111:3
	wire [CVA6Cfg[1190-:32] - 1:0] cl_rdata [CVA6Cfg[1318-:32] - 1:0];
	// Trace: core/cache_subsystem/cva6_icache.sv:112:3
	wire [CVA6Cfg[1158-:32] - 1:0] cl_ruser [CVA6Cfg[1318-:32] - 1:0];
	// Trace: core/cache_subsystem/cva6_icache.sv:113:3
	wire [(CVA6Cfg[1318-:32] * CVA6Cfg[643-:32]) - 1:0] cl_sel;
	// Trace: core/cache_subsystem/cva6_icache.sv:114:3
	wire [(CVA6Cfg[1318-:32] * CVA6Cfg[708-:32]) - 1:0] cl_user;
	// Trace: core/cache_subsystem/cva6_icache.sv:115:3
	wire [CVA6Cfg[1318-:32] - 1:0] vld_req;
	// Trace: core/cache_subsystem/cva6_icache.sv:116:3
	wire vld_we;
	// Trace: core/cache_subsystem/cva6_icache.sv:117:3
	wire [CVA6Cfg[1318-:32] - 1:0] vld_wdata;
	// Trace: core/cache_subsystem/cva6_icache.sv:118:3
	wire [CVA6Cfg[1318-:32] - 1:0] vld_rdata;
	// Trace: core/cache_subsystem/cva6_icache.sv:119:3
	wire [ICACHE_CL_IDX_WIDTH - 1:0] vld_addr;
	// Trace: core/cache_subsystem/cva6_icache.sv:122:3
	// removed localparam type state_e
	// Trace: core/cache_subsystem/cva6_icache.sv:130:3
	reg [2:0] state_d;
	reg [2:0] state_q;
	// Trace: core/cache_subsystem/cva6_icache.sv:137:3
	assign cl_tag_d = (areq_i[1 + (icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))] ? areq_i[(icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - ((icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] - 1) - ((CVA6Cfg[1222-:32] + CVA6Cfg[1254-:32]) - 1)):(icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - ((icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] - 1) - CVA6Cfg[1254-:32])] : cl_tag_q);
	// Trace: core/cache_subsystem/cva6_icache.sv:140:3
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
	function automatic config_pkg_is_inside_cacheable_regions;
		// Trace: core/include/config_pkg.sv:405:56
		input reg [17102:0] Cfg;
		// Trace: core/include/config_pkg.sv:405:72
		input reg [63:0] address;
		// Trace: core/include/config_pkg.sv:406:5
		reg [15:0] pass;
		begin
			// Trace: core/include/config_pkg.sv:407:5
			pass = 1'sb0;
			// Trace: core/include/config_pkg.sv:408:5
			begin : sv2v_autoblock_1
				// Trace: core/include/config_pkg.sv:408:10
				reg [31:0] k;
				// Trace: core/include/config_pkg.sv:408:10
				for (k = 0; k < Cfg[3433-:32]; k = k + 1)
					begin
						// Trace: core/include/config_pkg.sv:409:7
						pass[k] = config_pkg_range_check(Cfg[2378 + (k * 64)+:64], Cfg[1354 + (k * 64)+:64], address);
					end
			end
			config_pkg_is_inside_cacheable_regions = |pass;
		end
	endfunction
	assign paddr_is_nc = ~cache_en_q | ~config_pkg_is_inside_cacheable_regions(CVA6Cfg, {{64 - CVA6Cfg[17038-:32] {1'b0}}, cl_tag_d, {CVA6Cfg[1254-:32] {1'b0}}});
	// Trace: core/cache_subsystem/cva6_icache.sv:145:3
	wire [((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) * 1:1] sv2v_tmp_0F9C4;
	assign sv2v_tmp_0F9C4 = areq_i[((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1-:((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))];
	always @(*) dreq_o[((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1-:((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33))] = sv2v_tmp_0F9C4;
	// Trace: core/cache_subsystem/cva6_icache.sv:149:3
	assign vaddr_d = (dreq_o[2 + (icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))))] & dreq_i[2 + (icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] + 1)] ? dreq_i[icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] - 1-:icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32]] : vaddr_q);
	// Trace: core/cache_subsystem/cva6_icache.sv:150:3
	wire [icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] * 1:1] sv2v_tmp_36FF6;
	assign sv2v_tmp_36FF6 = (vaddr_q >> CVA6Cfg[611-:32]) << CVA6Cfg[611-:32];
	always @(*) areq_o[icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] - 1-:icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32]] = sv2v_tmp_36FF6;
	// Trace: core/cache_subsystem/cva6_icache.sv:153:3
	assign cl_index = vaddr_d[CVA6Cfg[1254-:32] - 1:ICACHE_OFFSET_WIDTH];
	// Trace: core/cache_subsystem/cva6_icache.sv:156:3
	generate
		if (CVA6Cfg[7625-:32] == 32'd0) begin : gen_axi_offset
			// Trace: core/cache_subsystem/cva6_icache.sv:158:5
			assign cl_offset_d = (dreq_o[2 + (icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))))] & dreq_i[2 + (icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] + 1)] ? (dreq_i[icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] - 1-:icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32]] >> CVA6Cfg[611-:32]) << CVA6Cfg[611-:32] : (paddr_is_nc & mem_data_req_o ? {{ICACHE_OFFSET_WIDTH - 1 {1'b0}}, cl_offset_q[2]} << 2 : cl_offset_q));
			// Trace: core/cache_subsystem/cva6_icache.sv:162:5
			assign mem_data_o[icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)-:((icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) >= (1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) ? ((icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) - (1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) + 1 : ((1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) - (icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) + 1)] = (paddr_is_nc ? {cl_tag_d, vaddr_q[CVA6Cfg[1254-:32] - 1:3], 3'b000} : {cl_tag_d, vaddr_q[CVA6Cfg[1254-:32] - 1:ICACHE_OFFSET_WIDTH], {ICACHE_OFFSET_WIDTH {1'b0}}});
		end
		else begin : gen_piton_offset
			// Trace: core/cache_subsystem/cva6_icache.sv:167:5
			assign cl_offset_d = (dreq_o[2 + (icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))))] & dreq_i[2 + (icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] + 1)] ? {dreq_i[icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] - 1-:icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32]] >> 2, 2'b00} : cl_offset_q);
			// Trace: core/cache_subsystem/cva6_icache.sv:170:5
			assign mem_data_o[icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)-:((icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) >= (1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) ? ((icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) - (1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) + 1 : ((1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) - (icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) + 1)] = (paddr_is_nc ? {cl_tag_d, vaddr_q[CVA6Cfg[1254-:32] - 1:2], 2'b00} : {cl_tag_d, vaddr_q[CVA6Cfg[1254-:32] - 1:ICACHE_OFFSET_WIDTH], {ICACHE_OFFSET_WIDTH {1'b0}}});
		end
	endgenerate
	// Trace: core/cache_subsystem/cva6_icache.sv:175:3
	assign mem_data_o[icache_req_t_icache_req_t_CVA6Cfg[16616-:32] - 1-:icache_req_t_icache_req_t_CVA6Cfg[16616-:32]] = RdTxId;
	// Trace: core/cache_subsystem/cva6_icache.sv:177:3
	assign mem_data_o[icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0] = paddr_is_nc;
	// Trace: core/cache_subsystem/cva6_icache.sv:179:3
	assign mem_data_o[icache_req_t_icache_req_t_CVA6Cfg[1286-:32] + (icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))-:((icache_req_t_icache_req_t_CVA6Cfg[1286-:32] + (icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) >= (icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) ? ((icache_req_t_icache_req_t_CVA6Cfg[1286-:32] + (icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) - (icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)))) + 1 : ((icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) - (icache_req_t_icache_req_t_CVA6Cfg[1286-:32] + (icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)))) + 1)] = repl_way;
	// Trace: core/cache_subsystem/cva6_icache.sv:180:3
	wire [((icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1)) >= (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0) ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0)) + 1 : ((((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0) - (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))) + 1) * 1:1] sv2v_tmp_00DFD;
	assign sv2v_tmp_00DFD = vaddr_q;
	always @(*) dreq_o[icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1)-:((icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1)) >= (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0) ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0)) + 1 : ((((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0) - (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))) + 1)] = sv2v_tmp_00DFD;
	// Trace: core/cache_subsystem/cva6_icache.sv:183:3
	assign inv_d = inv_en;
	// Trace: core/cache_subsystem/cva6_icache.sv:188:3
	wire addr_ni;
	// Trace: core/cache_subsystem/cva6_icache.sv:189:3
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
			begin : sv2v_autoblock_2
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
	assign addr_ni = config_pkg_is_inside_nonidempotent_regions(CVA6Cfg, {{64 - CVA6Cfg[17038-:32] {1'b0}}, areq_i[icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)-:((icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) >= (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0) ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1)) - (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0)) + 1 : ((((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) + 0) - (icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))) + 1)]});
	// Trace: core/cache_subsystem/cva6_icache.sv:192:3
	// removed localparam type wt_cache_pkg_icache_in_t
	always @(*) begin : p_fsm
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/cva6_icache.sv:194:5
		state_d = state_q;
		// Trace: core/cache_subsystem/cva6_icache.sv:195:5
		cache_en_d = cache_en_q & en_i;
		// Trace: core/cache_subsystem/cva6_icache.sv:196:5
		flush_en = 1'b0;
		// Trace: core/cache_subsystem/cva6_icache.sv:197:5
		cmp_en_d = 1'b0;
		// Trace: core/cache_subsystem/cva6_icache.sv:198:5
		cache_rden = 1'b0;
		// Trace: core/cache_subsystem/cva6_icache.sv:199:5
		cache_wren = 1'b0;
		// Trace: core/cache_subsystem/cva6_icache.sv:200:5
		inv_en = 1'b0;
		// Trace: core/cache_subsystem/cva6_icache.sv:201:5
		flush_d = flush_q | flush_i;
		// Trace: core/cache_subsystem/cva6_icache.sv:204:5
		dreq_o[2 + (icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))))] = 1'b0;
		// Trace: core/cache_subsystem/cva6_icache.sv:205:5
		areq_o[icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] + 0] = 1'b0;
		// Trace: core/cache_subsystem/cva6_icache.sv:206:5
		dreq_o[1 + (icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))))] = 1'b0;
		// Trace: core/cache_subsystem/cva6_icache.sv:207:5
		mem_data_req_o = 1'b0;
		// Trace: core/cache_subsystem/cva6_icache.sv:209:5
		miss_o = 1'b0;
		// Trace: core/cache_subsystem/cva6_icache.sv:216:5
		if (mem_rtrn_vld_i && (mem_rtrn_i[1 + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))))] == 1'd0))
			// Trace: core/cache_subsystem/cva6_icache.sv:217:7
			inv_en = 1'b1;
		(* full_case, parallel_case *)
		case (state_q)
			3'd0: begin
				// Trace: core/cache_subsystem/cva6_icache.sv:224:9
				flush_en = 1'b1;
				// Trace: core/cache_subsystem/cva6_icache.sv:225:9
				if (flush_done) begin
					// Trace: core/cache_subsystem/cva6_icache.sv:226:11
					state_d = 3'd1;
					// Trace: core/cache_subsystem/cva6_icache.sv:227:11
					flush_d = 1'b0;
					// Trace: core/cache_subsystem/cva6_icache.sv:229:11
					cache_en_d = en_i;
				end
			end
			3'd1: begin
				// Trace: core/cache_subsystem/cva6_icache.sv:236:9
				cmp_en_d = cache_en_q;
				// Trace: core/cache_subsystem/cva6_icache.sv:239:9
				if (flush_d || (en_i && !cache_en_q))
					// Trace: core/cache_subsystem/cva6_icache.sv:240:11
					state_d = 3'd0;
				else begin
					// Trace: core/cache_subsystem/cva6_icache.sv:244:11
					if (!mem_rtrn_vld_i) begin
						// Trace: core/cache_subsystem/cva6_icache.sv:245:13
						dreq_o[2 + (icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))))] = 1'b1;
						// Trace: core/cache_subsystem/cva6_icache.sv:247:13
						if (dreq_i[2 + (icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] + 1)]) begin
							// Trace: core/cache_subsystem/cva6_icache.sv:248:15
							cache_rden = 1'b1;
							// Trace: core/cache_subsystem/cva6_icache.sv:249:15
							state_d = 3'd2;
						end
					end
					if (dreq_i[2 + (icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] + 0)])
						// Trace: core/cache_subsystem/cva6_icache.sv:253:13
						state_d = 3'd1;
				end
			end
			3'd2: begin
				// Trace: core/cache_subsystem/cva6_icache.sv:264:9
				areq_o[icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] + 0] = 1'sb1;
				// Trace: core/cache_subsystem/cva6_icache.sv:266:9
				cmp_en_d = cache_en_q;
				// Trace: core/cache_subsystem/cva6_icache.sv:268:9
				cache_rden = cache_en_q;
				// Trace: core/cache_subsystem/cva6_icache.sv:270:9
				if (areq_i[1 + (icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))] && (!dreq_i[icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] + 0] || ((CVA6Cfg[1320] && !addr_ni) || !CVA6Cfg[1320]))) begin
					begin
						// Trace: core/cache_subsystem/cva6_icache.sv:272:11
						if (flush_d)
							// Trace: core/cache_subsystem/cva6_icache.sv:273:13
							state_d = 3'd1;
						else if (((|cl_hit && cache_en_q) || areq_i[((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1) - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) : 0)]) && !inv_q) begin
							// Trace: core/cache_subsystem/cva6_icache.sv:276:13
							dreq_o[1 + (icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))))] = ~dreq_i[icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] + 1];
							// Trace: core/cache_subsystem/cva6_icache.sv:277:13
							state_d = 3'd1;
							// Trace: core/cache_subsystem/cva6_icache.sv:282:13
							if (!mem_rtrn_vld_i) begin
								// Trace: core/cache_subsystem/cva6_icache.sv:283:15
								dreq_o[2 + (icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))))] = 1'b1;
								// Trace: core/cache_subsystem/cva6_icache.sv:284:15
								if (dreq_i[2 + (icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] + 1)])
									// Trace: core/cache_subsystem/cva6_icache.sv:285:17
									state_d = 3'd2;
							end
							if (dreq_i[2 + (icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] + 0)])
								// Trace: core/cache_subsystem/cva6_icache.sv:291:15
								state_d = 3'd1;
						end
						else if (dreq_i[icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] + 1])
							// Trace: core/cache_subsystem/cva6_icache.sv:295:13
							state_d = 3'd1;
						else if (!inv_q) begin
							// Trace: core/cache_subsystem/cva6_icache.sv:297:13
							cmp_en_d = 1'b0;
							// Trace: core/cache_subsystem/cva6_icache.sv:301:13
							mem_data_req_o = 1'b1;
							// Trace: core/cache_subsystem/cva6_icache.sv:302:13
							if (mem_data_ack_i) begin
								// Trace: core/cache_subsystem/cva6_icache.sv:303:15
								miss_o = ~paddr_is_nc;
								// Trace: core/cache_subsystem/cva6_icache.sv:304:15
								state_d = 3'd3;
							end
						end
					end
				end
				else if (dreq_i[icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] + 1] || flush_d)
					// Trace: core/cache_subsystem/cva6_icache.sv:309:11
					state_d = 3'd4;
			end
			3'd3:
				// Trace: core/cache_subsystem/cva6_icache.sv:319:9
				if (mem_rtrn_vld_i && (mem_rtrn_i[1 + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))))] == 1'd1)) begin
					// Trace: core/cache_subsystem/cva6_icache.sv:320:11
					state_d = 3'd1;
					// Trace: core/cache_subsystem/cva6_icache.sv:322:11
					if (!(dreq_i[icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] + 1] || flush_d)) begin
						// Trace: core/cache_subsystem/cva6_icache.sv:323:13
						dreq_o[1 + (icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))))] = 1'b1;
						// Trace: core/cache_subsystem/cva6_icache.sv:325:13
						cache_wren = ~paddr_is_nc;
					end
				end
				else if (dreq_i[icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32] + 1] || flush_d)
					// Trace: core/cache_subsystem/cva6_icache.sv:329:11
					state_d = 3'd5;
			3'd4: begin
				// Trace: core/cache_subsystem/cva6_icache.sv:337:9
				areq_o[icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32] + 0] = 1'sb1;
				// Trace: core/cache_subsystem/cva6_icache.sv:338:9
				if (areq_i[1 + (icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32] + (((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33)) - 1))])
					// Trace: core/cache_subsystem/cva6_icache.sv:339:11
					state_d = 3'd1;
			end
			3'd5:
				// Trace: core/cache_subsystem/cva6_icache.sv:347:9
				if (mem_rtrn_vld_i && (mem_rtrn_i[1 + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))))] == 1'd1))
					// Trace: core/cache_subsystem/cva6_icache.sv:348:11
					state_d = 3'd1;
			default:
				// Trace: core/cache_subsystem/cva6_icache.sv:353:9
				state_d = 3'd0;
		endcase
	end
	// Trace: core/cache_subsystem/cva6_icache.sv:367:3
	assign flush_cnt_d = (flush_done ? {ICACHE_CL_IDX_WIDTH {1'sb0}} : (flush_en ? flush_cnt_q + 1 : flush_cnt_q));
	// Trace: core/cache_subsystem/cva6_icache.sv:369:3
	assign flush_done = flush_cnt_q == (ICACHE_NUM_WORDS - 1);
	// Trace: core/cache_subsystem/cva6_icache.sv:373:3
	assign vld_addr = (flush_en ? flush_cnt_q : (inv_en ? mem_rtrn_i[(((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - ((((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) - 1) - ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32] - 1)) - ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32] - 1) - (CVA6Cfg[1254-:32] - 1)))):(((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - ((((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) - 1) - ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32] - 1)) - ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32] - 1) - ICACHE_OFFSET_WIDTH)))] : cl_index));
	// Trace: core/cache_subsystem/cva6_icache.sv:377:3
	assign vld_req = (flush_en || cache_rden ? {CVA6Cfg[1318-:32] {1'sb1}} : (mem_rtrn_i[(((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - ((((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) - 1) - (1 + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32] - 1))))] && inv_en ? {CVA6Cfg[1318-:32] {1'sb1}} : (mem_rtrn_i[(((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - ((((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) - 1) - (2 + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32] - 1))))] && inv_en ? icache_way_bin2oh(mem_rtrn_i[(((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - ((((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) - 1) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32] - 1))-:icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]]) : repl_way_oh_q)));
	// Trace: core/cache_subsystem/cva6_icache.sv:383:3
	assign vld_wdata = (cache_wren ? {CVA6Cfg[1318-:32] {1'sb1}} : {CVA6Cfg[1318-:32] {1'sb0}});
	// Trace: core/cache_subsystem/cva6_icache.sv:385:3
	assign vld_we = (cache_wren | inv_en) | flush_en;
	// Trace: core/cache_subsystem/cva6_icache.sv:390:3
	assign update_lfsr = cache_wren & all_ways_valid;
	// Trace: core/cache_subsystem/cva6_icache.sv:391:3
	assign repl_way = (all_ways_valid ? rnd_way : inv_way);
	// Trace: core/cache_subsystem/cva6_icache.sv:392:3
	assign repl_way_oh_d = (cmp_en_q ? icache_way_bin2oh(repl_way) : repl_way_oh_q);
	// Trace: core/cache_subsystem/cva6_icache.sv:395:3
	assign cl_req = (cache_rden ? {CVA6Cfg[1318-:32] {1'sb1}} : (cache_wren ? repl_way_oh_q : {CVA6Cfg[1318-:32] {1'sb0}}));
	// Trace: core/cache_subsystem/cva6_icache.sv:396:3
	assign cl_we = cache_wren;
	// Trace: core/cache_subsystem/cva6_icache.sv:400:3
	lzc #(.WIDTH(CVA6Cfg[1318-:32])) i_lzc(
		.in_i(~vld_rdata),
		.cnt_o(inv_way),
		.empty_o(all_ways_valid)
	);
	// Trace: core/cache_subsystem/cva6_icache.sv:409:3
	lfsr #(
		.LfsrWidth(8),
		.OutWidth(CVA6Cfg[1286-:32])
	) i_lfsr(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.en_i(update_lfsr),
		.out_o(rnd_way)
	);
	// Trace: core/cache_subsystem/cva6_icache.sv:424:3
	wire [CVA6Cfg[1286-:32] - 1:0] hit_idx;
	// Trace: core/cache_subsystem/cva6_icache.sv:426:3
	genvar _gv_i_51;
	generate
		for (_gv_i_51 = 0; _gv_i_51 < CVA6Cfg[1318-:32]; _gv_i_51 = _gv_i_51 + 1) begin : gen_tag_cmpsel
			localparam i = _gv_i_51;
			// Trace: core/cache_subsystem/cva6_icache.sv:427:5
			assign cl_hit[i] = (cl_tag_rdata[i] == cl_tag_d) & vld_rdata[i];
			// Trace: core/cache_subsystem/cva6_icache.sv:428:5
			assign cl_sel[i * CVA6Cfg[643-:32]+:CVA6Cfg[643-:32]] = cl_rdata[i][{cl_offset_q, 3'b000}+:CVA6Cfg[643-:32]];
			// Trace: core/cache_subsystem/cva6_icache.sv:429:5
			assign cl_user[i * CVA6Cfg[708-:32]+:CVA6Cfg[708-:32]] = cl_ruser[i][{cl_offset_q, 3'b000}+:CVA6Cfg[708-:32]];
		end
	endgenerate
	// Trace: core/cache_subsystem/cva6_icache.sv:433:3
	lzc #(.WIDTH(CVA6Cfg[1318-:32])) i_lzc_hit(
		.in_i(cl_hit),
		.cnt_o(hit_idx),
		.empty_o()
	);
	// Trace: core/cache_subsystem/cva6_icache.sv:441:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/cva6_icache.sv:442:5
		if (cmp_en_q) begin
			// Trace: core/cache_subsystem/cva6_icache.sv:443:7
			dreq_o[icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1)))-:((icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1)))) >= (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0))) ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1)))) - (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0)))) + 1 : ((icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0))) - (icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))))) + 1)] = cl_sel[hit_idx * CVA6Cfg[643-:32]+:CVA6Cfg[643-:32]];
			// Trace: core/cache_subsystem/cva6_icache.sv:444:7
			dreq_o[icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))-:((icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))) >= (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0)) ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))) - (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0))) + 1 : ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0)) - (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1)))) + 1)] = cl_user[hit_idx * CVA6Cfg[708-:32]+:CVA6Cfg[708-:32]];
		end
		else begin
			// Trace: core/cache_subsystem/cva6_icache.sv:446:7
			dreq_o[icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1)))-:((icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1)))) >= (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0))) ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1)))) - (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0)))) + 1 : ((icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0))) - (icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))))) + 1)] = mem_rtrn_i[(icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) - ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] - 1) - {cl_offset_q, 3'b000})+:CVA6Cfg[643-:32]];
			// Trace: core/cache_subsystem/cva6_icache.sv:447:7
			dreq_o[icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))-:((icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))) >= (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0)) ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1))) - (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0))) + 1 : ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) + 0)) - (icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32] + (icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32] + (((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33)) - 1)))) + 1)] = mem_rtrn_i[(icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))) - ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] - 1) - {cl_offset_q, 3'b000})+:CVA6Cfg[708-:32]];
		end
	end
	// Trace: core/cache_subsystem/cva6_icache.sv:456:3
	wire [CVA6Cfg[1222-:32]:0] cl_tag_valid_rdata [CVA6Cfg[1318-:32] - 1:0];
	// Trace: core/cache_subsystem/cva6_icache.sv:458:3
	genvar _gv_i_52;
	generate
		for (_gv_i_52 = 0; _gv_i_52 < CVA6Cfg[1318-:32]; _gv_i_52 = _gv_i_52 + 1) begin : gen_sram
			localparam i = _gv_i_52;
			// Trace: core/cache_subsystem/cva6_icache.sv:460:5
			sram_cache #(
				.DATA_WIDTH(CVA6Cfg[1222-:32] + 1),
				.BYTE_ACCESS(0),
				.TECHNO_CUT(CVA6Cfg[16875]),
				.NUM_WORDS(ICACHE_NUM_WORDS)
			) tag_sram(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.req_i(vld_req[i]),
				.we_i(vld_we),
				.addr_i(vld_addr),
				.wuser_i(1'sb0),
				.wdata_i({vld_wdata[i], cl_tag_q}),
				.be_i(1'sb1),
				.ruser_o(),
				.rdata_o(cl_tag_valid_rdata[i])
			);
			// Trace: core/cache_subsystem/cva6_icache.sv:481:5
			assign cl_tag_rdata[i] = cl_tag_valid_rdata[i][CVA6Cfg[1222-:32] - 1:0];
			// Trace: core/cache_subsystem/cva6_icache.sv:482:5
			assign vld_rdata[i] = cl_tag_valid_rdata[i][CVA6Cfg[1222-:32]];
			// Trace: core/cache_subsystem/cva6_icache.sv:485:5
			sram_cache #(
				.USER_WIDTH(CVA6Cfg[1158-:32]),
				.DATA_WIDTH(CVA6Cfg[1190-:32]),
				.USER_EN(CVA6Cfg[676-:32]),
				.BYTE_ACCESS(0),
				.TECHNO_CUT(CVA6Cfg[16875]),
				.NUM_WORDS(ICACHE_NUM_WORDS)
			) data_sram(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.req_i(cl_req[i]),
				.we_i(cl_we),
				.addr_i(cl_index),
				.wuser_i(mem_rtrn_i[icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))-:((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))) >= (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0)) ? ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))) - (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0))) + 1 : ((((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0)) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) + 1)]),
				.wdata_i(mem_rtrn_i[icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))-:((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) >= (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0))) ? ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0)))) + 1 : ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0))) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))))) + 1)]),
				.be_i(1'sb1),
				.ruser_o(cl_ruser[i]),
				.rdata_o(cl_rdata[i])
			);
		end
	endgenerate
	// Trace: core/cache_subsystem/cva6_icache.sv:507:3
	always @(posedge clk_i or negedge rst_ni) begin : p_regs
		// Trace: core/cache_subsystem/cva6_icache.sv:508:5
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/cva6_icache.sv:509:7
			cl_tag_q <= 1'sb0;
			// Trace: core/cache_subsystem/cva6_icache.sv:510:7
			flush_cnt_q <= 1'sb0;
			// Trace: core/cache_subsystem/cva6_icache.sv:511:7
			vaddr_q <= 1'sb0;
			// Trace: core/cache_subsystem/cva6_icache.sv:512:7
			cmp_en_q <= 1'sb0;
			// Trace: core/cache_subsystem/cva6_icache.sv:513:7
			cache_en_q <= 1'sb0;
			// Trace: core/cache_subsystem/cva6_icache.sv:514:7
			flush_q <= 1'sb0;
			// Trace: core/cache_subsystem/cva6_icache.sv:515:7
			state_q <= 3'd0;
			// Trace: core/cache_subsystem/cva6_icache.sv:516:7
			cl_offset_q <= 1'sb0;
			// Trace: core/cache_subsystem/cva6_icache.sv:517:7
			repl_way_oh_q <= 1'sb0;
			// Trace: core/cache_subsystem/cva6_icache.sv:518:7
			inv_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/cva6_icache.sv:520:7
			cl_tag_q <= cl_tag_d;
			// Trace: core/cache_subsystem/cva6_icache.sv:521:7
			flush_cnt_q <= flush_cnt_d;
			// Trace: core/cache_subsystem/cva6_icache.sv:522:7
			vaddr_q <= vaddr_d;
			// Trace: core/cache_subsystem/cva6_icache.sv:523:7
			cmp_en_q <= cmp_en_d;
			// Trace: core/cache_subsystem/cva6_icache.sv:524:7
			cache_en_q <= cache_en_d;
			// Trace: core/cache_subsystem/cva6_icache.sv:525:7
			flush_q <= flush_d;
			// Trace: core/cache_subsystem/cva6_icache.sv:526:7
			state_q <= state_d;
			// Trace: core/cache_subsystem/cva6_icache.sv:527:7
			cl_offset_q <= cl_offset_d;
			// Trace: core/cache_subsystem/cva6_icache.sv:528:7
			repl_way_oh_q <= repl_way_oh_d;
			// Trace: core/cache_subsystem/cva6_icache.sv:529:7
			inv_q <= inv_d;
		end
	end
	// Trace: core/cache_subsystem/cva6_icache.sv:539:3
	// removed an assertion item
	// repl_inval0 : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(cache_wren |-> !(mem_rtrn_i.inv.all | mem_rtrn_i.inv.vld))
	// ) else begin
	// 	// Trace: core/cache_subsystem/cva6_icache.sv:542:8
	// 	$fatal(1, "[l1 icache] cannot replace cacheline and invalidate cacheline simultaneously");
	// end
	// Trace: core/cache_subsystem/cva6_icache.sv:544:3
	// removed an assertion item
	// repl_inval1 : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(mem_rtrn_i.inv.all | mem_rtrn_i.inv.vld |-> !cache_wren)
	// ) else begin
	// 	// Trace: core/cache_subsystem/cva6_icache.sv:547:8
	// 	$fatal(1, "[l1 icache] cannot replace cacheline and invalidate cacheline simultaneously");
	// end
	// Trace: core/cache_subsystem/cva6_icache.sv:549:3
	// removed an assertion item
	// invalid_state : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(state_q inside { FLUSH, IDLE, READ, MISS, KILL_ATRANS, KILL_MISS })
	// ) else begin
	// 	// Trace: core/cache_subsystem/cva6_icache.sv:552:8
	// 	$fatal(1, "[l1 icache] fsm reached an invalid state");
	// end
	// Trace: core/cache_subsystem/cva6_icache.sv:554:3
	// removed an assertion item
	// hot1 : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(!inv_en |-> (cache_rden |=> (cmp_en_q |-> $onehot0(cl_hit))))
	// ) else begin
	// 	// Trace: core/cache_subsystem/cva6_icache.sv:559:8
	// 	$fatal(1, "[l1 icache] cl_hit signal must be hot1");
	// end
	// Trace: core/cache_subsystem/cva6_icache.sv:562:3
	reg [(ICACHE_NUM_WORDS * CVA6Cfg[1318-:32]) - 1:0] vld_mirror;
	// Trace: core/cache_subsystem/cva6_icache.sv:563:3
	reg [((ICACHE_NUM_WORDS * CVA6Cfg[1318-:32]) * CVA6Cfg[1222-:32]) - 1:0] tag_mirror;
	// Trace: core/cache_subsystem/cva6_icache.sv:564:3
	wire [CVA6Cfg[1318-:32] - 1:0] tag_write_duplicate_test;
	// Trace: core/cache_subsystem/cva6_icache.sv:566:3
	function automatic [CVA6Cfg[1318-:32] - 1:0] sv2v_cast_B709C;
		input reg [CVA6Cfg[1318-:32] - 1:0] inp;
		sv2v_cast_B709C = inp;
	endfunction
	function automatic [(CVA6Cfg[1318-:32] * CVA6Cfg[1222-:32]) - 1:0] sv2v_cast_384D9;
		input reg [(CVA6Cfg[1318-:32] * CVA6Cfg[1222-:32]) - 1:0] inp;
		sv2v_cast_384D9 = inp;
	endfunction
	always @(posedge clk_i or negedge rst_ni) begin : p_mirror
		// Trace: core/cache_subsystem/cva6_icache.sv:567:5
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/cva6_icache.sv:568:7
			vld_mirror <= {ICACHE_NUM_WORDS {sv2v_cast_B709C(1'sb0)}};
			// Trace: core/cache_subsystem/cva6_icache.sv:569:7
			tag_mirror <= {ICACHE_NUM_WORDS {sv2v_cast_384D9(1'sb0)}};
		end
		else
			// Trace: core/cache_subsystem/cva6_icache.sv:571:7
			begin : sv2v_autoblock_3
				// Trace: core/cache_subsystem/cva6_icache.sv:571:12
				reg signed [31:0] i;
				// Trace: core/cache_subsystem/cva6_icache.sv:571:12
				for (i = 0; i < CVA6Cfg[1318-:32]; i = i + 1)
					begin
						// Trace: core/cache_subsystem/cva6_icache.sv:572:9
						if (vld_req[i] & vld_we) begin
							// Trace: core/cache_subsystem/cva6_icache.sv:573:11
							vld_mirror[(vld_addr * CVA6Cfg[1318-:32]) + i] <= vld_wdata[i];
							// Trace: core/cache_subsystem/cva6_icache.sv:574:11
							tag_mirror[((vld_addr * CVA6Cfg[1318-:32]) + i) * CVA6Cfg[1222-:32]+:CVA6Cfg[1222-:32]] <= cl_tag_q;
						end
					end
			end
	end
	// Trace: core/cache_subsystem/cva6_icache.sv:580:3
	genvar _gv_i_53;
	generate
		for (_gv_i_53 = 0; _gv_i_53 < CVA6Cfg[1318-:32]; _gv_i_53 = _gv_i_53 + 1) begin : gen_tag_dupl
			localparam i = _gv_i_53;
			// Trace: core/cache_subsystem/cva6_icache.sv:581:5
			assign tag_write_duplicate_test[i] = ((tag_mirror[((vld_addr * CVA6Cfg[1318-:32]) + i) * CVA6Cfg[1222-:32]+:CVA6Cfg[1222-:32]] == cl_tag_q) & vld_mirror[(vld_addr * CVA6Cfg[1318-:32]) + i]) & |vld_wdata;
		end
	endgenerate
	// Trace: core/cache_subsystem/cva6_icache.sv:584:3
	// removed an assertion item
	// tag_write_duplicate : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(|vld_req |-> (vld_we |-> !(|tag_write_duplicate_test)))
	// ) else begin
	// 	// Trace: core/cache_subsystem/cva6_icache.sv:587:8
	// 	$fatal(1, "[l1 icache] cannot allocate a CL that is already present in the cache");
	// end
	// Trace: core/cache_subsystem/cva6_icache.sv:590:3
	initial _sv2v_0 = 0;
endmodule
