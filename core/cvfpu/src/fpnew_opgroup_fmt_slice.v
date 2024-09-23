module fpnew_opgroup_fmt_slice_B2D7F_8C3BC (
	clk_i,
	rst_ni,
	operands_i,
	is_boxed_i,
	rnd_mode_i,
	op_i,
	op_mod_i,
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
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:17:13
	// removed localparam type fpnew_pkg_opgroup_e
	parameter [1:0] OpGroup = 2'd0;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:18:13
	localparam [31:0] fpnew_pkg_NUM_FP_FORMATS = 5;
	localparam [31:0] fpnew_pkg_FP_FORMAT_BITS = 3;
	// removed localparam type fpnew_pkg_fp_format_e
	function automatic [2:0] sv2v_cast_5D882;
		input reg [2:0] inp;
		sv2v_cast_5D882 = inp;
	endfunction
	parameter [2:0] FpFormat = sv2v_cast_5D882(0);
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:20:13
	parameter [31:0] Width = 32;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:21:13
	parameter [0:0] EnableVectors = 1'b1;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:22:13
	parameter [31:0] NumPipeRegs = 0;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:23:13
	// removed localparam type fpnew_pkg_pipe_config_t
	parameter [1:0] PipeConfig = 2'd0;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:24:38
	// removed localparam type TagType
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:25:13
	parameter [31:0] TrueSIMDClass = 0;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:27:14
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
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:28:14
	// removed localparam type fpnew_pkg_fp_encoding_t
	localparam [319:0] fpnew_pkg_FP_ENCODINGS = 320'h8000000170000000b00000034000000050000000a00000005000000020000000800000007;
	function automatic [31:0] fpnew_pkg_fp_width;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:304:44
		input reg [2:0] fmt;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:305:5
		fpnew_pkg_fp_width = (fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 63-:32] + fpnew_pkg_FP_ENCODINGS[((4 - fmt) * 64) + 31-:32]) + 1;
	endfunction
	function automatic [31:0] fpnew_pkg_num_lanes;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:390:45
		input reg [31:0] width;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:390:65
		input reg [2:0] fmt;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:390:82
		input reg vec;
		// Trace: core/cvfpu/src/fpnew_pkg.sv:391:5
		fpnew_pkg_num_lanes = (vec ? width / fpnew_pkg_fp_width(fmt) : 1);
	endfunction
	localparam [31:0] NUM_LANES = fpnew_pkg_num_lanes(Width, FpFormat, EnableVectors);
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:29:27
	// removed localparam type MaskType
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:31:3
	input wire clk_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:32:3
	input wire rst_ni;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:34:3
	input wire [(NUM_OPERANDS * Width) - 1:0] operands_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:35:3
	input wire [NUM_OPERANDS - 1:0] is_boxed_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:36:3
	// removed localparam type fpnew_pkg_roundmode_e
	input wire [2:0] rnd_mode_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:37:3
	localparam [31:0] fpnew_pkg_OP_BITS = 4;
	// removed localparam type fpnew_pkg_operation_e
	input wire [3:0] op_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:38:3
	input wire op_mod_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:39:3
	input wire vectorial_op_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:40:3
	input wire [TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1:0] tag_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:41:3
	input wire [NUM_LANES - 1:0] simd_mask_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:43:3
	input wire in_valid_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:44:3
	output wire in_ready_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:45:3
	input wire flush_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:47:3
	output wire [Width - 1:0] result_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:48:3
	// removed localparam type fpnew_pkg_status_t
	output reg [4:0] status_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:49:3
	output wire extension_bit_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:50:3
	output wire [TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1:0] tag_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:52:3
	output wire out_valid_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:53:3
	input wire out_ready_i;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:55:3
	output wire busy_o;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:58:3
	localparam [31:0] FP_WIDTH = fpnew_pkg_fp_width(FpFormat);
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:59:3
	localparam [31:0] SIMD_WIDTH = $unsigned(Width / NUM_LANES);
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:62:3
	wire [NUM_LANES - 1:0] lane_in_ready;
	wire [NUM_LANES - 1:0] lane_out_valid;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:63:3
	wire vectorial_op;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:65:3
	wire [(NUM_LANES * FP_WIDTH) - 1:0] slice_result;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:66:3
	wire [Width - 1:0] slice_regular_result;
	wire [Width - 1:0] slice_class_result;
	wire [Width - 1:0] slice_vec_class_result;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:68:3
	wire [(NUM_LANES * 5) - 1:0] lane_status;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:69:3
	wire [NUM_LANES - 1:0] lane_ext_bit;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:70:3
	// removed localparam type fpnew_pkg_classmask_e
	wire [(NUM_LANES * 10) - 1:0] lane_class_mask;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:71:3
	wire [(NUM_LANES * TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) - 1:0] lane_tags;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:72:3
	wire [NUM_LANES - 1:0] lane_masks;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:73:3
	wire [NUM_LANES - 1:0] lane_vectorial;
	wire [NUM_LANES - 1:0] lane_busy;
	wire [NUM_LANES - 1:0] lane_is_class;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:75:3
	wire result_is_vector;
	wire result_is_class;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:80:3
	assign in_ready_o = lane_in_ready[0];
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:81:3
	assign vectorial_op = vectorial_op_i & EnableVectors;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:86:3
	genvar _gv_lane_1;
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		for (_gv_lane_1 = 0; _gv_lane_1 < sv2v_cast_32_signed(NUM_LANES); _gv_lane_1 = _gv_lane_1 + 1) begin : gen_num_lanes
			localparam lane = _gv_lane_1;
			// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:87:5
			wire [FP_WIDTH - 1:0] local_result;
			// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:88:5
			wire local_sign;
			if ((lane == 0) || EnableVectors) begin : active_lane
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:92:7
				wire in_valid;
				wire out_valid;
				wire out_ready;
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:94:7
				reg [(NUM_OPERANDS * FP_WIDTH) - 1:0] local_operands;
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:95:7
				wire [FP_WIDTH - 1:0] op_result;
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:96:7
				wire [4:0] op_status;
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:98:7
				assign in_valid = in_valid_i & ((lane == 0) | vectorial_op);
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:100:7
				always @(*) begin : prepare_input
					if (_sv2v_0)
						;
					// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:101:9
					begin : sv2v_autoblock_1
						// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:101:14
						reg signed [31:0] i;
						// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:101:14
						for (i = 0; i < sv2v_cast_32_signed(NUM_OPERANDS); i = i + 1)
							begin
								// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:102:11
								local_operands[i * FP_WIDTH+:FP_WIDTH] = operands_i[(i * Width) + (((($unsigned(lane) + 1) * FP_WIDTH) - 1) >= ($unsigned(lane) * FP_WIDTH) ? (($unsigned(lane) + 1) * FP_WIDTH) - 1 : (((($unsigned(lane) + 1) * FP_WIDTH) - 1) + (((($unsigned(lane) + 1) * FP_WIDTH) - 1) >= ($unsigned(lane) * FP_WIDTH) ? (((($unsigned(lane) + 1) * FP_WIDTH) - 1) - ($unsigned(lane) * FP_WIDTH)) + 1 : (($unsigned(lane) * FP_WIDTH) - ((($unsigned(lane) + 1) * FP_WIDTH) - 1)) + 1)) - 1)-:(((($unsigned(lane) + 1) * FP_WIDTH) - 1) >= ($unsigned(lane) * FP_WIDTH) ? (((($unsigned(lane) + 1) * FP_WIDTH) - 1) - ($unsigned(lane) * FP_WIDTH)) + 1 : (($unsigned(lane) * FP_WIDTH) - ((($unsigned(lane) + 1) * FP_WIDTH) - 1)) + 1)];
							end
					end
				end
				if (OpGroup == 2'd0) begin : lane_instance
					// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:108:9
					fpnew_fma_9038D_CD718 #(
						.TagType_TagType_TagType_TagType_CVA6Cfg(TagType_TagType_TagType_CVA6Cfg),
						.TagType_TagType_TagType_TagType_config_pkg_NrMaxRules(TagType_TagType_TagType_config_pkg_NrMaxRules),
						.FpFormat(FpFormat),
						.NumPipeRegs(NumPipeRegs),
						.PipeConfig(PipeConfig)
					) i_fma(
						.clk_i(clk_i),
						.rst_ni(rst_ni),
						.operands_i(local_operands),
						.is_boxed_i(is_boxed_i[NUM_OPERANDS - 1:0]),
						.rnd_mode_i(rnd_mode_i),
						.op_i(op_i),
						.op_mod_i(op_mod_i),
						.tag_i(tag_i),
						.mask_i(simd_mask_i[lane]),
						.aux_i(vectorial_op),
						.in_valid_i(in_valid),
						.in_ready_o(lane_in_ready[lane]),
						.flush_i(flush_i),
						.result_o(op_result),
						.status_o(op_status),
						.extension_bit_o(lane_ext_bit[lane]),
						.tag_o(lane_tags[lane * TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]]),
						.mask_o(lane_masks[lane]),
						.aux_o(lane_vectorial[lane]),
						.out_valid_o(out_valid),
						.out_ready_i(out_ready),
						.busy_o(lane_busy[lane])
					);
					// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:138:9
					assign lane_is_class[lane] = 1'b0;
					// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:139:9
					assign lane_class_mask[lane * 10+:10] = 10'b0000000001;
				end
				else if (OpGroup == 2'd1) begin
					;
				end
				else if (OpGroup == 2'd2) begin : lane_instance
					// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:171:9
					fpnew_noncomp_E1895_77336 #(
						.TagType_TagType_TagType_TagType_CVA6Cfg(TagType_TagType_TagType_CVA6Cfg),
						.TagType_TagType_TagType_TagType_config_pkg_NrMaxRules(TagType_TagType_TagType_config_pkg_NrMaxRules),
						.FpFormat(FpFormat),
						.NumPipeRegs(NumPipeRegs),
						.PipeConfig(PipeConfig)
					) i_noncomp(
						.clk_i(clk_i),
						.rst_ni(rst_ni),
						.operands_i(local_operands),
						.is_boxed_i(is_boxed_i[NUM_OPERANDS - 1:0]),
						.rnd_mode_i(rnd_mode_i),
						.op_i(op_i),
						.op_mod_i(op_mod_i),
						.tag_i(tag_i),
						.mask_i(simd_mask_i[lane]),
						.aux_i(vectorial_op),
						.in_valid_i(in_valid),
						.in_ready_o(lane_in_ready[lane]),
						.flush_i(flush_i),
						.result_o(op_result),
						.status_o(op_status),
						.extension_bit_o(lane_ext_bit[lane]),
						.class_mask_o(lane_class_mask[lane * 10+:10]),
						.is_class_o(lane_is_class[lane]),
						.tag_o(lane_tags[lane * TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]+:TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]]),
						.mask_o(lane_masks[lane]),
						.aux_o(lane_vectorial[lane]),
						.out_valid_o(out_valid),
						.out_ready_i(out_ready),
						.busy_o(lane_busy[lane])
					);
				end
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:206:7
				assign out_ready = out_ready_i & ((lane == 0) | result_is_vector);
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:207:7
				assign lane_out_valid[lane] = out_valid & ((lane == 0) | result_is_vector);
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:210:7
				assign local_result = (lane_out_valid[lane] ? op_result : {FP_WIDTH {lane_ext_bit[0]}});
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:211:7
				assign lane_status[lane * 5+:5] = (lane_out_valid[lane] ? op_status : {5 {1'sb0}});
			end
			else begin : genblk1
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:215:7
				assign lane_out_valid[lane] = 1'b0;
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:216:7
				assign lane_in_ready[lane] = 1'b0;
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:217:7
				assign local_result = {FP_WIDTH {lane_ext_bit[0]}};
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:218:7
				assign lane_status[lane * 5+:5] = 1'sb0;
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:219:7
				assign lane_busy[lane] = 1'b0;
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:220:7
				assign lane_is_class[lane] = 1'b0;
			end
			// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:224:5
			assign slice_result[(($unsigned(lane) + 1) * FP_WIDTH) - 1:$unsigned(lane) * FP_WIDTH] = local_result;
			if (TrueSIMDClass && (SIMD_WIDTH >= 10)) begin : vectorial_true_class
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:228:7
				assign slice_vec_class_result[lane * SIMD_WIDTH+:10] = lane_class_mask[lane * 10+:10];
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:229:7
				assign slice_vec_class_result[((lane + 1) * SIMD_WIDTH) - 1-:SIMD_WIDTH - 10] = 1'sb0;
			end
			else if (((lane + 1) * 8) <= Width) begin : vectorial_class
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:231:7
				assign local_sign = (((lane_class_mask[lane * 10+:10] == 10'b0000000001) || (lane_class_mask[lane * 10+:10] == 10'b0000000010)) || (lane_class_mask[lane * 10+:10] == 10'b0000000100)) || (lane_class_mask[lane * 10+:10] == 10'b0000001000);
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:236:7
				assign slice_vec_class_result[((lane + 1) * 8) - 1:lane * 8] = {local_sign, ~local_sign, lane_class_mask[lane * 10+:10] == 10'b1000000000, lane_class_mask[lane * 10+:10] == 10'b0100000000, (lane_class_mask[lane * 10+:10] == 10'b0000010000) || (lane_class_mask[lane * 10+:10] == 10'b0000001000), (lane_class_mask[lane * 10+:10] == 10'b0000100000) || (lane_class_mask[lane * 10+:10] == 10'b0000000100), (lane_class_mask[lane * 10+:10] == 10'b0001000000) || (lane_class_mask[lane * 10+:10] == 10'b0000000010), (lane_class_mask[lane * 10+:10] == 10'b0010000000) || (lane_class_mask[lane * 10+:10] == 10'b0000000001)};
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:256:3
	assign result_is_vector = lane_vectorial[0];
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:257:3
	assign result_is_class = lane_is_class[0];
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:259:3
	assign slice_regular_result = $signed({extension_bit_o, slice_result});
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:261:3
	localparam [31:0] CLASS_VEC_BITS = ((NUM_LANES * 8) > Width ? 8 * (Width / 8) : NUM_LANES * 8);
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:264:3
	generate
		if (!(TrueSIMDClass && (SIMD_WIDTH >= 10))) begin : genblk2
			if (CLASS_VEC_BITS < Width) begin : pad_vectorial_class
				// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:266:7
				assign slice_vec_class_result[Width - 1:CLASS_VEC_BITS] = 1'sb0;
			end
		end
	endgenerate
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:272:3
	assign slice_class_result = (result_is_vector ? slice_vec_class_result : lane_class_mask[0+:10]);
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:275:3
	assign result_o = (result_is_class ? slice_class_result : slice_regular_result);
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:277:3
	assign extension_bit_o = lane_ext_bit[0];
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:278:3
	assign tag_o = lane_tags[0+:TagType_TagType_TagType_CVA6Cfg[8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))-:((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353))))))))) - (8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((8910 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1354))))))))) - (8942 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + (32 + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + ((TagType_TagType_TagType_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]];
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:279:3
	assign busy_o = |lane_busy;
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:280:3
	assign out_valid_o = lane_out_valid[0];
	// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:284:3
	always @(*) begin : output_processing
		// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:286:5
		reg [4:0] temp_status;
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:287:5
		temp_status = 1'sb0;
		// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:288:5
		begin : sv2v_autoblock_2
			// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:288:10
			reg signed [31:0] i;
			// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:288:10
			for (i = 0; i < sv2v_cast_32_signed(NUM_LANES); i = i + 1)
				begin
					// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:289:7
					temp_status = temp_status | (lane_status[i * 5+:5] & {5 {lane_masks[i]}});
				end
		end
		// Trace: core/cvfpu/src/fpnew_opgroup_fmt_slice.sv:290:5
		status_o = temp_status;
	end
	initial _sv2v_0 = 0;
endmodule
