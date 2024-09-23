module fpnew_opgroup_multifmt_slice_983D9_76A82 (
	clk_i,
	rst_ni,
	operands_i,
	is_boxed_i,
	rnd_mode_i,
	op_i,
	op_mod_i,
	src_fmt_i,
	dst_fmt_i,
	int_fmt_i,
	vectorial_op_i,
	tag_i,
	simd_mask_i,
	in_valid_i,
	in_ready_o,
	flush_i,
	result_o,
	status_o,
	extension_bit_o,
	tag_o,
	out_valid_o,
	out_ready_i,
	busy_o
);
	// removed localparam type TagType_TagType_TagType_CVA6Cfg_type
	// removed localparam type TagType_TagType_TagType_config_pkg_NrMaxRules_type
	parameter [17102:0] TagType_TagType_TagType_CVA6Cfg = 0;
	parameter signed [31:0] TagType_TagType_TagType_config_pkg_NrMaxRules = 0;
	reg _sv2v_0;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:19:13
	// removed localparam type fpnew_pkg_opgroup_e
	parameter [1:0] OpGroup = 2'd3;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:20:13
	parameter [31:0] Width = 64;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:22:13
	localparam [31:0] fpnew_pkg_NUM_FP_FORMATS = 5;
	// removed localparam type fpnew_pkg_fmt_logic_t
	parameter [0:4] FpFmtConfig = 1'sb1;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:23:13
	localparam [31:0] fpnew_pkg_NUM_INT_FORMATS = 4;
	// removed localparam type fpnew_pkg_ifmt_logic_t
	parameter [0:3] IntFmtConfig = 1'sb1;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:24:13
	parameter [0:0] EnableVectors = 1'b1;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:25:13
	parameter [31:0] NumPipeRegs = 0;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:26:13
	// removed localparam type fpnew_pkg_pipe_config_t
	parameter [1:0] PipeConfig = 2'd0;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:27:38
	// removed localparam type TagType
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:29:14
	function automatic [31:0] fpnew_pkg_num_operands;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:379:48
		input reg [1:0] grp;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:380:5
		(* full_case, parallel_case *)
		case (grp)
			2'd0: fpnew_pkg_num_operands = 3;
			2'd1: fpnew_pkg_num_operands = 2;
			2'd2: fpnew_pkg_num_operands = 2;
			2'd3: fpnew_pkg_num_operands = 3;
			default: fpnew_pkg_num_operands = 0;
		endcase
	endfunction
	localparam [31:0] NUM_OPERANDS = fpnew_pkg_num_operands(OpGroup);
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:30:14
	localparam [31:0] NUM_FORMATS = fpnew_pkg_NUM_FP_FORMATS;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:31:14
	localparam [31:0] fpnew_pkg_FP_FORMAT_BITS = 3;
	// removed localparam type fpnew_pkg_fp_format_e
	// removed localparam type fpnew_pkg_fp_encoding_t
	localparam [319:0] fpnew_pkg_FP_ENCODINGS = 320'h8000000170000000b00000034000000050000000a00000005000000020000000800000007;
	function automatic [31:0] fpnew_pkg_fp_width;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:304:44
		input reg [2:0] fmt;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:305:5
		fpnew_pkg_fp_width = (fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 63-:32] + fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 31-:32]) + 1;
	endfunction
	function automatic signed [31:0] fpnew_pkg_maximum;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:296:34
		input reg signed [31:0] a;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:296:41
		input reg signed [31:0] b;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:297:5
		fpnew_pkg_maximum = (a > b ? a : b);
	endfunction
	function automatic [2:0] sv2v_cast_5D882;
		input reg [2:0] inp;
		sv2v_cast_5D882 = inp;
	endfunction
	function automatic [31:0] fpnew_pkg_max_fp_width;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:309:48
		input reg [0:4] cfg;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:310:5
		reg [31:0] res;
		begin
			res = 0;
			// Trace: core/cvfpu/src/fpnew_pkg.sv:311:5
			begin : sv2v_autoblock_1
				// Trace: core/cvfpu/src/fpnew_pkg.sv:311:10
				reg [31:0] i;
				// Trace: core/cvfpu/src/fpnew_pkg.sv:311:10
				for (i = 0; i < fpnew_pkg_NUM_FP_FORMATS; i = i + 1)
					if (cfg[i])
						// Trace: core/cvfpu/src/fpnew_pkg.sv:313:9
						res = $unsigned(fpnew_pkg_maximum(res, fpnew_pkg_fp_width(sv2v_cast_5D882(i))));
			end
			fpnew_pkg_max_fp_width = res;
		end
	endfunction
	function automatic signed [31:0] fpnew_pkg_minimum;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:292:34
		input reg signed [31:0] a;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:292:41
		input reg signed [31:0] b;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:293:5
		fpnew_pkg_minimum = (a < b ? a : b);
	endfunction
	function automatic [31:0] fpnew_pkg_min_fp_width;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:318:48
		input reg [0:4] cfg;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:319:5
		reg [31:0] res;
		begin
			res = fpnew_pkg_max_fp_width(cfg);
			// Trace: core/cvfpu/src/fpnew_pkg.sv:320:5
			begin : sv2v_autoblock_2
				// Trace: core/cvfpu/src/fpnew_pkg.sv:320:10
				reg [31:0] i;
				// Trace: core/cvfpu/src/fpnew_pkg.sv:320:10
				for (i = 0; i < fpnew_pkg_NUM_FP_FORMATS; i = i + 1)
					if (cfg[i])
						// Trace: core/cvfpu/src/fpnew_pkg.sv:322:9
						res = $unsigned(fpnew_pkg_minimum(res, fpnew_pkg_fp_width(sv2v_cast_5D882(i))));
			end
			fpnew_pkg_min_fp_width = res;
		end
	endfunction
	function automatic [31:0] fpnew_pkg_max_num_lanes;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:395:49
		input reg [31:0] width;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:395:69
		input reg [0:4] cfg;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:395:86
		input reg vec;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:396:5
		fpnew_pkg_max_num_lanes = (vec ? width / fpnew_pkg_min_fp_width(cfg) : 1);
	endfunction
	localparam [31:0] NUM_SIMD_LANES = fpnew_pkg_max_num_lanes(Width, FpFmtConfig, EnableVectors);
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:32:27
	// removed localparam type MaskType
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:34:3
	input wire clk_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:35:3
	input wire rst_ni;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:37:3
	input wire [(NUM_OPERANDS * Width) - 1:0] operands_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:38:3
	input wire [(NUM_FORMATS * NUM_OPERANDS) - 1:0] is_boxed_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:39:3
	// removed localparam type fpnew_pkg_roundmode_e
	input wire [2:0] rnd_mode_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:40:3
	localparam [31:0] fpnew_pkg_OP_BITS = 4;
	// removed localparam type fpnew_pkg_operation_e
	input wire [3:0] op_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:41:3
	input wire op_mod_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:42:3
	input wire [2:0] src_fmt_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:43:3
	input wire [2:0] dst_fmt_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:44:3
	localparam [31:0] fpnew_pkg_INT_FORMAT_BITS = 2;
	// removed localparam type fpnew_pkg_int_format_e
	input wire [1:0] int_fmt_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:45:3
	input wire vectorial_op_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:46:3
	input wire [TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1:0] tag_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:47:3
	input wire [NUM_SIMD_LANES - 1:0] simd_mask_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:49:3
	input wire in_valid_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:50:3
	output wire in_ready_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:51:3
	input wire flush_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:53:3
	output wire [Width - 1:0] result_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:54:3
	// removed localparam type fpnew_pkg_status_t
	output reg [4:0] status_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:55:3
	output wire extension_bit_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:56:3
	output wire [TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1:0] tag_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:58:3
	output wire out_valid_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:59:3
	input wire out_ready_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:61:3
	output wire busy_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:64:3
	localparam [31:0] MAX_FP_WIDTH = fpnew_pkg_max_fp_width(FpFmtConfig);
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:65:3
	function automatic [1:0] sv2v_cast_CDB06;
		input reg [1:0] inp;
		sv2v_cast_CDB06 = inp;
	endfunction
	function automatic [31:0] fpnew_pkg_int_width;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:88:45
		input reg [1:0] ifmt;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:89:5
		(* full_case, parallel_case *)
		case (ifmt)
			sv2v_cast_CDB06(0): fpnew_pkg_int_width = 8;
			sv2v_cast_CDB06(1): fpnew_pkg_int_width = 16;
			sv2v_cast_CDB06(2): fpnew_pkg_int_width = 32;
			sv2v_cast_CDB06(3): fpnew_pkg_int_width = 64;
			default: begin
				// Trace: core/cvfpu/src/fpnew_pkg.sv:96:9
				$display("Fatal [%0t] core/cvfpu/src/fpnew_pkg.sv:96:9 - fpnew_opgroup_multifmt_slice.fpnew_pkg_int_width.<unnamed_block>\n msg: ", $time, "Invalid INT format supplied");
				$finish(1);
				// Trace: core/cvfpu/src/fpnew_pkg.sv:100:9
				fpnew_pkg_int_width = sv2v_cast_CDB06(0);
			end
		endcase
	endfunction
	function automatic [31:0] fpnew_pkg_max_int_width;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:356:49
		input reg [0:3] cfg;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:357:5
		reg [31:0] res;
		begin
			res = 0;
			// Trace: core/cvfpu/src/fpnew_pkg.sv:358:5
			begin : sv2v_autoblock_3
				// Trace: core/cvfpu/src/fpnew_pkg.sv:358:10
				reg signed [31:0] ifmt;
				// Trace: core/cvfpu/src/fpnew_pkg.sv:358:10
				for (ifmt = 0; ifmt < fpnew_pkg_NUM_INT_FORMATS; ifmt = ifmt + 1)
					begin
						// Trace: core/cvfpu/src/fpnew_pkg.sv:359:7
						if (cfg[ifmt])
							// Trace: core/cvfpu/src/fpnew_pkg.sv:359:22
							res = fpnew_pkg_maximum(res, fpnew_pkg_int_width(sv2v_cast_CDB06(ifmt)));
					end
			end
			fpnew_pkg_max_int_width = res;
		end
	endfunction
	localparam [31:0] MAX_INT_WIDTH = fpnew_pkg_max_int_width(IntFmtConfig);
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:66:3
	localparam [31:0] NUM_LANES = fpnew_pkg_max_num_lanes(Width, FpFmtConfig, 1'b1);
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:67:3
	localparam [31:0] NUM_INT_FORMATS = fpnew_pkg_NUM_INT_FORMATS;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:69:3
	localparam [31:0] FMT_BITS = fpnew_pkg_maximum(3, 2);
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:71:3
	localparam [31:0] AUX_BITS = FMT_BITS + 2;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:73:3
	wire [NUM_LANES - 1:0] lane_in_ready;
	wire [NUM_LANES - 1:0] lane_out_valid;
	wire [NUM_LANES - 1:0] divsqrt_done;
	wire [NUM_LANES - 1:0] divsqrt_ready;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:74:3
	wire vectorial_op;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:75:3
	wire [FMT_BITS - 1:0] dst_fmt;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:76:3
	wire [AUX_BITS - 1:0] aux_data;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:79:3
	wire dst_fmt_is_int;
	wire dst_is_cpk;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:80:3
	wire [1:0] dst_vec_op;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:81:3
	wire [2:0] target_aux_d;
	wire [2:0] target_aux_q;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:82:3
	wire is_up_cast;
	wire is_down_cast;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:84:3
	wire [(NUM_FORMATS * Width) - 1:0] fmt_slice_result;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:85:3
	wire [(NUM_INT_FORMATS * Width) - 1:0] ifmt_slice_result;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:86:3
	wire [Width - 1:0] conv_slice_result;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:89:3
	wire [Width - 1:0] conv_target_d;
	wire [Width - 1:0] conv_target_q;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:91:3
	wire [(NUM_LANES * 5) - 1:0] lane_status;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:92:3
	wire [NUM_LANES - 1:0] lane_ext_bit;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:93:3
	wire [(NUM_LANES * TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1:0] lane_tags;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:94:3
	wire [NUM_LANES - 1:0] lane_masks;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:95:3
	wire [(NUM_LANES * AUX_BITS) - 1:0] lane_aux;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:96:3
	wire [NUM_LANES - 1:0] lane_busy;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:98:3
	wire result_is_vector;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:99:3
	wire [FMT_BITS - 1:0] result_fmt;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:100:3
	wire result_fmt_is_int;
	wire result_is_cpk;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:101:3
	wire [1:0] result_vec_op;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:103:3
	wire simd_synch_rdy;
	wire simd_synch_done;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:108:3
	assign in_ready_o = lane_in_ready[0];
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:109:3
	assign vectorial_op = vectorial_op_i & EnableVectors;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:112:3
	function automatic [3:0] sv2v_cast_4CD2E;
		input reg [3:0] inp;
		sv2v_cast_4CD2E = inp;
	endfunction
	assign dst_fmt_is_int = (OpGroup == 2'd3) & (op_i == sv2v_cast_4CD2E(11));
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:113:3
	assign dst_is_cpk = (OpGroup == 2'd3) & ((op_i == sv2v_cast_4CD2E(13)) || (op_i == sv2v_cast_4CD2E(14)));
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:115:3
	assign dst_vec_op = (OpGroup == 2'd3) & {op_i == sv2v_cast_4CD2E(14), op_mod_i};
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:117:3
	assign is_up_cast = fpnew_pkg_fp_width(dst_fmt_i) > fpnew_pkg_fp_width(src_fmt_i);
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:118:3
	assign is_down_cast = fpnew_pkg_fp_width(dst_fmt_i) < fpnew_pkg_fp_width(src_fmt_i);
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:121:3
	assign dst_fmt = (dst_fmt_is_int ? int_fmt_i : dst_fmt_i);
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:124:3
	assign aux_data = {dst_fmt_is_int, vectorial_op, dst_fmt};
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:125:3
	assign target_aux_d = {dst_vec_op, dst_is_cpk};
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:128:3
	generate
		if (OpGroup == 2'd3) begin : conv_target
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:129:5
			assign conv_target_d = (dst_is_cpk ? operands_i[2 * Width+:Width] : operands_i[Width+:Width]);
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:133:3
	reg [4:0] is_boxed_1op;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:134:3
	reg [9:0] is_boxed_2op;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:136:3
	always @(*) begin : boxed_2op
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:137:5
		begin : sv2v_autoblock_4
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:137:10
			reg signed [31:0] fmt;
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:137:10
			for (fmt = 0; fmt < NUM_FORMATS; fmt = fmt + 1)
				begin
					// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:138:7
					is_boxed_1op[fmt] = is_boxed_i[fmt * NUM_OPERANDS];
					// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:139:7
					is_boxed_2op[fmt * 2+:2] = is_boxed_i[(fmt * NUM_OPERANDS) + 1-:2];
				end
		end
	end
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:146:3
	genvar _gv_lane_2;
	localparam [0:4] fpnew_pkg_CPK_FORMATS = 5'b11000;
	function automatic [0:4] fpnew_pkg_get_conv_lane_formats;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:429:56
		input reg [31:0] width;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:430:56
		input reg [0:4] cfg;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:431:56
		input reg [31:0] lane_no;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:432:5
		reg [0:4] res;
		begin
			// Trace: core/cvfpu/src/fpnew_pkg.sv:433:5
			begin : sv2v_autoblock_5
				// Trace: core/cvfpu/src/fpnew_pkg.sv:433:10
				reg [31:0] fmt;
				// Trace: core/cvfpu/src/fpnew_pkg.sv:433:10
				for (fmt = 0; fmt < fpnew_pkg_NUM_FP_FORMATS; fmt = fmt + 1)
					begin
						// Trace: core/cvfpu/src/fpnew_pkg.sv:435:7
						res[fmt] = cfg[fmt] && (((width / fpnew_pkg_fp_width(sv2v_cast_5D882(fmt))) > lane_no) || (fpnew_pkg_CPK_FORMATS[fmt] && (lane_no < 2)));
					end
			end
			fpnew_pkg_get_conv_lane_formats = res;
		end
	endfunction
	function automatic [0:3] fpnew_pkg_get_conv_lane_int_formats;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:441:61
		input reg [31:0] width;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:442:61
		input reg [0:4] cfg;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:443:61
		input reg [0:3] icfg;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:444:61
		input reg [31:0] lane_no;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:445:5
		reg [0:3] res;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:446:5
		reg [0:4] lanefmts;
		begin
			// Trace: core/cvfpu/src/fpnew_pkg.sv:447:5
			res = 1'sb0;
			// Trace: core/cvfpu/src/fpnew_pkg.sv:448:5
			lanefmts = fpnew_pkg_get_conv_lane_formats(width, cfg, lane_no);
			// Trace: core/cvfpu/src/fpnew_pkg.sv:450:5
			begin : sv2v_autoblock_6
				// Trace: core/cvfpu/src/fpnew_pkg.sv:450:10
				reg [31:0] ifmt;
				// Trace: core/cvfpu/src/fpnew_pkg.sv:450:10
				for (ifmt = 0; ifmt < fpnew_pkg_NUM_INT_FORMATS; ifmt = ifmt + 1)
					begin : sv2v_autoblock_7
						// Trace: core/cvfpu/src/fpnew_pkg.sv:451:12
						reg [31:0] fmt;
						// Trace: core/cvfpu/src/fpnew_pkg.sv:451:12
						for (fmt = 0; fmt < fpnew_pkg_NUM_FP_FORMATS; fmt = fmt + 1)
							begin
								// Trace: core/cvfpu/src/fpnew_pkg.sv:453:9
								res[ifmt] = res[ifmt] | ((icfg[ifmt] && lanefmts[fmt]) && (fpnew_pkg_fp_width(sv2v_cast_5D882(fmt)) == fpnew_pkg_int_width(sv2v_cast_CDB06(ifmt))));
							end
					end
			end
			fpnew_pkg_get_conv_lane_int_formats = res;
		end
	endfunction
	function automatic [0:4] fpnew_pkg_get_lane_formats;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:400:51
		input reg [31:0] width;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:401:51
		input reg [0:4] cfg;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:402:51
		input reg [31:0] lane_no;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:403:5
		reg [0:4] res;
		begin
			// Trace: core/cvfpu/src/fpnew_pkg.sv:404:5
			begin : sv2v_autoblock_8
				// Trace: core/cvfpu/src/fpnew_pkg.sv:404:10
				reg [31:0] fmt;
				// Trace: core/cvfpu/src/fpnew_pkg.sv:404:10
				for (fmt = 0; fmt < fpnew_pkg_NUM_FP_FORMATS; fmt = fmt + 1)
					begin
						// Trace: core/cvfpu/src/fpnew_pkg.sv:406:7
						res[fmt] = cfg[fmt] & ((width / fpnew_pkg_fp_width(sv2v_cast_5D882(fmt))) > lane_no);
					end
			end
			fpnew_pkg_get_lane_formats = res;
		end
	endfunction
	function automatic [0:3] fpnew_pkg_get_lane_int_formats;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:411:56
		input reg [31:0] width;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:412:56
		input reg [0:4] cfg;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:413:56
		input reg [0:3] icfg;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:414:56
		input reg [31:0] lane_no;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:415:5
		reg [0:3] res;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:416:5
		reg [0:4] lanefmts;
		begin
			// Trace: core/cvfpu/src/fpnew_pkg.sv:417:5
			res = 1'sb0;
			// Trace: core/cvfpu/src/fpnew_pkg.sv:418:5
			lanefmts = fpnew_pkg_get_lane_formats(width, cfg, lane_no);
			// Trace: core/cvfpu/src/fpnew_pkg.sv:420:5
			begin : sv2v_autoblock_9
				// Trace: core/cvfpu/src/fpnew_pkg.sv:420:10
				reg [31:0] ifmt;
				// Trace: core/cvfpu/src/fpnew_pkg.sv:420:10
				for (ifmt = 0; ifmt < fpnew_pkg_NUM_INT_FORMATS; ifmt = ifmt + 1)
					begin : sv2v_autoblock_10
						// Trace: core/cvfpu/src/fpnew_pkg.sv:421:12
						reg [31:0] fmt;
						// Trace: core/cvfpu/src/fpnew_pkg.sv:421:12
						for (fmt = 0; fmt < fpnew_pkg_NUM_FP_FORMATS; fmt = fmt + 1)
							if (fpnew_pkg_fp_width(sv2v_cast_5D882(fmt)) == fpnew_pkg_int_width(sv2v_cast_CDB06(ifmt)))
								// Trace: core/cvfpu/src/fpnew_pkg.sv:424:11
								res[ifmt] = res[ifmt] | (icfg[ifmt] && lanefmts[fmt]);
					end
			end
			fpnew_pkg_get_lane_int_formats = res;
		end
	endfunction
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	function automatic [4:0] sv2v_cast_F930B;
		input reg [4:0] inp;
		sv2v_cast_F930B = inp;
	endfunction
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		for (_gv_lane_2 = 0; _gv_lane_2 < sv2v_cast_32_signed(NUM_LANES); _gv_lane_2 = _gv_lane_2 + 1) begin : gen_num_lanes
			localparam lane = _gv_lane_2;
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:147:5
			localparam [31:0] LANE = $unsigned(lane);
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:149:5
			localparam [0:4] ACTIVE_FORMATS = fpnew_pkg_get_lane_formats(Width, FpFmtConfig, LANE);
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:151:5
			localparam [0:3] ACTIVE_INT_FORMATS = fpnew_pkg_get_lane_int_formats(Width, FpFmtConfig, IntFmtConfig, LANE);
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:153:5
			localparam [31:0] MAX_WIDTH = fpnew_pkg_max_fp_width(ACTIVE_FORMATS);
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:156:5
			localparam [0:4] CONV_FORMATS = fpnew_pkg_get_conv_lane_formats(Width, FpFmtConfig, LANE);
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:158:5
			localparam [0:3] CONV_INT_FORMATS = fpnew_pkg_get_conv_lane_int_formats(Width, FpFmtConfig, IntFmtConfig, LANE);
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:160:5
			localparam [31:0] CONV_WIDTH = fpnew_pkg_max_fp_width(CONV_FORMATS);
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:163:5
			localparam [0:4] LANE_FORMATS = (OpGroup == 2'd3 ? CONV_FORMATS : ACTIVE_FORMATS);
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:165:5
			localparam [31:0] LANE_WIDTH = (OpGroup == 2'd3 ? CONV_WIDTH : MAX_WIDTH);
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:167:5
			wire [LANE_WIDTH - 1:0] local_result;
			if ((lane == 0) || EnableVectors) begin : active_lane
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:171:7
				wire in_valid;
				wire out_valid;
				wire out_ready;
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:173:7
				reg [(NUM_OPERANDS * LANE_WIDTH) - 1:0] local_operands;
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:174:7
				wire [LANE_WIDTH - 1:0] op_result;
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:175:7
				wire [4:0] op_status;
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:177:7
				assign in_valid = in_valid_i & ((lane == 0) | vectorial_op);
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:180:7
				always @(*) begin : prepare_input
					if (_sv2v_0)
						;
					// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:181:9
					begin : sv2v_autoblock_11
						// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:181:14
						reg [31:0] i;
						// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:181:14
						for (i = 0; i < NUM_OPERANDS; i = i + 1)
							begin
								// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:182:11
								local_operands[i * (OpGroup == 2'd3 ? fpnew_pkg_max_fp_width(fpnew_pkg_get_conv_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))) : fpnew_pkg_max_fp_width(fpnew_pkg_get_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))))+:(OpGroup == 2'd3 ? fpnew_pkg_max_fp_width(fpnew_pkg_get_conv_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))) : fpnew_pkg_max_fp_width(fpnew_pkg_get_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))))] = operands_i[i * Width+:Width] >> (LANE * fpnew_pkg_fp_width(src_fmt_i));
							end
					end
					if (OpGroup == 2'd3) begin
						begin
							// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:188:11
							if (op_i == sv2v_cast_4CD2E(12))
								// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:189:13
								local_operands[0+:(OpGroup == 2'd3 ? fpnew_pkg_max_fp_width(fpnew_pkg_get_conv_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))) : fpnew_pkg_max_fp_width(fpnew_pkg_get_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))))] = operands_i[0+:Width] >> (LANE * fpnew_pkg_int_width(int_fmt_i));
							else if (op_i == sv2v_cast_4CD2E(10)) begin
								begin
									// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:192:13
									if ((vectorial_op && op_mod_i) && is_up_cast)
										// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:193:15
										local_operands[0+:(OpGroup == 2'd3 ? fpnew_pkg_max_fp_width(fpnew_pkg_get_conv_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))) : fpnew_pkg_max_fp_width(fpnew_pkg_get_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))))] = operands_i[0+:Width] >> ((LANE * fpnew_pkg_fp_width(src_fmt_i)) + (MAX_FP_WIDTH / 2));
								end
							end
							else if (dst_is_cpk) begin
								begin
									// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:198:13
									if (lane == 1)
										// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:199:15
										local_operands[0+:(OpGroup == 2'd3 ? fpnew_pkg_max_fp_width(fpnew_pkg_get_conv_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))) : fpnew_pkg_max_fp_width(fpnew_pkg_get_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))))] = operands_i[Width + (LANE_WIDTH - 1)-:LANE_WIDTH];
								end
							end
						end
					end
				end
				if (OpGroup == 2'd0) begin : lane_instance
					// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:207:9
					fpnew_fma_multi_8F047_F0EFF #(
						.AuxType_AUX_BITS(AUX_BITS),
						.TagType_TagType_TagType_TagType_CVA6Cfg(TagType_TagType_TagType_CVA6Cfg),
						.TagType_TagType_TagType_TagType_config_pkg_NrMaxRules(TagType_TagType_TagType_config_pkg_NrMaxRules),
						.FpFmtConfig(LANE_FORMATS),
						.NumPipeRegs(NumPipeRegs),
						.PipeConfig(PipeConfig)
					) i_fpnew_fma_multi(
						.clk_i(clk_i),
						.rst_ni(rst_ni),
						.operands_i(local_operands),
						.is_boxed_i(is_boxed_i),
						.rnd_mode_i(rnd_mode_i),
						.op_i(op_i),
						.op_mod_i(op_mod_i),
						.src_fmt_i(src_fmt_i),
						.dst_fmt_i(dst_fmt_i),
						.tag_i(tag_i),
						.mask_i(simd_mask_i[lane]),
						.aux_i(aux_data),
						.in_valid_i(in_valid),
						.in_ready_o(lane_in_ready[lane]),
						.flush_i(flush_i),
						.result_o(op_result),
						.status_o(op_status),
						.extension_bit_o(lane_ext_bit[lane]),
						.tag_o(lane_tags[lane * TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]]),
						.mask_o(lane_masks[lane]),
						.aux_o(lane_aux[lane * AUX_BITS+:AUX_BITS]),
						.out_valid_o(out_valid),
						.out_ready_i(out_ready),
						.busy_o(lane_busy[lane])
					);
				end
				else if (OpGroup == 2'd1) begin : lane_instance
					// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:241:9
					fpnew_divsqrt_multi_CCEC6_ACD03 #(
						.AuxType_AUX_BITS(AUX_BITS),
						.TagType_TagType_TagType_TagType_CVA6Cfg(TagType_TagType_TagType_CVA6Cfg),
						.TagType_TagType_TagType_TagType_config_pkg_NrMaxRules(TagType_TagType_TagType_config_pkg_NrMaxRules),
						.FpFmtConfig(LANE_FORMATS),
						.NumPipeRegs(NumPipeRegs),
						.PipeConfig(PipeConfig)
					) i_fpnew_divsqrt_multi(
						.clk_i(clk_i),
						.rst_ni(rst_ni),
						.operands_i(local_operands[0+:(OpGroup == 2'd3 ? fpnew_pkg_max_fp_width(fpnew_pkg_get_conv_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))) : fpnew_pkg_max_fp_width(fpnew_pkg_get_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2))))) * 2]),
						.is_boxed_i(is_boxed_2op),
						.rnd_mode_i(rnd_mode_i),
						.op_i(op_i),
						.dst_fmt_i(dst_fmt_i),
						.tag_i(tag_i),
						.mask_i(simd_mask_i[lane]),
						.aux_i(aux_data),
						.in_valid_i(in_valid),
						.in_ready_o(lane_in_ready[lane]),
						.divsqrt_done_o(divsqrt_done[lane]),
						.simd_synch_done_i(simd_synch_done),
						.divsqrt_ready_o(divsqrt_ready[lane]),
						.simd_synch_rdy_i(simd_synch_rdy),
						.flush_i(flush_i),
						.result_o(op_result),
						.status_o(op_status),
						.extension_bit_o(lane_ext_bit[lane]),
						.tag_o(lane_tags[lane * TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]]),
						.mask_o(lane_masks[lane]),
						.aux_o(lane_aux[lane * AUX_BITS+:AUX_BITS]),
						.out_valid_o(out_valid),
						.out_ready_i(out_ready),
						.busy_o(lane_busy[lane])
					);
				end
				else if (OpGroup == 2'd2) begin
					;
				end
				else if (OpGroup == 2'd3) begin : lane_instance
					// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:278:9
					fpnew_cast_multi_0D619_08FB4 #(
						.AuxType_AUX_BITS(AUX_BITS),
						.TagType_TagType_TagType_TagType_CVA6Cfg(TagType_TagType_TagType_CVA6Cfg),
						.TagType_TagType_TagType_TagType_config_pkg_NrMaxRules(TagType_TagType_TagType_config_pkg_NrMaxRules),
						.FpFmtConfig(LANE_FORMATS),
						.IntFmtConfig(CONV_INT_FORMATS),
						.NumPipeRegs(NumPipeRegs),
						.PipeConfig(PipeConfig)
					) i_fpnew_cast_multi(
						.clk_i(clk_i),
						.rst_ni(rst_ni),
						.operands_i(local_operands[0+:(OpGroup == 2'd3 ? fpnew_pkg_max_fp_width(fpnew_pkg_get_conv_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))) : fpnew_pkg_max_fp_width(fpnew_pkg_get_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))))]),
						.is_boxed_i(is_boxed_1op),
						.rnd_mode_i(rnd_mode_i),
						.op_i(op_i),
						.op_mod_i(op_mod_i),
						.src_fmt_i(src_fmt_i),
						.dst_fmt_i(dst_fmt_i),
						.int_fmt_i(int_fmt_i),
						.tag_i(tag_i),
						.mask_i(simd_mask_i[lane]),
						.aux_i(aux_data),
						.in_valid_i(in_valid),
						.in_ready_o(lane_in_ready[lane]),
						.flush_i(flush_i),
						.result_o(op_result),
						.status_o(op_status),
						.extension_bit_o(lane_ext_bit[lane]),
						.tag_o(lane_tags[lane * TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]]),
						.mask_o(lane_masks[lane]),
						.aux_o(lane_aux[lane * AUX_BITS+:AUX_BITS]),
						.out_valid_o(out_valid),
						.out_ready_i(out_ready),
						.busy_o(lane_busy[lane])
					);
				end
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:315:7
				assign out_ready = out_ready_i & ((lane == 0) | result_is_vector);
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:316:7
				assign lane_out_valid[lane] = out_valid & ((lane == 0) | result_is_vector);
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:319:7
				assign local_result = (lane_out_valid[lane] ? op_result : {(OpGroup == 2'd3 ? fpnew_pkg_max_fp_width(sv2v_cast_F930B(fpnew_pkg_get_conv_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2))))) : fpnew_pkg_max_fp_width(sv2v_cast_F930B(fpnew_pkg_get_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))))) {lane_ext_bit[0]}});
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:320:7
				assign lane_status[lane * 5+:5] = (lane_out_valid[lane] ? op_status : {5 {1'sb0}});
			end
			else begin : inactive_lane
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:324:7
				assign lane_out_valid[lane] = 1'b0;
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:325:7
				assign lane_in_ready[lane] = 1'b0;
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:326:7
				assign local_result = {(OpGroup == 2'd3 ? fpnew_pkg_max_fp_width(sv2v_cast_F930B(fpnew_pkg_get_conv_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2))))) : fpnew_pkg_max_fp_width(sv2v_cast_F930B(fpnew_pkg_get_lane_formats(Width, FpFmtConfig, sv2v_cast_32($unsigned(_gv_lane_2)))))) {lane_ext_bit[0]}};
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:327:7
				assign lane_status[lane * 5+:5] = 1'sb0;
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:328:7
				assign lane_busy[lane] = 1'b0;
			end
			genvar _gv_fmt_10;
			for (_gv_fmt_10 = 0; _gv_fmt_10 < NUM_FORMATS; _gv_fmt_10 = _gv_fmt_10 + 1) begin : pack_fp_result
				localparam fmt = _gv_fmt_10;
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:334:7
				localparam [31:0] FP_WIDTH = fpnew_pkg_fp_width(sv2v_cast_5D882(fmt));
				if (ACTIVE_FORMATS[fmt]) begin : genblk1
					// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:337:9
					assign fmt_slice_result[(fmt * Width) + ((((LANE + 1) * FP_WIDTH) - 1) >= (LANE * FP_WIDTH) ? ((LANE + 1) * FP_WIDTH) - 1 : ((((LANE + 1) * FP_WIDTH) - 1) + ((((LANE + 1) * FP_WIDTH) - 1) >= (LANE * FP_WIDTH) ? ((((LANE + 1) * FP_WIDTH) - 1) - (LANE * FP_WIDTH)) + 1 : ((LANE * FP_WIDTH) - (((LANE + 1) * FP_WIDTH) - 1)) + 1)) - 1)-:((((LANE + 1) * FP_WIDTH) - 1) >= (LANE * FP_WIDTH) ? ((((LANE + 1) * FP_WIDTH) - 1) - (LANE * FP_WIDTH)) + 1 : ((LANE * FP_WIDTH) - (((LANE + 1) * FP_WIDTH) - 1)) + 1)] = local_result[FP_WIDTH - 1:0];
				end
				else if (((LANE + 1) * FP_WIDTH) <= Width) begin : genblk1
					// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:340:9
					assign fmt_slice_result[(fmt * Width) + ((((LANE + 1) * FP_WIDTH) - 1) >= (LANE * FP_WIDTH) ? ((LANE + 1) * FP_WIDTH) - 1 : ((((LANE + 1) * FP_WIDTH) - 1) + ((((LANE + 1) * FP_WIDTH) - 1) >= (LANE * FP_WIDTH) ? ((((LANE + 1) * FP_WIDTH) - 1) - (LANE * FP_WIDTH)) + 1 : ((LANE * FP_WIDTH) - (((LANE + 1) * FP_WIDTH) - 1)) + 1)) - 1)-:((((LANE + 1) * FP_WIDTH) - 1) >= (LANE * FP_WIDTH) ? ((((LANE + 1) * FP_WIDTH) - 1) - (LANE * FP_WIDTH)) + 1 : ((LANE * FP_WIDTH) - (((LANE + 1) * FP_WIDTH) - 1)) + 1)] = {((((LANE + 1) * FP_WIDTH) - 1) >= (LANE * FP_WIDTH) ? ((((LANE + 1) * FP_WIDTH) - 1) - (LANE * FP_WIDTH)) + 1 : ((LANE * FP_WIDTH) - (((LANE + 1) * FP_WIDTH) - 1)) + 1) {lane_ext_bit[LANE]}};
				end
				else if ((LANE * FP_WIDTH) < Width) begin : genblk1
					// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:343:9
					assign fmt_slice_result[(fmt * Width) + ((Width - 1) >= (LANE * FP_WIDTH) ? Width - 1 : ((Width - 1) + ((Width - 1) >= (LANE * FP_WIDTH) ? ((Width - 1) - (LANE * FP_WIDTH)) + 1 : ((LANE * FP_WIDTH) - (Width - 1)) + 1)) - 1)-:((Width - 1) >= (LANE * FP_WIDTH) ? ((Width - 1) - (LANE * FP_WIDTH)) + 1 : ((LANE * FP_WIDTH) - (Width - 1)) + 1)] = {((Width - 1) >= (LANE * FP_WIDTH) ? ((Width - 1) - (LANE * FP_WIDTH)) + 1 : ((LANE * FP_WIDTH) - (Width - 1)) + 1) {lane_ext_bit[LANE]}};
				end
			end
			if (OpGroup == 2'd3) begin : int_results_enabled
				genvar _gv_ifmt_5;
				for (_gv_ifmt_5 = 0; _gv_ifmt_5 < NUM_INT_FORMATS; _gv_ifmt_5 = _gv_ifmt_5 + 1) begin : pack_int_result
					localparam ifmt = _gv_ifmt_5;
					// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:352:9
					localparam [31:0] INT_WIDTH = fpnew_pkg_int_width(sv2v_cast_CDB06(ifmt));
					if (ACTIVE_INT_FORMATS[ifmt]) begin : genblk1
						// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:354:11
						assign ifmt_slice_result[(ifmt * Width) + ((((LANE + 1) * INT_WIDTH) - 1) >= (LANE * INT_WIDTH) ? ((LANE + 1) * INT_WIDTH) - 1 : ((((LANE + 1) * INT_WIDTH) - 1) + ((((LANE + 1) * INT_WIDTH) - 1) >= (LANE * INT_WIDTH) ? ((((LANE + 1) * INT_WIDTH) - 1) - (LANE * INT_WIDTH)) + 1 : ((LANE * INT_WIDTH) - (((LANE + 1) * INT_WIDTH) - 1)) + 1)) - 1)-:((((LANE + 1) * INT_WIDTH) - 1) >= (LANE * INT_WIDTH) ? ((((LANE + 1) * INT_WIDTH) - 1) - (LANE * INT_WIDTH)) + 1 : ((LANE * INT_WIDTH) - (((LANE + 1) * INT_WIDTH) - 1)) + 1)] = local_result[INT_WIDTH - 1:0];
					end
					else if (((LANE + 1) * INT_WIDTH) <= Width) begin : genblk1
						// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:357:11
						assign ifmt_slice_result[(ifmt * Width) + ((((LANE + 1) * INT_WIDTH) - 1) >= (LANE * INT_WIDTH) ? ((LANE + 1) * INT_WIDTH) - 1 : ((((LANE + 1) * INT_WIDTH) - 1) + ((((LANE + 1) * INT_WIDTH) - 1) >= (LANE * INT_WIDTH) ? ((((LANE + 1) * INT_WIDTH) - 1) - (LANE * INT_WIDTH)) + 1 : ((LANE * INT_WIDTH) - (((LANE + 1) * INT_WIDTH) - 1)) + 1)) - 1)-:((((LANE + 1) * INT_WIDTH) - 1) >= (LANE * INT_WIDTH) ? ((((LANE + 1) * INT_WIDTH) - 1) - (LANE * INT_WIDTH)) + 1 : ((LANE * INT_WIDTH) - (((LANE + 1) * INT_WIDTH) - 1)) + 1)] = 1'sb0;
					end
					else if ((LANE * INT_WIDTH) < Width) begin : genblk1
						// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:359:11
						assign ifmt_slice_result[(ifmt * Width) + ((Width - 1) >= (LANE * INT_WIDTH) ? Width - 1 : ((Width - 1) + ((Width - 1) >= (LANE * INT_WIDTH) ? ((Width - 1) - (LANE * INT_WIDTH)) + 1 : ((LANE * INT_WIDTH) - (Width - 1)) + 1)) - 1)-:((Width - 1) >= (LANE * INT_WIDTH) ? ((Width - 1) - (LANE * INT_WIDTH)) + 1 : ((LANE * INT_WIDTH) - (Width - 1)) + 1)] = 1'sb0;
					end
				end
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:366:3
	genvar _gv_fmt_11;
	generate
		for (_gv_fmt_11 = 0; _gv_fmt_11 < NUM_FORMATS; _gv_fmt_11 = _gv_fmt_11 + 1) begin : extend_fp_result
			localparam fmt = _gv_fmt_11;
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:368:5
			localparam [31:0] FP_WIDTH = fpnew_pkg_fp_width(sv2v_cast_5D882(fmt));
			if ((NUM_LANES * FP_WIDTH) < Width) begin : genblk1
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:370:7
				assign fmt_slice_result[(fmt * Width) + ((Width - 1) >= (NUM_LANES * FP_WIDTH) ? Width - 1 : ((Width - 1) + ((Width - 1) >= (NUM_LANES * FP_WIDTH) ? ((Width - 1) - (NUM_LANES * FP_WIDTH)) + 1 : ((NUM_LANES * FP_WIDTH) - (Width - 1)) + 1)) - 1)-:((Width - 1) >= (NUM_LANES * FP_WIDTH) ? ((Width - 1) - (NUM_LANES * FP_WIDTH)) + 1 : ((NUM_LANES * FP_WIDTH) - (Width - 1)) + 1)] = {((Width - 1) >= (NUM_LANES * FP_WIDTH) ? ((Width - 1) - (NUM_LANES * FP_WIDTH)) + 1 : ((NUM_LANES * FP_WIDTH) - (Width - 1)) + 1) {lane_ext_bit[0]}};
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:374:3
	genvar _gv_ifmt_6;
	generate
		for (_gv_ifmt_6 = 0; _gv_ifmt_6 < NUM_INT_FORMATS; _gv_ifmt_6 = _gv_ifmt_6 + 1) begin : int_results_disabled
			localparam ifmt = _gv_ifmt_6;
			if (OpGroup != 2'd3) begin : mute_int_result
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:376:7
				assign ifmt_slice_result[ifmt * Width+:Width] = 1'sb0;
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:381:3
	generate
		if (OpGroup == 2'd3) begin : target_regs
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:383:5
			reg [(0 >= NumPipeRegs ? ((1 - NumPipeRegs) * Width) + ((NumPipeRegs * Width) - 1) : ((NumPipeRegs + 1) * Width) - 1):(0 >= NumPipeRegs ? NumPipeRegs * Width : 0)] byp_pipe_target_q;
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:384:5
			reg [(0 >= NumPipeRegs ? ((1 - NumPipeRegs) * 3) + ((NumPipeRegs * 3) - 1) : ((NumPipeRegs + 1) * 3) - 1):(0 >= NumPipeRegs ? NumPipeRegs * 3 : 0)] byp_pipe_aux_q;
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:385:5
			reg [0:NumPipeRegs] byp_pipe_valid_q;
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:387:5
			wire [0:NumPipeRegs] byp_pipe_ready;
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:390:5
			wire [Width * 1:1] sv2v_tmp_341F5;
			assign sv2v_tmp_341F5 = conv_target_d;
			always @(*) byp_pipe_target_q[(0 >= NumPipeRegs ? 0 : NumPipeRegs) * Width+:Width] = sv2v_tmp_341F5;
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:391:5
			wire [3:1] sv2v_tmp_5E9D8;
			assign sv2v_tmp_5E9D8 = target_aux_d;
			always @(*) byp_pipe_aux_q[(0 >= NumPipeRegs ? 0 : NumPipeRegs) * 3+:3] = sv2v_tmp_5E9D8;
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:392:5
			wire [1:1] sv2v_tmp_967FD;
			assign sv2v_tmp_967FD = in_valid_i & vectorial_op;
			always @(*) byp_pipe_valid_q[0] = sv2v_tmp_967FD;
			genvar _gv_i_23;
			for (_gv_i_23 = 0; _gv_i_23 < NumPipeRegs; _gv_i_23 = _gv_i_23 + 1) begin : gen_bypass_pipeline
				localparam i = _gv_i_23;
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:396:7
				wire reg_ena;
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:400:7
				assign byp_pipe_ready[i] = byp_pipe_ready[i + 1] | ~byp_pipe_valid_q[i + 1];
				// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:402:331
				always @(posedge clk_i or negedge rst_ni)
					// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:402:409
					if (!rst_ni)
						// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:402:487
						byp_pipe_valid_q[i + 1] <= 1'b0;
					else
						// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:402:639
						byp_pipe_valid_q[i + 1] <= (flush_i ? 1'b0 : (byp_pipe_ready[i] ? byp_pipe_valid_q[i] : byp_pipe_valid_q[i + 1]));
				// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:404:7
				assign reg_ena = byp_pipe_ready[i] & byp_pipe_valid_q[i];
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:406:71
				always @(posedge clk_i or negedge rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:406:168
					if (!rst_ni)
						// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:406:265
						byp_pipe_target_q[(0 >= NumPipeRegs ? i + 1 : NumPipeRegs - (i + 1)) * Width+:Width] <= 1'sb0;
					else
						// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:406:455
						byp_pipe_target_q[(0 >= NumPipeRegs ? i + 1 : NumPipeRegs - (i + 1)) * Width+:Width] <= (reg_ena ? byp_pipe_target_q[(0 >= NumPipeRegs ? i : NumPipeRegs - i) * Width+:Width] : byp_pipe_target_q[(0 >= NumPipeRegs ? i + 1 : NumPipeRegs - (i + 1)) * Width+:Width]);
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:407:71
				always @(posedge clk_i or negedge rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:407:168
					if (!rst_ni)
						// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:407:265
						byp_pipe_aux_q[(0 >= NumPipeRegs ? i + 1 : NumPipeRegs - (i + 1)) * 3+:3] <= 1'sb0;
					else
						// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:407:455
						byp_pipe_aux_q[(0 >= NumPipeRegs ? i + 1 : NumPipeRegs - (i + 1)) * 3+:3] <= (reg_ena ? byp_pipe_aux_q[(0 >= NumPipeRegs ? i : NumPipeRegs - i) * 3+:3] : byp_pipe_aux_q[(0 >= NumPipeRegs ? i + 1 : NumPipeRegs - (i + 1)) * 3+:3]);
			end
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:410:5
			assign byp_pipe_ready[NumPipeRegs] = out_ready_i & result_is_vector;
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:412:5
			assign conv_target_q = byp_pipe_target_q[(0 >= NumPipeRegs ? NumPipeRegs : NumPipeRegs - NumPipeRegs) * Width+:Width];
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:415:5
			assign {result_vec_op, result_is_cpk} = byp_pipe_aux_q[(0 >= NumPipeRegs ? NumPipeRegs : NumPipeRegs - NumPipeRegs) * 3+:3];
		end
		else begin : no_conv
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:417:5
			assign {result_vec_op, result_is_cpk} = 1'sb0;
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:421:3
	assign simd_synch_rdy = (EnableVectors ? &divsqrt_ready : divsqrt_ready[0]);
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:422:3
	assign simd_synch_done = (EnableVectors ? &divsqrt_done : divsqrt_done[0]);
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:427:3
	assign {result_fmt_is_int, result_is_vector, result_fmt} = lane_aux[0+:AUX_BITS];
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:429:3
	assign result_o = (result_fmt_is_int ? ifmt_slice_result[result_fmt * Width+:Width] : fmt_slice_result[result_fmt * Width+:Width]);
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:433:3
	assign extension_bit_o = lane_ext_bit[0];
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:434:3
	assign tag_o = lane_tags[0+:TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]];
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:435:3
	assign busy_o = |lane_busy;
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:437:3
	assign out_valid_o = lane_out_valid[0];
	// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:440:3
	always @(*) begin : output_processing
		// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:442:5
		reg [4:0] temp_status;
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:443:5
		temp_status = 1'sb0;
		// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:444:5
		begin : sv2v_autoblock_12
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:444:10
			reg signed [31:0] i;
			// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:444:10
			for (i = 0; i < sv2v_cast_32_signed(NUM_LANES); i = i + 1)
				begin
					// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:445:7
					temp_status = temp_status | (lane_status[i * 5+:5] & {5 {lane_masks[i]}});
				end
		end
		// Trace: core/cvfpu/src/fpnew_opgroup_multifmt_slice.sv:446:5
		status_o = temp_status;
	end
	initial _sv2v_0 = 0;
endmodule
