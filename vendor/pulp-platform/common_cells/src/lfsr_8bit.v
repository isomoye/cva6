module lfsr_8bit (
	clk_i,
	rst_ni,
	en_i,
	refill_way_oh,
	refill_way_bin
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:18:13
	parameter [7:0] SEED = 8'b00000000;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:19:13
	parameter [31:0] WIDTH = 8;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:21:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:22:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:23:3
	input wire en_i;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:24:3
	output reg [WIDTH - 1:0] refill_way_oh;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:25:3
	output reg [$clog2(WIDTH) - 1:0] refill_way_bin;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:28:3
	localparam [31:0] LogWidth = $clog2(WIDTH);
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:30:3
	reg [7:0] shift_d;
	reg [7:0] shift_q;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:32:3
	always @(*) begin : sv2v_autoblock_1
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:34:5
		reg shift_in;
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:35:5
		shift_in = !(((shift_q[7] ^ shift_q[3]) ^ shift_q[2]) ^ shift_q[1]);
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:37:5
		shift_d = shift_q;
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:39:5
		if (en_i)
			// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:39:15
			shift_d = {shift_q[6:0], shift_in};
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:42:5
		refill_way_oh = 'b0;
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:43:5
		refill_way_oh[shift_q[LogWidth - 1:0]] = 1'b1;
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:44:5
		refill_way_bin = shift_q;
	end
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:47:3
	always @(posedge clk_i or negedge rst_ni) begin : proc_
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:48:5
		if (~rst_ni)
			// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:49:7
			shift_q <= SEED;
		else
			// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:51:7
			shift_q <= shift_d;
	end
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_8bit.sv:56:3
	initial _sv2v_0 = 0;
endmodule
