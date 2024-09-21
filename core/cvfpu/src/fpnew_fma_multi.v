module fpnew_fma_multi_8F047_F0EFF (
	clk_i,
	rst_ni,
	operands_i,
	is_boxed_i,
	rnd_mode_i,
	op_i,
	op_mod_i,
	src_fmt_i,
	dst_fmt_i,
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
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:19:13
	localparam [31:0] fpnew_pkg_NUM_FP_FORMATS = 5;
	// removed localparam type fpnew_pkg_fmt_logic_t
	parameter [0:4] FpFmtConfig = 1'sb1;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:20:13
	parameter [31:0] NumPipeRegs = 0;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:21:13
	// removed localparam type fpnew_pkg_pipe_config_t
	parameter [1:0] PipeConfig = 2'd0;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:22:38
	// removed localparam type TagType
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:23:38
	// removed localparam type AuxType
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:25:14
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
	localparam [31:0] WIDTH = fpnew_pkg_max_fp_width(FpFmtConfig);
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:26:14
	localparam [31:0] NUM_FORMATS = fpnew_pkg_NUM_FP_FORMATS;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:28:3
	input wire clk_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:29:3
	input wire rst_ni;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:31:3
	input wire [(3 * WIDTH) - 1:0] operands_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:32:3
	input wire [14:0] is_boxed_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:33:3
	// removed localparam type fpnew_pkg_roundmode_e
	input wire [2:0] rnd_mode_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:34:3
	localparam [31:0] fpnew_pkg_OP_BITS = 4;
	// removed localparam type fpnew_pkg_operation_e
	input wire [3:0] op_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:35:3
	input wire op_mod_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:36:3
	input wire [2:0] src_fmt_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:37:3
	input wire [2:0] dst_fmt_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:38:3
	input wire [TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1:0] tag_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:39:3
	input wire mask_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:40:3
	input wire [AuxType_AUX_BITS - 1:0] aux_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:42:3
	input wire in_valid_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:43:3
	output wire in_ready_o;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:44:3
	input wire flush_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:46:3
	output wire [WIDTH - 1:0] result_o;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:47:3
	// removed localparam type fpnew_pkg_status_t
	output wire [4:0] status_o;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:48:3
	output wire extension_bit_o;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:49:3
	output wire [TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1:0] tag_o;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:50:3
	output wire mask_o;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:51:3
	output wire [AuxType_AUX_BITS - 1:0] aux_o;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:53:3
	output wire out_valid_o;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:54:3
	input wire out_ready_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:56:3
	output wire busy_o;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:63:3
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
			begin : sv2v_autoblock_2
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
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:65:3
	localparam [31:0] SUPER_EXP_BITS = SUPER_FORMAT[63-:32];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:66:3
	localparam [31:0] SUPER_MAN_BITS = SUPER_FORMAT[31-:32];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:69:3
	localparam [31:0] PRECISION_BITS = SUPER_MAN_BITS + 1;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:71:3
	localparam [31:0] LOWER_SUM_WIDTH = (2 * PRECISION_BITS) + 3;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:72:3
	localparam [31:0] LZC_RESULT_WIDTH = $clog2(LOWER_SUM_WIDTH);
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:76:3
	localparam [31:0] EXP_WIDTH = fpnew_pkg_maximum(SUPER_EXP_BITS + 2, LZC_RESULT_WIDTH);
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:78:3
	localparam [31:0] SHIFT_AMOUNT_WIDTH = $clog2((3 * PRECISION_BITS) + 5);
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:80:3
	localparam NUM_INP_REGS = (PipeConfig == 2'd0 ? NumPipeRegs : (PipeConfig == 2'd3 ? (NumPipeRegs + 1) / 3 : 0));
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:85:3
	localparam NUM_MID_REGS = (PipeConfig == 2'd2 ? NumPipeRegs : (PipeConfig == 2'd3 ? (NumPipeRegs + 2) / 3 : 0));
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:90:3
	localparam NUM_OUT_REGS = (PipeConfig == 2'd1 ? NumPipeRegs : (PipeConfig == 2'd3 ? NumPipeRegs / 3 : 0));
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:99:3
	// removed localparam type fp_t
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:109:3
	wire [(3 * WIDTH) - 1:0] operands_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:110:3
	wire [2:0] src_fmt_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:111:3
	wire [2:0] dst_fmt_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:114:3
	reg [((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) - (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0)) + 1) * WIDTH) + (((0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) * WIDTH) - 1) : ((((0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)) + 1) * WIDTH) + (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) * WIDTH) - 1)):((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) * WIDTH : (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) * WIDTH)] inp_pipe_operands_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:115:3
	reg [((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) - (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0)) + 1) * 3) + (((0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) * 3) - 1) : ((((0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1)) + 1) * 3) + (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) * 3) - 1)):((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) * 3 : (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) * 3)] inp_pipe_is_boxed_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:116:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0)] inp_pipe_rnd_mode_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:117:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_OP_BITS) + ((NUM_INP_REGS * fpnew_pkg_OP_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_OP_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_OP_BITS : 0)] inp_pipe_op_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:118:3
	reg [0:NUM_INP_REGS] inp_pipe_op_mod_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:119:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS) + ((NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_FP_FORMAT_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS : 0)] inp_pipe_src_fmt_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:120:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS) + ((NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS) - 1) : ((NUM_INP_REGS + 1) * fpnew_pkg_FP_FORMAT_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * fpnew_pkg_FP_FORMAT_BITS : 0)] inp_pipe_dst_fmt_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:121:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) + ((NUM_INP_REGS * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1) : ((NUM_INP_REGS + 1) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] : 0)] inp_pipe_tag_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:122:3
	reg [0:NUM_INP_REGS] inp_pipe_mask_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:123:3
	reg [(0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * AuxType_AUX_BITS) + ((NUM_INP_REGS * AuxType_AUX_BITS) - 1) : ((NUM_INP_REGS + 1) * AuxType_AUX_BITS) - 1):(0 >= NUM_INP_REGS ? NUM_INP_REGS * AuxType_AUX_BITS : 0)] inp_pipe_aux_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:124:3
	reg [0:NUM_INP_REGS] inp_pipe_valid_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:126:3
	wire [0:NUM_INP_REGS] inp_pipe_ready;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:129:3
	wire [3 * WIDTH:1] sv2v_tmp_2F660;
	assign sv2v_tmp_2F660 = operands_i;
	always @(*) inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3 : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3) + 2) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3 : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3) + 2) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)))+:WIDTH * 3] = sv2v_tmp_2F660;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:130:3
	wire [15:1] sv2v_tmp_F6596;
	assign sv2v_tmp_F6596 = is_boxed_i;
	always @(*) inp_pipe_is_boxed_q[3 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * NUM_FORMATS) + 4) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * NUM_FORMATS) + 4) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1)))+:15] = sv2v_tmp_F6596;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:131:3
	wire [3:1] sv2v_tmp_D6AA0;
	assign sv2v_tmp_D6AA0 = rnd_mode_i;
	always @(*) inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * 3+:3] = sv2v_tmp_D6AA0;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:132:3
	wire [4:1] sv2v_tmp_99256;
	assign sv2v_tmp_99256 = op_i;
	always @(*) inp_pipe_op_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] = sv2v_tmp_99256;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:133:3
	wire [1:1] sv2v_tmp_72E02;
	assign sv2v_tmp_72E02 = op_mod_i;
	always @(*) inp_pipe_op_mod_q[0] = sv2v_tmp_72E02;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:134:3
	wire [3:1] sv2v_tmp_97D9E;
	assign sv2v_tmp_97D9E = src_fmt_i;
	always @(*) inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] = sv2v_tmp_97D9E;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:135:3
	wire [3:1] sv2v_tmp_C878E;
	assign sv2v_tmp_C878E = dst_fmt_i;
	always @(*) inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] = sv2v_tmp_C878E;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:136:3
	wire [TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] * 1:1] sv2v_tmp_BC82E;
	assign sv2v_tmp_BC82E = tag_i;
	always @(*) inp_pipe_tag_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] = sv2v_tmp_BC82E;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:137:3
	wire [1:1] sv2v_tmp_AE6A6;
	assign sv2v_tmp_AE6A6 = mask_i;
	always @(*) inp_pipe_mask_q[0] = sv2v_tmp_AE6A6;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:138:3
	wire [AuxType_AUX_BITS * 1:1] sv2v_tmp_B8722;
	assign sv2v_tmp_B8722 = aux_i;
	always @(*) inp_pipe_aux_q[(0 >= NUM_INP_REGS ? 0 : NUM_INP_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] = sv2v_tmp_B8722;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:139:3
	wire [1:1] sv2v_tmp_CFC25;
	assign sv2v_tmp_CFC25 = in_valid_i;
	always @(*) inp_pipe_valid_q[0] = sv2v_tmp_CFC25;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:141:3
	assign in_ready_o = inp_pipe_ready[0];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:143:3
	genvar _gv_i_63;
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
		for (_gv_i_63 = 0; _gv_i_63 < NUM_INP_REGS; _gv_i_63 = _gv_i_63 + 1) begin : gen_input_pipeline
			localparam i = _gv_i_63;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:145:5
			wire reg_ena;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:149:5
			assign inp_pipe_ready[i] = inp_pipe_ready[i + 1] | ~inp_pipe_valid_q[i + 1];
			// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_fma_multi.sv:151:329
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_fma_multi.sv:151:407
				if (!rst_ni)
					// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_fma_multi.sv:151:485
					inp_pipe_valid_q[i + 1] <= 1'b0;
				else
					// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_fma_multi.sv:151:637
					inp_pipe_valid_q[i + 1] <= (flush_i ? 1'b0 : (inp_pipe_ready[i] ? inp_pipe_valid_q[i] : inp_pipe_valid_q[i + 1]));
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:153:5
			assign reg_ena = inp_pipe_ready[i] & inp_pipe_valid_q[i];
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:155:71
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:155:168
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:155:265
					inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3) + 2) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3) + 2) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)))+:WIDTH * 3] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:155:455
					inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3) + 2) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3) + 2) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)))+:WIDTH * 3] <= (reg_ena ? inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 3 : ((0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 3) + 2) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 3 : ((0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 3) + 2) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)))+:WIDTH * 3] : inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3) + 2) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3 : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3) + 2) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)))+:WIDTH * 3]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:156:71
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:156:168
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:156:265
					inp_pipe_is_boxed_q[3 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS) + 4) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS) + 4) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1)))+:15] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:156:455
					inp_pipe_is_boxed_q[3 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS) + 4) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS) + 4) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1)))+:15] <= (reg_ena ? inp_pipe_is_boxed_q[3 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * NUM_FORMATS) + 4) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * NUM_FORMATS) + 4) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1)))+:15] : inp_pipe_is_boxed_q[3 * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS) + 4) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? (0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS : ((0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * NUM_FORMATS) + 4) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1)))+:15]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:157:83
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:157:180
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:157:277
					inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3+:3] <= 3'b000;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:157:467
					inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3+:3] <= (reg_ena ? inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * 3+:3] : inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * 3+:3]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:158:85
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:158:182
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:158:279
					inp_pipe_op_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] <= sv2v_cast_4CD2E(0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:158:469
					inp_pipe_op_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] <= (reg_ena ? inp_pipe_op_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS] : inp_pipe_op_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:159:71
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:159:168
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:159:265
					inp_pipe_op_mod_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:159:455
					inp_pipe_op_mod_q[i + 1] <= (reg_ena ? inp_pipe_op_mod_q[i] : inp_pipe_op_mod_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:160:95
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:160:192
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:160:289
					inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= sv2v_cast_5D882(0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:160:479
					inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= (reg_ena ? inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] : inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:161:95
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:161:192
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:161:289
					inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= sv2v_cast_5D882(0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:161:479
					inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= (reg_ena ? inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] : inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:162:81
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:162:178
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:162:275
					inp_pipe_tag_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] <= sv2v_cast_65D85(1'sb0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:162:465
					inp_pipe_tag_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] <= (reg_ena ? inp_pipe_tag_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] : inp_pipe_tag_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:163:71
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:163:168
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:163:265
					inp_pipe_mask_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:163:455
					inp_pipe_mask_q[i + 1] <= (reg_ena ? inp_pipe_mask_q[i] : inp_pipe_mask_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:164:81
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:164:178
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:164:275
					inp_pipe_aux_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= sv2v_cast_533F1(1'sb0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:164:465
					inp_pipe_aux_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= (reg_ena ? inp_pipe_aux_q[(0 >= NUM_INP_REGS ? i : NUM_INP_REGS - i) * AuxType_AUX_BITS+:AuxType_AUX_BITS] : inp_pipe_aux_q[(0 >= NUM_INP_REGS ? i + 1 : NUM_INP_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS]);
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:167:3
	assign operands_q = inp_pipe_operands_q[WIDTH * ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? ((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3 : ((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3) + 2) : (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) - (((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * 3 : 0) ? (0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3 : ((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3) + 2) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * 3) + ((NUM_INP_REGS * 3) - 1) : ((NUM_INP_REGS + 1) * 3) - 1)))+:WIDTH * 3];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:168:3
	assign src_fmt_q = inp_pipe_src_fmt_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:169:3
	assign dst_fmt_q = inp_pipe_dst_fmt_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:174:3
	wire [14:0] fmt_sign;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:175:3
	wire signed [(15 * SUPER_EXP_BITS) - 1:0] fmt_exponent;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:176:3
	wire [(15 * SUPER_MAN_BITS) - 1:0] fmt_mantissa;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:178:3
	// removed localparam type fpnew_pkg_fp_info_t
	wire [119:0] info_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:181:3
	genvar _gv_fmt_5;
	localparam [0:0] fpnew_pkg_DONT_CARE = 1'b1;
	function automatic [7:0] sv2v_cast_8;
		input reg [7:0] inp;
		sv2v_cast_8 = inp;
	endfunction
	function automatic signed [SUPER_EXP_BITS - 1:0] sv2v_cast_994BB_signed;
		input reg signed [SUPER_EXP_BITS - 1:0] inp;
		sv2v_cast_994BB_signed = inp;
	endfunction
	function automatic [SUPER_MAN_BITS - 1:0] sv2v_cast_3FC64;
		input reg [SUPER_MAN_BITS - 1:0] inp;
		sv2v_cast_3FC64 = inp;
	endfunction
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		for (_gv_fmt_5 = 0; _gv_fmt_5 < sv2v_cast_32_signed(NUM_FORMATS); _gv_fmt_5 = _gv_fmt_5 + 1) begin : fmt_init_inputs
			localparam fmt = _gv_fmt_5;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:183:5
			localparam [31:0] FP_WIDTH = fpnew_pkg_fp_width(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:184:5
			localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:185:5
			localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(sv2v_cast_5D882(fmt));
			if (FpFmtConfig[fmt]) begin : active_format
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:188:7
				wire [(3 * FP_WIDTH) - 1:0] trimmed_ops;
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:191:7
				fpnew_classifier #(
					.FpFormat(sv2v_cast_5D882(fmt)),
					.NumOperands(3)
				) i_fpnew_classifier(
					.operands_i(trimmed_ops),
					.is_boxed_i(inp_pipe_is_boxed_q[((0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1) >= (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) ? ((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * NUM_FORMATS) + fmt : (0 >= NUM_INP_REGS ? NUM_INP_REGS * NUM_FORMATS : 0) - ((((0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * NUM_FORMATS) + fmt) - (0 >= NUM_INP_REGS ? ((1 - NUM_INP_REGS) * NUM_FORMATS) + ((NUM_INP_REGS * NUM_FORMATS) - 1) : ((NUM_INP_REGS + 1) * NUM_FORMATS) - 1))) * 3+:3]),
					.info_o(info_q[8 * (fmt * 3)+:24])
				);
				genvar _gv_op_2;
				for (_gv_op_2 = 0; _gv_op_2 < 3; _gv_op_2 = _gv_op_2 + 1) begin : gen_operands
					localparam op = _gv_op_2;
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:200:9
					assign trimmed_ops[op * fpnew_pkg_fp_width(sv2v_cast_5D882(_gv_fmt_5))+:fpnew_pkg_fp_width(sv2v_cast_5D882(_gv_fmt_5))] = operands_q[(op * WIDTH) + (FP_WIDTH - 1)-:FP_WIDTH];
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:201:9
					assign fmt_sign[(fmt * 3) + op] = operands_q[(op * WIDTH) + (FP_WIDTH - 1)];
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:202:9
					assign fmt_exponent[((fmt * 3) + op) * SUPER_EXP_BITS+:SUPER_EXP_BITS] = $signed({1'b0, operands_q[(op * WIDTH) + MAN_BITS+:EXP_BITS]});
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:203:9
					assign fmt_mantissa[((fmt * 3) + op) * SUPER_MAN_BITS+:SUPER_MAN_BITS] = {info_q[(((fmt * 3) + op) * 8) + 7], operands_q[(op * WIDTH) + (MAN_BITS - 1)-:MAN_BITS]} << (SUPER_MAN_BITS - MAN_BITS);
				end
			end
			else begin : inactive_format
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:207:7
				assign info_q[8 * (fmt * 3)+:24] = {3 {sv2v_cast_8(fpnew_pkg_DONT_CARE)}};
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:208:7
				assign fmt_sign[fmt * 3+:3] = fpnew_pkg_DONT_CARE;
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:209:7
				assign fmt_exponent[SUPER_EXP_BITS * (fmt * 3)+:SUPER_EXP_BITS * 3] = {3 {sv2v_cast_994BB_signed(fpnew_pkg_DONT_CARE)}};
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:210:7
				assign fmt_mantissa[SUPER_MAN_BITS * (fmt * 3)+:SUPER_MAN_BITS * 3] = {3 {sv2v_cast_3FC64(fpnew_pkg_DONT_CARE)}};
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:214:3
	reg [((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS) - 1:0] operand_a;
	reg [((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS) - 1:0] operand_b;
	reg [((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS) - 1:0] operand_c;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:215:3
	reg [7:0] info_a;
	reg [7:0] info_b;
	reg [7:0] info_c;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:229:3
	function automatic [31:0] fpnew_pkg_bias;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:337:40
		input reg [2:0] fmt;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:338:5
		fpnew_pkg_bias = $unsigned((2 ** (fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 63-:32] - 1)) - 1);
	endfunction
	function automatic [SUPER_EXP_BITS - 1:0] sv2v_cast_994BB;
		input reg [SUPER_EXP_BITS - 1:0] inp;
		sv2v_cast_994BB = inp;
	endfunction
	function automatic [SUPER_MAN_BITS - 1:0] sv2v_cast_2F96C;
		input reg [SUPER_MAN_BITS - 1:0] inp;
		sv2v_cast_2F96C = inp;
	endfunction
	function automatic [SUPER_EXP_BITS - 1:0] sv2v_cast_1FC93;
		input reg [SUPER_EXP_BITS - 1:0] inp;
		sv2v_cast_1FC93 = inp;
	endfunction
	always @(*) begin : op_select
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpnew_fma_multi.sv:232:5
		operand_a = {fmt_sign[src_fmt_q * 3], fmt_exponent[(src_fmt_q * 3) * SUPER_EXP_BITS+:SUPER_EXP_BITS], fmt_mantissa[(src_fmt_q * 3) * SUPER_MAN_BITS+:SUPER_MAN_BITS]};
		// Trace: core/cvfpu/src/fpnew_fma_multi.sv:233:5
		operand_b = {fmt_sign[(src_fmt_q * 3) + 1], fmt_exponent[((src_fmt_q * 3) + 1) * SUPER_EXP_BITS+:SUPER_EXP_BITS], fmt_mantissa[((src_fmt_q * 3) + 1) * SUPER_MAN_BITS+:SUPER_MAN_BITS]};
		// Trace: core/cvfpu/src/fpnew_fma_multi.sv:234:5
		operand_c = {fmt_sign[(dst_fmt_q * 3) + 2], fmt_exponent[((dst_fmt_q * 3) + 2) * SUPER_EXP_BITS+:SUPER_EXP_BITS], fmt_mantissa[((dst_fmt_q * 3) + 2) * SUPER_MAN_BITS+:SUPER_MAN_BITS]};
		// Trace: core/cvfpu/src/fpnew_fma_multi.sv:235:5
		info_a = info_q[(src_fmt_q * 3) * 8+:8];
		// Trace: core/cvfpu/src/fpnew_fma_multi.sv:236:5
		info_b = info_q[((src_fmt_q * 3) + 1) * 8+:8];
		// Trace: core/cvfpu/src/fpnew_fma_multi.sv:237:5
		info_c = info_q[((dst_fmt_q * 3) + 2) * 8+:8];
		// Trace: core/cvfpu/src/fpnew_fma_multi.sv:240:5
		operand_c[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))] = operand_c[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))] ^ inp_pipe_op_mod_q[NUM_INP_REGS];
		// Trace: core/cvfpu/src/fpnew_fma_multi.sv:242:5
		(* full_case, parallel_case *)
		case (inp_pipe_op_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * fpnew_pkg_OP_BITS+:fpnew_pkg_OP_BITS])
			sv2v_cast_4CD2E(0):
				;
			sv2v_cast_4CD2E(1):
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:244:26
				operand_a[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))] = ~operand_a[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))];
			sv2v_cast_4CD2E(2): begin
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:246:9
				operand_a = {1'b0, sv2v_cast_994BB(fpnew_pkg_bias(src_fmt_q)), sv2v_cast_2F96C(1'sb0)};
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:247:9
				info_a = 8'b10000001;
			end
			sv2v_cast_4CD2E(3): begin
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:250:9
				if (inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3+:3] == 3'b010)
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:251:11
					operand_c = {1'b0, sv2v_cast_1FC93(1'sb0), sv2v_cast_2F96C(1'sb0)};
				else
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:253:11
					operand_c = {1'b1, sv2v_cast_1FC93(1'sb0), sv2v_cast_2F96C(1'sb0)};
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:254:9
				info_c = 8'b00100001;
			end
			default: begin
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:257:9
				operand_a = {fpnew_pkg_DONT_CARE, sv2v_cast_994BB(fpnew_pkg_DONT_CARE), sv2v_cast_3FC64(fpnew_pkg_DONT_CARE)};
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:258:9
				operand_b = {fpnew_pkg_DONT_CARE, sv2v_cast_994BB(fpnew_pkg_DONT_CARE), sv2v_cast_3FC64(fpnew_pkg_DONT_CARE)};
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:259:9
				operand_c = {fpnew_pkg_DONT_CARE, sv2v_cast_994BB(fpnew_pkg_DONT_CARE), sv2v_cast_3FC64(fpnew_pkg_DONT_CARE)};
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:260:9
				info_a = {fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE};
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:261:9
				info_b = {fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE};
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:262:9
				info_c = {fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE, fpnew_pkg_DONT_CARE};
			end
		endcase
	end
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:270:3
	wire any_operand_inf;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:271:3
	wire any_operand_nan;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:272:3
	wire signalling_nan;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:273:3
	wire effective_subtraction;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:274:3
	wire tentative_sign;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:277:3
	assign any_operand_inf = |{info_a[4], info_b[4], info_c[4]};
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:278:3
	assign any_operand_nan = |{info_a[3], info_b[3], info_c[3]};
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:279:3
	assign signalling_nan = |{info_a[2], info_b[2], info_c[2]};
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:281:3
	assign effective_subtraction = (operand_a[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))] ^ operand_b[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))]) ^ operand_c[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:283:3
	assign tentative_sign = operand_a[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))] ^ operand_b[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:288:3
	wire [WIDTH - 1:0] special_result;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:289:3
	wire [4:0] special_status;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:290:3
	wire result_is_special;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:292:3
	reg [(NUM_FORMATS * WIDTH) - 1:0] fmt_special_result;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:293:3
	reg [24:0] fmt_special_status;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:294:3
	reg [4:0] fmt_result_is_special;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:297:3
	genvar _gv_fmt_6;
	generate
		for (_gv_fmt_6 = 0; _gv_fmt_6 < sv2v_cast_32_signed(NUM_FORMATS); _gv_fmt_6 = _gv_fmt_6 + 1) begin : gen_special_results
			localparam fmt = _gv_fmt_6;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:299:5
			localparam [31:0] FP_WIDTH = fpnew_pkg_fp_width(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:300:5
			localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:301:5
			localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:303:5
			localparam [EXP_BITS - 1:0] QNAN_EXPONENT = 1'sb1;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:304:5
			localparam [MAN_BITS - 1:0] QNAN_MANTISSA = 2 ** (MAN_BITS - 1);
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:305:5
			localparam [MAN_BITS - 1:0] ZERO_MANTISSA = 1'sb0;
			if (FpFmtConfig[fmt]) begin : active_format
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:308:7
				always @(*) begin : special_results
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:309:9
					reg [FP_WIDTH - 1:0] special_res;
					if (_sv2v_0)
						;
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:312:9
					special_res = {1'b0, QNAN_EXPONENT, QNAN_MANTISSA};
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:313:9
					fmt_special_status[fmt * 5+:5] = 1'sb0;
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:314:9
					fmt_result_is_special[fmt] = 1'b0;
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:320:9
					if ((info_a[4] && info_b[5]) || (info_a[5] && info_b[4])) begin
						// Trace: core/cvfpu/src/fpnew_fma_multi.sv:321:11
						fmt_result_is_special[fmt] = 1'b1;
						// Trace: core/cvfpu/src/fpnew_fma_multi.sv:322:11
						fmt_special_status[(fmt * 5) + 4] = 1'b1;
					end
					else if (any_operand_nan) begin
						// Trace: core/cvfpu/src/fpnew_fma_multi.sv:325:11
						fmt_result_is_special[fmt] = 1'b1;
						// Trace: core/cvfpu/src/fpnew_fma_multi.sv:326:11
						fmt_special_status[(fmt * 5) + 4] = signalling_nan;
					end
					else if (any_operand_inf) begin
						// Trace: core/cvfpu/src/fpnew_fma_multi.sv:329:11
						fmt_result_is_special[fmt] = 1'b1;
						// Trace: core/cvfpu/src/fpnew_fma_multi.sv:331:11
						if (((info_a[4] || info_b[4]) && info_c[4]) && effective_subtraction)
							// Trace: core/cvfpu/src/fpnew_fma_multi.sv:332:13
							fmt_special_status[(fmt * 5) + 4] = 1'b1;
						else if (info_a[4] || info_b[4])
							// Trace: core/cvfpu/src/fpnew_fma_multi.sv:336:13
							special_res = {operand_a[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))] ^ operand_b[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))], QNAN_EXPONENT, ZERO_MANTISSA};
						else if (info_c[4])
							// Trace: core/cvfpu/src/fpnew_fma_multi.sv:340:13
							special_res = {operand_c[1 + (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))], QNAN_EXPONENT, ZERO_MANTISSA};
					end
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:344:9
					fmt_special_result[fmt * WIDTH+:WIDTH] = 1'sb1;
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:345:9
					fmt_special_result[(fmt * WIDTH) + (FP_WIDTH - 1)-:FP_WIDTH] = special_res;
				end
			end
			else begin : inactive_format
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:348:7
				wire [WIDTH * 1:1] sv2v_tmp_D05EE;
				assign sv2v_tmp_D05EE = {WIDTH {fpnew_pkg_DONT_CARE}};
				always @(*) fmt_special_result[fmt * WIDTH+:WIDTH] = sv2v_tmp_D05EE;
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:349:7
				wire [5:1] sv2v_tmp_0AFA1;
				assign sv2v_tmp_0AFA1 = 1'sb0;
				always @(*) fmt_special_status[fmt * 5+:5] = sv2v_tmp_0AFA1;
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:350:7
				wire [1:1] sv2v_tmp_EE036;
				assign sv2v_tmp_EE036 = 1'b0;
				always @(*) fmt_result_is_special[fmt] = sv2v_tmp_EE036;
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:355:3
	assign result_is_special = fmt_result_is_special[dst_fmt_q];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:357:3
	assign special_status = fmt_special_status[dst_fmt_q * 5+:5];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:359:3
	assign special_result = fmt_special_result[dst_fmt_q * WIDTH+:WIDTH];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:364:3
	wire signed [EXP_WIDTH - 1:0] exponent_a;
	wire signed [EXP_WIDTH - 1:0] exponent_b;
	wire signed [EXP_WIDTH - 1:0] exponent_c;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:365:3
	wire signed [EXP_WIDTH - 1:0] exponent_addend;
	wire signed [EXP_WIDTH - 1:0] exponent_product;
	wire signed [EXP_WIDTH - 1:0] exponent_difference;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:366:3
	wire signed [EXP_WIDTH - 1:0] tentative_exponent;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:369:3
	assign exponent_a = $signed({1'b0, operand_a[SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)-:((SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)) >= (SUPER_MAN_BITS + 0) ? ((SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)) - (SUPER_MAN_BITS + 0)) + 1 : ((SUPER_MAN_BITS + 0) - (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))) + 1)]});
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:370:3
	assign exponent_b = $signed({1'b0, operand_b[SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)-:((SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)) >= (SUPER_MAN_BITS + 0) ? ((SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)) - (SUPER_MAN_BITS + 0)) + 1 : ((SUPER_MAN_BITS + 0) - (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))) + 1)]});
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:371:3
	assign exponent_c = $signed({1'b0, operand_c[SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)-:((SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)) >= (SUPER_MAN_BITS + 0) ? ((SUPER_EXP_BITS + (SUPER_MAN_BITS - 1)) - (SUPER_MAN_BITS + 0)) + 1 : ((SUPER_MAN_BITS + 0) - (SUPER_EXP_BITS + (SUPER_MAN_BITS - 1))) + 1)]});
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:375:3
	assign exponent_addend = $signed(exponent_c + $signed({1'b0, ~info_c[7]}));
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:377:3
	assign exponent_product = (info_a[5] || info_b[5] ? 2 - $signed(fpnew_pkg_bias(dst_fmt_q)) : $signed(((((exponent_a + info_a[6]) + exponent_b) + info_b[6]) - (2 * $signed(fpnew_pkg_bias(src_fmt_q)))) + $signed(fpnew_pkg_bias(dst_fmt_q))));
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:384:3
	assign exponent_difference = exponent_addend - exponent_product;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:386:3
	assign tentative_exponent = (exponent_difference > 0 ? exponent_addend : exponent_product);
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:389:3
	reg [SHIFT_AMOUNT_WIDTH - 1:0] addend_shamt;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:391:3
	always @(*) begin : addend_shift_amount
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpnew_fma_multi.sv:393:5
		if (exponent_difference <= $signed((-2 * PRECISION_BITS) - 1))
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:394:7
			addend_shamt = (3 * PRECISION_BITS) + 4;
		else if (exponent_difference <= $signed(PRECISION_BITS + 2))
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:397:7
			addend_shamt = $unsigned(($signed(PRECISION_BITS) + 3) - exponent_difference);
		else
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:400:7
			addend_shamt = 0;
	end
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:406:3
	wire [PRECISION_BITS - 1:0] mantissa_a;
	wire [PRECISION_BITS - 1:0] mantissa_b;
	wire [PRECISION_BITS - 1:0] mantissa_c;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:407:3
	wire [(2 * PRECISION_BITS) - 1:0] product;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:408:3
	wire [(3 * PRECISION_BITS) + 3:0] product_shifted;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:411:3
	assign mantissa_a = {info_a[7], operand_a[SUPER_MAN_BITS - 1-:SUPER_MAN_BITS]};
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:412:3
	assign mantissa_b = {info_b[7], operand_b[SUPER_MAN_BITS - 1-:SUPER_MAN_BITS]};
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:413:3
	assign mantissa_c = {info_c[7], operand_c[SUPER_MAN_BITS - 1-:SUPER_MAN_BITS]};
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:416:3
	assign product = mantissa_a * mantissa_b;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:421:3
	assign product_shifted = product << 2;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:426:3
	wire [(3 * PRECISION_BITS) + 3:0] addend_after_shift;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:427:3
	wire [PRECISION_BITS - 1:0] addend_sticky_bits;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:428:3
	wire sticky_before_add;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:429:3
	wire [(3 * PRECISION_BITS) + 3:0] addend_shifted;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:430:3
	wire inject_carry_in;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:440:3
	assign {addend_after_shift, addend_sticky_bits} = (mantissa_c << ((3 * PRECISION_BITS) + 4)) >> addend_shamt;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:443:3
	assign sticky_before_add = |addend_sticky_bits;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:446:3
	assign addend_shifted = (effective_subtraction ? ~addend_after_shift : addend_after_shift);
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:447:3
	assign inject_carry_in = effective_subtraction & ~sticky_before_add;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:452:3
	wire [(3 * PRECISION_BITS) + 4:0] sum_raw;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:453:3
	wire sum_carry;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:454:3
	wire [(3 * PRECISION_BITS) + 3:0] sum;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:455:3
	wire final_sign;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:458:3
	assign sum_raw = (product_shifted + addend_shifted) + inject_carry_in;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:459:3
	assign sum_carry = sum_raw[(3 * PRECISION_BITS) + 4];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:462:3
	assign sum = (effective_subtraction && ~sum_carry ? -sum_raw : sum_raw);
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:465:3
	assign final_sign = (effective_subtraction && (sum_carry == tentative_sign) ? 1'b1 : (effective_subtraction ? 1'b0 : tentative_sign));
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:473:3
	wire effective_subtraction_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:474:3
	wire signed [EXP_WIDTH - 1:0] exponent_product_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:475:3
	wire signed [EXP_WIDTH - 1:0] exponent_difference_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:476:3
	wire signed [EXP_WIDTH - 1:0] tentative_exponent_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:477:3
	wire [SHIFT_AMOUNT_WIDTH - 1:0] addend_shamt_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:478:3
	wire sticky_before_add_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:479:3
	wire [(3 * PRECISION_BITS) + 3:0] sum_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:480:3
	wire final_sign_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:481:3
	wire [2:0] dst_fmt_q2;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:482:3
	wire [2:0] rnd_mode_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:483:3
	wire result_is_special_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:484:3
	wire [((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS) - 1:0] special_result_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:485:3
	wire [4:0] special_status_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:487:3
	reg [0:NUM_MID_REGS] mid_pipe_eff_sub_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:488:3
	reg signed [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * EXP_WIDTH) + ((NUM_MID_REGS * EXP_WIDTH) - 1) : ((NUM_MID_REGS + 1) * EXP_WIDTH) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * EXP_WIDTH : 0)] mid_pipe_exp_prod_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:489:3
	reg signed [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * EXP_WIDTH) + ((NUM_MID_REGS * EXP_WIDTH) - 1) : ((NUM_MID_REGS + 1) * EXP_WIDTH) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * EXP_WIDTH : 0)] mid_pipe_exp_diff_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:490:3
	reg signed [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * EXP_WIDTH) + ((NUM_MID_REGS * EXP_WIDTH) - 1) : ((NUM_MID_REGS + 1) * EXP_WIDTH) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * EXP_WIDTH : 0)] mid_pipe_tent_exp_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:491:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * SHIFT_AMOUNT_WIDTH) + ((NUM_MID_REGS * SHIFT_AMOUNT_WIDTH) - 1) : ((NUM_MID_REGS + 1) * SHIFT_AMOUNT_WIDTH) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * SHIFT_AMOUNT_WIDTH : 0)] mid_pipe_add_shamt_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:492:3
	reg [0:NUM_MID_REGS] mid_pipe_sticky_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:493:3
	reg [(0 >= NUM_MID_REGS ? (((3 * PRECISION_BITS) + 3) >= 0 ? ((1 - NUM_MID_REGS) * ((3 * PRECISION_BITS) + 4)) + ((NUM_MID_REGS * ((3 * PRECISION_BITS) + 4)) - 1) : ((1 - NUM_MID_REGS) * (1 - ((3 * PRECISION_BITS) + 3))) + ((((3 * PRECISION_BITS) + 3) + (NUM_MID_REGS * (1 - ((3 * PRECISION_BITS) + 3)))) - 1)) : (((3 * PRECISION_BITS) + 3) >= 0 ? ((NUM_MID_REGS + 1) * ((3 * PRECISION_BITS) + 4)) - 1 : ((NUM_MID_REGS + 1) * (1 - ((3 * PRECISION_BITS) + 3))) + ((3 * PRECISION_BITS) + 2))):(0 >= NUM_MID_REGS ? (((3 * PRECISION_BITS) + 3) >= 0 ? NUM_MID_REGS * ((3 * PRECISION_BITS) + 4) : ((3 * PRECISION_BITS) + 3) + (NUM_MID_REGS * (1 - ((3 * PRECISION_BITS) + 3)))) : (((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3))] mid_pipe_sum_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:494:3
	reg [0:NUM_MID_REGS] mid_pipe_final_sign_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:495:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * 3) + ((NUM_MID_REGS * 3) - 1) : ((NUM_MID_REGS + 1) * 3) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * 3 : 0)] mid_pipe_rnd_mode_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:496:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * fpnew_pkg_FP_FORMAT_BITS) + ((NUM_MID_REGS * fpnew_pkg_FP_FORMAT_BITS) - 1) : ((NUM_MID_REGS + 1) * fpnew_pkg_FP_FORMAT_BITS) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * fpnew_pkg_FP_FORMAT_BITS : 0)] mid_pipe_dst_fmt_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:497:3
	reg [0:NUM_MID_REGS] mid_pipe_res_is_spec_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:498:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)) + ((NUM_MID_REGS * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)) - 1) : ((NUM_MID_REGS + 1) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS) : 0)] mid_pipe_spec_res_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:499:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * 5) + ((NUM_MID_REGS * 5) - 1) : ((NUM_MID_REGS + 1) * 5) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * 5 : 0)] mid_pipe_spec_stat_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:500:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) + ((NUM_MID_REGS * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1) : ((NUM_MID_REGS + 1) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] : 0)] mid_pipe_tag_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:501:3
	reg [0:NUM_MID_REGS] mid_pipe_mask_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:502:3
	reg [(0 >= NUM_MID_REGS ? ((1 - NUM_MID_REGS) * AuxType_AUX_BITS) + ((NUM_MID_REGS * AuxType_AUX_BITS) - 1) : ((NUM_MID_REGS + 1) * AuxType_AUX_BITS) - 1):(0 >= NUM_MID_REGS ? NUM_MID_REGS * AuxType_AUX_BITS : 0)] mid_pipe_aux_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:503:3
	reg [0:NUM_MID_REGS] mid_pipe_valid_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:505:3
	wire [0:NUM_MID_REGS] mid_pipe_ready;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:508:3
	wire [1:1] sv2v_tmp_301F1;
	assign sv2v_tmp_301F1 = effective_subtraction;
	always @(*) mid_pipe_eff_sub_q[0] = sv2v_tmp_301F1;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:509:3
	wire [EXP_WIDTH * 1:1] sv2v_tmp_C29F5;
	assign sv2v_tmp_C29F5 = exponent_product;
	always @(*) mid_pipe_exp_prod_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * EXP_WIDTH+:EXP_WIDTH] = sv2v_tmp_C29F5;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:510:3
	wire [EXP_WIDTH * 1:1] sv2v_tmp_24DD8;
	assign sv2v_tmp_24DD8 = exponent_difference;
	always @(*) mid_pipe_exp_diff_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * EXP_WIDTH+:EXP_WIDTH] = sv2v_tmp_24DD8;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:511:3
	wire [EXP_WIDTH * 1:1] sv2v_tmp_6091A;
	assign sv2v_tmp_6091A = tentative_exponent;
	always @(*) mid_pipe_tent_exp_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * EXP_WIDTH+:EXP_WIDTH] = sv2v_tmp_6091A;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:512:3
	wire [SHIFT_AMOUNT_WIDTH * 1:1] sv2v_tmp_CB467;
	assign sv2v_tmp_CB467 = addend_shamt;
	always @(*) mid_pipe_add_shamt_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * SHIFT_AMOUNT_WIDTH+:SHIFT_AMOUNT_WIDTH] = sv2v_tmp_CB467;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:513:3
	wire [1:1] sv2v_tmp_6A24C;
	assign sv2v_tmp_6A24C = sticky_before_add;
	always @(*) mid_pipe_sticky_q[0] = sv2v_tmp_6A24C;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:514:3
	wire [(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)) * 1:1] sv2v_tmp_6ABE6;
	assign sv2v_tmp_6ABE6 = sum;
	always @(*) mid_pipe_sum_q[(((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3) + ((0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * (((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)))+:(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3))] = sv2v_tmp_6ABE6;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:515:3
	wire [1:1] sv2v_tmp_9C379;
	assign sv2v_tmp_9C379 = final_sign;
	always @(*) mid_pipe_final_sign_q[0] = sv2v_tmp_9C379;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:516:3
	wire [3:1] sv2v_tmp_68647;
	assign sv2v_tmp_68647 = inp_pipe_rnd_mode_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * 3+:3];
	always @(*) mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * 3+:3] = sv2v_tmp_68647;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:517:3
	wire [3:1] sv2v_tmp_59791;
	assign sv2v_tmp_59791 = dst_fmt_q;
	always @(*) mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] = sv2v_tmp_59791;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:518:3
	wire [1:1] sv2v_tmp_08378;
	assign sv2v_tmp_08378 = result_is_special;
	always @(*) mid_pipe_res_is_spec_q[0] = sv2v_tmp_08378;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:519:3
	wire [((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS) * 1:1] sv2v_tmp_3E0BB;
	assign sv2v_tmp_3E0BB = special_result;
	always @(*) mid_pipe_spec_res_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)+:(1 + SUPER_EXP_BITS) + SUPER_MAN_BITS] = sv2v_tmp_3E0BB;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:520:3
	wire [5:1] sv2v_tmp_80D24;
	assign sv2v_tmp_80D24 = special_status;
	always @(*) mid_pipe_spec_stat_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * 5+:5] = sv2v_tmp_80D24;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:521:3
	wire [TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] * 1:1] sv2v_tmp_3DF89;
	assign sv2v_tmp_3DF89 = inp_pipe_tag_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]];
	always @(*) mid_pipe_tag_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] = sv2v_tmp_3DF89;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:522:3
	wire [1:1] sv2v_tmp_FAFEF;
	assign sv2v_tmp_FAFEF = inp_pipe_mask_q[NUM_INP_REGS];
	always @(*) mid_pipe_mask_q[0] = sv2v_tmp_FAFEF;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:523:3
	wire [AuxType_AUX_BITS * 1:1] sv2v_tmp_DC0F1;
	assign sv2v_tmp_DC0F1 = inp_pipe_aux_q[(0 >= NUM_INP_REGS ? NUM_INP_REGS : NUM_INP_REGS - NUM_INP_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS];
	always @(*) mid_pipe_aux_q[(0 >= NUM_MID_REGS ? 0 : NUM_MID_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] = sv2v_tmp_DC0F1;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:524:3
	wire [1:1] sv2v_tmp_C7159;
	assign sv2v_tmp_C7159 = inp_pipe_valid_q[NUM_INP_REGS];
	always @(*) mid_pipe_valid_q[0] = sv2v_tmp_C7159;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:526:3
	assign inp_pipe_ready[NUM_INP_REGS] = mid_pipe_ready[0];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:529:3
	genvar _gv_i_64;
	generate
		for (_gv_i_64 = 0; _gv_i_64 < NUM_MID_REGS; _gv_i_64 = _gv_i_64 + 1) begin : gen_inside_pipeline
			localparam i = _gv_i_64;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:531:5
			wire reg_ena;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:535:5
			assign mid_pipe_ready[i] = mid_pipe_ready[i + 1] | ~mid_pipe_valid_q[i + 1];
			// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_fma_multi.sv:537:329
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_fma_multi.sv:537:407
				if (!rst_ni)
					// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_fma_multi.sv:537:485
					mid_pipe_valid_q[i + 1] <= 1'b0;
				else
					// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_fma_multi.sv:537:637
					mid_pipe_valid_q[i + 1] <= (flush_i ? 1'b0 : (mid_pipe_ready[i] ? mid_pipe_valid_q[i] : mid_pipe_valid_q[i + 1]));
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:539:5
			assign reg_ena = mid_pipe_ready[i] & mid_pipe_valid_q[i];
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:541:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:541:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:541:271
					mid_pipe_eff_sub_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:541:461
					mid_pipe_eff_sub_q[i + 1] <= (reg_ena ? mid_pipe_eff_sub_q[i] : mid_pipe_eff_sub_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:542:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:542:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:542:271
					mid_pipe_exp_prod_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:542:461
					mid_pipe_exp_prod_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH] <= (reg_ena ? mid_pipe_exp_prod_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * EXP_WIDTH+:EXP_WIDTH] : mid_pipe_exp_prod_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:543:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:543:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:543:271
					mid_pipe_exp_diff_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:543:461
					mid_pipe_exp_diff_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH] <= (reg_ena ? mid_pipe_exp_diff_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * EXP_WIDTH+:EXP_WIDTH] : mid_pipe_exp_diff_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:544:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:544:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:544:271
					mid_pipe_tent_exp_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:544:461
					mid_pipe_tent_exp_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH] <= (reg_ena ? mid_pipe_tent_exp_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * EXP_WIDTH+:EXP_WIDTH] : mid_pipe_tent_exp_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * EXP_WIDTH+:EXP_WIDTH]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:545:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:545:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:545:271
					mid_pipe_add_shamt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * SHIFT_AMOUNT_WIDTH+:SHIFT_AMOUNT_WIDTH] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:545:461
					mid_pipe_add_shamt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * SHIFT_AMOUNT_WIDTH+:SHIFT_AMOUNT_WIDTH] <= (reg_ena ? mid_pipe_add_shamt_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * SHIFT_AMOUNT_WIDTH+:SHIFT_AMOUNT_WIDTH] : mid_pipe_add_shamt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * SHIFT_AMOUNT_WIDTH+:SHIFT_AMOUNT_WIDTH]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:546:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:546:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:546:271
					mid_pipe_sticky_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:546:461
					mid_pipe_sticky_q[i + 1] <= (reg_ena ? mid_pipe_sticky_q[i] : mid_pipe_sticky_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:547:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:547:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:547:271
					mid_pipe_sum_q[(((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3) + ((0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * (((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)))+:(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3))] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:547:461
					mid_pipe_sum_q[(((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3) + ((0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * (((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)))+:(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3))] <= (reg_ena ? mid_pipe_sum_q[(((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3) + ((0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * (((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)))+:(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3))] : mid_pipe_sum_q[(((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3) + ((0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * (((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)))+:(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3))]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:548:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:548:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:548:271
					mid_pipe_final_sign_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:548:461
					mid_pipe_final_sign_q[i + 1] <= (reg_ena ? mid_pipe_final_sign_q[i] : mid_pipe_final_sign_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:549:89
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:549:186
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:549:283
					mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 3+:3] <= 3'b000;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:549:473
					mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 3+:3] <= (reg_ena ? mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * 3+:3] : mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 3+:3]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:550:101
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:550:198
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:550:295
					mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= sv2v_cast_5D882(0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:550:485
					mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] <= (reg_ena ? mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS] : mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:551:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:551:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:551:271
					mid_pipe_res_is_spec_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:551:461
					mid_pipe_res_is_spec_q[i + 1] <= (reg_ena ? mid_pipe_res_is_spec_q[i] : mid_pipe_res_is_spec_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:552:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:552:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:552:271
					mid_pipe_spec_res_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)+:(1 + SUPER_EXP_BITS) + SUPER_MAN_BITS] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:552:461
					mid_pipe_spec_res_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)+:(1 + SUPER_EXP_BITS) + SUPER_MAN_BITS] <= (reg_ena ? mid_pipe_spec_res_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)+:(1 + SUPER_EXP_BITS) + SUPER_MAN_BITS] : mid_pipe_spec_res_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)+:(1 + SUPER_EXP_BITS) + SUPER_MAN_BITS]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:553:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:553:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:553:271
					mid_pipe_spec_stat_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 5+:5] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:553:461
					mid_pipe_spec_stat_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 5+:5] <= (reg_ena ? mid_pipe_spec_stat_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * 5+:5] : mid_pipe_spec_stat_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * 5+:5]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:554:87
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:554:184
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:554:281
					mid_pipe_tag_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] <= sv2v_cast_65D85(1'sb0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:554:471
					mid_pipe_tag_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] <= (reg_ena ? mid_pipe_tag_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] : mid_pipe_tag_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:555:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:555:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:555:271
					mid_pipe_mask_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:555:461
					mid_pipe_mask_q[i + 1] <= (reg_ena ? mid_pipe_mask_q[i] : mid_pipe_mask_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:556:87
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:556:184
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:556:281
					mid_pipe_aux_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= sv2v_cast_533F1(1'sb0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:556:471
					mid_pipe_aux_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= (reg_ena ? mid_pipe_aux_q[(0 >= NUM_MID_REGS ? i : NUM_MID_REGS - i) * AuxType_AUX_BITS+:AuxType_AUX_BITS] : mid_pipe_aux_q[(0 >= NUM_MID_REGS ? i + 1 : NUM_MID_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS]);
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:559:3
	assign effective_subtraction_q = mid_pipe_eff_sub_q[NUM_MID_REGS];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:560:3
	assign exponent_product_q = mid_pipe_exp_prod_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * EXP_WIDTH+:EXP_WIDTH];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:561:3
	assign exponent_difference_q = mid_pipe_exp_diff_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * EXP_WIDTH+:EXP_WIDTH];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:562:3
	assign tentative_exponent_q = mid_pipe_tent_exp_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * EXP_WIDTH+:EXP_WIDTH];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:563:3
	assign addend_shamt_q = mid_pipe_add_shamt_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * SHIFT_AMOUNT_WIDTH+:SHIFT_AMOUNT_WIDTH];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:564:3
	assign sticky_before_add_q = mid_pipe_sticky_q[NUM_MID_REGS];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:565:3
	assign sum_q = mid_pipe_sum_q[(((3 * PRECISION_BITS) + 3) >= 0 ? 0 : (3 * PRECISION_BITS) + 3) + ((0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * (((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3)))+:(((3 * PRECISION_BITS) + 3) >= 0 ? (3 * PRECISION_BITS) + 4 : 1 - ((3 * PRECISION_BITS) + 3))];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:566:3
	assign final_sign_q = mid_pipe_final_sign_q[NUM_MID_REGS];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:567:3
	assign rnd_mode_q = mid_pipe_rnd_mode_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * 3+:3];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:568:3
	assign dst_fmt_q2 = mid_pipe_dst_fmt_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * fpnew_pkg_FP_FORMAT_BITS+:fpnew_pkg_FP_FORMAT_BITS];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:569:3
	assign result_is_special_q = mid_pipe_res_is_spec_q[NUM_MID_REGS];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:570:3
	assign special_result_q = mid_pipe_spec_res_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * ((1 + SUPER_EXP_BITS) + SUPER_MAN_BITS)+:(1 + SUPER_EXP_BITS) + SUPER_MAN_BITS];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:571:3
	assign special_status_q = mid_pipe_spec_stat_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * 5+:5];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:576:3
	wire [LOWER_SUM_WIDTH - 1:0] sum_lower;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:577:3
	wire [LZC_RESULT_WIDTH - 1:0] leading_zero_count;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:578:3
	wire signed [LZC_RESULT_WIDTH:0] leading_zero_count_sgn;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:579:3
	wire lzc_zeroes;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:581:3
	reg [SHIFT_AMOUNT_WIDTH - 1:0] norm_shamt;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:582:3
	reg signed [EXP_WIDTH - 1:0] normalized_exponent;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:584:3
	wire [(3 * PRECISION_BITS) + 4:0] sum_shifted;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:585:3
	reg [PRECISION_BITS:0] final_mantissa;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:586:3
	reg [(2 * PRECISION_BITS) + 2:0] sum_sticky_bits;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:587:3
	wire sticky_after_norm;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:589:3
	reg signed [EXP_WIDTH - 1:0] final_exponent;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:591:3
	assign sum_lower = sum_q[LOWER_SUM_WIDTH - 1:0];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:594:3
	lzc #(
		.WIDTH(LOWER_SUM_WIDTH),
		.MODE(1)
	) i_lzc(
		.in_i(sum_lower),
		.cnt_o(leading_zero_count),
		.empty_o(lzc_zeroes)
	);
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:603:3
	assign leading_zero_count_sgn = $signed({1'b0, leading_zero_count});
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:606:3
	always @(*) begin : norm_shift_amount
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpnew_fma_multi.sv:608:5
		if ((exponent_difference_q <= 0) || (effective_subtraction_q && (exponent_difference_q <= 2))) begin
			begin
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:610:7
				if ((((exponent_product_q - leading_zero_count_sgn) + 1) >= 0) && !lzc_zeroes) begin
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:612:9
					norm_shamt = (PRECISION_BITS + 2) + leading_zero_count;
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:613:9
					normalized_exponent = (exponent_product_q - leading_zero_count_sgn) + 1;
				end
				else begin
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:617:9
					norm_shamt = $unsigned($signed((PRECISION_BITS + 2) + exponent_product_q));
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:618:9
					normalized_exponent = 0;
				end
			end
		end
		else begin
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:622:7
			norm_shamt = addend_shamt_q;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:623:7
			normalized_exponent = tentative_exponent_q;
		end
	end
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:628:3
	assign sum_shifted = sum_q << norm_shamt;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:632:3
	always @(*) begin : small_norm
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpnew_fma_multi.sv:634:5
		{final_mantissa, sum_sticky_bits} = sum_shifted;
		// Trace: core/cvfpu/src/fpnew_fma_multi.sv:635:5
		final_exponent = normalized_exponent;
		// Trace: core/cvfpu/src/fpnew_fma_multi.sv:638:5
		if (sum_shifted[(3 * PRECISION_BITS) + 4]) begin
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:639:7
			{final_mantissa, sum_sticky_bits} = sum_shifted >> 1;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:640:7
			final_exponent = normalized_exponent + 1;
		end
		else if (sum_shifted[(3 * PRECISION_BITS) + 3])
			;
		else if (normalized_exponent > 1) begin
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:646:7
			{final_mantissa, sum_sticky_bits} = sum_shifted << 1;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:647:7
			final_exponent = normalized_exponent - 1;
		end
		else
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:650:7
			final_exponent = 1'sb0;
	end
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:655:3
	assign sticky_after_norm = |{sum_sticky_bits} | sticky_before_add_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:660:3
	wire pre_round_sign;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:661:3
	wire [(SUPER_EXP_BITS + SUPER_MAN_BITS) - 1:0] pre_round_abs;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:662:3
	wire [1:0] round_sticky_bits;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:664:3
	wire of_before_round;
	wire of_after_round;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:665:3
	wire uf_before_round;
	wire uf_after_round;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:667:3
	wire [(NUM_FORMATS * (SUPER_EXP_BITS + SUPER_MAN_BITS)) - 1:0] fmt_pre_round_abs;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:668:3
	wire [9:0] fmt_round_sticky_bits;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:670:3
	reg [4:0] fmt_of_after_round;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:671:3
	reg [4:0] fmt_uf_after_round;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:673:3
	wire rounded_sign;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:674:3
	wire [(SUPER_EXP_BITS + SUPER_MAN_BITS) - 1:0] rounded_abs;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:675:3
	wire result_zero;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:678:3
	assign of_before_round = final_exponent >= ((2 ** fpnew_pkg_exp_bits(dst_fmt_q2)) - 1);
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:679:3
	assign uf_before_round = final_exponent == 0;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:682:3
	genvar _gv_fmt_7;
	generate
		for (_gv_fmt_7 = 0; _gv_fmt_7 < sv2v_cast_32_signed(NUM_FORMATS); _gv_fmt_7 = _gv_fmt_7 + 1) begin : gen_res_assemble
			localparam fmt = _gv_fmt_7;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:684:5
			localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:685:5
			localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:687:5
			wire [EXP_BITS - 1:0] pre_round_exponent;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:688:5
			wire [MAN_BITS - 1:0] pre_round_mantissa;
			if (FpFmtConfig[fmt]) begin : active_format
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:692:7
				assign pre_round_exponent = (of_before_round ? (2 ** EXP_BITS) - 2 : final_exponent[EXP_BITS - 1:0]);
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:693:7
				assign pre_round_mantissa = (of_before_round ? {fpnew_pkg_man_bits(sv2v_cast_5D882(_gv_fmt_7)) {1'sb1}} : final_mantissa[SUPER_MAN_BITS-:MAN_BITS]);
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:695:7
				assign fmt_pre_round_abs[fmt * (SUPER_EXP_BITS + SUPER_MAN_BITS)+:SUPER_EXP_BITS + SUPER_MAN_BITS] = {pre_round_exponent, pre_round_mantissa};
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:698:7
				assign fmt_round_sticky_bits[(fmt * 2) + 1] = final_mantissa[SUPER_MAN_BITS - MAN_BITS] | of_before_round;
				if (MAN_BITS < SUPER_MAN_BITS) begin : narrow_sticky
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:703:9
					assign fmt_round_sticky_bits[fmt * 2] = (|final_mantissa[(SUPER_MAN_BITS - MAN_BITS) - 1:0] | sticky_after_norm) | of_before_round;
				end
				else begin : normal_sticky
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:706:9
					assign fmt_round_sticky_bits[fmt * 2] = sticky_after_norm | of_before_round;
				end
			end
			else begin : inactive_format
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:709:7
				assign fmt_pre_round_abs[fmt * (SUPER_EXP_BITS + SUPER_MAN_BITS)+:SUPER_EXP_BITS + SUPER_MAN_BITS] = {SUPER_EXP_BITS + SUPER_MAN_BITS {fpnew_pkg_DONT_CARE}};
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:710:7
				assign fmt_round_sticky_bits[fmt * 2+:2] = {2 {fpnew_pkg_DONT_CARE}};
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:715:3
	assign pre_round_sign = final_sign_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:716:3
	assign pre_round_abs = fmt_pre_round_abs[dst_fmt_q2 * (SUPER_EXP_BITS + SUPER_MAN_BITS)+:SUPER_EXP_BITS + SUPER_MAN_BITS];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:719:3
	assign round_sticky_bits = fmt_round_sticky_bits[dst_fmt_q2 * 2+:2];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:722:3
	fpnew_rounding #(.AbsWidth(SUPER_EXP_BITS + SUPER_MAN_BITS)) i_fpnew_rounding(
		.abs_value_i(pre_round_abs),
		.sign_i(pre_round_sign),
		.round_sticky_bits_i(round_sticky_bits),
		.rnd_mode_i(rnd_mode_q),
		.effective_subtraction_i(effective_subtraction_q),
		.abs_rounded_o(rounded_abs),
		.sign_o(rounded_sign),
		.exact_zero_o(result_zero)
	);
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:735:3
	reg [(NUM_FORMATS * WIDTH) - 1:0] fmt_result;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:737:3
	genvar _gv_fmt_8;
	generate
		for (_gv_fmt_8 = 0; _gv_fmt_8 < sv2v_cast_32_signed(NUM_FORMATS); _gv_fmt_8 = _gv_fmt_8 + 1) begin : gen_sign_inject
			localparam fmt = _gv_fmt_8;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:739:5
			localparam [31:0] FP_WIDTH = fpnew_pkg_fp_width(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:740:5
			localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(sv2v_cast_5D882(fmt));
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:741:5
			localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(sv2v_cast_5D882(fmt));
			if (FpFmtConfig[fmt]) begin : active_format
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:744:7
				always @(*) begin : post_process
					if (_sv2v_0)
						;
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:746:9
					fmt_uf_after_round[fmt] = rounded_abs[(EXP_BITS + MAN_BITS) - 1:MAN_BITS] == {(((EXP_BITS + MAN_BITS) - 1) >= MAN_BITS ? (((EXP_BITS + MAN_BITS) - 1) - MAN_BITS) + 1 : (MAN_BITS - ((EXP_BITS + MAN_BITS) - 1)) + 1) * 1 {1'sb0}};
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:747:9
					fmt_of_after_round[fmt] = rounded_abs[(EXP_BITS + MAN_BITS) - 1:MAN_BITS] == {(((EXP_BITS + MAN_BITS) - 1) >= MAN_BITS ? (((EXP_BITS + MAN_BITS) - 1) - MAN_BITS) + 1 : (MAN_BITS - ((EXP_BITS + MAN_BITS) - 1)) + 1) * 1 {1'sb1}};
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:750:9
					fmt_result[fmt * WIDTH+:WIDTH] = 1'sb1;
					// Trace: core/cvfpu/src/fpnew_fma_multi.sv:751:9
					fmt_result[(fmt * WIDTH) + (FP_WIDTH - 1)-:FP_WIDTH] = {rounded_sign, rounded_abs[(EXP_BITS + MAN_BITS) - 1:0]};
				end
			end
			else begin : inactive_format
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:754:7
				wire [1:1] sv2v_tmp_4C394;
				assign sv2v_tmp_4C394 = fpnew_pkg_DONT_CARE;
				always @(*) fmt_uf_after_round[fmt] = sv2v_tmp_4C394;
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:755:7
				wire [1:1] sv2v_tmp_5852E;
				assign sv2v_tmp_5852E = fpnew_pkg_DONT_CARE;
				always @(*) fmt_of_after_round[fmt] = sv2v_tmp_5852E;
				// Trace: core/cvfpu/src/fpnew_fma_multi.sv:756:7
				wire [WIDTH * 1:1] sv2v_tmp_49668;
				assign sv2v_tmp_49668 = {WIDTH {fpnew_pkg_DONT_CARE}};
				always @(*) fmt_result[fmt * WIDTH+:WIDTH] = sv2v_tmp_49668;
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:761:3
	assign uf_after_round = fmt_uf_after_round[dst_fmt_q2];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:762:3
	assign of_after_round = fmt_of_after_round[dst_fmt_q2];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:768:3
	wire [WIDTH - 1:0] regular_result;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:769:3
	wire [4:0] regular_status;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:772:3
	assign regular_result = fmt_result[dst_fmt_q2 * WIDTH+:WIDTH];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:773:3
	assign regular_status[4] = 1'b0;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:774:3
	assign regular_status[3] = 1'b0;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:775:3
	assign regular_status[2] = of_before_round | of_after_round;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:776:3
	assign regular_status[1] = uf_after_round & regular_status[0];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:777:3
	assign regular_status[0] = (|round_sticky_bits | of_before_round) | of_after_round;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:780:3
	wire [WIDTH - 1:0] result_d;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:781:3
	wire [4:0] status_d;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:784:3
	assign result_d = (result_is_special_q ? special_result_q : regular_result);
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:785:3
	assign status_d = (result_is_special_q ? special_status_q : regular_status);
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:791:3
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * WIDTH) + ((NUM_OUT_REGS * WIDTH) - 1) : ((NUM_OUT_REGS + 1) * WIDTH) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * WIDTH : 0)] out_pipe_result_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:792:3
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * 5) + ((NUM_OUT_REGS * 5) - 1) : ((NUM_OUT_REGS + 1) * 5) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * 5 : 0)] out_pipe_status_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:793:3
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) + ((NUM_OUT_REGS * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1) : ((NUM_OUT_REGS + 1) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] : 0)] out_pipe_tag_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:794:3
	reg [0:NUM_OUT_REGS] out_pipe_mask_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:795:3
	reg [(0 >= NUM_OUT_REGS ? ((1 - NUM_OUT_REGS) * AuxType_AUX_BITS) + ((NUM_OUT_REGS * AuxType_AUX_BITS) - 1) : ((NUM_OUT_REGS + 1) * AuxType_AUX_BITS) - 1):(0 >= NUM_OUT_REGS ? NUM_OUT_REGS * AuxType_AUX_BITS : 0)] out_pipe_aux_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:796:3
	reg [0:NUM_OUT_REGS] out_pipe_valid_q;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:798:3
	wire [0:NUM_OUT_REGS] out_pipe_ready;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:801:3
	wire [WIDTH * 1:1] sv2v_tmp_469C2;
	assign sv2v_tmp_469C2 = result_d;
	always @(*) out_pipe_result_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * WIDTH+:WIDTH] = sv2v_tmp_469C2;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:802:3
	wire [5:1] sv2v_tmp_A6238;
	assign sv2v_tmp_A6238 = status_d;
	always @(*) out_pipe_status_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * 5+:5] = sv2v_tmp_A6238;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:803:3
	wire [TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] * 1:1] sv2v_tmp_A5B60;
	assign sv2v_tmp_A5B60 = mid_pipe_tag_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]];
	always @(*) out_pipe_tag_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] = sv2v_tmp_A5B60;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:804:3
	wire [1:1] sv2v_tmp_D6E81;
	assign sv2v_tmp_D6E81 = mid_pipe_mask_q[NUM_MID_REGS];
	always @(*) out_pipe_mask_q[0] = sv2v_tmp_D6E81;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:805:3
	wire [AuxType_AUX_BITS * 1:1] sv2v_tmp_8D9F8;
	assign sv2v_tmp_8D9F8 = mid_pipe_aux_q[(0 >= NUM_MID_REGS ? NUM_MID_REGS : NUM_MID_REGS - NUM_MID_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS];
	always @(*) out_pipe_aux_q[(0 >= NUM_OUT_REGS ? 0 : NUM_OUT_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS] = sv2v_tmp_8D9F8;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:806:3
	wire [1:1] sv2v_tmp_E45E7;
	assign sv2v_tmp_E45E7 = mid_pipe_valid_q[NUM_MID_REGS];
	always @(*) out_pipe_valid_q[0] = sv2v_tmp_E45E7;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:808:3
	assign mid_pipe_ready[NUM_MID_REGS] = out_pipe_ready[0];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:810:3
	genvar _gv_i_65;
	generate
		for (_gv_i_65 = 0; _gv_i_65 < NUM_OUT_REGS; _gv_i_65 = _gv_i_65 + 1) begin : gen_output_pipeline
			localparam i = _gv_i_65;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:812:5
			wire reg_ena;
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:816:5
			assign out_pipe_ready[i] = out_pipe_ready[i + 1] | ~out_pipe_valid_q[i + 1];
			// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_fma_multi.sv:818:329
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_fma_multi.sv:818:407
				if (!rst_ni)
					// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_fma_multi.sv:818:485
					out_pipe_valid_q[i + 1] <= 1'b0;
				else
					// Trace: macro expansion of FFLARNC at core/cvfpu/src/fpnew_fma_multi.sv:818:637
					out_pipe_valid_q[i + 1] <= (flush_i ? 1'b0 : (out_pipe_ready[i] ? out_pipe_valid_q[i] : out_pipe_valid_q[i + 1]));
			// Trace: core/cvfpu/src/fpnew_fma_multi.sv:820:5
			assign reg_ena = out_pipe_ready[i] & out_pipe_valid_q[i];
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:822:67
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:822:164
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:822:261
					out_pipe_result_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * WIDTH+:WIDTH] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:822:451
					out_pipe_result_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * WIDTH+:WIDTH] <= (reg_ena ? out_pipe_result_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * WIDTH+:WIDTH] : out_pipe_result_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * WIDTH+:WIDTH]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:823:67
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:823:164
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:823:261
					out_pipe_status_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 5+:5] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:823:451
					out_pipe_status_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 5+:5] <= (reg_ena ? out_pipe_status_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * 5+:5] : out_pipe_status_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * 5+:5]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:824:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:824:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:824:271
					out_pipe_tag_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] <= sv2v_cast_65D85(1'sb0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:824:461
					out_pipe_tag_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] <= (reg_ena ? out_pipe_tag_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]] : out_pipe_tag_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:825:67
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:825:164
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:825:261
					out_pipe_mask_q[i + 1] <= 1'sb0;
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:825:451
					out_pipe_mask_q[i + 1] <= (reg_ena ? out_pipe_mask_q[i] : out_pipe_mask_q[i + 1]);
			// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:826:77
			always @(posedge clk_i or negedge rst_ni)
				// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:826:174
				if (!rst_ni)
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:826:271
					out_pipe_aux_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= sv2v_cast_533F1(1'sb0);
				else
					// Trace: macro expansion of FFL at core/cvfpu/src/fpnew_fma_multi.sv:826:461
					out_pipe_aux_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS] <= (reg_ena ? out_pipe_aux_q[(0 >= NUM_OUT_REGS ? i : NUM_OUT_REGS - i) * AuxType_AUX_BITS+:AuxType_AUX_BITS] : out_pipe_aux_q[(0 >= NUM_OUT_REGS ? i + 1 : NUM_OUT_REGS - (i + 1)) * AuxType_AUX_BITS+:AuxType_AUX_BITS]);
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:829:3
	assign out_pipe_ready[NUM_OUT_REGS] = out_ready_i;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:831:3
	assign result_o = out_pipe_result_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * WIDTH+:WIDTH];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:832:3
	assign status_o = out_pipe_status_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * 5+:5];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:833:3
	assign extension_bit_o = 1'b1;
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:834:3
	assign tag_o = out_pipe_tag_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:835:3
	assign mask_o = out_pipe_mask_q[NUM_OUT_REGS];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:836:3
	assign aux_o = out_pipe_aux_q[(0 >= NUM_OUT_REGS ? NUM_OUT_REGS : NUM_OUT_REGS - NUM_OUT_REGS) * AuxType_AUX_BITS+:AuxType_AUX_BITS];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:837:3
	assign out_valid_o = out_pipe_valid_q[NUM_OUT_REGS];
	// Trace: core/cvfpu/src/fpnew_fma_multi.sv:838:3
	assign busy_o = |{inp_pipe_valid_q, mid_pipe_valid_q, out_pipe_valid_q};
	initial _sv2v_0 = 0;
endmodule
