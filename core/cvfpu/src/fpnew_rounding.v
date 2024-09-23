module fpnew_rounding (
	abs_value_i,
	sign_i,
	round_sticky_bits_i,
	rnd_mode_i,
	effective_subtraction_i,
	abs_rounded_o,
	sign_o,
	exact_zero_o
);
	reg _sv2v_0;
	// Trace: core/cvfpu/src/fpnew_rounding.sv:17:13
	parameter [31:0] AbsWidth = 2;
	// Trace: core/cvfpu/src/fpnew_rounding.sv:20:3
	input wire [AbsWidth - 1:0] abs_value_i;
	// Trace: core/cvfpu/src/fpnew_rounding.sv:21:3
	input wire sign_i;
	// Trace: core/cvfpu/src/fpnew_rounding.sv:23:3
	input wire [1:0] round_sticky_bits_i;
	// Trace: core/cvfpu/src/fpnew_rounding.sv:24:3
	// removed localparam type fpnew_pkg_roundmode_e
	input wire [2:0] rnd_mode_i;
	// Trace: core/cvfpu/src/fpnew_rounding.sv:25:3
	input wire effective_subtraction_i;
	// Trace: core/cvfpu/src/fpnew_rounding.sv:27:3
	output wire [AbsWidth - 1:0] abs_rounded_o;
	// Trace: core/cvfpu/src/fpnew_rounding.sv:28:3
	output wire sign_o;
	// Trace: core/cvfpu/src/fpnew_rounding.sv:30:3
	output wire exact_zero_o;
	// Trace: core/cvfpu/src/fpnew_rounding.sv:33:3
	reg round_up;
	// Trace: core/cvfpu/src/fpnew_rounding.sv:45:3
	localparam [0:0] fpnew_pkg_DONT_CARE = 1'b1;
	always @(*) begin : rounding_decision
		if (_sv2v_0)
			;
		// Trace: core/cvfpu/src/fpnew_rounding.sv:46:5
		(* full_case, parallel_case *)
		case (rnd_mode_i)
			3'b000:
				(* full_case, parallel_case *)
				case (round_sticky_bits_i)
					2'b00, 2'b01:
						// Trace: core/cvfpu/src/fpnew_rounding.sv:50:18
						round_up = 1'b0;
					2'b10:
						// Trace: core/cvfpu/src/fpnew_rounding.sv:51:18
						round_up = abs_value_i[0];
					2'b11:
						// Trace: core/cvfpu/src/fpnew_rounding.sv:52:18
						round_up = 1'b1;
					default:
						// Trace: core/cvfpu/src/fpnew_rounding.sv:53:20
						round_up = fpnew_pkg_DONT_CARE;
				endcase
			3'b001:
				// Trace: core/cvfpu/src/fpnew_rounding.sv:55:23
				round_up = 1'b0;
			3'b010:
				// Trace: core/cvfpu/src/fpnew_rounding.sv:56:23
				round_up = (|round_sticky_bits_i ? sign_i : 1'b0);
			3'b011:
				// Trace: core/cvfpu/src/fpnew_rounding.sv:57:23
				round_up = (|round_sticky_bits_i ? ~sign_i : 1'b0);
			3'b100:
				// Trace: core/cvfpu/src/fpnew_rounding.sv:58:23
				round_up = round_sticky_bits_i[1];
			3'b101:
				// Trace: core/cvfpu/src/fpnew_rounding.sv:59:23
				round_up = ~abs_value_i[0] & |round_sticky_bits_i;
			default:
				// Trace: core/cvfpu/src/fpnew_rounding.sv:60:16
				round_up = fpnew_pkg_DONT_CARE;
		endcase
	end
	// Trace: core/cvfpu/src/fpnew_rounding.sv:65:3
	assign abs_rounded_o = abs_value_i + round_up;
	// Trace: core/cvfpu/src/fpnew_rounding.sv:68:3
	assign exact_zero_o = (abs_value_i == {AbsWidth {1'sb0}}) && (round_sticky_bits_i == {2 {1'sb0}});
	// Trace: core/cvfpu/src/fpnew_rounding.sv:72:3
	assign sign_o = (exact_zero_o && effective_subtraction_i ? rnd_mode_i == 3'b010 : sign_i);
	initial _sv2v_0 = 0;
endmodule
