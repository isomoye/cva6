module compressed_decoder (
	instr_i,
	instr_o,
	illegal_instr_o,
	is_macro_instr_o,
	is_compressed_o
);
	reg _sv2v_0;
	// Trace: core/compressed_decoder.sv:23:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/compressed_decoder.sv:26:5
	input wire [31:0] instr_i;
	// Trace: core/compressed_decoder.sv:28:5
	output reg [31:0] instr_o;
	// Trace: core/compressed_decoder.sv:30:5
	output reg illegal_instr_o;
	// Trace: core/compressed_decoder.sv:32:5
	output reg is_macro_instr_o;
	// Trace: core/compressed_decoder.sv:34:5
	output reg is_compressed_o;
	// Trace: core/compressed_decoder.sv:40:3
	localparam riscv_OpcodeBranch = 7'b1100011;
	localparam riscv_OpcodeC0 = 2'b00;
	localparam riscv_OpcodeC0Addi4spn = 3'b000;
	localparam riscv_OpcodeC0Fld = 3'b001;
	localparam riscv_OpcodeC0Fsd = 3'b101;
	localparam riscv_OpcodeC0Ld = 3'b011;
	localparam riscv_OpcodeC0Lw = 3'b010;
	localparam riscv_OpcodeC0Sd = 3'b111;
	localparam riscv_OpcodeC0Sw = 3'b110;
	localparam riscv_OpcodeC0Zcb = 3'b100;
	localparam riscv_OpcodeC1 = 2'b01;
	localparam riscv_OpcodeC1Addi = 3'b000;
	localparam riscv_OpcodeC1Addiw = 3'b001;
	localparam riscv_OpcodeC1Beqz = 3'b110;
	localparam riscv_OpcodeC1Bnez = 3'b111;
	localparam riscv_OpcodeC1J = 3'b101;
	localparam riscv_OpcodeC1Li = 3'b010;
	localparam riscv_OpcodeC1LuiAddi16sp = 3'b011;
	localparam riscv_OpcodeC1MiscAlu = 3'b100;
	localparam riscv_OpcodeC2 = 2'b10;
	localparam riscv_OpcodeC2Fldsp = 3'b001;
	localparam riscv_OpcodeC2Fsdsp = 3'b101;
	localparam riscv_OpcodeC2JalrMvAdd = 3'b100;
	localparam riscv_OpcodeC2Ldsp = 3'b011;
	localparam riscv_OpcodeC2Lwsp = 3'b010;
	localparam riscv_OpcodeC2Sdsp = 3'b111;
	localparam riscv_OpcodeC2Slli = 3'b000;
	localparam riscv_OpcodeC2Swsp = 3'b110;
	localparam riscv_OpcodeJal = 7'b1101111;
	localparam riscv_OpcodeJalr = 7'b1100111;
	localparam riscv_OpcodeLoad = 7'b0000011;
	localparam riscv_OpcodeLoadFp = 7'b0000111;
	localparam riscv_OpcodeLui = 7'b0110111;
	localparam riscv_OpcodeOp = 7'b0110011;
	localparam riscv_OpcodeOp32 = 7'b0111011;
	localparam riscv_OpcodeOpImm = 7'b0010011;
	localparam riscv_OpcodeOpImm32 = 7'b0011011;
	localparam riscv_OpcodeStore = 7'b0100011;
	localparam riscv_OpcodeStoreFp = 7'b0100111;
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/compressed_decoder.sv:41:5
		illegal_instr_o = 1'b0;
		// Trace: core/compressed_decoder.sv:42:5
		is_compressed_o = 1'b1;
		// Trace: core/compressed_decoder.sv:43:5
		instr_o = instr_i;
		// Trace: core/compressed_decoder.sv:44:5
		is_macro_instr_o = 0;
		// Trace: core/compressed_decoder.sv:48:5
		(* full_case, parallel_case *)
		case (instr_i[1:0])
			riscv_OpcodeC0:
				// Trace: core/compressed_decoder.sv:51:9
				(* full_case, parallel_case *)
				case (instr_i[15:13])
					riscv_OpcodeC0Addi4spn: begin
						// Trace: core/compressed_decoder.sv:54:13
						instr_o = {2'b00, instr_i[10:7], instr_i[12:11], instr_i[5], instr_i[6], 12'h041, instr_i[4:2], riscv_OpcodeOpImm};
						// Trace: core/compressed_decoder.sv:67:13
						if (instr_i[12:5] == 8'b00000000)
							// Trace: core/compressed_decoder.sv:67:40
							illegal_instr_o = 1'b1;
					end
					riscv_OpcodeC0Fld:
						// Trace: core/compressed_decoder.sv:71:13
						if (CVA6Cfg[16471])
							// Trace: core/compressed_decoder.sv:74:15
							instr_o = {4'b0000, instr_i[6:5], instr_i[12:10], 5'b00001, instr_i[9:7], 5'b01101, instr_i[4:2], riscv_OpcodeLoadFp};
						else
							// Trace: core/compressed_decoder.sv:87:15
							illegal_instr_o = 1'b1;
					riscv_OpcodeC0Lw:
						// Trace: core/compressed_decoder.sv:93:13
						instr_o = {5'b00000, instr_i[5], instr_i[12:10], instr_i[6], 4'b0001, instr_i[9:7], 5'b01001, instr_i[4:2], riscv_OpcodeLoad};
					riscv_OpcodeC0Ld:
						// Trace: core/compressed_decoder.sv:113:13
						if (CVA6Cfg[16973])
							// Trace: core/compressed_decoder.sv:115:15
							instr_o = {4'b0000, instr_i[6:5], instr_i[12:10], 5'b00001, instr_i[9:7], 5'b01101, instr_i[4:2], riscv_OpcodeLoad};
						else
							// Trace: core/compressed_decoder.sv:128:15
							if (CVA6Cfg[16471])
								// Trace: core/compressed_decoder.sv:130:17
								instr_o = {5'b00000, instr_i[5], instr_i[12:10], instr_i[6], 4'b0001, instr_i[9:7], 5'b01001, instr_i[4:2], riscv_OpcodeLoadFp};
							else
								// Trace: core/compressed_decoder.sv:144:17
								illegal_instr_o = 1'b1;
					riscv_OpcodeC0Zcb:
						// Trace: core/compressed_decoder.sv:150:13
						if (CVA6Cfg[16542])
							// Trace: core/compressed_decoder.sv:151:15
							(* full_case, parallel_case *)
							case (instr_i[12:10])
								3'b000:
									// Trace: core/compressed_decoder.sv:154:19
									instr_o = {10'b0000000000, instr_i[5], instr_i[6], 2'b01, instr_i[9:7], 5'b10001, instr_i[4:2], riscv_OpcodeLoad};
								3'b001:
									// Trace: core/compressed_decoder.sv:168:19
									if (instr_i[6])
										// Trace: core/compressed_decoder.sv:170:21
										instr_o = {10'b0000000000, instr_i[5], 3'b001, instr_i[9:7], 5'b00101, instr_i[4:2], riscv_OpcodeLoad};
									else
										// Trace: core/compressed_decoder.sv:183:21
										instr_o = {10'b0000000000, instr_i[5], 3'b001, instr_i[9:7], 5'b10101, instr_i[4:2], riscv_OpcodeLoad};
								3'b010:
									// Trace: core/compressed_decoder.sv:199:19
									instr_o = {9'b000000001, instr_i[4:2], 2'b01, instr_i[9:7], 6'b000000, instr_i[5], instr_i[6], riscv_OpcodeStore};
								3'b011:
									// Trace: core/compressed_decoder.sv:215:19
									instr_o = {9'b000000001, instr_i[4:2], 2'b01, instr_i[9:7], 6'b001000, instr_i[5], 1'b0, riscv_OpcodeStore};
								default:
									// Trace: core/compressed_decoder.sv:230:19
									illegal_instr_o = 1'b1;
							endcase
						else begin
							// Trace: core/compressed_decoder.sv:235:15
							instr_o = instr_i;
							// Trace: core/compressed_decoder.sv:236:15
							illegal_instr_o = 1'b1;
						end
					riscv_OpcodeC0Fsd:
						// Trace: core/compressed_decoder.sv:241:13
						if (CVA6Cfg[16471])
							// Trace: core/compressed_decoder.sv:243:15
							instr_o = {4'b0000, instr_i[6:5], instr_i[12], 2'b01, instr_i[4:2], 2'b01, instr_i[9:7], 3'b011, instr_i[11:10], 3'b000, riscv_OpcodeStoreFp};
						else
							// Trace: core/compressed_decoder.sv:257:15
							illegal_instr_o = 1'b1;
					riscv_OpcodeC0Sw:
						// Trace: core/compressed_decoder.sv:263:13
						instr_o = {5'b00000, instr_i[5], instr_i[12], 2'b01, instr_i[4:2], 2'b01, instr_i[9:7], 3'b010, instr_i[11:10], instr_i[6], 2'b00, riscv_OpcodeStore};
					riscv_OpcodeC0Sd:
						// Trace: core/compressed_decoder.sv:284:13
						if (CVA6Cfg[16973])
							// Trace: core/compressed_decoder.sv:285:15
							instr_o = {4'b0000, instr_i[6:5], instr_i[12], 2'b01, instr_i[4:2], 2'b01, instr_i[9:7], 3'b011, instr_i[11:10], 3'b000, riscv_OpcodeStore};
						else
							// Trace: core/compressed_decoder.sv:299:15
							if (CVA6Cfg[16471])
								// Trace: core/compressed_decoder.sv:300:17
								instr_o = {5'b00000, instr_i[5], instr_i[12], 2'b01, instr_i[4:2], 2'b01, instr_i[9:7], 3'b010, instr_i[11:10], instr_i[6], 2'b00, riscv_OpcodeStoreFp};
							else
								// Trace: core/compressed_decoder.sv:315:17
								illegal_instr_o = 1'b1;
					default:
						// Trace: core/compressed_decoder.sv:321:13
						illegal_instr_o = 1'b1;
				endcase
			riscv_OpcodeC1:
				// Trace: core/compressed_decoder.sv:328:9
				(* full_case, parallel_case *)
				case (instr_i[15:13])
					riscv_OpcodeC1Addi:
						// Trace: core/compressed_decoder.sv:332:13
						instr_o = {{6 {instr_i[12]}}, instr_i[12], instr_i[6:2], instr_i[11:7], 3'b000, instr_i[11:7], riscv_OpcodeOpImm};
					riscv_OpcodeC1Addiw:
						// Trace: core/compressed_decoder.sv:345:13
						if (CVA6Cfg[16973]) begin
							begin
								// Trace: core/compressed_decoder.sv:347:15
								if (instr_i[11:7] != 5'h00)
									// Trace: core/compressed_decoder.sv:348:17
									instr_o = {{6 {instr_i[12]}}, instr_i[12], instr_i[6:2], instr_i[11:7], 3'b000, instr_i[11:7], riscv_OpcodeOpImm32};
								else
									// Trace: core/compressed_decoder.sv:358:17
									illegal_instr_o = 1'b1;
							end
						end
						else
							// Trace: core/compressed_decoder.sv:362:15
							instr_o = {instr_i[12], instr_i[8], instr_i[10:9], instr_i[6], instr_i[7], instr_i[2], instr_i[11], instr_i[5:3], {9 {instr_i[12]}}, 5'b00001, riscv_OpcodeJal};
					riscv_OpcodeC1Li:
						// Trace: core/compressed_decoder.sv:383:13
						instr_o = {{6 {instr_i[12]}}, instr_i[12], instr_i[6:2], 8'b00000000, instr_i[11:7], riscv_OpcodeOpImm};
					riscv_OpcodeC1LuiAddi16sp: begin
						// Trace: core/compressed_decoder.sv:396:13
						instr_o = {{15 {instr_i[12]}}, instr_i[6:2], instr_i[11:7], riscv_OpcodeLui};
						// Trace: core/compressed_decoder.sv:398:13
						if (instr_i[11:7] == 5'h02)
							// Trace: core/compressed_decoder.sv:400:15
							instr_o = {{3 {instr_i[12]}}, instr_i[4:3], instr_i[5], instr_i[2], instr_i[6], 17'h00202, riscv_OpcodeOpImm};
						if ({instr_i[12], instr_i[6:2]} == 6'b000000)
							// Trace: core/compressed_decoder.sv:414:54
							illegal_instr_o = 1'b1;
					end
					riscv_OpcodeC1MiscAlu:
						// Trace: core/compressed_decoder.sv:418:13
						(* full_case, parallel_case *)
						case (instr_i[11:10])
							2'b00, 2'b01:
								// Trace: core/compressed_decoder.sv:422:17
								instr_o = {1'b0, instr_i[10], 4'b0000, instr_i[12], instr_i[6:2], 2'b01, instr_i[9:7], 5'b10101, instr_i[9:7], riscv_OpcodeOpImm};
							2'b10:
								// Trace: core/compressed_decoder.sv:439:17
								instr_o = {{6 {instr_i[12]}}, instr_i[12], instr_i[6:2], 2'b01, instr_i[9:7], 5'b11101, instr_i[9:7], riscv_OpcodeOpImm};
							2'b11:
								// Trace: core/compressed_decoder.sv:453:17
								(* full_case, parallel_case *)
								case ({instr_i[12], instr_i[6:5]})
									3'b000:
										// Trace: core/compressed_decoder.sv:458:21
										instr_o = {9'b010000001, instr_i[4:2], 2'b01, instr_i[9:7], 5'b00001, instr_i[9:7], riscv_OpcodeOp};
									3'b001:
										// Trace: core/compressed_decoder.sv:474:21
										instr_o = {9'b000000001, instr_i[4:2], 2'b01, instr_i[9:7], 5'b10001, instr_i[9:7], riscv_OpcodeOp};
									3'b010:
										// Trace: core/compressed_decoder.sv:489:21
										instr_o = {9'b000000001, instr_i[4:2], 2'b01, instr_i[9:7], 5'b11001, instr_i[9:7], riscv_OpcodeOp};
									3'b011:
										// Trace: core/compressed_decoder.sv:504:21
										instr_o = {9'b000000001, instr_i[4:2], 2'b01, instr_i[9:7], 5'b11101, instr_i[9:7], riscv_OpcodeOp};
									3'b100:
										// Trace: core/compressed_decoder.sv:518:21
										if (CVA6Cfg[16973])
											// Trace: core/compressed_decoder.sv:520:23
											instr_o = {9'b010000001, instr_i[4:2], 2'b01, instr_i[9:7], 5'b00001, instr_i[9:7], riscv_OpcodeOp32};
										else
											// Trace: core/compressed_decoder.sv:533:23
											illegal_instr_o = 1'b1;
									3'b101:
										// Trace: core/compressed_decoder.sv:538:21
										if (CVA6Cfg[16973])
											// Trace: core/compressed_decoder.sv:540:23
											instr_o = {9'b000000001, instr_i[4:2], 2'b01, instr_i[9:7], 5'b00001, instr_i[9:7], riscv_OpcodeOp32};
										else
											// Trace: core/compressed_decoder.sv:553:23
											illegal_instr_o = 1'b1;
									3'b110:
										// Trace: core/compressed_decoder.sv:558:21
										if (CVA6Cfg[16542])
											// Trace: core/compressed_decoder.sv:560:23
											instr_o = {9'b000000101, instr_i[4:2], 2'b01, instr_i[9:7], 5'b00001, instr_i[9:7], riscv_OpcodeOp};
										else begin
											// Trace: core/compressed_decoder.sv:573:23
											instr_o = instr_i;
											// Trace: core/compressed_decoder.sv:574:23
											illegal_instr_o = 1'b1;
										end
									3'b111:
										// Trace: core/compressed_decoder.sv:579:21
										if (CVA6Cfg[16542])
											// Trace: core/compressed_decoder.sv:581:23
											(* full_case, parallel_case *)
											case (instr_i[4:2])
												3'b000:
													// Trace: core/compressed_decoder.sv:584:27
													instr_o = {14'h03fd, instr_i[9:7], 5'b11101, instr_i[9:7], riscv_OpcodeOpImm};
												3'b001:
													// Trace: core/compressed_decoder.sv:597:27
													if (CVA6Cfg[16546])
														// Trace: core/compressed_decoder.sv:599:29
														instr_o = {14'h1811, instr_i[9:7], 5'b00101, instr_i[9:7], riscv_OpcodeOpImm};
													else
														// Trace: core/compressed_decoder.sv:609:36
														illegal_instr_o = 1'b1;
												3'b010:
													// Trace: core/compressed_decoder.sv:613:27
													if (CVA6Cfg[16546]) begin
														begin
															// Trace: core/compressed_decoder.sv:615:29
															if (CVA6Cfg[16973])
																// Trace: core/compressed_decoder.sv:616:31
																instr_o = {14'h0201, instr_i[9:7], 5'b10001, instr_i[9:7], riscv_OpcodeOp32};
															else
																// Trace: core/compressed_decoder.sv:627:31
																instr_o = {14'h0201, instr_i[9:7], 5'b10001, instr_i[9:7], riscv_OpcodeOp};
														end
													end
													else
														// Trace: core/compressed_decoder.sv:638:36
														illegal_instr_o = 1'b1;
												3'b011:
													// Trace: core/compressed_decoder.sv:642:27
													if (CVA6Cfg[16546])
														// Trace: core/compressed_decoder.sv:644:29
														instr_o = {14'h1815, instr_i[9:7], 5'b00101, instr_i[9:7], riscv_OpcodeOpImm};
													else
														// Trace: core/compressed_decoder.sv:654:36
														illegal_instr_o = 1'b1;
												3'b100:
													// Trace: core/compressed_decoder.sv:658:27
													if (CVA6Cfg[16546]) begin
														begin
															// Trace: core/compressed_decoder.sv:660:29
															if (CVA6Cfg[16973])
																// Trace: core/compressed_decoder.sv:661:31
																instr_o = {14'h0201, instr_i[9:7], 5'b00001, instr_i[9:7], riscv_OpcodeOp32};
															else
																// Trace: core/compressed_decoder.sv:672:31
																illegal_instr_o = 1'b1;
														end
													end
													else
														// Trace: core/compressed_decoder.sv:674:36
														illegal_instr_o = 1'b1;
												3'b101:
													// Trace: core/compressed_decoder.sv:679:27
													instr_o = {14'h3ffd, instr_i[9:7], 5'b10001, instr_i[9:7], riscv_OpcodeOpImm};
												default: begin
													// Trace: core/compressed_decoder.sv:691:27
													instr_o = instr_i;
													// Trace: core/compressed_decoder.sv:692:27
													illegal_instr_o = 1;
												end
											endcase
								endcase
						endcase
					riscv_OpcodeC1J:
						// Trace: core/compressed_decoder.sv:704:13
						instr_o = {instr_i[12], instr_i[8], instr_i[10:9], instr_i[6], instr_i[7], instr_i[2], instr_i[11], instr_i[5:3], {9 {instr_i[12]}}, 4'b0000, ~instr_i[15], riscv_OpcodeJal};
					riscv_OpcodeC1Beqz, riscv_OpcodeC1Bnez:
						// Trace: core/compressed_decoder.sv:723:13
						instr_o = {{4 {instr_i[12]}}, instr_i[6:5], instr_i[2], 7'b0000001, instr_i[9:7], 2'b00, instr_i[13], instr_i[11:10], instr_i[4:3], instr_i[12], riscv_OpcodeBranch};
				endcase
			riscv_OpcodeC2:
				// Trace: core/compressed_decoder.sv:743:9
				(* full_case, parallel_case *)
				case (instr_i[15:13])
					riscv_OpcodeC2Slli:
						// Trace: core/compressed_decoder.sv:746:13
						instr_o = {6'b000000, instr_i[12], instr_i[6:2], instr_i[11:7], 3'b001, instr_i[11:7], riscv_OpcodeOpImm};
					riscv_OpcodeC2Fldsp:
						// Trace: core/compressed_decoder.sv:758:13
						if (CVA6Cfg[16471])
							// Trace: core/compressed_decoder.sv:760:15
							instr_o = {3'b000, instr_i[4:2], instr_i[12], instr_i[6:5], 11'h013, instr_i[11:7], riscv_OpcodeLoadFp};
						else
							// Trace: core/compressed_decoder.sv:772:15
							illegal_instr_o = 1'b1;
					riscv_OpcodeC2Lwsp: begin
						// Trace: core/compressed_decoder.sv:778:13
						instr_o = {4'b0000, instr_i[3:2], instr_i[12], instr_i[6:4], 10'h012, instr_i[11:7], riscv_OpcodeLoad};
						// Trace: core/compressed_decoder.sv:789:13
						if (instr_i[11:7] == 5'b00000)
							// Trace: core/compressed_decoder.sv:789:40
							illegal_instr_o = 1'b1;
					end
					riscv_OpcodeC2Ldsp:
						// Trace: core/compressed_decoder.sv:797:13
						if (CVA6Cfg[16973]) begin
							// Trace: core/compressed_decoder.sv:798:15
							instr_o = {3'b000, instr_i[4:2], instr_i[12], instr_i[6:5], 11'h013, instr_i[11:7], riscv_OpcodeLoad};
							// Trace: core/compressed_decoder.sv:809:15
							if (instr_i[11:7] == 5'b00000)
								// Trace: core/compressed_decoder.sv:809:42
								illegal_instr_o = 1'b1;
						end
						else
							// Trace: core/compressed_decoder.sv:811:15
							if (CVA6Cfg[16471])
								// Trace: core/compressed_decoder.sv:812:17
								instr_o = {4'b0000, instr_i[3:2], instr_i[12], instr_i[6:4], 10'h012, instr_i[11:7], riscv_OpcodeLoadFp};
							else
								// Trace: core/compressed_decoder.sv:824:17
								illegal_instr_o = 1'b1;
					riscv_OpcodeC2JalrMvAdd:
						// Trace: core/compressed_decoder.sv:830:13
						if (instr_i[12] == 1'b0) begin
							// Trace: core/compressed_decoder.sv:832:15
							instr_o = {7'b0000000, instr_i[6:2], 8'b00000000, instr_i[11:7], riscv_OpcodeOp};
							// Trace: core/compressed_decoder.sv:834:15
							if (instr_i[6:2] == 5'b00000) begin
								// Trace: core/compressed_decoder.sv:836:17
								instr_o = {12'b000000000000, instr_i[11:7], 8'b00000000, riscv_OpcodeJalr};
								// Trace: core/compressed_decoder.sv:838:17
								illegal_instr_o = (instr_i[11:7] != {5 {1'sb0}} ? 1'b0 : 1'b1);
							end
						end
						else begin
							// Trace: core/compressed_decoder.sv:842:15
							instr_o = {7'b0000000, instr_i[6:2], instr_i[11:7], 3'b000, instr_i[11:7], riscv_OpcodeOp};
							// Trace: core/compressed_decoder.sv:844:15
							if (instr_i[6:2] == 5'b00000) begin
								begin
									// Trace: core/compressed_decoder.sv:845:17
									if (instr_i[11:7] == 5'b00000)
										// Trace: core/compressed_decoder.sv:847:19
										instr_o = 32'h00100073;
									else
										// Trace: core/compressed_decoder.sv:850:19
										instr_o = {12'b000000000000, instr_i[11:7], 8'b00000001, riscv_OpcodeJalr};
								end
							end
						end
					riscv_OpcodeC2Fsdsp:
						// Trace: core/compressed_decoder.sv:857:13
						if (CVA6Cfg[16471])
							// Trace: core/compressed_decoder.sv:859:15
							instr_o = {3'b000, instr_i[9:7], instr_i[12], instr_i[6:2], 8'h13, instr_i[11:10], 3'b000, riscv_OpcodeStoreFp};
						else if (CVA6Cfg[16541]) begin
							begin
								// Trace: core/compressed_decoder.sv:871:15
								if (((instr_i[12:10] == 3'b110) || (instr_i[12:10] == 3'b111)) || (instr_i[12:10] == 3'b011)) begin
									// Trace: core/compressed_decoder.sv:872:17
									is_macro_instr_o = 1;
									// Trace: core/compressed_decoder.sv:873:17
									instr_o = instr_i;
								end
								else
									// Trace: core/compressed_decoder.sv:875:17
									illegal_instr_o = 1'b1;
							end
						end
						else
							// Trace: core/compressed_decoder.sv:878:15
							illegal_instr_o = 1'b1;
					riscv_OpcodeC2Swsp:
						// Trace: core/compressed_decoder.sv:884:13
						instr_o = {4'b0000, instr_i[8:7], instr_i[12], instr_i[6:2], 8'h12, instr_i[11:9], 2'b00, riscv_OpcodeStore};
					riscv_OpcodeC2Sdsp:
						// Trace: core/compressed_decoder.sv:902:13
						if (CVA6Cfg[16973])
							// Trace: core/compressed_decoder.sv:903:15
							instr_o = {3'b000, instr_i[9:7], instr_i[12], instr_i[6:2], 8'h13, instr_i[11:10], 3'b000, riscv_OpcodeStore};
						else
							// Trace: core/compressed_decoder.sv:915:15
							if (CVA6Cfg[16471])
								// Trace: core/compressed_decoder.sv:916:17
								instr_o = {4'b0000, instr_i[8:7], instr_i[12], instr_i[6:2], 8'h12, instr_i[11:9], 2'b00, riscv_OpcodeStoreFp};
							else
								// Trace: core/compressed_decoder.sv:928:17
								illegal_instr_o = 1'b1;
					default:
						// Trace: core/compressed_decoder.sv:934:13
						illegal_instr_o = 1'b1;
				endcase
			default:
				// Trace: core/compressed_decoder.sv:940:16
				is_compressed_o = 1'b0;
		endcase
		if (illegal_instr_o)
			// Trace: core/compressed_decoder.sv:945:7
			instr_o = instr_i;
	end
	initial _sv2v_0 = 0;
endmodule
