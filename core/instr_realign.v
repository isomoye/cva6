module instr_realign (
	clk_i,
	rst_ni,
	flush_i,
	valid_i,
	serving_unaligned_o,
	address_i,
	data_i,
	valid_o,
	addr_o,
	instr_o
);
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/instr_realign.sv:25:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/instr_realign.sv:28:5
	input wire clk_i;
	// Trace: core/instr_realign.sv:30:5
	input wire rst_ni;
	// Trace: core/instr_realign.sv:32:5
	input wire flush_i;
	// Trace: core/instr_realign.sv:34:5
	input wire valid_i;
	// Trace: core/instr_realign.sv:36:5
	output wire serving_unaligned_o;
	// Trace: core/instr_realign.sv:38:5
	input wire [CVA6Cfg[17070-:32] - 1:0] address_i;
	// Trace: core/instr_realign.sv:40:5
	input wire [CVA6Cfg[643-:32] - 1:0] data_i;
	// Trace: core/instr_realign.sv:42:5
	output reg [CVA6Cfg[579-:32] - 1:0] valid_o;
	// Trace: core/instr_realign.sv:44:5
	output reg [(CVA6Cfg[579-:32] * CVA6Cfg[17070-:32]) - 1:0] addr_o;
	// Trace: core/instr_realign.sv:46:5
	output reg [(CVA6Cfg[579-:32] * 32) - 1:0] instr_o;
	// Trace: core/instr_realign.sv:49:3
	wire [CVA6Cfg[579-:32] - 1:0] instr_is_compressed;
	// Trace: core/instr_realign.sv:51:3
	genvar _gv_i_29;
	generate
		for (_gv_i_29 = 0; _gv_i_29 < CVA6Cfg[579-:32]; _gv_i_29 = _gv_i_29 + 1) begin : genblk1
			localparam i = _gv_i_29;
			// Trace: core/instr_realign.sv:53:5
			assign instr_is_compressed[i] = ~&data_i[i * 16+:2];
		end
	endgenerate
	// Trace: core/instr_realign.sv:57:3
	reg [15:0] unaligned_instr_d;
	reg [15:0] unaligned_instr_q;
	// Trace: core/instr_realign.sv:59:3
	reg unaligned_d;
	reg unaligned_q;
	// Trace: core/instr_realign.sv:61:3
	reg [CVA6Cfg[17070-:32] - 1:0] unaligned_address_d;
	reg [CVA6Cfg[17070-:32] - 1:0] unaligned_address_q;
	// Trace: core/instr_realign.sv:63:3
	assign serving_unaligned_o = unaligned_q;
	// Trace: core/instr_realign.sv:66:3
	localparam cva6_config_pkg_CVA6ConfigXlen = 64;
	localparam riscv_XLEN = cva6_config_pkg_CVA6ConfigXlen;
	localparam riscv_VLEN = 64;
	generate
		if (CVA6Cfg[643-:32] == 32) begin : realign_bp_32
			// Trace: core/instr_realign.sv:67:5
			always @(*) begin : re_align
				if (_sv2v_0)
					;
				// Trace: core/instr_realign.sv:68:7
				unaligned_d = unaligned_q;
				// Trace: core/instr_realign.sv:69:7
				unaligned_address_d = {address_i[CVA6Cfg[17070-:32] - 1:2], 2'b10};
				// Trace: core/instr_realign.sv:70:7
				unaligned_instr_d = data_i[31:16];
				// Trace: core/instr_realign.sv:72:7
				valid_o[0] = valid_i;
				// Trace: core/instr_realign.sv:73:7
				instr_o[0+:32] = (unaligned_q ? {data_i[15:0], unaligned_instr_q} : data_i[31:0]);
				// Trace: core/instr_realign.sv:74:7
				addr_o[0+:CVA6Cfg[17070-:32]] = (unaligned_q ? unaligned_address_q : address_i);
				// Trace: core/instr_realign.sv:76:7
				if (CVA6Cfg[579-:32] != 1) begin
					// Trace: core/instr_realign.sv:77:9
					valid_o[CVA6Cfg[579-:32] - 1] = 1'b0;
					// Trace: core/instr_realign.sv:78:9
					instr_o[(CVA6Cfg[579-:32] - 1) * 32+:32] = 1'sb0;
					// Trace: core/instr_realign.sv:79:9
					addr_o[(CVA6Cfg[579-:32] - 1) * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = {address_i[CVA6Cfg[17070-:32] - 1:2], 2'b10};
				end
				if (instr_is_compressed[0] || unaligned_q) begin
					begin
						// Trace: core/instr_realign.sv:89:9
						if (instr_is_compressed[CVA6Cfg[579-:32] - 1] && CVA6Cfg[16544]) begin
							// Trace: core/instr_realign.sv:90:11
							unaligned_d = 1'b0;
							// Trace: core/instr_realign.sv:91:11
							valid_o[CVA6Cfg[579-:32] - 1] = valid_i;
							// Trace: core/instr_realign.sv:92:11
							instr_o[(CVA6Cfg[579-:32] - 1) * 32+:32] = {16'b0000000000000000, data_i[31:16]};
						end
						else begin
							// Trace: core/instr_realign.sv:95:11
							unaligned_d = 1'b1;
							// Trace: core/instr_realign.sv:96:11
							unaligned_instr_d = data_i[31:16];
							// Trace: core/instr_realign.sv:97:11
							unaligned_address_d = {address_i[CVA6Cfg[17070-:32] - 1:2], 2'b10};
						end
					end
				end
				if (valid_i && address_i[1]) begin
					begin
						// Trace: core/instr_realign.sv:105:9
						if (!instr_is_compressed[0]) begin
							// Trace: core/instr_realign.sv:106:11
							valid_o = 1'sb0;
							// Trace: core/instr_realign.sv:107:11
							unaligned_d = 1'b1;
							// Trace: core/instr_realign.sv:108:11
							unaligned_address_d = {address_i[CVA6Cfg[17070-:32] - 1:2], 2'b10};
							// Trace: core/instr_realign.sv:109:11
							unaligned_instr_d = data_i[15:0];
						end
						else
							// Trace: core/instr_realign.sv:112:11
							valid_o = {{CVA6Cfg[579-:32] - 1 {1'b0}}, 1'b1};
					end
				end
			end
		end
		else if (CVA6Cfg[643-:32] == 64) begin : realign_bp_64
			// Trace: core/instr_realign.sv:117:5
			always @(*) begin : re_align
				if (_sv2v_0)
					;
				// Trace: core/instr_realign.sv:118:7
				unaligned_d = 1'b0;
				// Trace: core/instr_realign.sv:119:7
				unaligned_address_d = unaligned_address_q;
				// Trace: core/instr_realign.sv:120:7
				unaligned_instr_d = unaligned_instr_q;
				// Trace: core/instr_realign.sv:122:7
				valid_o = 1'sb0;
				// Trace: core/instr_realign.sv:123:7
				instr_o[0+:32] = 1'sb0;
				// Trace: core/instr_realign.sv:124:7
				addr_o[0+:CVA6Cfg[17070-:32]] = 1'sb0;
				// Trace: core/instr_realign.sv:125:7
				instr_o[32+:32] = 1'sb0;
				// Trace: core/instr_realign.sv:126:7
				addr_o[CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = 1'sb0;
				// Trace: core/instr_realign.sv:127:7
				instr_o[64+:32] = 1'sb0;
				// Trace: core/instr_realign.sv:128:7
				addr_o[2 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = 1'sb0;
				// Trace: core/instr_realign.sv:129:7
				instr_o[96+:32] = {16'b0000000000000000, data_i[63:48]};
				// Trace: core/instr_realign.sv:130:7
				addr_o[3 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = {address_i[63:3], 3'b110};
				// Trace: core/instr_realign.sv:132:7
				case (address_i[2:1])
					2'b00: begin
						// Trace: core/instr_realign.sv:134:11
						valid_o[0] = valid_i;
						// Trace: core/instr_realign.sv:135:11
						valid_o[1] = valid_i;
						// Trace: core/instr_realign.sv:137:11
						unaligned_d = unaligned_q;
						// Trace: core/instr_realign.sv:141:11
						if (unaligned_q) begin
							// Trace: core/instr_realign.sv:152:13
							instr_o[0+:32] = {data_i[15:0], unaligned_instr_q};
							// Trace: core/instr_realign.sv:153:13
							addr_o[0+:CVA6Cfg[17070-:32]] = unaligned_address_q;
							// Trace: core/instr_realign.sv:155:13
							instr_o[32+:32] = data_i[47:16];
							// Trace: core/instr_realign.sv:156:13
							addr_o[CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = {address_i[63:3], 3'b010};
							// Trace: core/instr_realign.sv:158:13
							if (instr_is_compressed[1]) begin
								// Trace: core/instr_realign.sv:159:15
								instr_o[64+:32] = data_i[63:32];
								// Trace: core/instr_realign.sv:160:15
								addr_o[2 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = {address_i[63:3], 3'b100};
								// Trace: core/instr_realign.sv:161:15
								valid_o[2] = valid_i;
								// Trace: core/instr_realign.sv:163:15
								if (instr_is_compressed[2]) begin
									begin
										// Trace: core/instr_realign.sv:164:17
										if (instr_is_compressed[3]) begin
											// Trace: core/instr_realign.sv:165:19
											unaligned_d = 1'b0;
											// Trace: core/instr_realign.sv:166:19
											valid_o[3] = valid_i;
										end
										else begin
											// Trace: core/instr_realign.sv:168:19
											unaligned_instr_d = instr_o[96+:32];
											// Trace: core/instr_realign.sv:169:19
											unaligned_address_d = addr_o[3 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
										end
									end
								end
								else begin
									// Trace: core/instr_realign.sv:172:17
									unaligned_d = 1'b0;
									// Trace: core/instr_realign.sv:173:17
									valid_o[2] = valid_i;
								end
							end
							else begin
								// Trace: core/instr_realign.sv:176:15
								instr_o[64+:32] = instr_o[96+:32];
								// Trace: core/instr_realign.sv:177:15
								addr_o[2 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = addr_o[3 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
								// Trace: core/instr_realign.sv:178:15
								if (instr_is_compressed[3]) begin
									// Trace: core/instr_realign.sv:179:17
									unaligned_d = 1'b0;
									// Trace: core/instr_realign.sv:180:17
									valid_o[2] = valid_i;
								end
								else begin
									// Trace: core/instr_realign.sv:182:17
									unaligned_instr_d = instr_o[96+:32];
									// Trace: core/instr_realign.sv:183:17
									unaligned_address_d = addr_o[3 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
								end
							end
						end
						else begin
							// Trace: core/instr_realign.sv:187:13
							instr_o[0+:32] = data_i[31:0];
							// Trace: core/instr_realign.sv:188:13
							addr_o[0+:CVA6Cfg[17070-:32]] = address_i;
							// Trace: core/instr_realign.sv:190:13
							if (instr_is_compressed[0]) begin
								// Trace: core/instr_realign.sv:191:15
								instr_o[32+:32] = data_i[47:16];
								// Trace: core/instr_realign.sv:192:15
								addr_o[CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = {address_i[63:3], 3'b010};
								// Trace: core/instr_realign.sv:201:15
								if (instr_is_compressed[1]) begin
									// Trace: core/instr_realign.sv:202:17
									instr_o[64+:32] = data_i[63:32];
									// Trace: core/instr_realign.sv:203:17
									addr_o[2 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = {address_i[63:3], 3'b100};
									// Trace: core/instr_realign.sv:204:17
									valid_o[2] = valid_i;
									// Trace: core/instr_realign.sv:206:17
									if (instr_is_compressed[2]) begin
										begin
											// Trace: core/instr_realign.sv:207:19
											if (instr_is_compressed[3])
												// Trace: core/instr_realign.sv:208:21
												valid_o[3] = valid_i;
											else begin
												// Trace: core/instr_realign.sv:210:21
												unaligned_d = 1'b1;
												// Trace: core/instr_realign.sv:211:21
												unaligned_instr_d = instr_o[96+:32];
												// Trace: core/instr_realign.sv:212:21
												unaligned_address_d = addr_o[3 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
											end
										end
									end
								end
								else begin
									// Trace: core/instr_realign.sv:216:17
									instr_o[64+:32] = instr_o[96+:32];
									// Trace: core/instr_realign.sv:217:17
									addr_o[2 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = addr_o[3 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
									// Trace: core/instr_realign.sv:219:17
									if (instr_is_compressed[3])
										// Trace: core/instr_realign.sv:220:19
										valid_o[2] = valid_i;
									else begin
										// Trace: core/instr_realign.sv:222:19
										unaligned_d = 1'b1;
										// Trace: core/instr_realign.sv:223:19
										unaligned_instr_d = instr_o[96+:32];
										// Trace: core/instr_realign.sv:224:19
										unaligned_address_d = addr_o[3 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
									end
								end
							end
							else begin
								// Trace: core/instr_realign.sv:233:15
								instr_o[32+:32] = data_i[63:32];
								// Trace: core/instr_realign.sv:234:15
								addr_o[CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = {address_i[63:3], 3'b100};
								// Trace: core/instr_realign.sv:236:15
								instr_o[64+:32] = instr_o[96+:32];
								// Trace: core/instr_realign.sv:237:15
								addr_o[2 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = addr_o[3 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
								// Trace: core/instr_realign.sv:239:15
								if (instr_is_compressed[2]) begin
									begin
										// Trace: core/instr_realign.sv:240:17
										if (instr_is_compressed[3])
											// Trace: core/instr_realign.sv:241:19
											valid_o[2] = valid_i;
										else begin
											// Trace: core/instr_realign.sv:243:19
											unaligned_d = 1'b1;
											// Trace: core/instr_realign.sv:244:19
											unaligned_instr_d = instr_o[96+:32];
											// Trace: core/instr_realign.sv:245:19
											unaligned_address_d = addr_o[3 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
										end
									end
								end
							end
						end
					end
					2'b01: begin
						// Trace: core/instr_realign.sv:264:11
						instr_o[0+:32] = data_i[31:0];
						// Trace: core/instr_realign.sv:265:11
						addr_o[0+:CVA6Cfg[17070-:32]] = {address_i[63:3], 3'b010};
						// Trace: core/instr_realign.sv:266:11
						valid_o[0] = valid_i;
						// Trace: core/instr_realign.sv:268:11
						instr_o[64+:32] = data_i[63:32];
						// Trace: core/instr_realign.sv:269:11
						addr_o[2 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = {address_i[63:3], 3'b110};
						// Trace: core/instr_realign.sv:271:11
						if (instr_is_compressed[0]) begin
							// Trace: core/instr_realign.sv:272:13
							instr_o[32+:32] = data_i[47:16];
							// Trace: core/instr_realign.sv:273:13
							addr_o[CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = {address_i[63:3], 3'b100};
							// Trace: core/instr_realign.sv:274:13
							valid_o[1] = valid_i;
							// Trace: core/instr_realign.sv:276:13
							if (instr_is_compressed[1]) begin
								begin
									// Trace: core/instr_realign.sv:277:15
									if (instr_is_compressed[2])
										// Trace: core/instr_realign.sv:278:17
										valid_o[2] = valid_i;
									else begin
										// Trace: core/instr_realign.sv:280:17
										unaligned_d = 1'b1;
										// Trace: core/instr_realign.sv:281:17
										unaligned_instr_d = instr_o[64+:32];
										// Trace: core/instr_realign.sv:282:17
										unaligned_address_d = addr_o[2 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
									end
								end
							end
						end
						else begin
							// Trace: core/instr_realign.sv:286:13
							instr_o[32+:32] = instr_o[64+:32];
							// Trace: core/instr_realign.sv:287:13
							addr_o[CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = addr_o[2 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
							// Trace: core/instr_realign.sv:289:13
							if (instr_is_compressed[2])
								// Trace: core/instr_realign.sv:290:15
								valid_o[1] = valid_i;
							else begin
								// Trace: core/instr_realign.sv:292:15
								unaligned_d = 1'b1;
								// Trace: core/instr_realign.sv:293:15
								unaligned_instr_d = instr_o[64+:32];
								// Trace: core/instr_realign.sv:294:15
								unaligned_address_d = addr_o[2 * CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
							end
						end
					end
					2'b10: begin
						// Trace: core/instr_realign.sv:306:11
						instr_o[0+:32] = data_i[31:0];
						// Trace: core/instr_realign.sv:307:11
						addr_o[0+:CVA6Cfg[17070-:32]] = {address_i[63:3], 3'b100};
						// Trace: core/instr_realign.sv:308:11
						valid_o[0] = valid_i;
						// Trace: core/instr_realign.sv:310:11
						instr_o[32+:32] = data_i[47:16];
						// Trace: core/instr_realign.sv:311:11
						addr_o[CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]] = {address_i[63:3], 3'b110};
						// Trace: core/instr_realign.sv:313:11
						if (instr_is_compressed[0]) begin
							begin
								// Trace: core/instr_realign.sv:314:13
								if (instr_is_compressed[1])
									// Trace: core/instr_realign.sv:315:15
									valid_o[1] = valid_i;
								else begin
									// Trace: core/instr_realign.sv:317:15
									unaligned_d = 1'b1;
									// Trace: core/instr_realign.sv:318:15
									unaligned_instr_d = instr_o[32+:32];
									// Trace: core/instr_realign.sv:319:15
									unaligned_address_d = addr_o[CVA6Cfg[17070-:32]+:CVA6Cfg[17070-:32]];
								end
							end
						end
					end
					2'b11: begin
						// Trace: core/instr_realign.sv:332:11
						instr_o[0+:32] = data_i[31:0];
						// Trace: core/instr_realign.sv:333:11
						addr_o[0+:CVA6Cfg[17070-:32]] = {address_i[63:3], 3'b110};
						// Trace: core/instr_realign.sv:335:11
						if (instr_is_compressed[0])
							// Trace: core/instr_realign.sv:336:13
							valid_o[0] = valid_i;
						else begin
							// Trace: core/instr_realign.sv:338:13
							unaligned_d = 1'b1;
							// Trace: core/instr_realign.sv:339:13
							unaligned_instr_d = instr_o[0+:32];
							// Trace: core/instr_realign.sv:340:13
							unaligned_address_d = addr_o[0+:CVA6Cfg[17070-:32]];
						end
					end
				endcase
			end
		end
	endgenerate
	// Trace: core/instr_realign.sv:347:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/instr_realign.sv:348:5
		if (~rst_ni) begin
			// Trace: core/instr_realign.sv:349:7
			unaligned_q <= 1'b0;
			// Trace: core/instr_realign.sv:350:7
			unaligned_address_q <= 1'sb0;
			// Trace: core/instr_realign.sv:351:7
			unaligned_instr_q <= 1'sb0;
		end
		else begin
			// Trace: core/instr_realign.sv:353:7
			if (valid_i) begin
				// Trace: core/instr_realign.sv:354:9
				unaligned_address_q <= unaligned_address_d;
				// Trace: core/instr_realign.sv:355:9
				unaligned_instr_q <= unaligned_instr_d;
			end
			if (flush_i)
				// Trace: core/instr_realign.sv:359:9
				unaligned_q <= 1'b0;
			else if (valid_i)
				// Trace: core/instr_realign.sv:361:9
				unaligned_q <= unaligned_d;
		end
	initial _sv2v_0 = 0;
endmodule
