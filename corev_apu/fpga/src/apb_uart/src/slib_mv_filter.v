module slib_mv_filter (
	CLK,
	RST,
	SAMPLE,
	CLEAR,
	D,
	Q
);
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:35:35
	parameter WIDTH = 4;
	parameter THRESHOLD = 10;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:36:2
	input wire CLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:37:2
	input wire RST;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:38:2
	input wire SAMPLE;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:39:2
	input wire CLEAR;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:40:2
	input wire D;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:41:2
	output wire Q;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:44:1
	// removed localparam type bool_t
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:45:1
	reg [WIDTH:0] iCounter;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:46:1
	reg iQ;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:48:1
	always @(posedge CLK or posedge RST)
		if (RST) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:52:8
			iCounter <= 0;
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:53:8
			iQ <= 1'b0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:57:8
			if (iCounter >= THRESHOLD)
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:59:13
				iQ <= 1'b1;
			else
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:63:13
				if ((SAMPLE == 1'b1) && (D == 1'b1))
					// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:65:18
					iCounter <= iCounter + 1;
			if (CLEAR == 1'b1) begin
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:71:13
				iCounter <= 0;
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:72:13
				iQ <= 1'b0;
			end
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_mv_filter.sv:76:1
	assign Q = iQ;
endmodule
