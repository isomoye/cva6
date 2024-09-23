module axi_b_buffer (
	clk_i,
	rst_ni,
	test_en_i,
	slave_valid_i,
	slave_resp_i,
	slave_id_i,
	slave_user_i,
	slave_ready_o,
	master_valid_o,
	master_resp_o,
	master_id_o,
	master_user_o,
	master_ready_i
);
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:14:15
	parameter signed [31:0] ID_WIDTH = -1;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:15:15
	parameter signed [31:0] USER_WIDTH = -1;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:16:15
	parameter signed [31:0] BUFFER_DEPTH = -1;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:18:4
	input wire clk_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:19:4
	input wire rst_ni;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:20:4
	input wire test_en_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:22:4
	input wire slave_valid_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:23:4
	input wire [1:0] slave_resp_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:24:4
	input wire [ID_WIDTH - 1:0] slave_id_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:25:4
	input wire [USER_WIDTH - 1:0] slave_user_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:26:4
	output wire slave_ready_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:28:4
	output wire master_valid_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:29:4
	output wire [1:0] master_resp_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:30:4
	output wire [ID_WIDTH - 1:0] master_id_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:31:4
	output wire [USER_WIDTH - 1:0] master_user_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:32:4
	input wire master_ready_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:35:5
	wire [((2 + USER_WIDTH) + ID_WIDTH) - 1:0] s_data_in;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:36:5
	wire [((2 + USER_WIDTH) + ID_WIDTH) - 1:0] s_data_out;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:38:5
	assign s_data_in = {slave_id_i, slave_user_i, slave_resp_i};
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:39:5
	assign {master_id_o, master_user_o, master_resp_o} = s_data_out;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_b_buffer.sv:42:5
	axi_single_slice #(
		.BUFFER_DEPTH(BUFFER_DEPTH),
		.DATA_WIDTH((2 + USER_WIDTH) + ID_WIDTH)
	) i_axi_single_slice(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.testmode_i(test_en_i),
		.valid_i(slave_valid_i),
		.ready_o(slave_ready_o),
		.data_i(s_data_in),
		.ready_i(master_ready_i),
		.valid_o(master_valid_o),
		.data_o(s_data_out)
	);
endmodule
