module dm_top (
	clk_i,
	rst_ni,
	testmode_i,
	ndmreset_o,
	dmactive_o,
	debug_req_o,
	unavailable_i,
	hartinfo_i,
	slave_req_i,
	slave_we_i,
	slave_addr_i,
	slave_be_i,
	slave_wdata_i,
	slave_rdata_o,
	master_req_o,
	master_add_o,
	master_we_o,
	master_wdata_o,
	master_be_o,
	master_gnt_i,
	master_r_valid_i,
	master_r_rdata_i,
	dmi_rst_ni,
	dmi_req_valid_i,
	dmi_req_ready_o,
	dmi_req_i,
	dmi_resp_valid_o,
	dmi_resp_ready_i,
	dmi_resp_o
);
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:21:13
	parameter [31:0] NrHarts = 1;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:22:13
	parameter [31:0] BusWidth = 32;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:23:13
	parameter [31:0] DmBaseAddress = 'h1000;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:26:13
	parameter [NrHarts - 1:0] SelectableHarts = {NrHarts {1'b1}};
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:27:13
	parameter [0:0] ReadByteEnable = 1;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:29:3
	input wire clk_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:30:3
	input wire rst_ni;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:31:3
	input wire testmode_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:32:3
	output wire ndmreset_o;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:33:3
	output wire dmactive_o;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:34:3
	output wire [NrHarts - 1:0] debug_req_o;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:35:3
	input wire [NrHarts - 1:0] unavailable_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:36:3
	// removed localparam type dm_hartinfo_t
	input wire [(NrHarts * 32) - 1:0] hartinfo_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:38:3
	input wire slave_req_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:39:3
	input wire slave_we_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:40:3
	input wire [BusWidth - 1:0] slave_addr_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:41:3
	input wire [(BusWidth / 8) - 1:0] slave_be_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:42:3
	input wire [BusWidth - 1:0] slave_wdata_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:43:3
	output wire [BusWidth - 1:0] slave_rdata_o;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:45:3
	output wire master_req_o;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:46:3
	output wire [BusWidth - 1:0] master_add_o;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:47:3
	output wire master_we_o;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:48:3
	output wire [BusWidth - 1:0] master_wdata_o;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:49:3
	output wire [(BusWidth / 8) - 1:0] master_be_o;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:50:3
	input wire master_gnt_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:51:3
	input wire master_r_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:52:3
	input wire [BusWidth - 1:0] master_r_rdata_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:55:3
	input wire dmi_rst_ni;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:56:3
	input wire dmi_req_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:57:3
	output wire dmi_req_ready_o;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:58:3
	// removed localparam type dm_dtm_op_e
	// removed localparam type dm_dmi_req_t
	input wire [40:0] dmi_req_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:60:3
	output wire dmi_resp_valid_o;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:61:3
	input wire dmi_resp_ready_i;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:62:3
	// removed localparam type dm_dmi_resp_t
	output wire [33:0] dmi_resp_o;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:66:3
	wire [NrHarts - 1:0] halted;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:68:3
	wire [NrHarts - 1:0] resumeack;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:69:3
	wire [NrHarts - 1:0] haltreq;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:70:3
	wire [NrHarts - 1:0] resumereq;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:71:3
	wire clear_resumeack;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:72:3
	wire cmd_valid;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:73:3
	// removed localparam type dm_cmd_e
	// removed localparam type dm_command_t
	wire [31:0] cmd;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:75:3
	wire cmderror_valid;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:76:3
	// removed localparam type dm_cmderr_e
	wire [2:0] cmderror;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:77:3
	wire cmdbusy;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:78:3
	localparam [4:0] dm_ProgBufSize = 5'h08;
	wire [255:0] progbuf;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:79:3
	localparam [3:0] dm_DataCount = 4'h2;
	wire [63:0] data_csrs_mem;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:80:3
	wire [63:0] data_mem_csrs;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:81:3
	wire data_valid;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:82:3
	wire [19:0] hartsel;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:84:3
	wire [BusWidth - 1:0] sbaddress_csrs_sba;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:85:3
	wire [BusWidth - 1:0] sbaddress_sba_csrs;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:86:3
	wire sbaddress_write_valid;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:87:3
	wire sbreadonaddr;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:88:3
	wire sbautoincrement;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:89:3
	wire [2:0] sbaccess;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:90:3
	wire sbreadondata;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:91:3
	wire [BusWidth - 1:0] sbdata_write;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:92:3
	wire sbdata_read_valid;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:93:3
	wire sbdata_write_valid;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:94:3
	wire [BusWidth - 1:0] sbdata_read;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:95:3
	wire sbdata_valid;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:96:3
	wire sbbusy;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:97:3
	wire sberror_valid;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:98:3
	wire [2:0] sberror;
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:101:3
	dm_csrs #(
		.NrHarts(NrHarts),
		.BusWidth(BusWidth),
		.SelectableHarts(SelectableHarts)
	) i_dm_csrs(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.testmode_i(testmode_i),
		.dmi_rst_ni(dmi_rst_ni),
		.dmi_req_valid_i(dmi_req_valid_i),
		.dmi_req_ready_o(dmi_req_ready_o),
		.dmi_req_i(dmi_req_i),
		.dmi_resp_valid_o(dmi_resp_valid_o),
		.dmi_resp_ready_i(dmi_resp_ready_i),
		.dmi_resp_o(dmi_resp_o),
		.ndmreset_o(ndmreset_o),
		.dmactive_o(dmactive_o),
		.hartsel_o(hartsel),
		.hartinfo_i(hartinfo_i),
		.halted_i(halted),
		.unavailable_i(unavailable_i),
		.resumeack_i(resumeack),
		.haltreq_o(haltreq),
		.resumereq_o(resumereq),
		.clear_resumeack_o(clear_resumeack),
		.cmd_valid_o(cmd_valid),
		.cmd_o(cmd),
		.cmderror_valid_i(cmderror_valid),
		.cmderror_i(cmderror),
		.cmdbusy_i(cmdbusy),
		.progbuf_o(progbuf),
		.data_i(data_mem_csrs),
		.data_valid_i(data_valid),
		.data_o(data_csrs_mem),
		.sbaddress_o(sbaddress_csrs_sba),
		.sbaddress_i(sbaddress_sba_csrs),
		.sbaddress_write_valid_o(sbaddress_write_valid),
		.sbreadonaddr_o(sbreadonaddr),
		.sbautoincrement_o(sbautoincrement),
		.sbaccess_o(sbaccess),
		.sbreadondata_o(sbreadondata),
		.sbdata_o(sbdata_write),
		.sbdata_read_valid_o(sbdata_read_valid),
		.sbdata_write_valid_o(sbdata_write_valid),
		.sbdata_i(sbdata_read),
		.sbdata_valid_i(sbdata_valid),
		.sbbusy_i(sbbusy),
		.sberror_valid_i(sberror_valid),
		.sberror_i(sberror)
	);
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:152:3
	dm_sba #(
		.BusWidth(BusWidth),
		.ReadByteEnable(ReadByteEnable)
	) i_dm_sba(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.dmactive_i(dmactive_o),
		.master_req_o(master_req_o),
		.master_add_o(master_add_o),
		.master_we_o(master_we_o),
		.master_wdata_o(master_wdata_o),
		.master_be_o(master_be_o),
		.master_gnt_i(master_gnt_i),
		.master_r_valid_i(master_r_valid_i),
		.master_r_rdata_i(master_r_rdata_i),
		.sbaddress_i(sbaddress_csrs_sba),
		.sbaddress_o(sbaddress_sba_csrs),
		.sbaddress_write_valid_i(sbaddress_write_valid),
		.sbreadonaddr_i(sbreadonaddr),
		.sbautoincrement_i(sbautoincrement),
		.sbaccess_i(sbaccess),
		.sbreadondata_i(sbreadondata),
		.sbdata_i(sbdata_write),
		.sbdata_read_valid_i(sbdata_read_valid),
		.sbdata_write_valid_i(sbdata_write_valid),
		.sbdata_o(sbdata_read),
		.sbdata_valid_o(sbdata_valid),
		.sbbusy_o(sbbusy),
		.sberror_valid_o(sberror_valid),
		.sberror_o(sberror)
	);
	// Trace: corev_apu/riscv-dbg/src/dm_top.sv:186:3
	dm_mem #(
		.NrHarts(NrHarts),
		.BusWidth(BusWidth),
		.SelectableHarts(SelectableHarts),
		.DmBaseAddress(DmBaseAddress)
	) i_dm_mem(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.debug_req_o(debug_req_o),
		.hartsel_i(hartsel),
		.haltreq_i(haltreq),
		.resumereq_i(resumereq),
		.clear_resumeack_i(clear_resumeack),
		.halted_o(halted),
		.resuming_o(resumeack),
		.cmd_valid_i(cmd_valid),
		.cmd_i(cmd),
		.cmderror_valid_o(cmderror_valid),
		.cmderror_o(cmderror),
		.cmdbusy_o(cmdbusy),
		.progbuf_i(progbuf),
		.data_i(data_csrs_mem),
		.data_o(data_mem_csrs),
		.data_valid_o(data_valid),
		.req_i(slave_req_i),
		.we_i(slave_we_i),
		.addr_i(slave_addr_i),
		.wdata_i(slave_wdata_i),
		.be_i(slave_be_i),
		.rdata_o(slave_rdata_o)
	);
endmodule
