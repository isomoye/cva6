module uart_transmitter (
	CLK,
	RST,
	TXCLK,
	TXSTART,
	CLEAR,
	WLS,
	STB,
	PEN,
	EPS,
	SP,
	BC,
	DIN,
	TXFINISHED,
	SOUT
);
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:36:2
	input wire CLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:37:2
	input wire RST;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:38:2
	input wire TXCLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:39:2
	input wire TXSTART;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:40:2
	input wire CLEAR;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:41:2
	input wire [1:0] WLS;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:42:2
	input wire STB;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:43:2
	input wire PEN;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:44:2
	input wire EPS;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:45:2
	input wire SP;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:46:2
	input wire BC;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:47:2
	input wire [7:0] DIN;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:48:2
	output wire TXFINISHED;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:49:2
	output wire SOUT;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:52:1
	// removed localparam type bool_t
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:53:1
	// removed localparam type state_type
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:66:1
	reg [3:0] CState;
	reg [3:0] NState;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:67:1
	reg iTx2;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:68:1
	reg iSout;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:69:1
	reg iParity;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:70:1
	reg iFinished;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:72:1
	always @(posedge CLK or posedge RST)
		if (RST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:75:8
			CState <= 4'd0;
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:76:8
			iTx2 <= 1'b0;
		end
		else
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:80:8
			if (TXCLK == 1'b1) begin
				begin
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:82:13
					if (iTx2 == 1'b0) begin
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:84:18
						CState <= NState;
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:85:18
						iTx2 <= 1'b1;
					end
					else
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:89:18
						if (((WLS == 2'b00) && (STB == 1'b1)) && (CState == 4'd12)) begin
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:91:23
							CState <= NState;
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:92:23
							iTx2 <= 1'b1;
						end
						else begin
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:96:23
							CState <= CState;
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:97:23
							iTx2 <= 1'b0;
						end
				end
			end
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:103:1
	always @(CState or TXSTART or DIN or WLS or PEN or SP or EPS or STB or iParity) begin
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:105:6
		NState <= 4'd0;
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:106:6
		iSout <= 1'b1;
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:107:6
		case (CState)
			4'd0:
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:110:13
				if (TXSTART == 1'b1)
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:112:18
					NState <= 4'd1;
			4'd1: begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:119:13
				iSout <= 1'b0;
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:120:13
				NState <= 4'd2;
			end
			4'd2: begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:125:13
				iSout <= DIN[0];
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:126:13
				NState <= 4'd3;
			end
			4'd3: begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:131:13
				iSout <= DIN[1];
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:132:13
				NState <= 4'd4;
			end
			4'd4: begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:137:13
				iSout <= DIN[2];
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:138:13
				NState <= 4'd5;
			end
			4'd5: begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:143:13
				iSout <= DIN[3];
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:144:13
				NState <= 4'd6;
			end
			4'd6: begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:149:13
				iSout <= DIN[4];
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:150:13
				if (WLS == 2'b00) begin
					begin
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:152:18
						if (PEN == 1'b1)
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:154:23
							NState <= 4'd10;
						else
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:158:23
							NState <= 4'd11;
					end
				end
				else
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:163:18
					NState <= 4'd7;
			end
			4'd7: begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:169:13
				iSout <= DIN[5];
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:170:13
				if (WLS == 2'b01) begin
					begin
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:172:18
						if (PEN == 1'b1)
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:174:23
							NState <= 4'd10;
						else
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:178:23
							NState <= 4'd11;
					end
				end
				else
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:183:18
					NState <= 4'd8;
			end
			4'd8: begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:189:13
				iSout <= DIN[6];
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:190:13
				if (WLS == 2'b10) begin
					begin
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:192:18
						if (PEN == 1'b1)
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:194:23
							NState <= 4'd10;
						else
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:198:23
							NState <= 4'd11;
					end
				end
				else
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:203:18
					NState <= 4'd9;
			end
			4'd9: begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:209:13
				iSout <= DIN[7];
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:210:13
				if (PEN == 1'b1)
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:212:18
					NState <= 4'd10;
				else
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:216:18
					NState <= 4'd11;
			end
			4'd10: begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:222:13
				if (SP == 1'b1) begin
					begin
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:224:18
						if (EPS == 1'b1)
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:226:23
							iSout <= 1'b0;
						else
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:230:23
							iSout <= 1'b1;
					end
				end
				else
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:235:18
					if (EPS == 1'b1)
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:237:23
						iSout <= iParity;
					else
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:241:23
						iSout <= ~iParity;
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:244:13
				NState <= 4'd11;
			end
			4'd11:
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:249:13
				if (STB == 1'b1)
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:251:18
					NState <= 4'd12;
				else
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:255:18
					if (TXSTART == 1'b1)
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:257:23
						NState <= 4'd1;
			4'd12:
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:265:8
				if (TXSTART == 1'b1)
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:267:13
					NState <= 4'd1;
			default:
				;
		endcase
	end
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:281:5
	always @(DIN or WLS) begin : TX_PAR
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:283:9
		reg iP40;
		reg iP50;
		reg iP60;
		reg iP70;
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:284:9
		iP40 = (((DIN[4] ^ DIN[3]) ^ DIN[2]) ^ DIN[1]) ^ DIN[0];
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:285:9
		iP50 = DIN[5] ^ iP40;
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:286:9
		iP60 = DIN[6] ^ iP50;
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:287:9
		iP70 = DIN[7] ^ iP60;
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:289:9
		case (WLS)
			2'b00:
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:290:20
				iParity <= iP40;
			2'b01:
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:291:20
				iParity <= iP50;
			2'b10:
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:292:20
				iParity <= iP60;
			default:
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:293:22
				iParity <= iP70;
		endcase
	end
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:297:5
	reg iLast;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:298:5
	always @(posedge CLK or posedge RST) begin : TX_FIN
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:300:9
		if (RST) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:302:14
			iFinished <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:303:14
			iLast <= 1'b0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:307:14
			iFinished <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:308:14
			if ((iLast == 1'b0) && (CState == 4'd11))
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:309:16
				iFinished <= 1'b1;
			if (CState == 4'd11)
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:311:16
				iLast <= 1'b1;
			else
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:313:16
				iLast <= 1'b0;
		end
	end
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:317:1
	assign SOUT = (BC == 1'b0 ? iSout : 1'b0);
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_transmitter.sv:318:1
	assign TXFINISHED = iFinished;
endmodule
