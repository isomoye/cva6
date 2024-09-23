module AsyncThreePortRam (
	Clk_CI,
	WrEn_SI,
	WrAddr_DI,
	WrData_DI,
	RdAddr_DI_0,
	RdAddr_DI_1,
	RdData_DO_0,
	RdData_DO_1
);
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:23:13
	parameter ADDR_WIDTH = 10;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:24:13
	parameter DATA_DEPTH = 1024;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:25:13
	parameter DATA_WIDTH = 32;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:27:3
	input wire Clk_CI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:30:3
	input wire WrEn_SI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:31:3
	input wire [ADDR_WIDTH - 1:0] WrAddr_DI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:32:3
	input wire [DATA_WIDTH - 1:0] WrData_DI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:35:3
	input wire [ADDR_WIDTH - 1:0] RdAddr_DI_0;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:36:3
	input wire [ADDR_WIDTH - 1:0] RdAddr_DI_1;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:38:3
	output wire [DATA_WIDTH - 1:0] RdData_DO_0;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:39:3
	output wire [DATA_WIDTH - 1:0] RdData_DO_1;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:42:3
	function automatic [DATA_WIDTH - 1:0] sv2v_cast_DD846;
		input reg [DATA_WIDTH - 1:0] inp;
		sv2v_cast_DD846 = inp;
	endfunction
	reg [(DATA_DEPTH * DATA_WIDTH) - 1:0] mem = {DATA_DEPTH {sv2v_cast_DD846(0)}};
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:45:3
	always @(posedge Clk_CI)
		// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:47:5
		if (WrEn_SI)
			// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:48:7
			mem[WrAddr_DI * DATA_WIDTH+:DATA_WIDTH] <= WrData_DI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:53:3
	assign RdData_DO_0 = mem[RdAddr_DI_0 * DATA_WIDTH+:DATA_WIDTH];
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:54:3
	assign RdData_DO_1 = mem[RdAddr_DI_1 * DATA_WIDTH+:DATA_WIDTH];
	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:61:3
	// removed an assertion item
	// assert property (@(posedge Clk_CI) 
	// 	(longint'(2) ** longint'(ADDR_WIDTH)) >= longint'(DATA_DEPTH)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv:63:10
	// 	$error("depth out of bounds");
	// end
endmodule
