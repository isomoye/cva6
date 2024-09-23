module axi_single_slice (
	clk_i,
	rst_ni,
	testmode_i,
	valid_i,
	ready_o,
	data_i,
	ready_i,
	valid_o,
	data_o
);
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:13:15
	parameter signed [31:0] BUFFER_DEPTH = -1;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:14:15
	parameter signed [31:0] DATA_WIDTH = -1;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:16:5
	input wire clk_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:17:5
	input wire rst_ni;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:18:5
	input wire testmode_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:19:5
	input wire valid_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:20:5
	output wire ready_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:21:5
	input wire [DATA_WIDTH - 1:0] data_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:23:5
	input wire ready_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:24:5
	output wire valid_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:25:5
	output wire [DATA_WIDTH - 1:0] data_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:28:5
	wire full;
	wire empty;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:30:5
	assign ready_o = ~full;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:31:5
	assign valid_o = ~empty;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_single_slice.sv:33:5
	fifo #(
		.FALL_THROUGH(1'b0),
		.DATA_WIDTH(DATA_WIDTH),
		.DEPTH(BUFFER_DEPTH)
	) i_fifo(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(1'b0),
		.threshold_o(),
		.testmode_i(testmode_i),
		.full_o(full),
		.empty_o(empty),
		.data_i(data_i),
		.push_i(valid_i & ready_o),
		.data_o(data_o),
		.pop_i(ready_i & valid_o)
	);
endmodule
