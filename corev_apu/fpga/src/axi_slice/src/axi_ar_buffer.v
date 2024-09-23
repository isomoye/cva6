module axi_ar_buffer (
	clk_i,
	rst_ni,
	test_en_i,
	slave_valid_i,
	slave_addr_i,
	slave_prot_i,
	slave_region_i,
	slave_len_i,
	slave_size_i,
	slave_burst_i,
	slave_lock_i,
	slave_cache_i,
	slave_qos_i,
	slave_id_i,
	slave_user_i,
	slave_ready_o,
	master_valid_o,
	master_addr_o,
	master_prot_o,
	master_region_o,
	master_len_o,
	master_size_o,
	master_burst_o,
	master_lock_o,
	master_cache_o,
	master_qos_o,
	master_id_o,
	master_user_o,
	master_ready_i
);
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:14:15
	parameter signed [31:0] ID_WIDTH = -1;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:15:15
	parameter signed [31:0] ADDR_WIDTH = -1;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:16:15
	parameter signed [31:0] USER_WIDTH = -1;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:17:15
	parameter signed [31:0] BUFFER_DEPTH = -1;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:20:5
	input wire clk_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:21:5
	input wire rst_ni;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:22:5
	input wire test_en_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:24:5
	input wire slave_valid_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:25:5
	input wire [ADDR_WIDTH - 1:0] slave_addr_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:26:5
	input wire [2:0] slave_prot_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:27:5
	input wire [3:0] slave_region_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:28:5
	input wire [7:0] slave_len_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:29:5
	input wire [2:0] slave_size_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:30:5
	input wire [1:0] slave_burst_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:31:5
	input wire slave_lock_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:32:5
	input wire [3:0] slave_cache_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:33:5
	input wire [3:0] slave_qos_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:34:5
	input wire [ID_WIDTH - 1:0] slave_id_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:35:5
	input wire [USER_WIDTH - 1:0] slave_user_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:36:5
	output wire slave_ready_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:38:5
	output wire master_valid_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:39:5
	output wire [ADDR_WIDTH - 1:0] master_addr_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:40:5
	output wire [2:0] master_prot_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:41:5
	output wire [3:0] master_region_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:42:5
	output wire [7:0] master_len_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:43:5
	output wire [2:0] master_size_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:44:5
	output wire [1:0] master_burst_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:45:5
	output wire master_lock_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:46:5
	output wire [3:0] master_cache_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:47:5
	output wire [3:0] master_qos_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:48:5
	output wire [ID_WIDTH - 1:0] master_id_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:49:5
	output wire [USER_WIDTH - 1:0] master_user_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:50:5
	input wire master_ready_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:53:4
	wire [(((29 + ADDR_WIDTH) + USER_WIDTH) + ID_WIDTH) - 1:0] s_data_in;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:54:4
	wire [(((29 + ADDR_WIDTH) + USER_WIDTH) + ID_WIDTH) - 1:0] s_data_out;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:56:4
	assign s_data_in = {slave_cache_i, slave_prot_i, slave_lock_i, slave_burst_i, slave_size_i, slave_len_i, slave_qos_i, slave_region_i, slave_addr_i, slave_user_i, slave_id_i};
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:57:4
	assign {master_cache_o, master_prot_o, master_lock_o, master_burst_o, master_size_o, master_len_o, master_qos_o, master_region_o, master_addr_o, master_user_o, master_id_o} = s_data_out;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_ar_buffer.sv:61:3
	axi_single_slice #(
		.BUFFER_DEPTH(BUFFER_DEPTH),
		.DATA_WIDTH(((29 + ADDR_WIDTH) + USER_WIDTH) + ID_WIDTH)
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
