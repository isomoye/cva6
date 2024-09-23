module dm_csrs (
	clk_i,
	rst_ni,
	testmode_i,
	dmi_rst_ni,
	dmi_req_valid_i,
	dmi_req_ready_o,
	dmi_req_i,
	dmi_resp_valid_o,
	dmi_resp_ready_i,
	dmi_resp_o,
	ndmreset_o,
	dmactive_o,
	hartinfo_i,
	halted_i,
	unavailable_i,
	resumeack_i,
	hartsel_o,
	haltreq_o,
	resumereq_o,
	clear_resumeack_o,
	cmd_valid_o,
	cmd_o,
	cmderror_valid_i,
	cmderror_i,
	cmdbusy_i,
	progbuf_o,
	data_o,
	data_i,
	data_valid_i,
	sbaddress_o,
	sbaddress_i,
	sbaddress_write_valid_o,
	sbreadonaddr_o,
	sbautoincrement_o,
	sbaccess_o,
	sbreadondata_o,
	sbdata_o,
	sbdata_read_valid_o,
	sbdata_write_valid_o,
	sbdata_i,
	sbdata_valid_i,
	sbbusy_i,
	sberror_valid_i,
	sberror_i
);
	reg _sv2v_0;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:19:13
	parameter [31:0] NrHarts = 1;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:20:13
	parameter [31:0] BusWidth = 32;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:21:13
	parameter [NrHarts - 1:0] SelectableHarts = {NrHarts {1'b1}};
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:23:3
	input wire clk_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:24:3
	input wire rst_ni;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:25:3
	input wire testmode_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:26:3
	input wire dmi_rst_ni;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:27:3
	input wire dmi_req_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:28:3
	output wire dmi_req_ready_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:29:3
	// removed localparam type dm_dtm_op_e
	// removed localparam type dm_dmi_req_t
	input wire [40:0] dmi_req_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:31:3
	output wire dmi_resp_valid_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:32:3
	input wire dmi_resp_ready_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:33:3
	// removed localparam type dm_dmi_resp_t
	output wire [33:0] dmi_resp_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:35:3
	output wire ndmreset_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:36:3
	output wire dmactive_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:39:3
	// removed localparam type dm_hartinfo_t
	input wire [(NrHarts * 32) - 1:0] hartinfo_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:40:3
	input wire [NrHarts - 1:0] halted_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:41:3
	input wire [NrHarts - 1:0] unavailable_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:42:3
	input wire [NrHarts - 1:0] resumeack_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:44:3
	output wire [19:0] hartsel_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:45:3
	output reg [NrHarts - 1:0] haltreq_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:46:3
	output reg [NrHarts - 1:0] resumereq_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:47:3
	output reg clear_resumeack_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:49:3
	output wire cmd_valid_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:50:3
	// removed localparam type dm_cmd_e
	// removed localparam type dm_command_t
	output wire [31:0] cmd_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:51:3
	input wire cmderror_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:52:3
	// removed localparam type dm_cmderr_e
	input wire [2:0] cmderror_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:53:3
	input wire cmdbusy_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:55:3
	localparam [4:0] dm_ProgBufSize = 5'h08;
	output wire [255:0] progbuf_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:56:3
	localparam [3:0] dm_DataCount = 4'h2;
	output wire [63:0] data_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:58:3
	input wire [63:0] data_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:59:3
	input wire data_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:61:3
	output wire [BusWidth - 1:0] sbaddress_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:62:3
	input wire [BusWidth - 1:0] sbaddress_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:63:3
	output reg sbaddress_write_valid_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:65:3
	output wire sbreadonaddr_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:66:3
	output wire sbautoincrement_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:67:3
	output wire [2:0] sbaccess_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:69:3
	output wire sbreadondata_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:70:3
	output wire [BusWidth - 1:0] sbdata_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:71:3
	output reg sbdata_read_valid_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:72:3
	output reg sbdata_write_valid_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:74:3
	input wire [BusWidth - 1:0] sbdata_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:75:3
	input wire sbdata_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:77:3
	input wire sbbusy_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:78:3
	input wire sberror_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:79:3
	input wire [2:0] sberror_i;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:82:3
	localparam [31:0] HartSelLen = (NrHarts == 1 ? 1 : $clog2(NrHarts));
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:83:3
	localparam [31:0] NrHartsAligned = 2 ** HartSelLen;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:85:3
	wire [1:0] dtm_op;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:86:3
	function automatic [1:0] sv2v_cast_2;
		input reg [1:0] inp;
		sv2v_cast_2 = inp;
	endfunction
	assign dtm_op = sv2v_cast_2(dmi_req_i[33-:2]);
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:88:3
	wire resp_queue_full;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:89:3
	wire resp_queue_empty;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:90:3
	wire resp_queue_push;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:91:3
	wire resp_queue_pop;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:92:3
	reg [31:0] resp_queue_data;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:94:3
	// removed localparam type dm_dm_csr_e
	function automatic [7:0] sv2v_cast_8;
		input reg [7:0] inp;
		sv2v_cast_8 = inp;
	endfunction
	localparam [7:0] DataEnd = sv2v_cast_8((8'h04 + {4'h0, dm_DataCount}) - 8'h01);
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:95:3
	localparam [7:0] ProgBufEnd = sv2v_cast_8((8'h20 + {4'h0, dm_ProgBufSize}) - 8'h01);
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:97:3
	reg [31:0] haltsum0;
	reg [31:0] haltsum1;
	reg [31:0] haltsum2;
	reg [31:0] haltsum3;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:98:3
	reg [((((NrHarts - 1) / 32) + 1) * 32) - 1:0] halted;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:99:3
	reg [(((NrHarts - 1) / 32) >= 0 ? ((((NrHarts - 1) / 32) + 1) * 32) - 1 : ((1 - ((NrHarts - 1) / 32)) * 32) + ((((NrHarts - 1) / 32) * 32) - 1)):(((NrHarts - 1) / 32) >= 0 ? 0 : ((NrHarts - 1) / 32) * 32)] halted_reshaped0;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:100:3
	reg [(((NrHarts - 1) / 1024) >= 0 ? ((((NrHarts - 1) / 1024) + 1) * 32) - 1 : ((1 - ((NrHarts - 1) / 1024)) * 32) + ((((NrHarts - 1) / 1024) * 32) - 1)):(((NrHarts - 1) / 1024) >= 0 ? 0 : ((NrHarts - 1) / 1024) * 32)] halted_reshaped1;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:101:3
	reg [(((NrHarts - 1) / 32768) >= 0 ? ((((NrHarts - 1) / 32768) + 1) * 32) - 1 : ((1 - ((NrHarts - 1) / 32768)) * 32) + ((((NrHarts - 1) / 32768) * 32) - 1)):(((NrHarts - 1) / 32768) >= 0 ? 0 : ((NrHarts - 1) / 32768) * 32)] halted_reshaped2;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:102:3
	reg [((((NrHarts - 1) / 1024) + 1) * 32) - 1:0] halted_flat1;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:103:3
	reg [((((NrHarts - 1) / 32768) + 1) * 32) - 1:0] halted_flat2;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:104:3
	reg [31:0] halted_flat3;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:107:3
	reg [14:0] hartsel_idx0;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:108:3
	function automatic [14:0] sv2v_cast_15;
		input reg [14:0] inp;
		sv2v_cast_15 = inp;
	endfunction
	always @(*) begin : p_haltsum0
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:109:5
		halted = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:110:5
		haltsum0 = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:111:5
		hartsel_idx0 = hartsel_o[19:5];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:112:5
		halted[NrHarts - 1:0] = halted_i;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:113:5
		halted_reshaped0 = halted;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:114:5
		if (hartsel_idx0 < sv2v_cast_15(((NrHarts - 1) / 32) + 1))
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:115:7
			haltsum0 = halted_reshaped0[(((NrHarts - 1) / 32) >= 0 ? hartsel_idx0 : ((NrHarts - 1) / 32) - hartsel_idx0) * 32+:32];
	end
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:120:3
	reg [9:0] hartsel_idx1;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:121:3
	function automatic [9:0] sv2v_cast_10;
		input reg [9:0] inp;
		sv2v_cast_10 = inp;
	endfunction
	always @(*) begin : p_reduction1
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:122:5
		halted_flat1 = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:123:5
		haltsum1 = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:124:5
		hartsel_idx1 = hartsel_o[19:10];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:126:5
		begin : sv2v_autoblock_1
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:126:10
			reg [31:0] k;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:126:10
			for (k = 0; k < (((NrHarts - 1) / 32) + 1); k = k + 1)
				begin
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:127:7
					halted_flat1[k] = |halted_reshaped0[(((NrHarts - 1) / 32) >= 0 ? k : ((NrHarts - 1) / 32) - k) * 32+:32];
				end
		end
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:129:5
		halted_reshaped1 = halted_flat1;
		if (hartsel_idx1 < sv2v_cast_10(((NrHarts - 1) / 1024) + 1))
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:132:7
			haltsum1 = halted_reshaped1[(((NrHarts - 1) / 1024) >= 0 ? hartsel_idx1 : ((NrHarts - 1) / 1024) - hartsel_idx1) * 32+:32];
	end
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:137:3
	reg [4:0] hartsel_idx2;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:138:3
	function automatic [4:0] sv2v_cast_5;
		input reg [4:0] inp;
		sv2v_cast_5 = inp;
	endfunction
	always @(*) begin : p_reduction2
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:139:5
		halted_flat2 = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:140:5
		haltsum2 = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:141:5
		hartsel_idx2 = hartsel_o[19:15];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:143:5
		begin : sv2v_autoblock_2
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:143:10
			reg [31:0] k;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:143:10
			for (k = 0; k < (((NrHarts - 1) / 1024) + 1); k = k + 1)
				begin
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:144:7
					halted_flat2[k] = |halted_reshaped1[(((NrHarts - 1) / 1024) >= 0 ? k : ((NrHarts - 1) / 1024) - k) * 32+:32];
				end
		end
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:146:5
		halted_reshaped2 = halted_flat2;
		if (hartsel_idx2 < sv2v_cast_5(((NrHarts - 1) / 32768) + 1))
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:149:7
			haltsum2 = halted_reshaped2[(((NrHarts - 1) / 32768) >= 0 ? hartsel_idx2 : ((NrHarts - 1) / 32768) - hartsel_idx2) * 32+:32];
	end
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:154:3
	always @(*) begin : p_reduction3
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:155:5
		halted_flat3 = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:156:5
		begin : sv2v_autoblock_3
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:156:10
			reg [31:0] k;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:156:10
			for (k = 0; k < ((NrHarts / 32768) + 1); k = k + 1)
				begin
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:157:7
					halted_flat3[k] = |halted_reshaped2[(((NrHarts - 1) / 32768) >= 0 ? k : ((NrHarts - 1) / 32768) - k) * 32+:32];
				end
		end
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:159:5
		haltsum3 = halted_flat3;
	end
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:163:3
	// removed localparam type dm_dmstatus_t
	reg [31:0] dmstatus;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:164:3
	// removed localparam type dm_dmcontrol_t
	reg [31:0] dmcontrol_d;
	reg [31:0] dmcontrol_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:165:3
	// removed localparam type dm_abstractcs_t
	reg [31:0] abstractcs;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:166:3
	reg [2:0] cmderr_d;
	reg [2:0] cmderr_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:167:3
	reg [31:0] command_d;
	reg [31:0] command_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:168:3
	reg cmd_valid_d;
	reg cmd_valid_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:169:3
	// removed localparam type dm_abstractauto_t
	reg [31:0] abstractauto_d;
	reg [31:0] abstractauto_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:170:3
	// removed localparam type dm_sbcs_t
	reg [31:0] sbcs_d;
	reg [31:0] sbcs_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:171:3
	reg [63:0] sbaddr_d;
	reg [63:0] sbaddr_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:172:3
	reg [63:0] sbdata_d;
	reg [63:0] sbdata_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:174:3
	wire [NrHarts - 1:0] havereset_d;
	reg [NrHarts - 1:0] havereset_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:176:3
	reg [255:0] progbuf_d;
	reg [255:0] progbuf_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:177:3
	reg [63:0] data_d;
	reg [63:0] data_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:179:3
	reg [HartSelLen - 1:0] selected_hart;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:182:3
	localparam [1:0] dm_DTM_SUCCESS = 2'h0;
	assign dmi_resp_o[1-:2] = dm_DTM_SUCCESS;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:183:3
	assign dmi_resp_valid_o = ~resp_queue_empty;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:184:3
	assign dmi_req_ready_o = ~resp_queue_full;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:185:3
	assign resp_queue_push = dmi_req_valid_i & dmi_req_ready_o;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:187:3
	assign sbautoincrement_o = sbcs_q[16];
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:188:3
	assign sbreadonaddr_o = sbcs_q[20];
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:189:3
	assign sbreadondata_o = sbcs_q[15];
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:190:3
	assign sbaccess_o = sbcs_q[19-:3];
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:191:3
	assign sbdata_o = sbdata_q[BusWidth - 1:0];
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:192:3
	assign sbaddress_o = sbaddr_q[BusWidth - 1:0];
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:194:3
	assign hartsel_o = {dmcontrol_q[15-:10], dmcontrol_q[25-:10]};
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:197:3
	reg [NrHartsAligned - 1:0] havereset_d_aligned;
	wire [NrHartsAligned - 1:0] havereset_q_aligned;
	wire [NrHartsAligned - 1:0] resumeack_aligned;
	wire [NrHartsAligned - 1:0] unavailable_aligned;
	wire [NrHartsAligned - 1:0] halted_aligned;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:200:3
	function automatic [NrHartsAligned - 1:0] sv2v_cast_DFF07;
		input reg [NrHartsAligned - 1:0] inp;
		sv2v_cast_DFF07 = inp;
	endfunction
	assign resumeack_aligned = sv2v_cast_DFF07(resumeack_i);
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:201:3
	assign unavailable_aligned = sv2v_cast_DFF07(unavailable_i);
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:202:3
	assign halted_aligned = sv2v_cast_DFF07(halted_i);
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:204:3
	function automatic [NrHarts - 1:0] sv2v_cast_178F2;
		input reg [NrHarts - 1:0] inp;
		sv2v_cast_178F2 = inp;
	endfunction
	assign havereset_d = sv2v_cast_178F2(havereset_d_aligned);
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:205:3
	assign havereset_q_aligned = sv2v_cast_DFF07(havereset_q);
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:207:3
	reg [(NrHartsAligned * 32) - 1:0] hartinfo_aligned;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:208:3
	always @(*) begin : p_hartinfo_align
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:209:5
		hartinfo_aligned = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:210:5
		hartinfo_aligned[32 * ((NrHarts - 1) - (NrHarts - 1))+:32 * NrHarts] = hartinfo_i;
	end
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:214:3
	wire [7:0] dm_csr_addr;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:215:3
	reg [31:0] sbcs;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:216:3
	reg [31:0] a_abstractcs;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:217:3
	wire [3:0] autoexecdata_idx;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:220:3
	assign dm_csr_addr = sv2v_cast_8({1'b0, dmi_req_i[40-:7]});
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:223:3
	function automatic [3:0] sv2v_cast_4;
		input reg [3:0] inp;
		sv2v_cast_4 = inp;
	endfunction
	assign autoexecdata_idx = sv2v_cast_4({dm_csr_addr} - 8'h04);
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:225:3
	localparam [3:0] dm_DbgVersion013 = 4'h2;
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	function automatic [63:0] sv2v_cast_64;
		input reg [63:0] inp;
		sv2v_cast_64 = inp;
	endfunction
	function automatic [$clog2(4'h2) - 1:0] sv2v_cast_68FD0;
		input reg [$clog2(4'h2) - 1:0] inp;
		sv2v_cast_68FD0 = inp;
	endfunction
	function automatic [2:0] sv2v_cast_3;
		input reg [2:0] inp;
		sv2v_cast_3 = inp;
	endfunction
	function automatic [11:0] sv2v_cast_12;
		input reg [11:0] inp;
		sv2v_cast_12 = inp;
	endfunction
	function automatic [15:0] sv2v_cast_16;
		input reg [15:0] inp;
		sv2v_cast_16 = inp;
	endfunction
	function automatic [6:0] sv2v_cast_1B50F;
		input reg [6:0] inp;
		sv2v_cast_1B50F = inp;
	endfunction
	always @(*) begin : csr_read_write
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:230:5
		dmstatus = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:231:5
		dmstatus[3-:4] = dm_DbgVersion013;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:233:5
		dmstatus[7] = 1'b1;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:235:5
		dmstatus[5] = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:237:5
		dmstatus[19] = havereset_q_aligned[selected_hart];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:238:5
		dmstatus[18] = havereset_q_aligned[selected_hart];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:240:5
		dmstatus[17] = resumeack_aligned[selected_hart];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:241:5
		dmstatus[16] = resumeack_aligned[selected_hart];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:243:5
		dmstatus[13] = unavailable_aligned[selected_hart];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:244:5
		dmstatus[12] = unavailable_aligned[selected_hart];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:248:5
		dmstatus[15] = sv2v_cast_32(hartsel_o) > (NrHarts - 32'sd1);
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:249:5
		dmstatus[14] = sv2v_cast_32(hartsel_o) > (NrHarts - 32'sd1);
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:253:5
		dmstatus[9] = halted_aligned[selected_hart] & ~unavailable_aligned[selected_hart];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:254:5
		dmstatus[8] = halted_aligned[selected_hart] & ~unavailable_aligned[selected_hart];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:256:5
		dmstatus[11] = ~halted_aligned[selected_hart] & ~unavailable_aligned[selected_hart];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:257:5
		dmstatus[10] = ~halted_aligned[selected_hart] & ~unavailable_aligned[selected_hart];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:260:5
		abstractcs = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:261:5
		abstractcs[3-:4] = dm_DataCount;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:262:5
		abstractcs[28-:5] = dm_ProgBufSize;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:263:5
		abstractcs[12] = cmdbusy_i;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:264:5
		abstractcs[10-:3] = cmderr_q;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:267:5
		abstractauto_d = abstractauto_q;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:268:5
		abstractauto_d[15-:4] = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:271:5
		havereset_d_aligned = sv2v_cast_DFF07(havereset_q);
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:272:5
		dmcontrol_d = dmcontrol_q;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:273:5
		cmderr_d = cmderr_q;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:274:5
		command_d = command_q;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:275:5
		progbuf_d = progbuf_q;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:276:5
		data_d = data_q;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:277:5
		sbcs_d = sbcs_q;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:278:5
		sbaddr_d = sv2v_cast_64(sbaddress_i);
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:279:5
		sbdata_d = sbdata_q;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:281:5
		resp_queue_data = 32'h00000000;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:282:5
		cmd_valid_d = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:283:5
		sbaddress_write_valid_o = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:284:5
		sbdata_read_valid_o = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:285:5
		sbdata_write_valid_o = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:286:5
		clear_resumeack_o = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:289:5
		sbcs = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:290:5
		a_abstractcs = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:293:5
		if ((dmi_req_ready_o && dmi_req_valid_i) && (dtm_op == 2'h1)) begin
			begin
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:294:7
				(* full_case, parallel_case *)
				if ((8'h04 <= dm_csr_addr) && (DataEnd >= dm_csr_addr)) begin
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:296:11
					resp_queue_data = data_q[sv2v_cast_68FD0(autoexecdata_idx) * 32+:32];
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:297:11
					if (!cmdbusy_i)
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:299:13
						cmd_valid_d = abstractauto_q[0 + autoexecdata_idx];
					else if (cmderr_q == 3'd0)
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:302:13
						cmderr_d = 3'd1;
				end
				else if (dm_csr_addr == 8'h10)
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:305:27
					resp_queue_data = dmcontrol_q;
				else if (dm_csr_addr == 8'h11)
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:306:27
					resp_queue_data = dmstatus;
				else if (dm_csr_addr == 8'h12)
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:307:27
					resp_queue_data = hartinfo_aligned[selected_hart * 32+:32];
				else if (dm_csr_addr == 8'h16)
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:308:27
					resp_queue_data = abstractcs;
				else if (dm_csr_addr == 8'h18)
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:309:27
					resp_queue_data = abstractauto_q;
				else if (dm_csr_addr == 8'h17)
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:311:25
					resp_queue_data = 1'sb0;
				else if ((8'h20 <= dm_csr_addr) && (ProgBufEnd >= dm_csr_addr)) begin
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:313:11
					resp_queue_data = progbuf_q[dmi_req_i[$clog2(5'h08) + 33:34] * 32+:32];
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:314:11
					if (!cmdbusy_i)
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:317:13
						cmd_valid_d = abstractauto_q[0 + {1'b1, dmi_req_i[37:34]}];
					else if (cmderr_q == 3'd0)
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:321:13
						cmderr_d = 3'd1;
				end
				else if (dm_csr_addr == 8'h40)
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:324:23
					resp_queue_data = haltsum0;
				else if (dm_csr_addr == 8'h13)
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:325:23
					resp_queue_data = haltsum1;
				else if (dm_csr_addr == 8'h34)
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:326:23
					resp_queue_data = haltsum2;
				else if (dm_csr_addr == 8'h35)
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:327:23
					resp_queue_data = haltsum3;
				else if (dm_csr_addr == 8'h38)
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:329:11
					resp_queue_data = sbcs_q;
				else if (dm_csr_addr == 8'h39)
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:332:11
					resp_queue_data = sbaddr_q[31:0];
				else if (dm_csr_addr == 8'h3a)
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:335:11
					resp_queue_data = sbaddr_q[63:32];
				else if (dm_csr_addr == 8'h3c) begin
					begin
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:339:11
						if (sbbusy_i || sbcs_q[22])
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:340:13
							sbcs_d[22] = 1'b1;
						else begin
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:342:13
							sbdata_read_valid_o = sbcs_q[14-:3] == {3 {1'sb0}};
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:343:13
							resp_queue_data = sbdata_q[31:0];
						end
					end
				end
				else if (dm_csr_addr == 8'h3d) begin
					begin
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:348:11
						if (sbbusy_i || sbcs_q[22])
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:349:13
							sbcs_d[22] = 1'b1;
						else
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:351:13
							resp_queue_data = sbdata_q[63:32];
					end
				end
			end
		end
		if ((dmi_req_ready_o && dmi_req_valid_i) && (dtm_op == 2'h2)) begin
			begin
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:360:7
				(* full_case, parallel_case *)
				if ((8'h04 <= dm_csr_addr) && (DataEnd >= dm_csr_addr)) begin
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:362:11
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:364:13
					if (!cmdbusy_i) begin
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:365:15
						data_d[dmi_req_i[$clog2(4'h2) + 33:34] * 32+:32] = dmi_req_i[31-:32];
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:367:15
						cmd_valid_d = abstractauto_q[0 + autoexecdata_idx];
					end
					else if (cmderr_q == 3'd0)
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:370:15
						cmderr_d = 3'd1;
				end
				else if (dm_csr_addr == 8'h10) begin
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:375:11
					dmcontrol_d = dmi_req_i[31-:32];
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:377:11
					if (dmcontrol_d[28])
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:378:13
						havereset_d_aligned[selected_hart] = 1'b0;
				end
				else if (dm_csr_addr == 8'h11)
					;
				else if (dm_csr_addr == 8'h12)
					;
				else if (dm_csr_addr == 8'h16) begin
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:389:11
					a_abstractcs = sv2v_cast_32(dmi_req_i[31-:32]);
					// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:391:11
					if (!cmdbusy_i)
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:392:13
						cmderr_d = sv2v_cast_3(~a_abstractcs[10-:3] & cmderr_q);
					else if (cmderr_q == 3'd0)
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:394:13
						cmderr_d = 3'd1;
				end
				else if (dm_csr_addr == 8'h17) begin
					begin
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:399:11
						if (!cmdbusy_i) begin
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:400:13
							cmd_valid_d = 1'b1;
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:401:13
							command_d = sv2v_cast_32(dmi_req_i[31-:32]);
						end
						else if (cmderr_q == 3'd0)
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:405:13
							cmderr_d = 3'd1;
					end
				end
				else if (dm_csr_addr == 8'h18) begin
					begin
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:410:11
						if (!cmdbusy_i) begin
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:411:13
							abstractauto_d = 32'h00000000;
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:412:13
							abstractauto_d[11-:12] = sv2v_cast_12(dmi_req_i[1:0]);
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:413:13
							abstractauto_d[31-:16] = sv2v_cast_16(dmi_req_i[23:16]);
						end
						else if (cmderr_q == 3'd0)
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:415:13
							cmderr_d = 3'd1;
					end
				end
				else if ((8'h20 <= dm_csr_addr) && (ProgBufEnd >= dm_csr_addr)) begin
					begin
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:420:11
						if (!cmdbusy_i) begin
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:421:13
							progbuf_d[dmi_req_i[$clog2(5'h08) + 33:34] * 32+:32] = dmi_req_i[31-:32];
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:426:13
							cmd_valid_d = abstractauto_q[0 + {1'b1, dmi_req_i[37:34]}];
						end
						else if (cmderr_q == 3'd0)
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:429:13
							cmderr_d = 3'd1;
					end
				end
				else if (dm_csr_addr == 8'h38) begin
					begin
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:434:11
						if (sbbusy_i)
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:435:13
							sbcs_d[22] = 1'b1;
						else begin
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:437:13
							sbcs = sv2v_cast_32(dmi_req_i[31-:32]);
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:438:13
							sbcs_d = sbcs;
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:440:13
							sbcs_d[22] = sbcs_q[22] & ~sbcs[22];
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:441:13
							sbcs_d[14-:3] = sbcs_q[14-:3] & ~sbcs[14-:3];
						end
					end
				end
				else if (dm_csr_addr == 8'h39) begin
					begin
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:446:11
						if (sbbusy_i || sbcs_q[22])
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:447:13
							sbcs_d[22] = 1'b1;
						else begin
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:449:13
							sbaddr_d[31:0] = dmi_req_i[31-:32];
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:450:13
							sbaddress_write_valid_o = sbcs_q[14-:3] == {3 {1'sb0}};
						end
					end
				end
				else if (dm_csr_addr == 8'h3a) begin
					begin
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:455:11
						if (sbbusy_i || sbcs_q[22])
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:456:13
							sbcs_d[22] = 1'b1;
						else
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:458:13
							sbaddr_d[63:32] = dmi_req_i[31-:32];
					end
				end
				else if (dm_csr_addr == 8'h3c) begin
					begin
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:463:11
						if (sbbusy_i || sbcs_q[22])
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:464:12
							sbcs_d[22] = 1'b1;
						else begin
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:466:13
							sbdata_d[31:0] = dmi_req_i[31-:32];
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:467:13
							sbdata_write_valid_o = sbcs_q[14-:3] == {3 {1'sb0}};
						end
					end
				end
				else if (dm_csr_addr == 8'h3d) begin
					begin
						// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:472:11
						if (sbbusy_i || sbcs_q[22])
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:473:12
							sbcs_d[22] = 1'b1;
						else
							// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:475:13
							sbdata_d[63:32] = dmi_req_i[31-:32];
					end
				end
			end
		end
		if (cmderror_valid_i)
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:483:7
			cmderr_d = cmderror_i;
		if (data_valid_i)
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:488:7
			data_d = data_i;
		if (ndmreset_o)
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:493:7
			havereset_d_aligned[NrHarts - 1:0] = 1'sb1;
		if (sberror_valid_i)
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:500:7
			sbcs_d[14-:3] = sberror_i;
		if (sbdata_valid_i)
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:504:7
			sbdata_d = sv2v_cast_64(sbdata_i);
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:509:5
		dmcontrol_d[26] = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:511:5
		dmcontrol_d[29] = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:512:5
		dmcontrol_d[3] = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:513:5
		dmcontrol_d[2] = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:514:5
		dmcontrol_d[27] = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:515:5
		dmcontrol_d[5-:2] = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:517:5
		dmcontrol_d[28] = 1'b0;
		if (!dmcontrol_q[30] && dmcontrol_d[30])
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:519:7
			clear_resumeack_o = 1'b1;
		if (dmcontrol_q[30] && resumeack_i)
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:522:7
			dmcontrol_d[30] = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:525:5
		sbcs_d[31-:3] = 3'd1;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:526:5
		sbcs_d[21] = sbbusy_i;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:527:5
		sbcs_d[11-:7] = sv2v_cast_1B50F(BusWidth);
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:528:5
		sbcs_d[4] = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:529:5
		sbcs_d[3] = BusWidth == 32'd64;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:530:5
		sbcs_d[2] = BusWidth == 32'd32;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:531:5
		sbcs_d[1] = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:532:5
		sbcs_d[0] = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:533:5
		sbcs_d[19-:3] = (BusWidth == 32'd64 ? 3'd3 : 3'd2);
	end
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:537:3
	function automatic [HartSelLen - 1:0] sv2v_cast_FFD0D;
		input reg [HartSelLen - 1:0] inp;
		sv2v_cast_FFD0D = inp;
	endfunction
	always @(*) begin : p_outmux
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:538:5
		selected_hart = hartsel_o[HartSelLen - 1:0];
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:540:5
		haltreq_o = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:541:5
		resumereq_o = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:542:5
		if (selected_hart <= sv2v_cast_FFD0D(NrHarts - 1)) begin
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:543:7
			haltreq_o[selected_hart] = dmcontrol_q[31];
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:544:7
			resumereq_o[selected_hart] = dmcontrol_q[30];
		end
	end
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:548:3
	assign dmactive_o = dmcontrol_q[0];
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:549:3
	assign cmd_o = command_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:550:3
	assign cmd_valid_o = cmd_valid_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:551:3
	assign progbuf_o = progbuf_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:552:3
	assign data_o = data_q;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:554:3
	assign resp_queue_pop = dmi_resp_ready_i & ~resp_queue_empty;
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:556:3
	assign ndmreset_o = dmcontrol_q[1];
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:559:3
	fifo_v2_264A2 #(.DEPTH(2)) i_fifo(
		.clk_i(clk_i),
		.rst_ni(dmi_rst_ni),
		.flush_i(1'b0),
		.testmode_i(testmode_i),
		.full_o(resp_queue_full),
		.empty_o(resp_queue_empty),
		.alm_full_o(),
		.alm_empty_o(),
		.data_i(resp_queue_data),
		.push_i(resp_queue_push),
		.data_o(dmi_resp_o[33-:32]),
		.pop_i(resp_queue_pop)
	);
	// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:577:3
	always @(posedge clk_i or negedge rst_ni) begin : p_regs
		// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:579:5
		if (!rst_ni) begin
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:580:7
			dmcontrol_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:582:7
			cmderr_q <= 3'd0;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:583:7
			command_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:584:7
			cmd_valid_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:585:7
			abstractauto_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:586:7
			progbuf_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:587:7
			data_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:588:7
			sbcs_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:589:7
			sbaddr_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:590:7
			sbdata_q <= 1'sb0;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:591:7
			havereset_q <= 1'sb1;
		end
		else begin
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:593:7
			havereset_q <= SelectableHarts & havereset_d;
			// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:595:7
			if (!dmcontrol_q[0]) begin
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:596:9
				dmcontrol_q[31] <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:597:9
				dmcontrol_q[30] <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:598:9
				dmcontrol_q[29] <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:599:9
				dmcontrol_q[28] <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:600:9
				dmcontrol_q[27] <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:601:9
				dmcontrol_q[26] <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:602:9
				dmcontrol_q[25-:10] <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:603:9
				dmcontrol_q[15-:10] <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:604:9
				dmcontrol_q[5-:2] <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:605:9
				dmcontrol_q[3] <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:606:9
				dmcontrol_q[2] <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:607:9
				dmcontrol_q[1] <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:609:9
				dmcontrol_q[0] <= dmcontrol_d[0];
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:610:9
				cmderr_q <= 3'd0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:611:9
				command_q <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:612:9
				cmd_valid_q <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:613:9
				abstractauto_q <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:614:9
				progbuf_q <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:615:9
				data_q <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:616:9
				sbcs_q <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:617:9
				sbaddr_q <= 1'sb0;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:618:9
				sbdata_q <= 1'sb0;
			end
			else begin
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:620:9
				dmcontrol_q <= dmcontrol_d;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:621:9
				cmderr_q <= cmderr_d;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:622:9
				command_q <= command_d;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:623:9
				cmd_valid_q <= cmd_valid_d;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:624:9
				abstractauto_q <= abstractauto_d;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:625:9
				progbuf_q <= progbuf_d;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:626:9
				data_q <= data_d;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:627:9
				sbcs_q <= sbcs_d;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:628:9
				sbaddr_q <= sbaddr_d;
				// Trace: corev_apu/riscv-dbg/src/dm_csrs.sv:629:9
				sbdata_q <= sbdata_d;
			end
		end
	end
	initial _sv2v_0 = 0;
endmodule
