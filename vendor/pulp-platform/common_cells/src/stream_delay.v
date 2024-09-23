module stream_delay_15388 (
	clk_i,
	rst_ni,
	payload_i,
	ready_o,
	valid_i,
	payload_o,
	ready_i,
	valid_o
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:15:15
	parameter [0:0] StallRandom = 0;
	// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:16:15
	parameter signed [31:0] FixedDelay = 1;
	// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:17:21
	// removed localparam type payload_t
	// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:19:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:20:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:22:5
	input wire payload_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:23:5
	output reg ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:24:5
	input wire valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:26:5
	output wire payload_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:27:5
	input wire ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:28:5
	output reg valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:31:5
	generate
		if ((FixedDelay == 0) && !StallRandom) begin : gen_pass_through
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:32:9
			wire [1:1] sv2v_tmp_0F16F;
			assign sv2v_tmp_0F16F = ready_i;
			always @(*) ready_o = sv2v_tmp_0F16F;
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:33:9
			wire [1:1] sv2v_tmp_15E2F;
			assign sv2v_tmp_15E2F = valid_i;
			always @(*) valid_o = sv2v_tmp_15E2F;
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:34:9
			assign payload_o = payload_i;
		end
		else begin : gen_delay
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:37:9
			localparam [31:0] CounterBits = 4;
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:39:9
			// removed localparam type state_e
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:43:9
			reg [1:0] state_d;
			reg [1:0] state_q;
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:45:9
			reg load;
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:46:9
			wire [3:0] count_out;
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:47:9
			reg en;
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:49:9
			wire [3:0] counter_load;
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:51:9
			assign payload_o = payload_i;
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:53:9
			always @(*) begin
				if (_sv2v_0)
					;
				// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:54:13
				state_d = state_q;
				// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:55:13
				valid_o = 1'b0;
				// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:56:13
				ready_o = 1'b0;
				// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:57:13
				load = 1'b0;
				// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:58:13
				en = 1'b0;
				// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:60:13
				(* full_case, parallel_case *)
				case (state_q)
					2'd0:
						// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:62:21
						if (valid_i) begin
							// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:63:25
							load = 1'b1;
							// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:64:25
							state_d = 2'd1;
							// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:66:25
							if ((FixedDelay == 1) || (StallRandom && (counter_load == 1)))
								// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:67:29
								state_d = 2'd2;
							if (StallRandom && (counter_load == 0)) begin
								// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:71:29
								valid_o = 1'b1;
								// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:72:29
								ready_o = ready_i;
								// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:73:29
								if (ready_i)
									// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:73:42
									state_d = 2'd0;
								else
									// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:74:34
									state_d = 2'd2;
							end
						end
					2'd1: begin
						// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:79:21
						en = 1'b1;
						// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:80:21
						if (count_out == 0)
							// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:81:25
							state_d = 2'd2;
					end
					2'd2: begin
						// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:86:21
						valid_o = 1'b1;
						// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:87:21
						ready_o = ready_i;
						// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:88:21
						if (ready_i)
							// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:88:34
							state_d = 2'd0;
					end
					default:
						;
				endcase
			end
			if (StallRandom) begin : gen_random_stall
				// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:96:13
				lfsr_16bit #(.WIDTH(16)) i_lfsr_16bit(
					.clk_i(clk_i),
					.rst_ni(rst_ni),
					.en_i(load),
					.refill_way_oh(),
					.refill_way_bin(counter_load)
				);
			end
			else begin : gen_fixed_delay
				// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:106:13
				assign counter_load = FixedDelay;
			end
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:109:9
			counter #(.WIDTH(CounterBits)) i_counter(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.clear_i(1'b0),
				.en_i(en),
				.load_i(load),
				.down_i(1'b1),
				.d_i(counter_load),
				.q_o(count_out),
				.overflow_o()
			);
			// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:123:9
			always @(posedge clk_i or negedge rst_ni)
				// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:124:13
				if (~rst_ni)
					// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:125:17
					state_q <= 2'd0;
				else
					// Trace: vendor/pulp-platform/common_cells/src/stream_delay.sv:127:17
					state_q <= state_d;
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
