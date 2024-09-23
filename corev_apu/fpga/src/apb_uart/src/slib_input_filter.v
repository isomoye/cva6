module slib_input_filter (
	CLK,
	RST,
	CE,
	D,
	Q
);
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:35:38
	parameter SIZE = 4;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:36:2
	input wire CLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:37:2
	input wire RST;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:38:2
	input wire CE;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:39:2
	input wire D;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:40:2
	output reg Q;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:43:1
	// removed localparam type bool_t
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:45:1
	reg [$clog2(SIZE + 1) - 1:0] iCount;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:47:1
	always @(posedge CLK or posedge RST)
		// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:49:6
		if (RST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:51:11
			iCount <= 0;
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:52:11
			Q <= 1'b0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:56:11
			if (CE == 1'b1) begin
				begin
					// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:58:16
					if ((D == 1'b1) && (iCount != SIZE))
						// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:60:21
						iCount <= iCount + 1;
					else if ((D == 1'b0) && (iCount != 0))
						// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:64:21
						iCount <= iCount - 1;
				end
			end
			if (iCount == SIZE)
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:70:16
				Q <= 1'b1;
			else if (iCount == 0)
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_filter.sv:74:16
				Q <= 1'b0;
		end
endmodule
