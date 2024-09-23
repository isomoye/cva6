module axi2apb_64_32 (
	ACLK,
	ARESETn,
	test_en_i,
	AWID_i,
	AWADDR_i,
	AWLEN_i,
	AWSIZE_i,
	AWBURST_i,
	AWLOCK_i,
	AWCACHE_i,
	AWPROT_i,
	AWREGION_i,
	AWUSER_i,
	AWQOS_i,
	AWVALID_i,
	AWREADY_o,
	WDATA_i,
	WSTRB_i,
	WLAST_i,
	WUSER_i,
	WVALID_i,
	WREADY_o,
	BID_o,
	BRESP_o,
	BVALID_o,
	BUSER_o,
	BREADY_i,
	ARID_i,
	ARADDR_i,
	ARLEN_i,
	ARSIZE_i,
	ARBURST_i,
	ARLOCK_i,
	ARCACHE_i,
	ARPROT_i,
	ARREGION_i,
	ARUSER_i,
	ARQOS_i,
	ARVALID_i,
	ARREADY_o,
	RID_o,
	RDATA_o,
	RRESP_o,
	RLAST_o,
	RUSER_o,
	RVALID_o,
	RREADY_i,
	PENABLE,
	PWRITE,
	PADDR,
	PSEL,
	PWDATA,
	PRDATA,
	PREADY,
	PSLVERR
);
	reg _sv2v_0;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:21:15
	parameter [31:0] AXI4_ADDRESS_WIDTH = 32;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:22:15
	parameter [31:0] AXI4_RDATA_WIDTH = 64;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:23:15
	parameter [31:0] AXI4_WDATA_WIDTH = 64;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:24:15
	parameter [31:0] AXI4_ID_WIDTH = 16;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:25:15
	parameter [31:0] AXI4_USER_WIDTH = 10;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:26:15
	parameter [31:0] AXI_NUMBYTES = AXI4_WDATA_WIDTH / 8;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:28:15
	parameter [31:0] BUFF_DEPTH_SLAVE = 4;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:29:15
	parameter [31:0] APB_NUM_SLAVES = 8;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:30:15
	parameter [31:0] APB_ADDR_WIDTH = 12;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:33:5
	input wire ACLK;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:34:5
	input wire ARESETn;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:35:5
	input wire test_en_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:40:5
	input wire [AXI4_ID_WIDTH - 1:0] AWID_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:41:5
	input wire [AXI4_ADDRESS_WIDTH - 1:0] AWADDR_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:42:5
	input wire [7:0] AWLEN_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:43:5
	input wire [2:0] AWSIZE_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:44:5
	input wire [1:0] AWBURST_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:45:5
	input wire AWLOCK_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:46:5
	input wire [3:0] AWCACHE_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:47:5
	input wire [2:0] AWPROT_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:48:5
	input wire [3:0] AWREGION_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:49:5
	input wire [AXI4_USER_WIDTH - 1:0] AWUSER_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:50:5
	input wire [3:0] AWQOS_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:51:5
	input wire AWVALID_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:52:5
	output wire AWREADY_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:56:5
	input wire [(AXI_NUMBYTES * 8) - 1:0] WDATA_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:57:5
	input wire [AXI_NUMBYTES - 1:0] WSTRB_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:58:5
	input wire WLAST_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:59:5
	input wire [AXI4_USER_WIDTH - 1:0] WUSER_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:60:5
	input wire WVALID_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:61:5
	output wire WREADY_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:65:5
	output wire [AXI4_ID_WIDTH - 1:0] BID_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:66:5
	output wire [1:0] BRESP_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:67:5
	output wire BVALID_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:68:5
	output wire [AXI4_USER_WIDTH - 1:0] BUSER_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:69:5
	input wire BREADY_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:73:5
	input wire [AXI4_ID_WIDTH - 1:0] ARID_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:74:5
	input wire [AXI4_ADDRESS_WIDTH - 1:0] ARADDR_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:75:5
	input wire [7:0] ARLEN_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:76:5
	input wire [2:0] ARSIZE_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:77:5
	input wire [1:0] ARBURST_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:78:5
	input wire ARLOCK_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:79:5
	input wire [3:0] ARCACHE_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:80:5
	input wire [2:0] ARPROT_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:81:5
	input wire [3:0] ARREGION_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:82:5
	input wire [AXI4_USER_WIDTH - 1:0] ARUSER_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:83:5
	input wire [3:0] ARQOS_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:84:5
	input wire ARVALID_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:85:5
	output wire ARREADY_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:89:5
	output wire [AXI4_ID_WIDTH - 1:0] RID_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:90:5
	output wire [AXI4_RDATA_WIDTH - 1:0] RDATA_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:91:5
	output wire [1:0] RRESP_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:92:5
	output wire RLAST_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:93:5
	output wire [AXI4_USER_WIDTH - 1:0] RUSER_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:94:5
	output wire RVALID_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:95:5
	input wire RREADY_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:98:5
	output wire PENABLE;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:99:5
	output wire PWRITE;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:100:5
	output wire [APB_ADDR_WIDTH - 1:0] PADDR;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:101:5
	output wire PSEL;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:102:5
	output wire [31:0] PWDATA;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:103:5
	input wire [31:0] PRDATA;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:104:5
	input wire PREADY;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:105:5
	input wire PSLVERR;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:111:5
	wire [AXI4_ID_WIDTH - 1:0] AWID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:112:5
	wire [AXI4_ADDRESS_WIDTH - 1:0] AWADDR;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:113:5
	wire [7:0] AWLEN;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:114:5
	wire [2:0] AWSIZE;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:115:5
	wire [1:0] AWBURST;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:116:5
	wire AWLOCK;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:117:5
	wire [3:0] AWCACHE;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:118:5
	wire [2:0] AWPROT;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:119:5
	wire [3:0] AWREGION;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:120:5
	wire [AXI4_USER_WIDTH - 1:0] AWUSER;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:121:5
	wire [3:0] AWQOS;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:122:5
	wire AWVALID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:123:5
	reg AWREADY;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:127:5
	wire [63:0] WDATA;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:128:5
	wire [AXI_NUMBYTES - 1:0] WSTRB;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:129:5
	wire WLAST;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:130:5
	wire [AXI4_USER_WIDTH - 1:0] WUSER;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:131:5
	wire WVALID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:132:5
	reg WREADY;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:136:5
	reg [AXI4_ID_WIDTH - 1:0] BID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:137:5
	reg [1:0] BRESP;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:138:5
	reg BVALID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:139:5
	reg [AXI4_USER_WIDTH - 1:0] BUSER;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:140:5
	wire BREADY;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:144:5
	wire [AXI4_ID_WIDTH - 1:0] ARID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:145:5
	wire [AXI4_ADDRESS_WIDTH - 1:0] ARADDR;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:146:5
	wire [7:0] ARLEN;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:147:5
	wire [2:0] ARSIZE;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:148:5
	wire [1:0] ARBURST;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:149:5
	wire ARLOCK;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:150:5
	wire [3:0] ARCACHE;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:151:5
	wire [2:0] ARPROT;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:152:5
	wire [3:0] ARREGION;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:153:5
	wire [AXI4_USER_WIDTH - 1:0] ARUSER;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:154:5
	wire [3:0] ARQOS;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:155:5
	wire ARVALID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:156:5
	reg ARREADY;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:160:5
	reg [AXI4_ID_WIDTH - 1:0] RID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:161:5
	reg [63:0] RDATA;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:162:5
	reg [1:0] RRESP;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:163:5
	reg RLAST;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:164:5
	reg [AXI4_USER_WIDTH - 1:0] RUSER;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:165:5
	reg RVALID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:166:5
	wire RREADY;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:168:5
	reg [3:0] CS;
	reg [3:0] NS;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:176:5
	reg W_word_sel;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:178:5
	reg [APB_ADDR_WIDTH - 1:0] address;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:180:5
	reg read_req;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:181:5
	reg write_req;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:183:5
	reg sample_AR;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:184:5
	reg [8:0] ARLEN_Q;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:185:5
	reg decr_ARLEN;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:187:5
	reg sample_AW;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:188:5
	reg [8:0] AWLEN_Q;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:189:5
	reg decr_AWLEN;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:191:5
	reg [AXI4_ADDRESS_WIDTH - 1:0] ARADDR_Q;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:192:5
	reg incr_ARADDR;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:194:5
	reg [AXI4_ADDRESS_WIDTH - 1:0] AWADDR_Q;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:195:5
	reg incr_AWADDR;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:197:5
	reg sample_RDATA_0;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:198:5
	reg sample_RDATA_1;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:199:5
	reg [31:0] RDATA_Q_0;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:200:5
	reg [31:0] RDATA_Q_1;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:202:5
	assign PENABLE = write_req | read_req;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:203:5
	assign PWRITE = write_req;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:204:5
	assign PADDR = address[APB_ADDR_WIDTH - 1:0];
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:206:5
	assign PWDATA = WDATA[W_word_sel * 32+:32];
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:207:5
	assign PSEL = 1'b1;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:210:5
	axi_aw_buffer #(
		.ID_WIDTH(AXI4_ID_WIDTH),
		.ADDR_WIDTH(AXI4_ADDRESS_WIDTH),
		.USER_WIDTH(AXI4_USER_WIDTH),
		.BUFFER_DEPTH(BUFF_DEPTH_SLAVE)
	) slave_aw_buffer_i(
		.clk_i(ACLK),
		.rst_ni(ARESETn),
		.test_en_i(test_en_i),
		.slave_valid_i(AWVALID_i),
		.slave_addr_i(AWADDR_i),
		.slave_prot_i(AWPROT_i),
		.slave_region_i(AWREGION_i),
		.slave_len_i(AWLEN_i),
		.slave_size_i(AWSIZE_i),
		.slave_burst_i(AWBURST_i),
		.slave_lock_i(AWLOCK_i),
		.slave_cache_i(AWCACHE_i),
		.slave_qos_i(AWQOS_i),
		.slave_id_i(AWID_i),
		.slave_user_i(AWUSER_i),
		.slave_ready_o(AWREADY_o),
		.master_valid_o(AWVALID),
		.master_addr_o(AWADDR),
		.master_prot_o(AWPROT),
		.master_region_o(AWREGION),
		.master_len_o(AWLEN),
		.master_size_o(AWSIZE),
		.master_burst_o(AWBURST),
		.master_lock_o(AWLOCK),
		.master_cache_o(AWCACHE),
		.master_qos_o(AWQOS),
		.master_id_o(AWID),
		.master_user_o(AWUSER),
		.master_ready_i(AWREADY)
	);
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:247:5
	axi_ar_buffer #(
		.ID_WIDTH(AXI4_ID_WIDTH),
		.ADDR_WIDTH(AXI4_ADDRESS_WIDTH),
		.USER_WIDTH(AXI4_USER_WIDTH),
		.BUFFER_DEPTH(BUFF_DEPTH_SLAVE)
	) slave_ar_buffer_i(
		.clk_i(ACLK),
		.rst_ni(ARESETn),
		.test_en_i(test_en_i),
		.slave_valid_i(ARVALID_i),
		.slave_addr_i(ARADDR_i),
		.slave_prot_i(ARPROT_i),
		.slave_region_i(ARREGION_i),
		.slave_len_i(ARLEN_i),
		.slave_size_i(ARSIZE_i),
		.slave_burst_i(ARBURST_i),
		.slave_lock_i(ARLOCK_i),
		.slave_cache_i(ARCACHE_i),
		.slave_qos_i(ARQOS_i),
		.slave_id_i(ARID_i),
		.slave_user_i(ARUSER_i),
		.slave_ready_o(ARREADY_o),
		.master_valid_o(ARVALID),
		.master_addr_o(ARADDR),
		.master_prot_o(ARPROT),
		.master_region_o(ARREGION),
		.master_len_o(ARLEN),
		.master_size_o(ARSIZE),
		.master_burst_o(ARBURST),
		.master_lock_o(ARLOCK),
		.master_cache_o(ARCACHE),
		.master_qos_o(ARQOS),
		.master_id_o(ARID),
		.master_user_o(ARUSER),
		.master_ready_i(ARREADY)
	);
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:283:5
	axi_w_buffer #(
		.DATA_WIDTH(AXI4_WDATA_WIDTH),
		.USER_WIDTH(AXI4_USER_WIDTH),
		.BUFFER_DEPTH(BUFF_DEPTH_SLAVE)
	) slave_w_buffer_i(
		.clk_i(ACLK),
		.rst_ni(ARESETn),
		.test_en_i(test_en_i),
		.slave_valid_i(WVALID_i),
		.slave_data_i(WDATA_i),
		.slave_strb_i(WSTRB_i),
		.slave_user_i(WUSER_i),
		.slave_last_i(WLAST_i),
		.slave_ready_o(WREADY_o),
		.master_valid_o(WVALID),
		.master_data_o(WDATA),
		.master_strb_o(WSTRB),
		.master_user_o(WUSER),
		.master_last_o(WLAST),
		.master_ready_i(WREADY)
	);
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:304:5
	axi_r_buffer #(
		.ID_WIDTH(AXI4_ID_WIDTH),
		.DATA_WIDTH(AXI4_RDATA_WIDTH),
		.USER_WIDTH(AXI4_USER_WIDTH),
		.BUFFER_DEPTH(BUFF_DEPTH_SLAVE)
	) slave_r_buffer_i(
		.clk_i(ACLK),
		.rst_ni(ARESETn),
		.test_en_i(test_en_i),
		.slave_valid_i(RVALID),
		.slave_data_i(RDATA),
		.slave_resp_i(RRESP),
		.slave_user_i(RUSER),
		.slave_id_i(RID),
		.slave_last_i(RLAST),
		.slave_ready_o(RREADY),
		.master_valid_o(RVALID_o),
		.master_data_o(RDATA_o),
		.master_resp_o(RRESP_o),
		.master_user_o(RUSER_o),
		.master_id_o(RID_o),
		.master_last_o(RLAST_o),
		.master_ready_i(RREADY_i)
	);
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:329:5
	axi_b_buffer #(
		.ID_WIDTH(AXI4_ID_WIDTH),
		.USER_WIDTH(AXI4_USER_WIDTH),
		.BUFFER_DEPTH(BUFF_DEPTH_SLAVE)
	) slave_b_buffer_i(
		.clk_i(ACLK),
		.rst_ni(ARESETn),
		.test_en_i(test_en_i),
		.slave_valid_i(BVALID),
		.slave_resp_i(BRESP),
		.slave_id_i(BID),
		.slave_user_i(BUSER),
		.slave_ready_o(BREADY),
		.master_valid_o(BVALID_o),
		.master_resp_o(BRESP_o),
		.master_id_o(BID_o),
		.master_user_o(BUSER_o),
		.master_ready_i(BREADY_i)
	);
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:351:5
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:352:9
		read_req = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:353:9
		write_req = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:354:9
		W_word_sel = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:356:9
		sample_AW = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:357:9
		decr_AWLEN = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:358:9
		sample_AR = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:359:9
		decr_ARLEN = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:361:9
		incr_AWADDR = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:362:9
		incr_ARADDR = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:364:9
		sample_RDATA_0 = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:365:9
		sample_RDATA_1 = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:367:9
		ARREADY = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:368:9
		AWREADY = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:369:9
		WREADY = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:370:9
		RDATA = 1'sb0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:372:9
		BVALID = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:373:9
		BRESP = 2'b00;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:374:9
		BID = AWID;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:375:9
		BUSER = AWUSER;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:377:9
		RVALID = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:378:9
		RLAST = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:379:9
		RID = ARID;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:380:9
		RUSER = ARUSER;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:381:9
		RRESP = 2'b00;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:383:9
		case (CS)
			4'd10: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:386:17
				sample_AR = 1'b0;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:387:17
				read_req = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:388:17
				address = ARADDR;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:390:17
				if (PREADY == 1'b1) begin
					begin
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:391:21
						if (ARLEN == 0)
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:392:25
							case (ARSIZE)
								3'h3: begin
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:394:33
									NS = 4'd2;
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:395:33
									if (ARADDR[2:0] == 3'h4)
										// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:396:37
										sample_RDATA_1 = 1'b1;
									else
										// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:397:39
										sample_RDATA_0 = 1'b1;
								end
								default: begin
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:401:33
									NS = 4'd1;
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:402:33
									if (ARADDR[2:0] == 3'h4)
										// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:403:37
										sample_RDATA_1 = 1'b1;
									else
										// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:405:37
										sample_RDATA_0 = 1'b1;
								end
							endcase
						else begin
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:409:24
							NS = 4'd5;
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:410:24
							sample_RDATA_0 = 1'b1;
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:411:24
							decr_ARLEN = 1'b1;
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:412:24
							incr_ARADDR = 1'b1;
						end
					end
				end
				else
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:415:21
					NS = 4'd10;
			end
			4'd11: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:420:17
				address = AWADDR;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:421:17
				write_req = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:423:17
				if (AWADDR[2:0] == 3'h4)
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:424:21
					W_word_sel = 1'b1;
				else
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:426:21
					W_word_sel = 1'b0;
				if (PREADY == 1'b1) begin
					begin
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:430:21
						if (AWLEN == 0)
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:431:25
							case (AWSIZE)
								3'h3:
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:432:35
									NS = 4'd9;
								default:
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:433:38
									NS = 4'd8;
							endcase
						else begin
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:436:25
							sample_AW = 1'b1;
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:437:25
							NS = 4'd7;
						end
					end
				end
				else
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:440:21
					NS = 4'd11;
			end
			4'd0:
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:445:17
				if (ARVALID == 1'b1) begin
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:446:21
					sample_AR = 1'b1;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:447:21
					read_req = 1'b1;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:448:21
					address = ARADDR;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:450:21
					if (PREADY == 1'b1) begin
						begin
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:451:25
							if (ARLEN == 0)
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:452:29
								case (ARSIZE)
									3'h3: begin
										// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:454:37
										NS = 4'd2;
										// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:455:37
										if (ARADDR[2:0] == 4)
											// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:456:41
											sample_RDATA_1 = 1'b1;
										else
											// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:458:41
											sample_RDATA_0 = 1'b1;
									end
									default: begin
										// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:461:37
										NS = 4'd1;
										// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:462:37
										if (ARADDR[2:0] == 4)
											// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:463:41
											sample_RDATA_1 = 1'b1;
										else
											// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:465:41
											sample_RDATA_0 = 1'b1;
									end
								endcase
							else begin
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:468:29
								NS = 4'd5;
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:469:29
								sample_RDATA_0 = 1'b1;
							end
						end
					end
					else
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:472:25
						NS = 4'd10;
				end
				else
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:476:21
					if (AWVALID) begin
						begin
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:477:25
							if (WVALID) begin
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:478:29
								write_req = 1'b1;
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:479:29
								address = AWADDR;
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:481:29
								if (AWADDR[2:0] == 3'h4)
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:482:33
									W_word_sel = 1'b1;
								else
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:484:33
									W_word_sel = 1'b0;
								if (PREADY == 1'b1) begin
									begin
										// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:488:35
										if (AWLEN == 0)
											// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:489:41
											case (AWSIZE)
												3'h3:
													// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:490:51
													NS = 4'd9;
												default:
													// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:491:54
													NS = 4'd8;
											endcase
										else begin
											// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:494:41
											sample_AW = 1'b1;
											// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:495:41
											if ((AWADDR[2:0] == 3'h4) && (WSTRB[7:4] == 0))
												// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:496:43
												incr_AWADDR = 1'b0;
											else
												// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:498:43
												incr_AWADDR = 1'b1;
											// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:499:41
											NS = 4'd7;
										end
									end
								end
								else
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:502:33
									NS = 4'd11;
							end
							else begin
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:505:29
								write_req = 1'b0;
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:506:29
								address = 1'sb0;
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:507:29
								NS = 4'd0;
							end
						end
					end
					else begin
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:510:25
						NS = 4'd0;
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:511:25
						address = 1'sb0;
					end
			4'd9: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:517:17
				address = AWADDR + 4;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:518:17
				W_word_sel = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:519:17
				write_req = WVALID;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:520:17
				if (WVALID) begin
					begin
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:521:21
						if (PREADY == 1'b1)
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:522:25
							NS = 4'd8;
						else
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:524:25
							NS = 4'd9;
					end
				end
				else
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:526:21
					NS = 4'd9;
			end
			4'd8: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:531:17
				BVALID = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:532:17
				address = 1'sb0;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:533:17
				if (BREADY) begin
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:534:21
					NS = 4'd0;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:535:21
					AWREADY = 1'b1;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:536:21
					WREADY = 1'b1;
				end
				else
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:538:21
					NS = 4'd8;
			end
			4'd7: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:543:17
				W_word_sel = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:544:17
				write_req = WVALID & |WSTRB[7:4];
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:545:17
				address = AWADDR_Q;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:547:17
				if (WVALID) begin
					begin
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:548:21
						if (&WSTRB[7:4]) begin
							begin
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:549:25
								if (PREADY == 1'b1) begin
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:550:29
									NS = 4'd6;
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:551:29
									WREADY = 1'b1;
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:552:29
									decr_AWLEN = 1'b1;
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:553:29
									incr_AWADDR = 1'b1;
								end
								else
									// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:555:29
									NS = 4'd7;
							end
						end
						else begin
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:558:25
							NS = 4'd6;
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:559:25
							WREADY = 1'b1;
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:560:25
							decr_AWLEN = 1'b1;
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:561:25
							incr_AWADDR = 1'b1;
						end
					end
				end
				else
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:564:21
					NS = 4'd7;
			end
			4'd6: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:569:17
				address = AWADDR_Q;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:570:17
				if (AWLEN_Q == 0) begin
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:571:21
					BVALID = 1'b1;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:572:21
					if (BREADY) begin
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:573:23
						NS = 4'd0;
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:574:23
						AWREADY = 1'b1;
					end
					else
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:576:23
						NS = 4'd6;
				end
				else begin
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:578:21
					W_word_sel = 1'b0;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:579:21
					write_req = WVALID & (&WSTRB[3:0]);
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:580:21
					if (WVALID) begin
						begin
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:581:25
							if (PREADY == 1'b1) begin
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:582:29
								NS = 4'd7;
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:583:29
								incr_AWADDR = 1'b1;
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:584:29
								decr_AWLEN = 1'b1;
							end
							else
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:586:29
								NS = 4'd6;
						end
					end
					else
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:588:25
						NS = 4'd7;
				end
			end
			4'd5: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:594:16
				read_req = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:595:16
				address = ARADDR_Q;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:597:17
				if (ARLEN_Q == 0) begin
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:598:21
					NS = 4'd0;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:599:21
					ARREADY = 1'b1;
				end
				else
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:601:21
					if (PREADY == 1'b1) begin
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:602:25
						decr_ARLEN = 1'b1;
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:603:25
						sample_RDATA_1 = 1'b1;
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:604:25
						NS = 4'd4;
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:606:25
						if (ARADDR_Q[2:0] == 3'h4)
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:607:27
							incr_ARADDR = 1'b1;
						else
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:609:27
							incr_ARADDR = 1'b0;
					end
					else
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:612:25
						NS = 4'd5;
			end
			4'd4: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:618:17
				RVALID = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:619:17
				RDATA[0+:32] = RDATA_Q_0;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:620:17
				RDATA[32+:32] = RDATA_Q_1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:621:17
				RLAST = (ARLEN_Q == 0 ? 1'b1 : 1'b0);
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:622:17
				address = ARADDR_Q;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:624:17
				if (RREADY) begin
					begin
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:625:21
						if (ARLEN_Q == 0) begin
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:626:25
							NS = 4'd0;
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:627:25
							ARREADY = 1'b1;
						end
						else begin
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:629:25
							read_req = 1'b1;
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:630:25
							if (PREADY == 1'b1) begin
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:631:29
								sample_RDATA_0 = 1'b1;
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:632:29
								NS = 4'd5;
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:633:29
								incr_ARADDR = 1'b1;
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:634:29
								decr_ARLEN = 1'b1;
							end
							else
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:636:29
								NS = 4'd3;
						end
					end
				end
				else
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:640:21
					NS = 4'd4;
			end
			4'd3: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:645:17
				read_req = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:646:17
				address = ARADDR_Q;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:648:17
				if (PREADY == 1'b1) begin
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:649:21
					sample_RDATA_0 = 1'b1;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:650:21
					NS = 4'd5;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:651:21
					incr_ARADDR = 1'b1;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:652:21
					decr_ARLEN = 1'b1;
				end
				else
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:654:21
					NS = 4'd3;
			end
			4'd1: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:659:17
				RVALID = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:660:17
				RDATA[0+:32] = RDATA_Q_0;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:661:17
				RDATA[32+:32] = RDATA_Q_1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:662:17
				RLAST = 1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:663:17
				address = 1'sb0;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:665:17
				if (RREADY) begin
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:666:21
					NS = 4'd0;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:667:21
					ARREADY = 1'b1;
				end
				else
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:669:21
					NS = 4'd1;
			end
			4'd2: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:674:17
				read_req = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:675:17
				address = ARADDR + 4;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:676:17
				if (PREADY == 1'b1) begin
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:677:21
					NS = 4'd1;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:678:21
					if (ARADDR[2:0] == 3'h4)
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:679:25
						sample_RDATA_0 = 1'b1;
					else
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:681:25
						sample_RDATA_1 = 1'b1;
				end
				else
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:683:19
					NS = 4'd2;
			end
			default: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:688:17
				NS = 4'd0;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:689:17
				address = 1'sb0;
			end
		endcase
	end
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:697:5
	always @(posedge ACLK or negedge ARESETn)
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:698:9
		if (ARESETn == 1'b0) begin
			// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:699:13
			CS <= 4'd0;
			// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:701:13
			ARLEN_Q <= 1'sb0;
			// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:702:13
			AWADDR_Q <= 1'sb0;
			// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:704:13
			AWLEN_Q <= 1'sb0;
			// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:705:13
			RDATA_Q_0 <= 1'sb0;
			// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:706:13
			RDATA_Q_1 <= 1'sb0;
			// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:707:13
			ARADDR_Q <= 1'sb0;
		end
		else begin
			// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:709:13
			CS <= NS;
			// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:711:13
			if (sample_AR)
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:712:17
				ARLEN_Q <= {ARLEN, 1'b0} + 2;
			else if (decr_ARLEN)
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:714:17
				ARLEN_Q <= ARLEN_Q - 1;
			if (sample_RDATA_0)
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:718:17
				RDATA_Q_0 <= PRDATA;
			if (sample_RDATA_1)
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:721:17
				RDATA_Q_1 <= PRDATA;
			case ({sample_AW, decr_AWLEN})
				2'b00:
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:724:24
					AWLEN_Q <= AWLEN_Q;
				2'b01:
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:725:24
					AWLEN_Q <= AWLEN_Q - 1;
				2'b10:
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:726:24
					AWLEN_Q <= {AWLEN, 1'b0} + 1;
				2'b11:
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:727:24
					AWLEN_Q <= {AWLEN, 1'b0};
			endcase
			case ({sample_AW, incr_AWADDR})
				2'b00:
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:731:24
					AWADDR_Q <= AWADDR_Q;
				2'b01:
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:732:24
					AWADDR_Q <= AWADDR_Q + 4;
				2'b10:
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:733:24
					AWADDR_Q <= {AWADDR[AXI4_ADDRESS_WIDTH - 1:3], 3'b000};
				2'b11:
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:734:24
					AWADDR_Q <= {AWADDR[AXI4_ADDRESS_WIDTH - 1:3], 3'b000} + 4;
			endcase
			case ({sample_AR, incr_ARADDR})
				2'b00:
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:738:24
					ARADDR_Q <= ARADDR_Q;
				2'b01:
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:739:24
					ARADDR_Q <= ARADDR_Q + 4;
				2'b10:
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:740:24
					ARADDR_Q <= {ARADDR[AXI4_ADDRESS_WIDTH - 1:3], 3'b000};
				2'b11:
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb_64_32.sv:741:24
					ARADDR_Q <= {ARADDR[AXI4_ADDRESS_WIDTH - 1:3], 3'b000} + 4;
			endcase
		end
	initial _sv2v_0 = 0;
endmodule
