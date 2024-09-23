module apb_uart (
	CLK,
	RSTN,
	PSEL,
	PENABLE,
	PWRITE,
	PADDR,
	PWDATA,
	PRDATA,
	PREADY,
	PSLVERR,
	INT,
	OUT1N,
	OUT2N,
	RTSN,
	DTRN,
	CTSN,
	DSRN,
	DCDN,
	RIN,
	SIN,
	SOUT
);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:36:2
	input wire CLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:37:2
	input wire RSTN;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:38:2
	input wire PSEL;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:39:2
	input wire PENABLE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:40:2
	input wire PWRITE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:41:2
	input wire [2:0] PADDR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:42:2
	input wire [31:0] PWDATA;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:43:2
	output reg [31:0] PRDATA;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:44:2
	output wire PREADY;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:45:2
	output wire PSLVERR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:46:2
	output wire INT;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:47:2
	output reg OUT1N;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:48:2
	output reg OUT2N;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:49:2
	output reg RTSN;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:50:2
	output reg DTRN;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:51:2
	input wire CTSN;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:52:2
	input wire DSRN;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:53:2
	input wire DCDN;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:54:2
	input wire RIN;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:55:2
	input wire SIN;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:56:2
	output reg SOUT;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:59:1
	// removed localparam type bool_t
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:66:1
	reg iWrite;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:67:1
	reg iRead;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:68:1
	reg iRST;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:69:1
	reg iRBRRead;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:70:1
	reg iTHRWrite;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:71:1
	reg iDLLWrite;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:72:1
	reg iDLMWrite;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:73:1
	reg iIERWrite;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:74:1
	reg iIIRRead;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:75:1
	reg iFCRWrite;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:76:1
	reg iLCRWrite;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:77:1
	reg iMCRWrite;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:78:1
	reg iLSRRead;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:79:1
	reg iMSRRead;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:80:1
	reg iSCRWrite;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:81:1
	reg [7:0] iTSR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:82:1
	reg [7:0] iRBR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:83:1
	reg [7:0] iDLL;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:84:1
	reg [7:0] iDLM;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:85:1
	reg [7:0] iIER;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:86:1
	reg [7:0] iIIR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:87:1
	reg [7:0] iFCR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:88:1
	reg [7:0] iLCR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:89:1
	reg [7:0] iMCR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:90:1
	reg [7:0] iLSR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:91:1
	reg [7:0] iMSR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:92:1
	reg [7:0] iSCR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:93:1
	reg iIER_ERBI;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:94:1
	reg iIER_ETBEI;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:95:1
	reg iIER_ELSI;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:96:1
	reg iIER_EDSSI;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:97:1
	reg iIIR_PI;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:98:1
	reg iIIR_ID0;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:99:1
	reg iIIR_ID1;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:100:1
	reg iIIR_ID2;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:101:1
	reg iIIR_FIFO64;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:102:1
	reg iFCR_FIFOEnable;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:103:1
	reg iFCR_RXFIFOReset;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:104:1
	reg iFCR_TXFIFOReset;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:105:1
	reg iFCR_DMAMode;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:106:1
	reg iFCR_FIFO64E;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:107:1
	reg [1:0] iFCR_RXTrigger;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:108:1
	reg [1:0] iLCR_WLS;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:109:1
	reg iLCR_STB;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:110:1
	reg iLCR_PEN;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:111:1
	reg iLCR_EPS;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:112:1
	reg iLCR_SP;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:113:1
	reg iLCR_BC;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:114:1
	reg iLCR_DLAB;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:115:1
	reg iMCR_DTR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:116:1
	reg iMCR_RTS;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:117:1
	reg iMCR_OUT1;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:118:1
	reg iMCR_OUT2;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:119:1
	reg iMCR_LOOP;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:120:1
	reg iMCR_AFE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:121:1
	reg iLSR_DR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:122:1
	reg iLSR_OE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:123:1
	reg iLSR_PE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:124:1
	reg iLSR_FE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:125:1
	reg iLSR_BI;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:126:1
	reg iLSR_THRE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:127:1
	reg iLSR_TEMT;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:128:1
	reg iLSR_FIFOERR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:129:1
	reg iMSR_dCTS;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:130:1
	reg iMSR_dDSR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:131:1
	reg iMSR_TERI;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:132:1
	reg iMSR_dDCD;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:133:1
	reg iMSR_CTS;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:134:1
	reg iMSR_DSR;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:135:1
	reg iMSR_RI;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:136:1
	reg iMSR_DCD;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:137:1
	reg iCTSNs;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:138:1
	reg iDSRNs;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:139:1
	reg iDCDNs;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:140:1
	reg iRINs;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:141:1
	reg iCTSn;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:142:1
	reg iDSRn;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:143:1
	reg iDCDn;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:144:1
	reg iRIn;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:145:1
	reg iCTSnRE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:146:1
	reg iCTSnFE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:147:1
	reg iDSRnRE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:148:1
	reg iDSRnFE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:149:1
	reg iDCDnRE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:150:1
	reg iDCDnFE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:151:1
	reg iRInRE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:152:1
	reg iRInFE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:153:1
	reg [15:0] iBaudgenDiv;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:154:1
	reg iBaudtick16x;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:155:1
	reg iBaudtick2x;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:156:1
	reg iRCLK;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:157:1
	reg iBAUDOUTN;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:158:1
	reg iTXFIFOClear;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:159:1
	reg iTXFIFOWrite;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:160:1
	reg iTXFIFORead;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:161:1
	reg iTXFIFOEmpty;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:162:1
	reg iTXFIFOFull;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:163:1
	reg iTXFIFO16Full;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:164:1
	reg iTXFIFO64Full;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:165:1
	reg [5:0] iTXFIFOUsage;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:166:1
	reg [7:0] iTXFIFOQ;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:167:1
	reg iRXFIFOClear;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:168:1
	reg iRXFIFOWrite;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:169:1
	reg iRXFIFORead;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:170:1
	reg iRXFIFOEmpty;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:171:1
	reg iRXFIFOFull;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:172:1
	reg iRXFIFO16Full;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:173:1
	reg iRXFIFO64Full;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:174:1
	reg [10:0] iRXFIFOD;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:175:1
	reg [10:0] iRXFIFOQ;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:176:1
	reg [5:0] iRXFIFOUsage;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:177:1
	reg iRXFIFOTrigger;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:178:1
	reg iRXFIFO16Trigger;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:179:1
	reg iRXFIFO64Trigger;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:180:1
	reg iRXFIFOPE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:181:1
	reg iRXFIFOFE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:182:1
	reg iRXFIFOBI;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:183:1
	reg iSOUT;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:184:1
	reg iTXStart;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:185:1
	reg iTXClear;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:186:1
	reg iTXFinished;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:187:1
	reg iTXRunning;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:188:1
	reg iSINr;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:189:1
	reg iSIN;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:190:1
	reg iRXFinished;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:191:1
	reg iRXClear;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:192:1
	reg [7:0] iRXData;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:193:1
	reg iRXPE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:194:1
	reg iRXFE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:195:1
	reg iRXBI;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:196:1
	reg iFERE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:197:1
	reg iPERE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:198:1
	reg iBIRE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:199:1
	reg [6:0] iFECounter;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:200:1
	reg iFEIncrement;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:201:1
	reg iFEDecrement;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:202:1
	reg iRDAInterrupt;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:203:1
	reg [5:0] iTimeoutCount;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:204:1
	reg iCharTimeout;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:205:1
	reg iLSR_THRERE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:206:1
	reg iTHRInterrupt;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:207:1
	reg iTXEnable;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:208:1
	reg iRTS;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:209:1
	wire [1:1] sv2v_tmp_01178;
	assign sv2v_tmp_01178 = (((PSEL == 1'b1) && (PENABLE == 1'b1)) && (PWRITE == 1'b1) ? 1'b1 : 1'b0);
	always @(*) iWrite = sv2v_tmp_01178;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:210:1
	wire [1:1] sv2v_tmp_B0FC5;
	assign sv2v_tmp_B0FC5 = (((PSEL == 1'b1) && (PENABLE == 1'b1)) && (PWRITE == 1'b0) ? 1'b1 : 1'b0);
	always @(*) iRead = sv2v_tmp_B0FC5;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:211:1
	wire [1:1] sv2v_tmp_6231D;
	assign sv2v_tmp_6231D = (RSTN == 1'b0 ? 1'b1 : 1'b0);
	always @(*) iRST = sv2v_tmp_6231D;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:212:1
	wire [1:1] sv2v_tmp_B8613;
	assign sv2v_tmp_B8613 = (((iRead == 1'b1) && (PADDR == 3'b000)) && (iLCR_DLAB == 1'b0) ? 1'b1 : 1'b0);
	always @(*) iRBRRead = sv2v_tmp_B8613;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:213:1
	wire [1:1] sv2v_tmp_4842D;
	assign sv2v_tmp_4842D = (((iWrite == 1'b1) && (PADDR == 3'b000)) && (iLCR_DLAB == 1'b0) ? 1'b1 : 1'b0);
	always @(*) iTHRWrite = sv2v_tmp_4842D;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:214:1
	wire [1:1] sv2v_tmp_A0A46;
	assign sv2v_tmp_A0A46 = (((iWrite == 1'b1) && (PADDR == 3'b000)) && (iLCR_DLAB == 1'b1) ? 1'b1 : 1'b0);
	always @(*) iDLLWrite = sv2v_tmp_A0A46;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:215:1
	wire [1:1] sv2v_tmp_4D526;
	assign sv2v_tmp_4D526 = (((iWrite == 1'b1) && (PADDR == 3'b001)) && (iLCR_DLAB == 1'b1) ? 1'b1 : 1'b0);
	always @(*) iDLMWrite = sv2v_tmp_4D526;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:216:1
	wire [1:1] sv2v_tmp_27A6C;
	assign sv2v_tmp_27A6C = (((iWrite == 1'b1) && (PADDR == 3'b001)) && (iLCR_DLAB == 1'b0) ? 1'b1 : 1'b0);
	always @(*) iIERWrite = sv2v_tmp_27A6C;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:217:1
	wire [1:1] sv2v_tmp_1C981;
	assign sv2v_tmp_1C981 = ((iRead == 1'b1) && (PADDR == 3'b010) ? 1'b1 : 1'b0);
	always @(*) iIIRRead = sv2v_tmp_1C981;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:218:1
	wire [1:1] sv2v_tmp_E60AA;
	assign sv2v_tmp_E60AA = ((iWrite == 1'b1) && (PADDR == 3'b010) ? 1'b1 : 1'b0);
	always @(*) iFCRWrite = sv2v_tmp_E60AA;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:219:1
	wire [1:1] sv2v_tmp_A6721;
	assign sv2v_tmp_A6721 = ((iWrite == 1'b1) && (PADDR == 3'b011) ? 1'b1 : 1'b0);
	always @(*) iLCRWrite = sv2v_tmp_A6721;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:220:1
	wire [1:1] sv2v_tmp_A08C1;
	assign sv2v_tmp_A08C1 = ((iWrite == 1'b1) && (PADDR == 3'b100) ? 1'b1 : 1'b0);
	always @(*) iMCRWrite = sv2v_tmp_A08C1;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:221:1
	wire [1:1] sv2v_tmp_788FF;
	assign sv2v_tmp_788FF = ((iRead == 1'b1) && (PADDR == 3'b101) ? 1'b1 : 1'b0);
	always @(*) iLSRRead = sv2v_tmp_788FF;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:222:1
	wire [1:1] sv2v_tmp_7D07E;
	assign sv2v_tmp_7D07E = ((iRead == 1'b1) && (PADDR == 3'b110) ? 1'b1 : 1'b0);
	always @(*) iMSRRead = sv2v_tmp_7D07E;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:223:1
	wire [1:1] sv2v_tmp_2D42F;
	assign sv2v_tmp_2D42F = ((iWrite == 1'b1) && (PADDR == 3'b111) ? 1'b1 : 1'b0);
	always @(*) iSCRWrite = sv2v_tmp_2D42F;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:224:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_IS_SIN_Q;
	always @(*) iSINr = sv2v_tmp_UART_IS_SIN_Q;
	slib_input_sync UART_IS_SIN(
		.CLK(CLK),
		.RST(iRST),
		.D(SIN),
		.Q(sv2v_tmp_UART_IS_SIN_Q)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:225:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_IS_CTS_Q;
	always @(*) iCTSNs = sv2v_tmp_UART_IS_CTS_Q;
	slib_input_sync UART_IS_CTS(
		.CLK(CLK),
		.RST(iRST),
		.D(CTSN),
		.Q(sv2v_tmp_UART_IS_CTS_Q)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:226:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_IS_DSR_Q;
	always @(*) iDSRNs = sv2v_tmp_UART_IS_DSR_Q;
	slib_input_sync UART_IS_DSR(
		.CLK(CLK),
		.RST(iRST),
		.D(DSRN),
		.Q(sv2v_tmp_UART_IS_DSR_Q)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:227:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_IS_DCD_Q;
	always @(*) iDCDNs = sv2v_tmp_UART_IS_DCD_Q;
	slib_input_sync UART_IS_DCD(
		.CLK(CLK),
		.RST(iRST),
		.D(DCDN),
		.Q(sv2v_tmp_UART_IS_DCD_Q)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:228:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_IS_RI_Q;
	always @(*) iRINs = sv2v_tmp_UART_IS_RI_Q;
	slib_input_sync UART_IS_RI(
		.CLK(CLK),
		.RST(iRST),
		.D(RIN),
		.Q(sv2v_tmp_UART_IS_RI_Q)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:229:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_IF_CTS_Q;
	always @(*) iCTSn = sv2v_tmp_UART_IF_CTS_Q;
	slib_input_filter #(.SIZE(2)) UART_IF_CTS(
		.CLK(CLK),
		.RST(iRST),
		.CE(iBaudtick2x),
		.D(iCTSNs),
		.Q(sv2v_tmp_UART_IF_CTS_Q)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:230:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_IF_DSR_Q;
	always @(*) iDSRn = sv2v_tmp_UART_IF_DSR_Q;
	slib_input_filter #(.SIZE(2)) UART_IF_DSR(
		.CLK(CLK),
		.RST(iRST),
		.CE(iBaudtick2x),
		.D(iDSRNs),
		.Q(sv2v_tmp_UART_IF_DSR_Q)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:231:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_IF_DCD_Q;
	always @(*) iDCDn = sv2v_tmp_UART_IF_DCD_Q;
	slib_input_filter #(.SIZE(2)) UART_IF_DCD(
		.CLK(CLK),
		.RST(iRST),
		.CE(iBaudtick2x),
		.D(iDCDNs),
		.Q(sv2v_tmp_UART_IF_DCD_Q)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:232:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_IF_RI_Q;
	always @(*) iRIn = sv2v_tmp_UART_IF_RI_Q;
	slib_input_filter #(.SIZE(2)) UART_IF_RI(
		.CLK(CLK),
		.RST(iRST),
		.CE(iBaudtick2x),
		.D(iRINs),
		.Q(sv2v_tmp_UART_IF_RI_Q)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:234:1
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:238:8
			iDLL <= 1;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:240:8
			iDLM <= 0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:244:8
			if (iDLLWrite == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:246:13
				iDLL <= PWDATA[7:0];
			if (iDLMWrite == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:250:13
				iDLM <= PWDATA[7:0];
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:254:1
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1)
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:257:8
			iIER[3:0] <= 0;
		else
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:261:8
			if (iIERWrite == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:263:13
				iIER[3:0] <= PWDATA[3:0];
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:267:1
	wire [1:1] sv2v_tmp_FC20E;
	assign sv2v_tmp_FC20E = iIER[0];
	always @(*) iIER_ERBI = sv2v_tmp_FC20E;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:268:1
	wire [1:1] sv2v_tmp_C70CB;
	assign sv2v_tmp_C70CB = iIER[1];
	always @(*) iIER_ETBEI = sv2v_tmp_C70CB;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:269:1
	wire [1:1] sv2v_tmp_B64F3;
	assign sv2v_tmp_B64F3 = iIER[2];
	always @(*) iIER_ELSI = sv2v_tmp_B64F3;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:270:1
	wire [1:1] sv2v_tmp_FBFFE;
	assign sv2v_tmp_FBFFE = iIER[3];
	always @(*) iIER_EDSSI = sv2v_tmp_FBFFE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:271:1
	wire [4:1] sv2v_tmp_2C6ED;
	assign sv2v_tmp_2C6ED = 0;
	always @(*) iIER[7:4] = sv2v_tmp_2C6ED;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:273:1
	// rewrote reg-to-output bindings
	wire [4:1] sv2v_tmp_UART_IIC_IIR;
	always @(*) iIIR[3:0] = sv2v_tmp_UART_IIC_IIR;
	uart_interrupt UART_IIC(
		.CLK(CLK),
		.RST(iRST),
		.IER(iIER[3:0]),
		.LSR(iLSR[4:0]),
		.THI(iTHRInterrupt),
		.RDA(iRDAInterrupt),
		.CTI(iCharTimeout),
		.AFE(iMCR_AFE),
		.MSR(iMSR[3:0]),
		.IIR(sv2v_tmp_UART_IIC_IIR),
		.INT(INT)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:285:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_IIC_THRE_ED_RE;
	always @(*) iLSR_THRERE = sv2v_tmp_UART_IIC_THRE_ED_RE;
	slib_edge_detect UART_IIC_THRE_ED(
		.CLK(CLK),
		.RST(iRST),
		.D(iLSR_THRE),
		.RE(sv2v_tmp_UART_IIC_THRE_ED_RE),
		.FE()
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:292:1
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1)
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:295:8
			iTHRInterrupt <= 1'b0;
		else
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:299:8
			if (((iLSR_THRERE == 1'b1) | (iFCR_TXFIFOReset == 1'b1)) | (((iIERWrite == 1'b1) && (PWDATA[1] == 1'b1)) && (iLSR_THRE == 1'b1)))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:301:13
				iTHRInterrupt <= 1'b1;
			else if (((iIIRRead == 1'b1) && (iIIR[3:1] == 3'b001)) | (iTHRWrite == 1'b1))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:305:13
				iTHRInterrupt <= 1'b0;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:309:1
	wire [1:1] sv2v_tmp_D7B83;
	assign sv2v_tmp_D7B83 = (((iFCR_FIFOEnable == 1'b0) && (iLSR_DR == 1'b1)) | ((iFCR_FIFOEnable == 1'b1) && (iRXFIFOTrigger == 1'b1)) ? 1'b1 : 1'b0);
	always @(*) iRDAInterrupt = sv2v_tmp_D7B83;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:310:1
	wire [1:1] sv2v_tmp_F5839;
	assign sv2v_tmp_F5839 = iIIR[0];
	always @(*) iIIR_PI = sv2v_tmp_F5839;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:311:1
	wire [1:1] sv2v_tmp_D577F;
	assign sv2v_tmp_D577F = iIIR[1];
	always @(*) iIIR_ID0 = sv2v_tmp_D577F;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:312:1
	wire [1:1] sv2v_tmp_5EF6D;
	assign sv2v_tmp_5EF6D = iIIR[2];
	always @(*) iIIR_ID1 = sv2v_tmp_5EF6D;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:313:1
	wire [1:1] sv2v_tmp_B05DF;
	assign sv2v_tmp_B05DF = iIIR[3];
	always @(*) iIIR_ID2 = sv2v_tmp_B05DF;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:314:1
	wire [1:1] sv2v_tmp_AC975;
	assign sv2v_tmp_AC975 = iIIR[5];
	always @(*) iIIR_FIFO64 = sv2v_tmp_AC975;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:315:1
	wire [1:1] sv2v_tmp_5163A;
	assign sv2v_tmp_5163A = 0;
	always @(*) iIIR[4] = sv2v_tmp_5163A;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:316:1
	wire [1:1] sv2v_tmp_6E1B7;
	assign sv2v_tmp_6E1B7 = (iFCR_FIFOEnable ? iFCR_FIFO64E : 1'b0);
	always @(*) iIIR[5] = sv2v_tmp_6E1B7;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:317:1
	wire [1:1] sv2v_tmp_84F9C;
	assign sv2v_tmp_84F9C = iFCR_FIFOEnable;
	always @(*) iIIR[6] = sv2v_tmp_84F9C;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:318:1
	wire [1:1] sv2v_tmp_EE66D;
	assign sv2v_tmp_EE66D = iFCR_FIFOEnable;
	always @(*) iIIR[7] = sv2v_tmp_EE66D;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:320:1
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:324:8
			iTimeoutCount <= 0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:325:8
			iCharTimeout <= 1'b0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:329:8
			if (((iRXFIFOEmpty == 1'b1) | (iRBRRead == 1'b1)) | (iRXFIFOWrite == 1'b1))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:332:13
				iTimeoutCount <= 0;
			else if (((iRXFIFOEmpty == 1'b0) && (iBaudtick2x == 1'b1)) && (iTimeoutCount[5] == 1'b0))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:336:13
				iTimeoutCount <= iTimeoutCount + 1;
			if (iFCR_FIFOEnable == 1'b1) begin
				begin
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:340:13
					if (iRBRRead == 1'b1)
						// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:342:18
						iCharTimeout <= 1'b0;
					else if (iTimeoutCount[5] == 1'b1)
						// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:346:18
						iCharTimeout <= 1'b1;
				end
			end
			else
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:351:13
				iCharTimeout <= 1'b0;
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:355:1
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:358:8
			iFCR_FIFOEnable <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:359:8
			iFCR_RXFIFOReset <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:360:8
			iFCR_TXFIFOReset <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:361:8
			iFCR_DMAMode <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:362:8
			iFCR_FIFO64E <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:364:8
			iFCR_RXTrigger <= 0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:368:8
			iFCR_RXFIFOReset <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:369:8
			iFCR_TXFIFOReset <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:370:8
			if (iFCRWrite == 1'b1) begin
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:372:13
				iFCR_FIFOEnable <= PWDATA[0];
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:373:13
				iFCR_DMAMode <= PWDATA[3];
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:374:13
				iFCR_RXTrigger <= PWDATA[7:6];
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:375:13
				if (iLCR_DLAB == 1'b1)
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:377:18
					iFCR_FIFO64E <= PWDATA[5];
				if (((PWDATA[1] == 1'b1) | ((iFCR_FIFOEnable == 1'b0) && (PWDATA[0] == 1'b1))) | ((iFCR_FIFOEnable == 1'b1) && (PWDATA[0] == 1'b0)))
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:382:18
					iFCR_RXFIFOReset <= 1'b1;
				if (((PWDATA[2] == 1'b1) | ((iFCR_FIFOEnable == 1'b0) && (PWDATA[0] == 1'b1))) | ((iFCR_FIFOEnable == 1'b1) && (PWDATA[0] == 1'b0)))
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:387:18
					iFCR_TXFIFOReset <= 1'b1;
			end
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:392:1
	wire [1:1] sv2v_tmp_F538F;
	assign sv2v_tmp_F538F = iFCR_FIFOEnable;
	always @(*) iFCR[0] = sv2v_tmp_F538F;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:393:1
	wire [1:1] sv2v_tmp_20BD3;
	assign sv2v_tmp_20BD3 = iFCR_RXFIFOReset;
	always @(*) iFCR[1] = sv2v_tmp_20BD3;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:394:1
	wire [1:1] sv2v_tmp_33416;
	assign sv2v_tmp_33416 = iFCR_TXFIFOReset;
	always @(*) iFCR[2] = sv2v_tmp_33416;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:395:1
	wire [1:1] sv2v_tmp_F108F;
	assign sv2v_tmp_F108F = iFCR_DMAMode;
	always @(*) iFCR[3] = sv2v_tmp_F108F;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:396:1
	wire [1:1] sv2v_tmp_91DDE;
	assign sv2v_tmp_91DDE = 1'b0;
	always @(*) iFCR[4] = sv2v_tmp_91DDE;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:397:1
	wire [1:1] sv2v_tmp_A91E3;
	assign sv2v_tmp_A91E3 = iFCR_FIFO64E;
	always @(*) iFCR[5] = sv2v_tmp_A91E3;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:398:1
	wire [2:1] sv2v_tmp_597D2;
	assign sv2v_tmp_597D2 = iFCR_RXTrigger;
	always @(*) iFCR[7:6] = sv2v_tmp_597D2;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:400:1
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1)
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:404:8
			iLCR <= 0;
		else
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:408:8
			if (iLCRWrite == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:410:13
				iLCR <= PWDATA[7:0];
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:414:1
	wire [2:1] sv2v_tmp_74796;
	assign sv2v_tmp_74796 = iLCR[1:0];
	always @(*) iLCR_WLS = sv2v_tmp_74796;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:415:1
	wire [1:1] sv2v_tmp_A4864;
	assign sv2v_tmp_A4864 = iLCR[2];
	always @(*) iLCR_STB = sv2v_tmp_A4864;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:416:1
	wire [1:1] sv2v_tmp_43E9B;
	assign sv2v_tmp_43E9B = iLCR[3];
	always @(*) iLCR_PEN = sv2v_tmp_43E9B;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:417:1
	wire [1:1] sv2v_tmp_00181;
	assign sv2v_tmp_00181 = iLCR[4];
	always @(*) iLCR_EPS = sv2v_tmp_00181;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:418:1
	wire [1:1] sv2v_tmp_91EA6;
	assign sv2v_tmp_91EA6 = iLCR[5];
	always @(*) iLCR_SP = sv2v_tmp_91EA6;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:419:1
	wire [1:1] sv2v_tmp_CD427;
	assign sv2v_tmp_CD427 = iLCR[6];
	always @(*) iLCR_BC = sv2v_tmp_CD427;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:420:1
	wire [1:1] sv2v_tmp_3594E;
	assign sv2v_tmp_3594E = iLCR[7];
	always @(*) iLCR_DLAB = sv2v_tmp_3594E;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:422:1
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1)
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:425:8
			iMCR[5:0] <= 0;
		else
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:429:8
			if (iMCRWrite == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:431:13
				iMCR[5:0] <= PWDATA[5:0];
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:435:1
	wire [1:1] sv2v_tmp_E0411;
	assign sv2v_tmp_E0411 = iMCR[0];
	always @(*) iMCR_DTR = sv2v_tmp_E0411;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:436:1
	wire [1:1] sv2v_tmp_43D77;
	assign sv2v_tmp_43D77 = iMCR[1];
	always @(*) iMCR_RTS = sv2v_tmp_43D77;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:437:1
	wire [1:1] sv2v_tmp_6B7AF;
	assign sv2v_tmp_6B7AF = iMCR[2];
	always @(*) iMCR_OUT1 = sv2v_tmp_6B7AF;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:438:1
	wire [1:1] sv2v_tmp_2033D;
	assign sv2v_tmp_2033D = iMCR[3];
	always @(*) iMCR_OUT2 = sv2v_tmp_2033D;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:439:1
	wire [1:1] sv2v_tmp_A512A;
	assign sv2v_tmp_A512A = iMCR[4];
	always @(*) iMCR_LOOP = sv2v_tmp_A512A;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:440:1
	wire [1:1] sv2v_tmp_F96A4;
	assign sv2v_tmp_F96A4 = iMCR[5];
	always @(*) iMCR_AFE = sv2v_tmp_F96A4;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:441:1
	wire [2:1] sv2v_tmp_00B0D;
	assign sv2v_tmp_00B0D = 0;
	always @(*) iMCR[7:6] = sv2v_tmp_00B0D;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:443:1
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:446:8
			iLSR_OE <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:447:8
			iLSR_PE <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:448:8
			iLSR_FE <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:449:8
			iLSR_BI <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:450:8
			iFECounter <= 0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:451:8
			iLSR_FIFOERR <= 1'b0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:455:8
			if ((((iFCR_FIFOEnable == 1'b0) && (iLSR_DR == 1'b1)) && (iRXFinished == 1'b1)) | (((iFCR_FIFOEnable == 1'b1) && (iRXFIFOFull == 1'b1)) && (iRXFinished == 1'b1)))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:457:13
				iLSR_OE <= 1'b1;
			else if (iLSRRead == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:461:13
				iLSR_OE <= 1'b0;
			if (iPERE == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:465:13
				iLSR_PE <= 1'b1;
			else if (iLSRRead == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:469:13
				iLSR_PE <= 1'b0;
			if (iFERE == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:473:13
				iLSR_FE <= 1'b1;
			else if (iLSRRead == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:477:13
				iLSR_FE <= 1'b0;
			if (iBIRE == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:481:13
				iLSR_BI <= 1'b1;
			else if (iLSRRead == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:485:13
				iLSR_BI <= 1'b0;
			if (iFECounter != 0)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:489:13
				iLSR_FIFOERR <= 1'b1;
			else if ((iRXFIFOEmpty == 1'b1) | (iRXFIFOQ[10:8] == 3'b000))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:493:13
				iLSR_FIFOERR <= 1'b0;
			if (iRXFIFOClear == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:497:13
				iFECounter <= 0;
			else
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:501:13
				if ((iFEIncrement == 1'b1) && (iFEDecrement == 1'b0))
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:503:18
					iFECounter <= iFECounter + 1;
				else if ((iFEIncrement == 1'b0) && (iFEDecrement == 1'b1))
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:507:18
					iFECounter <= iFECounter - 1;
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:512:1
	wire [1:1] sv2v_tmp_0460D;
	assign sv2v_tmp_0460D = ((iRXFIFOEmpty == 1'b0) && (iRXFIFOQ[8] == 1'b1) ? 1'b1 : 1'b0);
	always @(*) iRXFIFOPE = sv2v_tmp_0460D;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:513:1
	wire [1:1] sv2v_tmp_A212A;
	assign sv2v_tmp_A212A = ((iRXFIFOEmpty == 1'b0) && (iRXFIFOQ[9] == 1'b1) ? 1'b1 : 1'b0);
	always @(*) iRXFIFOFE = sv2v_tmp_A212A;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:514:1
	wire [1:1] sv2v_tmp_287FD;
	assign sv2v_tmp_287FD = ((iRXFIFOEmpty == 1'b0) && (iRXFIFOQ[10] == 1'b1) ? 1'b1 : 1'b0);
	always @(*) iRXFIFOBI = sv2v_tmp_287FD;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:515:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_PEDET_RE;
	always @(*) iPERE = sv2v_tmp_UART_PEDET_RE;
	slib_edge_detect UART_PEDET(
		.CLK(CLK),
		.RST(iRST),
		.D(iRXFIFOPE),
		.RE(sv2v_tmp_UART_PEDET_RE),
		.FE()
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:516:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_FEDET_RE;
	always @(*) iFERE = sv2v_tmp_UART_FEDET_RE;
	slib_edge_detect UART_FEDET(
		.CLK(CLK),
		.RST(iRST),
		.D(iRXFIFOFE),
		.RE(sv2v_tmp_UART_FEDET_RE),
		.FE()
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:517:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_BIDET_RE;
	always @(*) iBIRE = sv2v_tmp_UART_BIDET_RE;
	slib_edge_detect UART_BIDET(
		.CLK(CLK),
		.RST(iRST),
		.D(iRXFIFOBI),
		.RE(sv2v_tmp_UART_BIDET_RE),
		.FE()
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:518:1
	wire [1:1] sv2v_tmp_66DA6;
	assign sv2v_tmp_66DA6 = ((iRXFIFOWrite == 1'b1) && (iRXFIFOD[10:8] != 3'b000) ? 1'b1 : 1'b0);
	always @(*) iFEIncrement = sv2v_tmp_66DA6;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:519:1
	wire [1:1] sv2v_tmp_73F17;
	assign sv2v_tmp_73F17 = (((iFECounter != 0) && (iRXFIFOEmpty == 1'b0)) && (((iPERE == 1'b1) | (iFERE == 1'b1)) | (iBIRE == 1'b1)) ? 1'b1 : 1'b0);
	always @(*) iFEDecrement = sv2v_tmp_73F17;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:520:1
	wire [1:1] sv2v_tmp_52456;
	assign sv2v_tmp_52456 = iLSR_DR;
	always @(*) iLSR[0] = sv2v_tmp_52456;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:521:1
	wire [1:1] sv2v_tmp_A6FEB;
	assign sv2v_tmp_A6FEB = iLSR_OE;
	always @(*) iLSR[1] = sv2v_tmp_A6FEB;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:522:1
	wire [1:1] sv2v_tmp_BAEF7;
	assign sv2v_tmp_BAEF7 = iLSR_PE;
	always @(*) iLSR[2] = sv2v_tmp_BAEF7;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:523:1
	wire [1:1] sv2v_tmp_45670;
	assign sv2v_tmp_45670 = iLSR_FE;
	always @(*) iLSR[3] = sv2v_tmp_45670;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:524:1
	wire [1:1] sv2v_tmp_9FD8F;
	assign sv2v_tmp_9FD8F = iLSR_BI;
	always @(*) iLSR[4] = sv2v_tmp_9FD8F;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:525:1
	wire [1:1] sv2v_tmp_D873C;
	assign sv2v_tmp_D873C = iLSR_THRE;
	always @(*) iLSR[5] = sv2v_tmp_D873C;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:526:1
	wire [1:1] sv2v_tmp_4D81C;
	assign sv2v_tmp_4D81C = iLSR_TEMT;
	always @(*) iLSR[6] = sv2v_tmp_4D81C;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:527:1
	wire [1:1] sv2v_tmp_EBD3A;
	assign sv2v_tmp_EBD3A = iFCR_FIFOEnable && iLSR_FIFOERR;
	always @(*) iLSR[7] = sv2v_tmp_EBD3A;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:529:1
	wire [1:1] sv2v_tmp_4631C;
	assign sv2v_tmp_4631C = ((iRXFIFOEmpty == 1'b0) | (iRXFIFOWrite == 1'b1) ? 1'b1 : 1'b0);
	always @(*) iLSR_DR = sv2v_tmp_4631C;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:530:1
	wire [1:1] sv2v_tmp_02F1E;
	assign sv2v_tmp_02F1E = (iTXFIFOEmpty == 1'b1 ? 1'b1 : 1'b0);
	always @(*) iLSR_THRE = sv2v_tmp_02F1E;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:531:1
	wire [1:1] sv2v_tmp_7384A;
	assign sv2v_tmp_7384A = ((iTXRunning == 1'b0) && (iLSR_THRE == 1'b1) ? 1'b1 : 1'b0);
	always @(*) iLSR_TEMT = sv2v_tmp_7384A;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:532:1
	wire [1:1] sv2v_tmp_F5A6D;
	assign sv2v_tmp_F5A6D = (((iMCR_LOOP == 1'b1) && (iRTS == 1'b1)) | ((iMCR_LOOP == 1'b0) && (iCTSn == 1'b0)) ? 1'b1 : 1'b0);
	always @(*) iMSR_CTS = sv2v_tmp_F5A6D;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:533:1
	wire [1:1] sv2v_tmp_A00F5;
	assign sv2v_tmp_A00F5 = (((iMCR_LOOP == 1'b1) && (iMCR_DTR == 1'b1)) | ((iMCR_LOOP == 1'b0) && (iDSRn == 1'b0)) ? 1'b1 : 1'b0);
	always @(*) iMSR_DSR = sv2v_tmp_A00F5;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:534:1
	wire [1:1] sv2v_tmp_5EC89;
	assign sv2v_tmp_5EC89 = (((iMCR_LOOP == 1'b1) && (iMCR_OUT1 == 1'b1)) | ((iMCR_LOOP == 1'b0) && (iRIn == 1'b0)) ? 1'b1 : 1'b0);
	always @(*) iMSR_RI = sv2v_tmp_5EC89;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:535:1
	wire [1:1] sv2v_tmp_E20B8;
	assign sv2v_tmp_E20B8 = (((iMCR_LOOP == 1'b1) && (iMCR_OUT2 == 1'b1)) | ((iMCR_LOOP == 1'b0) && (iDCDn == 1'b0)) ? 1'b1 : 1'b0);
	always @(*) iMSR_DCD = sv2v_tmp_E20B8;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:536:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_ED_CTS_RE;
	always @(*) iCTSnRE = sv2v_tmp_UART_ED_CTS_RE;
	wire [1:1] sv2v_tmp_UART_ED_CTS_FE;
	always @(*) iCTSnFE = sv2v_tmp_UART_ED_CTS_FE;
	slib_edge_detect UART_ED_CTS(
		.CLK(CLK),
		.RST(iRST),
		.D(iMSR_CTS),
		.RE(sv2v_tmp_UART_ED_CTS_RE),
		.FE(sv2v_tmp_UART_ED_CTS_FE)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:542:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_ED_DSR_RE;
	always @(*) iDSRnRE = sv2v_tmp_UART_ED_DSR_RE;
	wire [1:1] sv2v_tmp_UART_ED_DSR_FE;
	always @(*) iDSRnFE = sv2v_tmp_UART_ED_DSR_FE;
	slib_edge_detect UART_ED_DSR(
		.CLK(CLK),
		.RST(iRST),
		.D(iMSR_DSR),
		.RE(sv2v_tmp_UART_ED_DSR_RE),
		.FE(sv2v_tmp_UART_ED_DSR_FE)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:548:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_ED_RI_RE;
	always @(*) iRInRE = sv2v_tmp_UART_ED_RI_RE;
	wire [1:1] sv2v_tmp_UART_ED_RI_FE;
	always @(*) iRInFE = sv2v_tmp_UART_ED_RI_FE;
	slib_edge_detect UART_ED_RI(
		.CLK(CLK),
		.RST(iRST),
		.D(iMSR_RI),
		.RE(sv2v_tmp_UART_ED_RI_RE),
		.FE(sv2v_tmp_UART_ED_RI_FE)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:554:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_ED_DCD_RE;
	always @(*) iDCDnRE = sv2v_tmp_UART_ED_DCD_RE;
	wire [1:1] sv2v_tmp_UART_ED_DCD_FE;
	always @(*) iDCDnFE = sv2v_tmp_UART_ED_DCD_FE;
	slib_edge_detect UART_ED_DCD(
		.CLK(CLK),
		.RST(iRST),
		.D(iMSR_DCD),
		.RE(sv2v_tmp_UART_ED_DCD_RE),
		.FE(sv2v_tmp_UART_ED_DCD_FE)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:561:1
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:564:8
			iMSR_dCTS <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:565:8
			iMSR_dDSR <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:566:8
			iMSR_TERI <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:567:8
			iMSR_dDCD <= 1'b0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:571:8
			if ((iCTSnRE == 1'b1) | (iCTSnFE == 1'b1))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:573:13
				iMSR_dCTS <= 1'b1;
			else if (iMSRRead == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:577:13
				iMSR_dCTS <= 1'b0;
			if ((iDSRnRE == 1'b1) | (iDSRnFE == 1'b1))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:581:13
				iMSR_dDSR <= 1'b1;
			else if (iMSRRead == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:585:13
				iMSR_dDSR <= 1'b0;
			if (iRInFE == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:589:13
				iMSR_TERI <= 1'b1;
			else if (iMSRRead == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:593:13
				iMSR_TERI <= 1'b0;
			if ((iDCDnRE == 1'b1) | (iDCDnFE == 1'b1))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:597:13
				iMSR_dDCD <= 1'b1;
			else if (iMSRRead == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:601:13
				iMSR_dDCD <= 1'b0;
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:605:1
	wire [1:1] sv2v_tmp_A80A2;
	assign sv2v_tmp_A80A2 = iMSR_dCTS;
	always @(*) iMSR[0] = sv2v_tmp_A80A2;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:606:1
	wire [1:1] sv2v_tmp_5F3C2;
	assign sv2v_tmp_5F3C2 = iMSR_dDSR;
	always @(*) iMSR[1] = sv2v_tmp_5F3C2;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:607:1
	wire [1:1] sv2v_tmp_56CCA;
	assign sv2v_tmp_56CCA = iMSR_TERI;
	always @(*) iMSR[2] = sv2v_tmp_56CCA;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:608:1
	wire [1:1] sv2v_tmp_FFE66;
	assign sv2v_tmp_FFE66 = iMSR_dDCD;
	always @(*) iMSR[3] = sv2v_tmp_FFE66;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:609:1
	wire [1:1] sv2v_tmp_9E483;
	assign sv2v_tmp_9E483 = iMSR_CTS;
	always @(*) iMSR[4] = sv2v_tmp_9E483;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:610:1
	wire [1:1] sv2v_tmp_9B8B3;
	assign sv2v_tmp_9B8B3 = iMSR_DSR;
	always @(*) iMSR[5] = sv2v_tmp_9B8B3;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:611:1
	wire [1:1] sv2v_tmp_177BD;
	assign sv2v_tmp_177BD = iMSR_RI;
	always @(*) iMSR[6] = sv2v_tmp_177BD;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:612:1
	wire [1:1] sv2v_tmp_F6BF7;
	assign sv2v_tmp_F6BF7 = iMSR_DCD;
	always @(*) iMSR[7] = sv2v_tmp_F6BF7;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:614:1
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1)
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:618:8
			iSCR <= 0;
		else
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:622:8
			if (iSCRWrite == 1'b1)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:624:13
				iSCR <= PWDATA[7:0];
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:628:1
	wire [16:1] sv2v_tmp_4B3E5;
	assign sv2v_tmp_4B3E5 = {iDLM, iDLL};
	always @(*) iBaudgenDiv = sv2v_tmp_4B3E5;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:630:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_BG16_BAUDTICK;
	always @(*) iBaudtick16x = sv2v_tmp_UART_BG16_BAUDTICK;
	uart_baudgen UART_BG16(
		.CLK(CLK),
		.RST(iRST),
		.CE(1'b1),
		.CLEAR(1'b0),
		.DIVIDER(iBaudgenDiv),
		.BAUDTICK(sv2v_tmp_UART_BG16_BAUDTICK)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:637:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_BG2_Q;
	always @(*) iBaudtick2x = sv2v_tmp_UART_BG2_Q;
	slib_clock_div #(.RATIO(8)) UART_BG2(
		.CLK(CLK),
		.RST(iRST),
		.CE(iBaudtick16x),
		.Q(sv2v_tmp_UART_BG2_Q)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:642:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_RCLK_RE;
	always @(*) iRCLK = sv2v_tmp_UART_RCLK_RE;
	slib_edge_detect UART_RCLK(
		.CLK(CLK),
		.RST(iRST),
		.D(iBAUDOUTN),
		.RE(sv2v_tmp_UART_RCLK_RE),
		.FE()
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:648:1
	// rewrote reg-to-output bindings
	wire [8:1] sv2v_tmp_UART_TXFF_Q;
	always @(*) iTXFIFOQ = sv2v_tmp_UART_TXFF_Q;
	wire [1:1] sv2v_tmp_UART_TXFF_EMPTY;
	always @(*) iTXFIFOEmpty = sv2v_tmp_UART_TXFF_EMPTY;
	wire [1:1] sv2v_tmp_UART_TXFF_FULL;
	always @(*) iTXFIFO64Full = sv2v_tmp_UART_TXFF_FULL;
	wire [6:1] sv2v_tmp_UART_TXFF_USAGE;
	always @(*) iTXFIFOUsage = sv2v_tmp_UART_TXFF_USAGE;
	slib_fifo #(
		.WIDTH(8),
		.SIZE_E(6)
	) UART_TXFF(
		.CLK(CLK),
		.RST(iRST),
		.CLEAR(iTXFIFOClear),
		.WRITE(iTXFIFOWrite),
		.READ(iTXFIFORead),
		.D(PWDATA[7:0]),
		.Q(sv2v_tmp_UART_TXFF_Q),
		.EMPTY(sv2v_tmp_UART_TXFF_EMPTY),
		.FULL(sv2v_tmp_UART_TXFF_FULL),
		.USAGE(sv2v_tmp_UART_TXFF_USAGE)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:659:1
	wire [1:1] sv2v_tmp_13FE4;
	assign sv2v_tmp_13FE4 = iTXFIFOUsage[4];
	always @(*) iTXFIFO16Full = sv2v_tmp_13FE4;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:660:1
	wire [1:1] sv2v_tmp_B10F9;
	assign sv2v_tmp_B10F9 = (iFCR_FIFO64E == 1'b0 ? iTXFIFO16Full : iTXFIFO64Full);
	always @(*) iTXFIFOFull = sv2v_tmp_B10F9;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:661:1
	wire [1:1] sv2v_tmp_497C2;
	assign sv2v_tmp_497C2 = ((((iFCR_FIFOEnable == 1'b0) && (iTXFIFOEmpty == 1'b1)) | ((iFCR_FIFOEnable == 1'b1) && (iTXFIFOFull == 1'b0))) && (iTHRWrite == 1'b1) ? 1'b1 : 1'b0);
	always @(*) iTXFIFOWrite = sv2v_tmp_497C2;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:662:1
	wire [1:1] sv2v_tmp_8C03B;
	assign sv2v_tmp_8C03B = (iFCR_TXFIFOReset == 1'b1 ? 1'b1 : 1'b0);
	always @(*) iTXFIFOClear = sv2v_tmp_8C03B;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:663:1
	// rewrote reg-to-output bindings
	wire [11:1] sv2v_tmp_UART_RXFF_Q;
	always @(*) iRXFIFOQ = sv2v_tmp_UART_RXFF_Q;
	wire [1:1] sv2v_tmp_UART_RXFF_EMPTY;
	always @(*) iRXFIFOEmpty = sv2v_tmp_UART_RXFF_EMPTY;
	wire [1:1] sv2v_tmp_UART_RXFF_FULL;
	always @(*) iRXFIFO64Full = sv2v_tmp_UART_RXFF_FULL;
	wire [6:1] sv2v_tmp_UART_RXFF_USAGE;
	always @(*) iRXFIFOUsage = sv2v_tmp_UART_RXFF_USAGE;
	slib_fifo #(
		.WIDTH(11),
		.SIZE_E(6)
	) UART_RXFF(
		.CLK(CLK),
		.RST(iRST),
		.CLEAR(iRXFIFOClear),
		.WRITE(iRXFIFOWrite),
		.READ(iRXFIFORead),
		.D(iRXFIFOD),
		.Q(sv2v_tmp_UART_RXFF_Q),
		.EMPTY(sv2v_tmp_UART_RXFF_EMPTY),
		.FULL(sv2v_tmp_UART_RXFF_FULL),
		.USAGE(sv2v_tmp_UART_RXFF_USAGE)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:674:1
	wire [1:1] sv2v_tmp_8F4F8;
	assign sv2v_tmp_8F4F8 = (iRBRRead == 1'b1 ? 1'b1 : 1'b0);
	always @(*) iRXFIFORead = sv2v_tmp_8F4F8;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:675:1
	wire [1:1] sv2v_tmp_5B024;
	assign sv2v_tmp_5B024 = iRXFIFOUsage[4];
	always @(*) iRXFIFO16Full = sv2v_tmp_5B024;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:676:1
	wire [1:1] sv2v_tmp_F7A7F;
	assign sv2v_tmp_F7A7F = (iFCR_FIFO64E == 1'b0 ? iRXFIFO16Full : iRXFIFO64Full);
	always @(*) iRXFIFOFull = sv2v_tmp_F7A7F;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:677:1
	wire [8:1] sv2v_tmp_C2EA8;
	assign sv2v_tmp_C2EA8 = iRXFIFOQ[7:0];
	always @(*) iRBR = sv2v_tmp_C2EA8;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:678:1
	wire [1:1] sv2v_tmp_49E7C;
	assign sv2v_tmp_49E7C = ((((((iFCR_RXTrigger == 2'b00) && (iRXFIFOEmpty == 1'b0)) | ((iFCR_RXTrigger == 2'b01) && ((iRXFIFOUsage[2] == 1'b1) | (iRXFIFOUsage[3] == 1'b1)))) | ((iFCR_RXTrigger == 2'b10) && (iRXFIFOUsage[3] == 1'b1))) | ((((iFCR_RXTrigger == 2'b11) && (iRXFIFOUsage[3] == 1'b1)) && (iRXFIFOUsage[2] == 1'b1)) && (iRXFIFOUsage[1] == 1'b1))) | (iRXFIFO16Full == 1'b1) ? 1'b1 : 1'b0);
	always @(*) iRXFIFO16Trigger = sv2v_tmp_49E7C;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:679:1
	wire [1:1] sv2v_tmp_610D8;
	assign sv2v_tmp_610D8 = ((((((iFCR_RXTrigger == 2'b00) && (iRXFIFOEmpty == 1'b0)) | ((iFCR_RXTrigger == 2'b01) && ((iRXFIFOUsage[4] == 1'b1) | (iRXFIFOUsage[5] == 1'b1)))) | ((iFCR_RXTrigger == 2'b10) && (iRXFIFOUsage[5] == 1'b1))) | ((((iFCR_RXTrigger == 2'b11) && (iRXFIFOUsage[5] == 1'b1)) && (iRXFIFOUsage[4] == 1'b1)) && (iRXFIFOUsage[3] == 1'b1))) | (iRXFIFO64Full == 1'b1) ? 1'b1 : 1'b0);
	always @(*) iRXFIFO64Trigger = sv2v_tmp_610D8;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:680:1
	wire [1:1] sv2v_tmp_0E8DD;
	assign sv2v_tmp_0E8DD = (iFCR_FIFO64E == 1'b0 ? iRXFIFO16Trigger : iRXFIFO64Trigger);
	always @(*) iRXFIFOTrigger = sv2v_tmp_0E8DD;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:681:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_TX_TXFINISHED;
	always @(*) iTXFinished = sv2v_tmp_UART_TX_TXFINISHED;
	wire [1:1] sv2v_tmp_UART_TX_SOUT;
	always @(*) iSOUT = sv2v_tmp_UART_TX_SOUT;
	uart_transmitter UART_TX(
		.CLK(CLK),
		.RST(iRST),
		.TXCLK(iBaudtick2x),
		.TXSTART(iTXStart),
		.CLEAR(iTXClear),
		.WLS(iLCR_WLS),
		.STB(iLCR_STB),
		.PEN(iLCR_PEN),
		.EPS(iLCR_EPS),
		.SP(iLCR_SP),
		.BC(iLCR_BC),
		.DIN(iTSR),
		.TXFINISHED(sv2v_tmp_UART_TX_TXFINISHED),
		.SOUT(sv2v_tmp_UART_TX_SOUT)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:696:1
	wire [1:1] sv2v_tmp_633DF;
	assign sv2v_tmp_633DF = 1'b0;
	always @(*) iTXClear = sv2v_tmp_633DF;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:697:1
	// rewrote reg-to-output bindings
	wire [1:1] sv2v_tmp_UART_RX_PE;
	always @(*) iRXPE = sv2v_tmp_UART_RX_PE;
	wire [1:1] sv2v_tmp_UART_RX_FE;
	always @(*) iRXFE = sv2v_tmp_UART_RX_FE;
	wire [1:1] sv2v_tmp_UART_RX_BI;
	always @(*) iRXBI = sv2v_tmp_UART_RX_BI;
	wire [8:1] sv2v_tmp_UART_RX_DOUT;
	always @(*) iRXData = sv2v_tmp_UART_RX_DOUT;
	wire [1:1] sv2v_tmp_UART_RX_RXFINISHED;
	always @(*) iRXFinished = sv2v_tmp_UART_RX_RXFINISHED;
	uart_receiver UART_RX(
		.CLK(CLK),
		.RST(iRST),
		.RXCLK(iRCLK),
		.RXCLEAR(iRXClear),
		.WLS(iLCR_WLS),
		.STB(iLCR_STB),
		.PEN(iLCR_PEN),
		.EPS(iLCR_EPS),
		.SP(iLCR_SP),
		.SIN(iSIN),
		.PE(sv2v_tmp_UART_RX_PE),
		.FE(sv2v_tmp_UART_RX_FE),
		.BI(sv2v_tmp_UART_RX_BI),
		.DOUT(sv2v_tmp_UART_RX_DOUT),
		.RXFINISHED(sv2v_tmp_UART_RX_RXFINISHED)
	);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:713:1
	wire [1:1] sv2v_tmp_5FD39;
	assign sv2v_tmp_5FD39 = 1'b0;
	always @(*) iRXClear = sv2v_tmp_5FD39;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:714:1
	wire [1:1] sv2v_tmp_F54E2;
	assign sv2v_tmp_F54E2 = (iMCR_LOOP == 1'b0 ? iSINr : iSOUT);
	always @(*) iSIN = sv2v_tmp_F54E2;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:715:1
	wire [1:1] sv2v_tmp_74BBA;
	assign sv2v_tmp_74BBA = ((iTXFIFOEmpty == 1'b0) && ((iMCR_AFE == 1'b0) | ((iMCR_AFE == 1'b1) && (iMSR_CTS == 1'b1))) ? 1'b1 : 1'b0);
	always @(*) iTXEnable = sv2v_tmp_74BBA;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:717:4
	// removed localparam type tx_state_type
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:718:4
	// removed localparam type rx_state_type
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:720:4
	reg rx_State;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:721:4
	reg [1:0] tx_State;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:724:5
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:727:13
			tx_State <= 2'd0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:728:13
			iTSR <= 0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:729:13
			iTXStart <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:730:13
			iTXFIFORead <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:731:13
			iTXRunning <= 1'b0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:736:13
			iTXStart <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:737:13
			iTXFIFORead <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:738:13
			iTXRunning <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:740:13
			case (tx_State)
				2'd0:
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:743:22
					if (iTXEnable == 1'b1) begin
						// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:745:27
						iTXStart <= 1'b1;
						// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:746:27
						tx_State <= 2'd1;
					end
					else
						// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:749:24
						tx_State <= 2'd0;
				2'd1: begin
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:753:22
					iTSR <= iTXFIFOQ;
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:754:22
					iTXStart <= 1'b1;
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:755:22
					iTXFIFORead <= 1'b1;
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:756:22
					tx_State <= 2'd2;
				end
				2'd2: begin
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:760:22
					if (iTXFinished == 1'b1)
						// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:761:24
						tx_State <= 2'd3;
					else
						// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:763:24
						tx_State <= 2'd2;
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:764:22
					iTXRunning <= 1'b1;
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:765:22
					iTXStart <= 1'b1;
				end
				2'd3:
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:767:31
					tx_State <= 2'd0;
				default:
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:768:31
					tx_State <= 2'd0;
			endcase
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:773:5
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:776:13
			rx_State <= 1'd0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:777:13
			iRXFIFOWrite <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:778:13
			iRXFIFOClear <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:779:13
			iRXFIFOD <= 0;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:784:13
			iRXFIFOWrite <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:785:13
			iRXFIFOClear <= iFCR_RXFIFOReset;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:787:13
			case (rx_State)
				1'd0:
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:790:22
					if (iRXFinished == 1'b1) begin
						// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:792:27
						iRXFIFOD <= {iRXBI, iRXFE, iRXPE, iRXData};
						// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:793:27
						if (iFCR_FIFOEnable == 1'b0)
							// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:794:29
							iRXFIFOClear <= 1'b1;
						// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:795:27
						rx_State <= 1'd1;
					end
					else
						// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:798:24
						rx_State <= 1'd0;
				1'd1: begin
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:802:22
					if (iFCR_FIFOEnable == 1'b0)
						// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:803:24
						iRXFIFOWrite <= 1'b1;
					else if (iRXFIFOFull == 1'b0)
						// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:805:24
						iRXFIFOWrite <= 1'b1;
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:806:22
					rx_State <= 1'd0;
				end
				default:
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:808:31
					rx_State <= 1'd0;
			endcase
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:812:1
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1)
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:815:8
			iRTS <= 1'b0;
		else
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:819:8
			if ((iMCR_RTS == 1'b0) | ((iMCR_AFE == 1'b1) && (iRXFIFOTrigger == 1'b1)))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:821:13
				iRTS <= 1'b0;
			else if ((iMCR_RTS == 1'b1) && ((iMCR_AFE == 1'b0) | ((iMCR_AFE == 1'b1) && (iRXFIFOEmpty == 1'b1))))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:825:13
				iRTS <= 1'b1;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:829:1
	always @(posedge CLK or posedge iRST)
		if (iRST == 1'b1) begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:832:8
			iBAUDOUTN <= 1'b1;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:833:8
			OUT1N <= 1'b1;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:834:8
			OUT2N <= 1'b1;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:835:8
			RTSN <= 1'b1;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:836:8
			DTRN <= 1'b1;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:837:8
			SOUT <= 1'b1;
		end
		else begin
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:841:8
			iBAUDOUTN <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:842:8
			OUT1N <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:843:8
			OUT2N <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:844:8
			RTSN <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:845:8
			DTRN <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:846:8
			SOUT <= 1'b0;
			// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:847:8
			if (iBaudtick16x == 1'b0)
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:849:13
				iBAUDOUTN <= 1'b1;
			if ((iMCR_LOOP == 1'b1) | (iMCR_OUT1 == 1'b0))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:854:13
				OUT1N <= 1'b1;
			if ((iMCR_LOOP == 1'b1) | (iMCR_OUT2 == 1'b0))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:859:13
				OUT2N <= 1'b1;
			if ((iMCR_LOOP == 1'b1) | (iRTS == 1'b0))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:864:13
				RTSN <= 1'b1;
			if ((iMCR_LOOP == 1'b1) | (iMCR_DTR == 1'b0))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:869:13
				DTRN <= 1'b1;
			if ((iMCR_LOOP == 1'b1) | (iSOUT == 1'b1))
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:874:13
				SOUT <= 1'b1;
		end
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:878:1
	always @(PADDR or iLCR_DLAB or iRBR or iDLL or iDLM or iIER or iIIR or iLCR or iMCR or iLSR or iMSR or iSCR)
		// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:880:6
		case (PADDR)
			3'b000:
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:883:13
				if (iLCR_DLAB == 1'b0)
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:885:18
					PRDATA[7:0] <= iRBR;
				else
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:889:18
					PRDATA[7:0] <= iDLL;
			3'b001:
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:895:13
				if (iLCR_DLAB == 1'b0)
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:897:18
					PRDATA[7:0] <= iIER;
				else
					// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:901:18
					PRDATA[7:0] <= iDLM;
			3'b010:
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:907:13
				PRDATA[7:0] <= iIIR;
			3'b011:
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:912:13
				PRDATA[7:0] <= iLCR;
			3'b100:
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:917:13
				PRDATA[7:0] <= iMCR;
			3'b101:
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:922:13
				PRDATA[7:0] <= iLSR;
			3'b110:
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:927:13
				PRDATA[7:0] <= iMSR;
			3'b111:
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:932:13
				PRDATA[7:0] <= iSCR;
			default:
				// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:937:13
				PRDATA[7:0] <= iRBR;
		endcase
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:944:1
	wire [24:1] sv2v_tmp_278B4;
	assign sv2v_tmp_278B4 = 24'b000000000000000000000000;
	always @(*) PRDATA[31:8] = sv2v_tmp_278B4;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:945:1
	assign PREADY = 1'b1;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart.sv:946:1
	assign PSLVERR = 1'b0;
endmodule
