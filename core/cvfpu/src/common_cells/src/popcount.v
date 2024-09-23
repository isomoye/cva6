module popcount (
	data_i,
	popcount_o
);
	reg _sv2v_0;
	// Trace: core/cvfpu/src/common_cells/src/popcount.sv:20:15
	parameter [31:0] INPUT_WIDTH = 256;
	// Trace: core/cvfpu/src/common_cells/src/popcount.sv:21:16
	localparam [31:0] PopcountWidth = $clog2(INPUT_WIDTH) + 1;
	// Trace: core/cvfpu/src/common_cells/src/popcount.sv:23:5
	input wire [INPUT_WIDTH - 1:0] data_i;
	// Trace: core/cvfpu/src/common_cells/src/popcount.sv:24:5
	output wire [PopcountWidth - 1:0] popcount_o;
	// Trace: core/cvfpu/src/common_cells/src/popcount.sv:27:4
	localparam [31:0] PaddedWidth = 1 << $clog2(INPUT_WIDTH);
	// Trace: core/cvfpu/src/common_cells/src/popcount.sv:29:4
	reg [PaddedWidth - 1:0] padded_input;
	// Trace: core/cvfpu/src/common_cells/src/popcount.sv:30:4
	wire [PopcountWidth - 2:0] left_child_result;
	wire [PopcountWidth - 2:0] right_child_result;
	// Trace: core/cvfpu/src/common_cells/src/popcount.sv:33:4
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/common_cells/src/popcount.sv:34:6
		padded_input = 1'sb0;
		// Trace: core/cvfpu/src/common_cells/src/popcount.sv:35:6
		padded_input[INPUT_WIDTH - 1:0] = data_i;
	end
	// Trace: core/cvfpu/src/common_cells/src/popcount.sv:39:4
	generate
		if (INPUT_WIDTH == 1) begin : single_node
			// Trace: core/cvfpu/src/common_cells/src/popcount.sv:40:6
			assign left_child_result = 1'b0;
			// Trace: core/cvfpu/src/common_cells/src/popcount.sv:41:6
			assign right_child_result = padded_input[0];
		end
		else if (INPUT_WIDTH == 2) begin : leaf_node
			// Trace: core/cvfpu/src/common_cells/src/popcount.sv:43:6
			assign left_child_result = padded_input[1];
			// Trace: core/cvfpu/src/common_cells/src/popcount.sv:44:6
			assign right_child_result = padded_input[0];
		end
		else begin : non_leaf_node
			// Trace: core/cvfpu/src/common_cells/src/popcount.sv:46:6
			popcount #(.INPUT_WIDTH(PaddedWidth / 2)) left_child(
				.data_i(padded_input[PaddedWidth - 1:PaddedWidth / 2]),
				.popcount_o(left_child_result)
			);
			// Trace: core/cvfpu/src/common_cells/src/popcount.sv:51:6
			popcount #(.INPUT_WIDTH(PaddedWidth / 2)) right_child(
				.data_i(padded_input[(PaddedWidth / 2) - 1:0]),
				.popcount_o(right_child_result)
			);
		end
	endgenerate
	// Trace: core/cvfpu/src/common_cells/src/popcount.sv:58:4
	assign popcount_o = left_child_result + right_child_result;
	initial _sv2v_0 = 0;
endmodule
