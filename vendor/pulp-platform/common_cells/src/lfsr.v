module lfsr (
	clk_i,
	rst_ni,
	en_i,
	out_o
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:23:13
	parameter [31:0] LfsrWidth = 64;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:24:13
	parameter [31:0] OutWidth = 8;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:25:13
	parameter [LfsrWidth - 1:0] RstVal = 1'sb1;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:28:13
	parameter [31:0] CipherLayers = 0;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:29:13
	parameter [0:0] CipherReg = 1'b1;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:31:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:32:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:33:3
	input wire en_i;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:34:3
	output wire [OutWidth - 1:0] out_o;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:40:1
	localparam [4159:256] Masks = 3904'hc000000000000001e0000000000000039000000000000007e00000000000000fa00000000000001fd00000000000003fc000000000000064b0000000000000d8f0000000000001296000000000000249600000000000043570000000000008679000000000001030e00000000000206cd00000000000403fe00000000000807b800000000001004b200000000002006a800000000004004b20000000000800b8700000000010004f3000000000200072d00000000040006ae00000000080009e300000000100005830000000020000c9200000000400005b60000000080000ea600000001000007a30000000200000abf0000000400000842000000080000123e000000100000074e0000002000000ae9000000400000086a0000008000001213000001000000077e000002000000123b0000040000000877000008000000108d0000100000000ae90000200000000e9f00004000000008a6000080000000191e000100000000090e0002000000000fb30004000000000d7d00080000000016a50010000000000b4b00200000000010af0040000000000dde008000000000181a0100000000000b65020000000000102d0400000000000cd508000000000024c11000000000000ef620000000000013634000000000000fcd80000000000019e2;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:112:1
	localparam [63:0] Sbox4 = 64'h21748fe3da09b65c;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:118:1
	localparam [383:0] Perm = 384'hfef7cffae78ef6d74df2c70ceeb6cbeaa68ae69649e28608de75c7da6586d65545d24504ce34c3ca2482c61441c20400;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:128:1
	function automatic [63:0] sbox4_layer;
		// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:128:45
		input reg [63:0] in;
		// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:129:3
		reg [63:0] out;
		begin
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:132:3
			out[0+:4] = Sbox4[in[0+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:133:3
			out[4+:4] = Sbox4[in[4+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:134:3
			out[8+:4] = Sbox4[in[8+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:135:3
			out[12+:4] = Sbox4[in[12+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:137:3
			out[16+:4] = Sbox4[in[16+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:138:3
			out[20+:4] = Sbox4[in[20+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:139:3
			out[24+:4] = Sbox4[in[24+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:140:3
			out[28+:4] = Sbox4[in[28+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:142:3
			out[32+:4] = Sbox4[in[32+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:143:3
			out[36+:4] = Sbox4[in[36+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:144:3
			out[40+:4] = Sbox4[in[40+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:145:3
			out[44+:4] = Sbox4[in[44+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:147:3
			out[48+:4] = Sbox4[in[48+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:148:3
			out[52+:4] = Sbox4[in[52+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:149:3
			out[56+:4] = Sbox4[in[56+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:150:3
			out[60+:4] = Sbox4[in[60+:4] * 4+:4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:151:3
			sbox4_layer = out;
		end
	endfunction
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:154:1
	function automatic [63:0] perm_layer;
		// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:154:44
		input reg [63:0] in;
		// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:155:3
		reg [63:0] out;
		begin
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:158:3
			out[Perm[0+:6]] = in[0];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:159:3
			out[Perm[6+:6]] = in[1];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:160:3
			out[Perm[12+:6]] = in[2];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:161:3
			out[Perm[18+:6]] = in[3];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:162:3
			out[Perm[24+:6]] = in[4];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:163:3
			out[Perm[30+:6]] = in[5];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:164:3
			out[Perm[36+:6]] = in[6];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:165:3
			out[Perm[42+:6]] = in[7];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:166:3
			out[Perm[48+:6]] = in[8];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:167:3
			out[Perm[54+:6]] = in[9];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:169:3
			out[Perm[60+:6]] = in[10];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:170:3
			out[Perm[66+:6]] = in[11];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:171:3
			out[Perm[72+:6]] = in[12];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:172:3
			out[Perm[78+:6]] = in[13];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:173:3
			out[Perm[84+:6]] = in[14];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:174:3
			out[Perm[90+:6]] = in[15];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:175:3
			out[Perm[96+:6]] = in[16];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:176:3
			out[Perm[102+:6]] = in[17];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:177:3
			out[Perm[108+:6]] = in[18];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:178:3
			out[Perm[114+:6]] = in[19];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:180:3
			out[Perm[120+:6]] = in[20];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:181:3
			out[Perm[126+:6]] = in[21];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:182:3
			out[Perm[132+:6]] = in[22];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:183:3
			out[Perm[138+:6]] = in[23];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:184:3
			out[Perm[144+:6]] = in[24];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:185:3
			out[Perm[150+:6]] = in[25];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:186:3
			out[Perm[156+:6]] = in[26];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:187:3
			out[Perm[162+:6]] = in[27];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:188:3
			out[Perm[168+:6]] = in[28];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:189:3
			out[Perm[174+:6]] = in[29];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:191:3
			out[Perm[180+:6]] = in[30];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:192:3
			out[Perm[186+:6]] = in[31];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:193:3
			out[Perm[192+:6]] = in[32];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:194:3
			out[Perm[198+:6]] = in[33];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:195:3
			out[Perm[204+:6]] = in[34];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:196:3
			out[Perm[210+:6]] = in[35];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:197:3
			out[Perm[216+:6]] = in[36];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:198:3
			out[Perm[222+:6]] = in[37];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:199:3
			out[Perm[228+:6]] = in[38];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:200:3
			out[Perm[234+:6]] = in[39];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:202:3
			out[Perm[240+:6]] = in[40];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:203:3
			out[Perm[246+:6]] = in[41];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:204:3
			out[Perm[252+:6]] = in[42];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:205:3
			out[Perm[258+:6]] = in[43];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:206:3
			out[Perm[264+:6]] = in[44];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:207:3
			out[Perm[270+:6]] = in[45];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:208:3
			out[Perm[276+:6]] = in[46];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:209:3
			out[Perm[282+:6]] = in[47];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:210:3
			out[Perm[288+:6]] = in[48];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:211:3
			out[Perm[294+:6]] = in[49];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:213:3
			out[Perm[300+:6]] = in[50];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:214:3
			out[Perm[306+:6]] = in[51];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:215:3
			out[Perm[312+:6]] = in[52];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:216:3
			out[Perm[318+:6]] = in[53];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:217:3
			out[Perm[324+:6]] = in[54];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:218:3
			out[Perm[330+:6]] = in[55];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:219:3
			out[Perm[336+:6]] = in[56];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:220:3
			out[Perm[342+:6]] = in[57];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:221:3
			out[Perm[348+:6]] = in[58];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:222:3
			out[Perm[354+:6]] = in[59];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:224:3
			out[Perm[360+:6]] = in[60];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:225:3
			out[Perm[366+:6]] = in[61];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:226:3
			out[Perm[372+:6]] = in[62];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:227:3
			out[Perm[378+:6]] = in[63];
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:228:3
			perm_layer = out;
		end
	endfunction
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:235:1
	wire [LfsrWidth - 1:0] lfsr_d;
	reg [LfsrWidth - 1:0] lfsr_q;
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:236:1
	assign lfsr_d = (en_i ? (lfsr_q >> 1) ^ ({LfsrWidth {lfsr_q[0]}} & Masks[((68 - LfsrWidth) * 64) + (LfsrWidth - 1)-:LfsrWidth]) : lfsr_q);
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:239:1
	function automatic [LfsrWidth - 1:0] sv2v_cast_AC421;
		input reg [LfsrWidth - 1:0] inp;
		sv2v_cast_AC421 = inp;
	endfunction
	always @(posedge clk_i or negedge rst_ni) begin : p_regs
		// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:241:3
		if (!rst_ni)
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:242:5
			lfsr_q <= sv2v_cast_AC421(RstVal);
		else
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:244:5
			lfsr_q <= lfsr_d;
	end
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:252:1
	function automatic [63:0] sv2v_cast_64;
		input reg [63:0] inp;
		sv2v_cast_64 = inp;
	endfunction
	generate
		if (CipherLayers > $unsigned(0)) begin : g_cipher_layers
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:253:3
			reg [63:0] ciph_layer;
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:254:3
			localparam [31:0] NumRepl = (64 + LfsrWidth) / LfsrWidth;
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:256:3
			always @(*) begin : p_ciph_layer
				// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:257:5
				reg [63:0] tmp;
				if (_sv2v_0)
					;
				// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:258:5
				tmp = sv2v_cast_64({NumRepl {lfsr_q}});
				// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:259:5
				begin : sv2v_autoblock_1
					// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:259:9
					reg [31:0] k;
					// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:259:9
					for (k = 0; k < CipherLayers; k = k + 1)
						begin
							// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:260:7
							tmp = perm_layer(sbox4_layer(tmp));
						end
				end
				// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:262:5
				ciph_layer = tmp;
			end
			if (CipherReg) begin : g_cipher_reg
				// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:267:5
				wire [OutWidth - 1:0] out_d;
				reg [OutWidth - 1:0] out_q;
				// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:269:5
				assign out_d = (en_i ? ciph_layer[OutWidth - 1:0] : out_q);
				// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:270:5
				assign out_o = out_q[OutWidth - 1:0];
				// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:272:5
				always @(posedge clk_i or negedge rst_ni) begin : p_regs
					// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:273:7
					if (!rst_ni)
						// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:274:9
						out_q <= 1'sb0;
					else
						// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:276:9
						out_q <= out_d;
				end
			end
			else begin : g_no_out_reg
				// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:281:5
				assign out_o = ciph_layer[OutWidth - 1:0];
			end
		end
		else begin : g_no_cipher_layers
			// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:286:3
			assign out_o = lfsr_q[OutWidth - 1:0];
		end
	endgenerate
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:294:1
	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:309:3
	// removed an assertion item
	// all_zero : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(en_i |-> lfsr_d)
	// ) else begin
	// 	// Trace: vendor/pulp-platform/common_cells/src/lfsr.sv:311:12
	// 	$fatal(1, "Lfsr must not be all-zero.");
	// end
	initial _sv2v_0 = 0;
endmodule
