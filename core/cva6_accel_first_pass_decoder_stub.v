module cva6_accel_first_pass_decoder_AA251_75519 (
	instruction_i,
	fs_i,
	vs_i,
	is_accel_o,
	instruction_o,
	illegal_instr_o,
	is_control_flow_instr_o
);
	// removed localparam type scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg_type
	parameter [17102:0] scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg = 0;
	// removed import ariane_pkg::*;
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:13:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	parameter [17102:0] CVA6Cfg = 1'sb0;
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:14:20
	// removed localparam type scoreboard_entry_t
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:16:5
	input wire [31:0] instruction_i;
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:17:5
	// removed localparam type riscv_xs_t
	input wire [1:0] fs_i;
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:18:5
	input wire [1:0] vs_i;
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:19:5
	output wire is_accel_o;
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:20:5
	output wire [((((((scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg[17070-:32] + scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg[16503-:32]) + 27) + scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg[17102-:32]) + 4) + ((((scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg[17102-:32] + scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg[17102-:32]) + scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg[17006-:32]) + 33))) + (3 + scoreboard_entry_t_scoreboard_entry_t_scoreboard_entry_t_CVA6Cfg[17070-:32])) + 4:0] instruction_o;
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:21:5
	output wire illegal_instr_o;
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:22:5
	output wire is_control_flow_instr_o;
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:25:3
	assign is_accel_o = 1'b0;
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:26:3
	assign instruction_o = 1'sb0;
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:27:3
	assign illegal_instr_o = 1'b0;
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:28:3
	assign is_control_flow_instr_o = 1'b0;
	// Trace: core/cva6_accel_first_pass_decoder_stub.sv:30:3
	initial $display("Error [elaboration] core/cva6_accel_first_pass_decoder_stub.sv:30:3 - cva6_accel_first_pass_decoder\n msg: ", "cva6_accel_first_pass_decoder: instantiated non-functional module stub.          Please replace this with your accelerator's first pass decoder           (or unset ENABLE_ACCELERATOR).");
endmodule
