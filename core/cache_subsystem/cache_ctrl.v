module cache_ctrl_74373_DD2E1 (
	clk_i,
	rst_ni,
	flush_i,
	bypass_i,
	busy_o,
	req_port_i,
	req_port_o,
	req_o,
	addr_o,
	gnt_i,
	data_o,
	be_o,
	tag_o,
	data_i,
	we_o,
	hit_way_i,
	miss_req_o,
	miss_gnt_i,
	active_serving_i,
	critical_word_i,
	critical_word_valid_i,
	bypass_gnt_i,
	bypass_valid_i,
	bypass_data_i,
	mshr_addr_o,
	mshr_addr_matches_i,
	mshr_index_matches_i
);
	// removed localparam type cache_line_t_CVA6Cfg_type
	parameter [17102:0] cache_line_t_CVA6Cfg = 0;
	// removed localparam type cl_be_t_CVA6Cfg_type
	parameter [17102:0] cl_be_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// removed import std_cache_pkg::*;
	// Trace: core/cache_subsystem/cache_ctrl.sv:25:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/cache_ctrl.sv:26:20
	// removed localparam type cache_line_t
	// Trace: core/cache_subsystem/cache_ctrl.sv:27:20
	// removed localparam type cl_be_t
	// Trace: core/cache_subsystem/cache_ctrl.sv:28:20
	// removed localparam type dcache_req_i_t
	// Trace: core/cache_subsystem/cache_ctrl.sv:29:20
	// removed localparam type dcache_req_o_t
	// Trace: core/cache_subsystem/cache_ctrl.sv:31:5
	input wire clk_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:32:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/cache_ctrl.sv:33:5
	input wire flush_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:34:5
	input wire bypass_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:35:5
	output wire busy_o;
	// Trace: core/cache_subsystem/cache_ctrl.sv:37:5
	input wire [(((((((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1:0] req_port_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:38:5
	output reg [(((2 + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]) - 1:0] req_port_o;
	// Trace: core/cache_subsystem/cache_ctrl.sv:40:5
	output reg [CVA6Cfg[1092-:32] - 1:0] req_o;
	// Trace: core/cache_subsystem/cache_ctrl.sv:41:5
	output reg [CVA6Cfg[1028-:32] - 1:0] addr_o;
	// Trace: core/cache_subsystem/cache_ctrl.sv:42:5
	input wire gnt_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:43:5
	output reg [(cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1:0] data_o;
	// Trace: core/cache_subsystem/cache_ctrl.sv:44:5
	output reg [((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) - 1:0] be_o;
	// Trace: core/cache_subsystem/cache_ctrl.sv:45:5
	output wire [CVA6Cfg[996-:32] - 1:0] tag_o;
	// Trace: core/cache_subsystem/cache_ctrl.sv:46:5
	input wire [(((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[1092-:32] * ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2)) - 1 : (CVA6Cfg[1092-:32] * (1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1))) + ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 0)):(((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1)] data_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:47:5
	output reg we_o;
	// Trace: core/cache_subsystem/cache_ctrl.sv:48:5
	input wire [CVA6Cfg[1092-:32] - 1:0] hit_way_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:50:5
	// removed localparam type std_cache_pkg_miss_req_t
	output reg [140:0] miss_req_o;
	// Trace: core/cache_subsystem/cache_ctrl.sv:52:5
	input wire miss_gnt_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:53:5
	input wire active_serving_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:54:5
	input wire [63:0] critical_word_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:55:5
	input wire critical_word_valid_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:57:5
	input wire bypass_gnt_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:58:5
	input wire bypass_valid_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:59:5
	input wire [63:0] bypass_data_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:61:5
	output reg [55:0] mshr_addr_o;
	// Trace: core/cache_subsystem/cache_ctrl.sv:62:5
	input wire mshr_addr_matches_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:63:5
	input wire mshr_index_matches_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:66:3
	reg [3:0] state_d;
	reg [3:0] state_q;
	// Trace: core/cache_subsystem/cache_ctrl.sv:81:3
	// removed localparam type mem_req_t
	// Trace: core/cache_subsystem/cache_ctrl.sv:93:3
	reg [CVA6Cfg[1092-:32] - 1:0] hit_way_d;
	reg [CVA6Cfg[1092-:32] - 1:0] hit_way_q;
	// Trace: core/cache_subsystem/cache_ctrl.sv:95:3
	reg [(((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[1124-:32]) + (CVA6Cfg[17102-:32] / 8)) + 3) + CVA6Cfg[17102-:32]) + 1:0] mem_req_d;
	reg [(((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[1124-:32]) + (CVA6Cfg[17102-:32] / 8)) + 3) + CVA6Cfg[17102-:32]) + 1:0] mem_req_q;
	// Trace: core/cache_subsystem/cache_ctrl.sv:97:3
	assign busy_o = state_q != 4'd0;
	// Trace: core/cache_subsystem/cache_ctrl.sv:98:3
	assign tag_o = mem_req_d[CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))-:((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) >= (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) ? ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) - (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) + 1 : ((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) + 1)];
	// Trace: core/cache_subsystem/cache_ctrl.sv:100:3
	reg [CVA6Cfg[964-:32] - 1:0] cl_i;
	// Trace: core/cache_subsystem/cache_ctrl.sv:102:3
	always @(*) begin : way_select
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/cache_ctrl.sv:103:5
		cl_i = 1'sb0;
		// Trace: core/cache_subsystem/cache_ctrl.sv:104:5
		begin : sv2v_autoblock_1
			// Trace: core/cache_subsystem/cache_ctrl.sv:104:10
			reg [31:0] i;
			// Trace: core/cache_subsystem/cache_ctrl.sv:104:10
			for (i = 0; i < CVA6Cfg[1092-:32]; i = i + 1)
				if (hit_way_i[i])
					// Trace: core/cache_subsystem/cache_ctrl.sv:105:23
					cl_i = data_i[(((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (i * (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2 : 1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1))) + (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? cache_line_t_CVA6Cfg[964-:32] + 1 : ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) - (cache_line_t_CVA6Cfg[964-:32] + 1)) : (((i * (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2 : 1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1))) + (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? cache_line_t_CVA6Cfg[964-:32] + 1 : ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) - (cache_line_t_CVA6Cfg[964-:32] + 1))) + ((cache_line_t_CVA6Cfg[964-:32] + 1) >= 2 ? cache_line_t_CVA6Cfg[964-:32] + 0 : 3 - (cache_line_t_CVA6Cfg[964-:32] + 1))) - 1)-:((cache_line_t_CVA6Cfg[964-:32] + 1) >= 2 ? cache_line_t_CVA6Cfg[964-:32] + 0 : 3 - (cache_line_t_CVA6Cfg[964-:32] + 1))];
		end
	end
	// Trace: core/cache_subsystem/cache_ctrl.sv:113:3
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
			begin : sv2v_autoblock_2
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
	always @(*) begin : cache_ctrl_fsm
		// Trace: core/cache_subsystem/cache_ctrl.sv:114:5
		reg [$clog2(CVA6Cfg[964-:32]) - 1:0] cl_offset;
		// Trace: core/cache_subsystem/cache_ctrl.sv:115:5
		reg [$clog2(CVA6Cfg[16712-:32]) - 1:0] axi_offset;
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/cache_ctrl.sv:118:5
		cl_offset = mem_req_q[(CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - ((CVA6Cfg[1028-:32] - 1) - (CVA6Cfg[868-:32] - 1)):(CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - ((CVA6Cfg[1028-:32] - 1) - $clog2(CVA6Cfg[17102-:32] / 8))] << $clog2(CVA6Cfg[17102-:32]);
		// Trace: core/cache_subsystem/cache_ctrl.sv:120:5
		axi_offset = 1'sb0;
		// Trace: core/cache_subsystem/cache_ctrl.sv:122:5
		state_d = state_q;
		// Trace: core/cache_subsystem/cache_ctrl.sv:123:5
		mem_req_d = mem_req_q;
		// Trace: core/cache_subsystem/cache_ctrl.sv:124:5
		hit_way_d = hit_way_q;
		// Trace: core/cache_subsystem/cache_ctrl.sv:126:5
		req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b0;
		// Trace: core/cache_subsystem/cache_ctrl.sv:127:5
		req_port_o[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b0;
		// Trace: core/cache_subsystem/cache_ctrl.sv:128:5
		req_port_o[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)-:((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) + 1)] = 1'sb0;
		// Trace: core/cache_subsystem/cache_ctrl.sv:129:5
		req_port_o[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))-:((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0))) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))) + 1)] = mem_req_q[CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))-:((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))) >= ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))) ? ((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))) - ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) + 1 : (((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))) - (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) + 1)];
		// Trace: core/cache_subsystem/cache_ctrl.sv:130:5
		miss_req_o = 1'sb0;
		// Trace: core/cache_subsystem/cache_ctrl.sv:131:5
		mshr_addr_o = 1'sb0;
		// Trace: core/cache_subsystem/cache_ctrl.sv:133:5
		req_o = 1'sb0;
		// Trace: core/cache_subsystem/cache_ctrl.sv:134:5
		addr_o = req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))))) + 1)];
		// Trace: core/cache_subsystem/cache_ctrl.sv:135:5
		data_o = 1'sb0;
		// Trace: core/cache_subsystem/cache_ctrl.sv:136:5
		be_o = 1'sb0;
		// Trace: core/cache_subsystem/cache_ctrl.sv:137:5
		we_o = 1'sb0;
		// Trace: core/cache_subsystem/cache_ctrl.sv:139:5
		mem_req_d[0] = mem_req_d[0] | req_port_i[1];
		// Trace: core/cache_subsystem/cache_ctrl.sv:141:5
		if (CVA6Cfg[17102-:32] == 32)
			// Trace: core/cache_subsystem/cache_ctrl.sv:142:7
			axi_offset = mem_req_q[(CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - ((CVA6Cfg[1028-:32] - 1) - ($clog2(CVA6Cfg[16712-:32] / 8) - 1)):(CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - ((CVA6Cfg[1028-:32] - 1) - $clog2(CVA6Cfg[17102-:32] / 8))] << $clog2(CVA6Cfg[17102-:32]);
		case (state_q)
			4'd0:
				// Trace: core/cache_subsystem/cache_ctrl.sv:150:9
				if (req_port_i[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] && !flush_i) begin
					// Trace: core/cache_subsystem/cache_ctrl.sv:152:11
					req_o = 1'sb1;
					// Trace: core/cache_subsystem/cache_ctrl.sv:155:11
					mem_req_d[CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))-:((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) >= (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) ? ((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))))) + 1 : ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) - (CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))))) + 1)] = req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))))) + 1)];
					// Trace: core/cache_subsystem/cache_ctrl.sv:156:11
					mem_req_d[CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))-:((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))) >= ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))) ? ((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))) - ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) + 1 : (((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))) - (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) + 1)] = req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1) >= 2 ? dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 0 : 3 - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))];
					// Trace: core/cache_subsystem/cache_ctrl.sv:157:11
					mem_req_d[(CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))-:(((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))) >= (3 + (CVA6Cfg[17102-:32] + 2)) ? (((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))) - (3 + (CVA6Cfg[17102-:32] + 2))) + 1 : ((3 + (CVA6Cfg[17102-:32] + 2)) - ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))) + 1)] = req_port_i[(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))-:(((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1)];
					// Trace: core/cache_subsystem/cache_ctrl.sv:158:11
					mem_req_d[3 + (CVA6Cfg[17102-:32] + 1)-:((3 + (CVA6Cfg[17102-:32] + 1)) >= (1 + (CVA6Cfg[17102-:32] + 2)) ? ((3 + (CVA6Cfg[17102-:32] + 1)) - (1 + (CVA6Cfg[17102-:32] + 2))) + 1 : ((1 + (CVA6Cfg[17102-:32] + 2)) - (3 + (CVA6Cfg[17102-:32] + 1))) + 1)] = req_port_i[2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)-:((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) ? ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) + 1)];
					// Trace: core/cache_subsystem/cache_ctrl.sv:159:11
					mem_req_d[1 + (CVA6Cfg[17102-:32] + 1)] = req_port_i[1 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))];
					// Trace: core/cache_subsystem/cache_ctrl.sv:160:11
					mem_req_d[CVA6Cfg[17102-:32] + 1-:((CVA6Cfg[17102-:32] + 1) >= 2 ? CVA6Cfg[17102-:32] + 0 : 3 - (CVA6Cfg[17102-:32] + 1))] = req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) + 1)];
					// Trace: core/cache_subsystem/cache_ctrl.sv:161:11
					mem_req_d[0] = req_port_i[1];
					// Trace: core/cache_subsystem/cache_ctrl.sv:164:11
					if (bypass_i) begin
						// Trace: core/cache_subsystem/cache_ctrl.sv:165:13
						state_d = 4'd2;
						// Trace: core/cache_subsystem/cache_ctrl.sv:167:13
						req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = (req_port_i[1 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] ? 1'b0 : 1'b1);
						// Trace: core/cache_subsystem/cache_ctrl.sv:168:13
						mem_req_d[1] = 1'b1;
					end
					else
						// Trace: core/cache_subsystem/cache_ctrl.sv:174:13
						if (gnt_i) begin
							// Trace: core/cache_subsystem/cache_ctrl.sv:175:15
							state_d = 4'd1;
							// Trace: core/cache_subsystem/cache_ctrl.sv:176:15
							mem_req_d[1] = 1'b0;
							// Trace: core/cache_subsystem/cache_ctrl.sv:178:15
							if (!req_port_i[1 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))])
								// Trace: core/cache_subsystem/cache_ctrl.sv:178:40
								req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
						end
				end
			4'd1, 4'd8:
				// Trace: core/cache_subsystem/cache_ctrl.sv:187:9
				if (!req_port_i[1] && ((req_port_i[0] || (state_q == 4'd8)) || mem_req_q[1 + (CVA6Cfg[17102-:32] + 1)])) begin
					// Trace: core/cache_subsystem/cache_ctrl.sv:189:11
					if (state_q != 4'd8)
						// Trace: core/cache_subsystem/cache_ctrl.sv:190:13
						mem_req_d[CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))-:((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) >= (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) ? ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) - (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) + 1 : ((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) + 1)] = req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + 1)];
					if (req_port_i[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] && !flush_i)
						// Trace: core/cache_subsystem/cache_ctrl.sv:194:13
						req_o = 1'sb1;
					if (|hit_way_i) begin
						// Trace: core/cache_subsystem/cache_ctrl.sv:201:13
						if ((req_port_i[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] && !mem_req_q[1 + (CVA6Cfg[17102-:32] + 1)]) && !flush_i) begin
							// Trace: core/cache_subsystem/cache_ctrl.sv:202:15
							state_d = 4'd1;
							// Trace: core/cache_subsystem/cache_ctrl.sv:203:15
							mem_req_d[CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))-:((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) >= (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) ? ((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))))) + 1 : ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) - (CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))))) + 1)] = req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))))) + 1)];
							// Trace: core/cache_subsystem/cache_ctrl.sv:204:15
							mem_req_d[CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))-:((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))) >= ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))) ? ((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))) - ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) + 1 : (((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))) - (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) + 1)] = req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1) >= 2 ? dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 0 : 3 - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))];
							// Trace: core/cache_subsystem/cache_ctrl.sv:205:15
							mem_req_d[(CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))-:(((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))) >= (3 + (CVA6Cfg[17102-:32] + 2)) ? (((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))) - (3 + (CVA6Cfg[17102-:32] + 2))) + 1 : ((3 + (CVA6Cfg[17102-:32] + 2)) - ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))) + 1)] = req_port_i[(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))-:(((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1)];
							// Trace: core/cache_subsystem/cache_ctrl.sv:206:15
							mem_req_d[3 + (CVA6Cfg[17102-:32] + 1)-:((3 + (CVA6Cfg[17102-:32] + 1)) >= (1 + (CVA6Cfg[17102-:32] + 2)) ? ((3 + (CVA6Cfg[17102-:32] + 1)) - (1 + (CVA6Cfg[17102-:32] + 2))) + 1 : ((1 + (CVA6Cfg[17102-:32] + 2)) - (3 + (CVA6Cfg[17102-:32] + 1))) + 1)] = req_port_i[2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)-:((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) ? ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) + 1)];
							// Trace: core/cache_subsystem/cache_ctrl.sv:207:15
							mem_req_d[1 + (CVA6Cfg[17102-:32] + 1)] = req_port_i[1 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))];
							// Trace: core/cache_subsystem/cache_ctrl.sv:208:15
							mem_req_d[CVA6Cfg[17102-:32] + 1-:((CVA6Cfg[17102-:32] + 1) >= 2 ? CVA6Cfg[17102-:32] + 0 : 3 - (CVA6Cfg[17102-:32] + 1))] = req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) + 1)];
							// Trace: core/cache_subsystem/cache_ctrl.sv:209:15
							mem_req_d[0] = req_port_i[1];
							// Trace: core/cache_subsystem/cache_ctrl.sv:210:15
							mem_req_d[1] = 1'b0;
							// Trace: core/cache_subsystem/cache_ctrl.sv:212:15
							req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = gnt_i;
							// Trace: core/cache_subsystem/cache_ctrl.sv:214:15
							if (!gnt_i)
								// Trace: core/cache_subsystem/cache_ctrl.sv:215:17
								state_d = 4'd0;
						end
						else
							// Trace: core/cache_subsystem/cache_ctrl.sv:218:15
							state_d = 4'd0;
						// Trace: core/cache_subsystem/cache_ctrl.sv:222:13
						req_port_o[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)-:((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) + 1)] = cl_i[cl_offset+:CVA6Cfg[17102-:32]];
						if (!mem_req_q[1 + (CVA6Cfg[17102-:32] + 1)])
							// Trace: core/cache_subsystem/cache_ctrl.sv:226:15
							req_port_o[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = ~mem_req_q[0];
						else begin
							// Trace: core/cache_subsystem/cache_ctrl.sv:229:15
							state_d = 4'd5;
							// Trace: core/cache_subsystem/cache_ctrl.sv:230:15
							hit_way_d = hit_way_i;
						end
					end
					else
						// Trace: core/cache_subsystem/cache_ctrl.sv:237:13
						state_d = 4'd7;
					// Trace: core/cache_subsystem/cache_ctrl.sv:242:11
					mshr_addr_o = {tag_o, mem_req_q[CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))-:((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) >= (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) ? ((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))))) + 1 : ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) - (CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))))) + 1)]};
					if ((mshr_index_matches_i && mem_req_q[1 + (CVA6Cfg[17102-:32] + 1)]) || mshr_addr_matches_i)
						// Trace: core/cache_subsystem/cache_ctrl.sv:261:13
						state_d = 4'd9;
					if (!config_pkg_is_inside_cacheable_regions(CVA6Cfg, {{{64 - CVA6Cfg[17038-:32]} {1'b0}}, tag_o, {CVA6Cfg[1028-:32] {1'b0}}})) begin
						// Trace: core/cache_subsystem/cache_ctrl.sv:270:13
						mem_req_d[1] = 1'b1;
						// Trace: core/cache_subsystem/cache_ctrl.sv:271:13
						state_d = 4'd7;
					end
				end
				else begin
					// Trace: core/cache_subsystem/cache_ctrl.sv:277:11
					addr_o = mem_req_q[CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))-:((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) >= (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) ? ((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))))) + 1 : ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) - (CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))))) + 1)];
					// Trace: core/cache_subsystem/cache_ctrl.sv:278:11
					req_o = 1'sb1;
					// Trace: core/cache_subsystem/cache_ctrl.sv:281:11
					if (!gnt_i)
						// Trace: core/cache_subsystem/cache_ctrl.sv:282:13
						state_d = 4'd3;
				end
			4'd3, 4'd4: begin
				// Trace: core/cache_subsystem/cache_ctrl.sv:290:9
				addr_o = mem_req_q[CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))-:((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) >= (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) ? ((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))))) + 1 : ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) - (CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))))) + 1)];
				// Trace: core/cache_subsystem/cache_ctrl.sv:291:9
				req_o = 1'sb1;
				// Trace: core/cache_subsystem/cache_ctrl.sv:294:9
				if (req_port_i[0]) begin
					// Trace: core/cache_subsystem/cache_ctrl.sv:295:11
					mem_req_d[CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))-:((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) >= (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) ? ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) - (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) + 1 : ((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) + 1)] = req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + 1)];
					// Trace: core/cache_subsystem/cache_ctrl.sv:296:11
					state_d = 4'd4;
				end
				if (gnt_i)
					// Trace: core/cache_subsystem/cache_ctrl.sv:301:11
					state_d = (state_d == 4'd3 ? 4'd1 : 4'd8);
			end
			4'd5: begin
				// Trace: core/cache_subsystem/cache_ctrl.sv:308:9
				mshr_addr_o = {mem_req_q[CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))-:((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) >= (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) ? ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) - (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) + 1 : ((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) + 1)], mem_req_q[CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))-:((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) >= (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) ? ((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))))) + 1 : ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) - (CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))))) + 1)]};
				// Trace: core/cache_subsystem/cache_ctrl.sv:312:9
				if (!mshr_index_matches_i) begin
					// Trace: core/cache_subsystem/cache_ctrl.sv:314:11
					req_o = hit_way_q;
					// Trace: core/cache_subsystem/cache_ctrl.sv:315:11
					addr_o = mem_req_q[CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))-:((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) >= (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) ? ((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))))) + 1 : ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) - (CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))))) + 1)];
					// Trace: core/cache_subsystem/cache_ctrl.sv:316:11
					we_o = 1'b1;
					// Trace: core/cache_subsystem/cache_ctrl.sv:318:11
					be_o[cl_be_t_CVA6Cfg[1092-:32] - 1-:cl_be_t_CVA6Cfg[1092-:32]] = hit_way_q;
					// Trace: core/cache_subsystem/cache_ctrl.sv:321:11
					be_o[(((cl_be_t_CVA6Cfg[964-:32] + 7) / 8) + (cl_be_t_CVA6Cfg[1092-:32] - 1)) - ((((cl_be_t_CVA6Cfg[964-:32] + 7) / 8) - 1) - (cl_offset >> 3))+:CVA6Cfg[17102-:32] / 8] = mem_req_q[(CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))-:(((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))) >= (3 + (CVA6Cfg[17102-:32] + 2)) ? (((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))) - (3 + (CVA6Cfg[17102-:32] + 2))) + 1 : ((3 + (CVA6Cfg[17102-:32] + 2)) - ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))) + 1)];
					// Trace: core/cache_subsystem/cache_ctrl.sv:322:11
					data_o[(cache_line_t_CVA6Cfg[964-:32] + 1) - ((cache_line_t_CVA6Cfg[964-:32] - 1) - cl_offset)+:CVA6Cfg[17102-:32]] = mem_req_q[CVA6Cfg[17102-:32] + 1-:((CVA6Cfg[17102-:32] + 1) >= 2 ? CVA6Cfg[17102-:32] + 0 : 3 - (CVA6Cfg[17102-:32] + 1))];
					// Trace: core/cache_subsystem/cache_ctrl.sv:323:11
					data_o[cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)-:((cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)) >= (cache_line_t_CVA6Cfg[964-:32] + 2) ? ((cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)) - (cache_line_t_CVA6Cfg[964-:32] + 2)) + 1 : ((cache_line_t_CVA6Cfg[964-:32] + 2) - (cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1))) + 1)] = mem_req_d[CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))-:((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) >= (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) ? ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) - (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) + 1 : ((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) + 1)];
					// Trace: core/cache_subsystem/cache_ctrl.sv:325:11
					data_o[0] = 1'b1;
					// Trace: core/cache_subsystem/cache_ctrl.sv:326:11
					data_o[1] = 1'b1;
					// Trace: core/cache_subsystem/cache_ctrl.sv:329:11
					if (gnt_i) begin
						// Trace: core/cache_subsystem/cache_ctrl.sv:330:13
						req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
						// Trace: core/cache_subsystem/cache_ctrl.sv:331:13
						state_d = 4'd0;
					end
				end
				else
					// Trace: core/cache_subsystem/cache_ctrl.sv:334:11
					state_d = 4'd9;
			end
			4'd9: begin
				// Trace: core/cache_subsystem/cache_ctrl.sv:340:9
				mshr_addr_o = {mem_req_q[CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))-:((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) >= (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) ? ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) - (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) + 1 : ((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) + 1)], mem_req_q[CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))-:((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) >= (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) ? ((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))))) + 1 : ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) - (CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))))) + 1)]};
				// Trace: core/cache_subsystem/cache_ctrl.sv:342:9
				if (!mshr_index_matches_i) begin
					// Trace: core/cache_subsystem/cache_ctrl.sv:343:11
					req_o = 1'sb1;
					// Trace: core/cache_subsystem/cache_ctrl.sv:345:11
					addr_o = mem_req_q[CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))-:((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) >= (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) ? ((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))))) + 1 : ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) - (CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))))) + 1)];
					// Trace: core/cache_subsystem/cache_ctrl.sv:347:11
					if (gnt_i)
						// Trace: core/cache_subsystem/cache_ctrl.sv:347:22
						state_d = 4'd8;
				end
			end
			4'd2:
				// Trace: core/cache_subsystem/cache_ctrl.sv:354:9
				if (!req_port_i[1] && (req_port_i[0] || mem_req_q[1 + (CVA6Cfg[17102-:32] + 1)])) begin
					// Trace: core/cache_subsystem/cache_ctrl.sv:356:11
					mem_req_d[CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))-:((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) >= (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) ? ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) - (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) + 1 : ((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) + 1)] = req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + 1)];
					// Trace: core/cache_subsystem/cache_ctrl.sv:357:11
					state_d = 4'd7;
				end
			4'd7: begin
				// Trace: core/cache_subsystem/cache_ctrl.sv:364:9
				mshr_addr_o = {mem_req_q[CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))-:((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) >= (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) ? ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) - (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) + 1 : ((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) + 1)], mem_req_q[CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))-:((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) >= (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) ? ((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))))) + 1 : ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) - (CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))))) + 1)]};
				// Trace: core/cache_subsystem/cache_ctrl.sv:366:9
				miss_req_o[140] = 1'b1;
				// Trace: core/cache_subsystem/cache_ctrl.sv:367:9
				miss_req_o[0] = mem_req_q[1];
				// Trace: core/cache_subsystem/cache_ctrl.sv:368:9
				miss_req_o[139-:64] = {mem_req_q[CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))-:((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) >= (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) ? ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) - (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) + 1 : ((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) + 1)], mem_req_q[CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))-:((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) >= (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) ? ((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))))) + 1 : ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) - (CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))))) + 1)]};
				// Trace: core/cache_subsystem/cache_ctrl.sv:369:9
				miss_req_o[68 + (axi_offset >> 3)+:CVA6Cfg[17102-:32] / 8] = mem_req_q[(CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))-:(((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))) >= (3 + (CVA6Cfg[17102-:32] + 2)) ? (((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))) - (3 + (CVA6Cfg[17102-:32] + 2))) + 1 : ((3 + (CVA6Cfg[17102-:32] + 2)) - ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))) + 1)];
				// Trace: core/cache_subsystem/cache_ctrl.sv:370:9
				miss_req_o[67-:2] = mem_req_q[3 + (CVA6Cfg[17102-:32] + 1)-:((3 + (CVA6Cfg[17102-:32] + 1)) >= (1 + (CVA6Cfg[17102-:32] + 2)) ? ((3 + (CVA6Cfg[17102-:32] + 1)) - (1 + (CVA6Cfg[17102-:32] + 2))) + 1 : ((1 + (CVA6Cfg[17102-:32] + 2)) - (3 + (CVA6Cfg[17102-:32] + 1))) + 1)];
				// Trace: core/cache_subsystem/cache_ctrl.sv:371:9
				miss_req_o[65] = mem_req_q[1 + (CVA6Cfg[17102-:32] + 1)];
				// Trace: core/cache_subsystem/cache_ctrl.sv:372:9
				miss_req_o[1 + axi_offset+:CVA6Cfg[17102-:32]] = mem_req_q[CVA6Cfg[17102-:32] + 1-:((CVA6Cfg[17102-:32] + 1) >= 2 ? CVA6Cfg[17102-:32] + 0 : 3 - (CVA6Cfg[17102-:32] + 1))];
				// Trace: core/cache_subsystem/cache_ctrl.sv:375:9
				if (bypass_gnt_i) begin
					// Trace: core/cache_subsystem/cache_ctrl.sv:376:11
					state_d = 4'd6;
					// Trace: core/cache_subsystem/cache_ctrl.sv:380:11
					if (mem_req_q[1 + (CVA6Cfg[17102-:32] + 1)]) begin
						// Trace: core/cache_subsystem/cache_ctrl.sv:381:13
						req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
						// Trace: core/cache_subsystem/cache_ctrl.sv:382:13
						state_d = 4'd0;
					end
				end
				if (miss_gnt_i && !mem_req_q[1 + (CVA6Cfg[17102-:32] + 1)])
					// Trace: core/cache_subsystem/cache_ctrl.sv:386:42
					state_d = 4'd10;
				else if (miss_gnt_i) begin
					// Trace: core/cache_subsystem/cache_ctrl.sv:388:11
					state_d = 4'd0;
					// Trace: core/cache_subsystem/cache_ctrl.sv:389:11
					req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
				end
				if (mshr_addr_matches_i && !active_serving_i)
					// Trace: core/cache_subsystem/cache_ctrl.sv:397:11
					state_d = 4'd9;
			end
			4'd10: begin
				// Trace: core/cache_subsystem/cache_ctrl.sv:404:9
				if (req_port_i[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))])
					// Trace: core/cache_subsystem/cache_ctrl.sv:406:11
					req_o = 1'sb1;
				if (critical_word_valid_i) begin
					// Trace: core/cache_subsystem/cache_ctrl.sv:410:11
					req_port_o[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = ~mem_req_q[0];
					// Trace: core/cache_subsystem/cache_ctrl.sv:411:11
					req_port_o[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)-:((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) + 1)] = critical_word_i[axi_offset+:CVA6Cfg[17102-:32]];
					// Trace: core/cache_subsystem/cache_ctrl.sv:413:11
					if (req_port_i[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] && !flush_i) begin
						// Trace: core/cache_subsystem/cache_ctrl.sv:415:13
						mem_req_d[CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))-:((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) >= (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) ? ((CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))))) - (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))))) + 1 : ((CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))))) - (CVA6Cfg[1028-:32] + (CVA6Cfg[996-:32] + (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))))) + 1)] = req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))))) + 1)];
						// Trace: core/cache_subsystem/cache_ctrl.sv:416:13
						mem_req_d[CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))-:((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))) >= ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))) ? ((CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))) - ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2)))) + 1 : (((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 2))) - (CVA6Cfg[1124-:32] + ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))))) + 1)] = req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1) >= 2 ? dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 0 : 3 - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))];
						// Trace: core/cache_subsystem/cache_ctrl.sv:417:13
						mem_req_d[(CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))-:(((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))) >= (3 + (CVA6Cfg[17102-:32] + 2)) ? (((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1))) - (3 + (CVA6Cfg[17102-:32] + 2))) + 1 : ((3 + (CVA6Cfg[17102-:32] + 2)) - ((CVA6Cfg[17102-:32] / 8) + (3 + (CVA6Cfg[17102-:32] + 1)))) + 1)] = req_port_i[(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))-:(((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) >= (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) ? (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))) + 1 : ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))) + 1)];
						// Trace: core/cache_subsystem/cache_ctrl.sv:418:13
						mem_req_d[3 + (CVA6Cfg[17102-:32] + 1)-:((3 + (CVA6Cfg[17102-:32] + 1)) >= (1 + (CVA6Cfg[17102-:32] + 2)) ? ((3 + (CVA6Cfg[17102-:32] + 1)) - (1 + (CVA6Cfg[17102-:32] + 2))) + 1 : ((1 + (CVA6Cfg[17102-:32] + 2)) - (3 + (CVA6Cfg[17102-:32] + 1))) + 1)] = req_port_i[2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)-:((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) ? ((2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2) - (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) + 1)];
						// Trace: core/cache_subsystem/cache_ctrl.sv:419:13
						mem_req_d[1 + (CVA6Cfg[17102-:32] + 1)] = req_port_i[1 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))];
						// Trace: core/cache_subsystem/cache_ctrl.sv:420:13
						mem_req_d[CVA6Cfg[17102-:32] + 1-:((CVA6Cfg[17102-:32] + 1) >= 2 ? CVA6Cfg[17102-:32] + 0 : 3 - (CVA6Cfg[17102-:32] + 1))] = req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) + 1)];
						// Trace: core/cache_subsystem/cache_ctrl.sv:421:13
						mem_req_d[0] = req_port_i[1];
						// Trace: core/cache_subsystem/cache_ctrl.sv:423:13
						state_d = 4'd0;
						// Trace: core/cache_subsystem/cache_ctrl.sv:426:13
						if (gnt_i) begin
							// Trace: core/cache_subsystem/cache_ctrl.sv:427:15
							state_d = 4'd1;
							// Trace: core/cache_subsystem/cache_ctrl.sv:428:15
							mem_req_d[1] = 1'b0;
							// Trace: core/cache_subsystem/cache_ctrl.sv:429:15
							req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
						end
					end
					else
						// Trace: core/cache_subsystem/cache_ctrl.sv:432:13
						state_d = 4'd0;
				end
			end
			4'd6:
				// Trace: core/cache_subsystem/cache_ctrl.sv:439:9
				if (bypass_valid_i) begin
					// Trace: core/cache_subsystem/cache_ctrl.sv:440:11
					req_port_o[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)-:((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) + 1)] = bypass_data_i[axi_offset+:CVA6Cfg[17102-:32]];
					// Trace: core/cache_subsystem/cache_ctrl.sv:441:11
					req_port_o[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = ~mem_req_q[0];
					// Trace: core/cache_subsystem/cache_ctrl.sv:442:11
					state_d = 4'd0;
				end
			default:
				;
		endcase
		if (req_port_i[1]) begin
			// Trace: core/cache_subsystem/cache_ctrl.sv:451:7
			req_port_o[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
			// Trace: core/cache_subsystem/cache_ctrl.sv:452:7
			if (!(|{state_q == 4'd7, state_q == 4'd6, state_q == 4'd10}))
				// Trace: core/cache_subsystem/cache_ctrl.sv:453:9
				state_d = 4'd0;
		end
	end
	// Trace: core/cache_subsystem/cache_ctrl.sv:461:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/cache_ctrl.sv:462:5
		if (~rst_ni) begin
			// Trace: core/cache_subsystem/cache_ctrl.sv:463:7
			state_q <= 4'd0;
			// Trace: core/cache_subsystem/cache_ctrl.sv:464:7
			mem_req_q <= 1'sb0;
			// Trace: core/cache_subsystem/cache_ctrl.sv:465:7
			hit_way_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/cache_ctrl.sv:467:7
			state_q <= state_d;
			// Trace: core/cache_subsystem/cache_ctrl.sv:468:7
			mem_req_q <= mem_req_d;
			// Trace: core/cache_subsystem/cache_ctrl.sv:469:7
			hit_way_q <= hit_way_d;
		end
	// Trace: core/cache_subsystem/cache_ctrl.sv:475:3
	// Trace: core/cache_subsystem/cache_ctrl.sv:483:3
	// removed an assertion item
	// partial_full_mshr_match : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	mshr_addr_matches_i -> mshr_index_matches_i
	// ) else begin
	// 	// Trace: core/cache_subsystem/cache_ctrl.sv:485:8
	// 	$fatal(1, "partial mshr index doesn't match");
	// end
	// Trace: core/cache_subsystem/cache_ctrl.sv:487:3
	// removed an assertion item
	// no_valid_on_mshr_match : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(mshr_addr_matches_i && !active_serving_i) -> (!req_port_o.data_rvalid || req_port_i.kill_req)
	// ) else begin
	// 	// Trace: core/cache_subsystem/cache_ctrl.sv:489:8
	// 	$fatal(1, "rvalid_o should not be set on MSHR match");
	// end
	initial _sv2v_0 = 0;
endmodule
