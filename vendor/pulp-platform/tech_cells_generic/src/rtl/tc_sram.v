module tc_sram (
	clk_i,
	rst_ni,
	req_i,
	we_i,
	addr_i,
	wdata_i,
	be_i,
	rdata_o
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:57:13
	parameter [31:0] NumWords = 32'd1024;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:58:13
	parameter [31:0] DataWidth = 32'd128;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:59:13
	parameter [31:0] ByteWidth = 32'd8;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:60:13
	parameter [31:0] NumPorts = 32'd2;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:61:13
	parameter [31:0] Latency = 32'd1;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:62:26
	parameter SimInit = "none";
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:63:13
	parameter [0:0] PrintSimCfg = 1'b0;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:64:26
	parameter ImplKey = "none";
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:66:13
	parameter [31:0] AddrWidth = (NumWords > 32'd1 ? $clog2(NumWords) : 32'd1);
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:67:13
	parameter [31:0] BeWidth = ((DataWidth + ByteWidth) - 32'd1) / ByteWidth;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:68:26
	// removed localparam type addr_t
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:69:26
	// removed localparam type data_t
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:70:26
	// removed localparam type be_t
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:72:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:73:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:75:3
	input wire [NumPorts - 1:0] req_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:76:3
	input wire [NumPorts - 1:0] we_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:77:3
	input wire [(NumPorts * AddrWidth) - 1:0] addr_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:78:3
	input wire [(NumPorts * DataWidth) - 1:0] wdata_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:79:3
	input wire [(NumPorts * BeWidth) - 1:0] be_i;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:81:3
	output reg [(NumPorts * DataWidth) - 1:0] rdata_o;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:85:3
	reg [DataWidth - 1:0] sram [NumWords - 1:0];
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:87:3
	reg [(NumPorts * AddrWidth) - 1:0] r_addr_q;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:90:3
	reg [DataWidth - 1:0] init_val [NumWords - 1:0];
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:91:3
	initial begin : proc_sram_init
		// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:92:5
		begin : sv2v_autoblock_1
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:92:10
			reg [31:0] i;
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:92:10
			for (i = 0; i < NumWords; i = i + 1)
				begin
					// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:93:7
					case (SimInit)
						"zeros":
							// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:94:19
							init_val[i] = {DataWidth {1'b0}};
						"ones":
							// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:95:19
							init_val[i] = {DataWidth {1'b1}};
						"random":
							// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:96:19
							init_val[i] = {DataWidth {$urandom()}};
						default:
							// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:97:19
							init_val[i] = {DataWidth {1'bx}};
					endcase
				end
		end
	end
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:108:3
	reg [((NumPorts * Latency) * DataWidth) - 1:0] rdata_q;
	reg [((NumPorts * Latency) * DataWidth) - 1:0] rdata_d;
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:109:3
	generate
		if (Latency == 32'd0) begin : gen_no_read_lat
			genvar _gv_i_83;
			for (_gv_i_83 = 0; _gv_i_83 < NumPorts; _gv_i_83 = _gv_i_83 + 1) begin : gen_port
				localparam i = _gv_i_83;
				// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:111:7
				wire [DataWidth * 1:1] sv2v_tmp_8E8A4;
				assign sv2v_tmp_8E8A4 = (req_i[i] && !we_i[i] ? sram[addr_i[i * AddrWidth+:AddrWidth]] : sram[r_addr_q[i * AddrWidth+:AddrWidth]]);
				always @(*) rdata_o[i * DataWidth+:DataWidth] = sv2v_tmp_8E8A4;
			end
		end
		else begin : gen_read_lat
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:115:5
			always @(*) begin
				if (_sv2v_0)
					;
				// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:116:7
				begin : sv2v_autoblock_2
					// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:116:12
					reg [31:0] i;
					// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:116:12
					for (i = 0; i < NumPorts; i = i + 1)
						begin
							// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:117:9
							rdata_o[i * DataWidth+:DataWidth] = rdata_q[(i * Latency) * DataWidth+:DataWidth];
							// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:118:9
							begin : sv2v_autoblock_3
								// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:118:14
								reg [31:0] j;
								// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:118:14
								for (j = 0; j < (Latency - 1); j = j + 1)
									begin
										// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:119:11
										rdata_d[((i * Latency) + j) * DataWidth+:DataWidth] = rdata_q[((i * Latency) + (j + 1)) * DataWidth+:DataWidth];
									end
							end
							// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:121:9
							rdata_d[((i * Latency) + (Latency - 1)) * DataWidth+:DataWidth] = (req_i[i] && !we_i[i] ? sram[addr_i[i * AddrWidth+:AddrWidth]] : sram[r_addr_q[i * AddrWidth+:AddrWidth]]);
						end
				end
			end
		end
	endgenerate
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:128:3
	generate
		if (SimInit == "none") begin : genblk2
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:130:5
			always @(posedge clk_i or negedge rst_ni)
				// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:131:7
				if (!rst_ni)
					// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:132:9
					begin : sv2v_autoblock_4
						// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:132:14
						reg signed [31:0] i;
						// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:132:14
						for (i = 0; i < NumPorts; i = i + 1)
							begin
								// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:133:11
								r_addr_q[i * AddrWidth+:AddrWidth] <= {AddrWidth {1'b0}};
							end
					end
				else begin
					// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:137:9
					begin : sv2v_autoblock_5
						// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:137:14
						reg [31:0] i;
						// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:137:14
						for (i = 0; i < NumPorts; i = i + 1)
							begin
								// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:138:11
								if (Latency != 0)
									// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:139:13
									begin : sv2v_autoblock_6
										// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:139:18
										reg [31:0] j;
										// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:139:18
										for (j = 0; j < Latency; j = j + 1)
											begin
												// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:140:15
												rdata_q[((i * Latency) + j) * DataWidth+:DataWidth] <= rdata_d[((i * Latency) + j) * DataWidth+:DataWidth];
											end
									end
							end
					end
					begin : sv2v_autoblock_7
						// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:145:14
						reg [31:0] i;
						// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:145:14
						for (i = 0; i < NumPorts; i = i + 1)
							begin
								// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:146:11
								if (req_i[i]) begin
									begin
										// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:147:13
										if (we_i[i])
											// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:149:15
											begin : sv2v_autoblock_8
												// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:149:20
												reg [31:0] j;
												// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:149:20
												for (j = 0; j < BeWidth; j = j + 1)
													begin
														// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:150:17
														if (be_i[(i * BeWidth) + j])
															// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:151:19
															sram[addr_i[i * AddrWidth+:AddrWidth]][j * ByteWidth+:ByteWidth] <= wdata_i[(i * DataWidth) + (j * ByteWidth)+:ByteWidth];
													end
											end
										else
											// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:156:15
											r_addr_q[i * AddrWidth+:AddrWidth] <= addr_i[i * AddrWidth+:AddrWidth];
									end
								end
							end
					end
				end
		end
		else begin : genblk2
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:164:5
			always @(posedge clk_i or negedge rst_ni)
				// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:165:7
				if (!rst_ni) begin
					// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:167:9
					begin : sv2v_autoblock_9
						integer i;
						for (i = NumWords - 1; i >= 0; i = i - 1)
							begin
								// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:168:11
								sram[i] <= init_val[i];
							end
					end
					begin : sv2v_autoblock_10
						// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:170:14
						reg signed [31:0] i;
						// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:170:14
						for (i = 0; i < NumPorts; i = i + 1)
							begin
								// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:171:11
								r_addr_q[i * AddrWidth+:AddrWidth] <= {AddrWidth {1'b0}};
								// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:173:11
								if (Latency != 32'd0)
									// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:174:13
									begin : sv2v_autoblock_11
										// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:174:18
										reg [31:0] j;
										// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:174:18
										for (j = 0; j < Latency; j = j + 1)
											begin
												// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:175:15
												rdata_q[((i * Latency) + j) * DataWidth+:DataWidth] <= init_val[{AddrWidth {1'b0}}];
											end
									end
							end
					end
				end
				else begin
					// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:181:9
					begin : sv2v_autoblock_12
						// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:181:14
						reg [31:0] i;
						// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:181:14
						for (i = 0; i < NumPorts; i = i + 1)
							begin
								// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:182:11
								if (Latency != 0)
									// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:183:13
									begin : sv2v_autoblock_13
										// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:183:18
										reg [31:0] j;
										// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:183:18
										for (j = 0; j < Latency; j = j + 1)
											begin
												// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:184:15
												rdata_q[((i * Latency) + j) * DataWidth+:DataWidth] <= rdata_d[((i * Latency) + j) * DataWidth+:DataWidth];
											end
									end
							end
					end
					begin : sv2v_autoblock_14
						// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:189:14
						reg [31:0] i;
						// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:189:14
						for (i = 0; i < NumPorts; i = i + 1)
							begin
								// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:190:11
								if (req_i[i]) begin
									begin
										// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:191:13
										if (we_i[i])
											// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:193:15
											begin : sv2v_autoblock_15
												// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:193:20
												reg [31:0] j;
												// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:193:20
												for (j = 0; j < BeWidth; j = j + 1)
													begin
														// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:194:17
														if (be_i[(i * BeWidth) + j])
															// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:195:19
															sram[addr_i[i * AddrWidth+:AddrWidth]][j * ByteWidth+:ByteWidth] <= wdata_i[(i * DataWidth) + (j * ByteWidth)+:ByteWidth];
													end
											end
										else
											// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:200:15
											r_addr_q[i * AddrWidth+:AddrWidth] <= addr_i[i * AddrWidth+:AddrWidth];
									end
								end
							end
					end
				end
		end
	endgenerate
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:212:3
	initial begin : p_assertions
		// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:213:5
	end
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:222:3
	initial begin : p_sim_hello
		// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:223:5
		if (PrintSimCfg) begin
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:224:7
			$display("#################################################################################");
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:225:7
			$display("tc_sram functional instantiated with the configuration:");
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:226:7
			$display("Instance: %m");
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:227:7
			$display("Number of ports   (dec): %0d", NumPorts);
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:228:7
			$display("Number of words   (dec): %0d", NumWords);
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:229:7
			$display("Address width     (dec): %0d", AddrWidth);
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:230:7
			$display("Data width        (dec): %0d", DataWidth);
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:231:7
			$display("Byte width        (dec): %0d", ByteWidth);
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:232:7
			$display("Byte enable width (dec): %0d", BeWidth);
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:233:7
			$display("Latency Cycles    (dec): %0d", Latency);
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:234:7
			$display("Simulation init   (str): %0s", SimInit);
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:235:7
			$display("#################################################################################");
		end
	end
	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:238:3
	genvar _gv_i_84;
	generate
		for (_gv_i_84 = 0; _gv_i_84 < NumPorts; _gv_i_84 = _gv_i_84 + 1) begin : gen_assertions
			localparam i = _gv_i_84;
			// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:239:5
			// removed an assertion item
			// assert property (@(posedge clk_i) disable iff (!rst_ni)
			// 	(req_i[i] |-> addr_i[i] < NumWords)
			// ) else begin
			// 	// Trace: vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv:241:7
			// 	$warning("Request address %0h not mapped, port %0d, expect random write or read behavior!", addr_i[i], i);
			// end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
