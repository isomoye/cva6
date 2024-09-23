module slib_fifo (
	CLK,
	RST,
	CLEAR,
	WRITE,
	READ,
	D,
	Q,
	EMPTY,
	FULL,
	USAGE
);
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:35:31
	parameter WIDTH = 8;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:35:52
	parameter SIZE_E = 6;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:36:2
	input wire CLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:37:2
	input wire RST;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:38:2
	input wire CLEAR;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:39:2
	input wire WRITE;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:40:2
	input wire READ;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:41:2
	input wire [WIDTH - 1:0] D;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:42:2
	output reg [WIDTH - 1:0] Q;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:43:2
	output wire EMPTY;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:44:2
	output wire FULL;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:45:2
	output wire [SIZE_E - 1:0] USAGE;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:48:1
	// removed localparam type bool_t
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:49:1
	reg iEMPTY;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:50:1
	reg iFULL;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:51:1
	reg [SIZE_E:0] iWRAddr;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:52:1
	reg [SIZE_E:0] iRDAddr;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:53:1
	reg [SIZE_E:0] init;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:54:1
	reg [SIZE_E - 1:0] iUSAGE;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:55:1
	reg [WIDTH - 1:0] iFIFOMem [0:(2 ** SIZE_E) - 1];
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:57:1
	wire [1:1] sv2v_tmp_D686B;
	assign sv2v_tmp_D686B = ((iRDAddr[SIZE_E - 1:0] == iWRAddr[SIZE_E - 1:0]) && (iRDAddr[SIZE_E] != iWRAddr[SIZE_E]) ? 1'b1 : 1'b0);
	always @(*) iFULL = sv2v_tmp_D686B;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:59:1
	always @(posedge CLK or posedge RST)
		// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:61:1
		if (RST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:64:1
			iWRAddr <= 0;
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:66:1
			iRDAddr <= 0;
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:67:1
			iEMPTY <= 1'b1;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:71:3
			if ((WRITE == 1'b1) && (iFULL == 1'b0))
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:73:7
				iWRAddr <= iWRAddr + 1;
			if ((READ == 1'b1) && (iEMPTY == 1'b0))
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:78:7
				iRDAddr <= iRDAddr + 1;
			if (CLEAR == 1'b1) begin
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:84:1
				iWRAddr <= 0;
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:86:1
				iRDAddr <= 0;
			end
			if (iRDAddr == iWRAddr)
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:91:7
				iEMPTY <= 1'b1;
			else
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:95:7
				iEMPTY <= 1'b0;
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:102:1
	always @(posedge CLK or posedge RST)
		// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:104:1
		if (RST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:107:6
			for (init = 0; init < (2 ** SIZE_E); init = init + 1)
				begin
					// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:108:8
					iFIFOMem[init[SIZE_E - 1:0]] <= 0;
				end
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:109:6
			Q <= 0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:113:3
			if ((WRITE == 1'b1) && (iFULL == 1'b0))
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:115:8
				iFIFOMem[iWRAddr[SIZE_E - 1:0]] <= D;
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:118:1
			Q <= iFIFOMem[iRDAddr[SIZE_E - 1:0]];
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:124:1
	always @(posedge CLK or posedge RST)
		// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:126:1
		if (RST == 1'b1)
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:129:1
			iUSAGE <= 0;
		else
			// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:133:3
			if (CLEAR == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:136:1
				iUSAGE <= 0;
			else begin
				// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:140:7
				if (((READ == 1'b0) && (WRITE == 1'b1)) && (iFULL == 1'b0))
					// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:142:11
					iUSAGE <= iUSAGE + 1;
				if (((WRITE == 1'b0) && (READ == 1'b1)) && (iEMPTY == 1'b0))
					// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:147:11
					iUSAGE <= iUSAGE - 1;
			end
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:155:1
	assign EMPTY = iEMPTY;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:156:1
	assign FULL = iFULL;
	// Trace: corev_apu/fpga/src/apb_uart/src/slib_fifo.sv:157:1
	assign USAGE = iUSAGE;
endmodule
