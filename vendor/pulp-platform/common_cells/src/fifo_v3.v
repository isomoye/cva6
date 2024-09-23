module fifo_v3_7ABAC_FAAEB (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	usage_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	// removed localparam type dtype_MstIdxBits_type
	parameter [31:0] dtype_MstIdxBits = 0;
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:17:20
	// removed localparam type dtype
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:19:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:21:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:22:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:23:5
	input wire flush_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:24:5
	input wire testmode_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:26:5
	output wire full_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:27:5
	output wire empty_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:28:5
	output wire [ADDR_DEPTH - 1:0] usage_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:30:5
	input wire [dtype_MstIdxBits - 1:0] data_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:31:5
	input wire push_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:33:5
	output reg [dtype_MstIdxBits - 1:0] data_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:34:5
	input wire pop_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:38:5
	localparam [31:0] FifoDepth = (DEPTH > 0 ? DEPTH : 1);
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:40:5
	reg gate_clock;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:42:5
	reg [ADDR_DEPTH - 1:0] read_pointer_n;
	reg [ADDR_DEPTH - 1:0] read_pointer_q;
	reg [ADDR_DEPTH - 1:0] write_pointer_n;
	reg [ADDR_DEPTH - 1:0] write_pointer_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:45:5
	reg [ADDR_DEPTH:0] status_cnt_n;
	reg [ADDR_DEPTH:0] status_cnt_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:47:5
	reg [(FifoDepth * dtype_MstIdxBits) - 1:0] mem_n;
	reg [(FifoDepth * dtype_MstIdxBits) - 1:0] mem_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:49:5
	assign usage_o = status_cnt_q[ADDR_DEPTH - 1:0];
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:51:5
	generate
		if (DEPTH == 0) begin : gen_pass_through
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:52:9
			assign empty_o = ~push_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:53:9
			assign full_o = ~pop_i;
		end
		else begin : gen_fifo
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:55:9
			assign full_o = status_cnt_q == FifoDepth[ADDR_DEPTH:0];
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:56:9
			assign empty_o = (status_cnt_q == 0) & ~(FALL_THROUGH & push_i);
		end
	endgenerate
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:61:5
	always @(*) begin : read_write_comb
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:63:9
		read_pointer_n = read_pointer_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:64:9
		write_pointer_n = write_pointer_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:65:9
		status_cnt_n = status_cnt_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:66:9
		data_o = (DEPTH == 0 ? data_i : mem_q[read_pointer_q * dtype_MstIdxBits+:dtype_MstIdxBits]);
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:67:9
		mem_n = mem_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:68:9
		gate_clock = 1'b1;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:71:9
		if (push_i && ~full_o) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:73:13
			mem_n[write_pointer_q * dtype_MstIdxBits+:dtype_MstIdxBits] = data_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:75:13
			gate_clock = 1'b0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:78:13
			if (write_pointer_q == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:79:17
				write_pointer_n = 1'sb0;
			else
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:81:17
				write_pointer_n = write_pointer_q + 1;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:83:13
			status_cnt_n = status_cnt_q + 1;
		end
		if (pop_i && ~empty_o) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:90:13
			if (read_pointer_n == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:91:17
				read_pointer_n = 1'sb0;
			else
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:93:17
				read_pointer_n = read_pointer_q + 1;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:95:13
			status_cnt_n = status_cnt_q - 1;
		end
		if (((push_i && pop_i) && ~full_o) && ~empty_o)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:100:13
			status_cnt_n = status_cnt_q;
		if ((FALL_THROUGH && (status_cnt_q == 0)) && push_i) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:104:13
			data_o = data_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:105:13
			if (pop_i) begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:106:17
				status_cnt_n = status_cnt_q;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:107:17
				read_pointer_n = read_pointer_q;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:108:17
				write_pointer_n = write_pointer_q;
			end
		end
	end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:114:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:115:9
		if (~rst_ni) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:116:13
			read_pointer_q <= 1'sb0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:117:13
			write_pointer_q <= 1'sb0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:118:13
			status_cnt_q <= 1'sb0;
		end
		else
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:120:13
			if (flush_i) begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:121:17
				read_pointer_q <= 1'sb0;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:122:17
				write_pointer_q <= 1'sb0;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:123:17
				status_cnt_q <= 1'sb0;
			end
			else begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:125:17
				read_pointer_q <= read_pointer_n;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:126:17
				write_pointer_q <= write_pointer_n;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:127:17
				status_cnt_q <= status_cnt_n;
			end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:132:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:133:9
		if (~rst_ni)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:134:13
			mem_q <= 1'sb0;
		else if (!gate_clock)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:136:13
			mem_q <= mem_n;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:142:5
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:146:5
	// removed an assertion item
	// full_write : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(full_o |-> ~push_i)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:148:14
	// 	$fatal(1, "Trying to push new data although the FIFO is full.");
	// end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:150:5
	// removed an assertion item
	// empty_read : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(empty_o |-> ~pop_i)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:152:14
	// 	$fatal(1, "Trying to pop data although the FIFO is empty.");
	// end
	initial _sv2v_0 = 0;
endmodule
module fifo_v3_F9D8C_B67E5 (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	usage_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	// removed localparam type dtype_AxiIdWidth_type
	parameter [31:0] dtype_AxiIdWidth = 0;
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:17:20
	// removed localparam type dtype
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:19:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:21:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:22:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:23:5
	input wire flush_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:24:5
	input wire testmode_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:26:5
	output wire full_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:27:5
	output wire empty_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:28:5
	output wire [ADDR_DEPTH - 1:0] usage_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:30:5
	input wire [dtype_AxiIdWidth - 1:0] data_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:31:5
	input wire push_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:33:5
	output reg [dtype_AxiIdWidth - 1:0] data_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:34:5
	input wire pop_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:38:5
	localparam [31:0] FifoDepth = (DEPTH > 0 ? DEPTH : 1);
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:40:5
	reg gate_clock;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:42:5
	reg [ADDR_DEPTH - 1:0] read_pointer_n;
	reg [ADDR_DEPTH - 1:0] read_pointer_q;
	reg [ADDR_DEPTH - 1:0] write_pointer_n;
	reg [ADDR_DEPTH - 1:0] write_pointer_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:45:5
	reg [ADDR_DEPTH:0] status_cnt_n;
	reg [ADDR_DEPTH:0] status_cnt_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:47:5
	reg [(FifoDepth * dtype_AxiIdWidth) - 1:0] mem_n;
	reg [(FifoDepth * dtype_AxiIdWidth) - 1:0] mem_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:49:5
	assign usage_o = status_cnt_q[ADDR_DEPTH - 1:0];
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:51:5
	generate
		if (DEPTH == 0) begin : gen_pass_through
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:52:9
			assign empty_o = ~push_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:53:9
			assign full_o = ~pop_i;
		end
		else begin : gen_fifo
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:55:9
			assign full_o = status_cnt_q == FifoDepth[ADDR_DEPTH:0];
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:56:9
			assign empty_o = (status_cnt_q == 0) & ~(FALL_THROUGH & push_i);
		end
	endgenerate
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:61:5
	always @(*) begin : read_write_comb
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:63:9
		read_pointer_n = read_pointer_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:64:9
		write_pointer_n = write_pointer_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:65:9
		status_cnt_n = status_cnt_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:66:9
		data_o = (DEPTH == 0 ? data_i : mem_q[read_pointer_q * dtype_AxiIdWidth+:dtype_AxiIdWidth]);
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:67:9
		mem_n = mem_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:68:9
		gate_clock = 1'b1;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:71:9
		if (push_i && ~full_o) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:73:13
			mem_n[write_pointer_q * dtype_AxiIdWidth+:dtype_AxiIdWidth] = data_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:75:13
			gate_clock = 1'b0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:78:13
			if (write_pointer_q == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:79:17
				write_pointer_n = 1'sb0;
			else
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:81:17
				write_pointer_n = write_pointer_q + 1;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:83:13
			status_cnt_n = status_cnt_q + 1;
		end
		if (pop_i && ~empty_o) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:90:13
			if (read_pointer_n == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:91:17
				read_pointer_n = 1'sb0;
			else
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:93:17
				read_pointer_n = read_pointer_q + 1;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:95:13
			status_cnt_n = status_cnt_q - 1;
		end
		if (((push_i && pop_i) && ~full_o) && ~empty_o)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:100:13
			status_cnt_n = status_cnt_q;
		if ((FALL_THROUGH && (status_cnt_q == 0)) && push_i) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:104:13
			data_o = data_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:105:13
			if (pop_i) begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:106:17
				status_cnt_n = status_cnt_q;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:107:17
				read_pointer_n = read_pointer_q;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:108:17
				write_pointer_n = write_pointer_q;
			end
		end
	end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:114:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:115:9
		if (~rst_ni) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:116:13
			read_pointer_q <= 1'sb0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:117:13
			write_pointer_q <= 1'sb0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:118:13
			status_cnt_q <= 1'sb0;
		end
		else
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:120:13
			if (flush_i) begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:121:17
				read_pointer_q <= 1'sb0;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:122:17
				write_pointer_q <= 1'sb0;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:123:17
				status_cnt_q <= 1'sb0;
			end
			else begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:125:17
				read_pointer_q <= read_pointer_n;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:126:17
				write_pointer_q <= write_pointer_n;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:127:17
				status_cnt_q <= status_cnt_n;
			end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:132:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:133:9
		if (~rst_ni)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:134:13
			mem_q <= 1'sb0;
		else if (!gate_clock)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:136:13
			mem_q <= mem_n;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:142:5
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:146:5
	// removed an assertion item
	// full_write : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(full_o |-> ~push_i)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:148:14
	// 	$fatal(1, "Trying to push new data although the FIFO is full.");
	// end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:150:5
	// removed an assertion item
	// empty_read : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(empty_o |-> ~pop_i)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:152:14
	// 	$fatal(1, "Trying to pop data although the FIFO is empty.");
	// end
	initial _sv2v_0 = 0;
endmodule
module fifo_v3_19420_E888C (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	usage_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	// removed localparam type dtype_dtype_DATA_WIDTH_type
	parameter [31:0] dtype_dtype_DATA_WIDTH = 0;
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:17:20
	// removed localparam type dtype
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:19:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:21:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:22:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:23:5
	input wire flush_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:24:5
	input wire testmode_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:26:5
	output wire full_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:27:5
	output wire empty_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:28:5
	output wire [ADDR_DEPTH - 1:0] usage_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:30:5
	input wire [dtype_dtype_DATA_WIDTH - 1:0] data_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:31:5
	input wire push_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:33:5
	output reg [dtype_dtype_DATA_WIDTH - 1:0] data_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:34:5
	input wire pop_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:38:5
	localparam [31:0] FifoDepth = (DEPTH > 0 ? DEPTH : 1);
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:40:5
	reg gate_clock;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:42:5
	reg [ADDR_DEPTH - 1:0] read_pointer_n;
	reg [ADDR_DEPTH - 1:0] read_pointer_q;
	reg [ADDR_DEPTH - 1:0] write_pointer_n;
	reg [ADDR_DEPTH - 1:0] write_pointer_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:45:5
	reg [ADDR_DEPTH:0] status_cnt_n;
	reg [ADDR_DEPTH:0] status_cnt_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:47:5
	reg [(FifoDepth * dtype_dtype_DATA_WIDTH) - 1:0] mem_n;
	reg [(FifoDepth * dtype_dtype_DATA_WIDTH) - 1:0] mem_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:49:5
	assign usage_o = status_cnt_q[ADDR_DEPTH - 1:0];
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:51:5
	generate
		if (DEPTH == 0) begin : gen_pass_through
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:52:9
			assign empty_o = ~push_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:53:9
			assign full_o = ~pop_i;
		end
		else begin : gen_fifo
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:55:9
			assign full_o = status_cnt_q == FifoDepth[ADDR_DEPTH:0];
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:56:9
			assign empty_o = (status_cnt_q == 0) & ~(FALL_THROUGH & push_i);
		end
	endgenerate
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:61:5
	always @(*) begin : read_write_comb
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:63:9
		read_pointer_n = read_pointer_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:64:9
		write_pointer_n = write_pointer_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:65:9
		status_cnt_n = status_cnt_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:66:9
		data_o = (DEPTH == 0 ? data_i : mem_q[read_pointer_q * dtype_dtype_DATA_WIDTH+:dtype_dtype_DATA_WIDTH]);
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:67:9
		mem_n = mem_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:68:9
		gate_clock = 1'b1;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:71:9
		if (push_i && ~full_o) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:73:13
			mem_n[write_pointer_q * dtype_dtype_DATA_WIDTH+:dtype_dtype_DATA_WIDTH] = data_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:75:13
			gate_clock = 1'b0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:78:13
			if (write_pointer_q == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:79:17
				write_pointer_n = 1'sb0;
			else
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:81:17
				write_pointer_n = write_pointer_q + 1;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:83:13
			status_cnt_n = status_cnt_q + 1;
		end
		if (pop_i && ~empty_o) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:90:13
			if (read_pointer_n == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:91:17
				read_pointer_n = 1'sb0;
			else
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:93:17
				read_pointer_n = read_pointer_q + 1;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:95:13
			status_cnt_n = status_cnt_q - 1;
		end
		if (((push_i && pop_i) && ~full_o) && ~empty_o)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:100:13
			status_cnt_n = status_cnt_q;
		if ((FALL_THROUGH && (status_cnt_q == 0)) && push_i) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:104:13
			data_o = data_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:105:13
			if (pop_i) begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:106:17
				status_cnt_n = status_cnt_q;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:107:17
				read_pointer_n = read_pointer_q;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:108:17
				write_pointer_n = write_pointer_q;
			end
		end
	end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:114:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:115:9
		if (~rst_ni) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:116:13
			read_pointer_q <= 1'sb0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:117:13
			write_pointer_q <= 1'sb0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:118:13
			status_cnt_q <= 1'sb0;
		end
		else
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:120:13
			if (flush_i) begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:121:17
				read_pointer_q <= 1'sb0;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:122:17
				write_pointer_q <= 1'sb0;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:123:17
				status_cnt_q <= 1'sb0;
			end
			else begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:125:17
				read_pointer_q <= read_pointer_n;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:126:17
				write_pointer_q <= write_pointer_n;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:127:17
				status_cnt_q <= status_cnt_n;
			end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:132:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:133:9
		if (~rst_ni)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:134:13
			mem_q <= 1'sb0;
		else if (!gate_clock)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:136:13
			mem_q <= mem_n;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:142:5
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:146:5
	// removed an assertion item
	// full_write : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(full_o |-> ~push_i)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:148:14
	// 	$fatal(1, "Trying to push new data although the FIFO is full.");
	// end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:150:5
	// removed an assertion item
	// empty_read : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(empty_o |-> ~pop_i)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:152:14
	// 	$fatal(1, "Trying to pop data although the FIFO is empty.");
	// end
	initial _sv2v_0 = 0;
endmodule
module fifo_v3_B0153 (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	usage_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:17:20
	// removed localparam type dtype
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:19:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:21:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:22:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:23:5
	input wire flush_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:24:5
	input wire testmode_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:26:5
	output wire full_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:27:5
	output wire empty_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:28:5
	output wire [ADDR_DEPTH - 1:0] usage_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:30:5
	input wire [7:0] data_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:31:5
	input wire push_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:33:5
	output reg [7:0] data_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:34:5
	input wire pop_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:38:5
	localparam [31:0] FifoDepth = (DEPTH > 0 ? DEPTH : 1);
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:40:5
	reg gate_clock;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:42:5
	reg [ADDR_DEPTH - 1:0] read_pointer_n;
	reg [ADDR_DEPTH - 1:0] read_pointer_q;
	reg [ADDR_DEPTH - 1:0] write_pointer_n;
	reg [ADDR_DEPTH - 1:0] write_pointer_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:45:5
	reg [ADDR_DEPTH:0] status_cnt_n;
	reg [ADDR_DEPTH:0] status_cnt_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:47:5
	reg [(FifoDepth * 8) - 1:0] mem_n;
	reg [(FifoDepth * 8) - 1:0] mem_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:49:5
	assign usage_o = status_cnt_q[ADDR_DEPTH - 1:0];
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:51:5
	generate
		if (DEPTH == 0) begin : gen_pass_through
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:52:9
			assign empty_o = ~push_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:53:9
			assign full_o = ~pop_i;
		end
		else begin : gen_fifo
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:55:9
			assign full_o = status_cnt_q == FifoDepth[ADDR_DEPTH:0];
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:56:9
			assign empty_o = (status_cnt_q == 0) & ~(FALL_THROUGH & push_i);
		end
	endgenerate
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:61:5
	always @(*) begin : read_write_comb
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:63:9
		read_pointer_n = read_pointer_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:64:9
		write_pointer_n = write_pointer_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:65:9
		status_cnt_n = status_cnt_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:66:9
		data_o = (DEPTH == 0 ? data_i : mem_q[read_pointer_q * 8+:8]);
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:67:9
		mem_n = mem_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:68:9
		gate_clock = 1'b1;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:71:9
		if (push_i && ~full_o) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:73:13
			mem_n[write_pointer_q * 8+:8] = data_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:75:13
			gate_clock = 1'b0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:78:13
			if (write_pointer_q == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:79:17
				write_pointer_n = 1'sb0;
			else
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:81:17
				write_pointer_n = write_pointer_q + 1;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:83:13
			status_cnt_n = status_cnt_q + 1;
		end
		if (pop_i && ~empty_o) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:90:13
			if (read_pointer_n == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:91:17
				read_pointer_n = 1'sb0;
			else
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:93:17
				read_pointer_n = read_pointer_q + 1;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:95:13
			status_cnt_n = status_cnt_q - 1;
		end
		if (((push_i && pop_i) && ~full_o) && ~empty_o)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:100:13
			status_cnt_n = status_cnt_q;
		if ((FALL_THROUGH && (status_cnt_q == 0)) && push_i) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:104:13
			data_o = data_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:105:13
			if (pop_i) begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:106:17
				status_cnt_n = status_cnt_q;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:107:17
				read_pointer_n = read_pointer_q;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:108:17
				write_pointer_n = write_pointer_q;
			end
		end
	end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:114:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:115:9
		if (~rst_ni) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:116:13
			read_pointer_q <= 1'sb0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:117:13
			write_pointer_q <= 1'sb0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:118:13
			status_cnt_q <= 1'sb0;
		end
		else
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:120:13
			if (flush_i) begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:121:17
				read_pointer_q <= 1'sb0;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:122:17
				write_pointer_q <= 1'sb0;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:123:17
				status_cnt_q <= 1'sb0;
			end
			else begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:125:17
				read_pointer_q <= read_pointer_n;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:126:17
				write_pointer_q <= write_pointer_n;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:127:17
				status_cnt_q <= status_cnt_n;
			end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:132:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:133:9
		if (~rst_ni)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:134:13
			mem_q <= 1'sb0;
		else if (!gate_clock)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:136:13
			mem_q <= mem_n;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:142:5
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:146:5
	// removed an assertion item
	// full_write : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(full_o |-> ~push_i)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:148:14
	// 	$fatal(1, "Trying to push new data although the FIFO is full.");
	// end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:150:5
	// removed an assertion item
	// empty_read : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(empty_o |-> ~pop_i)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:152:14
	// 	$fatal(1, "Trying to pop data although the FIFO is empty.");
	// end
	initial _sv2v_0 = 0;
endmodule
module fifo_v3_4D453 (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	usage_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:17:20
	// removed localparam type dtype
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:19:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:21:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:22:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:23:5
	input wire flush_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:24:5
	input wire testmode_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:26:5
	output wire full_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:27:5
	output wire empty_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:28:5
	output wire [ADDR_DEPTH - 1:0] usage_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:30:5
	input wire [31:0] data_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:31:5
	input wire push_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:33:5
	output reg [31:0] data_o;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:34:5
	input wire pop_i;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:38:5
	localparam [31:0] FifoDepth = (DEPTH > 0 ? DEPTH : 1);
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:40:5
	reg gate_clock;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:42:5
	reg [ADDR_DEPTH - 1:0] read_pointer_n;
	reg [ADDR_DEPTH - 1:0] read_pointer_q;
	reg [ADDR_DEPTH - 1:0] write_pointer_n;
	reg [ADDR_DEPTH - 1:0] write_pointer_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:45:5
	reg [ADDR_DEPTH:0] status_cnt_n;
	reg [ADDR_DEPTH:0] status_cnt_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:47:5
	reg [(FifoDepth * 32) - 1:0] mem_n;
	reg [(FifoDepth * 32) - 1:0] mem_q;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:49:5
	assign usage_o = status_cnt_q[ADDR_DEPTH - 1:0];
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:51:5
	generate
		if (DEPTH == 0) begin : gen_pass_through
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:52:9
			assign empty_o = ~push_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:53:9
			assign full_o = ~pop_i;
		end
		else begin : gen_fifo
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:55:9
			assign full_o = status_cnt_q == FifoDepth[ADDR_DEPTH:0];
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:56:9
			assign empty_o = (status_cnt_q == 0) & ~(FALL_THROUGH & push_i);
		end
	endgenerate
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:61:5
	always @(*) begin : read_write_comb
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:63:9
		read_pointer_n = read_pointer_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:64:9
		write_pointer_n = write_pointer_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:65:9
		status_cnt_n = status_cnt_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:66:9
		data_o = (DEPTH == 0 ? data_i : mem_q[read_pointer_q * 32+:32]);
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:67:9
		mem_n = mem_q;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:68:9
		gate_clock = 1'b1;
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:71:9
		if (push_i && ~full_o) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:73:13
			mem_n[write_pointer_q * 32+:32] = data_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:75:13
			gate_clock = 1'b0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:78:13
			if (write_pointer_q == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:79:17
				write_pointer_n = 1'sb0;
			else
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:81:17
				write_pointer_n = write_pointer_q + 1;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:83:13
			status_cnt_n = status_cnt_q + 1;
		end
		if (pop_i && ~empty_o) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:90:13
			if (read_pointer_n == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:91:17
				read_pointer_n = 1'sb0;
			else
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:93:17
				read_pointer_n = read_pointer_q + 1;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:95:13
			status_cnt_n = status_cnt_q - 1;
		end
		if (((push_i && pop_i) && ~full_o) && ~empty_o)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:100:13
			status_cnt_n = status_cnt_q;
		if ((FALL_THROUGH && (status_cnt_q == 0)) && push_i) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:104:13
			data_o = data_i;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:105:13
			if (pop_i) begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:106:17
				status_cnt_n = status_cnt_q;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:107:17
				read_pointer_n = read_pointer_q;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:108:17
				write_pointer_n = write_pointer_q;
			end
		end
	end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:114:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:115:9
		if (~rst_ni) begin
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:116:13
			read_pointer_q <= 1'sb0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:117:13
			write_pointer_q <= 1'sb0;
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:118:13
			status_cnt_q <= 1'sb0;
		end
		else
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:120:13
			if (flush_i) begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:121:17
				read_pointer_q <= 1'sb0;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:122:17
				write_pointer_q <= 1'sb0;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:123:17
				status_cnt_q <= 1'sb0;
			end
			else begin
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:125:17
				read_pointer_q <= read_pointer_n;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:126:17
				write_pointer_q <= write_pointer_n;
				// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:127:17
				status_cnt_q <= status_cnt_n;
			end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:132:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:133:9
		if (~rst_ni)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:134:13
			mem_q <= 1'sb0;
		else if (!gate_clock)
			// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:136:13
			mem_q <= mem_n;
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:142:5
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:146:5
	// removed an assertion item
	// full_write : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(full_o |-> ~push_i)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:148:14
	// 	$fatal(1, "Trying to push new data although the FIFO is full.");
	// end
	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:150:5
	// removed an assertion item
	// empty_read : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(empty_o |-> ~pop_i)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/common_cells/src/fifo_v3.sv:152:14
	// 	$fatal(1, "Trying to pop data although the FIFO is empty.");
	// end
	initial _sv2v_0 = 0;
endmodule
