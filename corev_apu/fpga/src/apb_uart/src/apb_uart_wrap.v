module apb_uart_wrap (
	clk_i,
	rst_ni,
	apb_req_i,
	apb_rsp_o,
	intr_o,
	out1_no,
	out2_no,
	rts_no,
	dtr_no,
	cts_ni,
	dsr_ni,
	dcd_ni,
	rin_ni,
	sin_i,
	sout_o
);
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:28:20
	// removed localparam type apb_req_t
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:29:20
	// removed localparam type apb_rsp_t
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:31:3
	input wire clk_i;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:32:3
	input wire rst_ni;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:35:3
	input wire apb_req_i;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:36:3
	output wire apb_rsp_o;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:39:3
	output wire intr_o;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:40:3
	output wire out1_no;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:41:3
	output wire out2_no;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:42:3
	output wire rts_no;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:43:3
	output wire dtr_no;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:44:3
	input wire cts_ni;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:45:3
	input wire dsr_ni;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:46:3
	input wire dcd_ni;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:47:3
	input wire rin_ni;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:48:3
	input wire sin_i;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:49:3
	output wire sout_o;
	// Trace: corev_apu/fpga/src/apb_uart/src/apb_uart_wrap.sv:52:3
	apb_uart i_apb_uart(
		.CLK(clk_i),
		.RSTN(rst_ni),
		.PSEL(apb_req_i.psel),
		.PENABLE(apb_req_i.penable),
		.PWRITE(apb_req_i.pwrite),
		.PADDR(apb_req_i.paddr[4:2]),
		.PWDATA(apb_req_i.pwdata),
		.PRDATA(apb_rsp_o.prdata),
		.PREADY(apb_rsp_o.pready),
		.PSLVERR(apb_rsp_o.pslverr),
		.INT(intr_o),
		.OUT1N(out1_no),
		.OUT2N(out2_no),
		.RTSN(rts_no),
		.DTRN(dtr_no),
		.CTSN(cts_ni),
		.DSRN(dsr_ni),
		.DCDN(dcd_ni),
		.RIN(rin_ni),
		.SIN(sin_i),
		.SOUT(sout_o)
	);
endmodule
