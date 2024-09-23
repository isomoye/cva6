module lfsr_16bit (
	clk_i,
	rst_ni,
	en_i,
	refill_way_oh,
	refill_way_bin
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:22:15
	parameter [15:0] SEED = 8'b00000000;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:23:15
	parameter [31:0] WIDTH = 16;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:25:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:26:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:27:5
	input wire en_i;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:28:5
	output reg [WIDTH - 1:0] refill_way_oh;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:29:5
	output reg [$clog2(WIDTH) - 1:0] refill_way_bin;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:32:5
	localparam [31:0] LogWidth = $clog2(WIDTH);
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:34:5
	reg [15:0] shift_d;
	reg [15:0] shift_q;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:37:5
	always @(*) begin : sv2v_autoblock_1
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:39:9
		reg shift_in;
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:40:9
		shift_in = !(((shift_q[15] ^ shift_q[12]) ^ shift_q[5]) ^ shift_q[1]);
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:42:9
		shift_d = shift_q;
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:44:9
		if (en_i)
			// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:45:13
			shift_d = {shift_q[14:0], shift_in};
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:48:9
		refill_way_oh = 'b0;
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:49:9
		refill_way_oh[shift_q[LogWidth - 1:0]] = 1'b1;
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:50:9
		refill_way_bin = shift_q;
	end
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:53:5
	always @(posedge clk_i or negedge rst_ni) begin : proc_
		// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:54:9
		if (~rst_ni)
			// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:55:13
			shift_q <= SEED;
		else
			// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:57:13
			shift_q <= shift_d;
	end
	// Trace: vendor/pulp-platform/common_cells/src/lfsr_16bit.sv:62:5
	initial _sv2v_0 = 0;
endmodule
