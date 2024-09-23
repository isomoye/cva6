module uart_interrupt (
	CLK,
	RST,
	IER,
	LSR,
	THI,
	RDA,
	CTI,
	AFE,
	MSR,
	IIR,
	INT
);
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:36:2
	input wire CLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:37:2
	input wire RST;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:38:2
	input wire [3:0] IER;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:39:2
	input wire [4:0] LSR;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:40:2
	input wire THI;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:41:2
	input wire RDA;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:42:2
	input wire CTI;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:43:2
	input wire AFE;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:44:2
	input wire [3:0] MSR;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:45:2
	output wire [3:0] IIR;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:46:2
	output wire INT;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:49:1
	// removed localparam type bool_t
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:50:1
	reg iRLSInterrupt;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:51:1
	reg iRDAInterrupt;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:52:1
	reg iCTIInterrupt;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:53:1
	reg iTHRInterrupt;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:54:1
	reg iMSRInterrupt;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:55:1
	reg [3:0] iIIR;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:56:1
	wire [1:1] sv2v_tmp_1A359;
	assign sv2v_tmp_1A359 = IER[2] && (((LSR[1] | LSR[2]) | LSR[3]) | LSR[4]);
	always @(*) iRLSInterrupt = sv2v_tmp_1A359;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:57:1
	wire [1:1] sv2v_tmp_1D7D3;
	assign sv2v_tmp_1D7D3 = IER[0] && RDA;
	always @(*) iRDAInterrupt = sv2v_tmp_1D7D3;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:58:1
	wire [1:1] sv2v_tmp_16D03;
	assign sv2v_tmp_16D03 = IER[0] && CTI;
	always @(*) iCTIInterrupt = sv2v_tmp_16D03;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:59:1
	wire [1:1] sv2v_tmp_815D9;
	assign sv2v_tmp_815D9 = IER[1] && THI;
	always @(*) iTHRInterrupt = sv2v_tmp_815D9;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:60:1
	wire [1:1] sv2v_tmp_88D6A;
	assign sv2v_tmp_88D6A = IER[3] && ((((MSR[0] && ~AFE) | MSR[1]) | MSR[2]) | MSR[3]);
	always @(*) iMSRInterrupt = sv2v_tmp_88D6A;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:62:1
	always @(posedge CLK or posedge RST)
		if (RST == 1'b1)
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:65:8
			iIIR <= 4'b0001;
		else
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:69:8
			if (iRLSInterrupt == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:71:13
				iIIR <= 4'b0110;
			else if (iCTIInterrupt == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:75:13
				iIIR <= 4'b1100;
			else if (iRDAInterrupt == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:79:13
				iIIR <= 4'b0100;
			else if (iTHRInterrupt == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:83:13
				iIIR <= 4'b0010;
			else if (iMSRInterrupt == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:87:13
				iIIR <= 4'b0000;
			else
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:91:13
				iIIR <= 4'b0001;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:95:1
	assign IIR = iIIR;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_interrupt.sv:96:1
	assign INT = ~iIIR[0];
endmodule
