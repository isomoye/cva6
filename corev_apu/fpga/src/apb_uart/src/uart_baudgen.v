module uart_baudgen (
	CLK,
	RST,
	CE,
	CLEAR,
	DIVIDER,
	BAUDTICK
);
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:36:2
	input wire CLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:37:2
	input wire RST;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:38:2
	input wire CE;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:39:2
	input wire CLEAR;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:40:2
	input wire [15:0] DIVIDER;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:41:2
	output reg BAUDTICK;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:44:1
	// removed localparam type bool_t
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:45:1
	reg [15:0] iCounter;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:47:1
	always @(posedge CLK or posedge RST)
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:49:1
		if (RST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:52:1
			iCounter <= 0;
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:53:1
			BAUDTICK <= 1'b0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:57:3
			if (CLEAR == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:60:1
				iCounter <= 0;
			else if (CE == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:64:7
				iCounter <= iCounter - 1;
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:66:7
			BAUDTICK <= 1'b0;
			if (iCounter == {16 {1'sb0}}) begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:70:1
				iCounter <= $unsigned(DIVIDER) - 1;
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_baudgen.sv:71:1
				BAUDTICK <= 1'b1;
			end
		end
endmodule
