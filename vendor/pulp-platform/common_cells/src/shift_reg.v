module shift_reg_400DE_F5F53 (
	clk_i,
	rst_ni,
	d_i,
	d_o
);
	// removed localparam type dtype_CVA6Cfg_type
	// removed localparam type dtype_exception_t_exception_t_CVA6Cfg_type
	parameter [17102:0] dtype_CVA6Cfg = 0;
	parameter [17102:0] dtype_exception_t_exception_t_CVA6Cfg = 0;
	// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:17:20
	// removed localparam type dtype
	// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:18:15
	parameter [31:0] Depth = 1;
	// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:20:5
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:21:5
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:22:5
	input wire [(((1 + dtype_CVA6Cfg[16503-:32]) + dtype_CVA6Cfg[17102-:32]) + ((((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] d_i;
	// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:23:5
	output reg [(((1 + dtype_CVA6Cfg[16503-:32]) + dtype_CVA6Cfg[17102-:32]) + ((((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] d_o;
	// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:27:5
	generate
		if (Depth == 0) begin : gen_pass_through
			// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:28:9
			wire [((1 + dtype_CVA6Cfg[16503-:32]) + dtype_CVA6Cfg[17102-:32]) + ((((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33)):1] sv2v_tmp_D60D7;
			assign sv2v_tmp_D60D7 = d_i;
			always @(*) d_o = sv2v_tmp_D60D7;
		end
		else if (Depth == 1) begin : gen_register
			// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:31:9
			always @(posedge clk_i or negedge rst_ni)
				// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:32:13
				if (~rst_ni)
					// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:33:17
					d_o <= 1'sb0;
				else
					// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:35:17
					d_o <= d_i;
		end
		else if (Depth > 1) begin : gen_shift_reg
			// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:40:9
			wire [(Depth * (((1 + dtype_CVA6Cfg[16503-:32]) + dtype_CVA6Cfg[17102-:32]) + ((((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33)))) - 1:0] reg_d;
			reg [(Depth * (((1 + dtype_CVA6Cfg[16503-:32]) + dtype_CVA6Cfg[17102-:32]) + ((((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33)))) - 1:0] reg_q;
			// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:41:9
			wire [((1 + dtype_CVA6Cfg[16503-:32]) + dtype_CVA6Cfg[17102-:32]) + ((((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33)):1] sv2v_tmp_CF19D;
			assign sv2v_tmp_CF19D = reg_q[(Depth - 1) * (((1 + dtype_CVA6Cfg[16503-:32]) + dtype_CVA6Cfg[17102-:32]) + ((((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33)))+:((1 + dtype_CVA6Cfg[16503-:32]) + dtype_CVA6Cfg[17102-:32]) + ((((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33))];
			always @(*) d_o = sv2v_tmp_CF19D;
			// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:42:9
			assign reg_d = {reg_q[(((1 + dtype_CVA6Cfg[16503-:32]) + dtype_CVA6Cfg[17102-:32]) + ((((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33))) * (((Depth - 2) >= 0 ? Depth - 2 : ((Depth - 2) + ((Depth - 2) >= 0 ? Depth - 1 : 3 - Depth)) - 1) - (((Depth - 2) >= 0 ? Depth - 1 : 3 - Depth) - 1))+:(((1 + dtype_CVA6Cfg[16503-:32]) + dtype_CVA6Cfg[17102-:32]) + ((((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((dtype_exception_t_exception_t_CVA6Cfg[17102-:32] + dtype_exception_t_exception_t_CVA6Cfg[17102-:32]) + dtype_exception_t_exception_t_CVA6Cfg[17006-:32]) + 33))) * ((Depth - 2) >= 0 ? Depth - 1 : 3 - Depth)], d_i};
			// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:44:9
			always @(posedge clk_i or negedge rst_ni)
				// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:45:13
				if (~rst_ni)
					// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:46:17
					reg_q <= 1'sb0;
				else
					// Trace: vendor/pulp-platform/common_cells/src/shift_reg.sv:48:17
					reg_q <= reg_d;
		end
	endgenerate
endmodule
