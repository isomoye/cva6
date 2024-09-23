module dm_mem (
	clk_i,
	rst_ni,
	debug_req_o,
	hartsel_i,
	haltreq_i,
	resumereq_i,
	clear_resumeack_i,
	halted_o,
	resuming_o,
	progbuf_i,
	data_i,
	data_o,
	data_valid_o,
	cmd_valid_i,
	cmd_i,
	cmderror_valid_o,
	cmderror_o,
	cmdbusy_o,
	req_i,
	we_i,
	addr_i,
	wdata_i,
	be_i,
	rdata_o
);
	reg _sv2v_0;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:20:13
	parameter [31:0] NrHarts = 1;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:21:13
	parameter [31:0] BusWidth = 32;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:22:13
	parameter [NrHarts - 1:0] SelectableHarts = {NrHarts {1'b1}};
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:23:13
	parameter [31:0] DmBaseAddress = 1'sb0;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:25:3
	input wire clk_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:26:3
	input wire rst_ni;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:28:3
	output wire [NrHarts - 1:0] debug_req_o;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:29:3
	input wire [19:0] hartsel_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:31:3
	input wire [NrHarts - 1:0] haltreq_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:32:3
	input wire [NrHarts - 1:0] resumereq_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:33:3
	input wire clear_resumeack_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:36:3
	output wire [NrHarts - 1:0] halted_o;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:37:3
	output wire [NrHarts - 1:0] resuming_o;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:39:3
	localparam [4:0] dm_ProgBufSize = 5'h08;
	input wire [255:0] progbuf_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:41:3
	localparam [3:0] dm_DataCount = 4'h2;
	input wire [63:0] data_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:42:3
	output reg [63:0] data_o;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:43:3
	output reg data_valid_o;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:45:3
	input wire cmd_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:46:3
	// removed localparam type dm_cmd_e
	// removed localparam type dm_command_t
	input wire [31:0] cmd_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:47:3
	output reg cmderror_valid_o;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:48:3
	// removed localparam type dm_cmderr_e
	output reg [2:0] cmderror_o;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:49:3
	output reg cmdbusy_o;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:53:3
	input wire req_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:54:3
	input wire we_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:55:3
	input wire [BusWidth - 1:0] addr_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:56:3
	input wire [BusWidth - 1:0] wdata_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:57:3
	input wire [(BusWidth / 8) - 1:0] be_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:58:3
	output wire [BusWidth - 1:0] rdata_o;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:60:3
	localparam [31:0] DbgAddressBits = 12;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:61:3
	localparam [31:0] HartSelLen = (NrHarts == 1 ? 1 : $clog2(NrHarts));
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:62:3
	localparam [31:0] NrHartsAligned = 2 ** HartSelLen;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:63:3
	localparam [31:0] MaxAar = (BusWidth == 64 ? 4 : 3);
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:64:3
	localparam [0:0] HasSndScratch = DmBaseAddress != 0;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:66:3
	localparam [4:0] LoadBaseAddr = (DmBaseAddress == 0 ? 5'd0 : 5'd10);
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:68:3
	localparam [11:0] dm_DataAddr = 12'h380;
	localparam [11:0] DataBaseAddr = dm_DataAddr;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:69:3
	localparam [11:0] DataEndAddr = 903;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:70:3
	localparam [11:0] ProgBufBaseAddr = 864;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:71:3
	localparam [11:0] ProgBufEndAddr = 895;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:72:3
	localparam [11:0] AbstractCmdBaseAddr = ProgBufBaseAddr - 40;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:73:3
	localparam [11:0] AbstractCmdEndAddr = ProgBufBaseAddr - 1;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:75:3
	localparam [11:0] WhereToAddr = 'h300;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:76:3
	localparam [11:0] FlagsBaseAddr = 'h400;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:77:3
	localparam [11:0] FlagsEndAddr = 'h7ff;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:79:3
	localparam [11:0] HaltedAddr = 'h100;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:80:3
	localparam [11:0] GoingAddr = 'h104;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:81:3
	localparam [11:0] ResumingAddr = 'h108;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:82:3
	localparam [11:0] ExceptionAddr = 'h10c;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:84:3
	wire [255:0] progbuf;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:85:3
	reg [511:0] abstract_cmd;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:86:3
	wire [NrHarts - 1:0] halted_d;
	reg [NrHarts - 1:0] halted_q;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:87:3
	wire [NrHarts - 1:0] resuming_d;
	reg [NrHarts - 1:0] resuming_q;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:88:3
	reg resume;
	reg go;
	reg going;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:90:3
	reg exception;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:91:3
	reg unsupported_command;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:93:3
	wire [63:0] rom_rdata;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:94:3
	reg [63:0] rdata_d;
	reg [63:0] rdata_q;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:95:3
	reg word_enable32_q;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:99:3
	wire [HartSelLen - 1:0] hartsel;
	wire [HartSelLen - 1:0] wdata_hartsel;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:101:3
	assign hartsel = hartsel_i[HartSelLen - 1:0];
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:102:3
	assign wdata_hartsel = wdata_i[HartSelLen - 1:0];
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:104:3
	wire [NrHartsAligned - 1:0] resumereq_aligned;
	wire [NrHartsAligned - 1:0] haltreq_aligned;
	reg [NrHartsAligned - 1:0] halted_d_aligned;
	wire [NrHartsAligned - 1:0] halted_q_aligned;
	reg [NrHartsAligned - 1:0] halted_aligned;
	wire [NrHartsAligned - 1:0] resumereq_wdata_aligned;
	reg [NrHartsAligned - 1:0] resuming_d_aligned;
	wire [NrHartsAligned - 1:0] resuming_q_aligned;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:109:3
	function automatic [NrHartsAligned - 1:0] sv2v_cast_DFF07;
		input reg [NrHartsAligned - 1:0] inp;
		sv2v_cast_DFF07 = inp;
	endfunction
	assign resumereq_aligned = sv2v_cast_DFF07(resumereq_i);
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:110:3
	assign haltreq_aligned = sv2v_cast_DFF07(haltreq_i);
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:111:3
	assign resumereq_wdata_aligned = sv2v_cast_DFF07(resumereq_i);
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:113:3
	assign halted_q_aligned = sv2v_cast_DFF07(halted_q);
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:114:3
	function automatic [NrHarts - 1:0] sv2v_cast_178F2;
		input reg [NrHarts - 1:0] inp;
		sv2v_cast_178F2 = inp;
	endfunction
	assign halted_d = sv2v_cast_178F2(halted_d_aligned);
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:115:3
	assign resuming_q_aligned = sv2v_cast_DFF07(resuming_q);
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:116:3
	assign resuming_d = sv2v_cast_178F2(resuming_d_aligned);
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:120:3
	wire fwd_rom_d;
	reg fwd_rom_q;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:121:3
	// removed localparam type dm_ac_ar_cmd_t
	wire [23:0] ac_ar;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:124:3
	function automatic [23:0] sv2v_cast_24;
		input reg [23:0] inp;
		sv2v_cast_24 = inp;
	endfunction
	assign ac_ar = sv2v_cast_24(cmd_i[23-:24]);
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:125:3
	assign debug_req_o = haltreq_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:126:3
	assign halted_o = halted_q;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:127:3
	assign resuming_o = resuming_q;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:130:3
	assign progbuf = progbuf_i;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:132:3
	// removed localparam type state_e
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:133:3
	reg [1:0] state_d;
	reg [1:0] state_q;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:136:3
	always @(*) begin : p_hart_ctrl_queue
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:137:5
		cmderror_valid_o = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:138:5
		cmderror_o = 3'd0;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:139:5
		state_d = state_q;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:140:5
		go = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:141:5
		resume = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:142:5
		cmdbusy_o = 1'b1;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:144:5
		(* full_case, parallel_case *)
		case (state_q)
			2'd0: begin
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:146:9
				cmdbusy_o = 1'b0;
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:147:9
				if ((cmd_valid_i && halted_q_aligned[hartsel]) && !unsupported_command)
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:149:11
					state_d = 2'd1;
				else if (cmd_valid_i) begin
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:152:11
					cmderror_valid_o = 1'b1;
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:153:11
					cmderror_o = 3'd4;
				end
				if (((resumereq_aligned[hartsel] && !resuming_q_aligned[hartsel]) && !haltreq_aligned[hartsel]) && halted_q_aligned[hartsel])
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:159:11
					state_d = 2'd2;
			end
			2'd1: begin
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:165:9
				cmdbusy_o = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:166:9
				go = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:168:9
				if (going)
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:169:13
					state_d = 2'd3;
			end
			2'd2: begin
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:174:9
				cmdbusy_o = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:175:9
				resume = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:176:9
				if (resuming_q_aligned[hartsel])
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:177:11
					state_d = 2'd0;
			end
			2'd3: begin
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:182:9
				cmdbusy_o = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:183:9
				go = 1'b0;
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:185:9
				if (halted_aligned[hartsel])
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:186:11
					state_d = 2'd0;
			end
			default:
				;
		endcase
		if (unsupported_command && cmd_valid_i) begin
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:196:7
			cmderror_valid_o = 1'b1;
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:197:7
			cmderror_o = 3'd2;
		end
		if (exception) begin
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:201:7
			cmderror_valid_o = 1'b1;
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:202:7
			cmderror_o = 3'd3;
		end
	end
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:207:3
	wire [63:0] word_mux;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:208:3
	assign word_mux = (fwd_rom_q ? rom_rdata : rdata_q);
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:210:3
	generate
		if (BusWidth == 64) begin : gen_word_mux64
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:211:5
			assign rdata_o = word_mux;
		end
		else begin : gen_word_mux32
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:213:5
			assign rdata_o = (word_enable32_q ? word_mux[32+:32] : word_mux[0+:32]);
		end
	endgenerate
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:217:3
	reg [63:0] data_bits;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:218:3
	reg [63:0] rdata;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:219:3
	localparam [63:0] dm_HaltAddress = 64'h0000000000000800;
	localparam [63:0] dm_ResumeAddress = 2052;
	function automatic [31:0] dm_jal;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:327:40
		input reg [4:0] rd;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:328:40
		input reg [20:0] imm;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:330:5
		dm_jal = {imm[20], imm[10:1], imm[11], imm[19:12], rd, 7'h6f};
	endfunction
	function automatic [20:0] sv2v_cast_21;
		input reg [20:0] inp;
		sv2v_cast_21 = inp;
	endfunction
	function automatic [$clog2(5'h08) - 1:0] sv2v_cast_63A1A;
		input reg [$clog2(5'h08) - 1:0] inp;
		sv2v_cast_63A1A = inp;
	endfunction
	function automatic [2:0] sv2v_cast_3;
		input reg [2:0] inp;
		sv2v_cast_3 = inp;
	endfunction
	function automatic [11:0] sv2v_cast_C1AAB;
		input reg [11:0] inp;
		sv2v_cast_C1AAB = inp;
	endfunction
	always @(*) begin : p_rw_logic
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:221:5
		halted_d_aligned = sv2v_cast_DFF07(halted_q);
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:222:5
		resuming_d_aligned = sv2v_cast_DFF07(resuming_q);
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:223:5
		rdata_d = rdata_q;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:225:5
		data_bits = data_i;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:226:5
		rdata = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:229:5
		data_valid_o = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:230:5
		exception = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:231:5
		halted_aligned = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:232:5
		going = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:235:5
		if (clear_resumeack_i)
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:236:7
			resuming_d_aligned[hartsel] = 1'b0;
		if (req_i) begin
			begin
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:241:7
				if (we_i) begin
					begin
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:242:9
						(* full_case, parallel_case *)
						if (addr_i[11:0] == HaltedAddr) begin
							// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:244:13
							halted_aligned[wdata_hartsel] = 1'b1;
							// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:245:13
							halted_d_aligned[wdata_hartsel] = 1'b1;
						end
						else if (addr_i[11:0] == GoingAddr)
							// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:248:13
							going = 1'b1;
						else if (addr_i[11:0] == ResumingAddr) begin
							// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:252:13
							halted_d_aligned[wdata_hartsel] = 1'b0;
							// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:254:13
							resuming_d_aligned[wdata_hartsel] = 1'b1;
						end
						else if (addr_i[11:0] == ExceptionAddr)
							// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:257:26
							exception = 1'b1;
						else if ((DataBaseAddr <= addr_i[11:0]) && (DataEndAddr >= addr_i[11:0])) begin
							// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:260:13
							data_valid_o = 1'b1;
							// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:261:13
							begin : sv2v_autoblock_1
								// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:261:18
								reg signed [31:0] i;
								// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:261:18
								for (i = 0; i < (BusWidth / 8); i = i + 1)
									begin
										// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:262:15
										if (be_i[i])
											// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:263:17
											data_bits[i * 8+:8] = wdata_i[i * 8+:8];
									end
							end
						end
					end
				end
				else
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:272:9
					(* full_case, parallel_case *)
					if (addr_i[11:0] == WhereToAddr) begin
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:276:13
						if (resumereq_wdata_aligned[wdata_hartsel])
							// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:277:15
							rdata_d = {32'b00000000000000000000000000000000, dm_jal(1'sb0, sv2v_cast_21(dm_ResumeAddress[11:0]) - sv2v_cast_21(WhereToAddr))};
						if (cmdbusy_o) begin
							begin
								// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:284:15
								if (((cmd_i[31-:8] == 8'h00) && !ac_ar[17]) && ac_ar[18])
									// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:286:17
									rdata_d = {32'b00000000000000000000000000000000, dm_jal(1'sb0, sv2v_cast_21(ProgBufBaseAddr) - sv2v_cast_21(WhereToAddr))};
								else
									// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:289:17
									rdata_d = {32'b00000000000000000000000000000000, dm_jal(1'sb0, sv2v_cast_21(AbstractCmdBaseAddr) - sv2v_cast_21(WhereToAddr))};
							end
						end
					end
					else if ((DataBaseAddr <= addr_i[11:0]) && (DataEndAddr >= addr_i[11:0]))
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:295:13
						rdata_d = {data_i[sv2v_cast_63A1A((addr_i[11:3] - DataBaseAddr[11:3]) + 1'b1) * 32+:32], data_i[sv2v_cast_63A1A(addr_i[11:3] - DataBaseAddr[11:3]) * 32+:32]};
					else if ((ProgBufBaseAddr <= addr_i[11:0]) && (ProgBufEndAddr >= addr_i[11:0]))
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:304:13
						rdata_d = progbuf[sv2v_cast_63A1A(addr_i[11:3] - ProgBufBaseAddr[11:3]) * 64+:64];
					else if ((AbstractCmdBaseAddr <= addr_i[11:0]) && (AbstractCmdEndAddr >= addr_i[11:0]))
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:311:13
						rdata_d = abstract_cmd[sv2v_cast_3(addr_i[11:3] - AbstractCmdBaseAddr[11:3]) * 64+:64];
					else if ((FlagsBaseAddr <= addr_i[11:0]) && (FlagsEndAddr >= addr_i[11:0])) begin
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:317:13
						if (({addr_i[11:3], 3'b000} - FlagsBaseAddr[11:0]) == (sv2v_cast_C1AAB(hartsel) & {{9 {1'b1}}, 3'b000}))
							// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:319:15
							rdata[(sv2v_cast_C1AAB(hartsel) & sv2v_cast_C1AAB(3'b111)) * 8+:8] = {6'b000000, resume, go};
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:321:13
						rdata_d = rdata;
					end
			end
		end
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:328:5
		data_o = data_bits;
	end
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:331:3
	// removed localparam type dm_csr_reg_t
	function automatic [31:0] dm_auipc;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:369:42
		input reg [4:0] rd;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:370:42
		input reg [20:0] imm;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:372:5
		dm_auipc = {imm[20], imm[10:1], imm[11], imm[19:12], rd, 7'h17};
	endfunction
	function automatic [31:0] dm_csrr;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:405:41
		input reg [11:0] csr;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:406:41
		input reg [4:0] dest;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:408:5
		dm_csrr = {csr, 8'h02, dest, 7'h73};
	endfunction
	function automatic [31:0] dm_csrw;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:399:41
		input reg [11:0] csr;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:400:41
		input reg [4:0] rs1;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:402:5
		dm_csrw = {csr, rs1, 15'h1073};
	endfunction
	function automatic [31:0] dm_ebreak;
		input reg _sv2v_unused;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:421:5
		dm_ebreak = 32'h00100073;
	endfunction
	function automatic [31:0] dm_float_load;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:383:47
		input reg [2:0] size;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:384:47
		input reg [4:0] dest;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:385:47
		input reg [4:0] base;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:386:47
		input reg [11:0] offset;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:388:5
		dm_float_load = {offset[11:0], base, size, dest, 7'b0000111};
	endfunction
	function automatic [31:0] dm_float_store;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:391:48
		input reg [2:0] size;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:392:48
		input reg [4:0] src;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:393:48
		input reg [4:0] base;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:394:48
		input reg [11:0] offset;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:396:5
		dm_float_store = {offset[11:5], src, base, size, offset[4:0], 7'b0100111};
	endfunction
	function automatic [31:0] dm_illegal;
		input reg _sv2v_unused;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:433:5
		dm_illegal = 32'h00000000;
	endfunction
	function automatic [31:0] dm_load;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:361:41
		input reg [2:0] size;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:362:41
		input reg [4:0] dest;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:363:41
		input reg [4:0] base;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:364:41
		input reg [11:0] offset;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:366:5
		dm_load = {offset[11:0], base, size, dest, 7'h03};
	endfunction
	function automatic [31:0] dm_nop;
		input reg _sv2v_unused;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:429:5
		dm_nop = 32'h00000013;
	endfunction
	function automatic [31:0] dm_slli;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:347:41
		input reg [4:0] rd;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:348:41
		input reg [4:0] rs1;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:349:41
		input reg [5:0] shamt;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:351:5
		dm_slli = {6'b000000, shamt[5:0], rs1, 3'h1, rd, 7'h13};
	endfunction
	function automatic [31:0] dm_srli;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:354:41
		input reg [4:0] rd;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:355:41
		input reg [4:0] rs1;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:356:41
		input reg [5:0] shamt;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:358:5
		dm_srli = {6'b000000, shamt[5:0], rs1, 3'h5, rd, 7'h13};
	endfunction
	function automatic [31:0] dm_store;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:375:42
		input reg [2:0] size;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:376:42
		input reg [4:0] src;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:377:42
		input reg [4:0] base;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:378:42
		input reg [11:0] offset;
		// Trace: corev_apu/riscv-dbg/src/dm_pkg.sv:380:5
		dm_store = {offset[11:5], src, base, size, offset[4:0], 7'h23};
	endfunction
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	always @(*) begin : p_abstract_cmd_rom
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:333:5
		unsupported_command = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:336:5
		abstract_cmd[31-:32] = dm_illegal(0);
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:338:5
		abstract_cmd[63-:32] = (HasSndScratch ? dm_auipc(5'd10, 1'sb0) : dm_nop(0));
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:340:5
		abstract_cmd[95-:32] = (HasSndScratch ? dm_srli(5'd10, 5'd10, 6'd12) : dm_nop(0));
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:341:5
		abstract_cmd[127-:32] = (HasSndScratch ? dm_slli(5'd10, 5'd10, 6'd12) : dm_nop(0));
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:342:5
		abstract_cmd[159-:32] = dm_nop(0);
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:343:5
		abstract_cmd[191-:32] = dm_nop(0);
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:344:5
		abstract_cmd[223-:32] = dm_nop(0);
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:345:5
		abstract_cmd[255-:32] = dm_nop(0);
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:346:5
		abstract_cmd[287-:32] = (HasSndScratch ? dm_csrr(12'h7b3, 5'd10) : dm_nop(0));
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:347:5
		abstract_cmd[319-:32] = dm_ebreak(0);
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:348:5
		abstract_cmd[320+:192] = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:351:5
		(* full_case, parallel_case *)
		case (cmd_i[31-:8])
			8'h00: begin
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:356:9
				if (((sv2v_cast_32(ac_ar[22-:3]) < MaxAar) && ac_ar[17]) && ac_ar[16]) begin
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:358:11
					abstract_cmd[31-:32] = (HasSndScratch ? dm_csrw(12'h7b3, 5'd10) : dm_nop(0));
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:360:11
					if (ac_ar[15:14] != {2 {1'sb0}}) begin
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:361:13
						abstract_cmd[31-:32] = dm_ebreak(0);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:362:13
						unsupported_command = 1'b1;
					end
					else if (((HasSndScratch && ac_ar[12]) && !ac_ar[5]) && (ac_ar[4:0] == 5'd10)) begin
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:368:13
						abstract_cmd[159-:32] = dm_csrw(12'h7b2, 5'd8);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:370:13
						abstract_cmd[191-:32] = dm_load(ac_ar[22-:3], 5'd8, LoadBaseAddr, dm_DataAddr);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:372:13
						abstract_cmd[223-:32] = dm_csrw(12'h7b3, 5'd8);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:374:13
						abstract_cmd[255-:32] = dm_csrr(12'h7b2, 5'd8);
					end
					else if (ac_ar[12]) begin
						begin
							// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:378:13
							if (ac_ar[5])
								// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:379:15
								abstract_cmd[159-:32] = dm_float_load(ac_ar[22-:3], ac_ar[4:0], LoadBaseAddr, dm_DataAddr);
							else
								// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:382:15
								abstract_cmd[159-:32] = dm_load(ac_ar[22-:3], ac_ar[4:0], LoadBaseAddr, dm_DataAddr);
						end
					end
					else begin
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:389:13
						abstract_cmd[159-:32] = dm_csrw(12'h7b2, 5'd8);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:391:13
						abstract_cmd[191-:32] = dm_load(ac_ar[22-:3], 5'd8, LoadBaseAddr, dm_DataAddr);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:393:13
						abstract_cmd[223-:32] = dm_csrw(ac_ar[11:0], 5'd8);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:395:13
						abstract_cmd[255-:32] = dm_csrr(12'h7b2, 5'd8);
					end
				end
				else if (((sv2v_cast_32(ac_ar[22-:3]) < MaxAar) && ac_ar[17]) && !ac_ar[16]) begin
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:399:11
					abstract_cmd[31-:32] = (HasSndScratch ? dm_csrw(12'h7b3, LoadBaseAddr) : dm_nop(0));
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:403:11
					if (ac_ar[15:14] != {2 {1'sb0}}) begin
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:404:15
						abstract_cmd[31-:32] = dm_ebreak(0);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:405:15
						unsupported_command = 1'b1;
					end
					else if (((HasSndScratch && ac_ar[12]) && !ac_ar[5]) && (ac_ar[4:0] == 5'd10)) begin
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:411:13
						abstract_cmd[159-:32] = dm_csrw(12'h7b2, 5'd8);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:413:13
						abstract_cmd[191-:32] = dm_csrr(12'h7b3, 5'd8);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:415:13
						abstract_cmd[223-:32] = dm_store(ac_ar[22-:3], 5'd8, LoadBaseAddr, dm_DataAddr);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:417:13
						abstract_cmd[255-:32] = dm_csrr(12'h7b2, 5'd8);
					end
					else if (ac_ar[12]) begin
						begin
							// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:421:13
							if (ac_ar[5])
								// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:422:15
								abstract_cmd[159-:32] = dm_float_store(ac_ar[22-:3], ac_ar[4:0], LoadBaseAddr, dm_DataAddr);
							else
								// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:425:15
								abstract_cmd[159-:32] = dm_store(ac_ar[22-:3], ac_ar[4:0], LoadBaseAddr, dm_DataAddr);
						end
					end
					else begin
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:432:13
						abstract_cmd[159-:32] = dm_csrw(12'h7b2, 5'd8);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:434:13
						abstract_cmd[191-:32] = dm_csrr(ac_ar[11:0], 5'd8);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:436:13
						abstract_cmd[223-:32] = dm_store(ac_ar[22-:3], 5'd8, LoadBaseAddr, dm_DataAddr);
						// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:438:13
						abstract_cmd[255-:32] = dm_csrr(12'h7b2, 5'd8);
					end
				end
				else if ((sv2v_cast_32(ac_ar[22-:3]) >= MaxAar) || (ac_ar[19] == 1'b1)) begin
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:444:11
					abstract_cmd[31-:32] = dm_ebreak(0);
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:445:11
					unsupported_command = 1'b1;
				end
				if (ac_ar[18] && !unsupported_command)
					// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:454:11
					abstract_cmd[319-:32] = dm_nop(0);
			end
			default: begin
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:461:9
				abstract_cmd[31-:32] = dm_ebreak(0);
				// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:462:9
				unsupported_command = 1'b1;
			end
		endcase
	end
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:467:3
	wire [63:0] rom_addr;
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:468:3
	function automatic [63:0] sv2v_cast_64;
		input reg [63:0] inp;
		sv2v_cast_64 = inp;
	endfunction
	assign rom_addr = sv2v_cast_64(addr_i);
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:476:3
	generate
		if (HasSndScratch) begin : gen_rom_snd_scratch
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:477:5
			debug_rom i_debug_rom(
				.clk_i(clk_i),
				.req_i(req_i),
				.addr_i(rom_addr),
				.rdata_o(rom_rdata)
			);
		end
		else begin : gen_rom_one_scratch
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:487:5
			debug_rom_one_scratch i_debug_rom(
				.clk_i(clk_i),
				.req_i(req_i),
				.addr_i(rom_addr),
				.rdata_o(rom_rdata)
			);
		end
	endgenerate
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:497:3
	assign fwd_rom_d = addr_i[11:0] >= dm_HaltAddress[11:0];
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:499:3
	always @(posedge clk_i or negedge rst_ni) begin : p_regs
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:500:5
		if (!rst_ni) begin
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:501:7
			fwd_rom_q <= 1'b0;
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:502:7
			rdata_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:503:7
			state_q <= 2'd0;
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:504:7
			word_enable32_q <= 1'b0;
		end
		else begin
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:506:7
			fwd_rom_q <= fwd_rom_d;
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:507:7
			rdata_q <= rdata_d;
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:508:7
			state_q <= state_d;
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:509:7
			word_enable32_q <= addr_i[2];
		end
	end
	// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:513:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:514:5
		if (!rst_ni) begin
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:515:7
			halted_q <= 1'b0;
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:516:7
			resuming_q <= 1'b0;
		end
		else begin
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:518:7
			halted_q <= SelectableHarts & halted_d;
			// Trace: corev_apu/riscv-dbg/src/dm_mem.sv:519:7
			resuming_q <= SelectableHarts & resuming_d;
		end
	initial _sv2v_0 = 0;
endmodule
