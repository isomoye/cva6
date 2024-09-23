module fpnew_classifier (
	operands_i,
	is_boxed_i,
	info_o
);
	reg _sv2v_0;
	// Trace: core/cvfpu/src/fpnew_classifier.sv:17:13
	localparam [31:0] fpnew_pkg_NUM_FP_FORMATS = 5;
	localparam [31:0] fpnew_pkg_FP_FORMAT_BITS = 3;
	// removed localparam type fpnew_pkg_fp_format_e
	function automatic [2:0] sv2v_cast_5D882;
		input reg [2:0] inp;
		sv2v_cast_5D882 = inp;
	endfunction
	parameter [2:0] FpFormat = sv2v_cast_5D882(0);
	// Trace: core/cvfpu/src/fpnew_classifier.sv:18:13
	parameter [31:0] NumOperands = 1;
	// Trace: core/cvfpu/src/fpnew_classifier.sv:20:14
	// removed localparam type fpnew_pkg_fp_encoding_t
	localparam [319:0] fpnew_pkg_FP_ENCODINGS = 320'h8000000170000000b00000034000000050000000a00000005000000020000000800000007;
	function automatic [31:0] fpnew_pkg_fp_width;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:304:44
		input reg [2:0] fmt;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:305:5
		fpnew_pkg_fp_width = (fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 63-:32] + fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 31-:32]) + 1;
	endfunction
	localparam [31:0] WIDTH = fpnew_pkg_fp_width(FpFormat);
	// Trace: core/cvfpu/src/fpnew_classifier.sv:22:3
	input wire [(NumOperands * WIDTH) - 1:0] operands_i;
	// Trace: core/cvfpu/src/fpnew_classifier.sv:23:3
	input wire [NumOperands - 1:0] is_boxed_i;
	// Trace: core/cvfpu/src/fpnew_classifier.sv:24:3
	// removed localparam type fpnew_pkg_fp_info_t
	output reg [(NumOperands * 8) - 1:0] info_o;
	// Trace: core/cvfpu/src/fpnew_classifier.sv:27:3
	function automatic [31:0] fpnew_pkg_exp_bits;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:327:44
		input reg [2:0] fmt;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:328:5
		fpnew_pkg_exp_bits = fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 63-:32];
	endfunction
	localparam [31:0] EXP_BITS = fpnew_pkg_exp_bits(FpFormat);
	// Trace: core/cvfpu/src/fpnew_classifier.sv:28:3
	function automatic [31:0] fpnew_pkg_man_bits;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:332:44
		input reg [2:0] fmt;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:333:5
		fpnew_pkg_man_bits = fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 31-:32];
	endfunction
	localparam [31:0] MAN_BITS = fpnew_pkg_man_bits(FpFormat);
	// Trace: core/cvfpu/src/fpnew_classifier.sv:31:3
	// removed localparam type fp_t
	// Trace: core/cvfpu/src/fpnew_classifier.sv:38:3
	genvar _gv_op_1;
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		for (_gv_op_1 = 0; _gv_op_1 < sv2v_cast_32_signed(NumOperands); _gv_op_1 = _gv_op_1 + 1) begin : gen_num_values
			localparam op = _gv_op_1;
			// Trace: core/cvfpu/src/fpnew_classifier.sv:40:5
			reg [((1 + EXP_BITS) + MAN_BITS) - 1:0] value;
			// Trace: core/cvfpu/src/fpnew_classifier.sv:41:5
			reg is_boxed;
			// Trace: core/cvfpu/src/fpnew_classifier.sv:42:5
			reg is_normal;
			// Trace: core/cvfpu/src/fpnew_classifier.sv:43:5
			reg is_inf;
			// Trace: core/cvfpu/src/fpnew_classifier.sv:44:5
			reg is_nan;
			// Trace: core/cvfpu/src/fpnew_classifier.sv:45:5
			reg is_signalling;
			// Trace: core/cvfpu/src/fpnew_classifier.sv:46:5
			reg is_quiet;
			// Trace: core/cvfpu/src/fpnew_classifier.sv:47:5
			reg is_zero;
			// Trace: core/cvfpu/src/fpnew_classifier.sv:48:5
			reg is_subnormal;
			// Trace: core/cvfpu/src/fpnew_classifier.sv:53:5
			always @(*) begin : classify_input
				if (_sv2v_0)
					;
				// Trace: core/cvfpu/src/fpnew_classifier.sv:54:7
				value = operands_i[op * WIDTH+:WIDTH];
				// Trace: core/cvfpu/src/fpnew_classifier.sv:55:7
				is_boxed = is_boxed_i[op];
				// Trace: core/cvfpu/src/fpnew_classifier.sv:56:7
				is_normal = (is_boxed && (value[EXP_BITS + (MAN_BITS - 1)-:((EXP_BITS + (MAN_BITS - 1)) >= (MAN_BITS + 0) ? ((EXP_BITS + (MAN_BITS - 1)) - (MAN_BITS + 0)) + 1 : ((MAN_BITS + 0) - (EXP_BITS + (MAN_BITS - 1))) + 1)] != {((EXP_BITS + (MAN_BITS - 1)) >= (MAN_BITS + 0) ? ((EXP_BITS + (MAN_BITS - 1)) - (MAN_BITS + 0)) + 1 : ((MAN_BITS + 0) - (EXP_BITS + (MAN_BITS - 1))) + 1) * 1 {1'sb0}})) && (value[EXP_BITS + (MAN_BITS - 1)-:((EXP_BITS + (MAN_BITS - 1)) >= (MAN_BITS + 0) ? ((EXP_BITS + (MAN_BITS - 1)) - (MAN_BITS + 0)) + 1 : ((MAN_BITS + 0) - (EXP_BITS + (MAN_BITS - 1))) + 1)] != {((EXP_BITS + (MAN_BITS - 1)) >= (MAN_BITS + 0) ? ((EXP_BITS + (MAN_BITS - 1)) - (MAN_BITS + 0)) + 1 : ((MAN_BITS + 0) - (EXP_BITS + (MAN_BITS - 1))) + 1) * 1 {1'sb1}});
				// Trace: core/cvfpu/src/fpnew_classifier.sv:57:7
				is_zero = (is_boxed && (value[EXP_BITS + (MAN_BITS - 1)-:((EXP_BITS + (MAN_BITS - 1)) >= (MAN_BITS + 0) ? ((EXP_BITS + (MAN_BITS - 1)) - (MAN_BITS + 0)) + 1 : ((MAN_BITS + 0) - (EXP_BITS + (MAN_BITS - 1))) + 1)] == {((EXP_BITS + (MAN_BITS - 1)) >= (MAN_BITS + 0) ? ((EXP_BITS + (MAN_BITS - 1)) - (MAN_BITS + 0)) + 1 : ((MAN_BITS + 0) - (EXP_BITS + (MAN_BITS - 1))) + 1) * 1 {1'sb0}})) && (value[MAN_BITS - 1-:MAN_BITS] == {MAN_BITS * 1 {1'sb0}});
				// Trace: core/cvfpu/src/fpnew_classifier.sv:58:7
				is_subnormal = (is_boxed && (value[EXP_BITS + (MAN_BITS - 1)-:((EXP_BITS + (MAN_BITS - 1)) >= (MAN_BITS + 0) ? ((EXP_BITS + (MAN_BITS - 1)) - (MAN_BITS + 0)) + 1 : ((MAN_BITS + 0) - (EXP_BITS + (MAN_BITS - 1))) + 1)] == {((EXP_BITS + (MAN_BITS - 1)) >= (MAN_BITS + 0) ? ((EXP_BITS + (MAN_BITS - 1)) - (MAN_BITS + 0)) + 1 : ((MAN_BITS + 0) - (EXP_BITS + (MAN_BITS - 1))) + 1) * 1 {1'sb0}})) && !is_zero;
				// Trace: core/cvfpu/src/fpnew_classifier.sv:59:7
				is_inf = is_boxed && ((value[EXP_BITS + (MAN_BITS - 1)-:((EXP_BITS + (MAN_BITS - 1)) >= (MAN_BITS + 0) ? ((EXP_BITS + (MAN_BITS - 1)) - (MAN_BITS + 0)) + 1 : ((MAN_BITS + 0) - (EXP_BITS + (MAN_BITS - 1))) + 1)] == {((EXP_BITS + (MAN_BITS - 1)) >= (MAN_BITS + 0) ? ((EXP_BITS + (MAN_BITS - 1)) - (MAN_BITS + 0)) + 1 : ((MAN_BITS + 0) - (EXP_BITS + (MAN_BITS - 1))) + 1) * 1 {1'sb1}}) && (value[MAN_BITS - 1-:MAN_BITS] == {MAN_BITS * 1 {1'sb0}}));
				// Trace: core/cvfpu/src/fpnew_classifier.sv:60:7
				is_nan = !is_boxed || ((value[EXP_BITS + (MAN_BITS - 1)-:((EXP_BITS + (MAN_BITS - 1)) >= (MAN_BITS + 0) ? ((EXP_BITS + (MAN_BITS - 1)) - (MAN_BITS + 0)) + 1 : ((MAN_BITS + 0) - (EXP_BITS + (MAN_BITS - 1))) + 1)] == {((EXP_BITS + (MAN_BITS - 1)) >= (MAN_BITS + 0) ? ((EXP_BITS + (MAN_BITS - 1)) - (MAN_BITS + 0)) + 1 : ((MAN_BITS + 0) - (EXP_BITS + (MAN_BITS - 1))) + 1) * 1 {1'sb1}}) && (value[MAN_BITS - 1-:MAN_BITS] != {MAN_BITS * 1 {1'sb0}}));
				// Trace: core/cvfpu/src/fpnew_classifier.sv:61:7
				is_signalling = (is_boxed && is_nan) && (value[(MAN_BITS - 1) - ((MAN_BITS - 1) - (MAN_BITS - 1))] == 1'b0);
				// Trace: core/cvfpu/src/fpnew_classifier.sv:62:7
				is_quiet = is_nan && !is_signalling;
				// Trace: core/cvfpu/src/fpnew_classifier.sv:64:7
				info_o[(op * 8) + 7] = is_normal;
				// Trace: core/cvfpu/src/fpnew_classifier.sv:65:7
				info_o[(op * 8) + 6] = is_subnormal;
				// Trace: core/cvfpu/src/fpnew_classifier.sv:66:7
				info_o[(op * 8) + 5] = is_zero;
				// Trace: core/cvfpu/src/fpnew_classifier.sv:67:7
				info_o[(op * 8) + 4] = is_inf;
				// Trace: core/cvfpu/src/fpnew_classifier.sv:68:7
				info_o[(op * 8) + 3] = is_nan;
				// Trace: core/cvfpu/src/fpnew_classifier.sv:69:7
				info_o[(op * 8) + 2] = is_signalling;
				// Trace: core/cvfpu/src/fpnew_classifier.sv:70:7
				info_o[(op * 8) + 1] = is_quiet;
				// Trace: core/cvfpu/src/fpnew_classifier.sv:71:7
				info_o[op * 8] = is_boxed;
			end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
