module lsu_bypass_0E76B_05199 (
	clk_i,
	rst_ni,
	flush_i,
	lsu_req_i,
	lsu_req_valid_i,
	pop_ld_i,
	pop_st_i,
	lsu_ctrl_o,
	ready_o
);
	// removed localparam type lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg_type
	parameter [17102:0] lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/lsu_bypass.sv:29:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/lsu_bypass.sv:30:20
	// removed localparam type lsu_ctrl_t
	// Trace: core/lsu_bypass.sv:33:5
	input wire clk_i;
	// Trace: core/lsu_bypass.sv:35:5
	input wire rst_ni;
	// Trace: core/lsu_bypass.sv:37:5
	input wire flush_i;
	// Trace: core/lsu_bypass.sv:40:5
	input wire [((((((1 + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32]) - 1:0] lsu_req_i;
	// Trace: core/lsu_bypass.sv:42:5
	input wire lsu_req_valid_i;
	// Trace: core/lsu_bypass.sv:44:5
	input wire pop_ld_i;
	// Trace: core/lsu_bypass.sv:46:5
	input wire pop_st_i;
	// Trace: core/lsu_bypass.sv:49:5
	output reg [((((((1 + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32]) - 1:0] lsu_ctrl_o;
	// Trace: core/lsu_bypass.sv:51:5
	output wire ready_o;
	// Trace: core/lsu_bypass.sv:54:3
	reg [(2 * ((((((1 + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32])) - 1:0] mem_n;
	reg [(2 * ((((((1 + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32])) - 1:0] mem_q;
	// Trace: core/lsu_bypass.sv:55:3
	reg read_pointer_n;
	reg read_pointer_q;
	// Trace: core/lsu_bypass.sv:56:3
	reg write_pointer_n;
	reg write_pointer_q;
	// Trace: core/lsu_bypass.sv:57:3
	reg [1:0] status_cnt_n;
	reg [1:0] status_cnt_q;
	// Trace: core/lsu_bypass.sv:59:3
	wire empty;
	// Trace: core/lsu_bypass.sv:60:3
	assign empty = status_cnt_q == 0;
	// Trace: core/lsu_bypass.sv:61:3
	assign ready_o = empty;
	// Trace: core/lsu_bypass.sv:63:3
	always @(*) begin : sv2v_autoblock_1
		// Trace: core/lsu_bypass.sv:64:5
		reg [1:0] status_cnt;
		// Trace: core/lsu_bypass.sv:65:5
		reg write_pointer;
		// Trace: core/lsu_bypass.sv:66:5
		reg read_pointer;
		if (_sv2v_0)
			;
		// Trace: core/lsu_bypass.sv:68:5
		status_cnt = status_cnt_q;
		// Trace: core/lsu_bypass.sv:69:5
		write_pointer = write_pointer_q;
		// Trace: core/lsu_bypass.sv:70:5
		read_pointer = read_pointer_q;
		// Trace: core/lsu_bypass.sv:72:5
		mem_n = mem_q;
		// Trace: core/lsu_bypass.sv:74:5
		if (lsu_req_valid_i) begin
			// Trace: core/lsu_bypass.sv:75:7
			mem_n[write_pointer_q * ((((((1 + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32])+:(((((1 + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32]] = lsu_req_i;
			// Trace: core/lsu_bypass.sv:76:7
			write_pointer = write_pointer + 1;
			// Trace: core/lsu_bypass.sv:77:7
			status_cnt = status_cnt + 1;
		end
		if (pop_ld_i) begin
			// Trace: core/lsu_bypass.sv:82:7
			mem_n[(read_pointer_q * ((((((1 + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32])) + (1 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))))] = 1'b0;
			// Trace: core/lsu_bypass.sv:83:7
			read_pointer = read_pointer + 1;
			// Trace: core/lsu_bypass.sv:84:7
			status_cnt = status_cnt - 1;
		end
		if (pop_st_i) begin
			// Trace: core/lsu_bypass.sv:89:7
			mem_n[(read_pointer_q * ((((((1 + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32])) + (1 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32] + (36 + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] + ((lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32] + 11))))))] = 1'b0;
			// Trace: core/lsu_bypass.sv:90:7
			read_pointer = read_pointer + 1;
			// Trace: core/lsu_bypass.sv:91:7
			status_cnt = status_cnt - 1;
		end
		if (pop_st_i && pop_ld_i)
			// Trace: core/lsu_bypass.sv:94:31
			mem_n = 1'sb0;
		if (flush_i) begin
			// Trace: core/lsu_bypass.sv:97:7
			status_cnt = 1'sb0;
			// Trace: core/lsu_bypass.sv:98:7
			write_pointer = 1'sb0;
			// Trace: core/lsu_bypass.sv:99:7
			read_pointer = 1'sb0;
			// Trace: core/lsu_bypass.sv:100:7
			mem_n = 1'sb0;
		end
		// Trace: core/lsu_bypass.sv:103:5
		read_pointer_n = read_pointer;
		// Trace: core/lsu_bypass.sv:104:5
		write_pointer_n = write_pointer;
		// Trace: core/lsu_bypass.sv:105:5
		status_cnt_n = status_cnt;
	end
	// Trace: core/lsu_bypass.sv:109:3
	always @(*) begin : output_assignments
		if (_sv2v_0)
			;
		// Trace: core/lsu_bypass.sv:110:5
		if (empty)
			// Trace: core/lsu_bypass.sv:111:7
			lsu_ctrl_o = lsu_req_i;
		else
			// Trace: core/lsu_bypass.sv:113:7
			lsu_ctrl_o = mem_q[read_pointer_q * ((((((1 + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32])+:(((((1 + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17070-:32]) + 36) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32]) + (lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[17102-:32] / 8)) + 12) + lsu_ctrl_t_lsu_ctrl_t_lsu_ctrl_t_CVA6Cfg[16503-:32]];
	end
	// Trace: core/lsu_bypass.sv:118:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/lsu_bypass.sv:119:5
		if (~rst_ni) begin
			// Trace: core/lsu_bypass.sv:120:7
			mem_q <= 1'sb0;
			// Trace: core/lsu_bypass.sv:121:7
			status_cnt_q <= 1'sb0;
			// Trace: core/lsu_bypass.sv:122:7
			write_pointer_q <= 1'sb0;
			// Trace: core/lsu_bypass.sv:123:7
			read_pointer_q <= 1'sb0;
		end
		else begin
			// Trace: core/lsu_bypass.sv:125:7
			mem_q <= mem_n;
			// Trace: core/lsu_bypass.sv:126:7
			status_cnt_q <= status_cnt_n;
			// Trace: core/lsu_bypass.sv:127:7
			write_pointer_q <= write_pointer_n;
			// Trace: core/lsu_bypass.sv:128:7
			read_pointer_q <= read_pointer_n;
		end
	initial _sv2v_0 = 0;
endmodule
