module fpu_wrap_9D6B1_657CE (
	clk_i,
	rst_ni,
	flush_i,
	fpu_valid_i,
	fpu_ready_o,
	fu_data_i,
	fpu_fmt_i,
	fpu_rm_i,
	fpu_frm_i,
	fpu_prec_i,
	fpu_trans_id_o,
	result_o,
	fpu_valid_o,
	fpu_exception_o
);
	// removed localparam type exception_t_exception_t_CVA6Cfg_type
	parameter [17102:0] exception_t_exception_t_CVA6Cfg = 0;
	// removed localparam type fu_data_t_fu_data_t_CVA6Cfg_type
	parameter [17102:0] fu_data_t_fu_data_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/fpu_wrap.sv:19:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/fpu_wrap.sv:20:20
	// removed localparam type exception_t
	// Trace: core/fpu_wrap.sv:21:20
	// removed localparam type fu_data_t
	// Trace: core/fpu_wrap.sv:23:5
	input wire clk_i;
	// Trace: core/fpu_wrap.sv:24:5
	input wire rst_ni;
	// Trace: core/fpu_wrap.sv:25:5
	input wire flush_i;
	// Trace: core/fpu_wrap.sv:26:5
	input wire fpu_valid_i;
	// Trace: core/fpu_wrap.sv:27:5
	output reg fpu_ready_o;
	// Trace: core/fpu_wrap.sv:28:5
	input wire [((((12 + fu_data_t_fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_fu_data_t_CVA6Cfg[16503-:32]) - 1:0] fu_data_i;
	// Trace: core/fpu_wrap.sv:30:5
	input wire [1:0] fpu_fmt_i;
	// Trace: core/fpu_wrap.sv:31:5
	input wire [2:0] fpu_rm_i;
	// Trace: core/fpu_wrap.sv:32:5
	input wire [2:0] fpu_frm_i;
	// Trace: core/fpu_wrap.sv:33:5
	input wire [6:0] fpu_prec_i;
	// Trace: core/fpu_wrap.sv:34:5
	output wire [CVA6Cfg[16503-:32] - 1:0] fpu_trans_id_o;
	// Trace: core/fpu_wrap.sv:35:5
	output wire [CVA6Cfg[16469-:32] - 1:0] result_o;
	// Trace: core/fpu_wrap.sv:36:5
	output wire fpu_valid_o;
	// Trace: core/fpu_wrap.sv:37:5
	output wire [((exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] fpu_exception_o;
	// Trace: core/fpu_wrap.sv:42:3
	reg state_q;
	reg state_d;
	// Trace: core/fpu_wrap.sv:47:3
	// removed localparam type ariane_pkg_fu_op
	// removed localparam type ariane_pkg_fu_t
	localparam [31:0] ariane_pkg_LAT_COMP_FP16 = 'd1;
	localparam [31:0] ariane_pkg_LAT_COMP_FP16ALT = 'd1;
	localparam [31:0] ariane_pkg_LAT_COMP_FP32 = 'd2;
	localparam [31:0] ariane_pkg_LAT_COMP_FP64 = 'd3;
	localparam [31:0] ariane_pkg_LAT_COMP_FP8 = 'd1;
	localparam [31:0] ariane_pkg_LAT_CONV = 'd2;
	localparam [31:0] ariane_pkg_LAT_DIVSQRT = 'd2;
	localparam [31:0] ariane_pkg_LAT_NONCOMP = 'd1;
	localparam [31:0] fpnew_pkg_OP_BITS = 4;
	// removed localparam type fpnew_pkg_operation_e
	// removed localparam type fpnew_pkg_pipe_config_t
	localparam [31:0] fpnew_pkg_NUM_FP_FORMATS = 5;
	localparam [31:0] fpnew_pkg_FP_FORMAT_BITS = 3;
	// removed localparam type fpnew_pkg_fp_format_e
	localparam [31:0] fpnew_pkg_NUM_INT_FORMATS = 4;
	localparam [31:0] fpnew_pkg_INT_FORMAT_BITS = 2;
	// removed localparam type fpnew_pkg_int_format_e
	// removed localparam type fpnew_pkg_unit_type_t
	// removed localparam type fpnew_pkg_fmt_logic_t
	// removed localparam type fpnew_pkg_ifmt_logic_t
	// removed localparam type fpnew_pkg_fpu_features_t
	localparam [31:0] fpnew_pkg_NUM_OPGROUPS = 4;
	// removed localparam type fpnew_pkg_fmt_unit_types_t
	// removed localparam type fpnew_pkg_opgrp_fmt_unit_types_t
	// removed localparam type fpnew_pkg_fmt_unsigned_t
	// removed localparam type fpnew_pkg_opgrp_fmt_unsigned_t
	// removed localparam type fpnew_pkg_fpu_implementation_t
	// removed localparam type fpnew_pkg_roundmode_e
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	function automatic [3:0] sv2v_cast_4CD2E;
		input reg [3:0] inp;
		sv2v_cast_4CD2E = inp;
	endfunction
	function automatic [2:0] sv2v_cast_5D882;
		input reg [2:0] inp;
		sv2v_cast_5D882 = inp;
	endfunction
	function automatic [1:0] sv2v_cast_CDB06;
		input reg [1:0] inp;
		sv2v_cast_CDB06 = inp;
	endfunction
	function automatic [4:0] sv2v_cast_5;
		input reg [4:0] inp;
		sv2v_cast_5 = inp;
	endfunction
	function automatic [3:0] sv2v_cast_4;
		input reg [3:0] inp;
		sv2v_cast_4 = inp;
	endfunction
	function automatic [((32'd4 * 32'd5) * 32) - 1:0] sv2v_cast_52F10;
		input reg [((32'd4 * 32'd5) * 32) - 1:0] inp;
		sv2v_cast_52F10 = inp;
	endfunction
	function automatic [((32'd4 * 32'd5) * 2) - 1:0] sv2v_cast_18D94;
		input reg [((32'd4 * 32'd5) * 2) - 1:0] inp;
		sv2v_cast_18D94 = inp;
	endfunction
	generate
		if (CVA6Cfg[16471]) begin : fpu_gen
			// Trace: core/fpu_wrap.sv:48:5
			wire [CVA6Cfg[16469-:32] - 1:0] operand_a_i;
			// Trace: core/fpu_wrap.sv:49:5
			wire [CVA6Cfg[16469-:32] - 1:0] operand_b_i;
			// Trace: core/fpu_wrap.sv:50:5
			wire [CVA6Cfg[16469-:32] - 1:0] operand_c_i;
			// Trace: core/fpu_wrap.sv:51:5
			assign operand_a_i = fu_data_i[(fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))) - ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[16469-:32] - 1)):(fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] - 1)];
			// Trace: core/fpu_wrap.sv:52:5
			assign operand_b_i = fu_data_i[(fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))) - ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[16469-:32] - 1)):(fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] - 1)];
			// Trace: core/fpu_wrap.sv:53:5
			assign operand_c_i = fu_data_i[(fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)) - ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] - 1) - (CVA6Cfg[16469-:32] - 1)):(fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] - 1)];
			// Trace: core/fpu_wrap.sv:58:5
			localparam OPBITS = fpnew_pkg_OP_BITS;
			// Trace: core/fpu_wrap.sv:59:5
			localparam FMTBITS = 3;
			// Trace: core/fpu_wrap.sv:60:5
			localparam IFMTBITS = 2;
			// Trace: core/fpu_wrap.sv:63:5
			localparam [42:0] FPU_FEATURES = {sv2v_cast_32($unsigned(CVA6Cfg[16469-:32])), CVA6Cfg[16540], 1'b1, sv2v_cast_5({CVA6Cfg[16552], CVA6Cfg[16551], CVA6Cfg[16550], CVA6Cfg[16548], CVA6Cfg[16549]}), sv2v_cast_4({CVA6Cfg[16540] && CVA6Cfg[16548], CVA6Cfg[16540] && (CVA6Cfg[16550] || CVA6Cfg[16549]), 2'b11})};
			// Trace: core/fpu_wrap.sv:77:5
			localparam [(((fpnew_pkg_NUM_OPGROUPS * fpnew_pkg_NUM_FP_FORMATS) * 32) + ((fpnew_pkg_NUM_OPGROUPS * fpnew_pkg_NUM_FP_FORMATS) * 2)) + 1:0] FPU_IMPLEMENTATION = {sv2v_cast_52F10({$unsigned(ariane_pkg_LAT_COMP_FP32), $unsigned(ariane_pkg_LAT_COMP_FP64), $unsigned(ariane_pkg_LAT_COMP_FP16), $unsigned(ariane_pkg_LAT_COMP_FP8), $unsigned(ariane_pkg_LAT_COMP_FP16ALT), {fpnew_pkg_NUM_FP_FORMATS {sv2v_cast_32($unsigned(ariane_pkg_LAT_DIVSQRT))}}, {fpnew_pkg_NUM_FP_FORMATS {sv2v_cast_32($unsigned(ariane_pkg_LAT_NONCOMP))}}, {fpnew_pkg_NUM_FP_FORMATS {sv2v_cast_32($unsigned(ariane_pkg_LAT_CONV))}}}), sv2v_cast_18D94({{fpnew_pkg_NUM_FP_FORMATS {2'd1}}, {fpnew_pkg_NUM_FP_FORMATS {2'd2}}, {fpnew_pkg_NUM_FP_FORMATS {2'd1}}, {fpnew_pkg_NUM_FP_FORMATS {2'd2}}}), 2'd3};
			// Trace: core/fpu_wrap.sv:102:5
			reg [CVA6Cfg[16469-:32] - 1:0] operand_a_d;
			reg [CVA6Cfg[16469-:32] - 1:0] operand_a_q;
			wire [CVA6Cfg[16469-:32] - 1:0] operand_a;
			// Trace: core/fpu_wrap.sv:103:5
			reg [CVA6Cfg[16469-:32] - 1:0] operand_b_d;
			reg [CVA6Cfg[16469-:32] - 1:0] operand_b_q;
			wire [CVA6Cfg[16469-:32] - 1:0] operand_b;
			// Trace: core/fpu_wrap.sv:104:5
			reg [CVA6Cfg[16469-:32] - 1:0] operand_c_d;
			reg [CVA6Cfg[16469-:32] - 1:0] operand_c_q;
			wire [CVA6Cfg[16469-:32] - 1:0] operand_c;
			// Trace: core/fpu_wrap.sv:105:5
			reg [3:0] fpu_op_d;
			reg [3:0] fpu_op_q;
			wire [3:0] fpu_op;
			// Trace: core/fpu_wrap.sv:106:5
			reg fpu_op_mod_d;
			reg fpu_op_mod_q;
			wire fpu_op_mod;
			// Trace: core/fpu_wrap.sv:107:5
			reg [2:0] fpu_srcfmt_d;
			reg [2:0] fpu_srcfmt_q;
			wire [2:0] fpu_srcfmt;
			// Trace: core/fpu_wrap.sv:108:5
			reg [2:0] fpu_dstfmt_d;
			reg [2:0] fpu_dstfmt_q;
			wire [2:0] fpu_dstfmt;
			// Trace: core/fpu_wrap.sv:109:5
			reg [1:0] fpu_ifmt_d;
			reg [1:0] fpu_ifmt_q;
			wire [1:0] fpu_ifmt;
			// Trace: core/fpu_wrap.sv:110:5
			reg [2:0] fpu_rm_d;
			reg [2:0] fpu_rm_q;
			wire [2:0] fpu_rm;
			// Trace: core/fpu_wrap.sv:111:5
			reg fpu_vec_op_d;
			reg fpu_vec_op_q;
			wire fpu_vec_op;
			// Trace: core/fpu_wrap.sv:113:5
			reg [CVA6Cfg[16503-:32] - 1:0] fpu_tag_d;
			reg [CVA6Cfg[16503-:32] - 1:0] fpu_tag_q;
			wire [CVA6Cfg[16503-:32] - 1:0] fpu_tag;
			// Trace: core/fpu_wrap.sv:115:5
			wire fpu_in_ready;
			reg fpu_in_valid;
			// Trace: core/fpu_wrap.sv:116:5
			wire fpu_out_ready;
			wire fpu_out_valid;
			// Trace: core/fpu_wrap.sv:118:5
			wire [4:0] fpu_status;
			// Trace: core/fpu_wrap.sv:121:5
			reg hold_inputs;
			// Trace: core/fpu_wrap.sv:122:5
			reg use_hold;
			// Trace: core/fpu_wrap.sv:128:5
			always @(*) begin : input_translation
				// Trace: core/fpu_wrap.sv:130:7
				reg vec_replication;
				// Trace: core/fpu_wrap.sv:131:7
				reg replicate_c;
				// Trace: core/fpu_wrap.sv:132:7
				reg check_ah;
				if (_sv2v_0)
					;
				// Trace: core/fpu_wrap.sv:135:7
				operand_a_d = operand_a_i;
				// Trace: core/fpu_wrap.sv:136:7
				operand_b_d = operand_b_i;
				// Trace: core/fpu_wrap.sv:137:7
				operand_c_d = operand_c_i;
				// Trace: core/fpu_wrap.sv:138:7
				fpu_op_d = sv2v_cast_4CD2E(6);
				// Trace: core/fpu_wrap.sv:139:7
				fpu_op_mod_d = 1'b0;
				// Trace: core/fpu_wrap.sv:140:7
				fpu_dstfmt_d = sv2v_cast_5D882('d0);
				// Trace: core/fpu_wrap.sv:141:7
				fpu_ifmt_d = sv2v_cast_CDB06(2);
				// Trace: core/fpu_wrap.sv:142:7
				fpu_rm_d = fpu_rm_i;
				// Trace: core/fpu_wrap.sv:143:7
				fpu_vec_op_d = fu_data_i[12 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((12 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) ? ((12 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))))) + 1 : ((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) - (12 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)] == 4'd8;
				// Trace: core/fpu_wrap.sv:144:7
				fpu_tag_d = fu_data_i[fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1-:fu_data_t_fu_data_t_CVA6Cfg[16503-:32]];
				// Trace: core/fpu_wrap.sv:145:7
				vec_replication = fpu_rm_i[0];
				// Trace: core/fpu_wrap.sv:146:7
				replicate_c = 1'b0;
				// Trace: core/fpu_wrap.sv:147:7
				check_ah = 1'b0;
				// Trace: core/fpu_wrap.sv:150:7
				if (!((3'b000 <= fpu_rm_i) && (3'b100 >= fpu_rm_i)))
					// Trace: core/fpu_wrap.sv:150:51
					fpu_rm_d = fpu_frm_i;
				if (fpu_vec_op_d)
					// Trace: core/fpu_wrap.sv:153:25
					fpu_rm_d = fpu_frm_i;
				(* full_case, parallel_case *)
				case (fpu_fmt_i)
					2'b00:
						// Trace: core/fpu_wrap.sv:158:18
						fpu_dstfmt_d = sv2v_cast_5D882('d0);
					2'b01:
						// Trace: core/fpu_wrap.sv:160:18
						fpu_dstfmt_d = (fpu_vec_op_d ? sv2v_cast_5D882('d4) : sv2v_cast_5D882('d1));
					2'b10:
						// Trace: core/fpu_wrap.sv:163:11
						if (!fpu_vec_op_d && (fpu_rm_i == 3'b101))
							// Trace: core/fpu_wrap.sv:163:52
							fpu_dstfmt_d = sv2v_cast_5D882('d4);
						else
							// Trace: core/fpu_wrap.sv:164:16
							fpu_dstfmt_d = sv2v_cast_5D882('d2);
					default:
						// Trace: core/fpu_wrap.sv:167:18
						fpu_dstfmt_d = sv2v_cast_5D882('d3);
				endcase
				// Trace: core/fpu_wrap.sv:171:7
				fpu_srcfmt_d = fpu_dstfmt_d;
				(* full_case, parallel_case *)
				case (fu_data_i[8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))-:((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) >= (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) ? ((8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))))) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) - (8 + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))))) + 1)])
					8'd104: begin
						// Trace: core/fpu_wrap.sv:177:11
						fpu_op_d = sv2v_cast_4CD2E(2);
						// Trace: core/fpu_wrap.sv:178:11
						replicate_c = 1'b1;
					end
					8'd105: begin
						// Trace: core/fpu_wrap.sv:182:11
						fpu_op_d = sv2v_cast_4CD2E(2);
						// Trace: core/fpu_wrap.sv:183:11
						fpu_op_mod_d = 1'b1;
						// Trace: core/fpu_wrap.sv:184:11
						replicate_c = 1'b1;
					end
					8'd106:
						// Trace: core/fpu_wrap.sv:187:18
						fpu_op_d = sv2v_cast_4CD2E(3);
					8'd107:
						// Trace: core/fpu_wrap.sv:189:18
						fpu_op_d = sv2v_cast_4CD2E(4);
					8'd108: begin
						// Trace: core/fpu_wrap.sv:192:11
						fpu_op_d = sv2v_cast_4CD2E(7);
						// Trace: core/fpu_wrap.sv:193:11
						fpu_rm_d = {1'b0, fpu_rm_i[1:0]};
						// Trace: core/fpu_wrap.sv:194:11
						check_ah = 1'b1;
					end
					8'd109:
						// Trace: core/fpu_wrap.sv:197:18
						fpu_op_d = sv2v_cast_4CD2E(5);
					8'd110:
						// Trace: core/fpu_wrap.sv:199:18
						fpu_op_d = sv2v_cast_4CD2E(0);
					8'd111: begin
						// Trace: core/fpu_wrap.sv:202:11
						fpu_op_d = sv2v_cast_4CD2E(0);
						// Trace: core/fpu_wrap.sv:203:11
						fpu_op_mod_d = 1'b1;
					end
					8'd112:
						// Trace: core/fpu_wrap.sv:206:18
						fpu_op_d = sv2v_cast_4CD2E(1);
					8'd113: begin
						// Trace: core/fpu_wrap.sv:209:11
						fpu_op_d = sv2v_cast_4CD2E(1);
						// Trace: core/fpu_wrap.sv:210:11
						fpu_op_mod_d = 1'b1;
					end
					8'd114: begin
						// Trace: core/fpu_wrap.sv:214:11
						fpu_op_d = sv2v_cast_4CD2E(11);
						// Trace: core/fpu_wrap.sv:216:11
						if (fpu_vec_op_d) begin
							// Trace: core/fpu_wrap.sv:217:13
							fpu_op_mod_d = fpu_rm_i[0];
							// Trace: core/fpu_wrap.sv:218:13
							vec_replication = 1'b0;
							// Trace: core/fpu_wrap.sv:219:13
							(* full_case, parallel_case *)
							case (fpu_fmt_i)
								2'b00:
									// Trace: core/fpu_wrap.sv:220:22
									fpu_ifmt_d = sv2v_cast_CDB06(2);
								2'b01, 2'b10:
									// Trace: core/fpu_wrap.sv:221:29
									fpu_ifmt_d = sv2v_cast_CDB06(1);
								2'b11:
									// Trace: core/fpu_wrap.sv:222:22
									fpu_ifmt_d = sv2v_cast_CDB06(0);
							endcase
						end
						else begin
							// Trace: core/fpu_wrap.sv:226:13
							fpu_op_mod_d = operand_c_i[0];
							// Trace: core/fpu_wrap.sv:227:13
							if (operand_c_i[1])
								// Trace: core/fpu_wrap.sv:227:33
								fpu_ifmt_d = sv2v_cast_CDB06(3);
							else
								// Trace: core/fpu_wrap.sv:228:18
								fpu_ifmt_d = sv2v_cast_CDB06(2);
						end
					end
					8'd115: begin
						// Trace: core/fpu_wrap.sv:233:11
						fpu_op_d = sv2v_cast_4CD2E(12);
						// Trace: core/fpu_wrap.sv:235:11
						if (fpu_vec_op_d) begin
							// Trace: core/fpu_wrap.sv:236:13
							fpu_op_mod_d = fpu_rm_i[0];
							// Trace: core/fpu_wrap.sv:237:13
							vec_replication = 1'b0;
							// Trace: core/fpu_wrap.sv:238:13
							(* full_case, parallel_case *)
							case (fpu_fmt_i)
								2'b00:
									// Trace: core/fpu_wrap.sv:239:22
									fpu_ifmt_d = sv2v_cast_CDB06(2);
								2'b01, 2'b10:
									// Trace: core/fpu_wrap.sv:240:29
									fpu_ifmt_d = sv2v_cast_CDB06(1);
								2'b11:
									// Trace: core/fpu_wrap.sv:241:22
									fpu_ifmt_d = sv2v_cast_CDB06(0);
							endcase
						end
						else begin
							// Trace: core/fpu_wrap.sv:245:13
							fpu_op_mod_d = operand_c_i[0];
							// Trace: core/fpu_wrap.sv:246:13
							if (operand_c_i[1])
								// Trace: core/fpu_wrap.sv:246:33
								fpu_ifmt_d = sv2v_cast_CDB06(3);
							else
								// Trace: core/fpu_wrap.sv:247:18
								fpu_ifmt_d = sv2v_cast_CDB06(2);
						end
					end
					8'd116: begin
						// Trace: core/fpu_wrap.sv:252:11
						fpu_op_d = sv2v_cast_4CD2E(10);
						// Trace: core/fpu_wrap.sv:254:11
						if (fpu_vec_op_d) begin
							// Trace: core/fpu_wrap.sv:255:13
							vec_replication = 1'b0;
							// Trace: core/fpu_wrap.sv:256:13
							(* full_case, parallel_case *)
							case (operand_c_i[1:0])
								2'b00:
									// Trace: core/fpu_wrap.sv:257:22
									fpu_srcfmt_d = sv2v_cast_5D882('d0);
								2'b01:
									// Trace: core/fpu_wrap.sv:258:22
									fpu_srcfmt_d = sv2v_cast_5D882('d4);
								2'b10:
									// Trace: core/fpu_wrap.sv:259:22
									fpu_srcfmt_d = sv2v_cast_5D882('d2);
								2'b11:
									// Trace: core/fpu_wrap.sv:260:22
									fpu_srcfmt_d = sv2v_cast_5D882('d3);
							endcase
						end
						else
							// Trace: core/fpu_wrap.sv:264:13
							(* full_case, parallel_case *)
							case (operand_c_i[2:0])
								3'b000:
									// Trace: core/fpu_wrap.sv:265:24
									fpu_srcfmt_d = sv2v_cast_5D882('d0);
								3'b001:
									// Trace: core/fpu_wrap.sv:266:24
									fpu_srcfmt_d = sv2v_cast_5D882('d1);
								3'b010:
									// Trace: core/fpu_wrap.sv:267:24
									fpu_srcfmt_d = sv2v_cast_5D882('d2);
								3'b110:
									// Trace: core/fpu_wrap.sv:268:24
									fpu_srcfmt_d = sv2v_cast_5D882('d4);
								3'b011:
									// Trace: core/fpu_wrap.sv:269:24
									fpu_srcfmt_d = sv2v_cast_5D882('d3);
								default:
									;
							endcase
					end
					8'd117: begin
						// Trace: core/fpu_wrap.sv:276:11
						fpu_op_d = sv2v_cast_4CD2E(6);
						// Trace: core/fpu_wrap.sv:277:11
						fpu_rm_d = {1'b0, fpu_rm_i[1:0]};
						// Trace: core/fpu_wrap.sv:278:11
						check_ah = 1'b1;
					end
					8'd118: begin
						// Trace: core/fpu_wrap.sv:282:11
						fpu_op_d = sv2v_cast_4CD2E(6);
						// Trace: core/fpu_wrap.sv:283:11
						fpu_rm_d = 3'b011;
						// Trace: core/fpu_wrap.sv:284:11
						fpu_op_mod_d = 1'b1;
						// Trace: core/fpu_wrap.sv:285:11
						check_ah = 1'b1;
						// Trace: core/fpu_wrap.sv:286:11
						vec_replication = 1'b0;
					end
					8'd119: begin
						// Trace: core/fpu_wrap.sv:290:11
						fpu_op_d = sv2v_cast_4CD2E(6);
						// Trace: core/fpu_wrap.sv:291:11
						fpu_rm_d = 3'b011;
						// Trace: core/fpu_wrap.sv:292:11
						check_ah = 1'b1;
						// Trace: core/fpu_wrap.sv:293:11
						vec_replication = 1'b0;
					end
					8'd120: begin
						// Trace: core/fpu_wrap.sv:297:11
						fpu_op_d = sv2v_cast_4CD2E(8);
						// Trace: core/fpu_wrap.sv:298:11
						fpu_rm_d = {1'b0, fpu_rm_i[1:0]};
						// Trace: core/fpu_wrap.sv:299:11
						check_ah = 1'b1;
					end
					8'd121: begin
						// Trace: core/fpu_wrap.sv:303:11
						fpu_op_d = sv2v_cast_4CD2E(9);
						// Trace: core/fpu_wrap.sv:304:11
						fpu_rm_d = {1'b0, fpu_rm_i[1:0]};
						// Trace: core/fpu_wrap.sv:307:11
						check_ah = 1'b1;
					end
					8'd122: begin
						// Trace: core/fpu_wrap.sv:311:11
						fpu_op_d = sv2v_cast_4CD2E(7);
						// Trace: core/fpu_wrap.sv:312:11
						fpu_rm_d = 3'b000;
					end
					8'd123: begin
						// Trace: core/fpu_wrap.sv:316:11
						fpu_op_d = sv2v_cast_4CD2E(7);
						// Trace: core/fpu_wrap.sv:317:11
						fpu_rm_d = 3'b001;
					end
					8'd124: begin
						// Trace: core/fpu_wrap.sv:321:11
						fpu_op_d = sv2v_cast_4CD2E(6);
						// Trace: core/fpu_wrap.sv:322:11
						fpu_rm_d = 3'b000;
					end
					8'd125: begin
						// Trace: core/fpu_wrap.sv:326:11
						fpu_op_d = sv2v_cast_4CD2E(6);
						// Trace: core/fpu_wrap.sv:327:11
						fpu_rm_d = 3'b001;
					end
					8'd126: begin
						// Trace: core/fpu_wrap.sv:331:11
						fpu_op_d = sv2v_cast_4CD2E(6);
						// Trace: core/fpu_wrap.sv:332:11
						fpu_rm_d = 3'b010;
					end
					8'd127: begin
						// Trace: core/fpu_wrap.sv:336:11
						fpu_op_d = sv2v_cast_4CD2E(8);
						// Trace: core/fpu_wrap.sv:337:11
						fpu_rm_d = 3'b010;
					end
					8'd128: begin
						// Trace: core/fpu_wrap.sv:341:11
						fpu_op_d = sv2v_cast_4CD2E(8);
						// Trace: core/fpu_wrap.sv:342:11
						fpu_op_mod_d = 1'b1;
						// Trace: core/fpu_wrap.sv:343:11
						fpu_rm_d = 3'b010;
					end
					8'd129: begin
						// Trace: core/fpu_wrap.sv:347:11
						fpu_op_d = sv2v_cast_4CD2E(8);
						// Trace: core/fpu_wrap.sv:348:11
						fpu_rm_d = 3'b001;
					end
					8'd130: begin
						// Trace: core/fpu_wrap.sv:352:11
						fpu_op_d = sv2v_cast_4CD2E(8);
						// Trace: core/fpu_wrap.sv:353:11
						fpu_op_mod_d = 1'b1;
						// Trace: core/fpu_wrap.sv:354:11
						fpu_rm_d = 3'b001;
					end
					8'd131: begin
						// Trace: core/fpu_wrap.sv:358:11
						fpu_op_d = sv2v_cast_4CD2E(8);
						// Trace: core/fpu_wrap.sv:359:11
						fpu_rm_d = 3'b000;
					end
					8'd132: begin
						// Trace: core/fpu_wrap.sv:363:11
						fpu_op_d = sv2v_cast_4CD2E(8);
						// Trace: core/fpu_wrap.sv:364:11
						fpu_op_mod_d = 1'b1;
						// Trace: core/fpu_wrap.sv:365:11
						fpu_rm_d = 3'b000;
					end
					8'd133: begin
						// Trace: core/fpu_wrap.sv:369:11
						fpu_op_d = sv2v_cast_4CD2E(13);
						// Trace: core/fpu_wrap.sv:370:11
						fpu_op_mod_d = fpu_rm_i[0];
						// Trace: core/fpu_wrap.sv:371:11
						vec_replication = 1'b0;
						// Trace: core/fpu_wrap.sv:372:11
						fpu_srcfmt_d = sv2v_cast_5D882('d0);
					end
					8'd134: begin
						// Trace: core/fpu_wrap.sv:376:11
						fpu_op_d = sv2v_cast_4CD2E(14);
						// Trace: core/fpu_wrap.sv:377:11
						fpu_op_mod_d = fpu_rm_i[0];
						// Trace: core/fpu_wrap.sv:378:11
						vec_replication = 1'b0;
						// Trace: core/fpu_wrap.sv:379:11
						fpu_srcfmt_d = sv2v_cast_5D882('d0);
					end
					8'd135: begin
						// Trace: core/fpu_wrap.sv:383:11
						fpu_op_d = sv2v_cast_4CD2E(13);
						// Trace: core/fpu_wrap.sv:384:11
						fpu_op_mod_d = fpu_rm_i[0];
						// Trace: core/fpu_wrap.sv:385:11
						vec_replication = 1'b0;
						// Trace: core/fpu_wrap.sv:386:11
						fpu_srcfmt_d = sv2v_cast_5D882('d1);
					end
					8'd136: begin
						// Trace: core/fpu_wrap.sv:390:11
						fpu_op_d = sv2v_cast_4CD2E(14);
						// Trace: core/fpu_wrap.sv:391:11
						fpu_op_mod_d = fpu_rm_i[0];
						// Trace: core/fpu_wrap.sv:392:11
						vec_replication = 1'b0;
						// Trace: core/fpu_wrap.sv:393:11
						fpu_srcfmt_d = sv2v_cast_5D882('d1);
					end
					default:
						;
				endcase
				if (!fpu_vec_op_d && check_ah) begin
					if (fpu_rm_i[2])
						// Trace: core/fpu_wrap.sv:400:55
						fpu_dstfmt_d = sv2v_cast_5D882('d4);
				end
				if (fpu_vec_op_d && vec_replication) begin
					begin
						// Trace: core/fpu_wrap.sv:404:9
						if (replicate_c)
							// Trace: core/fpu_wrap.sv:405:11
							(* full_case, parallel_case *)
							case (fpu_dstfmt_d)
								sv2v_cast_5D882('d0):
									// Trace: core/fpu_wrap.sv:406:30
									operand_c_d = (CVA6Cfg[16551] ? {2 {operand_c_i[31:0]}} : operand_c_i);
								sv2v_cast_5D882('d2), sv2v_cast_5D882('d4):
									// Trace: core/fpu_wrap.sv:408:13
									operand_c_d = (CVA6Cfg[16551] ? {4 {operand_c_i[15:0]}} : {2 {operand_c_i[15:0]}});
								sv2v_cast_5D882('d3):
									// Trace: core/fpu_wrap.sv:410:13
									operand_c_d = (CVA6Cfg[16551] ? {8 {operand_c_i[7:0]}} : {4 {operand_c_i[7:0]}});
								default:
									;
							endcase
						else
							// Trace: core/fpu_wrap.sv:414:11
							(* full_case, parallel_case *)
							case (fpu_dstfmt_d)
								sv2v_cast_5D882('d0):
									// Trace: core/fpu_wrap.sv:415:30
									operand_b_d = (CVA6Cfg[16551] ? {2 {operand_b_i[31:0]}} : operand_b_i);
								sv2v_cast_5D882('d2), sv2v_cast_5D882('d4):
									// Trace: core/fpu_wrap.sv:417:13
									operand_b_d = (CVA6Cfg[16551] ? {4 {operand_b_i[15:0]}} : {2 {operand_b_i[15:0]}});
								sv2v_cast_5D882('d3):
									// Trace: core/fpu_wrap.sv:419:13
									operand_b_d = (CVA6Cfg[16551] ? {8 {operand_b_i[7:0]}} : {4 {operand_b_i[7:0]}});
								default:
									;
							endcase
					end
				end
			end
			// Trace: core/fpu_wrap.sv:431:5
			always @(*) begin : p_inputFSM
				if (_sv2v_0)
					;
				// Trace: core/fpu_wrap.sv:433:7
				fpu_ready_o = 1'b0;
				// Trace: core/fpu_wrap.sv:434:7
				fpu_in_valid = 1'b0;
				// Trace: core/fpu_wrap.sv:435:7
				hold_inputs = 1'b0;
				// Trace: core/fpu_wrap.sv:436:7
				use_hold = 1'b0;
				// Trace: core/fpu_wrap.sv:437:7
				state_d = state_q;
				// Trace: core/fpu_wrap.sv:440:7
				(* full_case, parallel_case *)
				case (state_q)
					1'd0: begin
						// Trace: core/fpu_wrap.sv:443:11
						fpu_ready_o = 1'b1;
						// Trace: core/fpu_wrap.sv:444:11
						fpu_in_valid = fpu_valid_i;
						// Trace: core/fpu_wrap.sv:446:11
						if (fpu_valid_i & ~fpu_in_ready) begin
							// Trace: core/fpu_wrap.sv:447:13
							fpu_ready_o = 1'b0;
							// Trace: core/fpu_wrap.sv:448:13
							hold_inputs = 1'b1;
							// Trace: core/fpu_wrap.sv:449:13
							state_d = 1'd1;
						end
					end
					1'd1: begin
						// Trace: core/fpu_wrap.sv:454:11
						fpu_in_valid = 1'b1;
						// Trace: core/fpu_wrap.sv:455:11
						use_hold = 1'b1;
						// Trace: core/fpu_wrap.sv:457:11
						if (fpu_in_ready) begin
							// Trace: core/fpu_wrap.sv:458:13
							fpu_ready_o = 1'b1;
							// Trace: core/fpu_wrap.sv:459:13
							state_d = 1'd0;
						end
					end
					default:
						;
				endcase
				if (flush_i)
					// Trace: core/fpu_wrap.sv:468:9
					state_d = 1'd0;
			end
			// Trace: core/fpu_wrap.sv:474:5
			always @(posedge clk_i or negedge rst_ni) begin : fp_hold_reg
				// Trace: core/fpu_wrap.sv:475:7
				if (~rst_ni) begin
					// Trace: core/fpu_wrap.sv:476:9
					state_q <= 1'd0;
					// Trace: core/fpu_wrap.sv:477:9
					operand_a_q <= 1'sb0;
					// Trace: core/fpu_wrap.sv:478:9
					operand_b_q <= 1'sb0;
					// Trace: core/fpu_wrap.sv:479:9
					operand_c_q <= 1'sb0;
					// Trace: core/fpu_wrap.sv:480:9
					fpu_op_q <= 1'sb0;
					// Trace: core/fpu_wrap.sv:481:9
					fpu_op_mod_q <= 1'sb0;
					// Trace: core/fpu_wrap.sv:482:9
					fpu_srcfmt_q <= 1'sb0;
					// Trace: core/fpu_wrap.sv:483:9
					fpu_dstfmt_q <= 1'sb0;
					// Trace: core/fpu_wrap.sv:484:9
					fpu_ifmt_q <= 1'sb0;
					// Trace: core/fpu_wrap.sv:485:9
					fpu_rm_q <= 1'sb0;
					// Trace: core/fpu_wrap.sv:486:9
					fpu_vec_op_q <= 1'sb0;
					// Trace: core/fpu_wrap.sv:487:9
					fpu_tag_q <= 1'sb0;
				end
				else begin
					// Trace: core/fpu_wrap.sv:489:9
					state_q <= state_d;
					// Trace: core/fpu_wrap.sv:491:9
					if (hold_inputs) begin
						// Trace: core/fpu_wrap.sv:492:11
						operand_a_q <= operand_a_d;
						// Trace: core/fpu_wrap.sv:493:11
						operand_b_q <= operand_b_d;
						// Trace: core/fpu_wrap.sv:494:11
						operand_c_q <= operand_c_d;
						// Trace: core/fpu_wrap.sv:495:11
						fpu_op_q <= fpu_op_d;
						// Trace: core/fpu_wrap.sv:496:11
						fpu_op_mod_q <= fpu_op_mod_d;
						// Trace: core/fpu_wrap.sv:497:11
						fpu_srcfmt_q <= fpu_srcfmt_d;
						// Trace: core/fpu_wrap.sv:498:11
						fpu_dstfmt_q <= fpu_dstfmt_d;
						// Trace: core/fpu_wrap.sv:499:11
						fpu_ifmt_q <= fpu_ifmt_d;
						// Trace: core/fpu_wrap.sv:500:11
						fpu_rm_q <= fpu_rm_d;
						// Trace: core/fpu_wrap.sv:501:11
						fpu_vec_op_q <= fpu_vec_op_d;
						// Trace: core/fpu_wrap.sv:502:11
						fpu_tag_q <= fpu_tag_d;
					end
				end
			end
			// Trace: core/fpu_wrap.sv:508:5
			assign operand_a = (use_hold ? operand_a_q : operand_a_d);
			// Trace: core/fpu_wrap.sv:509:5
			assign operand_b = (use_hold ? operand_b_q : operand_b_d);
			// Trace: core/fpu_wrap.sv:510:5
			assign operand_c = (use_hold ? operand_c_q : operand_c_d);
			// Trace: core/fpu_wrap.sv:511:5
			assign fpu_op = (use_hold ? fpu_op_q : fpu_op_d);
			// Trace: core/fpu_wrap.sv:512:5
			assign fpu_op_mod = (use_hold ? fpu_op_mod_q : fpu_op_mod_d);
			// Trace: core/fpu_wrap.sv:513:5
			assign fpu_srcfmt = (use_hold ? fpu_srcfmt_q : fpu_srcfmt_d);
			// Trace: core/fpu_wrap.sv:514:5
			assign fpu_dstfmt = (use_hold ? fpu_dstfmt_q : fpu_dstfmt_d);
			// Trace: core/fpu_wrap.sv:515:5
			assign fpu_ifmt = (use_hold ? fpu_ifmt_q : fpu_ifmt_d);
			// Trace: core/fpu_wrap.sv:516:5
			assign fpu_rm = (use_hold ? fpu_rm_q : fpu_rm_d);
			// Trace: core/fpu_wrap.sv:517:5
			assign fpu_vec_op = (use_hold ? fpu_vec_op_q : fpu_vec_op_d);
			// Trace: core/fpu_wrap.sv:518:5
			assign fpu_tag = (use_hold ? fpu_tag_q : fpu_tag_d);
			// Trace: core/fpu_wrap.sv:521:5
			wire [(3 * CVA6Cfg[16469-:32]) - 1:0] fpu_operands;
			// Trace: core/fpu_wrap.sv:523:5
			assign fpu_operands[0+:CVA6Cfg[16469-:32]] = operand_a;
			// Trace: core/fpu_wrap.sv:524:5
			assign fpu_operands[CVA6Cfg[16469-:32]+:CVA6Cfg[16469-:32]] = operand_b;
			// Trace: core/fpu_wrap.sv:525:5
			assign fpu_operands[2 * CVA6Cfg[16469-:32]+:CVA6Cfg[16469-:32]] = operand_c;
			// Trace: core/fpu_wrap.sv:531:5
			fpnew_top_D81B0_8D9C0 #(
				.TagType_CVA6Cfg(CVA6Cfg),
				.TagType_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
				.Features(FPU_FEATURES),
				.Implementation(FPU_IMPLEMENTATION)
			) i_fpnew_bulk(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.operands_i(fpu_operands),
				.rnd_mode_i(fpu_rm),
				.op_i(sv2v_cast_4CD2E(fpu_op)),
				.op_mod_i(fpu_op_mod),
				.src_fmt_i(sv2v_cast_5D882(fpu_srcfmt)),
				.dst_fmt_i(sv2v_cast_5D882(fpu_dstfmt)),
				.int_fmt_i(sv2v_cast_CDB06(fpu_ifmt)),
				.vectorial_op_i(fpu_vec_op),
				.tag_i(fpu_tag),
				.simd_mask_i(1'b1),
				.in_valid_i(fpu_in_valid),
				.in_ready_o(fpu_in_ready),
				.flush_i(flush_i),
				.result_o(result_o),
				.status_o(fpu_status),
				.tag_o(fpu_trans_id_o),
				.out_valid_o(fpu_out_valid),
				.out_ready_i(fpu_out_ready),
				.busy_o()
			);
			// Trace: core/fpu_wrap.sv:560:5
			assign fpu_exception_o[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = {59'h000000000000000, fpu_status};
			// Trace: core/fpu_wrap.sv:561:5
			assign fpu_exception_o[0] = 1'b0;
			// Trace: core/fpu_wrap.sv:562:5
			assign fpu_exception_o[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = 1'sb0;
			// Trace: core/fpu_wrap.sv:565:5
			assign fpu_out_ready = 1'b1;
			// Trace: core/fpu_wrap.sv:568:5
			assign fpu_valid_o = fpu_out_valid;
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
