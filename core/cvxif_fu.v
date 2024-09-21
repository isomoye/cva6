module cvxif_fu_2640F_4CE1F (
	clk_i,
	rst_ni,
	x_valid_i,
	x_trans_id_i,
	x_illegal_i,
	x_off_instr_i,
	x_ready_o,
	x_trans_id_o,
	x_exception_o,
	x_result_o,
	x_valid_o,
	x_we_o,
	x_rd_o,
	result_valid_i,
	result_i,
	result_ready_o
);
	// removed localparam type exception_t_exception_t_CVA6Cfg_type
	parameter [17102:0] exception_t_exception_t_CVA6Cfg = 0;
	// removed localparam type x_result_t_x_result_t_x_result_t_CVA6Cfg_type
	parameter [17102:0] x_result_t_x_result_t_x_result_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/cvxif_fu.sv:17:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cvxif_fu.sv:18:20
	// removed localparam type exception_t
	// Trace: core/cvxif_fu.sv:19:20
	// removed localparam type x_result_t
	// Trace: core/cvxif_fu.sv:22:5
	input wire clk_i;
	// Trace: core/cvxif_fu.sv:24:5
	input wire rst_ni;
	// Trace: core/cvxif_fu.sv:26:5
	input wire x_valid_i;
	// Trace: core/cvxif_fu.sv:28:5
	input wire [CVA6Cfg[16503-:32] - 1:0] x_trans_id_i;
	// Trace: core/cvxif_fu.sv:30:5
	input wire x_illegal_i;
	// Trace: core/cvxif_fu.sv:32:5
	input wire [31:0] x_off_instr_i;
	// Trace: core/cvxif_fu.sv:34:5
	output wire x_ready_o;
	// Trace: core/cvxif_fu.sv:36:5
	output wire [CVA6Cfg[16503-:32] - 1:0] x_trans_id_o;
	// Trace: core/cvxif_fu.sv:38:5
	output reg [((exception_t_exception_t_CVA6Cfg[17102-:32] + exception_t_exception_t_CVA6Cfg[17102-:32]) + exception_t_exception_t_CVA6Cfg[17006-:32]) + 33:0] x_exception_o;
	// Trace: core/cvxif_fu.sv:40:5
	output wire [CVA6Cfg[17102-:32] - 1:0] x_result_o;
	// Trace: core/cvxif_fu.sv:42:5
	output wire x_valid_o;
	// Trace: core/cvxif_fu.sv:44:5
	output wire x_we_o;
	// Trace: core/cvxif_fu.sv:46:5
	output wire [4:0] x_rd_o;
	// Trace: core/cvxif_fu.sv:48:5
	input wire result_valid_i;
	// Trace: core/cvxif_fu.sv:49:5
	input wire [((((x_result_t_x_result_t_x_result_t_CVA6Cfg[127-:32] + x_result_t_x_result_t_x_result_t_CVA6Cfg[255-:32]) + x_result_t_x_result_t_x_result_t_CVA6Cfg[191-:32]) + 5) + (x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32])) - 1:0] result_i;
	// Trace: core/cvxif_fu.sv:50:5
	output wire result_ready_o;
	// Trace: core/cvxif_fu.sv:55:3
	assign result_ready_o = 1'b1;
	// Trace: core/cvxif_fu.sv:57:3
	assign x_ready_o = 1'b1;
	// Trace: core/cvxif_fu.sv:59:3
	assign x_valid_o = (x_illegal_i && x_valid_i ? 1'b1 : result_valid_i);
	// Trace: core/cvxif_fu.sv:60:3
	assign x_result_o = result_i[x_result_t_x_result_t_x_result_t_CVA6Cfg[191-:32] + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 4)-:((x_result_t_x_result_t_x_result_t_CVA6Cfg[191-:32] + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 4)) >= (5 + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 0)) ? ((x_result_t_x_result_t_x_result_t_CVA6Cfg[191-:32] + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 4)) - (5 + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 0))) + 1 : ((5 + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 0)) - (x_result_t_x_result_t_x_result_t_CVA6Cfg[191-:32] + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 4))) + 1)];
	// Trace: core/cvxif_fu.sv:61:3
	assign x_trans_id_o = (x_illegal_i ? x_trans_id_i : result_i[x_result_t_x_result_t_x_result_t_CVA6Cfg[255-:32] + (x_result_t_x_result_t_x_result_t_CVA6Cfg[191-:32] + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 4))-:((x_result_t_x_result_t_x_result_t_CVA6Cfg[255-:32] + (x_result_t_x_result_t_x_result_t_CVA6Cfg[191-:32] + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 4))) >= (x_result_t_x_result_t_x_result_t_CVA6Cfg[191-:32] + (5 + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 0))) ? ((x_result_t_x_result_t_x_result_t_CVA6Cfg[255-:32] + (x_result_t_x_result_t_x_result_t_CVA6Cfg[191-:32] + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 4))) - (x_result_t_x_result_t_x_result_t_CVA6Cfg[191-:32] + (5 + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 0)))) + 1 : ((x_result_t_x_result_t_x_result_t_CVA6Cfg[191-:32] + (5 + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 0))) - (x_result_t_x_result_t_x_result_t_CVA6Cfg[255-:32] + (x_result_t_x_result_t_x_result_t_CVA6Cfg[191-:32] + ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 4)))) + 1)]);
	// Trace: core/cvxif_fu.sv:62:3
	assign x_we_o = result_i[(x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) - 1-:(x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32])];
	// Trace: core/cvxif_fu.sv:63:3
	assign x_rd_o = result_i[(x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 4-:(((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 4) >= ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 0) ? (((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 4) - ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 0)) + 1 : (((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 0) - ((x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_x_result_t_x_result_t_CVA6Cfg[63-:32]) + 4)) + 1)];
	// Trace: core/cvxif_fu.sv:66:3
	localparam cva6_config_pkg_CVA6ConfigXlen = 64;
	localparam riscv_XLEN = cva6_config_pkg_CVA6ConfigXlen;
	localparam [63:0] riscv_ILLEGAL_INSTR = 2;
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvxif_fu.sv:67:5
		x_exception_o = 1'sb0;
		// Trace: core/cvxif_fu.sv:68:5
		if (x_illegal_i && x_valid_i) begin
			// Trace: core/cvxif_fu.sv:69:7
			x_exception_o[0] = 1'sb1;
			// Trace: core/cvxif_fu.sv:70:7
			x_exception_o[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) >= (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34))) + 1 : ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)))) + 1)] = riscv_ILLEGAL_INSTR;
			// Trace: core/cvxif_fu.sv:71:7
			if (CVA6Cfg[15915])
				// Trace: core/cvxif_fu.sv:72:9
				x_exception_o[exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)-:((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) >= (exception_t_exception_t_CVA6Cfg[17006-:32] + 34) ? ((exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33)) - (exception_t_exception_t_CVA6Cfg[17006-:32] + 34)) + 1 : ((exception_t_exception_t_CVA6Cfg[17006-:32] + 34) - (exception_t_exception_t_CVA6Cfg[17102-:32] + (exception_t_exception_t_CVA6Cfg[17006-:32] + 33))) + 1)] = x_off_instr_i;
		end
	end
	initial _sv2v_0 = 0;
endmodule
