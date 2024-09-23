module exp_backoff (
	clk_i,
	rst_ni,
	set_i,
	clr_i,
	is_zero_o
);
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:25:13
	parameter [31:0] Seed = 'hffff;
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:27:13
	parameter [31:0] MaxExp = 16;
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:29:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:30:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:32:3
	input wire set_i;
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:34:3
	input wire clr_i;
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:36:3
	output wire is_zero_o;
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:40:3
	localparam [31:0] WIDTH = 16;
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:42:3
	wire [15:0] lfsr_d;
	reg [15:0] lfsr_q;
	wire [15:0] cnt_d;
	reg [15:0] cnt_q;
	wire [15:0] mask_d;
	reg [15:0] mask_q;
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:43:3
	wire lfsr;
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:49:3
	assign lfsr = ((lfsr_q[0] ^ lfsr_q[2]) ^ lfsr_q[3]) ^ lfsr_q[5];
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:54:3
	assign lfsr_d = (set_i ? {lfsr, lfsr_q[15:1]} : lfsr_q);
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:58:3
	assign mask_d = (clr_i ? {16 {1'sb0}} : (set_i ? {{WIDTH - MaxExp {1'b0}}, mask_q[MaxExp - 2:0], 1'b1} : mask_q));
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:62:3
	assign cnt_d = (clr_i ? {16 {1'sb0}} : (set_i ? mask_q & lfsr_q : (!is_zero_o ? cnt_q - 1'b1 : {16 {1'sb0}})));
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:66:3
	assign is_zero_o = cnt_q == {16 {1'sb0}};
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:68:3
	function automatic [15:0] sv2v_cast_9432F;
		input reg [15:0] inp;
		sv2v_cast_9432F = inp;
	endfunction
	always @(posedge clk_i or negedge rst_ni) begin : p_regs
		// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:69:5
		if (!rst_ni) begin
			// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:70:7
			lfsr_q <= sv2v_cast_9432F(Seed);
			// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:71:7
			mask_q <= 1'sb0;
			// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:72:7
			cnt_q <= 1'sb0;
		end
		else begin
			// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:74:7
			lfsr_q <= lfsr_d;
			// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:75:7
			mask_q <= mask_d;
			// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:76:7
			cnt_q <= cnt_d;
		end
	end
	// Trace: vendor/pulp-platform/common_cells/src/exp_backoff.sv:86:3
endmodule
