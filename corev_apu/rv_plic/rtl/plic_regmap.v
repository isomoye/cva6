module plic_regs_E6147 (
	prio_i,
	prio_o,
	prio_we_o,
	prio_re_o,
	ip_i,
	ip_re_o,
	ie_i,
	ie_o,
	ie_we_o,
	ie_re_o,
	threshold_i,
	threshold_o,
	threshold_we_o,
	threshold_re_o,
	cc_i,
	cc_o,
	cc_we_o,
	cc_re_o,
	req_i,
	resp_o
);
	reg _sv2v_0;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:3:18
	// removed localparam type reg_req_t
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:4:18
	// removed localparam type reg_rsp_t
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:6:3
	input wire [92:0] prio_i;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:7:3
	output reg [92:0] prio_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:8:3
	output reg [30:0] prio_we_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:9:3
	output reg [30:0] prio_re_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:10:3
	input wire [30:0] ip_i;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:11:3
	output reg [0:0] ip_re_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:12:3
	input wire [61:0] ie_i;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:13:3
	output reg [61:0] ie_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:14:3
	output reg [1:0] ie_we_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:15:3
	output reg [1:0] ie_re_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:16:3
	input wire [5:0] threshold_i;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:17:3
	output reg [5:0] threshold_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:18:3
	output reg [1:0] threshold_we_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:19:3
	output reg [1:0] threshold_re_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:20:3
	input wire [9:0] cc_i;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:21:3
	output reg [9:0] cc_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:22:3
	output reg [1:0] cc_we_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:23:3
	output reg [1:0] cc_re_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:25:3
	input wire req_i;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:26:3
	output reg resp_o;
	// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:28:1
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:29:3
		resp_o.ready = 1'b1;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:30:3
		resp_o.rdata = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:31:3
		resp_o.error = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:32:3
		prio_o = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:33:3
		prio_we_o = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:34:3
		prio_re_o = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:35:3
		ie_o = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:36:3
		ie_we_o = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:37:3
		ie_re_o = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:38:3
		threshold_o = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:39:3
		threshold_we_o = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:40:3
		threshold_re_o = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:41:3
		cc_o = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:42:3
		cc_we_o = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:43:3
		cc_re_o = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:44:3
		if (req_i.valid) begin
			begin
				// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:45:5
				if (req_i.write)
					// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:46:7
					(* full_case, parallel_case *)
					case (req_i.addr)
						32'h0c000000: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:48:11
							prio_o[2-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:49:11
							prio_we_o[0] = 1'b1;
						end
						32'h0c000004: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:52:11
							prio_o[5-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:53:11
							prio_we_o[1] = 1'b1;
						end
						32'h0c000008: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:56:11
							prio_o[8-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:57:11
							prio_we_o[2] = 1'b1;
						end
						32'h0c00000c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:60:11
							prio_o[11-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:61:11
							prio_we_o[3] = 1'b1;
						end
						32'h0c000010: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:64:11
							prio_o[14-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:65:11
							prio_we_o[4] = 1'b1;
						end
						32'h0c000014: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:68:11
							prio_o[17-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:69:11
							prio_we_o[5] = 1'b1;
						end
						32'h0c000018: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:72:11
							prio_o[20-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:73:11
							prio_we_o[6] = 1'b1;
						end
						32'h0c00001c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:76:11
							prio_o[23-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:77:11
							prio_we_o[7] = 1'b1;
						end
						32'h0c000020: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:80:11
							prio_o[26-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:81:11
							prio_we_o[8] = 1'b1;
						end
						32'h0c000024: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:84:11
							prio_o[29-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:85:11
							prio_we_o[9] = 1'b1;
						end
						32'h0c000028: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:88:11
							prio_o[32-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:89:11
							prio_we_o[10] = 1'b1;
						end
						32'h0c00002c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:92:11
							prio_o[35-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:93:11
							prio_we_o[11] = 1'b1;
						end
						32'h0c000030: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:96:11
							prio_o[38-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:97:11
							prio_we_o[12] = 1'b1;
						end
						32'h0c000034: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:100:11
							prio_o[41-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:101:11
							prio_we_o[13] = 1'b1;
						end
						32'h0c000038: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:104:11
							prio_o[44-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:105:11
							prio_we_o[14] = 1'b1;
						end
						32'h0c00003c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:108:11
							prio_o[47-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:109:11
							prio_we_o[15] = 1'b1;
						end
						32'h0c000040: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:112:11
							prio_o[50-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:113:11
							prio_we_o[16] = 1'b1;
						end
						32'h0c000044: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:116:11
							prio_o[53-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:117:11
							prio_we_o[17] = 1'b1;
						end
						32'h0c000048: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:120:11
							prio_o[56-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:121:11
							prio_we_o[18] = 1'b1;
						end
						32'h0c00004c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:124:11
							prio_o[59-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:125:11
							prio_we_o[19] = 1'b1;
						end
						32'h0c000050: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:128:11
							prio_o[62-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:129:11
							prio_we_o[20] = 1'b1;
						end
						32'h0c000054: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:132:11
							prio_o[65-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:133:11
							prio_we_o[21] = 1'b1;
						end
						32'h0c000058: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:136:11
							prio_o[68-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:137:11
							prio_we_o[22] = 1'b1;
						end
						32'h0c00005c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:140:11
							prio_o[71-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:141:11
							prio_we_o[23] = 1'b1;
						end
						32'h0c000060: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:144:11
							prio_o[74-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:145:11
							prio_we_o[24] = 1'b1;
						end
						32'h0c000064: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:148:11
							prio_o[77-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:149:11
							prio_we_o[25] = 1'b1;
						end
						32'h0c000068: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:152:11
							prio_o[80-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:153:11
							prio_we_o[26] = 1'b1;
						end
						32'h0c00006c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:156:11
							prio_o[83-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:157:11
							prio_we_o[27] = 1'b1;
						end
						32'h0c000070: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:160:11
							prio_o[86-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:161:11
							prio_we_o[28] = 1'b1;
						end
						32'h0c000074: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:164:11
							prio_o[89-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:165:11
							prio_we_o[29] = 1'b1;
						end
						32'h0c000078: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:168:11
							prio_o[92-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:169:11
							prio_we_o[30] = 1'b1;
						end
						32'h0c002000: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:172:11
							ie_o[30-:31] = req_i.wdata[30:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:173:11
							ie_we_o[0] = 1'b1;
						end
						32'h0c002080: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:176:11
							ie_o[61-:31] = req_i.wdata[30:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:177:11
							ie_we_o[1] = 1'b1;
						end
						32'h0c200000: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:180:11
							threshold_o[2-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:181:11
							threshold_we_o[0] = 1'b1;
						end
						32'h0c201000: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:184:11
							threshold_o[5-:3] = req_i.wdata[2:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:185:11
							threshold_we_o[1] = 1'b1;
						end
						32'h0c200004: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:188:11
							cc_o[4-:5] = req_i.wdata[4:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:189:11
							cc_we_o[0] = 1'b1;
						end
						32'h0c201004: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:192:11
							cc_o[9-:5] = req_i.wdata[4:0];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:193:11
							cc_we_o[1] = 1'b1;
						end
						default:
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:195:18
							resp_o.error = 1'b1;
					endcase
				else
					// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:198:7
					(* full_case, parallel_case *)
					case (req_i.addr)
						32'h0c000000: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:200:11
							resp_o.rdata[2:0] = prio_i[2-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:201:11
							prio_re_o[0] = 1'b1;
						end
						32'h0c000004: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:204:11
							resp_o.rdata[2:0] = prio_i[5-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:205:11
							prio_re_o[1] = 1'b1;
						end
						32'h0c000008: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:208:11
							resp_o.rdata[2:0] = prio_i[8-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:209:11
							prio_re_o[2] = 1'b1;
						end
						32'h0c00000c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:212:11
							resp_o.rdata[2:0] = prio_i[11-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:213:11
							prio_re_o[3] = 1'b1;
						end
						32'h0c000010: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:216:11
							resp_o.rdata[2:0] = prio_i[14-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:217:11
							prio_re_o[4] = 1'b1;
						end
						32'h0c000014: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:220:11
							resp_o.rdata[2:0] = prio_i[17-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:221:11
							prio_re_o[5] = 1'b1;
						end
						32'h0c000018: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:224:11
							resp_o.rdata[2:0] = prio_i[20-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:225:11
							prio_re_o[6] = 1'b1;
						end
						32'h0c00001c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:228:11
							resp_o.rdata[2:0] = prio_i[23-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:229:11
							prio_re_o[7] = 1'b1;
						end
						32'h0c000020: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:232:11
							resp_o.rdata[2:0] = prio_i[26-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:233:11
							prio_re_o[8] = 1'b1;
						end
						32'h0c000024: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:236:11
							resp_o.rdata[2:0] = prio_i[29-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:237:11
							prio_re_o[9] = 1'b1;
						end
						32'h0c000028: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:240:11
							resp_o.rdata[2:0] = prio_i[32-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:241:11
							prio_re_o[10] = 1'b1;
						end
						32'h0c00002c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:244:11
							resp_o.rdata[2:0] = prio_i[35-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:245:11
							prio_re_o[11] = 1'b1;
						end
						32'h0c000030: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:248:11
							resp_o.rdata[2:0] = prio_i[38-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:249:11
							prio_re_o[12] = 1'b1;
						end
						32'h0c000034: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:252:11
							resp_o.rdata[2:0] = prio_i[41-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:253:11
							prio_re_o[13] = 1'b1;
						end
						32'h0c000038: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:256:11
							resp_o.rdata[2:0] = prio_i[44-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:257:11
							prio_re_o[14] = 1'b1;
						end
						32'h0c00003c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:260:11
							resp_o.rdata[2:0] = prio_i[47-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:261:11
							prio_re_o[15] = 1'b1;
						end
						32'h0c000040: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:264:11
							resp_o.rdata[2:0] = prio_i[50-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:265:11
							prio_re_o[16] = 1'b1;
						end
						32'h0c000044: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:268:11
							resp_o.rdata[2:0] = prio_i[53-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:269:11
							prio_re_o[17] = 1'b1;
						end
						32'h0c000048: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:272:11
							resp_o.rdata[2:0] = prio_i[56-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:273:11
							prio_re_o[18] = 1'b1;
						end
						32'h0c00004c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:276:11
							resp_o.rdata[2:0] = prio_i[59-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:277:11
							prio_re_o[19] = 1'b1;
						end
						32'h0c000050: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:280:11
							resp_o.rdata[2:0] = prio_i[62-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:281:11
							prio_re_o[20] = 1'b1;
						end
						32'h0c000054: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:284:11
							resp_o.rdata[2:0] = prio_i[65-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:285:11
							prio_re_o[21] = 1'b1;
						end
						32'h0c000058: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:288:11
							resp_o.rdata[2:0] = prio_i[68-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:289:11
							prio_re_o[22] = 1'b1;
						end
						32'h0c00005c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:292:11
							resp_o.rdata[2:0] = prio_i[71-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:293:11
							prio_re_o[23] = 1'b1;
						end
						32'h0c000060: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:296:11
							resp_o.rdata[2:0] = prio_i[74-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:297:11
							prio_re_o[24] = 1'b1;
						end
						32'h0c000064: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:300:11
							resp_o.rdata[2:0] = prio_i[77-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:301:11
							prio_re_o[25] = 1'b1;
						end
						32'h0c000068: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:304:11
							resp_o.rdata[2:0] = prio_i[80-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:305:11
							prio_re_o[26] = 1'b1;
						end
						32'h0c00006c: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:308:11
							resp_o.rdata[2:0] = prio_i[83-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:309:11
							prio_re_o[27] = 1'b1;
						end
						32'h0c000070: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:312:11
							resp_o.rdata[2:0] = prio_i[86-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:313:11
							prio_re_o[28] = 1'b1;
						end
						32'h0c000074: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:316:11
							resp_o.rdata[2:0] = prio_i[89-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:317:11
							prio_re_o[29] = 1'b1;
						end
						32'h0c000078: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:320:11
							resp_o.rdata[2:0] = prio_i[92-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:321:11
							prio_re_o[30] = 1'b1;
						end
						32'h0c001000: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:324:11
							resp_o.rdata[30:0] = ip_i[30-:31];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:325:11
							ip_re_o[0] = 1'b1;
						end
						32'h0c002000: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:328:11
							resp_o.rdata[30:0] = ie_i[30-:31];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:329:11
							ie_re_o[0] = 1'b1;
						end
						32'h0c002080: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:332:11
							resp_o.rdata[30:0] = ie_i[61-:31];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:333:11
							ie_re_o[1] = 1'b1;
						end
						32'h0c200000: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:336:11
							resp_o.rdata[2:0] = threshold_i[2-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:337:11
							threshold_re_o[0] = 1'b1;
						end
						32'h0c201000: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:340:11
							resp_o.rdata[2:0] = threshold_i[5-:3];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:341:11
							threshold_re_o[1] = 1'b1;
						end
						32'h0c200004: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:344:11
							resp_o.rdata[4:0] = cc_i[4-:5];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:345:11
							cc_re_o[0] = 1'b1;
						end
						32'h0c201004: begin
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:348:11
							resp_o.rdata[4:0] = cc_i[9-:5];
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:349:11
							cc_re_o[1] = 1'b1;
						end
						default:
							// Trace: corev_apu/rv_plic/rtl/plic_regmap.sv:351:18
							resp_o.error = 1'b1;
					endcase
			end
		end
	end
	initial _sv2v_0 = 0;
endmodule
