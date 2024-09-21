module csr_buffer_18CED_ECF93 (
	clk_i,
	rst_ni,
	flush_i,
	fu_data_i,
	csr_ready_o,
	csr_valid_i,
	csr_result_o,
	csr_commit_i,
	csr_addr_o
);
	// removed localparam type fu_data_t_fu_data_t_CVA6Cfg_type
	parameter [17102:0] fu_data_t_fu_data_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/csr_buffer.sv:20:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/csr_buffer.sv:21:20
	// removed localparam type fu_data_t
	// Trace: core/csr_buffer.sv:24:5
	input wire clk_i;
	// Trace: core/csr_buffer.sv:26:5
	input wire rst_ni;
	// Trace: core/csr_buffer.sv:28:5
	input wire flush_i;
	// Trace: core/csr_buffer.sv:30:5
	input wire [((((12 + fu_data_t_fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_fu_data_t_CVA6Cfg[17102-:32]) + fu_data_t_fu_data_t_CVA6Cfg[16503-:32]) - 1:0] fu_data_i;
	// Trace: core/csr_buffer.sv:32:5
	output reg csr_ready_o;
	// Trace: core/csr_buffer.sv:34:5
	input wire csr_valid_i;
	// Trace: core/csr_buffer.sv:36:5
	output wire [CVA6Cfg[17102-:32] - 1:0] csr_result_o;
	// Trace: core/csr_buffer.sv:38:5
	input wire csr_commit_i;
	// Trace: core/csr_buffer.sv:40:5
	output wire [11:0] csr_addr_o;
	// Trace: core/csr_buffer.sv:44:3
	reg [12:0] csr_reg_n;
	reg [12:0] csr_reg_q;
	// Trace: core/csr_buffer.sv:51:3
	assign csr_result_o = fu_data_i[fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))-:((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))) >= (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))) ? ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1)))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0)))) + 1 : ((fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] + 0))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))))) + 1)];
	// Trace: core/csr_buffer.sv:52:3
	assign csr_addr_o = csr_reg_q[12-:12];
	// Trace: core/csr_buffer.sv:55:3
	always @(*) begin : write
		if (_sv2v_0)
			;
		// Trace: core/csr_buffer.sv:56:5
		csr_reg_n = csr_reg_q;
		// Trace: core/csr_buffer.sv:58:5
		csr_ready_o = 1'b1;
		// Trace: core/csr_buffer.sv:60:5
		if ((csr_reg_q[0] || csr_valid_i) && ~csr_commit_i)
			// Trace: core/csr_buffer.sv:60:60
			csr_ready_o = 1'b0;
		if (csr_valid_i) begin
			// Trace: core/csr_buffer.sv:64:7
			csr_reg_n[12-:12] = fu_data_i[(fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] - 12):(fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] + (fu_data_t_fu_data_t_CVA6Cfg[16503-:32] - 1))) - (fu_data_t_fu_data_t_CVA6Cfg[17102-:32] - 1)];
			// Trace: core/csr_buffer.sv:65:7
			csr_reg_n[0] = 1'b1;
		end
		if (csr_commit_i && ~csr_valid_i)
			// Trace: core/csr_buffer.sv:69:7
			csr_reg_n[0] = 1'b0;
		if (flush_i)
			// Trace: core/csr_buffer.sv:72:18
			csr_reg_n[0] = 1'b0;
	end
	// Trace: core/csr_buffer.sv:75:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/csr_buffer.sv:76:5
		if (~rst_ni)
			// Trace: core/csr_buffer.sv:77:7
			csr_reg_q <= 13'h0000;
		else
			// Trace: core/csr_buffer.sv:79:7
			csr_reg_q <= csr_reg_n;
	initial _sv2v_0 = 0;
endmodule
