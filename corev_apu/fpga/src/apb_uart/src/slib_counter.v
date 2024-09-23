module slib_counter (
	CLK,
	RST,
	CLEAR,
	LOAD,
	ENABLE,
	DOWN,
	D,
	Q,
	OVERFLOW
);
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:35:34
	parameter WIDTH = 4;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:36:2
	input wire CLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:37:2
	input wire RST;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:38:2
	input wire CLEAR;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:39:2
	input wire LOAD;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:40:2
	input wire ENABLE;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:41:2
	input wire DOWN;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:42:2
	input wire [WIDTH - 1:0] D;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:43:2
	output wire [WIDTH - 1:0] Q;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:44:2
	output wire OVERFLOW;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:47:1
	// removed localparam type bool_t
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:48:1
	reg [WIDTH:0] iCounter;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:50:1
	always @(posedge CLK or posedge RST)
		if (RST)
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:54:6
			iCounter <= 0;
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:58:6
			if (CLEAR == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:61:11
				iCounter <= 0;
			else if (LOAD == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:65:11
				iCounter <= $unsigned({1'b0, D});
			else if (ENABLE == 1'b1) begin
				begin
					// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:70:11
					if (DOWN == 1'b0)
						// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:72:16
						iCounter <= iCounter + 1;
					else
						// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:76:16
						iCounter <= iCounter - 1;
				end
			end
			if (iCounter[WIDTH] == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:82:11
				iCounter[WIDTH] <= 0;
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:86:1
	assign Q = iCounter[WIDTH - 1:0];
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_counter.sv:87:1
	assign OVERFLOW = iCounter[WIDTH];
endmodule
