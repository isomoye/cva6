module cvxif_compressed_if_driver_4B483_D0D6F (
	clk_i,
	rst_ni,
	hart_id_i,
	is_compressed_i,
	is_illegal_i,
	instruction_i,
	is_compressed_o,
	is_illegal_o,
	instruction_o,
	stall_i,
	stall_o,
	compressed_ready_i,
	compressed_resp_i,
	compressed_valid_o,
	compressed_req_o
);
	// removed localparam type x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg_type
	parameter [17102:0] x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// Trace: core/cvxif_compressed_if_driver.sv:11:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cvxif_compressed_if_driver.sv:12:20
	// removed localparam type x_compressed_req_t
	// Trace: core/cvxif_compressed_if_driver.sv:13:20
	// removed localparam type x_compressed_resp_t
	// Trace: core/cvxif_compressed_if_driver.sv:16:5
	input wire clk_i;
	// Trace: core/cvxif_compressed_if_driver.sv:18:5
	input wire rst_ni;
	// Trace: core/cvxif_compressed_if_driver.sv:20:5
	input wire [CVA6Cfg[17102-:32] - 1:0] hart_id_i;
	// Trace: core/cvxif_compressed_if_driver.sv:22:5
	input wire [CVA6Cfg[16841-:32] - 1:0] is_compressed_i;
	// Trace: core/cvxif_compressed_if_driver.sv:23:5
	input wire [CVA6Cfg[16841-:32] - 1:0] is_illegal_i;
	// Trace: core/cvxif_compressed_if_driver.sv:24:5
	input wire [(CVA6Cfg[16841-:32] * 32) - 1:0] instruction_i;
	// Trace: core/cvxif_compressed_if_driver.sv:26:5
	output reg [CVA6Cfg[16841-:32] - 1:0] is_compressed_o;
	// Trace: core/cvxif_compressed_if_driver.sv:27:5
	output reg [CVA6Cfg[16841-:32] - 1:0] is_illegal_o;
	// Trace: core/cvxif_compressed_if_driver.sv:28:5
	output reg [(CVA6Cfg[16841-:32] * 32) - 1:0] instruction_o;
	// Trace: core/cvxif_compressed_if_driver.sv:29:5
	input wire stall_i;
	// Trace: core/cvxif_compressed_if_driver.sv:30:5
	output reg stall_o;
	// Trace: core/cvxif_compressed_if_driver.sv:32:5
	input wire compressed_ready_i;
	// Trace: core/cvxif_compressed_if_driver.sv:33:5
	input wire [32:0] compressed_resp_i;
	// Trace: core/cvxif_compressed_if_driver.sv:34:5
	output reg compressed_valid_o;
	// Trace: core/cvxif_compressed_if_driver.sv:35:5
	output reg [(16 + x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32]) - 1:0] compressed_req_o;
	// Trace: core/cvxif_compressed_if_driver.sv:39:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvxif_compressed_if_driver.sv:40:5
		is_illegal_o = is_illegal_i;
		// Trace: core/cvxif_compressed_if_driver.sv:41:5
		instruction_o = instruction_i;
		// Trace: core/cvxif_compressed_if_driver.sv:42:5
		is_compressed_o = is_compressed_i;
		// Trace: core/cvxif_compressed_if_driver.sv:43:5
		compressed_valid_o = 1'b0;
		// Trace: core/cvxif_compressed_if_driver.sv:44:5
		compressed_req_o[x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15-:((x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15) >= (x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 0) ? ((x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15) - (x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 0)) + 1 : ((x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 0) - (x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15)) + 1)] = 1'sb0;
		// Trace: core/cvxif_compressed_if_driver.sv:45:5
		compressed_req_o[x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] - 1-:x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32]] = hart_id_i;
		// Trace: core/cvxif_compressed_if_driver.sv:46:5
		stall_o = stall_i;
		// Trace: core/cvxif_compressed_if_driver.sv:47:5
		if (is_illegal_i[0]) begin
			// Trace: core/cvxif_compressed_if_driver.sv:48:7
			compressed_valid_o = is_illegal_i[0];
			// Trace: core/cvxif_compressed_if_driver.sv:49:7
			compressed_req_o[x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15-:((x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15) >= (x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 0) ? ((x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15) - (x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 0)) + 1 : ((x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 0) - (x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15)) + 1)] = instruction_i[15-:16];
			// Trace: core/cvxif_compressed_if_driver.sv:50:7
			is_illegal_o[0] = ~compressed_resp_i[0];
			// Trace: core/cvxif_compressed_if_driver.sv:51:7
			instruction_o[0+:32] = (compressed_resp_i[0] ? compressed_resp_i[32-:32] : instruction_i[0+:32]);
			// Trace: core/cvxif_compressed_if_driver.sv:52:7
			is_compressed_o[0] = (compressed_resp_i[0] ? 1'b0 : is_compressed_i[0]);
			// Trace: core/cvxif_compressed_if_driver.sv:53:7
			if (~stall_i) begin
				begin
					// Trace: core/cvxif_compressed_if_driver.sv:56:9
					if (CVA6Cfg[16874])
						// Trace: core/cvxif_compressed_if_driver.sv:57:11
						stall_o = is_illegal_i[1];
					else
						// Trace: core/cvxif_compressed_if_driver.sv:59:11
						stall_o = compressed_valid_o && ~compressed_ready_i;
				end
			end
		end
		if (CVA6Cfg[16874]) begin
			begin
				// Trace: core/cvxif_compressed_if_driver.sv:64:7
				if (~is_illegal_i[0] && is_illegal_i[1]) begin
					// Trace: core/cvxif_compressed_if_driver.sv:65:9
					compressed_valid_o = is_illegal_i[1];
					// Trace: core/cvxif_compressed_if_driver.sv:66:9
					compressed_req_o[x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15-:((x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15) >= (x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 0) ? ((x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15) - (x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 0)) + 1 : ((x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 0) - (x_compressed_req_t_x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15)) + 1)] = instruction_i[47-:16];
					// Trace: core/cvxif_compressed_if_driver.sv:67:9
					is_illegal_o[1] = ~compressed_resp_i[0];
					// Trace: core/cvxif_compressed_if_driver.sv:68:9
					instruction_o[32+:32] = (compressed_resp_i[0] ? compressed_resp_i[32-:32] : instruction_i[32+:32]);
					// Trace: core/cvxif_compressed_if_driver.sv:69:9
					is_compressed_o[1] = (compressed_resp_i[0] ? 1'b0 : is_compressed_i[1]);
				end
			end
		end
	end
	initial _sv2v_0 = 0;
endmodule
