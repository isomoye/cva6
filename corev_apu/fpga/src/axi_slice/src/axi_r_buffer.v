module axi_r_buffer (
	clk_i,
	rst_ni,
	test_en_i,
	slave_valid_i,
	slave_data_i,
	slave_resp_i,
	slave_user_i,
	slave_id_i,
	slave_last_i,
	slave_ready_o,
	master_valid_o,
	master_data_o,
	master_resp_o,
	master_user_o,
	master_id_o,
	master_last_o,
	master_ready_i
);
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:14:14
	parameter ID_WIDTH = 4;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:15:14
	parameter DATA_WIDTH = 64;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:16:14
	parameter USER_WIDTH = 6;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:17:14
	parameter BUFFER_DEPTH = 8;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:18:14
	parameter STRB_WIDTH = DATA_WIDTH / 8;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:20:4
	input wire clk_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:21:4
	input wire rst_ni;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:22:4
	input wire test_en_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:24:4
	input wire slave_valid_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:25:4
	input wire [DATA_WIDTH - 1:0] slave_data_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:26:4
	input wire [1:0] slave_resp_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:27:4
	input wire [USER_WIDTH - 1:0] slave_user_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:28:4
	input wire [ID_WIDTH - 1:0] slave_id_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:29:4
	input wire slave_last_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:30:4
	output wire slave_ready_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:32:4
	output wire master_valid_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:33:4
	output wire [DATA_WIDTH - 1:0] master_data_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:34:4
	output wire [1:0] master_resp_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:35:4
	output wire [USER_WIDTH - 1:0] master_user_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:36:4
	output wire [ID_WIDTH - 1:0] master_id_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:37:4
	output wire master_last_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:38:4
	input wire master_ready_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:41:4
	wire [((2 + DATA_WIDTH) + USER_WIDTH) + ID_WIDTH:0] s_data_in;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:42:4
	wire [((2 + DATA_WIDTH) + USER_WIDTH) + ID_WIDTH:0] s_data_out;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:45:4
	assign s_data_in = {slave_id_i, slave_user_i, slave_data_i, slave_resp_i, slave_last_i};
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:46:4
	assign {master_id_o, master_user_o, master_data_o, master_resp_o, master_last_o} = s_data_out;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_r_buffer.sv:48:4
	axi_single_slice #(
		.BUFFER_DEPTH(BUFFER_DEPTH),
		.DATA_WIDTH(((3 + DATA_WIDTH) + USER_WIDTH) + ID_WIDTH)
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
