module slib_edge_detect (
	CLK,
	RST,
	D,
	RE,
	FE
);
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_edge_detect.sv:36:2
	input wire CLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_edge_detect.sv:37:2
	input wire RST;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_edge_detect.sv:38:2
	input wire D;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_edge_detect.sv:39:2
	output wire RE;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_edge_detect.sv:40:2
	output wire FE;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_edge_detect.sv:43:1
	// removed localparam type bool_t
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_edge_detect.sv:44:1
	reg iDd;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_edge_detect.sv:46:1
	always @(posedge CLK or posedge RST)
		// Trace: corev_apu/fpga/src/apb_uart/src/slib_edge_detect.sv:48:1
		if (RST == 1'b1)
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_edge_detect.sv:50:3
			iDd <= 1'b0;
		else
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_edge_detect.sv:54:3
			iDd <= D;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_edge_detect.sv:59:1
	assign RE = ((iDd == 1'b0) && (D == 1'b1) ? 1'b1 : 1'b0);
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_edge_detect.sv:60:1
	assign FE = ((iDd == 1'b1) && (D == 1'b0) ? 1'b1 : 1'b0);
endmodule
