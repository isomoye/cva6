module slib_clock_div (
	CLK,
	RST,
	CE,
	Q
);
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:35:35
	parameter RATIO = 4;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:36:2
	input wire CLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:37:2
	input wire RST;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:38:2
	input wire CE;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:39:2
	output wire Q;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:42:1
	// removed localparam type bool_t
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:43:1
	reg iQ;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:44:1
	reg [$clog2(RATIO - 1) - 1:0] iCounter;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:46:1
	always @(posedge CLK or posedge RST)
		// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:48:1
		if (RST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:50:3
			iCounter <= 0;
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:51:5
			iQ <= 1'b0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:55:3
			iQ <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:56:5
			if (CE == 1'b1) begin
				begin
					// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:58:7
					if (iCounter == (RATIO - 1)) begin
						// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:60:11
						iQ <= 1'b1;
						// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:61:13
						iCounter <= 0;
					end
					else
						// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:65:11
						iCounter <= iCounter + 1;
				end
			end
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_clock_div.sv:73:1
	assign Q = iQ;
endmodule
