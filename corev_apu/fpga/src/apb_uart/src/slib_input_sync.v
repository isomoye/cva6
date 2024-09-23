module slib_input_sync (
	CLK,
	RST,
	D,
	Q
);
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_sync.sv:36:2
	input wire CLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_sync.sv:37:2
	input wire RST;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_sync.sv:38:2
	input wire D;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_sync.sv:39:2
	output wire Q;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_sync.sv:42:1
	// removed localparam type bool_t
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_sync.sv:43:1
	reg [1:0] iD;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_sync.sv:45:1
	always @(posedge CLK or posedge RST)
		// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_sync.sv:47:6
		if (RST == 1'b1)
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_sync.sv:50:11
			iD <= 0;
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_sync.sv:54:11
			iD[0] <= D;
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_sync.sv:55:11
			iD[1] <= iD[0];
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_input_sync.sv:59:1
	assign Q = iD[1];
endmodule
