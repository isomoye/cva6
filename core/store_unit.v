module store_unit_8E701_A94D3 (
	clk_i,
	rst_ni,
	flush_i,
	stall_st_pending_i,
	no_st_pending_o,
	store_buffer_empty_o,
	valid_i,
	lsu_ctrl_i,
	pop_st_o,
	commit_i,
	commit_ready_o,
	amo_valid_commit_i,
	valid_o,
	trans_id_o,
	result_o,
	ex_o,
	translation_req_o,
	vaddr_o,
	rvfi_mem_paddr_o,
	tinst_o,
	hs_ld_st_inst_o,
	hlvx_inst_o,
	paddr_i,
	ex_i,
	dtlb_hit_i,
	page_offset_i,
	page_offset_matches_o,
	amo_req_o,
	amo_resp_i,
	req_port_i,
	req_port_o
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
	// Trace: core/store_unit.sv:19:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/store_unit.sv:20:20
	// removed localparam type dcache_req_i_t
	// Trace: core/store_unit.sv:21:20
	// removed localparam type dcache_req_o_t
	// Trace: core/store_unit.sv:22:20
	// removed localparam type exception_t
	// Trace: core/store_unit.sv:23:20
	// removed localparam type lsu_ctrl_t
	// Trace: core/store_unit.sv:26:5
	input wire clk_i;
	// Trace: core/store_unit.sv:28:5
	input wire rst_ni;
	// Trace: core/store_unit.sv:30:5
	input wire flush_i;
	// Trace: core/store_unit.sv:32:5
	input wire stall_st_pending_i;
	// Trace: core/store_unit.sv:34:5
	output wire no_st_pending_o;
	// Trace: core/store_unit.sv:36:5
	output wire store_buffer_empty_o;
	// Trace: core/store_unit.sv:38:5
	input wire valid_i;
	// Trace: core/store_unit.sv:40:5
	input wire [((((((1 + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32]) - 1:0] lsu_ctrl_i;
	// Trace: core/store_unit.sv:42:5
	output reg pop_st_o;
	// Trace: core/store_unit.sv:44:5
	input wire commit_i;
	// Trace: core/store_unit.sv:46:5
	output wire commit_ready_o;
	// Trace: core/store_unit.sv:48:5
	input wire amo_valid_commit_i;
	// Trace: core/store_unit.sv:50:5
	output reg valid_o;
	// Trace: core/store_unit.sv:52:5
	output wire [CVA6Cfg[16503-:32] - 1:0] trans_id_o;
	// Trace: core/store_unit.sv:54:5
	output wire [CVA6Cfg[17102-:32] - 1:0] result_o;
	// Trace: core/store_unit.sv:56:5
	output reg [((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] ex_o;
	// Trace: core/store_unit.sv:58:5
	output reg translation_req_o;
	// Trace: core/store_unit.sv:60:5
	output wire [CVA6Cfg[17070-:32] - 1:0] vaddr_o;
	// Trace: core/store_unit.sv:62:5
	output wire [CVA6Cfg[17038-:32] - 1:0] rvfi_mem_paddr_o;
	// Trace: core/store_unit.sv:64:5
	output wire [31:0] tinst_o;
	// Trace: core/store_unit.sv:66:5
	output wire hs_ld_st_inst_o;
	// Trace: core/store_unit.sv:68:5
	output wire hlvx_inst_o;
	// Trace: core/store_unit.sv:70:5
	input wire [CVA6Cfg[17038-:32] - 1:0] paddr_i;
	// Trace: core/store_unit.sv:72:5
	input wire [((exception_t_exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] ex_i;
	// Trace: core/store_unit.sv:74:5
	input wire dtlb_hit_i;
	// Trace: core/store_unit.sv:76:5
	input wire [11:0] page_offset_i;
	// Trace: core/store_unit.sv:78:5
	output wire page_offset_matches_o;
	// Trace: core/store_unit.sv:80:5
	// removed localparam type ariane_pkg_amo_t
	// removed localparam type ariane_pkg_amo_req_t
	output wire [134:0] amo_req_o;
	// Trace: core/store_unit.sv:82:5
	// removed localparam type ariane_pkg_amo_resp_t
	input wire [64:0] amo_resp_i;
	// Trace: core/store_unit.sv:84:5
	input wire [(((2 + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[1124-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[17102-:32]) + dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg[900-:32]) - 1:0] req_port_i;
	// Trace: core/store_unit.sv:86:5
	output wire [(((((((dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1028-:32] + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[996-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32]) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[900-:32]) + 2) + (dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[17102-:32] / 8)) + 2) + dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg[1124-:32]) + 1:0] req_port_o;
	// Trace: core/store_unit.sv:90:3
	function automatic [CVA6Cfg[17102-:32] - 1:0] data_align;
		// Trace: core/store_unit.sv:90:52
		input reg [2:0] addr;
		// Trace: core/store_unit.sv:90:70
		input reg [63:0] data;
		// Trace: core/store_unit.sv:92:5
		reg [2:0] addr_tmp;
		// Trace: core/store_unit.sv:93:5
		reg [63:0] data_tmp;
		begin
			addr_tmp = {addr[2] && CVA6Cfg[16973], addr[1:0]};
			data_tmp = {64 {1'b0}};
			// Trace: core/store_unit.sv:94:5
			case (addr_tmp)
				3'b000:
					// Trace: core/store_unit.sv:95:15
					data_tmp[CVA6Cfg[17102-:32] - 1:0] = {data[CVA6Cfg[17102-:32] - 1:0]};
				3'b001:
					// Trace: core/store_unit.sv:97:7
					data_tmp[CVA6Cfg[17102-:32] - 1:0] = {data[CVA6Cfg[17102-:32] - 9:0], data[CVA6Cfg[17102-:32] - 1:CVA6Cfg[17102-:32] - 8]};
				3'b010:
					// Trace: core/store_unit.sv:99:7
					data_tmp[CVA6Cfg[17102-:32] - 1:0] = {data[CVA6Cfg[17102-:32] - 17:0], data[CVA6Cfg[17102-:32] - 1:CVA6Cfg[17102-:32] - 16]};
				3'b011:
					// Trace: core/store_unit.sv:101:7
					data_tmp[CVA6Cfg[17102-:32] - 1:0] = {data[CVA6Cfg[17102-:32] - 25:0], data[CVA6Cfg[17102-:32] - 1:CVA6Cfg[17102-:32] - 24]};
				default:
					if (CVA6Cfg[16973])
						// Trace: core/store_unit.sv:104:9
						case (addr_tmp)
							3'b100:
								// Trace: core/store_unit.sv:105:20
								data_tmp = {data[31:0], data[63:32]};
							3'b101:
								// Trace: core/store_unit.sv:106:20
								data_tmp = {data[23:0], data[63:24]};
							3'b110:
								// Trace: core/store_unit.sv:107:20
								data_tmp = {data[15:0], data[63:16]};
							3'b111:
								// Trace: core/store_unit.sv:108:20
								data_tmp = {data[7:0], data[63:8]};
							default:
								// Trace: core/store_unit.sv:109:20
								data_tmp = {data[63:0]};
						endcase
			endcase
			data_align = data_tmp[CVA6Cfg[17102-:32] - 1:0];
		end
	endfunction
	// Trace: core/store_unit.sv:117:3
	assign result_o = lsu_ctrl_i[lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))-:((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))) >= ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))) ? ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))) - ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))) + 1 : (((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) + 1)];
	// Trace: core/store_unit.sv:119:3
	reg [1:0] state_d;
	reg [1:0] state_q;
	// Trace: core/store_unit.sv:128:3
	wire st_ready;
	// Trace: core/store_unit.sv:129:3
	reg st_valid;
	// Trace: core/store_unit.sv:130:3
	reg st_valid_without_flush;
	// Trace: core/store_unit.sv:131:3
	wire instr_is_amo;
	// Trace: core/store_unit.sv:132:3
	// removed localparam type ariane_pkg_fu_op
	function automatic ariane_pkg_is_amo;
		// Trace: core/include/ariane_pkg.sv:632:35
		input reg [7:0] op;
		// Trace: core/include/ariane_pkg.sv:633:5
		case (op)
			8'd61, 8'd62, 8'd63, 8'd64, 8'd65, 8'd66, 8'd67, 8'd68, 8'd69, 8'd70, 8'd71, 8'd72, 8'd73, 8'd74, 8'd75, 8'd76, 8'd77, 8'd78, 8'd79, 8'd80, 8'd81, 8'd82:
				// Trace: core/include/ariane_pkg.sv:656:9
				ariane_pkg_is_amo = 1'b1;
			default: ariane_pkg_is_amo = 1'b0;
		endcase
	endfunction
	assign instr_is_amo = ariane_pkg_is_amo(lsu_ctrl_i[lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7-:((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) >= (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) ? ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) + 1 : ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7)) + 1)]);
	// Trace: core/store_unit.sv:134:3
	reg [CVA6Cfg[17102-:32] - 1:0] st_data_n;
	reg [CVA6Cfg[17102-:32] - 1:0] st_data_q;
	// Trace: core/store_unit.sv:135:3
	reg [(CVA6Cfg[17102-:32] / 8) - 1:0] st_be_n;
	reg [(CVA6Cfg[17102-:32] / 8) - 1:0] st_be_q;
	// Trace: core/store_unit.sv:136:3
	reg [1:0] st_data_size_n;
	reg [1:0] st_data_size_q;
	// Trace: core/store_unit.sv:137:3
	reg [3:0] amo_op_d;
	reg [3:0] amo_op_q;
	// Trace: core/store_unit.sv:139:3
	reg [CVA6Cfg[16503-:32] - 1:0] trans_id_n;
	reg [CVA6Cfg[16503-:32] - 1:0] trans_id_q;
	// Trace: core/store_unit.sv:142:3
	assign vaddr_o = lsu_ctrl_i[lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))-:((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) >= (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))))) + 1)];
	// Trace: core/store_unit.sv:143:3
	assign hs_ld_st_inst_o = (CVA6Cfg[16543] ? lsu_ctrl_i[4 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))] : 1'b0);
	// Trace: core/store_unit.sv:144:3
	assign hlvx_inst_o = (CVA6Cfg[16543] ? lsu_ctrl_i[3 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))] : 1'b0);
	// Trace: core/store_unit.sv:145:3
	assign tinst_o = (CVA6Cfg[16543] ? lsu_ctrl_i[36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))-:((36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) >= (4 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) ? ((36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) - (4 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((4 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))))) - (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) + 1)] : {32 {1'sb0}});
	// Trace: core/store_unit.sv:146:3
	assign trans_id_o = trans_id_q;
	// Trace: core/store_unit.sv:148:3
	always @(*) begin : store_control
		if (_sv2v_0)
			;
		// Trace: core/store_unit.sv:149:5
		translation_req_o = 1'b0;
		// Trace: core/store_unit.sv:150:5
		valid_o = 1'b0;
		// Trace: core/store_unit.sv:151:5
		st_valid = 1'b0;
		// Trace: core/store_unit.sv:152:5
		st_valid_without_flush = 1'b0;
		// Trace: core/store_unit.sv:153:5
		pop_st_o = 1'b0;
		// Trace: core/store_unit.sv:154:5
		ex_o = ex_i;
		// Trace: core/store_unit.sv:155:5
		trans_id_n = lsu_ctrl_i[lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] - 1-:lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32]];
		// Trace: core/store_unit.sv:156:5
		state_d = state_q;
		// Trace: core/store_unit.sv:158:5
		case (state_q)
			2'd0:
				// Trace: core/store_unit.sv:161:9
				if (valid_i) begin
					// Trace: core/store_unit.sv:162:11
					state_d = 2'd1;
					// Trace: core/store_unit.sv:163:11
					translation_req_o = 1'b1;
					// Trace: core/store_unit.sv:164:11
					pop_st_o = 1'b1;
					// Trace: core/store_unit.sv:167:11
					if (CVA6Cfg[16367] && !dtlb_hit_i) begin
						// Trace: core/store_unit.sv:168:13
						state_d = 2'd2;
						// Trace: core/store_unit.sv:169:13
						pop_st_o = 1'b0;
					end
					if (!st_ready) begin
						// Trace: core/store_unit.sv:173:13
						state_d = 2'd3;
						// Trace: core/store_unit.sv:174:13
						pop_st_o = 1'b0;
					end
				end
			2'd1: begin
				// Trace: core/store_unit.sv:180:9
				valid_o = 1'b1;
				// Trace: core/store_unit.sv:182:9
				if (!flush_i)
					// Trace: core/store_unit.sv:182:23
					st_valid = 1'b1;
				// Trace: core/store_unit.sv:184:9
				st_valid_without_flush = 1'b1;
				if (((valid_i && CVA6Cfg[16547]) && !instr_is_amo) || (valid_i && !CVA6Cfg[16547])) begin
					// Trace: core/store_unit.sv:189:11
					translation_req_o = 1'b1;
					// Trace: core/store_unit.sv:190:11
					state_d = 2'd1;
					// Trace: core/store_unit.sv:191:11
					pop_st_o = 1'b1;
					// Trace: core/store_unit.sv:193:11
					if (CVA6Cfg[16367] && !dtlb_hit_i) begin
						// Trace: core/store_unit.sv:194:13
						state_d = 2'd2;
						// Trace: core/store_unit.sv:195:13
						pop_st_o = 1'b0;
					end
					if (!st_ready) begin
						// Trace: core/store_unit.sv:199:13
						state_d = 2'd3;
						// Trace: core/store_unit.sv:200:13
						pop_st_o = 1'b0;
					end
				end
				else
					// Trace: core/store_unit.sv:204:11
					state_d = 2'd0;
			end
			2'd3: begin
				// Trace: core/store_unit.sv:211:9
				translation_req_o = 1'b1;
				// Trace: core/store_unit.sv:213:9
				if (st_ready && dtlb_hit_i)
					// Trace: core/store_unit.sv:214:11
					state_d = 2'd0;
			end
			default:
				// Trace: core/store_unit.sv:222:9
				if ((state_q == 2'd2) && CVA6Cfg[16367]) begin
					// Trace: core/store_unit.sv:223:11
					translation_req_o = 1'b1;
					// Trace: core/store_unit.sv:225:11
					if (dtlb_hit_i)
						// Trace: core/store_unit.sv:226:13
						state_d = 2'd0;
				end
		endcase
		if (ex_i[0] && (state_q != 2'd0)) begin
			// Trace: core/store_unit.sv:238:7
			pop_st_o = 1'b1;
			// Trace: core/store_unit.sv:239:7
			st_valid = 1'b0;
			// Trace: core/store_unit.sv:240:7
			state_d = 2'd0;
			// Trace: core/store_unit.sv:241:7
			valid_o = 1'b1;
		end
		if (flush_i)
			// Trace: core/store_unit.sv:244:18
			state_d = 2'd0;
	end
	// Trace: core/store_unit.sv:251:3
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
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/store_unit.sv:252:5
		st_be_n = lsu_ctrl_i[(lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)-:(((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)) >= (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) ? (((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)) - (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))) + 1 : ((12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) - ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))) + 1)];
		// Trace: core/store_unit.sv:254:5
		st_data_n = (CVA6Cfg[16547] && instr_is_amo ? lsu_ctrl_i[(lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))) - ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[17102-:32] - 1)):(lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] - 1)] : data_align(lsu_ctrl_i[(lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] - 3):(lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] - 1)], {{64 - CVA6Cfg[17102-:32] {1'b0}}, lsu_ctrl_i[lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))-:((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))) >= ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))) ? ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))) - ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)))) + 1 : (((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (12 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0))) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11)))) + 1)]}));
		// Trace: core/store_unit.sv:256:5
		st_data_size_n = ariane_pkg_extract_transfer_size(lsu_ctrl_i[lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7-:((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) >= (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) ? ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) + 1 : ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7)) + 1)]);
		// Trace: core/store_unit.sv:258:5
		if (CVA6Cfg[16547])
			// Trace: core/store_unit.sv:259:7
			case (lsu_ctrl_i[lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7-:((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) >= (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) ? ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0)) + 1 : ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 0) - (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 7)) + 1)])
				8'd61, 8'd62:
					// Trace: core/store_unit.sv:260:31
					amo_op_d = 4'b0001;
				8'd63, 8'd64:
					// Trace: core/store_unit.sv:261:31
					amo_op_d = 4'b0010;
				8'd65, 8'd74:
					// Trace: core/store_unit.sv:262:31
					amo_op_d = 4'b0011;
				8'd66, 8'd75:
					// Trace: core/store_unit.sv:263:31
					amo_op_d = 4'b0100;
				8'd67, 8'd76:
					// Trace: core/store_unit.sv:264:31
					amo_op_d = 4'b0101;
				8'd68, 8'd77:
					// Trace: core/store_unit.sv:265:31
					amo_op_d = 4'b0110;
				8'd69, 8'd78:
					// Trace: core/store_unit.sv:266:31
					amo_op_d = 4'b0111;
				8'd70, 8'd79:
					// Trace: core/store_unit.sv:267:31
					amo_op_d = 4'b1000;
				8'd71, 8'd80:
					// Trace: core/store_unit.sv:268:31
					amo_op_d = 4'b1001;
				8'd72, 8'd81:
					// Trace: core/store_unit.sv:269:31
					amo_op_d = 4'b1010;
				8'd73, 8'd82:
					// Trace: core/store_unit.sv:270:31
					amo_op_d = 4'b1011;
				default:
					// Trace: core/store_unit.sv:271:31
					amo_op_d = 4'b0000;
			endcase
		else
			// Trace: core/store_unit.sv:274:7
			amo_op_d = 4'b0000;
	end
	// Trace: core/store_unit.sv:278:3
	wire store_buffer_valid;
	wire amo_buffer_valid;
	// Trace: core/store_unit.sv:279:3
	wire store_buffer_ready;
	wire amo_buffer_ready;
	// Trace: core/store_unit.sv:282:3
	assign store_buffer_valid = st_valid & (!CVA6Cfg[16547] || (amo_op_q == 4'b0000));
	// Trace: core/store_unit.sv:283:3
	assign amo_buffer_valid = st_valid & (CVA6Cfg[16547] && (amo_op_q != 4'b0000));
	// Trace: core/store_unit.sv:285:3
	assign st_ready = store_buffer_ready & amo_buffer_ready;
	// Trace: core/store_unit.sv:290:3
	store_buffer_AA2E5_FDA9C #(
		.dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg(dcache_req_i_t_dcache_req_i_t_dcache_req_i_t_CVA6Cfg),
		.dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg(dcache_req_o_t_dcache_req_o_t_dcache_req_o_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) store_buffer_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i),
		.stall_st_pending_i(stall_st_pending_i),
		.no_st_pending_o(no_st_pending_o),
		.store_buffer_empty_o(store_buffer_empty_o),
		.page_offset_i(page_offset_i),
		.page_offset_matches_o(page_offset_matches_o),
		.commit_i(commit_i),
		.commit_ready_o(commit_ready_o),
		.ready_o(store_buffer_ready),
		.valid_i(store_buffer_valid),
		.valid_without_flush_i(st_valid_without_flush),
		.paddr_i(paddr_i),
		.rvfi_mem_paddr_o(rvfi_mem_paddr_o),
		.data_i(st_data_q),
		.be_i(st_be_q),
		.data_size_i(st_data_size_q),
		.req_port_i(req_port_i),
		.req_port_o(req_port_o)
	);
	// Trace: core/store_unit.sv:322:3
	generate
		if (CVA6Cfg[16547]) begin : genblk1
			// Trace: core/store_unit.sv:323:5
			amo_buffer #(.CVA6Cfg(CVA6Cfg)) i_amo_buffer(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.flush_i(flush_i),
				.valid_i(amo_buffer_valid),
				.ready_o(amo_buffer_ready),
				.paddr_i(paddr_i),
				.amo_op_i(amo_op_q),
				.data_i(st_data_q),
				.data_size_i(st_data_size_q),
				.amo_req_o(amo_req_o),
				.amo_resp_i(amo_resp_i),
				.amo_valid_commit_i(amo_valid_commit_i),
				.no_st_pending_i(no_st_pending_o)
			);
		end
		else begin : genblk1
			// Trace: core/store_unit.sv:341:5
			assign amo_buffer_ready = 1'sb1;
			// Trace: core/store_unit.sv:342:5
			assign amo_req_o = 1'sb0;
		end
	endgenerate
	// Trace: core/store_unit.sv:348:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/store_unit.sv:349:5
		if (~rst_ni) begin
			// Trace: core/store_unit.sv:350:7
			state_q <= 2'd0;
			// Trace: core/store_unit.sv:351:7
			st_be_q <= 1'sb0;
			// Trace: core/store_unit.sv:352:7
			st_data_q <= 1'sb0;
			// Trace: core/store_unit.sv:353:7
			st_data_size_q <= 1'sb0;
			// Trace: core/store_unit.sv:354:7
			trans_id_q <= 1'sb0;
			// Trace: core/store_unit.sv:355:7
			amo_op_q <= 4'b0000;
		end
		else begin
			// Trace: core/store_unit.sv:357:7
			state_q <= state_d;
			// Trace: core/store_unit.sv:358:7
			st_be_q <= st_be_n;
			// Trace: core/store_unit.sv:359:7
			st_data_q <= st_data_n;
			// Trace: core/store_unit.sv:360:7
			trans_id_q <= trans_id_n;
			// Trace: core/store_unit.sv:361:7
			st_data_size_q <= st_data_size_n;
			// Trace: core/store_unit.sv:362:7
			amo_op_q <= amo_op_d;
		end
	initial _sv2v_0 = 0;
endmodule
