module fpnew_cast_multi_0D619_08FB4 (
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
	tag_i,
	mask_i,
	aux_i,
	in_valid_i,
	in_ready_o,
	flush_i,
	result_o,
	status_o,
	extension_bit_o,
	tag_o,
	mask_o,
	aux_o,
	out_valid_o,
	out_ready_i,
	busy_o
);
	// removed localparam type AuxType_AUX_BITS_type
	parameter [31:0] AuxType_AUX_BITS = 0;
	// removed localparam type TagType_TagType_TagType_TagType_CVA6Cfg_type
	// removed localparam type TagType_TagType_TagType_TagType_config_pkg_NrMaxRules_type
	parameter [17102:0] TagType_TagType_TagType_TagType_CVA6Cfg = 0;
	parameter signed [31:0] TagType_TagType_TagType_TagType_config_pkg_NrMaxRules = 0;
	reg _sv2v_0;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:19:13
	localparam [31:0] fpnew_pkg_NUM_FP_FORMATS = 5;
	// removed localparam type fpnew_pkg_fmt_logic_t
	parameter [0:4] FpFmtConfig = 1'sb1;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:20:13
	localparam [31:0] fpnew_pkg_NUM_INT_FORMATS = 4;
	// removed localparam type fpnew_pkg_ifmt_logic_t
	parameter [0:3] IntFmtConfig = 1'sb1;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:22:13
	parameter [31:0] NumPipeRegs = 0;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:23:13
	// removed localparam type fpnew_pkg_pipe_config_t
	parameter [1:0] PipeConfig = 2'd0;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:24:38
	// removed localparam type TagType
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:25:38
	// removed localparam type AuxType
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:27:14
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
	localparam [31:0] fpnew_pkg_INT_FORMAT_BITS = 2;
	// removed localparam type fpnew_pkg_int_format_e
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
				$display("Fatal [%0t] core/cvfpu/src/fpnew_pkg.sv:96:9 - fpnew_cast_multi.fpnew_pkg_int_width.<unnamed_block>\n msg: ", $time, "Invalid INT format supplied");
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
			begin : sv2v_autoblock_2
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
	localparam [31:0] WIDTH = fpnew_pkg_maximum(fpnew_pkg_max_fp_width(FpFmtConfig), fpnew_pkg_max_int_width(IntFmtConfig));
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:29:14
	localparam [31:0] NUM_FORMATS = fpnew_pkg_NUM_FP_FORMATS;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:31:3
	input wire clk_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:32:3
	input wire rst_ni;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:34:3
	input wire [WIDTH - 1:0] operands_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:35:3
	input wire [4:0] is_boxed_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:36:3
	// removed localparam type fpnew_pkg_roundmode_e
	input wire [2:0] rnd_mode_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:37:3
	localparam [31:0] fpnew_pkg_OP_BITS = 4;
	// removed localparam type fpnew_pkg_operation_e
	input wire [3:0] op_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:38:3
	input wire op_mod_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:39:3
	input wire [2:0] src_fmt_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:40:3
	input wire [2:0] dst_fmt_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:41:3
	input wire [1:0] int_fmt_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:42:3
	input wire [TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1:0] tag_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:43:3
	input wire mask_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:44:3
	input wire [AuxType_AUX_BITS - 1:0] aux_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:46:3
	input wire in_valid_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:47:3
	output wire in_ready_o;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:48:3
	input wire flush_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:50:3
	output wire [WIDTH - 1:0] result_o;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:51:3
	// removed localparam type fpnew_pkg_status_t
	output wire [4:0] status_o;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:52:3
	output wire extension_bit_o;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:53:3
	output wire [TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1:0] tag_o;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:54:3
	output wire mask_o;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:55:3
	output wire [AuxType_AUX_BITS - 1:0] aux_o;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:57:3
	output wire out_valid_o;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:58:3
	input wire out_ready_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:60:3
	output wire busy_o;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:66:3
	localparam [31:0] NUM_INT_FORMATS = fpnew_pkg_NUM_INT_FORMATS;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:67:3
	localparam [31:0] MAX_INT_WIDTH = fpnew_pkg_max_int_width(IntFmtConfig);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:69:3
	function automatic [31:0] fpnew_pkg_exp_bits;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:327:44
		input reg [2:0] fmt;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:328:5
		fpnew_pkg_exp_bits = fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 63-:32];
	endfunction
	function automatic [31:0] fpnew_pkg_man_bits;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:332:44
		input reg [2:0] fmt;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:333:5
		fpnew_pkg_man_bits = fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 31-:32];
	endfunction
	function automatic [63:0] fpnew_pkg_super_format;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:341:49
		input reg [0:4] cfg;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:342:5
		reg [63:0] res;
		begin
			// Trace: core/cvfpu/src/fpnew_pkg.sv:343:5
			res = 1'sb0;
			// Trace: core/cvfpu/src/fpnew_pkg.sv:344:5
			begin : sv2v_autoblock_3
				// Trace: core/cvfpu/src/fpnew_pkg.sv:344:10
				reg [31:0] fmt;
				// Trace: core/cvfpu/src/fpnew_pkg.sv:344:10
				for (fmt = 0; fmt < fpnew_pkg_NUM_FP_FORMATS; fmt = fmt + 1)
					if (cfg[fmt]) begin
						// Trace: core/cvfpu/src/fpnew_pkg.sv:346:9
						res[63-:32] = $unsigned(fpnew_pkg_maximum(res[63-:32], fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt))));
						// Trace: core/cvfpu/src/fpnew_pkg.sv:347:9
						res[31-:32] = $unsigned(fpnew_pkg_maximum(res[31-:32], fpnew_pkg_man_bits(sv2v_cast_5D882(fmt))));
					end
			end
			fpnew_pkg_super_format = res;
		end
	endfunction
	localparam [63:0] SUPER_FORMAT = fpnew_pkg_super_format(FpFmtConfig);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:71:3
	localparam [31:0] SUPER_EXP_BITS = SUPER_FORMAT[63-:32];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:72:3
	localparam [31:0] SUPER_MAN_BITS = SUPER_FORMAT[31-:32];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:73:3
	localparam [31:0] SUPER_BIAS = (2 ** (SUPER_EXP_BITS - 1)) - 1;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:76:3
	localparam [31:0] INT_MAN_WIDTH = fpnew_pkg_maximum(SUPER_MAN_BITS + 1, MAX_INT_WIDTH);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:78:3
	localparam [31:0] LZC_RESULT_WIDTH = $clog2(INT_MAN_WIDTH);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:81:3
	localparam [31:0] INT_EXP_WIDTH = fpnew_pkg_maximum($clog2(MAX_INT_WIDTH), fpnew_pkg_maximum(SUPER_EXP_BITS, $clog2(SUPER_BIAS + SUPER_MAN_BITS))) + 1;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:84:3
	localparam NUM_INP_REGS = (PipeConfig == 2'd0 ? NumPipeRegs : (PipeConfig == 2'd3 ? (NumPipeRegs + 1) / 3 : 0));
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:89:3
	localparam NUM_MID_REGS = (PipeConfig == 2'd2 ? NumPipeRegs : (PipeConfig == 2'd3 ? (NumPipeRegs + 2) / 3 : 0));
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:94:3
	localparam NUM_OUT_REGS = (PipeConfig == 2'd1 ? NumPipeRegs : (PipeConfig == 2'd3 ? NumPipeRegs / 3 : 0));
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:104:3
	wire [WIDTH - 1:0] operands_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:105:3
	wire [4:0] is_boxed_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:106:3
	wire op_mod_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:107:3
	wire [2:0] src_fmt_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:108:3
	wire [2:0] dst_fmt_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:109:3
	wire [1:0] int_fmt_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:112:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * WIDTH) + ((NUM_INP_REGS * WIDTH) - 1) : ((NUM_INP_REGS + 1) * WIDTH) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * WIDTH : 0)] inp_pipe_operands_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:113:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0)] inp_pipe_is_boxed_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:114:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0)] inp_pipe_rnd_mode_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:115:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_OP_BITS) + ((NUM_INP_REGS * fpnew_pkg_OP_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_OP_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_OP_BITS : 0)] inp_pipe_op_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:116:3
	reg [0:NUM_INP_REGS] inp_pipe_op_mod_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:117:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS) + ((NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_FP_FORMAT_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS : 0)] inp_pipe_src_fmt_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:118:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS) + ((NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_FP_FORMAT_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS : 0)] inp_pipe_dst_fmt_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:119:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_INT_FORMAT_BITS) + ((NUM_INP_REGS * fpnew_pkg_INT_FORMAT_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_INT_FORMAT_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_INT_FORMAT_BITS : 0)] inp_pipe_int_fmt_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:120:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) + ((NUM_INP_REGS * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1) : ((NUM_INP_REGS + 1) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] : 0)] inp_pipe_tag_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:121:3
	reg [0:NUM_INP_REGS] inp_pipe_mask_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:122:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * AuxType_AUX_BITS) + ((NUM_INP_REGS * AuxType_AUX_BITS) - 1) : ((NUM_INP_REGS + 1) * AuxType_AUX_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * AuxType_AUX_BITS : 0)] inp_pipe_aux_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:123:3
	reg [0:NUM_INP_REGS] inp_pipe_valid_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:125:3
	wire [0:NUM_INP_REGS] inp_pipe_ready;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:128:3
	wire [WIDTH * 1:1] sv2v_tmp_933AE;
	assign sv2v_tmp_933AE = operands_i;
	always @(*) inp_pipe_operands_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * WIDTH+:WIDTH] = sv2v_tmp_933AE;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:129:3
	wire [5:1] sv2v_tmp_7038A;
	assign sv2v_tmp_7038A = is_boxed_i;
	always @(*) inp_pipe_is_boxed_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * NUM_FORMATS+:NUM_FORMATS] = sv2v_tmp_7038A;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:130:3
	wire [3:1] sv2v_tmp_AA272;
	assign sv2v_tmp_AA272 = rnd_mode_i;
	always @(*) inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3+:3] = sv2v_tmp_AA272;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:131:3
	wire [4:1] sv2v_tmp_14A3A;
	assign sv2v_tmp_14A3A = op_i;
	always @(*) inp_pipe_op_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] = sv2v_tmp_14A3A;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:132:3
	wire [1:1] sv2v_tmp_72E02;
	assign sv2v_tmp_72E02 = op_mod_i;
	always @(*) inp_pipe_op_mod_q[0] = sv2v_tmp_72E02;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:133:3
	wire [3:1] sv2v_tmp_8EF42;
	assign sv2v_tmp_8EF42 = src_fmt_i;
	always @(*) inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] = sv2v_tmp_8EF42;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:134:3
	wire [3:1] sv2v_tmp_B0F12;
	assign sv2v_tmp_B0F12 = dst_fmt_i;
	always @(*) inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] = sv2v_tmp_B0F12;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:135:3
	wire [2:1] sv2v_tmp_C9BC4;
	assign sv2v_tmp_C9BC4 = int_fmt_i;
	always @(*) inp_pipe_int_fmt_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_INT_FORMAT_BITS+:fpnew_pkg_INT_FORMAT_BITS] = sv2v_tmp_C9BC4;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:136:3
	wire [TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] * 1:1] sv2v_tmp_DD316;
	assign sv2v_tmp_DD316 = tag_i;
	always @(*) inp_pipe_tag_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] = sv2v_tmp_DD316;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:137:3
	wire [1:1] sv2v_tmp_AE6A6;
	assign sv2v_tmp_AE6A6 = mask_i;
	always @(*) inp_pipe_mask_q[0] = sv2v_tmp_AE6A6;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:138:3
	wire [AuxType_AUX_BITS * 1:1] sv2v_tmp_10176;
	assign sv2v_tmp_10176 = aux_i;
	always @(*) inp_pipe_aux_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] = sv2v_tmp_10176;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:139:3
	wire [1:1] sv2v_tmp_CFC25;
	assign sv2v_tmp_CFC25 = in_valid_i;
	always @(*) inp_pipe_valid_q[0] = sv2v_tmp_CFC25;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:141:3
	assign in_ready_o = inp_pipe_ready[0];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:143:3
	genvar _gv_i_58;
	function automatic [3:0] sv2v_cast_4CD2E;
		input reg [3:0] inp;
		sv2v_cast_4CD2E = inp;
	endfunction
	function automatic [TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1:0] sv2v_cast_65D85;
		input reg [TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1:0] inp;
		sv2v_cast_65D85 = inp;
	endfunction
	function automatic [AuxType_AUX_BITS - 1:0] sv2v_cast_533F1;
		input reg [AuxType_AUX_BITS - 1:0] inp;
		sv2v_cast_533F1 = inp;
	endfunction
	generate
		for (_gv_i_58 = 0; _gv_i_58 < NUM_INP_REGS; _gv_i_58 = _gv_i_58 + 1) begin : gen_input_pipeline
			localparam i = _gv_i_58;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:145:5
			wire reg_ena;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:149:5
			assign inp_pipe_ready[i] = inp_pipe_ready[i + 1] | ~inp_pipe_valid_q[i + 1];
			// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_cast_multi.sv:151:329
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_cast_multi.sv:151:407
				if (!rst_ni)
					// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_cast_multi.sv:151:485
					inp_pipe_valid_q[i + 1] <= 1'b0;
				else
					// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_cast_multi.sv:151:637
					inp_pipe_valid_q[i + 1] <= (flush_i ? 1'b0 : (inp_pipe_ready[i] ? inp_pipe_valid_q[i] : inp_pipe_valid_q[i + 1]));
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:153:5
			assign reg_ena = inp_pipe_ready[i] & inp_pipe_valid_q[i];
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:155:71
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:155:168
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:155:265
					inp_pipe_operands_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * WIDTH+:WIDTH] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:155:455
					inp_pipe_operands_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * WIDTH+:WIDTH] <= (reg_ena ? inp_pipe_operands_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * WIDTH+:WIDTH] : inp_pipe_operands_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * WIDTH+:WIDTH]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:156:71
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:156:168
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:156:265
					inp_pipe_is_boxed_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS+:NUM_FORMATS] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:156:455
					inp_pipe_is_boxed_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS+:NUM_FORMATS] <= (reg_ena ? inp_pipe_is_boxed_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * NUM_FORMATS+:NUM_FORMATS] : inp_pipe_is_boxed_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS+:NUM_FORMATS]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:157:83
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:157:180
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:157:277
					inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3+:3] <= 3'b000;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:157:467
					inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3+:3] <= (reg_ena ? inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 3+:3] : inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3+:3]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:158:85
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:158:182
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:158:279
					inp_pipe_op_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] <= sv2v_cast_4CD2E(0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:158:469
					inp_pipe_op_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] <= (reg_ena ? inp_pipe_op_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] : inp_pipe_op_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:159:71
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:159:168
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:159:265
					inp_pipe_op_mod_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:159:455
					inp_pipe_op_mod_q[i + 1] <= (reg_ena ? inp_pipe_op_mod_q[i] : inp_pipe_op_mod_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:160:95
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:160:192
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:160:289
					inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= sv2v_cast_5D882(0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:160:479
					inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= (reg_ena ? inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] : inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:161:95
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:161:192
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:161:289
					inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= sv2v_cast_5D882(0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:161:479
					inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= (reg_ena ? inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] : inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:162:96
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:162:193
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:162:290
					inp_pipe_int_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_INT_FORMAT_BITS+:fpnew_pkg_INT_FORMAT_BITS] <= sv2v_cast_CDB06(0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:162:480
					inp_pipe_int_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_INT_FORMAT_BITS+:fpnew_pkg_INT_FORMAT_BITS] <= (reg_ena ? inp_pipe_int_fmt_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * fpnew_pkg_INT_FORMAT_BITS+:fpnew_pkg_INT_FORMAT_BITS] : inp_pipe_int_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_INT_FORMAT_BITS+:fpnew_pkg_INT_FORMAT_BITS]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:163:81
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:163:178
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:163:275
					inp_pipe_tag_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] <= sv2v_cast_65D85(1'sb0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:163:465
					inp_pipe_tag_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] <= (reg_ena ? inp_pipe_tag_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] : inp_pipe_tag_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:164:71
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:164:168
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:164:265
					inp_pipe_mask_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:164:455
					inp_pipe_mask_q[i + 1] <= (reg_ena ? inp_pipe_mask_q[i] : inp_pipe_mask_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:165:81
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:165:178
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:165:275
					inp_pipe_aux_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= sv2v_cast_533F1(1'sb0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:165:465
					inp_pipe_aux_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= (reg_ena ? inp_pipe_aux_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * AuxType_AUX_BITS+:AuxType_AUX_BITS] : inp_pipe_aux_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS]);
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:168:3
	assign operands_q = inp_pipe_operands_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * WIDTH+:WIDTH];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:169:3
	assign is_boxed_q = inp_pipe_is_boxed_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * NUM_FORMATS+:NUM_FORMATS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:170:3
	assign op_mod_q = inp_pipe_op_mod_q[NUM_INP_REGS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:171:3
	assign src_fmt_q = inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:172:3
	assign dst_fmt_q = inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:173:3
	assign int_fmt_q = inp_pipe_int_fmt_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_INT_FORMAT_BITS+:fpnew_pkg_INT_FORMAT_BITS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:178:3
	wire src_is_int;
	wire dst_is_int;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:180:3
	assign src_is_int = inp_pipe_op_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] == sv2v_cast_4CD2E(12);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:181:3
	assign dst_is_int = inp_pipe_op_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] == sv2v_cast_4CD2E(11);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:183:3
	wire [INT_MAN_WIDTH - 1:0] encoded_mant;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:185:3
	wire [4:0] fmt_sign;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:186:3
	wire signed [(NUM_FORMATS * INT_EXP_WIDTH) - 1:0] fmt_exponent;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:187:3
	wire [(NUM_FORMATS * INT_MAN_WIDTH) - 1:0] fmt_mantissa;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:188:3
	wire signed [(NUM_FORMATS * INT_EXP_WIDTH) - 1:0] fmt_shift_compensation;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:190:3
	// removed localparam type fpnew_pkg_fp_info_t
	wire [39:0] info;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:192:3
	reg [(NUM_INT_FORMATS * INT_MAN_WIDTH) - 1:0] ifmt_input_val;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:193:3
	wire int_sign;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:194:3
	wire [INT_MAN_WIDTH - 1:0] int_value;
	wire [INT_MAN_WIDTH - 1:0] int_mantissa;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:197:3
	genvar _gv_fmt_1;
	localparam [0:0] fpnew_pkg_DONT_CARE = 1'b1;
	function automatic signed [0:0] sv2v_cast_1_signed;
		input reg signed [0:0] inp;
		sv2v_cast_1_signed = inp;
	endfunction
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		for (_gv_fmt_1 = 0; _gv_fmt_1 < sv2v_cast_32_signed(NUM_FORMATS); _gv_fmt_1 = _gv_fmt_1 + 1) begin : fmt_init_inputs
			localparam fmt = _gv_fmt_1;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:199:5
			localparam [31:0] FP_WIDTH = fpnew_pkg_fp_width(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:200:5
			localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:201:5
			localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(sv2v_cast_5D882(fmt));
			if (FpFmtConfig[fmt]) begin : active_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:205:7
				fpnew_classifier #(
					.FpFormat(sv2v_cast_5D882(fmt)),
					.NumOperands(1)
				) i_fpnew_classifier(
					.operands_i(operands_q[FP_WIDTH - 1:0]),
					.is_boxed_i(is_boxed_q[fmt]),
					.info_o(info[fmt * 8+:8])
				);
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:214:7
				assign fmt_sign[fmt] = operands_q[FP_WIDTH - 1];
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:215:7
				assign fmt_exponent[fmt * INT_EXP_WIDTH+:INT_EXP_WIDTH] = $signed({1'b0, operands_q[MAN_BITS+:EXP_BITS]});
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:216:7
				assign fmt_mantissa[fmt * INT_MAN_WIDTH+:INT_MAN_WIDTH] = {info[(fmt * 8) + 7], operands_q[MAN_BITS - 1:0]};
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:218:7
				assign fmt_shift_compensation[fmt * INT_EXP_WIDTH+:INT_EXP_WIDTH] = $signed((INT_MAN_WIDTH - 1) - MAN_BITS);
			end
			else begin : inactive_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:220:7
				assign info[fmt * 8+:8] = {fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE};
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:221:7
				assign fmt_sign[fmt] = fpnew_pkg_DONT_CARE;
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:222:7
				assign fmt_exponent[fmt * INT_EXP_WIDTH+:INT_EXP_WIDTH] = {INT_EXP_WIDTH {sv2v_cast_1_signed(fpnew_pkg_DONT_CARE)}};
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:223:7
				assign fmt_mantissa[fmt * INT_MAN_WIDTH+:INT_MAN_WIDTH] = {INT_MAN_WIDTH {fpnew_pkg_DONT_CARE}};
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:224:7
				assign fmt_shift_compensation[fmt * INT_EXP_WIDTH+:INT_EXP_WIDTH] = {INT_EXP_WIDTH {sv2v_cast_1_signed(fpnew_pkg_DONT_CARE)}};
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:229:3
	genvar _gv_ifmt_1;
	function automatic [0:0] sv2v_cast_1;
		input reg [0:0] inp;
		sv2v_cast_1 = inp;
	endfunction
	generate
		for (_gv_ifmt_1 = 0; _gv_ifmt_1 < sv2v_cast_32_signed(NUM_INT_FORMATS); _gv_ifmt_1 = _gv_ifmt_1 + 1) begin : gen_sign_extend_int
			localparam ifmt = _gv_ifmt_1;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:231:5
			localparam [31:0] INT_WIDTH = fpnew_pkg_int_width(sv2v_cast_CDB06(ifmt));
			if (IntFmtConfig[ifmt]) begin : active_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:234:7
				always @(*) begin : sign_ext_input
					if (_sv2v_0)
						;
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:236:9
					ifmt_input_val[ifmt * INT_MAN_WIDTH+:INT_MAN_WIDTH] = {INT_MAN_WIDTH {sv2v_cast_1(operands_q[INT_WIDTH - 1] & ~op_mod_q)}};
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:237:9
					ifmt_input_val[(ifmt * INT_MAN_WIDTH) + (INT_WIDTH - 1)-:INT_WIDTH] = operands_q[INT_WIDTH - 1:0];
				end
			end
			else begin : inactive_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:240:7
				wire [INT_MAN_WIDTH * 1:1] sv2v_tmp_F208D;
				assign sv2v_tmp_F208D = {INT_MAN_WIDTH {fpnew_pkg_DONT_CARE}};
				always @(*) ifmt_input_val[ifmt * INT_MAN_WIDTH+:INT_MAN_WIDTH] = sv2v_tmp_F208D;
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:245:3
	assign int_value = ifmt_input_val[int_fmt_q * INT_MAN_WIDTH+:INT_MAN_WIDTH];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:246:3
	assign int_sign = int_value[INT_MAN_WIDTH - 1] & ~op_mod_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:247:3
	assign int_mantissa = (int_sign ? $unsigned(-int_value) : int_value);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:250:3
	assign encoded_mant = (src_is_int ? int_mantissa : fmt_mantissa[src_fmt_q * INT_MAN_WIDTH+:INT_MAN_WIDTH]);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:255:3
	wire signed [INT_EXP_WIDTH - 1:0] src_bias;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:256:3
	wire signed [INT_EXP_WIDTH - 1:0] src_exp;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:257:3
	wire signed [INT_EXP_WIDTH - 1:0] src_subnormal;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:258:3
	wire signed [INT_EXP_WIDTH - 1:0] src_offset;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:260:3
	function automatic [31:0] fpnew_pkg_bias;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:337:40
		input reg [2:0] fmt;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:338:5
		fpnew_pkg_bias = $unsigned((2 ** (fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 63-:32] - 1)) - 1);
	endfunction
	assign src_bias = $signed(fpnew_pkg_bias(src_fmt_q));
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:261:3
	assign src_exp = fmt_exponent[src_fmt_q * INT_EXP_WIDTH+:INT_EXP_WIDTH];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:262:3
	assign src_subnormal = $signed({1'b0, info[(src_fmt_q * 8) + 6]});
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:263:3
	assign src_offset = fmt_shift_compensation[src_fmt_q * INT_EXP_WIDTH+:INT_EXP_WIDTH];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:265:3
	wire input_sign;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:266:3
	wire signed [INT_EXP_WIDTH - 1:0] input_exp;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:267:3
	wire [INT_MAN_WIDTH - 1:0] input_mant;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:268:3
	wire mant_is_zero;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:270:3
	wire signed [INT_EXP_WIDTH - 1:0] fp_input_exp;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:271:3
	wire signed [INT_EXP_WIDTH - 1:0] int_input_exp;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:274:3
	wire [LZC_RESULT_WIDTH - 1:0] renorm_shamt;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:275:3
	wire [LZC_RESULT_WIDTH:0] renorm_shamt_sgn;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:278:3
	lzc #(
		.WIDTH(INT_MAN_WIDTH),
		.MODE(1)
	) i_lzc(
		.in_i(encoded_mant),
		.cnt_o(renorm_shamt),
		.empty_o(mant_is_zero)
	);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:286:3
	assign renorm_shamt_sgn = $signed({1'b0, renorm_shamt});
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:289:3
	assign input_sign = (src_is_int ? int_sign : fmt_sign[src_fmt_q]);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:291:3
	assign input_mant = encoded_mant << renorm_shamt;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:293:3
	assign fp_input_exp = $signed((((src_exp + src_subnormal) - src_bias) - renorm_shamt_sgn) + src_offset);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:295:3
	assign int_input_exp = $signed((INT_MAN_WIDTH - 1) - renorm_shamt_sgn);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:297:3
	assign input_exp = (src_is_int ? int_input_exp : fp_input_exp);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:299:3
	wire signed [INT_EXP_WIDTH - 1:0] destination_exp;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:302:3
	assign destination_exp = input_exp + $signed(fpnew_pkg_bias(dst_fmt_q));
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:308:3
	wire input_sign_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:309:3
	wire signed [INT_EXP_WIDTH - 1:0] input_exp_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:310:3
	wire [INT_MAN_WIDTH - 1:0] input_mant_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:311:3
	wire signed [INT_EXP_WIDTH - 1:0] destination_exp_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:312:3
	wire src_is_int_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:313:3
	wire dst_is_int_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:314:3
	wire [7:0] info_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:315:3
	wire mant_is_zero_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:316:3
	wire op_mod_q2;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:317:3
	wire [2:0] rnd_mode_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:318:3
	wire [2:0] src_fmt_q2;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:319:3
	wire [2:0] dst_fmt_q2;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:320:3
	wire [1:0] int_fmt_q2;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:324:3
	reg [0:NUM_MID_REGS] mid_pipe_input_sign_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:325:3
	reg signed [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * INT_EXP_WIDTH) + ((NUM_MID_REGS * INT_EXP_WIDTH) - 1) : ((NUM_MID_REGS + 1) * INT_EXP_WIDTH) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * INT_EXP_WIDTH : 0)] mid_pipe_input_exp_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:326:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * INT_MAN_WIDTH) + ((NUM_MID_REGS * INT_MAN_WIDTH) - 1) : ((NUM_MID_REGS + 1) * INT_MAN_WIDTH) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * INT_MAN_WIDTH : 0)] mid_pipe_input_mant_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:327:3
	reg signed [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * INT_EXP_WIDTH) + ((NUM_MID_REGS * INT_EXP_WIDTH) - 1) : ((NUM_MID_REGS + 1) * INT_EXP_WIDTH) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * INT_EXP_WIDTH : 0)] mid_pipe_dest_exp_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:328:3
	reg [0:NUM_MID_REGS] mid_pipe_src_is_int_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:329:3
	reg [0:NUM_MID_REGS] mid_pipe_dst_is_int_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:330:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * 8) + ((NUM_MID_REGS * 8) - 1) : ((NUM_MID_REGS + 1) * 8) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * 8 : 0)] mid_pipe_info_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:331:3
	reg [0:NUM_MID_REGS] mid_pipe_mant_zero_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:332:3
	reg [0:NUM_MID_REGS] mid_pipe_op_mod_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:333:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * 3) + ((NUM_MID_REGS * 3) - 1) : ((NUM_MID_REGS + 1) * 3) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * 3 : 0)] mid_pipe_rnd_mode_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:334:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * fpnew_pkg_FP_FORMAT_BITS) + ((NUM_MID_REGS * fpnew_pkg_FP_FORMAT_BITS) - 1) : ((NUM_MID_REGS + 1) * fpnew_pkg_FP_FORMAT_BITS) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * fpnew_pkg_FP_FORMAT_BITS : 0)] mid_pipe_src_fmt_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:335:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * fpnew_pkg_FP_FORMAT_BITS) + ((NUM_MID_REGS * fpnew_pkg_FP_FORMAT_BITS) - 1) : ((NUM_MID_REGS + 1) * fpnew_pkg_FP_FORMAT_BITS) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * fpnew_pkg_FP_FORMAT_BITS : 0)] mid_pipe_dst_fmt_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:336:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * fpnew_pkg_INT_FORMAT_BITS) + ((NUM_MID_REGS * fpnew_pkg_INT_FORMAT_BITS) - 1) : ((NUM_MID_REGS + 1) * fpnew_pkg_INT_FORMAT_BITS) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * fpnew_pkg_INT_FORMAT_BITS : 0)] mid_pipe_int_fmt_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:337:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) + ((NUM_MID_REGS * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1) : ((NUM_MID_REGS + 1) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] : 0)] mid_pipe_tag_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:338:3
	reg [0:NUM_MID_REGS] mid_pipe_mask_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:339:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * AuxType_AUX_BITS) + ((NUM_MID_REGS * AuxType_AUX_BITS) - 1) : ((NUM_MID_REGS + 1) * AuxType_AUX_BITS) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * AuxType_AUX_BITS : 0)] mid_pipe_aux_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:340:3
	reg [0:NUM_MID_REGS] mid_pipe_valid_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:342:3
	wire [0:NUM_MID_REGS] mid_pipe_ready;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:345:3
	wire [1:1] sv2v_tmp_73C39;
	assign sv2v_tmp_73C39 = input_sign;
	always @(*) mid_pipe_input_sign_q[0] = sv2v_tmp_73C39;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:346:3
	wire [INT_EXP_WIDTH * 1:1] sv2v_tmp_D63AF;
	assign sv2v_tmp_D63AF = input_exp;
	always @(*) mid_pipe_input_exp_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * INT_EXP_WIDTH+:INT_EXP_WIDTH] = sv2v_tmp_D63AF;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:347:3
	wire [INT_MAN_WIDTH * 1:1] sv2v_tmp_CED01;
	assign sv2v_tmp_CED01 = input_mant;
	always @(*) mid_pipe_input_mant_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * INT_MAN_WIDTH+:INT_MAN_WIDTH] = sv2v_tmp_CED01;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:348:3
	wire [INT_EXP_WIDTH * 1:1] sv2v_tmp_5026E;
	assign sv2v_tmp_5026E = destination_exp;
	always @(*) mid_pipe_dest_exp_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * INT_EXP_WIDTH+:INT_EXP_WIDTH] = sv2v_tmp_5026E;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:349:3
	wire [1:1] sv2v_tmp_6F1F9;
	assign sv2v_tmp_6F1F9 = src_is_int;
	always @(*) mid_pipe_src_is_int_q[0] = sv2v_tmp_6F1F9;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:350:3
	wire [1:1] sv2v_tmp_202B9;
	assign sv2v_tmp_202B9 = dst_is_int;
	always @(*) mid_pipe_dst_is_int_q[0] = sv2v_tmp_202B9;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:351:3
	wire [8:1] sv2v_tmp_C577A;
	assign sv2v_tmp_C577A = info[src_fmt_q * 8+:8];
	always @(*) mid_pipe_info_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * 8+:8] = sv2v_tmp_C577A;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:352:3
	wire [1:1] sv2v_tmp_CCDAF;
	assign sv2v_tmp_CCDAF = mant_is_zero;
	always @(*) mid_pipe_mant_zero_q[0] = sv2v_tmp_CCDAF;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:353:3
	wire [1:1] sv2v_tmp_0DC3D;
	assign sv2v_tmp_0DC3D = op_mod_q;
	always @(*) mid_pipe_op_mod_q[0] = sv2v_tmp_0DC3D;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:354:3
	wire [3:1] sv2v_tmp_EC44B;
	assign sv2v_tmp_EC44B = inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3+:3];
	always @(*) mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * 3+:3] = sv2v_tmp_EC44B;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:355:3
	wire [3:1] sv2v_tmp_8D32D;
	assign sv2v_tmp_8D32D = src_fmt_q;
	always @(*) mid_pipe_src_fmt_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] = sv2v_tmp_8D32D;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:356:3
	wire [3:1] sv2v_tmp_9DD7D;
	assign sv2v_tmp_9DD7D = dst_fmt_q;
	always @(*) mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] = sv2v_tmp_9DD7D;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:357:3
	wire [2:1] sv2v_tmp_5CA4B;
	assign sv2v_tmp_5CA4B = int_fmt_q;
	always @(*) mid_pipe_int_fmt_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * fpnew_pkg_INT_FORMAT_BITS+:fpnew_pkg_INT_FORMAT_BITS] = sv2v_tmp_5CA4B;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:358:3
	wire [TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] * 1:1] sv2v_tmp_CEF99;
	assign sv2v_tmp_CEF99 = inp_pipe_tag_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]];
	always @(*) mid_pipe_tag_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] = sv2v_tmp_CEF99;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:359:3
	wire [1:1] sv2v_tmp_FAFEF;
	assign sv2v_tmp_FAFEF = inp_pipe_mask_q[NUM_INP_REGS];
	always @(*) mid_pipe_mask_q[0] = sv2v_tmp_FAFEF;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:360:3
	wire [AuxType_AUX_BITS * 1:1] sv2v_tmp_F44D9;
	assign sv2v_tmp_F44D9 = inp_pipe_aux_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS];
	always @(*) mid_pipe_aux_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] = sv2v_tmp_F44D9;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:361:3
	wire [1:1] sv2v_tmp_C7159;
	assign sv2v_tmp_C7159 = inp_pipe_valid_q[NUM_INP_REGS];
	always @(*) mid_pipe_valid_q[0] = sv2v_tmp_C7159;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:363:3
	assign inp_pipe_ready[NUM_INP_REGS] = mid_pipe_ready[0];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:366:3
	genvar _gv_i_59;
	generate
		for (_gv_i_59 = 0; _gv_i_59 < NUM_MID_REGS; _gv_i_59 = _gv_i_59 + 1) begin : gen_inside_pipeline
			localparam i = _gv_i_59;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:368:5
			wire reg_ena;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:372:5
			assign mid_pipe_ready[i] = mid_pipe_ready[i + 1] | ~mid_pipe_valid_q[i + 1];
			// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_cast_multi.sv:374:329
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_cast_multi.sv:374:407
				if (!rst_ni)
					// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_cast_multi.sv:374:485
					mid_pipe_valid_q[i + 1] <= 1'b0;
				else
					// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_cast_multi.sv:374:637
					mid_pipe_valid_q[i + 1] <= (flush_i ? 1'b0 : (mid_pipe_ready[i] ? mid_pipe_valid_q[i] : mid_pipe_valid_q[i + 1]));
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:376:5
			assign reg_ena = mid_pipe_ready[i] & mid_pipe_valid_q[i];
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:378:75
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:378:172
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:378:269
					mid_pipe_input_sign_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:378:459
					mid_pipe_input_sign_q[i + 1] <= (reg_ena ? mid_pipe_input_sign_q[i] : mid_pipe_input_sign_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:379:75
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:379:172
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:379:269
					mid_pipe_input_exp_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * INT_EXP_WIDTH+:INT_EXP_WIDTH] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:379:459
					mid_pipe_input_exp_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * INT_EXP_WIDTH+:INT_EXP_WIDTH] <= (reg_ena ? mid_pipe_input_exp_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * INT_EXP_WIDTH+:INT_EXP_WIDTH] : mid_pipe_input_exp_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * INT_EXP_WIDTH+:INT_EXP_WIDTH]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:380:75
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:380:172
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:380:269
					mid_pipe_input_mant_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * INT_MAN_WIDTH+:INT_MAN_WIDTH] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:380:459
					mid_pipe_input_mant_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * INT_MAN_WIDTH+:INT_MAN_WIDTH] <= (reg_ena ? mid_pipe_input_mant_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * INT_MAN_WIDTH+:INT_MAN_WIDTH] : mid_pipe_input_mant_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * INT_MAN_WIDTH+:INT_MAN_WIDTH]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:381:75
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:381:172
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:381:269
					mid_pipe_dest_exp_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * INT_EXP_WIDTH+:INT_EXP_WIDTH] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:381:459
					mid_pipe_dest_exp_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * INT_EXP_WIDTH+:INT_EXP_WIDTH] <= (reg_ena ? mid_pipe_dest_exp_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * INT_EXP_WIDTH+:INT_EXP_WIDTH] : mid_pipe_dest_exp_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * INT_EXP_WIDTH+:INT_EXP_WIDTH]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:382:75
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:382:172
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:382:269
					mid_pipe_src_is_int_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:382:459
					mid_pipe_src_is_int_q[i + 1] <= (reg_ena ? mid_pipe_src_is_int_q[i] : mid_pipe_src_is_int_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:383:75
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:383:172
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:383:269
					mid_pipe_dst_is_int_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:383:459
					mid_pipe_dst_is_int_q[i + 1] <= (reg_ena ? mid_pipe_dst_is_int_q[i] : mid_pipe_dst_is_int_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:384:75
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:384:172
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:384:269
					mid_pipe_info_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 8+:8] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:384:459
					mid_pipe_info_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 8+:8] <= (reg_ena ? mid_pipe_info_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * 8+:8] : mid_pipe_info_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 8+:8]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:385:75
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:385:172
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:385:269
					mid_pipe_mant_zero_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:385:459
					mid_pipe_mant_zero_q[i + 1] <= (reg_ena ? mid_pipe_mant_zero_q[i] : mid_pipe_mant_zero_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:386:75
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:386:172
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:386:269
					mid_pipe_op_mod_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:386:459
					mid_pipe_op_mod_q[i + 1] <= (reg_ena ? mid_pipe_op_mod_q[i] : mid_pipe_op_mod_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:387:87
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:387:184
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:387:281
					mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 3+:3] <= 3'b000;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:387:471
					mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 3+:3] <= (reg_ena ? mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * 3+:3] : mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 3+:3]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:388:99
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:388:196
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:388:293
					mid_pipe_src_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= sv2v_cast_5D882(0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:388:483
					mid_pipe_src_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= (reg_ena ? mid_pipe_src_fmt_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] : mid_pipe_src_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:389:99
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:389:196
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:389:293
					mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= sv2v_cast_5D882(0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:389:483
					mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= (reg_ena ? mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] : mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:390:100
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:390:197
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:390:294
					mid_pipe_int_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_INT_FORMAT_BITS+:fpnew_pkg_INT_FORMAT_BITS] <= sv2v_cast_CDB06(0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:390:484
					mid_pipe_int_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_INT_FORMAT_BITS+:fpnew_pkg_INT_FORMAT_BITS] <= (reg_ena ? mid_pipe_int_fmt_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * fpnew_pkg_INT_FORMAT_BITS+:fpnew_pkg_INT_FORMAT_BITS] : mid_pipe_int_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_INT_FORMAT_BITS+:fpnew_pkg_INT_FORMAT_BITS]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:391:85
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:391:182
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:391:279
					mid_pipe_tag_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] <= sv2v_cast_65D85(1'sb0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:391:469
					mid_pipe_tag_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] <= (reg_ena ? mid_pipe_tag_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] : mid_pipe_tag_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:392:75
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:392:172
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:392:269
					mid_pipe_mask_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:392:459
					mid_pipe_mask_q[i + 1] <= (reg_ena ? mid_pipe_mask_q[i] : mid_pipe_mask_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:393:85
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:393:182
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:393:279
					mid_pipe_aux_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= sv2v_cast_533F1(1'sb0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:393:469
					mid_pipe_aux_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= (reg_ena ? mid_pipe_aux_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * AuxType_AUX_BITS+:AuxType_AUX_BITS] : mid_pipe_aux_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS]);
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:396:3
	assign input_sign_q = mid_pipe_input_sign_q[NUM_MID_REGS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:397:3
	assign input_exp_q = mid_pipe_input_exp_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * INT_EXP_WIDTH+:INT_EXP_WIDTH];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:398:3
	assign input_mant_q = mid_pipe_input_mant_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * INT_MAN_WIDTH+:INT_MAN_WIDTH];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:399:3
	assign destination_exp_q = mid_pipe_dest_exp_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * INT_EXP_WIDTH+:INT_EXP_WIDTH];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:400:3
	assign src_is_int_q = mid_pipe_src_is_int_q[NUM_MID_REGS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:401:3
	assign dst_is_int_q = mid_pipe_dst_is_int_q[NUM_MID_REGS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:402:3
	assign info_q = mid_pipe_info_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * 8+:8];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:403:3
	assign mant_is_zero_q = mid_pipe_mant_zero_q[NUM_MID_REGS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:404:3
	assign op_mod_q2 = mid_pipe_op_mod_q[NUM_MID_REGS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:405:3
	assign rnd_mode_q = mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * 3+:3];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:406:3
	assign src_fmt_q2 = mid_pipe_src_fmt_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:407:3
	assign dst_fmt_q2 = mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:408:3
	assign int_fmt_q2 = mid_pipe_int_fmt_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * fpnew_pkg_INT_FORMAT_BITS+:fpnew_pkg_INT_FORMAT_BITS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:413:3
	reg [INT_EXP_WIDTH - 1:0] final_exp;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:415:3
	reg [2 * INT_MAN_WIDTH:0] preshift_mant;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:416:3
	wire [2 * INT_MAN_WIDTH:0] destination_mant;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:417:3
	wire [SUPER_MAN_BITS - 1:0] final_mant;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:418:3
	wire [MAX_INT_WIDTH - 1:0] final_int;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:420:3
	reg [$clog2(INT_MAN_WIDTH + 1) - 1:0] denorm_shamt;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:422:3
	wire [1:0] fp_round_sticky_bits;
	wire [1:0] int_round_sticky_bits;
	wire [1:0] round_sticky_bits;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:423:3
	reg of_before_round;
	reg uf_before_round;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:427:3
	always @(*) begin : cast_value
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpnew_cast_multi.sv:429:5
		final_exp = $unsigned(destination_exp_q);
		// Trace: core/cvfpu/src/fpnew_cast_multi.sv:430:5
		preshift_mant = 1'sb0;
		// Trace: core/cvfpu/src/fpnew_cast_multi.sv:431:5
		denorm_shamt = SUPER_MAN_BITS - fpnew_pkg_man_bits(dst_fmt_q2);
		// Trace: core/cvfpu/src/fpnew_cast_multi.sv:432:5
		of_before_round = 1'b0;
		// Trace: core/cvfpu/src/fpnew_cast_multi.sv:433:5
		uf_before_round = 1'b0;
		// Trace: core/cvfpu/src/fpnew_cast_multi.sv:436:5
		preshift_mant = input_mant_q << (INT_MAN_WIDTH + 1);
		// Trace: core/cvfpu/src/fpnew_cast_multi.sv:439:5
		if (dst_is_int_q) begin
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:441:7
			denorm_shamt = $unsigned((MAX_INT_WIDTH - 1) - input_exp_q);
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:443:7
			if (input_exp_q >= $signed((fpnew_pkg_int_width(int_fmt_q2) - 1) + op_mod_q2)) begin
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:444:9
				denorm_shamt = 1'sb0;
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:445:9
				of_before_round = 1'b1;
			end
			else if (input_exp_q < -1) begin
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:448:9
				denorm_shamt = MAX_INT_WIDTH + 1;
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:449:9
				uf_before_round = 1'b1;
			end
		end
		else
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:454:7
			if ((destination_exp_q >= ($signed(2 ** fpnew_pkg_exp_bits(dst_fmt_q2)) - 1)) || (~src_is_int_q && info_q[4])) begin
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:456:9
				final_exp = $unsigned((2 ** fpnew_pkg_exp_bits(dst_fmt_q2)) - 2);
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:457:9
				preshift_mant = 1'sb1;
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:458:9
				of_before_round = 1'b1;
			end
			else if ((destination_exp_q < 1) && (destination_exp_q >= -$signed(fpnew_pkg_man_bits(dst_fmt_q2)))) begin
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:462:9
				final_exp = 1'sb0;
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:463:9
				denorm_shamt = $unsigned((denorm_shamt + 1) - destination_exp_q);
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:464:9
				uf_before_round = 1'b1;
			end
			else if (destination_exp_q < -$signed(fpnew_pkg_man_bits(dst_fmt_q2))) begin
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:467:9
				final_exp = 1'sb0;
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:468:9
				denorm_shamt = $unsigned((denorm_shamt + 2) + fpnew_pkg_man_bits(dst_fmt_q2));
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:469:9
				uf_before_round = 1'b1;
			end
	end
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:474:3
	localparam NUM_FP_STICKY = ((2 * INT_MAN_WIDTH) - SUPER_MAN_BITS) - 1;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:475:3
	localparam NUM_INT_STICKY = (2 * INT_MAN_WIDTH) - MAX_INT_WIDTH;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:478:3
	assign destination_mant = preshift_mant >> denorm_shamt;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:480:3
	assign {final_mant, fp_round_sticky_bits[1]} = destination_mant[(2 * INT_MAN_WIDTH) - 1-:SUPER_MAN_BITS + 1];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:482:3
	assign {final_int, int_round_sticky_bits[1]} = destination_mant[2 * INT_MAN_WIDTH-:MAX_INT_WIDTH + 1];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:484:3
	assign fp_round_sticky_bits[0] = |{destination_mant[NUM_FP_STICKY - 1:0]};
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:485:3
	assign int_round_sticky_bits[0] = |{destination_mant[NUM_INT_STICKY - 1:0]};
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:488:3
	assign round_sticky_bits = (dst_is_int_q ? int_round_sticky_bits : fp_round_sticky_bits);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:493:3
	wire [WIDTH - 1:0] pre_round_abs;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:494:3
	wire of_after_round;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:495:3
	wire uf_after_round;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:497:3
	reg [(NUM_FORMATS * WIDTH) - 1:0] fmt_pre_round_abs;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:498:3
	reg [4:0] fmt_of_after_round;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:499:3
	reg [4:0] fmt_uf_after_round;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:501:3
	reg [(NUM_INT_FORMATS * WIDTH) - 1:0] ifmt_pre_round_abs;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:502:3
	reg [3:0] ifmt_of_after_round;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:504:3
	wire rounded_sign;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:505:3
	wire [WIDTH - 1:0] rounded_abs;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:506:3
	wire result_true_zero;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:508:3
	wire [WIDTH - 1:0] rounded_int_res;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:509:3
	wire rounded_int_res_zero;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:513:3
	genvar _gv_fmt_2;
	generate
		for (_gv_fmt_2 = 0; _gv_fmt_2 < sv2v_cast_32_signed(NUM_FORMATS); _gv_fmt_2 = _gv_fmt_2 + 1) begin : gen_res_assemble
			localparam fmt = _gv_fmt_2;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:515:5
			localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:516:5
			localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(sv2v_cast_5D882(fmt));
			if (FpFmtConfig[fmt]) begin : active_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:519:7
				always @(*) begin : assemble_result
					if (_sv2v_0)
						;
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:520:9
					fmt_pre_round_abs[fmt * WIDTH+:WIDTH] = {final_exp[EXP_BITS - 1:0], final_mant[MAN_BITS - 1:0]};
				end
			end
			else begin : inactive_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:523:7
				wire [WIDTH * 1:1] sv2v_tmp_DA55D;
				assign sv2v_tmp_DA55D = {WIDTH {fpnew_pkg_DONT_CARE}};
				always @(*) fmt_pre_round_abs[fmt * WIDTH+:WIDTH] = sv2v_tmp_DA55D;
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:528:3
	genvar _gv_ifmt_2;
	generate
		for (_gv_ifmt_2 = 0; _gv_ifmt_2 < sv2v_cast_32_signed(NUM_INT_FORMATS); _gv_ifmt_2 = _gv_ifmt_2 + 1) begin : gen_int_res_sign_ext
			localparam ifmt = _gv_ifmt_2;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:530:5
			localparam [31:0] INT_WIDTH = fpnew_pkg_int_width(sv2v_cast_CDB06(ifmt));
			if (IntFmtConfig[ifmt]) begin : active_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:533:7
				always @(*) begin : assemble_result
					if (_sv2v_0)
						;
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:535:9
					ifmt_pre_round_abs[ifmt * WIDTH+:WIDTH] = {WIDTH {final_int[INT_WIDTH - 1]}};
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:536:9
					ifmt_pre_round_abs[(ifmt * WIDTH) + (INT_WIDTH - 1)-:INT_WIDTH] = final_int[INT_WIDTH - 1:0];
				end
			end
			else begin : inactive_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:539:7
				wire [WIDTH * 1:1] sv2v_tmp_7C8AF;
				assign sv2v_tmp_7C8AF = {WIDTH {fpnew_pkg_DONT_CARE}};
				always @(*) ifmt_pre_round_abs[ifmt * WIDTH+:WIDTH] = sv2v_tmp_7C8AF;
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:544:3
	assign pre_round_abs = (dst_is_int_q ? ifmt_pre_round_abs[int_fmt_q2 * WIDTH+:WIDTH] : fmt_pre_round_abs[dst_fmt_q2 * WIDTH+:WIDTH]);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:546:3
	fpnew_rounding #(.AbsWidth(WIDTH)) i_fpnew_rounding(
		.abs_value_i(pre_round_abs),
		.sign_i(input_sign_q),
		.round_sticky_bits_i(round_sticky_bits),
		.rnd_mode_i(rnd_mode_q),
		.effective_subtraction_i(1'b0),
		.abs_rounded_o(rounded_abs),
		.sign_o(rounded_sign),
		.exact_zero_o(result_true_zero)
	);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:559:3
	reg [(NUM_FORMATS * WIDTH) - 1:0] fmt_result;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:562:3
	genvar _gv_fmt_3;
	generate
		for (_gv_fmt_3 = 0; _gv_fmt_3 < sv2v_cast_32_signed(NUM_FORMATS); _gv_fmt_3 = _gv_fmt_3 + 1) begin : gen_sign_inject
			localparam fmt = _gv_fmt_3;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:564:5
			localparam [31:0] FP_WIDTH = fpnew_pkg_fp_width(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:565:5
			localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:566:5
			localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(sv2v_cast_5D882(fmt));
			if (FpFmtConfig[fmt]) begin : active_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:569:7
				always @(*) begin : post_process
					if (_sv2v_0)
						;
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:571:9
					fmt_uf_after_round[fmt] = rounded_abs[(EXP_BITS + MAN_BITS) - 1:MAN_BITS] == {(((EXP_BITS + MAN_BITS) - 1) >= MAN_BITS ? (((EXP_BITS + MAN_BITS) - 1) - MAN_BITS) + 1 : (MAN_BITS - ((EXP_BITS + MAN_BITS) - 1)) + 1) * 1 {1'sb0}};
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:572:9
					fmt_of_after_round[fmt] = rounded_abs[(EXP_BITS + MAN_BITS) - 1:MAN_BITS] == {(((EXP_BITS + MAN_BITS) - 1) >= MAN_BITS ? (((EXP_BITS + MAN_BITS) - 1) - MAN_BITS) + 1 : (MAN_BITS - ((EXP_BITS + MAN_BITS) - 1)) + 1) * 1 {1'sb1}};
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:575:9
					fmt_result[fmt * WIDTH+:WIDTH] = 1'sb1;
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:576:9
					fmt_result[(fmt * WIDTH) + (FP_WIDTH - 1)-:FP_WIDTH] = (src_is_int_q & mant_is_zero_q ? {FP_WIDTH * 1 {1'sb0}} : {rounded_sign, rounded_abs[(EXP_BITS + MAN_BITS) - 1:0]});
				end
			end
			else begin : inactive_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:581:7
				wire [1:1] sv2v_tmp_4C394;
				assign sv2v_tmp_4C394 = fpnew_pkg_DONT_CARE;
				always @(*) fmt_uf_after_round[fmt] = sv2v_tmp_4C394;
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:582:7
				wire [1:1] sv2v_tmp_5852E;
				assign sv2v_tmp_5852E = fpnew_pkg_DONT_CARE;
				always @(*) fmt_of_after_round[fmt] = sv2v_tmp_5852E;
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:583:7
				wire [WIDTH * 1:1] sv2v_tmp_F321A;
				assign sv2v_tmp_F321A = {WIDTH {fpnew_pkg_DONT_CARE}};
				always @(*) fmt_result[fmt * WIDTH+:WIDTH] = sv2v_tmp_F321A;
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:588:3
	assign rounded_int_res = (rounded_sign ? $unsigned(-rounded_abs) : rounded_abs);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:589:3
	assign rounded_int_res_zero = rounded_int_res == {WIDTH {1'sb0}};
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:592:3
	genvar _gv_ifmt_3;
	generate
		for (_gv_ifmt_3 = 0; _gv_ifmt_3 < sv2v_cast_32_signed(NUM_INT_FORMATS); _gv_ifmt_3 = _gv_ifmt_3 + 1) begin : gen_int_overflow
			localparam ifmt = _gv_ifmt_3;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:594:5
			localparam [31:0] INT_WIDTH = fpnew_pkg_int_width(sv2v_cast_CDB06(ifmt));
			if (IntFmtConfig[ifmt]) begin : active_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:597:7
				always @(*) begin : detect_overflow
					if (_sv2v_0)
						;
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:598:9
					ifmt_of_after_round[ifmt] = 1'b0;
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:600:9
					if (!rounded_sign && (input_exp_q == $signed((INT_WIDTH - 2) + op_mod_q2)))
						// Trace: core/cvfpu/src/fpnew_cast_multi.sv:602:11
						ifmt_of_after_round[ifmt] = ~rounded_int_res[(INT_WIDTH - 2) + op_mod_q2];
				end
			end
			else begin : inactive_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:606:7
				wire [1:1] sv2v_tmp_13A6C;
				assign sv2v_tmp_13A6C = fpnew_pkg_DONT_CARE;
				always @(*) ifmt_of_after_round[ifmt] = sv2v_tmp_13A6C;
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:611:3
	assign uf_after_round = fmt_uf_after_round[dst_fmt_q2];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:612:3
	assign of_after_round = (dst_is_int_q ? ifmt_of_after_round[int_fmt_q2] : fmt_of_after_round[dst_fmt_q2]);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:617:3
	wire [WIDTH - 1:0] fp_special_result;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:618:3
	wire [4:0] fp_special_status;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:619:3
	wire fp_result_is_special;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:621:3
	reg [(NUM_FORMATS * WIDTH) - 1:0] fmt_special_result;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:624:3
	genvar _gv_fmt_4;
	generate
		for (_gv_fmt_4 = 0; _gv_fmt_4 < sv2v_cast_32_signed(NUM_FORMATS); _gv_fmt_4 = _gv_fmt_4 + 1) begin : gen_special_results
			localparam fmt = _gv_fmt_4;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:626:5
			localparam [31:0] FP_WIDTH = fpnew_pkg_fp_width(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:627:5
			localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:628:5
			localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:630:5
			localparam [EXP_BITS - 1:0] QNAN_EXPONENT = 1'sb1;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:631:5
			localparam [MAN_BITS - 1:0] QNAN_MANTISSA = 2 ** (MAN_BITS - 1);
			if (FpFmtConfig[fmt]) begin : active_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:634:7
				always @(*) begin : special_results
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:635:9
					reg [FP_WIDTH - 1:0] special_res;
					if (_sv2v_0)
						;
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:636:9
					special_res = (info_q[5] ? input_sign_q << (FP_WIDTH - 1) : {1'b0, QNAN_EXPONENT, QNAN_MANTISSA});
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:641:9
					fmt_special_result[fmt * WIDTH+:WIDTH] = 1'sb1;
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:642:9
					fmt_special_result[(fmt * WIDTH) + (FP_WIDTH - 1)-:FP_WIDTH] = special_res;
				end
			end
			else begin : inactive_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:645:7
				wire [WIDTH * 1:1] sv2v_tmp_294DC;
				assign sv2v_tmp_294DC = {WIDTH {fpnew_pkg_DONT_CARE}};
				always @(*) fmt_special_result[fmt * WIDTH+:WIDTH] = sv2v_tmp_294DC;
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:650:3
	assign fp_result_is_special = ~src_is_int_q & ((info_q[5] | info_q[3]) | ~info_q[0]);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:655:3
	assign fp_special_status = {info_q[2], 4'b0000};
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:658:3
	assign fp_special_result = fmt_special_result[dst_fmt_q2 * WIDTH+:WIDTH];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:663:3
	wire [WIDTH - 1:0] int_special_result;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:664:3
	wire [4:0] int_special_status;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:665:3
	wire int_result_is_special;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:667:3
	reg [(NUM_INT_FORMATS * WIDTH) - 1:0] ifmt_special_result;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:670:3
	genvar _gv_ifmt_4;
	generate
		for (_gv_ifmt_4 = 0; _gv_ifmt_4 < sv2v_cast_32_signed(NUM_INT_FORMATS); _gv_ifmt_4 = _gv_ifmt_4 + 1) begin : gen_special_results_int
			localparam ifmt = _gv_ifmt_4;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:672:5
			localparam [31:0] INT_WIDTH = fpnew_pkg_int_width(sv2v_cast_CDB06(ifmt));
			if (IntFmtConfig[ifmt]) begin : active_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:675:7
				always @(*) begin : special_results
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:676:9
					reg [INT_WIDTH - 1:0] special_res;
					if (_sv2v_0)
						;
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:679:9
					special_res[INT_WIDTH - 2:0] = 1'sb1;
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:680:9
					special_res[INT_WIDTH - 1] = op_mod_q2;
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:683:9
					if (input_sign_q && !info_q[3])
						// Trace: core/cvfpu/src/fpnew_cast_multi.sv:684:11
						special_res = ~special_res;
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:687:9
					ifmt_special_result[ifmt * WIDTH+:WIDTH] = {WIDTH {special_res[INT_WIDTH - 1]}};
					// Trace: core/cvfpu/src/fpnew_cast_multi.sv:688:9
					ifmt_special_result[(ifmt * WIDTH) + (INT_WIDTH - 1)-:INT_WIDTH] = special_res;
				end
			end
			else begin : inactive_format
				// Trace: core/cvfpu/src/fpnew_cast_multi.sv:691:7
				wire [WIDTH * 1:1] sv2v_tmp_577FA;
				assign sv2v_tmp_577FA = {WIDTH {fpnew_pkg_DONT_CARE}};
				always @(*) ifmt_special_result[ifmt * WIDTH+:WIDTH] = sv2v_tmp_577FA;
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:696:3
	assign int_result_is_special = ((((info_q[3] | info_q[4]) | of_before_round) | of_after_round) | ~info_q[0]) | ((input_sign_q & op_mod_q2) & ~rounded_int_res_zero);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:701:3
	assign int_special_status = 5'b10000;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:704:3
	assign int_special_result = ifmt_special_result[int_fmt_q2 * WIDTH+:WIDTH];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:709:3
	wire [4:0] int_regular_status;
	wire [4:0] fp_regular_status;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:711:3
	wire [WIDTH - 1:0] fp_result;
	wire [WIDTH - 1:0] int_result;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:712:3
	wire [4:0] fp_status;
	wire [4:0] int_status;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:714:3
	assign fp_regular_status[4] = src_is_int_q & (of_before_round | of_after_round);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:715:3
	assign fp_regular_status[3] = 1'b0;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:716:3
	assign fp_regular_status[2] = ~src_is_int_q & (~info_q[4] & (of_before_round | of_after_round));
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:717:3
	assign fp_regular_status[1] = uf_after_round & fp_regular_status[0];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:718:3
	assign fp_regular_status[0] = (src_is_int_q ? |fp_round_sticky_bits : |fp_round_sticky_bits | (~info_q[4] & (of_before_round | of_after_round)));
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:720:3
	assign int_regular_status = {4'b0000, |int_round_sticky_bits};
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:722:3
	assign fp_result = (fp_result_is_special ? fp_special_result : fmt_result[dst_fmt_q2 * WIDTH+:WIDTH]);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:723:3
	assign fp_status = (fp_result_is_special ? fp_special_status : fp_regular_status);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:724:3
	assign int_result = (int_result_is_special ? int_special_result : rounded_int_res);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:725:3
	assign int_status = (int_result_is_special ? int_special_status : int_regular_status);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:728:3
	wire [WIDTH - 1:0] result_d;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:729:3
	wire [4:0] status_d;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:730:3
	wire extension_bit;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:733:3
	assign result_d = (dst_is_int_q ? int_result : fp_result);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:734:3
	assign status_d = (dst_is_int_q ? int_status : fp_status);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:737:3
	assign extension_bit = (dst_is_int_q ? int_result[WIDTH - 1] : 1'b1);
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:743:3
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * WIDTH) + ((NUM_OUT_REGS * WIDTH) - 1) : ((NUM_OUT_REGS + 1) * WIDTH) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * WIDTH : 0)] out_pipe_result_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:744:3
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * 5) + ((NUM_OUT_REGS * 5) - 1) : ((NUM_OUT_REGS + 1) * 5) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * 5 : 0)] out_pipe_status_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:745:3
	reg [0:NUM_OUT_REGS] out_pipe_ext_bit_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:746:3
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) + ((NUM_OUT_REGS * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1) : ((NUM_OUT_REGS + 1) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] : 0)] out_pipe_tag_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:747:3
	reg [0:NUM_OUT_REGS] out_pipe_mask_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:748:3
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * AuxType_AUX_BITS) + ((NUM_OUT_REGS * AuxType_AUX_BITS) - 1) : ((NUM_OUT_REGS + 1) * AuxType_AUX_BITS) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * AuxType_AUX_BITS : 0)] out_pipe_aux_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:749:3
	reg [0:NUM_OUT_REGS] out_pipe_valid_q;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:751:3
	wire [0:NUM_OUT_REGS] out_pipe_ready;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:754:3
	wire [WIDTH * 1:1] sv2v_tmp_6C5BE;
	assign sv2v_tmp_6C5BE = result_d;
	always @(*) out_pipe_result_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * WIDTH+:WIDTH] = sv2v_tmp_6C5BE;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:755:3
	wire [5:1] sv2v_tmp_D9FFA;
	assign sv2v_tmp_D9FFA = status_d;
	always @(*) out_pipe_status_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * 5+:5] = sv2v_tmp_D9FFA;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:756:3
	wire [1:1] sv2v_tmp_F04C7;
	assign sv2v_tmp_F04C7 = extension_bit;
	always @(*) out_pipe_ext_bit_q[0] = sv2v_tmp_F04C7;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:757:3
	wire [TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] * 1:1] sv2v_tmp_3E770;
	assign sv2v_tmp_3E770 = mid_pipe_tag_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]];
	always @(*) out_pipe_tag_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] = sv2v_tmp_3E770;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:758:3
	wire [1:1] sv2v_tmp_D6E81;
	assign sv2v_tmp_D6E81 = mid_pipe_mask_q[NUM_MID_REGS];
	always @(*) out_pipe_mask_q[0] = sv2v_tmp_D6E81;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:759:3
	wire [AuxType_AUX_BITS * 1:1] sv2v_tmp_4D650;
	assign sv2v_tmp_4D650 = mid_pipe_aux_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS];
	always @(*) out_pipe_aux_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] = sv2v_tmp_4D650;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:760:3
	wire [1:1] sv2v_tmp_E45E7;
	assign sv2v_tmp_E45E7 = mid_pipe_valid_q[NUM_MID_REGS];
	always @(*) out_pipe_valid_q[0] = sv2v_tmp_E45E7;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:762:3
	assign mid_pipe_ready[NUM_MID_REGS] = out_pipe_ready[0];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:764:3
	genvar _gv_i_60;
	generate
		for (_gv_i_60 = 0; _gv_i_60 < NUM_OUT_REGS; _gv_i_60 = _gv_i_60 + 1) begin : gen_output_pipeline
			localparam i = _gv_i_60;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:766:5
			wire reg_ena;
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:770:5
			assign out_pipe_ready[i] = out_pipe_ready[i + 1] | ~out_pipe_valid_q[i + 1];
			// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_cast_multi.sv:772:329
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_cast_multi.sv:772:407
				if (!rst_ni)
					// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_cast_multi.sv:772:485
					out_pipe_valid_q[i + 1] <= 1'b0;
				else
					// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_cast_multi.sv:772:637
					out_pipe_valid_q[i + 1] <= (flush_i ? 1'b0 : (out_pipe_ready[i] ? out_pipe_valid_q[i] : out_pipe_valid_q[i + 1]));
			// Trace: core/cvfpu/src/fpnew_cast_multi.sv:774:5
			assign reg_ena = out_pipe_ready[i] & out_pipe_valid_q[i];
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:776:69
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:776:166
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:776:263
					out_pipe_result_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * WIDTH+:WIDTH] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:776:453
					out_pipe_result_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * WIDTH+:WIDTH] <= (reg_ena ? out_pipe_result_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * WIDTH+:WIDTH] : out_pipe_result_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * WIDTH+:WIDTH]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:777:69
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:777:166
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:777:263
					out_pipe_status_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 5+:5] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:777:453
					out_pipe_status_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 5+:5] <= (reg_ena ? out_pipe_status_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * 5+:5] : out_pipe_status_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 5+:5]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:778:69
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:778:166
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:778:263
					out_pipe_ext_bit_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:778:453
					out_pipe_ext_bit_q[i + 1] <= (reg_ena ? out_pipe_ext_bit_q[i] : out_pipe_ext_bit_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:779:79
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:779:176
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:779:273
					out_pipe_tag_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] <= sv2v_cast_65D85(1'sb0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:779:463
					out_pipe_tag_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] <= (reg_ena ? out_pipe_tag_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] : out_pipe_tag_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:780:69
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:780:166
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:780:263
					out_pipe_mask_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:780:453
					out_pipe_mask_q[i + 1] <= (reg_ena ? out_pipe_mask_q[i] : out_pipe_mask_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:781:79
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:781:176
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:781:273
					out_pipe_aux_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= sv2v_cast_533F1(1'sb0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_cast_multi.sv:781:463
					out_pipe_aux_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= (reg_ena ? out_pipe_aux_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * AuxType_AUX_BITS+:AuxType_AUX_BITS] : out_pipe_aux_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS]);
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:784:3
	assign out_pipe_ready[NUM_OUT_REGS] = out_ready_i;
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:786:3
	assign result_o = out_pipe_result_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * WIDTH+:WIDTH];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:787:3
	assign status_o = out_pipe_status_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * 5+:5];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:788:3
	assign extension_bit_o = out_pipe_ext_bit_q[NUM_OUT_REGS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:789:3
	assign tag_o = out_pipe_tag_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:790:3
	assign mask_o = out_pipe_mask_q[NUM_OUT_REGS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:791:3
	assign aux_o = out_pipe_aux_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:792:3
	assign out_valid_o = out_pipe_valid_q[NUM_OUT_REGS];
	// Trace: core/cvfpu/src/fpnew_cast_multi.sv:793:3
	assign busy_o = |{inp_pipe_valid_q, mid_pipe_valid_q, out_pipe_valid_q};
	initial _sv2v_0 = 0;
endmodule
