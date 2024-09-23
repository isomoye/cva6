module miss_handler_540D8_4BD5F (
	clk_i,
	rst_ni,
	flush_i,
	flush_ack_o,
	miss_o,
	busy_i,
	miss_req_i,
	bypass_gnt_o,
	bypass_valid_o,
	bypass_data_o,
	axi_bypass_o,
	axi_bypass_i,
	miss_gnt_o,
	active_serving_o,
	critical_word_o,
	critical_word_valid_o,
	axi_data_o,
	axi_data_i,
	mshr_addr_i,
	mshr_addr_matches_o,
	mshr_index_matches_o,
	amo_req_i,
	amo_resp_o,
	req_o,
	addr_o,
	data_o,
	be_o,
	data_i,
	we_o
);
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth_type
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth_type
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth_type
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth_type
	// removed localparam type axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth_type
	// removed localparam type axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth = 0;
	// removed localparam type cache_line_t_CVA6Cfg_type
	parameter [17102:0] cache_line_t_CVA6Cfg = 0;
	// removed localparam type cl_be_t_CVA6Cfg_type
	parameter [17102:0] cl_be_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// removed import std_cache_pkg::*;
	// Trace: core/cache_subsystem/miss_handler.sv:23:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/miss_handler.sv:24:15
	parameter [31:0] NR_PORTS = 4;
	// Trace: core/cache_subsystem/miss_handler.sv:25:38
	// removed localparam type axi_req_t
	// Trace: core/cache_subsystem/miss_handler.sv:26:38
	// removed localparam type axi_rsp_t
	// Trace: core/cache_subsystem/miss_handler.sv:27:38
	// removed localparam type cache_line_t
	// Trace: core/cache_subsystem/miss_handler.sv:28:38
	// removed localparam type cl_be_t
	// Trace: core/cache_subsystem/miss_handler.sv:30:5
	input wire clk_i;
	// Trace: core/cache_subsystem/miss_handler.sv:31:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/miss_handler.sv:32:5
	input wire flush_i;
	// Trace: core/cache_subsystem/miss_handler.sv:33:5
	output reg flush_ack_o;
	// Trace: core/cache_subsystem/miss_handler.sv:34:5
	output reg miss_o;
	// Trace: core/cache_subsystem/miss_handler.sv:35:5
	input wire busy_i;
	// Trace: core/cache_subsystem/miss_handler.sv:37:5
	// removed localparam type std_cache_pkg_miss_req_t
	input wire [(NR_PORTS * 141) - 1:0] miss_req_i;
	// Trace: core/cache_subsystem/miss_handler.sv:39:5
	output reg [NR_PORTS - 1:0] bypass_gnt_o;
	// Trace: core/cache_subsystem/miss_handler.sv:40:5
	output reg [NR_PORTS - 1:0] bypass_valid_o;
	// Trace: core/cache_subsystem/miss_handler.sv:41:5
	output reg [(NR_PORTS * 64) - 1:0] bypass_data_o;
	// Trace: core/cache_subsystem/miss_handler.sv:44:5
	output wire [(((((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_bypass_o;
	// Trace: core/cache_subsystem/miss_handler.sv:45:5
	input wire [(((4 + ((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_bypass_i;
	// Trace: core/cache_subsystem/miss_handler.sv:48:5
	output reg [NR_PORTS - 1:0] miss_gnt_o;
	// Trace: core/cache_subsystem/miss_handler.sv:49:5
	output reg [NR_PORTS - 1:0] active_serving_o;
	// Trace: core/cache_subsystem/miss_handler.sv:51:5
	output wire [63:0] critical_word_o;
	// Trace: core/cache_subsystem/miss_handler.sv:52:5
	output wire critical_word_valid_o;
	// Trace: core/cache_subsystem/miss_handler.sv:53:5
	output wire [(((((((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_data_o;
	// Trace: core/cache_subsystem/miss_handler.sv:54:5
	input wire [(((4 + ((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_data_i;
	// Trace: core/cache_subsystem/miss_handler.sv:56:5
	input wire [(NR_PORTS * 56) - 1:0] mshr_addr_i;
	// Trace: core/cache_subsystem/miss_handler.sv:57:5
	output reg [NR_PORTS - 1:0] mshr_addr_matches_o;
	// Trace: core/cache_subsystem/miss_handler.sv:58:5
	output reg [NR_PORTS - 1:0] mshr_index_matches_o;
	// Trace: core/cache_subsystem/miss_handler.sv:60:5
	// removed localparam type ariane_pkg_amo_t
	// removed localparam type ariane_pkg_amo_req_t
	input wire [134:0] amo_req_i;
	// Trace: core/cache_subsystem/miss_handler.sv:61:5
	// removed localparam type ariane_pkg_amo_resp_t
	output reg [64:0] amo_resp_o;
	// Trace: core/cache_subsystem/miss_handler.sv:63:5
	output reg [CVA6Cfg[1092-:32] - 1:0] req_o;
	// Trace: core/cache_subsystem/miss_handler.sv:64:5
	output reg [CVA6Cfg[1028-:32] - 1:0] addr_o;
	// Trace: core/cache_subsystem/miss_handler.sv:65:5
	output reg [(cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1:0] data_o;
	// Trace: core/cache_subsystem/miss_handler.sv:66:5
	output reg [((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) - 1:0] be_o;
	// Trace: core/cache_subsystem/miss_handler.sv:67:5
	input wire [(((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[1092-:32] * ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2)) - 1 : (CVA6Cfg[1092-:32] * (1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1))) + ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 0)):(((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1)] data_i;
	// Trace: core/cache_subsystem/miss_handler.sv:68:5
	output reg we_o;
	// Trace: core/cache_subsystem/miss_handler.sv:72:3
	parameter NR_BYPASS_PORTS = NR_PORTS + 1;
	// Trace: core/cache_subsystem/miss_handler.sv:75:3
	function automatic [CVA6Cfg[1060-:32] - 1:0] one_hot_to_bin;
		// Trace: core/cache_subsystem/miss_handler.sv:76:7
		input reg [CVA6Cfg[1092-:32] - 1:0] in;
		reg [0:1] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			// Trace: core/cache_subsystem/miss_handler.sv:77:5
			begin : sv2v_autoblock_1
				// Trace: core/cache_subsystem/miss_handler.sv:77:10
				reg [31:0] i;
				// Trace: core/cache_subsystem/miss_handler.sv:77:10
				begin : sv2v_autoblock_2
					reg [31:0] _sv2v_value_on_break;
					for (i = 0; i < CVA6Cfg[1092-:32]; i = i + 1)
						if (_sv2v_jump < 2'b10) begin
							_sv2v_jump = 2'b00;
							// Trace: core/cache_subsystem/miss_handler.sv:78:7
							if (in[i]) begin
								one_hot_to_bin = i;
								_sv2v_jump = 2'b11;
							end
							_sv2v_value_on_break = i;
						end
					if (!(_sv2v_jump < 2'b10))
						i = _sv2v_value_on_break;
					if (_sv2v_jump != 2'b11)
						_sv2v_jump = 2'b00;
				end
			end
		end
	endfunction
	// Trace: core/cache_subsystem/miss_handler.sv:82:3
	function automatic [CVA6Cfg[1092-:32] - 1:0] get_victim_cl;
		// Trace: core/cache_subsystem/miss_handler.sv:83:7
		input reg [CVA6Cfg[1092-:32] - 1:0] valid_dirty;
		// Trace: core/cache_subsystem/miss_handler.sv:85:5
		reg [CVA6Cfg[1092-:32] - 1:0] oh;
		reg [0:1] _sv2v_jump;
		begin
			oh = 1'sb0;
			_sv2v_jump = 2'b00;
			// Trace: core/cache_subsystem/miss_handler.sv:86:5
			begin : sv2v_autoblock_3
				// Trace: core/cache_subsystem/miss_handler.sv:86:10
				reg [31:0] i;
				// Trace: core/cache_subsystem/miss_handler.sv:86:10
				begin : sv2v_autoblock_4
					reg [31:0] _sv2v_value_on_break;
					for (i = 0; i < CVA6Cfg[1092-:32]; i = i + 1)
						if (_sv2v_jump < 2'b10) begin
							_sv2v_jump = 2'b00;
							// Trace: core/cache_subsystem/miss_handler.sv:87:7
							if (valid_dirty[i]) begin
								// Trace: core/cache_subsystem/miss_handler.sv:88:9
								oh[i] = 1'b1;
								// Trace: core/cache_subsystem/miss_handler.sv:89:9
								get_victim_cl = oh;
								_sv2v_jump = 2'b11;
							end
							_sv2v_value_on_break = i;
						end
					if (!(_sv2v_jump < 2'b10))
						i = _sv2v_value_on_break;
					if (_sv2v_jump != 2'b11)
						_sv2v_jump = 2'b00;
				end
			end
		end
	endfunction
	// Trace: core/cache_subsystem/miss_handler.sv:95:3
	reg [3:0] state_d;
	reg [3:0] state_q;
	// Trace: core/cache_subsystem/miss_handler.sv:114:3
	// removed localparam type std_cache_pkg_mshr_t
	reg [131:0] mshr_d;
	reg [131:0] mshr_q;
	// Trace: core/cache_subsystem/miss_handler.sv:115:3
	reg [CVA6Cfg[1028-:32] - 1:0] cnt_d;
	reg [CVA6Cfg[1028-:32] - 1:0] cnt_q;
	// Trace: core/cache_subsystem/miss_handler.sv:116:3
	reg [CVA6Cfg[1092-:32] - 1:0] evict_way_d;
	reg [CVA6Cfg[1092-:32] - 1:0] evict_way_q;
	// Trace: core/cache_subsystem/miss_handler.sv:118:3
	reg [(cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1:0] evict_cl_d;
	reg [(cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1:0] evict_cl_q;
	// Trace: core/cache_subsystem/miss_handler.sv:120:3
	reg serve_amo_d;
	reg serve_amo_q;
	// Trace: core/cache_subsystem/miss_handler.sv:122:3
	reg [NR_PORTS - 1:0] miss_req_valid;
	// Trace: core/cache_subsystem/miss_handler.sv:123:3
	reg [NR_PORTS - 1:0] miss_req_bypass;
	// Trace: core/cache_subsystem/miss_handler.sv:124:3
	reg [(NR_PORTS * 64) - 1:0] miss_req_addr;
	// Trace: core/cache_subsystem/miss_handler.sv:125:3
	reg [(NR_PORTS * 64) - 1:0] miss_req_wdata;
	// Trace: core/cache_subsystem/miss_handler.sv:126:3
	reg [NR_PORTS - 1:0] miss_req_we;
	// Trace: core/cache_subsystem/miss_handler.sv:127:3
	reg [(NR_PORTS * 8) - 1:0] miss_req_be;
	// Trace: core/cache_subsystem/miss_handler.sv:128:3
	reg [(NR_PORTS * 2) - 1:0] miss_req_size;
	// Trace: core/cache_subsystem/miss_handler.sv:131:3
	// removed localparam type ariane_pkg_ad_req_t
	// removed localparam type std_cache_pkg_bypass_req_t
	reg [148:0] amo_bypass_req;
	// Trace: core/cache_subsystem/miss_handler.sv:132:3
	// removed localparam type std_cache_pkg_bypass_rsp_t
	reg [65:0] amo_bypass_rsp;
	// Trace: core/cache_subsystem/miss_handler.sv:135:3
	reg [(NR_BYPASS_PORTS * 149) - 1:0] bypass_ports_req;
	// Trace: core/cache_subsystem/miss_handler.sv:136:3
	wire [(NR_BYPASS_PORTS * 66) - 1:0] bypass_ports_rsp;
	// Trace: core/cache_subsystem/miss_handler.sv:139:3
	wire [148:0] bypass_adapter_req;
	// Trace: core/cache_subsystem/miss_handler.sv:140:3
	wire [65:0] bypass_adapter_rsp;
	// Trace: core/cache_subsystem/miss_handler.sv:143:3
	reg req_fsm_miss_valid;
	// Trace: core/cache_subsystem/miss_handler.sv:144:3
	reg [63:0] req_fsm_miss_addr;
	// Trace: core/cache_subsystem/miss_handler.sv:145:3
	reg [CVA6Cfg[964-:32] - 1:0] req_fsm_miss_wdata;
	// Trace: core/cache_subsystem/miss_handler.sv:146:3
	reg req_fsm_miss_we;
	// Trace: core/cache_subsystem/miss_handler.sv:147:3
	reg [(CVA6Cfg[964-:32] / 8) - 1:0] req_fsm_miss_be;
	// Trace: core/cache_subsystem/miss_handler.sv:148:3
	reg req_fsm_miss_req;
	// Trace: core/cache_subsystem/miss_handler.sv:149:3
	reg [1:0] req_fsm_miss_size;
	// Trace: core/cache_subsystem/miss_handler.sv:151:3
	wire gnt_miss_fsm;
	// Trace: core/cache_subsystem/miss_handler.sv:152:3
	wire valid_miss_fsm;
	// Trace: core/cache_subsystem/miss_handler.sv:153:3
	wire [((CVA6Cfg[964-:32] / 64) * 64) - 1:0] data_miss_fsm;
	// Trace: core/cache_subsystem/miss_handler.sv:156:3
	reg lfsr_enable;
	// Trace: core/cache_subsystem/miss_handler.sv:157:3
	wire [CVA6Cfg[1092-:32] - 1:0] lfsr_oh;
	// Trace: core/cache_subsystem/miss_handler.sv:158:3
	wire [$clog2(CVA6Cfg[1092-:32] - 1) - 1:0] lfsr_bin;
	// Trace: core/cache_subsystem/miss_handler.sv:160:3
	wire [3:0] amo_op;
	// Trace: core/cache_subsystem/miss_handler.sv:161:3
	reg [63:0] amo_operand_b;
	// Trace: core/cache_subsystem/miss_handler.sv:164:3
	reg [31:0] halfword;
	// Trace: core/cache_subsystem/miss_handler.sv:165:3
	reg [$clog2(CVA6Cfg[964-:32]) - 1:0] cl_offset;
	// Trace: core/cache_subsystem/miss_handler.sv:170:3
	localparam [0:0] ariane_pkg_INVALIDATE_ON_FLUSH = 1'b1;
	function automatic [3:0] sv2v_cast_4;
		input reg [3:0] inp;
		sv2v_cast_4 = inp;
	endfunction
	always @(*) begin : sv2v_autoblock_5
		reg [0:1] _sv2v_jump;
		_sv2v_jump = 2'b00;
		begin : cache_management
			// Trace: core/cache_subsystem/miss_handler.sv:171:5
			reg [CVA6Cfg[1092-:32] - 1:0] evict_way;
			reg [CVA6Cfg[1092-:32] - 1:0] valid_way;
			if (_sv2v_0)
				;
			// Trace: core/cache_subsystem/miss_handler.sv:173:5
			begin : sv2v_autoblock_6
				// Trace: core/cache_subsystem/miss_handler.sv:173:10
				reg [31:0] i;
				// Trace: core/cache_subsystem/miss_handler.sv:173:10
				for (i = 0; i < CVA6Cfg[1092-:32]; i = i + 1)
					begin
						// Trace: core/cache_subsystem/miss_handler.sv:174:7
						evict_way[i] = data_i[(i * (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2 : 1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1))) + (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? 1 : (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 0)] & data_i[(i * (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2 : 1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1))) + (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1)];
						// Trace: core/cache_subsystem/miss_handler.sv:175:7
						valid_way[i] = data_i[(i * (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2 : 1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1))) + (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? 1 : (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 0)];
					end
			end
			// Trace: core/cache_subsystem/miss_handler.sv:181:5
			req_o = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:182:5
			addr_o = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:183:5
			data_o = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:184:5
			be_o = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:185:5
			we_o = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:187:5
			miss_gnt_o = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:188:5
			active_serving_o = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:190:5
			lfsr_enable = 1'b0;
			// Trace: core/cache_subsystem/miss_handler.sv:192:5
			req_fsm_miss_valid = 1'b0;
			// Trace: core/cache_subsystem/miss_handler.sv:193:5
			req_fsm_miss_addr = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:194:5
			req_fsm_miss_wdata = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:195:5
			req_fsm_miss_we = 1'b0;
			// Trace: core/cache_subsystem/miss_handler.sv:196:5
			req_fsm_miss_be = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:197:5
			req_fsm_miss_req = 1'd1;
			// Trace: core/cache_subsystem/miss_handler.sv:198:5
			req_fsm_miss_size = 2'b11;
			// Trace: core/cache_subsystem/miss_handler.sv:200:5
			amo_bypass_req[148] = 1'b0;
			// Trace: core/cache_subsystem/miss_handler.sv:201:5
			amo_bypass_req[147] = 1'd0;
			// Trace: core/cache_subsystem/miss_handler.sv:202:5
			amo_bypass_req[146-:4] = 4'b0000;
			// Trace: core/cache_subsystem/miss_handler.sv:203:5
			amo_bypass_req[138-:64] = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:204:5
			amo_bypass_req[10] = 1'b0;
			// Trace: core/cache_subsystem/miss_handler.sv:205:5
			amo_bypass_req[74-:64] = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:206:5
			amo_bypass_req[9-:8] = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:207:5
			amo_bypass_req[1-:2] = 2'b11;
			// Trace: core/cache_subsystem/miss_handler.sv:208:5
			amo_bypass_req[142-:4] = 4'b1000 | sv2v_cast_4(NR_PORTS);
			// Trace: core/cache_subsystem/miss_handler.sv:210:5
			flush_ack_o = 1'b0;
			// Trace: core/cache_subsystem/miss_handler.sv:211:5
			miss_o = 1'b0;
			// Trace: core/cache_subsystem/miss_handler.sv:212:5
			serve_amo_d = serve_amo_q;
			// Trace: core/cache_subsystem/miss_handler.sv:216:5
			state_d = state_q;
			// Trace: core/cache_subsystem/miss_handler.sv:217:5
			cnt_d = cnt_q;
			// Trace: core/cache_subsystem/miss_handler.sv:218:5
			evict_way_d = evict_way_q;
			// Trace: core/cache_subsystem/miss_handler.sv:219:5
			evict_cl_d = evict_cl_q;
			// Trace: core/cache_subsystem/miss_handler.sv:220:5
			mshr_d = mshr_q;
			// Trace: core/cache_subsystem/miss_handler.sv:222:5
			active_serving_o[mshr_q[131-:2]] = mshr_q[129];
			// Trace: core/cache_subsystem/miss_handler.sv:224:5
			amo_resp_o[64] = 1'b0;
			// Trace: core/cache_subsystem/miss_handler.sv:225:5
			amo_resp_o[63-:64] = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:226:5
			amo_operand_b = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:228:5
			halfword = 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:229:5
			cl_offset = 1'sb0;
			case (state_q)
				4'd0: begin
					// Trace: core/cache_subsystem/miss_handler.sv:235:9
					if (amo_req_i[134] && !busy_i) begin
						// Trace: core/cache_subsystem/miss_handler.sv:237:11
						state_d = 4'd4;
						// Trace: core/cache_subsystem/miss_handler.sv:238:11
						serve_amo_d = 1'b1;
						// Trace: core/cache_subsystem/miss_handler.sv:239:11
						cnt_d = 1'sb0;
					end
					if (flush_i && !busy_i) begin
						// Trace: core/cache_subsystem/miss_handler.sv:244:11
						state_d = 4'd4;
						// Trace: core/cache_subsystem/miss_handler.sv:245:11
						cnt_d = 1'sb0;
					end
					begin : sv2v_autoblock_7
						// Trace: core/cache_subsystem/miss_handler.sv:249:14
						reg [31:0] i;
						// Trace: core/cache_subsystem/miss_handler.sv:249:14
						begin : sv2v_autoblock_8
							reg [31:0] _sv2v_value_on_break;
							for (i = 0; i < NR_PORTS; i = i + 1)
								if (_sv2v_jump < 2'b10) begin
									_sv2v_jump = 2'b00;
									// Trace: core/cache_subsystem/miss_handler.sv:251:11
									if (miss_req_valid[i] && !miss_req_bypass[i]) begin
										// Trace: core/cache_subsystem/miss_handler.sv:252:13
										state_d = 4'd7;
										// Trace: core/cache_subsystem/miss_handler.sv:254:13
										serve_amo_d = 1'b0;
										// Trace: core/cache_subsystem/miss_handler.sv:256:13
										mshr_d[129] = 1'b1;
										// Trace: core/cache_subsystem/miss_handler.sv:257:13
										mshr_d[128] = miss_req_we[i];
										// Trace: core/cache_subsystem/miss_handler.sv:258:13
										mshr_d[131-:2] = i;
										// Trace: core/cache_subsystem/miss_handler.sv:259:13
										mshr_d[127-:56] = miss_req_addr[(i * 64) + ((CVA6Cfg[996-:32] + CVA6Cfg[1028-:32]) - 1)-:CVA6Cfg[996-:32] + CVA6Cfg[1028-:32]];
										// Trace: core/cache_subsystem/miss_handler.sv:260:13
										mshr_d[71-:64] = miss_req_wdata[i * 64+:64];
										// Trace: core/cache_subsystem/miss_handler.sv:261:13
										mshr_d[7-:8] = miss_req_be[i * 8+:8];
										// Trace: core/cache_subsystem/miss_handler.sv:262:13
										_sv2v_jump = 2'b10;
									end
									_sv2v_value_on_break = i;
								end
							if (!(_sv2v_jump < 2'b10))
								i = _sv2v_value_on_break;
							if (_sv2v_jump != 2'b11)
								_sv2v_jump = 2'b00;
						end
					end
				end
				4'd7: begin
					// Trace: core/cache_subsystem/miss_handler.sv:271:9
					req_o = 1'sb1;
					// Trace: core/cache_subsystem/miss_handler.sv:272:9
					addr_o = mshr_q[CVA6Cfg[1028-:32] + 71:72];
					// Trace: core/cache_subsystem/miss_handler.sv:273:9
					state_d = 4'd9;
					// Trace: core/cache_subsystem/miss_handler.sv:274:9
					miss_o = 1'b1;
				end
				4'd9:
					// Trace: core/cache_subsystem/miss_handler.sv:280:9
					if (&valid_way) begin
						// Trace: core/cache_subsystem/miss_handler.sv:281:11
						lfsr_enable = 1'b1;
						// Trace: core/cache_subsystem/miss_handler.sv:282:11
						evict_way_d = lfsr_oh;
						// Trace: core/cache_subsystem/miss_handler.sv:284:11
						if (data_i[(lfsr_bin * (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2 : 1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1))) + (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1)]) begin
							// Trace: core/cache_subsystem/miss_handler.sv:285:13
							state_d = 4'd5;
							// Trace: core/cache_subsystem/miss_handler.sv:286:13
							evict_cl_d[cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)-:((cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)) >= (cache_line_t_CVA6Cfg[964-:32] + 2) ? ((cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)) - (cache_line_t_CVA6Cfg[964-:32] + 2)) + 1 : ((cache_line_t_CVA6Cfg[964-:32] + 2) - (cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1))) + 1)] = data_i[(((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (lfsr_bin * (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2 : 1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1))) + (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1) : ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) - (cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1))) : (((lfsr_bin * (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2 : 1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1))) + (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1) : ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) - (cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)))) + ((cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)) >= (cache_line_t_CVA6Cfg[964-:32] + 2) ? ((cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)) - (cache_line_t_CVA6Cfg[964-:32] + 2)) + 1 : ((cache_line_t_CVA6Cfg[964-:32] + 2) - (cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1))) + 1)) - 1)-:((cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)) >= (cache_line_t_CVA6Cfg[964-:32] + 2) ? ((cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)) - (cache_line_t_CVA6Cfg[964-:32] + 2)) + 1 : ((cache_line_t_CVA6Cfg[964-:32] + 2) - (cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1))) + 1)];
							// Trace: core/cache_subsystem/miss_handler.sv:287:13
							evict_cl_d[cache_line_t_CVA6Cfg[964-:32] + 1-:((cache_line_t_CVA6Cfg[964-:32] + 1) >= 2 ? cache_line_t_CVA6Cfg[964-:32] + 0 : 3 - (cache_line_t_CVA6Cfg[964-:32] + 1))] = data_i[(((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (lfsr_bin * (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2 : 1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1))) + (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? cache_line_t_CVA6Cfg[964-:32] + 1 : ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) - (cache_line_t_CVA6Cfg[964-:32] + 1)) : (((lfsr_bin * (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2 : 1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1))) + (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? cache_line_t_CVA6Cfg[964-:32] + 1 : ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) - (cache_line_t_CVA6Cfg[964-:32] + 1))) + ((cache_line_t_CVA6Cfg[964-:32] + 1) >= 2 ? cache_line_t_CVA6Cfg[964-:32] + 0 : 3 - (cache_line_t_CVA6Cfg[964-:32] + 1))) - 1)-:((cache_line_t_CVA6Cfg[964-:32] + 1) >= 2 ? cache_line_t_CVA6Cfg[964-:32] + 0 : 3 - (cache_line_t_CVA6Cfg[964-:32] + 1))];
							// Trace: core/cache_subsystem/miss_handler.sv:288:13
							cnt_d = mshr_q[CVA6Cfg[1028-:32] + 71:72];
						end
						else
							// Trace: core/cache_subsystem/miss_handler.sv:290:20
							state_d = 4'd8;
					end
					else begin
						// Trace: core/cache_subsystem/miss_handler.sv:294:11
						evict_way_d = get_victim_cl(~valid_way);
						// Trace: core/cache_subsystem/miss_handler.sv:295:11
						state_d = 4'd8;
					end
				4'd8: begin
					// Trace: core/cache_subsystem/miss_handler.sv:301:9
					req_fsm_miss_valid = 1'b1;
					// Trace: core/cache_subsystem/miss_handler.sv:302:9
					req_fsm_miss_addr = mshr_q[127-:56];
					// Trace: core/cache_subsystem/miss_handler.sv:304:9
					if (gnt_miss_fsm) begin
						// Trace: core/cache_subsystem/miss_handler.sv:305:11
						state_d = 4'd10;
						// Trace: core/cache_subsystem/miss_handler.sv:306:11
						miss_gnt_o[mshr_q[131-:2]] = 1'b1;
					end
				end
				4'd10: begin
					// Trace: core/cache_subsystem/miss_handler.sv:313:9
					cl_offset = mshr_q[CVA6Cfg[868-:32] + 71:75] << 6;
					// Trace: core/cache_subsystem/miss_handler.sv:315:9
					if (valid_miss_fsm) begin
						// Trace: core/cache_subsystem/miss_handler.sv:317:11
						addr_o = mshr_q[CVA6Cfg[1028-:32] + 71:72];
						// Trace: core/cache_subsystem/miss_handler.sv:318:11
						req_o = evict_way_q;
						// Trace: core/cache_subsystem/miss_handler.sv:319:11
						we_o = 1'b1;
						// Trace: core/cache_subsystem/miss_handler.sv:320:11
						be_o = 1'sb1;
						// Trace: core/cache_subsystem/miss_handler.sv:321:11
						be_o[cl_be_t_CVA6Cfg[1092-:32] - 1-:cl_be_t_CVA6Cfg[1092-:32]] = evict_way_q;
						// Trace: core/cache_subsystem/miss_handler.sv:322:11
						data_o[cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)-:((cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)) >= (cache_line_t_CVA6Cfg[964-:32] + 2) ? ((cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)) - (cache_line_t_CVA6Cfg[964-:32] + 2)) + 1 : ((cache_line_t_CVA6Cfg[964-:32] + 2) - (cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1))) + 1)] = mshr_q[(CVA6Cfg[996-:32] + CVA6Cfg[1028-:32]) + 71:72 + CVA6Cfg[1028-:32]];
						// Trace: core/cache_subsystem/miss_handler.sv:323:11
						data_o[cache_line_t_CVA6Cfg[964-:32] + 1-:((cache_line_t_CVA6Cfg[964-:32] + 1) >= 2 ? cache_line_t_CVA6Cfg[964-:32] + 0 : 3 - (cache_line_t_CVA6Cfg[964-:32] + 1))] = data_miss_fsm;
						// Trace: core/cache_subsystem/miss_handler.sv:324:11
						data_o[1] = 1'b1;
						// Trace: core/cache_subsystem/miss_handler.sv:325:11
						data_o[0] = 1'b0;
						// Trace: core/cache_subsystem/miss_handler.sv:328:11
						if (mshr_q[128]) begin
							// Trace: core/cache_subsystem/miss_handler.sv:330:13
							begin : sv2v_autoblock_9
								// Trace: core/cache_subsystem/miss_handler.sv:330:18
								reg signed [31:0] i;
								// Trace: core/cache_subsystem/miss_handler.sv:330:18
								for (i = 0; i < 8; i = i + 1)
									begin
										// Trace: core/cache_subsystem/miss_handler.sv:332:15
										if (mshr_q[0 + i])
											// Trace: core/cache_subsystem/miss_handler.sv:332:33
											data_o[(cache_line_t_CVA6Cfg[964-:32] + 1) - ((cache_line_t_CVA6Cfg[964-:32] - 1) - (cl_offset + (i * 8)))+:8] = mshr_q[8 + (i * 8)+:8];
									end
							end
							// Trace: core/cache_subsystem/miss_handler.sv:335:13
							data_o[0] = 1'b1;
						end
						// Trace: core/cache_subsystem/miss_handler.sv:338:11
						mshr_d[129] = 1'b0;
						// Trace: core/cache_subsystem/miss_handler.sv:340:11
						state_d = 4'd0;
					end
				end
				4'd3, 4'd5: begin
					// Trace: core/cache_subsystem/miss_handler.sv:350:9
					req_fsm_miss_valid = 1'b1;
					// Trace: core/cache_subsystem/miss_handler.sv:351:9
					req_fsm_miss_addr = {evict_cl_q[cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)-:((cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)) >= (cache_line_t_CVA6Cfg[964-:32] + 2) ? ((cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1)) - (cache_line_t_CVA6Cfg[964-:32] + 2)) + 1 : ((cache_line_t_CVA6Cfg[964-:32] + 2) - (cache_line_t_CVA6Cfg[996-:32] + (cache_line_t_CVA6Cfg[964-:32] + 1))) + 1)], cnt_q[CVA6Cfg[1028-:32] - 1:CVA6Cfg[868-:32]], {{CVA6Cfg[868-:32]} {1'b0}}};
					// Trace: core/cache_subsystem/miss_handler.sv:356:9
					req_fsm_miss_be = 1'sb1;
					// Trace: core/cache_subsystem/miss_handler.sv:357:9
					req_fsm_miss_we = 1'b1;
					// Trace: core/cache_subsystem/miss_handler.sv:358:9
					req_fsm_miss_wdata = evict_cl_q[cache_line_t_CVA6Cfg[964-:32] + 1-:((cache_line_t_CVA6Cfg[964-:32] + 1) >= 2 ? cache_line_t_CVA6Cfg[964-:32] + 0 : 3 - (cache_line_t_CVA6Cfg[964-:32] + 1))];
					// Trace: core/cache_subsystem/miss_handler.sv:361:9
					if (gnt_miss_fsm) begin
						// Trace: core/cache_subsystem/miss_handler.sv:363:11
						addr_o = cnt_q;
						// Trace: core/cache_subsystem/miss_handler.sv:364:11
						req_o = 1'b1;
						// Trace: core/cache_subsystem/miss_handler.sv:365:11
						we_o = 1'b1;
						// Trace: core/cache_subsystem/miss_handler.sv:366:11
						data_o[1] = (ariane_pkg_INVALIDATE_ON_FLUSH ? 1'b0 : 1'b1);
						// Trace: core/cache_subsystem/miss_handler.sv:368:11
						be_o[cl_be_t_CVA6Cfg[1092-:32] - 1-:cl_be_t_CVA6Cfg[1092-:32]] = evict_way_q;
						// Trace: core/cache_subsystem/miss_handler.sv:370:11
						state_d = (state_q == 4'd5 ? 4'd7 : 4'd4);
					end
				end
				4'd4: begin
					// Trace: core/cache_subsystem/miss_handler.sv:379:9
					req_o = 1'sb1;
					// Trace: core/cache_subsystem/miss_handler.sv:380:9
					addr_o = cnt_q;
					// Trace: core/cache_subsystem/miss_handler.sv:381:9
					state_d = 4'd1;
				end
				4'd1:
					// Trace: core/cache_subsystem/miss_handler.sv:387:9
					if (|evict_way) begin
						// Trace: core/cache_subsystem/miss_handler.sv:389:11
						evict_way_d = get_victim_cl(evict_way);
						// Trace: core/cache_subsystem/miss_handler.sv:390:11
						evict_cl_d = data_i[(((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) + (one_hot_to_bin(evict_way) * (((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2 : 1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1)))+:(((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 2 : 1 - ((cache_line_t_CVA6Cfg[996-:32] + cache_line_t_CVA6Cfg[964-:32]) + 1))];
						// Trace: core/cache_subsystem/miss_handler.sv:391:11
						state_d = 4'd3;
					end
					else begin
						// Trace: core/cache_subsystem/miss_handler.sv:395:11
						cnt_d = cnt_q + (1'b1 << CVA6Cfg[868-:32]);
						// Trace: core/cache_subsystem/miss_handler.sv:396:11
						state_d = 4'd4;
						// Trace: core/cache_subsystem/miss_handler.sv:397:11
						addr_o = cnt_q;
						// Trace: core/cache_subsystem/miss_handler.sv:398:11
						req_o = 1'b1;
						// Trace: core/cache_subsystem/miss_handler.sv:399:11
						be_o[cl_be_t_CVA6Cfg[1092-:32] - 1-:cl_be_t_CVA6Cfg[1092-:32]] = (ariane_pkg_INVALIDATE_ON_FLUSH ? {((((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) >= 1 ? cl_be_t_CVA6Cfg[1092-:32] - 1 : ((cl_be_t_CVA6Cfg[1092-:32] - 1) - cl_be_t_CVA6Cfg[1092-:32]) + 1) >= (((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) >= 1 ? ((cl_be_t_CVA6Cfg[1092-:32] - 1) - cl_be_t_CVA6Cfg[1092-:32]) + 1 : cl_be_t_CVA6Cfg[1092-:32] - 1) ? ((((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) >= 1 ? cl_be_t_CVA6Cfg[1092-:32] - 1 : ((cl_be_t_CVA6Cfg[1092-:32] - 1) - cl_be_t_CVA6Cfg[1092-:32]) + 1) - (((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) >= 1 ? ((cl_be_t_CVA6Cfg[1092-:32] - 1) - cl_be_t_CVA6Cfg[1092-:32]) + 1 : cl_be_t_CVA6Cfg[1092-:32] - 1)) + 1 : ((((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) >= 1 ? ((cl_be_t_CVA6Cfg[1092-:32] - 1) - cl_be_t_CVA6Cfg[1092-:32]) + 1 : cl_be_t_CVA6Cfg[1092-:32] - 1) - (((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) >= 1 ? cl_be_t_CVA6Cfg[1092-:32] - 1 : ((cl_be_t_CVA6Cfg[1092-:32] - 1) - cl_be_t_CVA6Cfg[1092-:32]) + 1)) + 1) {1'sb1}} : {((((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) >= 1 ? cl_be_t_CVA6Cfg[1092-:32] - 1 : ((cl_be_t_CVA6Cfg[1092-:32] - 1) - cl_be_t_CVA6Cfg[1092-:32]) + 1) >= (((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) >= 1 ? ((cl_be_t_CVA6Cfg[1092-:32] - 1) - cl_be_t_CVA6Cfg[1092-:32]) + 1 : cl_be_t_CVA6Cfg[1092-:32] - 1) ? ((((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) >= 1 ? cl_be_t_CVA6Cfg[1092-:32] - 1 : ((cl_be_t_CVA6Cfg[1092-:32] - 1) - cl_be_t_CVA6Cfg[1092-:32]) + 1) - (((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) >= 1 ? ((cl_be_t_CVA6Cfg[1092-:32] - 1) - cl_be_t_CVA6Cfg[1092-:32]) + 1 : cl_be_t_CVA6Cfg[1092-:32] - 1)) + 1 : ((((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) >= 1 ? ((cl_be_t_CVA6Cfg[1092-:32] - 1) - cl_be_t_CVA6Cfg[1092-:32]) + 1 : cl_be_t_CVA6Cfg[1092-:32] - 1) - (((((cl_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((cl_be_t_CVA6Cfg[964-:32] + 7) / 8)) + cl_be_t_CVA6Cfg[1092-:32]) >= 1 ? cl_be_t_CVA6Cfg[1092-:32] - 1 : ((cl_be_t_CVA6Cfg[1092-:32] - 1) - cl_be_t_CVA6Cfg[1092-:32]) + 1)) + 1) {1'sb0}});
						// Trace: core/cache_subsystem/miss_handler.sv:400:11
						we_o = 1'b1;
						// Trace: core/cache_subsystem/miss_handler.sv:402:11
						if (cnt_q[CVA6Cfg[1028-:32] - 1:CVA6Cfg[868-:32]] == (CVA6Cfg[836-:32] - 1)) begin
							// Trace: core/cache_subsystem/miss_handler.sv:404:13
							flush_ack_o = ~serve_amo_q;
							// Trace: core/cache_subsystem/miss_handler.sv:406:13
							if (serve_amo_q) begin
								// Trace: core/cache_subsystem/miss_handler.sv:407:15
								state_d = 4'd12;
								// Trace: core/cache_subsystem/miss_handler.sv:408:15
								serve_amo_d = 1'b0;
							end
							else
								// Trace: core/cache_subsystem/miss_handler.sv:410:15
								state_d = 4'd0;
						end
					end
				4'd11: begin
					// Trace: core/cache_subsystem/miss_handler.sv:419:9
					addr_o = cnt_q;
					// Trace: core/cache_subsystem/miss_handler.sv:420:9
					req_o = 1'b1;
					// Trace: core/cache_subsystem/miss_handler.sv:421:9
					we_o = 1'b1;
					// Trace: core/cache_subsystem/miss_handler.sv:423:9
					be_o[cl_be_t_CVA6Cfg[1092-:32] - 1-:cl_be_t_CVA6Cfg[1092-:32]] = 1'sb1;
					// Trace: core/cache_subsystem/miss_handler.sv:424:9
					cnt_d = cnt_q + (1'b1 << CVA6Cfg[868-:32]);
					// Trace: core/cache_subsystem/miss_handler.sv:426:9
					if (cnt_q[CVA6Cfg[1028-:32] - 1:CVA6Cfg[868-:32]] == (CVA6Cfg[836-:32] - 1))
						// Trace: core/cache_subsystem/miss_handler.sv:427:11
						state_d = 4'd0;
				end
				4'd12: begin
					// Trace: core/cache_subsystem/miss_handler.sv:434:9
					amo_bypass_req[148] = 1'b1;
					// Trace: core/cache_subsystem/miss_handler.sv:435:9
					amo_bypass_req[147] = 1'd0;
					// Trace: core/cache_subsystem/miss_handler.sv:436:9
					amo_bypass_req[146-:4] = amo_req_i[133-:4];
					// Trace: core/cache_subsystem/miss_handler.sv:438:9
					amo_bypass_req[138-:64] = amo_req_i[127-:64];
					// Trace: core/cache_subsystem/miss_handler.sv:439:9
					if (amo_req_i[133-:4] != 4'b0001)
						// Trace: core/cache_subsystem/miss_handler.sv:440:11
						amo_bypass_req[10] = 1'b1;
					// Trace: core/cache_subsystem/miss_handler.sv:442:9
					amo_bypass_req[1-:2] = amo_req_i[129-:2];
					if (amo_req_i[133-:4] == 4'b0101)
						// Trace: core/cache_subsystem/miss_handler.sv:445:11
						amo_operand_b = ~amo_req_i[63-:64];
					else
						// Trace: core/cache_subsystem/miss_handler.sv:447:11
						amo_operand_b = amo_req_i[63-:64];
					// Trace: core/cache_subsystem/miss_handler.sv:450:9
					amo_bypass_req[74-:64] = amo_operand_b;
					if (amo_req_i[129-:2] == 2'b11)
						// Trace: core/cache_subsystem/miss_handler.sv:453:11
						amo_bypass_req[9-:8] = 8'b11111111;
					else
						// Trace: core/cache_subsystem/miss_handler.sv:456:11
						if (amo_req_i[66:64] == {3 {1'sb0}})
							// Trace: core/cache_subsystem/miss_handler.sv:458:13
							amo_bypass_req[9-:8] = 8'b00001111;
						else begin
							// Trace: core/cache_subsystem/miss_handler.sv:461:13
							amo_bypass_req[9-:8] = 8'b11110000;
							// Trace: core/cache_subsystem/miss_handler.sv:462:13
							amo_bypass_req[74-:64] = amo_operand_b[31:0] << 32;
						end
					if (amo_bypass_rsp[65]) begin
						begin
							// Trace: core/cache_subsystem/miss_handler.sv:468:11
							if (amo_bypass_rsp[64]) begin
								// Trace: core/cache_subsystem/miss_handler.sv:469:13
								state_d = 4'd0;
								// Trace: core/cache_subsystem/miss_handler.sv:470:13
								amo_resp_o[64] = 1'b1;
								// Trace: core/cache_subsystem/miss_handler.sv:471:13
								amo_resp_o[63-:64] = amo_bypass_rsp[63-:64];
							end
							else
								// Trace: core/cache_subsystem/miss_handler.sv:473:13
								state_d = 4'd13;
						end
					end
				end
				4'd13:
					// Trace: core/cache_subsystem/miss_handler.sv:478:9
					if (amo_bypass_rsp[64]) begin
						// Trace: core/cache_subsystem/miss_handler.sv:479:11
						state_d = 4'd0;
						// Trace: core/cache_subsystem/miss_handler.sv:480:11
						amo_resp_o[64] = 1'b1;
						// Trace: core/cache_subsystem/miss_handler.sv:482:11
						if (amo_req_i[129-:2] == 2'b10) begin
							// Trace: core/cache_subsystem/miss_handler.sv:483:13
							if (amo_req_i[66:64] == {3 {1'sb0}})
								// Trace: core/cache_subsystem/miss_handler.sv:485:15
								halfword = amo_bypass_rsp[31:0];
							else
								// Trace: core/cache_subsystem/miss_handler.sv:488:15
								halfword = amo_bypass_rsp[63:32];
							// Trace: core/cache_subsystem/miss_handler.sv:491:13
							amo_resp_o[63-:64] = {{32 {halfword[31]}}, halfword};
						end
						else
							// Trace: core/cache_subsystem/miss_handler.sv:494:13
							amo_resp_o[63-:64] = amo_bypass_rsp[63-:64];
					end
				default:
					;
			endcase
		end
	end
	// Trace: core/cache_subsystem/miss_handler.sv:504:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/miss_handler.sv:506:5
		mshr_addr_matches_o = 'b0;
		// Trace: core/cache_subsystem/miss_handler.sv:507:5
		mshr_index_matches_o = 'b0;
		// Trace: core/cache_subsystem/miss_handler.sv:509:5
		begin : sv2v_autoblock_10
			// Trace: core/cache_subsystem/miss_handler.sv:509:10
			reg signed [31:0] i;
			// Trace: core/cache_subsystem/miss_handler.sv:509:10
			for (i = 0; i < NR_PORTS; i = i + 1)
				begin
					// Trace: core/cache_subsystem/miss_handler.sv:511:7
					if (mshr_q[129] && (mshr_addr_i[(i * 56) + (55 >= CVA6Cfg[868-:32] ? 55 : (55 + (55 >= CVA6Cfg[868-:32] ? 56 - CVA6Cfg[868-:32] : CVA6Cfg[868-:32] - 54)) - 1)-:(55 >= CVA6Cfg[868-:32] ? 56 - CVA6Cfg[868-:32] : CVA6Cfg[868-:32] - 54)] == mshr_q[127:72 + CVA6Cfg[868-:32]]))
						// Trace: core/cache_subsystem/miss_handler.sv:512:9
						mshr_addr_matches_o[i] = 1'b1;
					if (mshr_q[129] && (mshr_addr_i[(i * 56) + ((CVA6Cfg[1028-:32] - 1) >= CVA6Cfg[868-:32] ? CVA6Cfg[1028-:32] - 1 : ((CVA6Cfg[1028-:32] - 1) + ((CVA6Cfg[1028-:32] - 1) >= CVA6Cfg[868-:32] ? ((CVA6Cfg[1028-:32] - 1) - CVA6Cfg[868-:32]) + 1 : (CVA6Cfg[868-:32] - (CVA6Cfg[1028-:32] - 1)) + 1)) - 1)-:((CVA6Cfg[1028-:32] - 1) >= CVA6Cfg[868-:32] ? ((CVA6Cfg[1028-:32] - 1) - CVA6Cfg[868-:32]) + 1 : (CVA6Cfg[868-:32] - (CVA6Cfg[1028-:32] - 1)) + 1)] == mshr_q[CVA6Cfg[1028-:32] + 71:72 + CVA6Cfg[868-:32]]))
						// Trace: core/cache_subsystem/miss_handler.sv:517:9
						mshr_index_matches_o[i] = 1'b1;
				end
		end
	end
	// Trace: core/cache_subsystem/miss_handler.sv:524:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/miss_handler.sv:525:5
		if (~rst_ni) begin
			// Trace: core/cache_subsystem/miss_handler.sv:526:7
			mshr_q <= 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:527:7
			state_q <= 4'd11;
			// Trace: core/cache_subsystem/miss_handler.sv:528:7
			cnt_q <= 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:529:7
			evict_way_q <= 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:530:7
			evict_cl_q <= 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:531:7
			serve_amo_q <= 1'b0;
		end
		else begin
			// Trace: core/cache_subsystem/miss_handler.sv:533:7
			mshr_q <= mshr_d;
			// Trace: core/cache_subsystem/miss_handler.sv:534:7
			state_q <= state_d;
			// Trace: core/cache_subsystem/miss_handler.sv:535:7
			cnt_q <= cnt_d;
			// Trace: core/cache_subsystem/miss_handler.sv:536:7
			evict_way_q <= evict_way_d;
			// Trace: core/cache_subsystem/miss_handler.sv:537:7
			evict_cl_q <= evict_cl_d;
			// Trace: core/cache_subsystem/miss_handler.sv:538:7
			serve_amo_q <= serve_amo_d;
		end
	// Trace: core/cache_subsystem/miss_handler.sv:545:3
	// removed an assertion item
	// assert property (@(posedge clk_i) 
	// 	$onehot0(evict_way_q)
	// ) else begin
	// 	// Trace: core/cache_subsystem/miss_handler.sv:546:8
	// 	$warning("Evict-way should be one-hot encoded");
	// end
	// Trace: core/cache_subsystem/miss_handler.sv:553:3
	always @(*) begin : sv2v_autoblock_11
		// Trace: core/cache_subsystem/miss_handler.sv:554:5
		reg [$clog2(NR_BYPASS_PORTS) - 1:0] id;
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/miss_handler.sv:557:5
		for (id = 0; id < NR_PORTS; id = id + 1)
			begin
				// Trace: core/cache_subsystem/miss_handler.sv:558:7
				bypass_ports_req[(id * 149) + 148] = miss_req_valid[id] & miss_req_bypass[id];
				// Trace: core/cache_subsystem/miss_handler.sv:559:7
				bypass_ports_req[(id * 149) + 147] = 1'd0;
				// Trace: core/cache_subsystem/miss_handler.sv:560:7
				bypass_ports_req[(id * 149) + 146-:4] = 4'b0000;
				// Trace: core/cache_subsystem/miss_handler.sv:561:7
				bypass_ports_req[(id * 149) + 142-:4] = 4'b1000 | sv2v_cast_4(id);
				// Trace: core/cache_subsystem/miss_handler.sv:562:7
				bypass_ports_req[(id * 149) + 138-:64] = miss_req_addr[id * 64+:64];
				// Trace: core/cache_subsystem/miss_handler.sv:563:7
				bypass_ports_req[(id * 149) + 74-:64] = miss_req_wdata[id * 64+:64];
				// Trace: core/cache_subsystem/miss_handler.sv:564:7
				bypass_ports_req[(id * 149) + 10] = miss_req_we[id];
				// Trace: core/cache_subsystem/miss_handler.sv:565:7
				bypass_ports_req[(id * 149) + 9-:8] = miss_req_be[id * 8+:8];
				// Trace: core/cache_subsystem/miss_handler.sv:566:7
				bypass_ports_req[(id * 149) + 1-:2] = miss_req_size[id * 2+:2];
				// Trace: core/cache_subsystem/miss_handler.sv:568:7
				bypass_gnt_o[id] = bypass_ports_rsp[(id * 66) + 65];
				// Trace: core/cache_subsystem/miss_handler.sv:569:7
				bypass_valid_o[id] = bypass_ports_rsp[(id * 66) + 64];
				// Trace: core/cache_subsystem/miss_handler.sv:570:7
				bypass_data_o[id * 64+:64] = bypass_ports_rsp[(id * 66) + 63-:64];
			end
		// Trace: core/cache_subsystem/miss_handler.sv:574:5
		bypass_ports_req[id * 149+:149] = amo_bypass_req;
		// Trace: core/cache_subsystem/miss_handler.sv:575:5
		amo_bypass_rsp = bypass_ports_rsp[id * 66+:66];
	end
	// Trace: core/cache_subsystem/miss_handler.sv:581:3
	axi_adapter_arbiter_AB705 #(
		.NR_PORTS(NR_BYPASS_PORTS),
		.MAX_OUTSTANDING_REQ(CVA6Cfg[1353-:32])
	) i_bypass_arbiter(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(bypass_ports_req),
		.rsp_o(bypass_ports_rsp),
		.req_o(bypass_adapter_req),
		.rsp_i(bypass_adapter_rsp)
	);
	// Trace: core/cache_subsystem/miss_handler.sv:601:3
	wire [CVA6Cfg[17102-:32] - 1:0] bypass_addr;
	// Trace: core/cache_subsystem/miss_handler.sv:602:3
	assign bypass_addr = bypass_adapter_req[138-:64];
	// Trace: core/cache_subsystem/miss_handler.sv:604:3
	axi_adapter_98594_FF811 #(
		.axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth(axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth),
		.axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth(axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth),
		.axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth(axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth),
		.axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth(axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth),
		.axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth(axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth),
		.axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth(axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth),
		.axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth(axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth),
		.axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth(axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth),
		.CVA6Cfg(CVA6Cfg),
		.DATA_WIDTH(64),
		.CACHELINE_BYTE_OFFSET(CVA6Cfg[868-:32])
	) i_bypass_axi_adapter(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(bypass_adapter_req[148]),
		.type_i(bypass_adapter_req[147]),
		.amo_i(bypass_adapter_req[146-:4]),
		.id_i({{CVA6Cfg[16680-:32] - 4 {1'b0}}, bypass_adapter_req[142-:4]}),
		.addr_i(bypass_addr),
		.wdata_i(bypass_adapter_req[74-:64]),
		.we_i(bypass_adapter_req[10]),
		.be_i(bypass_adapter_req[9-:8]),
		.size_i(bypass_adapter_req[1-:2]),
		.gnt_o(bypass_adapter_rsp[65]),
		.valid_o(bypass_adapter_rsp[64]),
		.rdata_o(bypass_adapter_rsp[63-:64]),
		.id_o(),
		.critical_word_o(),
		.critical_word_valid_o(),
		.axi_req_o(axi_bypass_o),
		.axi_resp_i(axi_bypass_i)
	);
	// Trace: core/cache_subsystem/miss_handler.sv:636:3
	wire [CVA6Cfg[17102-:32] - 1:0] miss_addr;
	// Trace: core/cache_subsystem/miss_handler.sv:637:3
	assign miss_addr = req_fsm_miss_addr;
	// Trace: core/cache_subsystem/miss_handler.sv:639:3
	axi_adapter_98594_FF811 #(
		.axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth(axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth),
		.axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth(axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth),
		.axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth(axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth),
		.axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth(axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth),
		.axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth(axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth),
		.axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth(axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth),
		.axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth(axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth),
		.axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth(axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth),
		.CVA6Cfg(CVA6Cfg),
		.DATA_WIDTH(CVA6Cfg[964-:32]),
		.CACHELINE_BYTE_OFFSET(CVA6Cfg[868-:32])
	) i_miss_axi_adapter(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(req_fsm_miss_valid),
		.type_i(req_fsm_miss_req),
		.amo_i(4'b0000),
		.gnt_o(gnt_miss_fsm),
		.addr_i(miss_addr),
		.we_i(req_fsm_miss_we),
		.wdata_i(req_fsm_miss_wdata),
		.be_i(req_fsm_miss_be),
		.size_i(req_fsm_miss_size),
		.id_i({{CVA6Cfg[16680-:32] - 4 {1'b0}}, 4'b0111}),
		.valid_o(valid_miss_fsm),
		.rdata_o(data_miss_fsm),
		.id_o(),
		.critical_word_o(critical_word_o),
		.critical_word_valid_o(critical_word_valid_o),
		.axi_req_o(axi_data_o),
		.axi_resp_i(axi_data_i)
	);
	// Trace: core/cache_subsystem/miss_handler.sv:670:3
	lfsr_8bit #(.WIDTH(CVA6Cfg[1092-:32])) i_lfsr(
		.en_i(lfsr_enable),
		.refill_way_oh(lfsr_oh),
		.refill_way_bin(lfsr_bin),
		.clk_i(clk_i),
		.rst_ni(rst_ni)
	);
	// Trace: core/cache_subsystem/miss_handler.sv:683:3
	always @(*) begin : sv2v_autoblock_12
		// Trace: core/cache_subsystem/miss_handler.sv:684:5
		reg [140:0] miss_req;
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/miss_handler.sv:686:5
		begin : sv2v_autoblock_13
			// Trace: core/cache_subsystem/miss_handler.sv:686:10
			reg [31:0] i;
			// Trace: core/cache_subsystem/miss_handler.sv:686:10
			for (i = 0; i < NR_PORTS; i = i + 1)
				begin
					// Trace: core/cache_subsystem/miss_handler.sv:687:7
					miss_req = miss_req_i[i * 141+:141];
					// Trace: core/cache_subsystem/miss_handler.sv:688:7
					miss_req_valid[i] = miss_req[140];
					// Trace: core/cache_subsystem/miss_handler.sv:689:7
					miss_req_bypass[i] = miss_req[0];
					// Trace: core/cache_subsystem/miss_handler.sv:690:7
					miss_req_addr[i * 64+:64] = miss_req[139-:64];
					// Trace: core/cache_subsystem/miss_handler.sv:691:7
					miss_req_wdata[i * 64+:64] = miss_req[64-:64];
					// Trace: core/cache_subsystem/miss_handler.sv:692:7
					miss_req_we[i] = miss_req[65];
					// Trace: core/cache_subsystem/miss_handler.sv:693:7
					miss_req_be[i * 8+:8] = miss_req[75-:8];
					// Trace: core/cache_subsystem/miss_handler.sv:694:7
					miss_req_size[i * 2+:2] = miss_req[67-:2];
				end
		end
	end
	initial _sv2v_0 = 0;
endmodule
module axi_adapter_arbiter_AB705 (
	clk_i,
	rst_ni,
	req_i,
	rsp_o,
	req_o,
	rsp_i
);
	reg _sv2v_0;
	// Trace: core/cache_subsystem/miss_handler.sv:706:15
	parameter NR_PORTS = 4;
	// Trace: core/cache_subsystem/miss_handler.sv:707:15
	parameter MAX_OUTSTANDING_REQ = 0;
	// Trace: core/cache_subsystem/miss_handler.sv:708:20
	// removed localparam type ariane_pkg_ad_req_t
	// removed localparam type ariane_pkg_amo_t
	// removed localparam type std_cache_pkg_bypass_req_t
	// removed localparam type req_t
	// Trace: core/cache_subsystem/miss_handler.sv:709:20
	// removed localparam type std_cache_pkg_bypass_rsp_t
	// removed localparam type rsp_t
	// Trace: core/cache_subsystem/miss_handler.sv:711:5
	input wire clk_i;
	// Trace: core/cache_subsystem/miss_handler.sv:712:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/miss_handler.sv:714:5
	input wire [(NR_PORTS * 149) - 1:0] req_i;
	// Trace: core/cache_subsystem/miss_handler.sv:715:5
	output reg [(NR_PORTS * 66) - 1:0] rsp_o;
	// Trace: core/cache_subsystem/miss_handler.sv:717:5
	output reg [148:0] req_o;
	// Trace: core/cache_subsystem/miss_handler.sv:718:5
	input wire [65:0] rsp_i;
	// Trace: core/cache_subsystem/miss_handler.sv:721:3
	localparam MAX_OUTSTANDING_CNT_WIDTH = ($clog2(MAX_OUTSTANDING_REQ + 1) > 0 ? $clog2(MAX_OUTSTANDING_REQ + 1) : 1);
	// Trace: core/cache_subsystem/miss_handler.sv:727:3
	// removed localparam type outstanding_cnt_t
	// Trace: core/cache_subsystem/miss_handler.sv:729:3
	reg state_d;
	reg state_q;
	// Trace: core/cache_subsystem/miss_handler.sv:735:3
	reg [148:0] req_d;
	reg [148:0] req_q;
	// Trace: core/cache_subsystem/miss_handler.sv:736:3
	reg [NR_PORTS - 1:0] sel_d;
	reg [NR_PORTS - 1:0] sel_q;
	// Trace: core/cache_subsystem/miss_handler.sv:737:3
	reg [MAX_OUTSTANDING_CNT_WIDTH - 1:0] outstanding_cnt_d;
	reg [MAX_OUTSTANDING_CNT_WIDTH - 1:0] outstanding_cnt_q;
	// Trace: core/cache_subsystem/miss_handler.sv:739:3
	wire [NR_PORTS - 1:0] req_flat;
	// Trace: core/cache_subsystem/miss_handler.sv:740:3
	wire any_unselected_port_valid;
	// Trace: core/cache_subsystem/miss_handler.sv:742:3
	genvar _gv_i_75;
	generate
		for (_gv_i_75 = 0; _gv_i_75 < NR_PORTS; _gv_i_75 = _gv_i_75 + 1) begin : gen_req_flat
			localparam i = _gv_i_75;
			// Trace: core/cache_subsystem/miss_handler.sv:743:5
			assign req_flat[i] = req_i[(i * 149) + 148];
		end
	endgenerate
	// Trace: core/cache_subsystem/miss_handler.sv:745:3
	assign any_unselected_port_valid = |(req_flat & ~(1 << sel_q));
	// Trace: core/cache_subsystem/miss_handler.sv:748:3
	always @(*) begin : sv2v_autoblock_1
		reg [0:1] _sv2v_jump;
		_sv2v_jump = 2'b00;
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/miss_handler.sv:749:5
		sel_d = sel_q;
		// Trace: core/cache_subsystem/miss_handler.sv:750:5
		outstanding_cnt_d = outstanding_cnt_q;
		// Trace: core/cache_subsystem/miss_handler.sv:752:5
		state_d = state_q;
		// Trace: core/cache_subsystem/miss_handler.sv:753:5
		req_d = req_q;
		// Trace: core/cache_subsystem/miss_handler.sv:755:5
		req_o = req_q;
		// Trace: core/cache_subsystem/miss_handler.sv:757:5
		rsp_o = 1'sb0;
		// Trace: core/cache_subsystem/miss_handler.sv:758:5
		rsp_o[(sel_q * 66) + 63-:64] = rsp_i[63-:64];
		// Trace: core/cache_subsystem/miss_handler.sv:760:5
		case (state_q)
			1'd0: begin
				// Trace: core/cache_subsystem/miss_handler.sv:764:9
				begin : sv2v_autoblock_2
					// Trace: core/cache_subsystem/miss_handler.sv:764:14
					reg [31:0] i;
					// Trace: core/cache_subsystem/miss_handler.sv:764:14
					begin : sv2v_autoblock_3
						reg [31:0] _sv2v_value_on_break;
						for (i = 0; i < NR_PORTS; i = i + 1)
							if (_sv2v_jump < 2'b10) begin
								_sv2v_jump = 2'b00;
								// Trace: core/cache_subsystem/miss_handler.sv:765:11
								if (req_i[(i * 149) + 148] == 1'b1) begin
									// Trace: core/cache_subsystem/miss_handler.sv:766:13
									sel_d = i[NR_PORTS - 1:0];
									// Trace: core/cache_subsystem/miss_handler.sv:767:13
									state_d = 1'd1;
									// Trace: core/cache_subsystem/miss_handler.sv:768:13
									_sv2v_jump = 2'b10;
								end
								_sv2v_value_on_break = i;
							end
						if (!(_sv2v_jump < 2'b10))
							i = _sv2v_value_on_break;
						if (_sv2v_jump != 2'b11)
							_sv2v_jump = 2'b00;
					end
				end
				if (_sv2v_jump == 2'b00) begin
					// Trace: core/cache_subsystem/miss_handler.sv:772:9
					req_d = req_i[sel_d * 149+:149];
					// Trace: core/cache_subsystem/miss_handler.sv:773:9
					req_o = req_i[sel_d * 149+:149];
					// Trace: core/cache_subsystem/miss_handler.sv:774:9
					rsp_o[(sel_d * 66) + 65] = req_i[(sel_d * 149) + 148];
					if (req_o[148] && rsp_i[65]) begin
						// Trace: core/cache_subsystem/miss_handler.sv:779:11
						req_d[148] = 1'b0;
						// Trace: core/cache_subsystem/miss_handler.sv:780:11
						outstanding_cnt_d = outstanding_cnt_d + 1;
					end
				end
			end
			1'd1: begin
				// Trace: core/cache_subsystem/miss_handler.sv:787:9
				if ((!req_o[148] && !any_unselected_port_valid) && (outstanding_cnt_q != (MAX_OUTSTANDING_REQ - 1))) begin
					begin
						// Trace: core/cache_subsystem/miss_handler.sv:789:11
						if (req_i[(sel_q * 149) + 148]) begin
							// Trace: core/cache_subsystem/miss_handler.sv:790:13
							req_d = req_i[sel_q * 149+:149];
							// Trace: core/cache_subsystem/miss_handler.sv:791:13
							req_o = req_i[sel_q * 149+:149];
							// Trace: core/cache_subsystem/miss_handler.sv:792:13
							rsp_o[(sel_q * 66) + 65] = 1'b1;
							// Trace: core/cache_subsystem/miss_handler.sv:793:13
							state_d = 1'd1;
						end
					end
				end
				if (req_o[148] && rsp_i[65]) begin
					// Trace: core/cache_subsystem/miss_handler.sv:800:11
					req_d[148] = 1'b0;
					// Trace: core/cache_subsystem/miss_handler.sv:801:11
					outstanding_cnt_d = outstanding_cnt_d + 1;
				end
				if (rsp_i[64]) begin
					// Trace: core/cache_subsystem/miss_handler.sv:804:11
					outstanding_cnt_d = outstanding_cnt_d - 1;
					// Trace: core/cache_subsystem/miss_handler.sv:805:11
					rsp_o[(sel_q * 66) + 64] = 1'b1;
					// Trace: core/cache_subsystem/miss_handler.sv:807:11
					if ((outstanding_cnt_d == 0) && (!req_o[148] || rsp_i[65]))
						// Trace: core/cache_subsystem/miss_handler.sv:807:70
						state_d = 1'd0;
				end
			end
			default:
				;
		endcase
	end
	// Trace: core/cache_subsystem/miss_handler.sv:815:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/miss_handler.sv:816:5
		if (~rst_ni) begin
			// Trace: core/cache_subsystem/miss_handler.sv:817:7
			state_q <= 1'd0;
			// Trace: core/cache_subsystem/miss_handler.sv:818:7
			sel_q <= 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:819:7
			req_q <= 1'sb0;
			// Trace: core/cache_subsystem/miss_handler.sv:820:7
			outstanding_cnt_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/miss_handler.sv:822:7
			state_q <= state_d;
			// Trace: core/cache_subsystem/miss_handler.sv:823:7
			sel_q <= sel_d;
			// Trace: core/cache_subsystem/miss_handler.sv:824:7
			req_q <= req_d;
			// Trace: core/cache_subsystem/miss_handler.sv:825:7
			outstanding_cnt_q <= outstanding_cnt_d;
		end
	// Trace: core/cache_subsystem/miss_handler.sv:835:3
	// removed an assertion item
	// assert property (@(posedge clk_i) 
	// 	(rsp_i.gnt |-> ##[1:$] rsp_i.valid)
	// ) else begin
	// 	// Trace: core/cache_subsystem/miss_handler.sv:837:5
	// 	$error("There was a grant without a rvalid");
	// 	// Trace: core/cache_subsystem/miss_handler.sv:838:5
	// 	$stop;
	// end
	// Trace: core/cache_subsystem/miss_handler.sv:841:3
	// removed an assertion item
	// assert property (@(negedge clk_i) 
	// 	(rsp_i.gnt |-> req_o.req)
	// ) else begin
	// 	// Trace: core/cache_subsystem/miss_handler.sv:843:5
	// 	$error("There was a grant without a request.");
	// 	// Trace: core/cache_subsystem/miss_handler.sv:844:5
	// 	$stop;
	// end
	// Trace: core/cache_subsystem/miss_handler.sv:847:3
	// removed an assertion item
	// assert property (@(posedge clk_i) 
	// 	(req_o.req |-> !$isunknown(req_o.addr))
	// ) else begin
	// 	// Trace: core/cache_subsystem/miss_handler.sv:849:5
	// 	$error("address contains X when request is set");
	// 	// Trace: core/cache_subsystem/miss_handler.sv:850:5
	// 	$stop;
	// end
	initial _sv2v_0 = 0;
endmodule
