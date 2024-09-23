module macro_decoder (
	instr_i,
	clk_i,
	rst_ni,
	is_macro_instr_i,
	illegal_instr_i,
	is_compressed_i,
	issue_ack_i,
	instr_o,
	illegal_instr_o,
	is_compressed_o,
	fetch_stall_o,
	is_last_macro_instr_o,
	is_double_rd_macro_instr_o
);
	reg _sv2v_0;
	// Trace: core/macro_decoder.sv:18:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/macro_decoder.sv:20:5
	input wire [31:0] instr_i;
	// Trace: core/macro_decoder.sv:21:5
	input wire clk_i;
	// Trace: core/macro_decoder.sv:22:5
	input wire rst_ni;
	// Trace: core/macro_decoder.sv:23:5
	input wire is_macro_instr_i;
	// Trace: core/macro_decoder.sv:24:5
	input wire illegal_instr_i;
	// Trace: core/macro_decoder.sv:25:5
	input wire is_compressed_i;
	// Trace: core/macro_decoder.sv:26:5
	input wire issue_ack_i;
	// Trace: core/macro_decoder.sv:27:5
	output wire [31:0] instr_o;
	// Trace: core/macro_decoder.sv:28:5
	output reg illegal_instr_o;
	// Trace: core/macro_decoder.sv:29:5
	output reg is_compressed_o;
	// Trace: core/macro_decoder.sv:30:5
	output reg fetch_stall_o;
	// Trace: core/macro_decoder.sv:31:5
	output reg is_last_macro_instr_o;
	// Trace: core/macro_decoder.sv:32:5
	output reg is_double_rd_macro_instr_o;
	// Trace: core/macro_decoder.sv:36:3
	reg [2:0] state_d;
	reg [2:0] state_q;
	// Trace: core/macro_decoder.sv:47:3
	reg [2:0] macro_instr_type;
	// Trace: core/macro_decoder.sv:57:3
	reg [3:0] reg_numbers;
	reg [3:0] reg_numbers_q;
	reg [3:0] reg_numbers_d;
	// Trace: core/macro_decoder.sv:58:3
	reg [11:0] stack_adj;
	// Trace: core/macro_decoder.sv:59:3
	reg [4:0] xreg1;
	reg [4:0] xreg2;
	reg [4:0] store_reg;
	reg [4:0] store_reg_q;
	reg [4:0] store_reg_d;
	// Trace: core/macro_decoder.sv:60:3
	reg [1:0] popretz_inst_q;
	reg [1:0] popretz_inst_d;
	// Trace: core/macro_decoder.sv:61:3
	reg [11:0] offset_reg;
	reg [11:0] offset_q;
	reg [11:0] offset_d;
	// Trace: core/macro_decoder.sv:62:3
	reg [31:0] instr_o_reg;
	// Trace: core/macro_decoder.sv:64:3
	// removed localparam type riscv_itype_t
	reg [31:0] itype_inst;
	// Trace: core/macro_decoder.sv:65:3
	assign instr_o = instr_o_reg;
	// Trace: core/macro_decoder.sv:66:3
	localparam riscv_OpcodeJalr = 7'b1100111;
	localparam riscv_OpcodeLoad = 7'b0000011;
	localparam riscv_OpcodeLui = 7'b0110111;
	localparam riscv_OpcodeOpImm = 7'b0010011;
	localparam riscv_OpcodeStore = 7'b0100011;
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/macro_decoder.sv:67:5
		illegal_instr_o = 1'b0;
		// Trace: core/macro_decoder.sv:68:5
		fetch_stall_o = 1'b0;
		// Trace: core/macro_decoder.sv:69:5
		is_last_macro_instr_o = 1'b0;
		// Trace: core/macro_decoder.sv:70:5
		is_double_rd_macro_instr_o = 1'b0;
		// Trace: core/macro_decoder.sv:71:5
		is_compressed_o = (is_macro_instr_i ? 1'b1 : is_compressed_i);
		// Trace: core/macro_decoder.sv:72:5
		reg_numbers = 1'sb0;
		// Trace: core/macro_decoder.sv:73:5
		stack_adj = 1'sb0;
		// Trace: core/macro_decoder.sv:74:5
		state_d = state_q;
		// Trace: core/macro_decoder.sv:75:5
		offset_d = offset_q;
		// Trace: core/macro_decoder.sv:76:5
		reg_numbers_d = reg_numbers_q;
		// Trace: core/macro_decoder.sv:77:5
		store_reg_d = store_reg_q;
		// Trace: core/macro_decoder.sv:78:5
		popretz_inst_d = popretz_inst_q;
		// Trace: core/macro_decoder.sv:80:5
		if (is_macro_instr_i) begin
			// Trace: core/macro_decoder.sv:82:7
			(* full_case, parallel_case *)
			case (instr_i[12:10])
				3'b110:
					// Trace: core/macro_decoder.sv:85:11
					(* full_case, parallel_case *)
					case (instr_i[9:8])
						2'b00:
							// Trace: core/macro_decoder.sv:87:15
							macro_instr_type = 3'd0;
						2'b10:
							// Trace: core/macro_decoder.sv:90:15
							macro_instr_type = 3'd1;
						default: begin
							// Trace: core/macro_decoder.sv:93:15
							illegal_instr_o = 1'b1;
							// Trace: core/macro_decoder.sv:94:15
							instr_o_reg = instr_i;
						end
					endcase
				3'b111:
					// Trace: core/macro_decoder.sv:100:11
					(* full_case, parallel_case *)
					case (instr_i[9:8])
						2'b00:
							// Trace: core/macro_decoder.sv:102:15
							macro_instr_type = 3'd2;
						2'b10:
							// Trace: core/macro_decoder.sv:105:15
							macro_instr_type = 3'd3;
						default: begin
							// Trace: core/macro_decoder.sv:108:15
							illegal_instr_o = 1'b1;
							// Trace: core/macro_decoder.sv:109:15
							instr_o_reg = instr_i;
						end
					endcase
				3'b011:
					// Trace: core/macro_decoder.sv:115:11
					(* full_case, parallel_case *)
					case (instr_i[6:5])
						2'b01:
							// Trace: core/macro_decoder.sv:117:15
							macro_instr_type = 3'd5;
						2'b11:
							// Trace: core/macro_decoder.sv:120:15
							macro_instr_type = 3'd4;
						default: begin
							// Trace: core/macro_decoder.sv:123:15
							illegal_instr_o = 1'b1;
							// Trace: core/macro_decoder.sv:124:15
							instr_o_reg = instr_i;
						end
					endcase
				default: begin
					// Trace: core/macro_decoder.sv:129:11
					illegal_instr_o = 1'b1;
					// Trace: core/macro_decoder.sv:130:11
					instr_o_reg = instr_i;
				end
			endcase
			if ((macro_instr_type == 3'd5) || (macro_instr_type == 3'd4)) begin
				begin
					// Trace: core/macro_decoder.sv:136:9
					if (instr_i[9:7] != instr_i[4:2]) begin
						// Trace: core/macro_decoder.sv:137:11
						xreg1 = {instr_i[9:8] > 0, instr_i[9:8] == 0, instr_i[9:7]};
						// Trace: core/macro_decoder.sv:138:11
						xreg2 = {instr_i[4:3] > 0, instr_i[4:3] == 0, instr_i[4:2]};
					end
					else begin
						// Trace: core/macro_decoder.sv:140:11
						illegal_instr_o = 1'b1;
						// Trace: core/macro_decoder.sv:141:11
						instr_o_reg = instr_i;
					end
				end
			end
			else begin
				// Trace: core/macro_decoder.sv:144:9
				xreg1 = 1'sb0;
				// Trace: core/macro_decoder.sv:145:9
				xreg2 = 1'sb0;
			end
			(* full_case, parallel_case *)
			case (instr_i[7:4])
				4'b0100:
					// Trace: core/macro_decoder.sv:150:18
					reg_numbers = 4'b0001;
				4'b0101:
					// Trace: core/macro_decoder.sv:151:18
					reg_numbers = 4'b0010;
				4'b0110:
					// Trace: core/macro_decoder.sv:152:18
					reg_numbers = 4'b0011;
				4'b0111:
					// Trace: core/macro_decoder.sv:153:18
					reg_numbers = 4'b0100;
				4'b1000:
					// Trace: core/macro_decoder.sv:154:18
					reg_numbers = 4'b0101;
				4'b1001:
					// Trace: core/macro_decoder.sv:155:18
					reg_numbers = 4'b0110;
				4'b1010:
					// Trace: core/macro_decoder.sv:156:18
					reg_numbers = 4'b0111;
				4'b1011:
					// Trace: core/macro_decoder.sv:157:18
					reg_numbers = 4'b1000;
				4'b1100:
					// Trace: core/macro_decoder.sv:158:18
					reg_numbers = 4'b1001;
				4'b1101:
					// Trace: core/macro_decoder.sv:159:18
					reg_numbers = 4'b1010;
				4'b1110:
					// Trace: core/macro_decoder.sv:160:18
					reg_numbers = 4'b1011;
				4'b1111:
					// Trace: core/macro_decoder.sv:161:18
					reg_numbers = 4'b1100;
				default:
					// Trace: core/macro_decoder.sv:162:18
					reg_numbers = 1'sb0;
			endcase
			if (CVA6Cfg[17102-:32] == 32)
				// Trace: core/macro_decoder.sv:166:9
				(* full_case, parallel_case *)
				case (instr_i[7:4])
					4'b0100, 4'b0101, 4'b0110, 4'b0111:
						// Trace: core/macro_decoder.sv:168:13
						(* full_case, parallel_case *)
						case (instr_i[3:2])
							2'b00:
								// Trace: core/macro_decoder.sv:169:22
								stack_adj = 16;
							2'b01:
								// Trace: core/macro_decoder.sv:170:22
								stack_adj = 32;
							2'b10:
								// Trace: core/macro_decoder.sv:171:22
								stack_adj = 48;
							2'b11:
								// Trace: core/macro_decoder.sv:172:22
								stack_adj = 64;
						endcase
					4'b1000, 4'b1001, 4'b1010, 4'b1011:
						// Trace: core/macro_decoder.sv:176:13
						(* full_case, parallel_case *)
						case (instr_i[3:2])
							2'b00:
								// Trace: core/macro_decoder.sv:177:22
								stack_adj = 32;
							2'b01:
								// Trace: core/macro_decoder.sv:178:22
								stack_adj = 48;
							2'b10:
								// Trace: core/macro_decoder.sv:179:22
								stack_adj = 64;
							2'b11:
								// Trace: core/macro_decoder.sv:180:22
								stack_adj = 80;
						endcase
					4'b1100, 4'b1101, 4'b1110:
						// Trace: core/macro_decoder.sv:184:13
						(* full_case, parallel_case *)
						case (instr_i[3:2])
							2'b00:
								// Trace: core/macro_decoder.sv:185:22
								stack_adj = 48;
							2'b01:
								// Trace: core/macro_decoder.sv:186:22
								stack_adj = 64;
							2'b10:
								// Trace: core/macro_decoder.sv:187:22
								stack_adj = 80;
							2'b11:
								// Trace: core/macro_decoder.sv:188:22
								stack_adj = 96;
						endcase
					4'b1111:
						// Trace: core/macro_decoder.sv:192:13
						(* full_case, parallel_case *)
						case (instr_i[3:2])
							2'b00:
								// Trace: core/macro_decoder.sv:193:22
								stack_adj = 64;
							2'b01:
								// Trace: core/macro_decoder.sv:194:22
								stack_adj = 80;
							2'b10:
								// Trace: core/macro_decoder.sv:195:22
								stack_adj = 96;
							2'b11:
								// Trace: core/macro_decoder.sv:196:22
								stack_adj = 112;
						endcase
					default:
						;
				endcase
			else
				// Trace: core/macro_decoder.sv:202:9
				(* full_case, parallel_case *)
				case (instr_i[7:4])
					4'b0100, 4'b0101:
						// Trace: core/macro_decoder.sv:204:13
						(* full_case, parallel_case *)
						case (instr_i[3:2])
							2'b00:
								// Trace: core/macro_decoder.sv:205:22
								stack_adj = 16;
							2'b01:
								// Trace: core/macro_decoder.sv:206:22
								stack_adj = 32;
							2'b10:
								// Trace: core/macro_decoder.sv:207:22
								stack_adj = 48;
							2'b11:
								// Trace: core/macro_decoder.sv:208:22
								stack_adj = 64;
						endcase
					4'b0110, 4'b0111:
						// Trace: core/macro_decoder.sv:212:13
						(* full_case, parallel_case *)
						case (instr_i[3:2])
							2'b00:
								// Trace: core/macro_decoder.sv:213:22
								stack_adj = 32;
							2'b01:
								// Trace: core/macro_decoder.sv:214:22
								stack_adj = 48;
							2'b10:
								// Trace: core/macro_decoder.sv:215:22
								stack_adj = 64;
							2'b11:
								// Trace: core/macro_decoder.sv:216:22
								stack_adj = 80;
						endcase
					4'b1000, 4'b1001:
						// Trace: core/macro_decoder.sv:220:13
						(* full_case, parallel_case *)
						case (instr_i[3:2])
							2'b00:
								// Trace: core/macro_decoder.sv:221:22
								stack_adj = 48;
							2'b01:
								// Trace: core/macro_decoder.sv:222:22
								stack_adj = 64;
							2'b10:
								// Trace: core/macro_decoder.sv:223:22
								stack_adj = 80;
							2'b11:
								// Trace: core/macro_decoder.sv:224:22
								stack_adj = 96;
						endcase
					4'b1010, 4'b1011:
						// Trace: core/macro_decoder.sv:228:13
						(* full_case, parallel_case *)
						case (instr_i[3:2])
							2'b00:
								// Trace: core/macro_decoder.sv:229:22
								stack_adj = 64;
							2'b01:
								// Trace: core/macro_decoder.sv:230:22
								stack_adj = 80;
							2'b10:
								// Trace: core/macro_decoder.sv:231:22
								stack_adj = 96;
							2'b11:
								// Trace: core/macro_decoder.sv:232:22
								stack_adj = 112;
						endcase
					4'b1100, 4'b1101:
						// Trace: core/macro_decoder.sv:236:13
						(* full_case, parallel_case *)
						case (instr_i[3:2])
							2'b00:
								// Trace: core/macro_decoder.sv:237:22
								stack_adj = 80;
							2'b01:
								// Trace: core/macro_decoder.sv:238:22
								stack_adj = 96;
							2'b10:
								// Trace: core/macro_decoder.sv:239:22
								stack_adj = 112;
							2'b11:
								// Trace: core/macro_decoder.sv:240:22
								stack_adj = 128;
						endcase
					4'b1110:
						// Trace: core/macro_decoder.sv:244:13
						(* full_case, parallel_case *)
						case (instr_i[3:2])
							2'b00:
								// Trace: core/macro_decoder.sv:245:22
								stack_adj = 96;
							2'b01:
								// Trace: core/macro_decoder.sv:246:22
								stack_adj = 112;
							2'b10:
								// Trace: core/macro_decoder.sv:247:22
								stack_adj = 128;
							2'b11:
								// Trace: core/macro_decoder.sv:248:22
								stack_adj = 144;
						endcase
					4'b1111:
						// Trace: core/macro_decoder.sv:252:13
						(* full_case, parallel_case *)
						case (instr_i[3:2])
							2'b00:
								// Trace: core/macro_decoder.sv:253:22
								stack_adj = 112;
							2'b01:
								// Trace: core/macro_decoder.sv:254:22
								stack_adj = 128;
							2'b10:
								// Trace: core/macro_decoder.sv:255:22
								stack_adj = 144;
							2'b11:
								// Trace: core/macro_decoder.sv:256:22
								stack_adj = 160;
						endcase
				endcase
			if (macro_instr_type == 3'd0)
				// Trace: core/macro_decoder.sv:264:9
				itype_inst[31-:12] = ~stack_adj + 1'b1;
			else
				// Trace: core/macro_decoder.sv:266:9
				itype_inst[31-:12] = stack_adj - 12'h004;
		end
		else begin
			// Trace: core/macro_decoder.sv:269:7
			illegal_instr_o = illegal_instr_i;
			// Trace: core/macro_decoder.sv:270:7
			instr_o_reg = instr_i;
		end
		(* full_case, parallel_case *)
		case (state_q)
			3'd0:
				// Trace: core/macro_decoder.sv:275:9
				if (is_macro_instr_i && issue_ack_i) begin
					// Trace: core/macro_decoder.sv:276:11
					reg_numbers_d = reg_numbers - 1'b1;
					// Trace: core/macro_decoder.sv:277:11
					state_d = 3'd1;
					// Trace: core/macro_decoder.sv:278:11
					case (macro_instr_type)
						3'd0:
							// Trace: core/macro_decoder.sv:280:15
							offset_d = 12'hffc + 12'hffc;
						3'd1, 3'd2, 3'd3: begin
							// Trace: core/macro_decoder.sv:283:15
							offset_d = itype_inst[31-:12] + 12'hffc;
							// Trace: core/macro_decoder.sv:284:15
							offset_reg = itype_inst[31-:12];
							// Trace: core/macro_decoder.sv:285:15
							case (macro_instr_type)
								3'd2:
									// Trace: core/macro_decoder.sv:287:19
									popretz_inst_d = 2'b11;
								3'd3:
									// Trace: core/macro_decoder.sv:290:19
									popretz_inst_d = 2'b01;
								default:
									// Trace: core/macro_decoder.sv:293:19
									popretz_inst_d = 'b0;
							endcase
						end
						default:
							;
					endcase
					if (reg_numbers == 4'b1100) begin
						// Trace: core/macro_decoder.sv:302:13
						store_reg_d = 4'b1110 + reg_numbers;
						// Trace: core/macro_decoder.sv:303:13
						store_reg = 4'b1111 + reg_numbers;
					end
					else begin
						// Trace: core/macro_decoder.sv:305:13
						store_reg_d = 4'b1101 + reg_numbers;
						// Trace: core/macro_decoder.sv:306:13
						store_reg = 4'b1110 + reg_numbers;
					end
					if (macro_instr_type == 3'd5) begin
						// Trace: core/macro_decoder.sv:310:13
						fetch_stall_o = 1;
						// Trace: core/macro_decoder.sv:311:13
						is_double_rd_macro_instr_o = 1;
						// Trace: core/macro_decoder.sv:313:13
						instr_o_reg = {20'h00050, xreg1, riscv_OpcodeOpImm};
						// Trace: core/macro_decoder.sv:314:13
						state_d = 3'd4;
					end
					if (macro_instr_type == 3'd4) begin
						// Trace: core/macro_decoder.sv:318:13
						fetch_stall_o = 1;
						// Trace: core/macro_decoder.sv:319:13
						is_double_rd_macro_instr_o = 1;
						// Trace: core/macro_decoder.sv:321:13
						instr_o_reg = {12'h000, xreg1, 8'h0a, riscv_OpcodeOpImm};
						// Trace: core/macro_decoder.sv:322:13
						state_d = 3'd4;
					end
					if (macro_instr_type == 3'd0) begin
						// Trace: core/macro_decoder.sv:327:13
						fetch_stall_o = 1'b1;
						// Trace: core/macro_decoder.sv:329:13
						if (reg_numbers == 4'b0001) begin
							// Trace: core/macro_decoder.sv:330:15
							if (CVA6Cfg[17102-:32] == 64)
								// Trace: core/macro_decoder.sv:331:17
								instr_o_reg = {25'h1fc2278, riscv_OpcodeStore};
							else
								// Trace: core/macro_decoder.sv:335:17
								instr_o_reg = {25'h1fc225c, riscv_OpcodeStore};
							// Trace: core/macro_decoder.sv:339:15
							state_d = 3'd2;
						end
						if (reg_numbers == 4'b0010) begin
							begin
								// Trace: core/macro_decoder.sv:343:15
								if (CVA6Cfg[17102-:32] == 64)
									// Trace: core/macro_decoder.sv:344:17
									instr_o_reg = {25'h1fd0278, riscv_OpcodeStore};
								else
									// Trace: core/macro_decoder.sv:346:17
									instr_o_reg = {25'h1fd025c, riscv_OpcodeStore};
							end
						end
						if (reg_numbers == 4'b0011) begin
							begin
								// Trace: core/macro_decoder.sv:351:15
								if (CVA6Cfg[17102-:32] == 64)
									// Trace: core/macro_decoder.sv:352:17
									instr_o_reg = {25'h1fd2278, riscv_OpcodeStore};
								else
									// Trace: core/macro_decoder.sv:354:17
									instr_o_reg = {25'h1fd225c, riscv_OpcodeStore};
							end
						end
						if ((reg_numbers >= 4) && (reg_numbers <= 12)) begin
							// Trace: core/macro_decoder.sv:360:15
							if (CVA6Cfg[17102-:32] == 64)
								// Trace: core/macro_decoder.sv:361:17
								instr_o_reg = {7'b1111111, store_reg, 13'h0278, riscv_OpcodeStore};
							else
								// Trace: core/macro_decoder.sv:363:17
								instr_o_reg = {7'b1111111, store_reg, 13'h025c, riscv_OpcodeStore};
							if (reg_numbers == 12)
								// Trace: core/macro_decoder.sv:367:17
								state_d = 3'd5;
						end
					end
					if (((macro_instr_type == 3'd1) || (macro_instr_type == 3'd2)) || (macro_instr_type == 3'd3)) begin
						// Trace: core/macro_decoder.sv:373:13
						fetch_stall_o = 1;
						// Trace: core/macro_decoder.sv:374:13
						if (reg_numbers == 1) begin
							// Trace: core/macro_decoder.sv:375:15
							if (CVA6Cfg[17102-:32] == 64)
								// Trace: core/macro_decoder.sv:376:17
								instr_o_reg = {offset_reg - 12'h004, 13'h0261, riscv_OpcodeLoad};
							else
								// Trace: core/macro_decoder.sv:380:17
								instr_o_reg = {offset_reg, 13'h0241, riscv_OpcodeLoad};
							(* full_case, parallel_case *)
							case (macro_instr_type)
								3'd0, 3'd1, 3'd3:
									// Trace: core/macro_decoder.sv:386:19
									state_d = 3'd2;
								3'd2:
									// Trace: core/macro_decoder.sv:389:19
									state_d = 3'd3;
								default:
									;
							endcase
						end
						if (reg_numbers == 2) begin
							begin
								// Trace: core/macro_decoder.sv:396:15
								if (CVA6Cfg[17102-:32] == 64)
									// Trace: core/macro_decoder.sv:397:17
									instr_o_reg = {offset_reg - 12'h004, 13'h0268, riscv_OpcodeLoad};
								else
									// Trace: core/macro_decoder.sv:399:17
									instr_o_reg = {offset_reg, 13'h0248, riscv_OpcodeLoad};
							end
						end
						if (reg_numbers == 3) begin
							begin
								// Trace: core/macro_decoder.sv:404:15
								if (CVA6Cfg[17102-:32] == 64)
									// Trace: core/macro_decoder.sv:405:17
									instr_o_reg = {offset_reg - 12'h004, 13'h0269, riscv_OpcodeLoad};
								else
									// Trace: core/macro_decoder.sv:407:17
									instr_o_reg = {offset_reg, 13'h0249, riscv_OpcodeLoad};
							end
						end
						if ((reg_numbers >= 4) && (reg_numbers <= 12)) begin
							// Trace: core/macro_decoder.sv:412:15
							if (CVA6Cfg[17102-:32] == 64)
								// Trace: core/macro_decoder.sv:413:17
								instr_o_reg = {offset_reg - 12'h004, 8'h13, store_reg, riscv_OpcodeLoad};
							else
								// Trace: core/macro_decoder.sv:415:17
								instr_o_reg = {offset_reg, 8'h12, store_reg, riscv_OpcodeLoad};
							if (reg_numbers == 12)
								// Trace: core/macro_decoder.sv:419:17
								state_d = 3'd5;
						end
					end
				end
			3'd1: begin
				// Trace: core/macro_decoder.sv:426:9
				fetch_stall_o = 1'b1;
				// Trace: core/macro_decoder.sv:427:9
				if ((issue_ack_i && is_macro_instr_i) && (macro_instr_type == 3'd0)) begin
					// Trace: core/macro_decoder.sv:428:11
					if (reg_numbers_q == 4'b0001) begin
						// Trace: core/macro_decoder.sv:429:13
						if (CVA6Cfg[17102-:32] == 64)
							// Trace: core/macro_decoder.sv:430:15
							instr_o_reg = {offset_d[11:5], 13'h0113, offset_d[4:3], 1'b0, offset_d[1:0], riscv_OpcodeStore};
						else
							// Trace: core/macro_decoder.sv:441:15
							instr_o_reg = {offset_d[11:5], 13'h0112, offset_d[4:0], riscv_OpcodeStore};
						// Trace: core/macro_decoder.sv:443:13
						state_d = 3'd2;
					end
					if (reg_numbers_q == 4'b0010) begin
						// Trace: core/macro_decoder.sv:447:13
						if (CVA6Cfg[17102-:32] == 64)
							// Trace: core/macro_decoder.sv:448:15
							instr_o_reg = {offset_d[11:5], 13'h0813, offset_d[4:3], 1'b0, offset_d[1:0], riscv_OpcodeStore};
						else
							// Trace: core/macro_decoder.sv:459:15
							instr_o_reg = {offset_d[11:5], 13'h0812, offset_d[4:0], riscv_OpcodeStore};
						// Trace: core/macro_decoder.sv:461:13
						reg_numbers_d = reg_numbers_q - 1;
						// Trace: core/macro_decoder.sv:462:13
						offset_d = offset_q + 12'hffc;
					end
					if (reg_numbers_q == 4'b0011) begin
						// Trace: core/macro_decoder.sv:466:13
						if (CVA6Cfg[17102-:32] == 64)
							// Trace: core/macro_decoder.sv:467:15
							instr_o_reg = {offset_d[11:5], 13'h0913, offset_d[4:3], 1'b0, offset_d[1:0], riscv_OpcodeStore};
						else
							// Trace: core/macro_decoder.sv:478:15
							instr_o_reg = {offset_d[11:5], 13'h0912, offset_d[4:0], riscv_OpcodeStore};
						// Trace: core/macro_decoder.sv:480:13
						reg_numbers_d = reg_numbers_q - 1;
						// Trace: core/macro_decoder.sv:481:13
						offset_d = offset_q + 12'hffc;
					end
					if ((reg_numbers_q >= 4) && (reg_numbers_q <= 12)) begin
						// Trace: core/macro_decoder.sv:485:13
						if (CVA6Cfg[17102-:32] == 64)
							// Trace: core/macro_decoder.sv:486:15
							instr_o_reg = {offset_d[11:5], store_reg_q, 8'h13, offset_d[4:3], 1'b0, offset_d[1:0], riscv_OpcodeStore};
						else
							// Trace: core/macro_decoder.sv:497:15
							instr_o_reg = {offset_d[11:5], store_reg_q, 8'h12, offset_d[4:0], riscv_OpcodeStore};
						// Trace: core/macro_decoder.sv:501:13
						reg_numbers_d = reg_numbers_q - 1;
						// Trace: core/macro_decoder.sv:502:13
						store_reg_d = store_reg_q - 1;
						// Trace: core/macro_decoder.sv:503:13
						offset_d = offset_q + 12'hffc;
						if (reg_numbers_q == 12)
							// Trace: core/macro_decoder.sv:505:15
							state_d = 3'd5;
					end
				end
				if ((issue_ack_i && is_macro_instr_i) && (((macro_instr_type == 3'd1) || (macro_instr_type == 3'd2)) || (macro_instr_type == 3'd3))) begin
					// Trace: core/macro_decoder.sv:512:11
					if (reg_numbers_q == 1) begin
						// Trace: core/macro_decoder.sv:513:13
						if (CVA6Cfg[17102-:32] == 64)
							// Trace: core/macro_decoder.sv:514:15
							instr_o_reg = {offset_d[11:3], 1'b0, offset_d[1:0], 13'h0261, riscv_OpcodeLoad};
						else
							// Trace: core/macro_decoder.sv:518:15
							instr_o_reg = {offset_d[11:0], 13'h0241, riscv_OpcodeLoad};
						(* full_case, parallel_case *)
						case (macro_instr_type)
							3'd0, 3'd1, 3'd3:
								// Trace: core/macro_decoder.sv:522:17
								state_d = 3'd2;
							3'd2:
								// Trace: core/macro_decoder.sv:525:17
								state_d = 3'd3;
							default:
								;
						endcase
					end
					if (reg_numbers_q == 2) begin
						// Trace: core/macro_decoder.sv:532:13
						if (CVA6Cfg[17102-:32] == 64)
							// Trace: core/macro_decoder.sv:533:15
							instr_o_reg = {offset_d[11:3], 1'b0, offset_d[1:0], 13'h0268, riscv_OpcodeLoad};
						else
							// Trace: core/macro_decoder.sv:537:15
							instr_o_reg = {offset_d[11:0], 13'h0248, riscv_OpcodeLoad};
						// Trace: core/macro_decoder.sv:539:13
						reg_numbers_d = reg_numbers_q - 1;
						// Trace: core/macro_decoder.sv:540:13
						offset_d = offset_q + 12'hffc;
					end
					if (reg_numbers_q == 3) begin
						// Trace: core/macro_decoder.sv:544:13
						if (CVA6Cfg[17102-:32] == 64)
							// Trace: core/macro_decoder.sv:545:15
							instr_o_reg = {offset_d[11:3], 1'b0, offset_d[1:0], 13'h0269, riscv_OpcodeLoad};
						else
							// Trace: core/macro_decoder.sv:549:15
							instr_o_reg = {offset_d[11:0], 13'h0249, riscv_OpcodeLoad};
						// Trace: core/macro_decoder.sv:551:13
						reg_numbers_d = reg_numbers_q - 1;
						// Trace: core/macro_decoder.sv:552:13
						offset_d = offset_q + 12'hffc;
					end
					if ((reg_numbers_q >= 4) && (reg_numbers_q <= 12)) begin
						// Trace: core/macro_decoder.sv:556:13
						if (CVA6Cfg[17102-:32] == 64)
							// Trace: core/macro_decoder.sv:557:15
							instr_o_reg = {offset_d[11:3], 1'b0, offset_d[1:0], 8'h13, store_reg_q, riscv_OpcodeLoad};
						else
							// Trace: core/macro_decoder.sv:561:15
							instr_o_reg = {offset_d[11:0], 8'h12, store_reg_q, riscv_OpcodeLoad};
						// Trace: core/macro_decoder.sv:563:13
						reg_numbers_d = reg_numbers_q - 1;
						// Trace: core/macro_decoder.sv:564:13
						store_reg_d = store_reg_q - 1;
						// Trace: core/macro_decoder.sv:565:13
						offset_d = offset_q + 12'hffc;
						if (reg_numbers_q == 12)
							// Trace: core/macro_decoder.sv:567:15
							state_d = 3'd5;
					end
				end
			end
			3'd4:
				// Trace: core/macro_decoder.sv:574:9
				case (macro_instr_type)
					3'd5:
						// Trace: core/macro_decoder.sv:576:13
						if (issue_ack_i) begin
							// Trace: core/macro_decoder.sv:578:15
							instr_o_reg = {20'h00058, xreg2, riscv_OpcodeOpImm};
							// Trace: core/macro_decoder.sv:579:15
							fetch_stall_o = 0;
							// Trace: core/macro_decoder.sv:580:15
							is_last_macro_instr_o = 1;
							// Trace: core/macro_decoder.sv:581:15
							is_double_rd_macro_instr_o = 1;
							// Trace: core/macro_decoder.sv:582:15
							state_d = 3'd0;
						end
					3'd4:
						// Trace: core/macro_decoder.sv:586:13
						if (issue_ack_i) begin
							// Trace: core/macro_decoder.sv:588:15
							instr_o_reg = {12'h000, xreg2, 8'h0b, riscv_OpcodeOpImm};
							// Trace: core/macro_decoder.sv:589:15
							fetch_stall_o = 0;
							// Trace: core/macro_decoder.sv:590:15
							is_last_macro_instr_o = 1;
							// Trace: core/macro_decoder.sv:591:15
							is_double_rd_macro_instr_o = 1;
							// Trace: core/macro_decoder.sv:592:15
							state_d = 3'd0;
						end
					default: begin
						// Trace: core/macro_decoder.sv:596:13
						illegal_instr_o = 1'b1;
						// Trace: core/macro_decoder.sv:597:13
						instr_o_reg = instr_i;
					end
				endcase
			3'd2:
				// Trace: core/macro_decoder.sv:603:9
				if (CVA6Cfg[17102-:32] == 64) begin
					// Trace: core/macro_decoder.sv:604:11
					if ((issue_ack_i && is_macro_instr_i) && (macro_instr_type == 3'd0))
						// Trace: core/macro_decoder.sv:606:13
						instr_o_reg = {itype_inst[31-:12] - 12'h004, 13'h0202, riscv_OpcodeOpImm};
					else
						// Trace: core/macro_decoder.sv:608:13
						if (issue_ack_i)
							// Trace: core/macro_decoder.sv:609:15
							instr_o_reg = {stack_adj - 12'h004, 13'h0202, riscv_OpcodeOpImm};
					if ((issue_ack_i && is_macro_instr_i) && ((macro_instr_type == 3'd2) || (macro_instr_type == 3'd3))) begin
						// Trace: core/macro_decoder.sv:613:13
						state_d = 3'd3;
						// Trace: core/macro_decoder.sv:614:13
						fetch_stall_o = 1;
					end
					else
						// Trace: core/macro_decoder.sv:616:13
						if (issue_ack_i) begin
							// Trace: core/macro_decoder.sv:617:15
							state_d = 3'd0;
							// Trace: core/macro_decoder.sv:618:15
							fetch_stall_o = 0;
							// Trace: core/macro_decoder.sv:619:15
							is_last_macro_instr_o = 1;
						end
						else
							// Trace: core/macro_decoder.sv:621:15
							fetch_stall_o = 1;
				end
				else begin
					// Trace: core/macro_decoder.sv:625:11
					if ((issue_ack_i && is_macro_instr_i) && (macro_instr_type == 3'd0))
						// Trace: core/macro_decoder.sv:627:13
						instr_o_reg = {itype_inst[31-:12], 13'h0202, riscv_OpcodeOpImm};
					else
						// Trace: core/macro_decoder.sv:629:13
						if (issue_ack_i)
							// Trace: core/macro_decoder.sv:630:15
							instr_o_reg = {stack_adj, 13'h0202, riscv_OpcodeOpImm};
					if ((issue_ack_i && is_macro_instr_i) && ((macro_instr_type == 3'd2) || (macro_instr_type == 3'd3))) begin
						// Trace: core/macro_decoder.sv:634:13
						state_d = 3'd3;
						// Trace: core/macro_decoder.sv:635:13
						fetch_stall_o = 1;
					end
					else
						// Trace: core/macro_decoder.sv:637:13
						if (issue_ack_i) begin
							// Trace: core/macro_decoder.sv:638:15
							state_d = 3'd0;
							// Trace: core/macro_decoder.sv:639:15
							fetch_stall_o = 0;
							// Trace: core/macro_decoder.sv:640:15
							is_last_macro_instr_o = 1;
						end
						else
							// Trace: core/macro_decoder.sv:642:15
							fetch_stall_o = 1;
				end
			3'd5: begin
				// Trace: core/macro_decoder.sv:649:9
				if (CVA6Cfg[17102-:32] == 64)
					// Trace: core/macro_decoder.sv:650:11
					case (macro_instr_type)
						3'd0:
							// Trace: core/macro_decoder.sv:652:15
							if (issue_ack_i) begin
								// Trace: core/macro_decoder.sv:653:17
								instr_o_reg = {offset_d[11:5], store_reg_q, 8'h13, offset_d[4:3], 1'b0, offset_d[1:0], riscv_OpcodeStore};
								// Trace: core/macro_decoder.sv:663:17
								offset_d = offset_q + 12'hffc;
								// Trace: core/macro_decoder.sv:664:17
								store_reg_d = store_reg_q - 1;
								// Trace: core/macro_decoder.sv:665:17
								state_d = 3'd1;
							end
						3'd1, 3'd2, 3'd3:
							// Trace: core/macro_decoder.sv:669:15
							if (issue_ack_i) begin
								// Trace: core/macro_decoder.sv:670:17
								instr_o_reg = {offset_d[11:3], 1'b0, offset_d[1:0], 8'h13, store_reg_q, riscv_OpcodeLoad};
								// Trace: core/macro_decoder.sv:673:17
								offset_d = offset_q + 12'hffc;
								// Trace: core/macro_decoder.sv:674:17
								store_reg_d = store_reg_q - 1;
								// Trace: core/macro_decoder.sv:675:17
								state_d = 3'd1;
							end
						default: begin
							// Trace: core/macro_decoder.sv:679:15
							illegal_instr_o = 1'b1;
							// Trace: core/macro_decoder.sv:680:15
							instr_o_reg = instr_i;
						end
					endcase
				else
					// Trace: core/macro_decoder.sv:684:11
					case (macro_instr_type)
						3'd0:
							// Trace: core/macro_decoder.sv:686:15
							if (issue_ack_i) begin
								// Trace: core/macro_decoder.sv:687:17
								instr_o_reg = {offset_d[11:5], store_reg_q, 8'h12, offset_d[4:0], riscv_OpcodeStore};
								// Trace: core/macro_decoder.sv:690:17
								offset_d = offset_q + 12'hffc;
								// Trace: core/macro_decoder.sv:691:17
								store_reg_d = store_reg_q - 1;
								// Trace: core/macro_decoder.sv:692:17
								state_d = 3'd1;
							end
						3'd1, 3'd2, 3'd3:
							// Trace: core/macro_decoder.sv:696:15
							if (issue_ack_i) begin
								// Trace: core/macro_decoder.sv:697:17
								instr_o_reg = {offset_d[11:0], 8'h12, store_reg_q, riscv_OpcodeLoad};
								// Trace: core/macro_decoder.sv:698:17
								offset_d = offset_q + 12'hffc;
								// Trace: core/macro_decoder.sv:699:17
								store_reg_d = store_reg_q - 1;
								// Trace: core/macro_decoder.sv:700:17
								state_d = 3'd1;
							end
						default: begin
							// Trace: core/macro_decoder.sv:704:15
							illegal_instr_o = 1'b1;
							// Trace: core/macro_decoder.sv:705:15
							instr_o_reg = instr_i;
						end
					endcase
				// Trace: core/macro_decoder.sv:709:9
				fetch_stall_o = 1;
			end
			3'd3:
				// Trace: core/macro_decoder.sv:713:9
				(* full_case, parallel_case *)
				case (popretz_inst_q)
					2'b11: begin
						// Trace: core/macro_decoder.sv:715:13
						if (issue_ack_i) begin
							// Trace: core/macro_decoder.sv:716:15
							instr_o_reg = {25'h000000a, riscv_OpcodeLui};
							// Trace: core/macro_decoder.sv:717:15
							popretz_inst_d = popretz_inst_q - 1;
						end
						// Trace: core/macro_decoder.sv:719:13
						fetch_stall_o = 1;
					end
					2'b10: begin
						// Trace: core/macro_decoder.sv:722:13
						if (issue_ack_i) begin
							// Trace: core/macro_decoder.sv:723:15
							instr_o_reg = {25'h0000a0a, riscv_OpcodeOpImm};
							// Trace: core/macro_decoder.sv:724:15
							popretz_inst_d = popretz_inst_q - 1;
							// Trace: core/macro_decoder.sv:725:15
							state_d = 3'd2;
						end
						// Trace: core/macro_decoder.sv:727:13
						fetch_stall_o = 1;
					end
					2'b01:
						// Trace: core/macro_decoder.sv:730:13
						if (issue_ack_i) begin
							// Trace: core/macro_decoder.sv:731:15
							instr_o_reg = {25'h0000100, riscv_OpcodeJalr};
							// Trace: core/macro_decoder.sv:732:15
							state_d = 3'd0;
							// Trace: core/macro_decoder.sv:733:15
							fetch_stall_o = 0;
							// Trace: core/macro_decoder.sv:734:15
							is_last_macro_instr_o = 1;
							// Trace: core/macro_decoder.sv:735:15
							popretz_inst_d = popretz_inst_q - 1;
						end
					default: begin
						// Trace: core/macro_decoder.sv:739:13
						illegal_instr_o = 1'b1;
						// Trace: core/macro_decoder.sv:740:13
						instr_o_reg = instr_i;
					end
				endcase
			default:
				// Trace: core/macro_decoder.sv:745:9
				state_d = 3'd0;
		endcase
	end
	// Trace: core/macro_decoder.sv:750:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/macro_decoder.sv:751:5
		if (~rst_ni) begin
			// Trace: core/macro_decoder.sv:752:7
			state_q <= 3'd0;
			// Trace: core/macro_decoder.sv:753:7
			offset_q <= 1'sb0;
			// Trace: core/macro_decoder.sv:754:7
			popretz_inst_q <= 1'sb0;
			// Trace: core/macro_decoder.sv:755:7
			reg_numbers_q <= 1'sb0;
			// Trace: core/macro_decoder.sv:756:7
			store_reg_q <= 1'sb0;
		end
		else begin
			// Trace: core/macro_decoder.sv:758:7
			state_q <= state_d;
			// Trace: core/macro_decoder.sv:759:7
			offset_q <= offset_d;
			// Trace: core/macro_decoder.sv:760:7
			reg_numbers_q <= reg_numbers_d;
			// Trace: core/macro_decoder.sv:761:7
			store_reg_q <= store_reg_d;
			// Trace: core/macro_decoder.sv:762:7
			popretz_inst_q <= popretz_inst_d;
		end
	initial _sv2v_0 = 0;
endmodule
