module uart_receiver (
	CLK,
	RST,
	RXCLK,
	RXCLEAR,
	WLS,
	STB,
	PEN,
	EPS,
	SP,
	SIN,
	PE,
	FE,
	BI,
	DOUT,
	RXFINISHED
);
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:36:2
	input wire CLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:37:2
	input wire RST;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:38:2
	input wire RXCLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:39:2
	input wire RXCLEAR;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:40:2
	input wire [1:0] WLS;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:41:2
	input wire STB;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:42:2
	input wire PEN;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:43:2
	input wire EPS;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:44:2
	input wire SP;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:45:2
	input wire SIN;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:46:2
	output reg PE;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:47:2
	output wire FE;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:48:2
	output wire BI;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:49:2
	output wire [7:0] DOUT;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:50:2
	output wire RXFINISHED;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:53:1
	// removed localparam type bool_t
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:54:1
	// removed localparam type state_type
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:60:1
	reg [2:0] CState;
	reg [2:0] NState;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:61:1
	reg [3:0] iBaudCount;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:62:1
	reg iBaudCountClear;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:63:1
	reg iBaudStep;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:64:1
	reg iBaudStepD;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:65:1
	reg iFilterClear;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:66:1
	reg iFSIN;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:67:1
	reg iFStopBit;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:68:1
	reg iParity;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:69:1
	reg iParityReceived;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:70:1
	reg [3:0] iDataCount;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:71:1
	reg iDataCountInit;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:72:1
	reg iDataCountFinish;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:73:1
	reg iRXFinished;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:74:1
	reg iFE;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:75:1
	reg iBI;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:76:1
	reg iNoStopReceived;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:77:1
	reg [7:0] iDOUT;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:78:1
	// rewrote reg-to-output bindings
	wire [4:1] sv2v_tmp_RX_BRC_Q;
	always @(*) iBaudCount = sv2v_tmp_RX_BRC_Q;
	wire [1:1] sv2v_tmp_RX_BRC_OVERFLOW;
	always @(*) iBaudStep = sv2v_tmp_RX_BRC_OVERFLOW;
	slib_counter #(.WIDTH(4)) RX_BRC(
		.CLK(CLK),
		.RST(RST),
		.CLEAR(iBaudCountClear),
		.LOAD(1'b0),
		.ENABLE(RXCLK),
		.DOWN(1'b0),
		.D(4'b0000),
		.Q(sv2v_tmp_RX_BRC_Q),
		.OVERFLOW(sv2v_tmp_RX_BRC_OVERFLOW)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:88:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_RX_MVF_Q;
	always @(*) iFSIN = sv2v_tmp_RX_MVF_Q;
	slib_mv_filter #(
		.WIDTH(4),
		.THRESHOLD(10)
	) RX_MVF(
		.CLK(CLK),
		.RST(RST),
		.SAMPLE(RXCLK),
		.CLEAR(iFilterClear),
		.D(SIN),
		.Q(sv2v_tmp_RX_MVF_Q)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:95:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_RX_IFSB_Q;
	always @(*) iFStopBit = sv2v_tmp_RX_IFSB_Q;
	slib_input_filter #(.SIZE(4)) RX_IFSB(
		.CLK(CLK),
		.RST(RST),
		.CE(RXCLK),
		.D(SIN),
		.Q(sv2v_tmp_RX_IFSB_Q)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:102:1
	always @(posedge CLK or posedge RST)
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:104:6
		if (RST == 1'b1)
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:106:11
			iBaudStepD <= 1'b0;
		else
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:110:11
			iBaudStepD <= iBaudStep;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:114:1
	wire [1:1] sv2v_tmp_88C43;
	assign sv2v_tmp_88C43 = iBaudStepD | iBaudCountClear;
	always @(*) iFilterClear = sv2v_tmp_88C43;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:116:1
	always @(iDOUT or EPS)
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:118:1
		iParity <= (((((((iDOUT[7] ^ iDOUT[6]) ^ iDOUT[5]) ^ iDOUT[4]) ^ iDOUT[3]) ^ iDOUT[2]) ^ iDOUT[1]) ^ iDOUT[0]) ^ ~EPS;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:123:1
	always @(posedge CLK or posedge RST)
		if (RST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:126:8
			iDataCount <= 0;
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:128:8
			iDOUT <= 0;
		end
		else
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:132:8
			if (iDataCountInit == 1'b1) begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:134:13
				iDataCount <= 0;
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:136:13
				iDOUT <= 0;
			end
			else
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:140:13
				if ((iBaudStep == 1'b1) && (iDataCountFinish == 1'b0)) begin
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:142:18
					iDOUT[iDataCount] <= iFSIN;
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:143:18
					iDataCount <= iDataCount + 1;
				end
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:148:1
	wire [1:1] sv2v_tmp_23BA0;
	assign sv2v_tmp_23BA0 = (((((WLS == 2'b00) && (iDataCount == 5)) | ((WLS == 2'b01) && (iDataCount == 6))) | ((WLS == 2'b10) && (iDataCount == 7))) | ((WLS == 2'b11) && (iDataCount == 8)) ? 1'b1 : 1'b0);
	always @(*) iDataCountFinish = sv2v_tmp_23BA0;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:150:1
	always @(posedge CLK or posedge RST)
		if (RST == 1'b1)
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:153:8
			CState <= 3'd0;
		else
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:157:8
			CState <= NState;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:160:1
	always @(CState or SIN or iFSIN or iFStopBit or iBaudStep or iBaudCount or iDataCountFinish or PEN or WLS or STB) begin
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:162:1
		NState <= 3'd0;
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:163:1
		iBaudCountClear <= 1'b0;
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:164:1
		iDataCountInit <= 1'b0;
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:165:1
		iRXFinished <= 1'b0;
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:166:1
		case (CState)
			3'd0: begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:169:3
				if (SIN == 1'b0)
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:171:7
					NState <= 3'd1;
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:174:1
				iBaudCountClear <= 1'b1;
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:175:5
				iDataCountInit <= 1'b1;
			end
			3'd1: begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:180:3
				iDataCountInit <= 1'b1;
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:181:5
				if (iBaudStep == 1'b1) begin
					begin
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:183:7
						if (iFSIN == 1'b0)
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:185:11
							NState <= 3'd2;
					end
				end
				else
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:191:7
					NState <= 3'd1;
			end
			3'd2:
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:197:3
				if (iDataCountFinish == 1'b1) begin
					begin
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:199:7
						if (PEN == 1'b1)
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:201:11
							NState <= 3'd3;
						else
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:205:11
							NState <= 3'd4;
					end
				end
				else
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:210:7
					NState <= 3'd2;
			3'd3:
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:216:3
				if (iBaudStep == 1'b1)
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:218:7
					NState <= 3'd4;
				else
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:222:7
					NState <= 3'd3;
			3'd4:
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:228:3
				if (iBaudCount[3] == 1'b1) begin
					begin
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:230:7
						if (iFStopBit == 1'b0) begin
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:232:11
							iRXFinished <= 1'b1;
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:233:13
							NState <= 3'd5;
						end
						else begin
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:237:11
							iRXFinished <= 1'b1;
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:238:13
							NState <= 3'd0;
						end
					end
				end
				else
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:243:7
					NState <= 3'd4;
			3'd5:
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:249:3
				if (SIN == 1'b0)
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:251:7
					NState <= 3'd5;
			default:
				;
		endcase
	end
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:265:1
	always @(posedge CLK or posedge RST)
		// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:267:1
		if (RST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:269:3
			PE <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:270:5
			iParityReceived <= 1'b0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:274:3
			if ((CState == 3'd3) && (iBaudStep == 1'b1))
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:276:7
				iParityReceived <= iFSIN;
			if (PEN == 1'b1) begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:281:7
				PE <= 1'b0;
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:282:9
				if (SP == 1'b1) begin
					begin
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:284:11
						if ((EPS ^ iParityReceived) == 1'b0)
							// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:286:15
							PE <= 1'b1;
					end
				end
				else
					// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:292:11
					if (iParity != iParityReceived)
						// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:294:15
						PE <= 1'b1;
			end
			else begin
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:301:7
				PE <= 1'b0;
				// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:302:9
				iParityReceived <= 1'b0;
			end
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:308:1
	wire [1:1] sv2v_tmp_AE5D7;
	assign sv2v_tmp_AE5D7 = ((iFStopBit == 1'b0) && (CState == 3'd4) ? 1'b1 : 1'b0);
	always @(*) iNoStopReceived = sv2v_tmp_AE5D7;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:309:1
	wire [1:1] sv2v_tmp_CD036;
	assign sv2v_tmp_CD036 = (((iDOUT == 8'b00000000) && (iParityReceived == 1'b0)) && (iNoStopReceived == 1'b1) ? 1'b1 : 1'b0);
	always @(*) iBI = sv2v_tmp_CD036;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:310:1
	wire [1:1] sv2v_tmp_31400;
	assign sv2v_tmp_31400 = (iNoStopReceived == 1'b1 ? 1'b1 : 1'b0);
	always @(*) iFE = sv2v_tmp_31400;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:311:1
	assign DOUT = iDOUT;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:312:1
	assign BI = iBI;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:313:1
	assign FE = iFE;
	// Trace: corev_apu/fpga/src/apb_uart/src/uart_receiver.sv:314:1
	assign RXFINISHED = iRXFinished;
endmodule
