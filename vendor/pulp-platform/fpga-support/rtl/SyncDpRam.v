module SyncDpRam (
	Clk_CI,
	Rst_RBI,
	CSelA_SI,
	WrEnA_SI,
	WrDataA_DI,
	AddrA_DI,
	RdDataA_DO,
	CSelB_SI,
	WrEnB_SI,
	WrDataB_DI,
	AddrB_DI,
	RdDataB_DO
);
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:30:13
	parameter ADDR_WIDTH = 10;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:31:13
	parameter DATA_DEPTH = 1024;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:32:13
	parameter DATA_WIDTH = 32;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:33:13
	parameter OUT_REGS = 0;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:34:13
	parameter SIM_INIT = 0;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:38:3
	input wire Clk_CI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:39:3
	input wire Rst_RBI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:41:3
	input wire CSelA_SI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:42:3
	input wire WrEnA_SI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:43:3
	input wire [DATA_WIDTH - 1:0] WrDataA_DI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:44:3
	input wire [ADDR_WIDTH - 1:0] AddrA_DI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:45:3
	output wire [DATA_WIDTH - 1:0] RdDataA_DO;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:47:3
	input wire CSelB_SI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:48:3
	input wire WrEnB_SI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:49:3
	input wire [DATA_WIDTH - 1:0] WrDataB_DI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:50:3
	input wire [ADDR_WIDTH - 1:0] AddrB_DI;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:51:3
	output wire [DATA_WIDTH - 1:0] RdDataB_DO;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:58:3
	reg [DATA_WIDTH - 1:0] RdDataA_DN;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:59:3
	reg [DATA_WIDTH - 1:0] RdDataA_DP;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:60:3
	reg [DATA_WIDTH - 1:0] RdDataB_DN;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:61:3
	reg [DATA_WIDTH - 1:0] RdDataB_DP;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:62:3
	reg [DATA_WIDTH - 1:0] Mem_DP [DATA_DEPTH - 1:0];
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:69:5
	always @(posedge Clk_CI) begin : sv2v_autoblock_1
		// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:71:7
		reg [DATA_WIDTH - 1:0] val;
		// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:72:7
		if ((Rst_RBI == 1'b0) && (SIM_INIT > 0))
			// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:73:9
			begin : sv2v_autoblock_2
				// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:73:13
				reg signed [31:0] k;
				// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:73:13
				for (k = 0; k < DATA_DEPTH; k = k + 1)
					begin
						// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:74:11
						if (SIM_INIT == 1)
							// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:74:27
							val = 1'sb0;
						else if (SIM_INIT == 2)
							randomize(val);
						// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:78:11
						Mem_DP[k] = val;
					end
			end
		else begin
			// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:81:9
			if (CSelA_SI) begin
				begin
					// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:82:11
					if (WrEnA_SI)
						// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:83:13
						Mem_DP[AddrA_DI] <= WrDataA_DI;
					else
						// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:87:13
						RdDataA_DN <= Mem_DP[AddrA_DI];
				end
			end
			if (CSelB_SI) begin
				begin
					// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:92:11
					if (WrEnB_SI)
						// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:93:13
						Mem_DP[AddrB_DI] <= WrDataB_DI;
					else
						// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:97:13
						RdDataB_DN <= Mem_DP[AddrB_DI];
				end
			end
		end
	end
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:141:3
	generate
		if (OUT_REGS > 0) begin : g_outreg
			// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:143:7
			always @(posedge Clk_CI or negedge Rst_RBI)
				// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:144:9
				if (Rst_RBI == 1'b0) begin
					// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:146:11
					RdDataA_DP <= 0;
					// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:147:11
					RdDataB_DP <= 0;
				end
				else begin
					// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:151:11
					RdDataA_DP <= RdDataA_DN;
					// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:152:11
					RdDataB_DP <= RdDataB_DN;
				end
		end
	endgenerate
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:159:3
	generate
		if (OUT_REGS == 0) begin : g_oureg_byp
			// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:161:7
			wire [DATA_WIDTH:1] sv2v_tmp_DF0B1;
			assign sv2v_tmp_DF0B1 = RdDataA_DN;
			always @(*) RdDataA_DP = sv2v_tmp_DF0B1;
			// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:162:7
			wire [DATA_WIDTH:1] sv2v_tmp_8F481;
			assign sv2v_tmp_8F481 = RdDataB_DN;
			always @(*) RdDataB_DP = sv2v_tmp_8F481;
		end
	endgenerate
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:166:3
	assign RdDataA_DO = RdDataA_DP;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:167:3
	assign RdDataB_DO = RdDataB_DP;
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:174:3
	// removed an assertion item
	// assert property (@(posedge Clk_CI) 
	// 	(longint'(2) ** longint'(ADDR_WIDTH)) >= longint'(DATA_DEPTH)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:176:10
	// 	$error("depth out of bounds");
	// end
	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:177:3
	// removed an assertion item
	// assert property (@(posedge Clk_CI) 
	// 	(((CSelA_SI & CSelB_SI) & WrEnA_SI) & WrEnB_SI |-> AddrA_DI != AddrB_DI)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv:179:10
	// 	$error("A and B write to the same address");
	// end
endmodule
