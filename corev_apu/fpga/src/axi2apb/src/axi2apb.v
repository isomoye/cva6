module axi2apb (
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
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:22:15
	parameter AXI4_ADDRESS_WIDTH = 32;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:23:15
	parameter AXI4_RDATA_WIDTH = 32;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:24:15
	parameter AXI4_WDATA_WIDTH = 32;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:25:15
	parameter AXI4_ID_WIDTH = 16;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:26:15
	parameter AXI4_USER_WIDTH = 10;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:27:15
	parameter AXI_NUMBYTES = AXI4_WDATA_WIDTH / 8;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:29:15
	parameter BUFF_DEPTH_SLAVE = 4;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:30:15
	parameter APB_ADDR_WIDTH = 32;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:33:5
	input wire ACLK;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:34:5
	input wire ARESETn;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:35:5
	input wire test_en_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:37:5
	input wire [AXI4_ID_WIDTH - 1:0] AWID_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:38:5
	input wire [AXI4_ADDRESS_WIDTH - 1:0] AWADDR_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:39:5
	input wire [7:0] AWLEN_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:40:5
	input wire [2:0] AWSIZE_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:41:5
	input wire [1:0] AWBURST_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:42:5
	input wire AWLOCK_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:43:5
	input wire [3:0] AWCACHE_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:44:5
	input wire [2:0] AWPROT_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:45:5
	input wire [3:0] AWREGION_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:46:5
	input wire [AXI4_USER_WIDTH - 1:0] AWUSER_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:47:5
	input wire [3:0] AWQOS_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:48:5
	input wire AWVALID_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:49:5
	output wire AWREADY_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:51:5
	input wire [AXI4_WDATA_WIDTH - 1:0] WDATA_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:52:5
	input wire [AXI_NUMBYTES - 1:0] WSTRB_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:53:5
	input wire WLAST_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:54:5
	input wire [AXI4_USER_WIDTH - 1:0] WUSER_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:55:5
	input wire WVALID_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:56:5
	output wire WREADY_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:58:5
	output wire [AXI4_ID_WIDTH - 1:0] BID_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:59:5
	output wire [1:0] BRESP_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:60:5
	output wire BVALID_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:61:5
	output wire [AXI4_USER_WIDTH - 1:0] BUSER_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:62:5
	input wire BREADY_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:64:5
	input wire [AXI4_ID_WIDTH - 1:0] ARID_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:65:5
	input wire [AXI4_ADDRESS_WIDTH - 1:0] ARADDR_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:66:5
	input wire [7:0] ARLEN_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:67:5
	input wire [2:0] ARSIZE_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:68:5
	input wire [1:0] ARBURST_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:69:5
	input wire ARLOCK_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:70:5
	input wire [3:0] ARCACHE_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:71:5
	input wire [2:0] ARPROT_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:72:5
	input wire [3:0] ARREGION_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:73:5
	input wire [AXI4_USER_WIDTH - 1:0] ARUSER_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:74:5
	input wire [3:0] ARQOS_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:75:5
	input wire ARVALID_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:76:5
	output wire ARREADY_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:78:5
	output wire [AXI4_ID_WIDTH - 1:0] RID_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:79:5
	output wire [AXI4_RDATA_WIDTH - 1:0] RDATA_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:80:5
	output wire [1:0] RRESP_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:81:5
	output wire RLAST_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:82:5
	output wire [AXI4_USER_WIDTH - 1:0] RUSER_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:83:5
	output wire RVALID_o;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:84:5
	input wire RREADY_i;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:86:5
	output wire PENABLE;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:87:5
	output wire PWRITE;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:88:5
	output wire [APB_ADDR_WIDTH - 1:0] PADDR;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:89:5
	output wire PSEL;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:90:5
	output wire [AXI4_WDATA_WIDTH - 1:0] PWDATA;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:91:5
	input wire [AXI4_RDATA_WIDTH - 1:0] PRDATA;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:92:5
	input wire PREADY;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:93:5
	input wire PSLVERR;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:99:5
	wire [AXI4_ID_WIDTH - 1:0] AWID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:100:5
	wire [AXI4_ADDRESS_WIDTH - 1:0] AWADDR;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:101:5
	wire [7:0] AWLEN;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:102:5
	wire [2:0] AWSIZE;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:103:5
	wire [1:0] AWBURST;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:104:5
	wire AWLOCK;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:105:5
	wire [3:0] AWCACHE;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:106:5
	wire [2:0] AWPROT;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:107:5
	wire [3:0] AWREGION;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:108:5
	wire [AXI4_USER_WIDTH - 1:0] AWUSER;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:109:5
	wire [3:0] AWQOS;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:110:5
	wire AWVALID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:111:5
	reg AWREADY;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:115:5
	wire [AXI4_WDATA_WIDTH - 1:0] WDATA;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:116:5
	wire [AXI_NUMBYTES - 1:0] WSTRB;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:117:5
	wire WLAST;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:118:5
	wire [AXI4_USER_WIDTH - 1:0] WUSER;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:119:5
	wire WVALID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:120:5
	reg WREADY;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:124:5
	reg [AXI4_ID_WIDTH - 1:0] BID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:125:5
	reg [1:0] BRESP;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:126:5
	reg BVALID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:127:5
	reg [AXI4_USER_WIDTH - 1:0] BUSER;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:128:5
	wire BREADY;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:132:5
	wire [AXI4_ID_WIDTH - 1:0] ARID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:133:5
	wire [AXI4_ADDRESS_WIDTH - 1:0] ARADDR;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:134:5
	wire [7:0] ARLEN;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:135:5
	wire [2:0] ARSIZE;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:136:5
	wire [1:0] ARBURST;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:137:5
	wire ARLOCK;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:138:5
	wire [3:0] ARCACHE;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:139:5
	wire [2:0] ARPROT;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:140:5
	wire [3:0] ARREGION;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:141:5
	wire [AXI4_USER_WIDTH - 1:0] ARUSER;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:142:5
	wire [3:0] ARQOS;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:143:5
	wire ARVALID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:144:5
	reg ARREADY;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:148:5
	reg [AXI4_ID_WIDTH - 1:0] RID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:149:5
	reg [AXI4_RDATA_WIDTH - 1:0] RDATA;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:150:5
	reg [1:0] RRESP;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:151:5
	reg RLAST;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:152:5
	reg [AXI4_USER_WIDTH - 1:0] RUSER;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:153:5
	reg RVALID;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:154:5
	wire RREADY;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:156:3
	reg [2:0] CS;
	reg [2:0] NS;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:163:3
	reg [AXI4_ADDRESS_WIDTH - 1:0] address;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:164:3
	reg sample_RDATA;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:166:3
	reg [AXI4_RDATA_WIDTH - 1:0] RDATA_Q;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:168:3
	reg read_req;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:169:3
	reg write_req;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:171:3
	assign PENABLE = write_req | read_req;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:172:3
	assign PWRITE = write_req;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:173:3
	assign PADDR = address[APB_ADDR_WIDTH - 1:0];
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:174:3
	assign PWDATA = WDATA;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:175:3
	assign PSEL = 1'b1;
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:178:4
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
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:218:4
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
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:258:4
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
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:282:4
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
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:309:4
	axi_b_buffer #(
		.ID_WIDTH(AXI4_ID_WIDTH),
		.USER_WIDTH(AXI4_USER_WIDTH),
		.BUFFER_DEPTH(BUFF_DEPTH_SLAVE)
	) slave_b_buffer(
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
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:331:5
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:333:7
		read_req = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:334:7
		write_req = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:335:7
		address = 1'sb0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:337:7
		sample_RDATA = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:339:7
		ARREADY = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:340:7
		AWREADY = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:341:7
		WREADY = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:343:7
		BVALID = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:344:7
		BRESP = 2'b00;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:345:7
		BID = AWID;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:346:7
		BUSER = AWUSER;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:348:7
		RVALID = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:349:7
		RLAST = 1'b0;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:350:7
		RID = ARID;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:351:7
		RUSER = ARUSER;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:352:7
		RRESP = 2'b00;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:353:7
		RDATA = RDATA_Q;
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:355:7
		case (CS)
			3'd3: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:358:13
				read_req = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:359:13
				address = ARADDR[APB_ADDR_WIDTH - 1:0];
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:360:13
				sample_RDATA = PREADY;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:362:13
				if (PREADY == 1'b1)
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:363:16
					NS = 3'd1;
			end
			3'd2: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:368:13
				write_req = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:369:13
				address = AWADDR[APB_ADDR_WIDTH - 1:0];
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:371:13
				if (PREADY == 1'b1)
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:372:17
					NS = 3'd4;
			end
			3'd0:
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:377:13
				if (ARVALID == 1'b1) begin
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:378:17
					read_req = 1'b1;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:379:17
					address = ARADDR[APB_ADDR_WIDTH - 1:0];
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:379:61
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:380:17
					sample_RDATA = PREADY;
					if (PREADY == 1'b1)
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:383:21
						NS = 3'd1;
					else
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:385:21
						NS = 3'd3;
				end
				else
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:388:17
					if (AWVALID) begin
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:389:21
						address = AWADDR[APB_ADDR_WIDTH - 1:0];
						// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:390:21
						if (WVALID) begin
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:391:25
							write_req = 1'b1;
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:394:25
							if (PREADY == 1'b1)
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:395:29
								NS = 3'd4;
							else
								// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:397:28
								NS = 3'd2;
						end
						else begin
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:400:25
							write_req = 1'b0;
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:401:25
							address = 1'sb0;
							// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:402:25
							NS = 3'd0;
						end
					end
			3'd4: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:410:13
				BVALID = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:411:13
				address = 1'sb0;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:413:13
				if (BREADY) begin
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:414:17
					NS = 3'd0;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:415:17
					AWREADY = 1'b1;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:416:17
					WREADY = 1'b1;
				end
			end
			3'd1: begin
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:422:13
				RVALID = 1'b1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:423:13
				RLAST = 1;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:424:13
				address = 1'sb0;
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:426:13
				if (RREADY) begin
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:427:17
					NS = 3'd0;
					// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:428:17
					ARREADY = 1'b1;
				end
			end
			default:
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:432:18
				NS = 3'd0;
		endcase
	end
	// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:437:5
	always @(posedge ACLK or negedge ARESETn)
		// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:438:9
		if (ARESETn == 1'b0) begin
			// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:439:13
			CS <= 3'd0;
			// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:440:13
			RDATA_Q <= 1'sb0;
		end
		else begin
			// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:442:13
			CS <= NS;
			// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:444:13
			if (sample_RDATA)
				// Trace: corev_apu/fpga/src/axi2apb/src/axi2apb.sv:445:17
				RDATA_Q <= PRDATA;
		end
	initial _sv2v_0 = 0;
endmodule
