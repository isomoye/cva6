module AsyncDpRam (
	Clk_CI,
	WrEn_SI,
	WrAddr_DI,
	WrData_DI,
	RdAddr_DI,
	RdData_DO
);
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:23:13
	parameter ADDR_WIDTH = 10;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:24:13
	parameter DATA_DEPTH = 1024;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:25:13
	parameter DATA_WIDTH = 32;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:27:3
	input wire Clk_CI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:30:3
	input wire WrEn_SI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:31:3
	input wire [ADDR_WIDTH - 1:0] WrAddr_DI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:32:3
	input wire [DATA_WIDTH - 1:0] WrData_DI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:35:3
	input wire [ADDR_WIDTH - 1:0] RdAddr_DI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:36:3
	output wire [DATA_WIDTH - 1:0] RdData_DO;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:39:3
	function automatic [DATA_WIDTH - 1:0] sv2v_cast_DD846;
		input reg [DATA_WIDTH - 1:0] inp;
		sv2v_cast_DD846 = inp;
	endfunction
	reg [(DATA_DEPTH * DATA_WIDTH) - 1:0] mem = {DATA_DEPTH {sv2v_cast_DD846(0)}};
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:42:3
	always @(posedge Clk_CI)
		// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:44:5
		if (WrEn_SI)
			// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:45:7
			mem[WrAddr_DI * DATA_WIDTH+:DATA_WIDTH] <= WrData_DI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:50:3
	assign RdData_DO = mem[RdAddr_DI * DATA_WIDTH+:DATA_WIDTH];
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:57:3
	// removed an assertion item
	// assert property (@(posedge Clk_CI) 
	// 	(longint'(2) ** longint'(ADDR_WIDTH)) >= longint'(DATA_DEPTH)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv:59:10
	// 	$error("depth out of bounds");
	// end
endmodule
