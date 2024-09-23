module axi_w_buffer (
	clk_i,
	rst_ni,
	test_en_i,
	slave_valid_i,
	slave_data_i,
	slave_strb_i,
	slave_user_i,
	slave_last_i,
	slave_ready_o,
	master_valid_o,
	master_data_o,
	master_strb_o,
	master_user_o,
	master_last_o,
	master_ready_i
);
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:14:15
	parameter signed [31:0] DATA_WIDTH = -1;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:15:15
	parameter signed [31:0] USER_WIDTH = -1;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:16:15
	parameter signed [31:0] BUFFER_DEPTH = -1;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:17:15
	parameter signed [31:0] STRB_WIDTH = DATA_WIDTH / 8;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:19:5
	input wire clk_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:20:5
	input wire rst_ni;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:21:5
	input wire test_en_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:23:5
	input wire slave_valid_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:24:5
	input wire [DATA_WIDTH - 1:0] slave_data_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:25:5
	input wire [STRB_WIDTH - 1:0] slave_strb_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:26:5
	input wire [USER_WIDTH - 1:0] slave_user_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:27:5
	input wire slave_last_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:28:5
	output wire slave_ready_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:30:5
	output wire master_valid_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:31:5
	output wire [DATA_WIDTH - 1:0] master_data_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:32:5
	output wire [STRB_WIDTH - 1:0] master_strb_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:33:5
	output wire [USER_WIDTH - 1:0] master_user_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:34:5
	output wire master_last_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:35:5
	input wire master_ready_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:38:5
	wire [(DATA_WIDTH + STRB_WIDTH) + USER_WIDTH:0] s_data_in;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:39:5
	wire [(DATA_WIDTH + STRB_WIDTH) + USER_WIDTH:0] s_data_out;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:41:5
	assign s_data_in = {slave_user_i, slave_strb_i, slave_data_i, slave_last_i};
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:42:5
	assign {master_user_o, master_strb_o, master_data_o, master_last_o} = s_data_out;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_w_buffer.sv:44:5
	axi_single_slice #(
		.BUFFER_DEPTH(BUFFER_DEPTH),
		.DATA_WIDTH(((1 + DATA_WIDTH) + STRB_WIDTH) + USER_WIDTH)
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
