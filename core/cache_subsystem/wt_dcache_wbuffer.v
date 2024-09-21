module wt_dcache_wbuffer_7E3B8_2DD72 (
	clk_i,
	rst_ni,
	cache_en_i,
	empty_o,
	not_ni_o,
	req_port_i,
	req_port_o,
	miss_ack_i,
	miss_paddr_o,
	miss_req_o,
	miss_we_o,
	miss_wdata_o,
	miss_wuser_o,
	miss_vld_bits_o,
	miss_nc_o,
	miss_size_o,
	miss_id_o,
	miss_rtrn_vld_i,
	miss_rtrn_id_i,
	rd_tag_o,
	rd_idx_o,
	rd_off_o,
	rd_req_o,
	rd_tag_only_o,
	rd_ack_i,
	rd_data_i,
	rd_vld_bits_i,
	rd_hit_oh_i,
	wr_cl_vld_i,
	wr_cl_idx_i,
	wr_req_o,
	wr_ack_i,
	wr_idx_o,
	wr_off_o,
	wr_data_o,
	wr_data_be_o,
	wr_user_o,
	wbuffer_data_o,
	tx_paddr_o,
	tx_vld_o
);
	// removed localparam type dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg = 0;
	// removed localparam type dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg = 0;
	// removed localparam type wbuffer_t_CVA6Cfg_type
	parameter [17102:0] wbuffer_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// removed import wt_cache_pkg::*;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:56:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:57:15
	parameter DCACHE_CL_IDX_WIDTH = 0;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:58:20
	// removed localparam type dcache_req_i_t
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:59:20
	// removed localparam type dcache_req_o_t
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:60:20
	// removed localparam type wbuffer_t
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:62:5
	input wire clk_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:63:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:65:5
	input wire cache_en_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:66:5
	output wire empty_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:67:5
	output wire not_ni_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:69:5
	input wire [(((((((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1:0] req_port_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:70:5
	output reg [(((2 + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]) - 1:0] req_port_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:72:5
	input wire miss_ack_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:73:5
	output wire [CVA6Cfg[17038-:32] - 1:0] miss_paddr_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:74:5
	output wire miss_req_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:75:5
	output wire miss_we_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:76:5
	output wire [CVA6Cfg[17102-:32] - 1:0] miss_wdata_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:77:5
	output wire [CVA6Cfg[900-:32] - 1:0] miss_wuser_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:78:5
	output wire [CVA6Cfg[1092-:32] - 1:0] miss_vld_bits_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:79:5
	output wire miss_nc_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:80:5
	output wire [2:0] miss_size_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:81:5
	output wire [CVA6Cfg[16616-:32] - 1:0] miss_id_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:83:5
	input wire miss_rtrn_vld_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:84:5
	input wire [CVA6Cfg[16616-:32] - 1:0] miss_rtrn_id_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:86:5
	output wire [CVA6Cfg[996-:32] - 1:0] rd_tag_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:87:5
	output wire [DCACHE_CL_IDX_WIDTH - 1:0] rd_idx_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:88:5
	output wire [CVA6Cfg[868-:32] - 1:0] rd_off_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:89:5
	output wire rd_req_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:90:5
	output wire rd_tag_only_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:91:5
	input wire rd_ack_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:92:5
	input wire [CVA6Cfg[17102-:32] - 1:0] rd_data_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:93:5
	input wire [CVA6Cfg[1092-:32] - 1:0] rd_vld_bits_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:94:5
	input wire [CVA6Cfg[1092-:32] - 1:0] rd_hit_oh_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:96:5
	input wire wr_cl_vld_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:97:5
	input wire [DCACHE_CL_IDX_WIDTH - 1:0] wr_cl_idx_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:99:5
	output reg [CVA6Cfg[1092-:32] - 1:0] wr_req_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:100:5
	input wire wr_ack_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:101:5
	output wire [DCACHE_CL_IDX_WIDTH - 1:0] wr_idx_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:102:5
	output wire [CVA6Cfg[868-:32] - 1:0] wr_off_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:103:5
	output wire [CVA6Cfg[17102-:32] - 1:0] wr_data_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:104:5
	output wire [(CVA6Cfg[17102-:32] / 8) - 1:0] wr_data_be_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:105:5
	output wire [CVA6Cfg[900-:32] - 1:0] wr_user_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:107:5
	output wire [(CVA6Cfg[740-:32] * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) - 1:0] wbuffer_data_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:108:5
	output wire [(CVA6Cfg[804-:32] * CVA6Cfg[17038-:32]) - 1:0] tx_paddr_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:109:5
	output wire [CVA6Cfg[804-:32] - 1:0] tx_vld_o;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:112:3
	function automatic [(CVA6Cfg[17102-:32] / 8) - 1:0] to_byte_enable8;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:113:7
		input reg [CVA6Cfg[16972-:32] - 1:0] offset;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:113:58
		input reg [1:0] size;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:114:5
		reg [(CVA6Cfg[17102-:32] / 8) - 1:0] be;
		begin
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:115:5
			be = 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:116:5
			(* full_case, parallel_case *)
			case (size)
				2'b00:
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:117:16
					be[offset] = 1'sb1;
				2'b01:
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:118:16
					be[offset+:2] = 1'sb1;
				2'b10:
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:119:16
					be[offset+:4] = 1'sb1;
				default:
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:120:16
					be = 1'sb1;
			endcase
			to_byte_enable8 = be;
		end
	endfunction
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:125:3
	function automatic [(CVA6Cfg[17102-:32] / 8) - 1:0] to_byte_enable4;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:126:7
		input reg [CVA6Cfg[16972-:32] - 1:0] offset;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:126:58
		input reg [1:0] size;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:127:5
		reg [3:0] be;
		begin
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:128:5
			be = 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:129:5
			(* full_case, parallel_case *)
			case (size)
				2'b00:
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:130:16
					be[offset] = 1'sb1;
				2'b01:
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:131:16
					be[offset+:2] = 1'sb1;
				default:
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:132:16
					be = 1'sb1;
			endcase
			to_byte_enable4 = be;
		end
	endfunction
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:138:3
	function automatic [CVA6Cfg[17102-:32] - 1:0] repData64;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:139:7
		input reg [CVA6Cfg[17102-:32] - 1:0] data;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:139:44
		input reg [CVA6Cfg[16972-:32] - 1:0] offset;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:140:7
		input reg [1:0] size;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:141:5
		reg [CVA6Cfg[17102-:32] - 1:0] out;
		begin
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:142:5
			(* full_case, parallel_case *)
			case (size)
				2'b00: begin : sv2v_autoblock_1
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:143:21
					reg signed [31:0] k;
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:143:21
					for (k = 0; k < 8; k = k + 1)
						begin
							// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:143:44
							out[k * 8+:8] = data[offset * 8+:8];
						end
				end
				2'b01: begin : sv2v_autoblock_2
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:144:21
					reg signed [31:0] k;
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:144:21
					for (k = 0; k < 4; k = k + 1)
						begin
							// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:144:44
							out[k * 16+:16] = data[offset * 8+:16];
						end
				end
				2'b10: begin : sv2v_autoblock_3
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:145:21
					reg signed [31:0] k;
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:145:21
					for (k = 0; k < 2; k = k + 1)
						begin
							// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:145:44
							out[k * 32+:32] = data[offset * 8+:32];
						end
				end
				default:
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:146:16
					out = data;
			endcase
			repData64 = out;
		end
	endfunction
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:151:3
	function automatic [CVA6Cfg[17102-:32] - 1:0] repData32;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:152:7
		input reg [CVA6Cfg[17102-:32] - 1:0] data;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:152:44
		input reg [CVA6Cfg[16972-:32] - 1:0] offset;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:153:7
		input reg [1:0] size;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:154:5
		reg [CVA6Cfg[17102-:32] - 1:0] out;
		begin
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:155:5
			(* full_case, parallel_case *)
			case (size)
				2'b00: begin : sv2v_autoblock_4
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:156:21
					reg signed [31:0] k;
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:156:21
					for (k = 0; k < 4; k = k + 1)
						begin
							// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:156:44
							out[k * 8+:8] = data[offset * 8+:8];
						end
				end
				2'b01: begin : sv2v_autoblock_5
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:157:21
					reg signed [31:0] k;
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:157:21
					for (k = 0; k < 2; k = k + 1)
						begin
							// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:157:44
							out[k * 16+:16] = data[offset * 8+:16];
						end
				end
				default:
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:158:16
					out = data;
			endcase
			repData32 = out;
		end
	endfunction
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:163:3
	// removed localparam type tx_stat_t
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:169:3
	reg [(CVA6Cfg[804-:32] * ((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32]))) - 1:0] tx_stat_d;
	reg [(CVA6Cfg[804-:32] * ((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32]))) - 1:0] tx_stat_q;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:170:3
	reg [(CVA6Cfg[740-:32] * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) - 1:0] wbuffer_d;
	reg [(CVA6Cfg[740-:32] * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) - 1:0] wbuffer_q;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:171:3
	wire [CVA6Cfg[740-:32] - 1:0] valid;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:172:3
	wire [CVA6Cfg[740-:32] - 1:0] dirty;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:173:3
	wire [CVA6Cfg[740-:32] - 1:0] tocheck;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:174:3
	wire [CVA6Cfg[740-:32] - 1:0] wbuffer_hit_oh;
	wire [CVA6Cfg[740-:32] - 1:0] inval_hit;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:176:3
	wire [(CVA6Cfg[740-:32] * (CVA6Cfg[17102-:32] / 8)) - 1:0] bdirty;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:178:3
	wire [$clog2(CVA6Cfg[740-:32]) - 1:0] next_ptr;
	wire [$clog2(CVA6Cfg[740-:32]) - 1:0] dirty_ptr;
	wire [$clog2(CVA6Cfg[740-:32]) - 1:0] hit_ptr;
	wire [$clog2(CVA6Cfg[740-:32]) - 1:0] wr_ptr;
	wire [$clog2(CVA6Cfg[740-:32]) - 1:0] check_ptr_d;
	reg [$clog2(CVA6Cfg[740-:32]) - 1:0] check_ptr_q;
	reg [$clog2(CVA6Cfg[740-:32]) - 1:0] check_ptr_q1;
	wire [$clog2(CVA6Cfg[740-:32]) - 1:0] rtrn_ptr;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:180:3
	wire [CVA6Cfg[16616-:32] - 1:0] tx_id;
	wire [CVA6Cfg[16616-:32] - 1:0] rtrn_id;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:182:3
	wire [CVA6Cfg[16972-:32] - 1:0] bdirty_off;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:183:3
	wire [(CVA6Cfg[17102-:32] / 8) - 1:0] tx_be;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:184:3
	wire [CVA6Cfg[17038-:32] - 1:0] wr_paddr;
	wire [CVA6Cfg[17038-:32] - 1:0] rd_paddr;
	wire [CVA6Cfg[17038-:32] - 1:0] extract_tag;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:185:3
	wire [CVA6Cfg[996-:32] - 1:0] rd_tag_d;
	reg [CVA6Cfg[996-:32] - 1:0] rd_tag_q;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:186:3
	wire [CVA6Cfg[1092-:32] - 1:0] rd_hit_oh_d;
	reg [CVA6Cfg[1092-:32] - 1:0] rd_hit_oh_q;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:187:3
	wire check_en_d;
	reg check_en_q;
	reg check_en_q1;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:188:3
	wire full;
	reg dirty_rd_en;
	wire rdy;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:189:3
	wire rtrn_empty;
	reg evict;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:190:3
	reg [CVA6Cfg[740-:32] - 1:0] ni_pending_d;
	reg [CVA6Cfg[740-:32] - 1:0] ni_pending_q;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:191:3
	reg wbuffer_wren;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:192:3
	wire free_tx_slots;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:194:3
	reg wr_cl_vld_q;
	wire wr_cl_vld_d;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:195:3
	reg [DCACHE_CL_IDX_WIDTH - 1:0] wr_cl_idx_q;
	wire [DCACHE_CL_IDX_WIDTH - 1:0] wr_cl_idx_d;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:197:3
	wire [CVA6Cfg[17038-:32] - 1:0] debug_paddr [CVA6Cfg[740-:32] - 1:0];
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:199:3
	wire [((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32]) - 1:0] wbuffer_check_mux;
	wire [((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32]) - 1:0] wbuffer_dirty_mux;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:204:3
	wire [CVA6Cfg[996-:32] - 1:0] miss_tag;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:205:3
	wire is_nc_miss;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:206:3
	wire is_ni;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:207:3
	assign miss_tag = miss_paddr_o[CVA6Cfg[1028-:32]+:CVA6Cfg[996-:32]];
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:208:3
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
			begin : sv2v_autoblock_6
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
	assign is_nc_miss = !config_pkg_is_inside_cacheable_regions(CVA6Cfg, {{(64 - CVA6Cfg[996-:32]) - CVA6Cfg[1028-:32] {1'b0}}, miss_tag, {CVA6Cfg[1028-:32] {1'b0}}});
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:216:3
	assign miss_nc_o = !cache_en_i || is_nc_miss;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:218:3
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
			begin : sv2v_autoblock_7
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
	assign is_ni = config_pkg_is_inside_nonidempotent_regions(CVA6Cfg, {{(64 - CVA6Cfg[996-:32]) - CVA6Cfg[1028-:32] {1'b0}}, req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + 1)], {CVA6Cfg[1028-:32] {1'b0}}});
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:227:3
	assign miss_we_o = 1'b1;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:228:3
	assign miss_vld_bits_o = 1'sb0;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:229:3
	assign wbuffer_data_o = wbuffer_q;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:231:3
	genvar _gv_k_13;
	generate
		for (_gv_k_13 = 0; _gv_k_13 < CVA6Cfg[804-:32]; _gv_k_13 = _gv_k_13 + 1) begin : gen_tx_vld
			localparam k = _gv_k_13;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:232:5
			assign tx_vld_o[k] = tx_stat_q[(k * ((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32]))) + (1 + ((CVA6Cfg[17102-:32] / 8) + ($clog2(CVA6Cfg[740-:32]) - 1)))];
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:233:5
			assign tx_paddr_o[k * CVA6Cfg[17038-:32]+:CVA6Cfg[17038-:32]] = {{CVA6Cfg[16972-:32] {1'b0}}, wbuffer_q[(tx_stat_q[(k * ((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32]))) + ($clog2(CVA6Cfg[740-:32]) - 1)-:$clog2(CVA6Cfg[740-:32])] * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))-:(((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) >= (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) ? (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1 : ((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - ((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1)] << CVA6Cfg[16972-:32]};
		end
	endgenerate
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:250:3
	lzc #(.WIDTH(CVA6Cfg[17102-:32] / 8)) i_vld_bdirty(
		.in_i(bdirty[dirty_ptr * (CVA6Cfg[17102-:32] / 8)+:CVA6Cfg[17102-:32] / 8]),
		.cnt_o(bdirty_off),
		.empty_o()
	);
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:259:3
	assign miss_paddr_o = {wbuffer_dirty_mux[(wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))-:(((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) >= (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) ? (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1 : ((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - ((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1)], bdirty_off};
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:260:3
	assign miss_id_o = tx_id;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:263:3
	assign miss_req_o = |dirty && free_tx_slots;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:269:3
	function automatic [1:0] wt_cache_pkg_toSize32;
		// Trace: core/include/wt_cache_pkg.sv:147:43
		input reg [3:0] be;
		// Trace: core/include/wt_cache_pkg.sv:148:5
		reg [1:0] size;
		begin
			// Trace: core/include/wt_cache_pkg.sv:149:5
			(* full_case, parallel_case *)
			case (be)
				4'b1111:
					// Trace: core/include/wt_cache_pkg.sv:150:25
					size = 2'b10;
				4'b1100, 4'b0011:
					// Trace: core/include/wt_cache_pkg.sv:151:25
					size = 2'b01;
				default:
					// Trace: core/include/wt_cache_pkg.sv:152:25
					size = 2'b00;
			endcase
			wt_cache_pkg_toSize32 = size;
		end
	endfunction
	function automatic [1:0] wt_cache_pkg_toSize64;
		// Trace: core/include/wt_cache_pkg.sv:135:43
		input reg [7:0] be;
		// Trace: core/include/wt_cache_pkg.sv:136:5
		reg [1:0] size;
		begin
			// Trace: core/include/wt_cache_pkg.sv:137:5
			(* full_case, parallel_case *)
			case (be)
				8'b11111111:
					// Trace: core/include/wt_cache_pkg.sv:138:63
					size = 2'b11;
				8'b00001111, 8'b11110000:
					// Trace: core/include/wt_cache_pkg.sv:139:63
					size = 2'b10;
				8'b11000000, 8'b00110000, 8'b00001100, 8'b00000011:
					// Trace: core/include/wt_cache_pkg.sv:140:63
					size = 2'b01;
				default:
					// Trace: core/include/wt_cache_pkg.sv:141:63
					size = 2'b00;
			endcase
			wt_cache_pkg_toSize64 = size;
		end
	endfunction
	generate
		if (CVA6Cfg[16973]) begin : gen_size_64b
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:270:5
			assign miss_size_o = {1'b0, wt_cache_pkg_toSize64(bdirty[dirty_ptr * (CVA6Cfg[17102-:32] / 8)+:CVA6Cfg[17102-:32] / 8])};
		end
		else begin : gen_size_32b
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:272:5
			assign miss_size_o = {1'b0, wt_cache_pkg_toSize32(bdirty[dirty_ptr * (CVA6Cfg[17102-:32] / 8)+:CVA6Cfg[17102-:32] / 8])};
		end
	endgenerate
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:276:3
	assign miss_wdata_o = (CVA6Cfg[16973] ? repData64(wbuffer_dirty_mux[wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))-:((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) >= (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) ? ((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) - (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) + 1 : ((wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) - (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) + 1)], bdirty_off, miss_size_o[1:0]) : repData32(wbuffer_dirty_mux[wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))-:((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) >= (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) ? ((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) - (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) + 1 : ((wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) - (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) + 1)], bdirty_off, miss_size_o[1:0]));
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:281:3
	generate
		if (CVA6Cfg[772-:32]) begin : genblk3
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:282:5
			assign miss_wuser_o = (CVA6Cfg[16973] ? repData64(wbuffer_dirty_mux[wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))-:((wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) >= ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) ? ((wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) + 1 : (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) - (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) + 1)], bdirty_off, miss_size_o[1:0]) : repData32(wbuffer_dirty_mux[wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))-:((wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) >= ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) ? ((wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) + 1 : (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) - (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) + 1)], bdirty_off, miss_size_o[1:0]));
		end
		else begin : genblk3
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:288:5
			assign miss_wuser_o = 1'sb0;
		end
	endgenerate
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:291:3
	assign tx_be = (CVA6Cfg[16973] ? to_byte_enable8(bdirty_off, miss_size_o[1:0]) : to_byte_enable4(bdirty_off, miss_size_o[1:0]));
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:302:3
	cva6_fifo_v3 #(
		.FALL_THROUGH(1'b0),
		.DATA_WIDTH($clog2(CVA6Cfg[804-:32])),
		.DEPTH(CVA6Cfg[804-:32]),
		.FPGA_EN(CVA6Cfg[16876])
	) i_rtrn_id_fifo(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.testmode_i(1'b0),
		.full_o(),
		.empty_o(rtrn_empty),
		.usage_o(),
		.data_i(miss_rtrn_id_i),
		.push_i(miss_rtrn_vld_i),
		.data_o(rtrn_id),
		.pop_i(evict)
	);
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:321:3
	always @(*) begin : p_tx_stat
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:322:5
		tx_stat_d = tx_stat_q;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:323:5
		evict = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:324:5
		wr_req_o = 1'sb0;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:327:5
		if (!rtrn_empty && wbuffer_q[(rtrn_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)]) begin
			begin
				// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:330:7
				if (|wr_data_be_o && |wbuffer_q[(rtrn_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (wbuffer_t_CVA6Cfg[1092-:32] - 1)-:wbuffer_t_CVA6Cfg[1092-:32]]) begin
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:331:9
					wr_req_o = wbuffer_q[(rtrn_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (wbuffer_t_CVA6Cfg[1092-:32] - 1)-:wbuffer_t_CVA6Cfg[1092-:32]];
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:332:9
					if (wr_ack_i) begin
						// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:333:11
						evict = 1'b1;
						// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:334:11
						tx_stat_d[(rtrn_id * ((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32]))) + (1 + ((CVA6Cfg[17102-:32] / 8) + ($clog2(CVA6Cfg[740-:32]) - 1)))] = 1'b0;
					end
				end
				else begin
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:337:9
					evict = 1'b1;
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:338:9
					tx_stat_d[(rtrn_id * ((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32]))) + (1 + ((CVA6Cfg[17102-:32] / 8) + ($clog2(CVA6Cfg[740-:32]) - 1)))] = 1'b0;
				end
			end
		end
		if (dirty_rd_en) begin
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:344:7
			tx_stat_d[(tx_id * ((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32]))) + (1 + ((CVA6Cfg[17102-:32] / 8) + ($clog2(CVA6Cfg[740-:32]) - 1)))] = 1'b1;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:345:7
			tx_stat_d[(tx_id * ((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32]))) + ($clog2(CVA6Cfg[740-:32]) - 1)-:$clog2(CVA6Cfg[740-:32])] = dirty_ptr;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:346:7
			tx_stat_d[(tx_id * ((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32]))) + ((CVA6Cfg[17102-:32] / 8) + ($clog2(CVA6Cfg[740-:32]) - 1))-:(((CVA6Cfg[17102-:32] / 8) + ($clog2(CVA6Cfg[740-:32]) - 1)) >= ($clog2(CVA6Cfg[740-:32]) + 0) ? (((CVA6Cfg[17102-:32] / 8) + ($clog2(CVA6Cfg[740-:32]) - 1)) - ($clog2(CVA6Cfg[740-:32]) + 0)) + 1 : (($clog2(CVA6Cfg[740-:32]) + 0) - ((CVA6Cfg[17102-:32] / 8) + ($clog2(CVA6Cfg[740-:32]) - 1))) + 1)] = tx_be;
		end
	end
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:350:3
	assign free_tx_slots = |(~tx_vld_o);
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:353:3
	// removed localparam type sv2v_uu_i_tx_id_rr_flush_i
	localparam [0:0] sv2v_uu_i_tx_id_rr_ext_flush_i_0 = 1'sb0;
	localparam [31:0] sv2v_uu_i_tx_id_rr_NumIn = CVA6Cfg[804-:32];
	localparam [31:0] sv2v_uu_i_tx_id_rr_IdxWidth = (sv2v_uu_i_tx_id_rr_NumIn > 32'd1 ? $unsigned($clog2(sv2v_uu_i_tx_id_rr_NumIn)) : 32'd1);
	// removed localparam type sv2v_uu_i_tx_id_rr_idx_t
	// removed localparam type sv2v_uu_i_tx_id_rr_rr_i
	localparam [sv2v_uu_i_tx_id_rr_IdxWidth - 1:0] sv2v_uu_i_tx_id_rr_ext_rr_i_0 = 1'sb0;
	localparam [31:0] sv2v_uu_i_tx_id_rr_DataWidth = 1;
	// removed localparam type sv2v_uu_i_tx_id_rr_DataType
	// removed localparam type sv2v_uu_i_tx_id_rr_data_i
	localparam [(sv2v_uu_i_tx_id_rr_NumIn * sv2v_uu_i_tx_id_rr_DataWidth) - 1:0] sv2v_uu_i_tx_id_rr_ext_data_i_0 = 1'sb0;
	rr_arb_tree #(
		.NumIn(CVA6Cfg[804-:32]),
		.LockIn(1'b1),
		.DataWidth(1)
	) i_tx_id_rr(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(sv2v_uu_i_tx_id_rr_ext_flush_i_0),
		.rr_i(sv2v_uu_i_tx_id_rr_ext_rr_i_0),
		.req_i(~tx_vld_o),
		.gnt_o(),
		.data_i(sv2v_uu_i_tx_id_rr_ext_data_i_0),
		.gnt_i(dirty_rd_en),
		.req_o(),
		.data_o(),
		.idx_o(tx_id)
	);
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:375:3
	assign extract_tag = rd_paddr >> CVA6Cfg[1028-:32];
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:376:3
	assign rd_tag_d = extract_tag[CVA6Cfg[996-:32] - 1:0];
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:379:3
	assign rd_tag_only_o = 1'b1;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:380:3
	assign rd_paddr = {{CVA6Cfg[16972-:32] {1'b0}}, wbuffer_check_mux[(wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))-:(((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) >= (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) ? (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1 : ((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - ((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1)] << CVA6Cfg[16972-:32]};
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:383:3
	assign rd_req_o = |tocheck;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:384:3
	assign rd_tag_o = rd_tag_q;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:385:3
	assign rd_idx_o = rd_paddr[CVA6Cfg[1028-:32] - 1:CVA6Cfg[868-:32]];
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:386:3
	assign rd_off_o = rd_paddr[CVA6Cfg[868-:32] - 1:0];
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:387:3
	assign check_en_d = rd_req_o & rd_ack_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:390:3
	assign rtrn_ptr = tx_stat_q[(rtrn_id * ((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32]))) + ($clog2(CVA6Cfg[740-:32]) - 1)-:$clog2(CVA6Cfg[740-:32])];
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:393:3
	assign wr_data_be_o = tx_stat_q[(rtrn_id * ((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32]))) + ((CVA6Cfg[17102-:32] / 8) + ($clog2(CVA6Cfg[740-:32]) - 1))-:(((CVA6Cfg[17102-:32] / 8) + ($clog2(CVA6Cfg[740-:32]) - 1)) >= ($clog2(CVA6Cfg[740-:32]) + 0) ? (((CVA6Cfg[17102-:32] / 8) + ($clog2(CVA6Cfg[740-:32]) - 1)) - ($clog2(CVA6Cfg[740-:32]) + 0)) + 1 : (($clog2(CVA6Cfg[740-:32]) + 0) - ((CVA6Cfg[17102-:32] / 8) + ($clog2(CVA6Cfg[740-:32]) - 1))) + 1)] & ~wbuffer_q[(rtrn_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))-:(((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) >= ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) ? (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) + 1 : (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) + 1)];
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:394:3
	assign wr_paddr = {{CVA6Cfg[16972-:32] {1'b0}}, wbuffer_q[(rtrn_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))-:(((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) >= (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) ? (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1 : ((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - ((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1)] << CVA6Cfg[16972-:32]};
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:397:3
	assign wr_idx_o = wr_paddr[CVA6Cfg[1028-:32] - 1:CVA6Cfg[868-:32]];
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:398:3
	assign wr_off_o = wr_paddr[CVA6Cfg[868-:32] - 1:0];
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:399:3
	assign wr_data_o = wbuffer_q[(rtrn_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))-:((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) >= (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) ? ((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) - (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) + 1 : ((wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) - (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) + 1)];
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:400:3
	assign wr_user_o = wbuffer_q[(rtrn_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))-:((wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) >= ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) ? ((wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) + 1 : (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) - (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) + 1)];
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:407:3
	wire [(CVA6Cfg[740-:32] * DCACHE_CL_IDX_WIDTH) - 1:0] wtag_comp;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:409:3
	assign wr_cl_vld_d = wr_cl_vld_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:410:3
	assign wr_cl_idx_d = wr_cl_idx_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:412:3
	genvar _gv_k_14;
	generate
		for (_gv_k_14 = 0; _gv_k_14 < CVA6Cfg[740-:32]; _gv_k_14 = _gv_k_14 + 1) begin : gen_flags
			localparam k = _gv_k_14;
			if (CVA6Cfg[1321]) begin : genblk1
				// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:415:7
				assign debug_paddr[k] = {{CVA6Cfg[16972-:32] {1'b0}}, wbuffer_q[(k * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))-:(((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) >= (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) ? (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1 : ((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - ((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1)] << CVA6Cfg[16972-:32]};
			end
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:423:5
			assign bdirty[k * (CVA6Cfg[17102-:32] / 8)+:CVA6Cfg[17102-:32] / 8] = (|wbuffer_q[(k * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))-:(((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)) >= (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)) ? (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)) - (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) + 1 : ((1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) + 1)] ? {(CVA6Cfg[17102-:32] / 8) * 1 {1'sb0}} : wbuffer_q[(k * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))-:(((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) >= ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) ? (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) + 1 : (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) + 1)] & wbuffer_q[(k * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))-:(((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) >= ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) ? (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) + 1 : (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) + 1)]);
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:426:5
			assign dirty[k] = |bdirty[k * (CVA6Cfg[17102-:32] / 8)+:CVA6Cfg[17102-:32] / 8];
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:427:5
			assign valid[k] = |wbuffer_q[(k * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))-:(((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) >= ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) ? (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) + 1 : (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) + 1)];
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:428:5
			assign wbuffer_hit_oh[k] = valid[k] & (wbuffer_q[(k * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))-:(((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) >= (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) ? (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1 : ((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - ((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1)] == {req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + 1)], req_port_i[(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] - 1) - (CVA6Cfg[1028-:32] - 1)):(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] - 1) - CVA6Cfg[16972-:32])]});
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:433:5
			assign wtag_comp[k * DCACHE_CL_IDX_WIDTH+:DCACHE_CL_IDX_WIDTH] = wbuffer_q[(k * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - ((CVA6Cfg[1028-:32] - CVA6Cfg[16972-:32]) - 1))) >= (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - (CVA6Cfg[868-:32] - CVA6Cfg[16972-:32]))) ? ((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - ((CVA6Cfg[1028-:32] - CVA6Cfg[16972-:32]) - 1)) : ((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - ((CVA6Cfg[1028-:32] - CVA6Cfg[16972-:32]) - 1))) + ((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - ((CVA6Cfg[1028-:32] - CVA6Cfg[16972-:32]) - 1))) >= (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - (CVA6Cfg[868-:32] - CVA6Cfg[16972-:32]))) ? ((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - ((CVA6Cfg[1028-:32] - CVA6Cfg[16972-:32]) - 1))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - (CVA6Cfg[868-:32] - CVA6Cfg[16972-:32])))) + 1 : ((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - (CVA6Cfg[868-:32] - CVA6Cfg[16972-:32]))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - ((CVA6Cfg[1028-:32] - CVA6Cfg[16972-:32]) - 1)))) + 1)) - 1)-:((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - ((CVA6Cfg[1028-:32] - CVA6Cfg[16972-:32]) - 1))) >= (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - (CVA6Cfg[868-:32] - CVA6Cfg[16972-:32]))) ? ((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - ((CVA6Cfg[1028-:32] - CVA6Cfg[16972-:32]) - 1))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - (CVA6Cfg[868-:32] - CVA6Cfg[16972-:32])))) + 1 : ((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - (CVA6Cfg[868-:32] - CVA6Cfg[16972-:32]))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) - 1) - ((CVA6Cfg[1028-:32] - CVA6Cfg[16972-:32]) - 1)))) + 1)];
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:434:5
			assign inval_hit[k] = ((wr_cl_vld_d & valid[k]) & (wtag_comp[k * DCACHE_CL_IDX_WIDTH+:DCACHE_CL_IDX_WIDTH] == wr_cl_idx_d)) | ((wr_cl_vld_q & valid[k]) & (wtag_comp[k * DCACHE_CL_IDX_WIDTH+:DCACHE_CL_IDX_WIDTH] == wr_cl_idx_q));
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:438:5
			assign tocheck[k] = ~wbuffer_q[(k * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)] & valid[k];
		end
	endgenerate
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:441:3
	assign wr_ptr = (|wbuffer_hit_oh ? hit_ptr : next_ptr);
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:442:3
	assign rdy = |wbuffer_hit_oh | ~full;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:445:3
	lzc #(.WIDTH(CVA6Cfg[740-:32])) i_vld_lzc(
		.in_i(~valid),
		.cnt_o(next_ptr),
		.empty_o(full)
	);
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:454:3
	lzc #(.WIDTH(CVA6Cfg[740-:32])) i_hit_lzc(
		.in_i(wbuffer_hit_oh),
		.cnt_o(hit_ptr),
		.empty_o()
	);
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:463:3
	// removed localparam type sv2v_uu_i_dirty_rr_flush_i
	localparam [0:0] sv2v_uu_i_dirty_rr_ext_flush_i_0 = 1'sb0;
	localparam [31:0] sv2v_uu_i_dirty_rr_NumIn = CVA6Cfg[740-:32];
	localparam [31:0] sv2v_uu_i_dirty_rr_IdxWidth = (sv2v_uu_i_dirty_rr_NumIn > 32'd1 ? $unsigned($clog2(sv2v_uu_i_dirty_rr_NumIn)) : 32'd1);
	// removed localparam type sv2v_uu_i_dirty_rr_rr_i
	localparam [sv2v_uu_i_dirty_rr_IdxWidth - 1:0] sv2v_uu_i_dirty_rr_ext_rr_i_0 = 1'sb0;
	rr_arb_tree_46107_99662 #(
		.DataType_wbuffer_t_CVA6Cfg(wbuffer_t_CVA6Cfg),
		.NumIn(CVA6Cfg[740-:32]),
		.LockIn(1'b1)
	) i_dirty_rr(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(sv2v_uu_i_dirty_rr_ext_flush_i_0),
		.rr_i(sv2v_uu_i_dirty_rr_ext_rr_i_0),
		.req_i(dirty),
		.gnt_o(),
		.data_i(wbuffer_q),
		.gnt_i(dirty_rd_en),
		.req_o(),
		.data_o(wbuffer_dirty_mux),
		.idx_o(dirty_ptr)
	);
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:482:3
	// removed localparam type sv2v_uu_i_clean_rr_flush_i
	localparam [0:0] sv2v_uu_i_clean_rr_ext_flush_i_0 = 1'sb0;
	localparam [31:0] sv2v_uu_i_clean_rr_NumIn = CVA6Cfg[740-:32];
	localparam [31:0] sv2v_uu_i_clean_rr_IdxWidth = (sv2v_uu_i_clean_rr_NumIn > 32'd1 ? $unsigned($clog2(sv2v_uu_i_clean_rr_NumIn)) : 32'd1);
	// removed localparam type sv2v_uu_i_clean_rr_rr_i
	localparam [sv2v_uu_i_clean_rr_IdxWidth - 1:0] sv2v_uu_i_clean_rr_ext_rr_i_0 = 1'sb0;
	rr_arb_tree_46107_99662 #(
		.DataType_wbuffer_t_CVA6Cfg(wbuffer_t_CVA6Cfg),
		.NumIn(CVA6Cfg[740-:32])
	) i_clean_rr(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(sv2v_uu_i_clean_rr_ext_flush_i_0),
		.rr_i(sv2v_uu_i_clean_rr_ext_rr_i_0),
		.req_i(tocheck),
		.gnt_o(),
		.data_i(wbuffer_q),
		.gnt_i(check_en_d),
		.req_o(),
		.data_o(wbuffer_check_mux),
		.idx_o(check_ptr_d)
	);
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:503:3
	wire [1:1] sv2v_tmp_B1533;
	assign sv2v_tmp_B1533 = 1'sb0;
	always @(*) req_port_o[1 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = sv2v_tmp_B1533;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:504:3
	wire [((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) + 1) * 1:1] sv2v_tmp_FB6C9;
	assign sv2v_tmp_FB6C9 = 1'sb0;
	always @(*) req_port_o[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)-:((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) + 1)] = sv2v_tmp_FB6C9;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:505:3
	wire [dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] * 1:1] sv2v_tmp_E5E06;
	assign sv2v_tmp_E5E06 = 1'sb0;
	always @(*) req_port_o[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1-:dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]] = sv2v_tmp_E5E06;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:506:3
	wire [((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0))) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))) + 1) * 1:1] sv2v_tmp_7F19B;
	assign sv2v_tmp_7F19B = 1'sb0;
	always @(*) req_port_o[dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))-:((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) >= (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) ? ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1))) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0))) + 1 : ((dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] + 0)) - (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))) + 1)] = sv2v_tmp_7F19B;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:508:3
	assign rd_hit_oh_d = rd_hit_oh_i;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:510:3
	wire ni_inside;
	wire ni_conflict;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:511:3
	assign ni_inside = |ni_pending_q;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:512:3
	assign ni_conflict = (CVA6Cfg[1320] && is_ni) && ni_inside;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:513:3
	assign not_ni_o = !ni_inside;
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:514:3
	assign empty_o = !(|valid);
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:517:3
	always @(*) begin : p_buffer
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:518:5
		wbuffer_d = wbuffer_q;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:519:5
		ni_pending_d = ni_pending_q;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:520:5
		dirty_rd_en = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:521:5
		req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:522:5
		wbuffer_wren = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:525:5
		if (check_en_q1) begin
			begin
				// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:526:7
				if (|wbuffer_q[(check_ptr_q1 * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))-:(((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) >= ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) ? (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) + 1 : (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) + 1)]) begin
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:527:9
					wbuffer_d[(check_ptr_q1 * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)] = 1'b1;
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:528:9
					wbuffer_d[(check_ptr_q1 * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (wbuffer_t_CVA6Cfg[1092-:32] - 1)-:wbuffer_t_CVA6Cfg[1092-:32]] = rd_hit_oh_q;
				end
			end
		end
		begin : sv2v_autoblock_8
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:534:10
			reg signed [31:0] k;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:534:10
			for (k = 0; k < CVA6Cfg[740-:32]; k = k + 1)
				begin
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:535:7
					if (inval_hit[k])
						// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:536:9
						wbuffer_d[(k * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)] = 1'b0;
				end
		end
		if (evict) begin
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:543:7
			begin : sv2v_autoblock_9
				// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:543:12
				reg signed [31:0] k;
				// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:543:12
				for (k = 0; k < (CVA6Cfg[17102-:32] / 8); k = k + 1)
					begin
						// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:544:9
						if (tx_stat_q[(rtrn_id * ((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32]))) + (((CVA6Cfg[17102-:32] / 8) + ($clog2(CVA6Cfg[740-:32]) - 1)) - (((CVA6Cfg[17102-:32] / 8) - 1) - k))]) begin
							// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:545:11
							wbuffer_d[(rtrn_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)) - (((wbuffer_t_CVA6Cfg[17102-:32] / 8) - 1) - k))] = 1'b0;
							// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:546:11
							if (!wbuffer_q[(rtrn_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) - (((wbuffer_t_CVA6Cfg[17102-:32] / 8) - 1) - k))])
								// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:547:13
								wbuffer_d[(rtrn_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) - (((wbuffer_t_CVA6Cfg[17102-:32] / 8) - 1) - k))] = 1'b0;
						end
					end
			end
			if (wbuffer_d[(rtrn_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))-:(((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) >= ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) ? (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) + 1 : (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) - ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) + 1)] == 0) begin
				// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:557:9
				wbuffer_d[(rtrn_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)] = 1'b0;
				// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:558:9
				ni_pending_d[rtrn_ptr] = 1'b0;
			end
		end
		if (miss_req_o && miss_ack_i) begin
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:564:7
			dirty_rd_en = 1'b1;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:565:7
			begin : sv2v_autoblock_10
				// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:565:12
				reg signed [31:0] k;
				// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:565:12
				for (k = 0; k < (CVA6Cfg[17102-:32] / 8); k = k + 1)
					begin
						// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:566:9
						if (tx_be[k]) begin
							// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:567:11
							wbuffer_d[(dirty_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) - (((wbuffer_t_CVA6Cfg[17102-:32] / 8) - 1) - k))] = 1'b0;
							// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:568:11
							wbuffer_d[(dirty_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)) - (((wbuffer_t_CVA6Cfg[17102-:32] / 8) - 1) - k))] = 1'b1;
						end
					end
			end
		end
		if (req_port_i[2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))] && rdy) begin
			begin
				// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:577:7
				if (!ni_conflict) begin
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:578:9
					wbuffer_wren = 1'b1;
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:580:9
					req_port_o[2 + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32] + (dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32] - 1)))] = 1'b1;
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:581:9
					ni_pending_d[wr_ptr] = is_ni;
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:583:9
					wbuffer_d[(wr_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)] = 1'b0;
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:584:9
					wbuffer_d[(wr_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))-:(((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) >= (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) ? (((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1 : ((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (1 + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))))) - ((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + (wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))))) + 1)] = {req_port_i[dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))-:((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) >= (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) ? ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2))))))) + 1 : ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 2)))))) - (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) + 1)], req_port_i[(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] - 1) - (CVA6Cfg[1028-:32] - 1)):(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))))) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] - 1) - CVA6Cfg[16972-:32])]};
					// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:590:9
					begin : sv2v_autoblock_11
						// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:590:14
						reg signed [31:0] k;
						// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:590:14
						for (k = 0; k < (CVA6Cfg[17102-:32] / 8); k = k + 1)
							begin
								// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:591:11
								if (req_port_i[((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))) - (((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) - 1) - k)]) begin
									// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:592:13
									wbuffer_d[(wr_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))) - (((wbuffer_t_CVA6Cfg[17102-:32] / 8) - 1) - k))] = 1'b1;
									// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:593:13
									wbuffer_d[(wr_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + (((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))) - (((wbuffer_t_CVA6Cfg[17102-:32] / 8) - 1) - k))] = 1'b1;
									// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:594:13
									wbuffer_d[(wr_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[17102-:32] + (wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0)))))) - ((wbuffer_t_CVA6Cfg[17102-:32] - 1) - (k * 8)))+:8] = req_port_i[(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1)))))) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] - 1) - (k * 8))+:8];
									// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:595:13
									if (CVA6Cfg[772-:32])
										// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:596:15
										wbuffer_d[(wr_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) - ((wbuffer_t_CVA6Cfg[900-:32] - 1) - (k * 8)))+:8] = req_port_i[(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] + (2 + ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8) + (2 + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32] + 1))))) - ((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32] - 1) - (k * 8))+:8];
									else
										// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:598:15
										wbuffer_d[(wr_ptr * ((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32])) + ((wbuffer_t_CVA6Cfg[900-:32] + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + ((wbuffer_t_CVA6Cfg[17102-:32] / 8) + (wbuffer_t_CVA6Cfg[1092-:32] + 0))))) - ((wbuffer_t_CVA6Cfg[900-:32] - 1) - (k * 8)))+:8] = 1'sb0;
								end
							end
					end
				end
			end
		end
	end
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:611:3
	function automatic [((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32])) - 1:0] sv2v_cast_598CE;
		input reg [((1 + (CVA6Cfg[17102-:32] / 8)) + $clog2(CVA6Cfg[740-:32])) - 1:0] inp;
		sv2v_cast_598CE = inp;
	endfunction
	function automatic [((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32]) - 1:0] sv2v_cast_1AA4D;
		input reg [((((((((wbuffer_t_CVA6Cfg[996-:32] + (wbuffer_t_CVA6Cfg[1028-:32] - wbuffer_t_CVA6Cfg[16972-:32])) + wbuffer_t_CVA6Cfg[17102-:32]) + wbuffer_t_CVA6Cfg[900-:32]) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + (wbuffer_t_CVA6Cfg[17102-:32] / 8)) + 1) + wbuffer_t_CVA6Cfg[1092-:32]) - 1:0] inp;
		sv2v_cast_1AA4D = inp;
	endfunction
	always @(posedge clk_i or negedge rst_ni) begin : p_regs
		// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:612:5
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:613:7
			wbuffer_q <= {CVA6Cfg[740-:32] {sv2v_cast_1AA4D(1'sb0)}};
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:614:7
			tx_stat_q <= {CVA6Cfg[804-:32] {sv2v_cast_598CE(1'sb0)}};
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:615:7
			ni_pending_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:616:7
			check_ptr_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:617:7
			check_ptr_q1 <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:618:7
			check_en_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:619:7
			check_en_q1 <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:620:7
			rd_tag_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:621:7
			rd_hit_oh_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:622:7
			wr_cl_vld_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:623:7
			wr_cl_idx_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:625:7
			wbuffer_q <= wbuffer_d;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:626:7
			tx_stat_q <= tx_stat_d;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:627:7
			ni_pending_q <= ni_pending_d;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:628:7
			check_ptr_q <= check_ptr_d;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:629:7
			check_ptr_q1 <= check_ptr_q;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:630:7
			check_en_q <= check_en_d;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:631:7
			check_en_q1 <= check_en_q;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:632:7
			rd_tag_q <= rd_tag_d;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:633:7
			rd_hit_oh_q <= rd_hit_oh_d;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:634:7
			wr_cl_vld_q <= wr_cl_vld_d;
			// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:635:7
			wr_cl_idx_q <= wr_cl_idx_d;
		end
	end
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:647:3
	// removed an assertion item
	// hot1 : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(req_port_i.data_req |-> $onehot0(wbuffer_hit_oh))
	// ) else begin
	// 	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:651:8
	// 	$fatal(1, "[l1 dcache wbuffer] wbuffer_hit_oh signal must be hot1");
	// end
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:653:3
	// removed an assertion item
	// tx_status : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	((evict && miss_ack_i) && miss_req_o |-> tx_id != rtrn_id)
	// ) else begin
	// 	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:656:8
	// 	$fatal(1, "[l1 dcache wbuffer] cannot allocate and clear same tx slot id in the same cycle");
	// end
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:658:3
	// removed an assertion item
	// tx_valid0 : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(evict |-> tx_stat_q[rtrn_id].vld)
	// ) else begin
	// 	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:660:8
	// 	$fatal(1, "[l1 dcache wbuffer] evicting invalid transaction slot");
	// end
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:662:3
	// removed an assertion item
	// tx_valid1 : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(evict |-> |wbuffer_q[rtrn_ptr].valid)
	// ) else begin
	// 	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:664:8
	// 	$fatal(1, "[l1 dcache wbuffer] wbuffer entry corresponding to this transaction is invalid");
	// end
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:666:3
	// removed an assertion item
	// write_full : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(req_port_i.data_req |-> (req_port_o.data_gnt |-> !full || |wbuffer_hit_oh))
	// ) else begin
	// 	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:669:8
	// 	$fatal(1, "[l1 dcache wbuffer] cannot write if full or no hit");
	// end
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:671:3
	// removed an assertion item
	// unused0 : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	!req_port_i.tag_valid
	// ) else begin
	// 	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:673:8
	// 	$fatal(1, "[l1 dcache wbuffer] req_port_i.tag_valid should not be asserted");
	// end
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:675:3
	// removed an assertion item
	// unused1 : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	!req_port_i.kill_req
	// ) else begin
	// 	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:677:8
	// 	$fatal(1, "[l1 dcache wbuffer] req_port_i.kill_req should not be asserted");
	// end
	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:679:3
	genvar _gv_k_15;
	generate
		for (_gv_k_15 = 0; _gv_k_15 < CVA6Cfg[740-:32]; _gv_k_15 = _gv_k_15 + 1) begin : gen_assert1
			localparam k = _gv_k_15;
			genvar _gv_j_5;
			for (_gv_j_5 = 0; _gv_j_5 < (CVA6Cfg[17102-:32] / 8); _gv_j_5 = _gv_j_5 + 1) begin : gen_assert2
				localparam j = _gv_j_5;
				// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:681:7
				// removed an assertion item
				// byteStates : assert property (@(posedge clk_i) disable iff (!rst_ni)
				// 	({wbuffer_q[k].valid[j], wbuffer_q[k].dirty[j], wbuffer_q[k].txblock[j]} inside { 3'b000, 3'b110, 3'b101, 3'b111 })
				// ) else begin
				// 	// Trace: core/cache_subsystem/wt_dcache_wbuffer.sv:685:9
				// 	$fatal(1, "[l1 dcache wbuffer] byte %02d of wbuffer entry %02d has invalid state: valid=%01b, dirty=%01b, txblock=%01b", j, k, wbuffer_q[k].valid[j], wbuffer_q[k].dirty[j], wbuffer_q[k].txblock[j]);
				// end
			end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
