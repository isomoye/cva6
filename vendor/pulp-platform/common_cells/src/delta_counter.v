module delta_counter (
	clk_i,
	rst_ni,
	clear_i,
	en_i,
	load_i,
	down_i,
	delta_i,
	d_i,
	q_o,
	overflow_o
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:14:15
	parameter [31:0] WIDTH = 4;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:15:15
	parameter [0:0] STICKY_OVERFLOW = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:17:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:18:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:19:5
	input wire clear_i;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:20:5
	input wire en_i;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:21:5
	input wire load_i;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:22:5
	input wire down_i;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:23:5
	input wire [WIDTH - 1:0] delta_i;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:24:5
	input wire [WIDTH - 1:0] d_i;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:25:5
	output wire [WIDTH - 1:0] q_o;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:26:5
	output wire overflow_o;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:28:5
	reg [WIDTH:0] counter_q;
	reg [WIDTH:0] counter_d;
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:29:5
	generate
		if (STICKY_OVERFLOW) begin : gen_sticky_overflow
			// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:30:9
			reg overflow_d;
			reg overflow_q;
			// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:31:9
			always @(posedge clk_i or negedge rst_ni)
				// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:31:54
				overflow_q <= (~rst_ni ? 1'b0 : overflow_d);
			// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:32:9
			always @(*) begin
				if (_sv2v_0)
					;
				// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:33:13
				overflow_d = overflow_q;
				// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:34:13
				if (clear_i || load_i)
					// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:35:17
					overflow_d = 1'b0;
				else if (!overflow_q && en_i) begin
					begin
						// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:37:17
						if (down_i)
							// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:38:21
							overflow_d = delta_i > counter_q[WIDTH - 1:0];
						else
							// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:40:21
							overflow_d = counter_q[WIDTH - 1:0] > ({WIDTH {1'b1}} - delta_i);
					end
				end
			end
			// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:44:9
			assign overflow_o = overflow_q;
		end
		else begin : gen_transient_overflow
			// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:47:9
			assign overflow_o = counter_q[WIDTH];
		end
	endgenerate
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:49:5
	assign q_o = counter_q[WIDTH - 1:0];
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:51:5
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:52:9
		counter_d = counter_q;
		// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:54:9
		if (clear_i)
			// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:55:13
			counter_d = 1'sb0;
		else if (load_i)
			// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:57:13
			counter_d = {1'b0, d_i};
		else if (en_i) begin
			begin
				// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:59:13
				if (down_i)
					// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:60:17
					counter_d = counter_q - delta_i;
				else
					// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:62:17
					counter_d = counter_q + delta_i;
			end
		end
	end
	// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:67:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:68:9
		if (!rst_ni)
			// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:69:12
			counter_q <= 1'sb0;
		else
			// Trace: vendor/pulp-platform/common_cells/src/delta_counter.sv:71:12
			counter_q <= counter_d;
	initial _sv2v_0 = 0;
endmodule
