module cva6_fifo_v3 (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	usage_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	reg _sv2v_0;
	// Trace: core/cva6_fifo_v3.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: core/cva6_fifo_v3.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: core/cva6_fifo_v3.sv:18:15
	parameter [0:0] FPGA_EN = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:19:15
	parameter [31:0] dtype = 0;
	// Trace: core/cva6_fifo_v3.sv:21:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: core/cva6_fifo_v3.sv:23:5
	input wire clk_i;
	// Trace: core/cva6_fifo_v3.sv:24:5
	input wire rst_ni;
	// Trace: core/cva6_fifo_v3.sv:25:5
	input wire flush_i;
	// Trace: core/cva6_fifo_v3.sv:26:5
	input wire testmode_i;
	// Trace: core/cva6_fifo_v3.sv:28:5
	output wire full_o;
	// Trace: core/cva6_fifo_v3.sv:29:5
	output wire empty_o;
	// Trace: core/cva6_fifo_v3.sv:30:5
	output wire [ADDR_DEPTH - 1:0] usage_o;
	// Trace: core/cva6_fifo_v3.sv:32:5
	input wire data_i;
	// Trace: core/cva6_fifo_v3.sv:33:5
	input wire push_i;
	// Trace: core/cva6_fifo_v3.sv:35:5
	output reg data_o;
	// Trace: core/cva6_fifo_v3.sv:36:5
	input wire pop_i;
	// Trace: core/cva6_fifo_v3.sv:40:3
	localparam [31:0] FifoDepth = (DEPTH > 0 ? DEPTH : 1);
	// Trace: core/cva6_fifo_v3.sv:42:3
	reg gate_clock;
	// Trace: core/cva6_fifo_v3.sv:44:3
	reg [ADDR_DEPTH - 1:0] read_pointer_n;
	reg [ADDR_DEPTH - 1:0] read_pointer_q;
	reg [ADDR_DEPTH - 1:0] write_pointer_n;
	reg [ADDR_DEPTH - 1:0] write_pointer_q;
	// Trace: core/cva6_fifo_v3.sv:47:3
	reg [ADDR_DEPTH:0] status_cnt_n;
	reg [ADDR_DEPTH:0] status_cnt_q;
	// Trace: core/cva6_fifo_v3.sv:49:3
	reg [FifoDepth - 1:0] mem_n;
	reg [FifoDepth - 1:0] mem_q;
	// Trace: core/cva6_fifo_v3.sv:52:3
	reg fifo_ram_we;
	// Trace: core/cva6_fifo_v3.sv:53:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_read_address;
	// Trace: core/cva6_fifo_v3.sv:54:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_write_address;
	// Trace: core/cva6_fifo_v3.sv:55:3
	reg [0:0] fifo_ram_wdata;
	// Trace: core/cva6_fifo_v3.sv:56:3
	wire [0:0] fifo_ram_rdata;
	// Trace: core/cva6_fifo_v3.sv:58:3
	assign usage_o = status_cnt_q[ADDR_DEPTH - 1:0];
	// Trace: core/cva6_fifo_v3.sv:60:3
	generate
		if (DEPTH == 0) begin : gen_pass_through
			// Trace: core/cva6_fifo_v3.sv:61:5
			assign empty_o = ~push_i;
			// Trace: core/cva6_fifo_v3.sv:62:5
			assign full_o = ~pop_i;
		end
		else begin : gen_fifo
			// Trace: core/cva6_fifo_v3.sv:64:5
			assign full_o = status_cnt_q == FifoDepth[ADDR_DEPTH:0];
			// Trace: core/cva6_fifo_v3.sv:65:5
			assign empty_o = (status_cnt_q == 0) & ~(FALL_THROUGH & push_i);
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:70:3
	always @(*) begin : read_write_comb
		if (_sv2v_0)
			;
		// Trace: core/cva6_fifo_v3.sv:72:5
		read_pointer_n = read_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:73:5
		write_pointer_n = write_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:74:5
		status_cnt_n = status_cnt_q;
		// Trace: core/cva6_fifo_v3.sv:75:5
		if (FPGA_EN) begin
			// Trace: core/cva6_fifo_v3.sv:76:7
			fifo_ram_we = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:77:7
			fifo_ram_read_address = read_pointer_q;
			// Trace: core/cva6_fifo_v3.sv:78:7
			fifo_ram_write_address = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:79:7
			fifo_ram_wdata = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:80:7
			data_o = (DEPTH == 0 ? data_i : fifo_ram_rdata);
		end
		else begin
			// Trace: core/cva6_fifo_v3.sv:82:7
			data_o = (DEPTH == 0 ? data_i : mem_q[read_pointer_q]);
			// Trace: core/cva6_fifo_v3.sv:83:7
			mem_n = mem_q;
			// Trace: core/cva6_fifo_v3.sv:84:7
			gate_clock = 1'b1;
		end
		if (push_i && ~full_o) begin
			// Trace: core/cva6_fifo_v3.sv:89:7
			if (FPGA_EN) begin
				// Trace: core/cva6_fifo_v3.sv:90:9
				fifo_ram_we = 1'b1;
				// Trace: core/cva6_fifo_v3.sv:91:9
				fifo_ram_write_address = write_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:92:9
				fifo_ram_wdata = data_i;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:95:9
				mem_n[write_pointer_q] = data_i;
				// Trace: core/cva6_fifo_v3.sv:97:9
				gate_clock = 1'b0;
			end
			if (write_pointer_q == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:101:61
				write_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:102:12
				write_pointer_n = write_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:104:7
			status_cnt_n = status_cnt_q + 1;
		end
		if (pop_i && ~empty_o) begin
			// Trace: core/cva6_fifo_v3.sv:110:7
			if (read_pointer_n == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:110:60
				read_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:111:12
				read_pointer_n = read_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:113:7
			status_cnt_n = status_cnt_q - 1;
		end
		if (((push_i && pop_i) && ~full_o) && ~empty_o)
			// Trace: core/cva6_fifo_v3.sv:117:49
			status_cnt_n = status_cnt_q;
		if ((FALL_THROUGH && (status_cnt_q == 0)) && push_i) begin
			// Trace: core/cva6_fifo_v3.sv:121:7
			data_o = data_i;
			// Trace: core/cva6_fifo_v3.sv:122:7
			if (pop_i) begin
				// Trace: core/cva6_fifo_v3.sv:123:9
				status_cnt_n = status_cnt_q;
				// Trace: core/cva6_fifo_v3.sv:124:9
				read_pointer_n = read_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:125:9
				write_pointer_n = write_pointer_q;
			end
		end
	end
	// Trace: core/cva6_fifo_v3.sv:131:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cva6_fifo_v3.sv:132:5
		if (~rst_ni) begin
			// Trace: core/cva6_fifo_v3.sv:133:7
			read_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:134:7
			write_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:135:7
			status_cnt_q <= 1'sb0;
		end
		else
			// Trace: core/cva6_fifo_v3.sv:137:7
			if (flush_i) begin
				// Trace: core/cva6_fifo_v3.sv:138:9
				read_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:139:9
				write_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:140:9
				status_cnt_q <= 1'sb0;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:142:9
				read_pointer_q <= read_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:143:9
				write_pointer_q <= write_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:144:9
				status_cnt_q <= status_cnt_n;
			end
	// Trace: core/cva6_fifo_v3.sv:149:3
	generate
		if (FPGA_EN) begin : gen_fpga_queue
			// Trace: core/cva6_fifo_v3.sv:150:5
			AsyncDpRam #(
				.ADDR_WIDTH(ADDR_DEPTH),
				.DATA_DEPTH(DEPTH),
				.DATA_WIDTH(1)
			) fifo_ram(
				.Clk_CI(clk_i),
				.WrEn_SI(fifo_ram_we),
				.RdAddr_DI(fifo_ram_read_address),
				.WrAddr_DI(fifo_ram_write_address),
				.WrData_DI(fifo_ram_wdata),
				.RdData_DO(fifo_ram_rdata)
			);
		end
		else begin : gen_asic_queue
			// Trace: core/cva6_fifo_v3.sv:163:5
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cva6_fifo_v3.sv:164:7
				if (~rst_ni)
					// Trace: core/cva6_fifo_v3.sv:165:9
					mem_q <= 1'sb0;
				else if (!gate_clock)
					// Trace: core/cva6_fifo_v3.sv:167:9
					mem_q <= mem_n;
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:174:3
	// Trace: core/cva6_fifo_v3.sv:179:3
	// removed an assertion item
	// full_write : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(full_o |-> ~push_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:181:8
	// 	$fatal(1, "Trying to push new data although the FIFO is full.");
	// end
	// Trace: core/cva6_fifo_v3.sv:183:3
	// removed an assertion item
	// empty_read : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(empty_o |-> ~pop_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:185:8
	// 	$fatal(1, "Trying to pop data although the FIFO is empty.");
	// end
	initial _sv2v_0 = 0;
endmodule
module ~cva6_fifo_v3 (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	usage_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	reg _sv2v_0;
	// Trace: core/cva6_fifo_v3.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: core/cva6_fifo_v3.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: core/cva6_fifo_v3.sv:18:15
	parameter [0:0] FPGA_EN = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:19:15
	parameter [31:0] dtype = 0;
	// Trace: core/cva6_fifo_v3.sv:21:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: core/cva6_fifo_v3.sv:23:5
	input wire clk_i;
	// Trace: core/cva6_fifo_v3.sv:24:5
	input wire rst_ni;
	// Trace: core/cva6_fifo_v3.sv:25:5
	input wire flush_i;
	// Trace: core/cva6_fifo_v3.sv:26:5
	input wire testmode_i;
	// Trace: core/cva6_fifo_v3.sv:28:5
	output wire full_o;
	// Trace: core/cva6_fifo_v3.sv:29:5
	output wire empty_o;
	// Trace: core/cva6_fifo_v3.sv:30:5
	output wire [ADDR_DEPTH - 1:0] usage_o;
	// Trace: core/cva6_fifo_v3.sv:32:5
	input wire data_i;
	// Trace: core/cva6_fifo_v3.sv:33:5
	input wire push_i;
	// Trace: core/cva6_fifo_v3.sv:35:5
	output reg data_o;
	// Trace: core/cva6_fifo_v3.sv:36:5
	input wire pop_i;
	// Trace: core/cva6_fifo_v3.sv:40:3
	localparam [31:0] FifoDepth = (DEPTH > 0 ? DEPTH : 1);
	// Trace: core/cva6_fifo_v3.sv:42:3
	reg gate_clock;
	// Trace: core/cva6_fifo_v3.sv:44:3
	reg [ADDR_DEPTH - 1:0] read_pointer_n;
	reg [ADDR_DEPTH - 1:0] read_pointer_q;
	reg [ADDR_DEPTH - 1:0] write_pointer_n;
	reg [ADDR_DEPTH - 1:0] write_pointer_q;
	// Trace: core/cva6_fifo_v3.sv:47:3
	reg [ADDR_DEPTH:0] status_cnt_n;
	reg [ADDR_DEPTH:0] status_cnt_q;
	// Trace: core/cva6_fifo_v3.sv:49:3
	reg [FifoDepth - 1:0] mem_n;
	reg [FifoDepth - 1:0] mem_q;
	// Trace: core/cva6_fifo_v3.sv:52:3
	reg fifo_ram_we;
	// Trace: core/cva6_fifo_v3.sv:53:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_read_address;
	// Trace: core/cva6_fifo_v3.sv:54:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_write_address;
	// Trace: core/cva6_fifo_v3.sv:55:3
	reg [0:0] fifo_ram_wdata;
	// Trace: core/cva6_fifo_v3.sv:56:3
	wire [0:0] fifo_ram_rdata;
	// Trace: core/cva6_fifo_v3.sv:58:3
	assign usage_o = status_cnt_q[ADDR_DEPTH - 1:0];
	// Trace: core/cva6_fifo_v3.sv:60:3
	generate
		if (DEPTH == 0) begin : gen_pass_through
			// Trace: core/cva6_fifo_v3.sv:61:5
			assign empty_o = ~push_i;
			// Trace: core/cva6_fifo_v3.sv:62:5
			assign full_o = ~pop_i;
		end
		else begin : gen_fifo
			// Trace: core/cva6_fifo_v3.sv:64:5
			assign full_o = status_cnt_q == FifoDepth[ADDR_DEPTH:0];
			// Trace: core/cva6_fifo_v3.sv:65:5
			assign empty_o = (status_cnt_q == 0) & ~(FALL_THROUGH & push_i);
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:70:3
	always @(*) begin : read_write_comb
		if (_sv2v_0)
			;
		// Trace: core/cva6_fifo_v3.sv:72:5
		read_pointer_n = read_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:73:5
		write_pointer_n = write_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:74:5
		status_cnt_n = status_cnt_q;
		// Trace: core/cva6_fifo_v3.sv:75:5
		if (FPGA_EN) begin
			// Trace: core/cva6_fifo_v3.sv:76:7
			fifo_ram_we = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:77:7
			fifo_ram_read_address = read_pointer_q;
			// Trace: core/cva6_fifo_v3.sv:78:7
			fifo_ram_write_address = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:79:7
			fifo_ram_wdata = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:80:7
			data_o = (DEPTH == 0 ? data_i : fifo_ram_rdata);
		end
		else begin
			// Trace: core/cva6_fifo_v3.sv:82:7
			data_o = (DEPTH == 0 ? data_i : mem_q[read_pointer_q]);
			// Trace: core/cva6_fifo_v3.sv:83:7
			mem_n = mem_q;
			// Trace: core/cva6_fifo_v3.sv:84:7
			gate_clock = 1'b1;
		end
		if (push_i && ~full_o) begin
			// Trace: core/cva6_fifo_v3.sv:89:7
			if (FPGA_EN) begin
				// Trace: core/cva6_fifo_v3.sv:90:9
				fifo_ram_we = 1'b1;
				// Trace: core/cva6_fifo_v3.sv:91:9
				fifo_ram_write_address = write_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:92:9
				fifo_ram_wdata = data_i;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:95:9
				mem_n[write_pointer_q] = data_i;
				// Trace: core/cva6_fifo_v3.sv:97:9
				gate_clock = 1'b0;
			end
			if (write_pointer_q == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:101:61
				write_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:102:12
				write_pointer_n = write_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:104:7
			status_cnt_n = status_cnt_q + 1;
		end
		if (pop_i && ~empty_o) begin
			// Trace: core/cva6_fifo_v3.sv:110:7
			if (read_pointer_n == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:110:60
				read_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:111:12
				read_pointer_n = read_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:113:7
			status_cnt_n = status_cnt_q - 1;
		end
		if (((push_i && pop_i) && ~full_o) && ~empty_o)
			// Trace: core/cva6_fifo_v3.sv:117:49
			status_cnt_n = status_cnt_q;
		if ((FALL_THROUGH && (status_cnt_q == 0)) && push_i) begin
			// Trace: core/cva6_fifo_v3.sv:121:7
			data_o = data_i;
			// Trace: core/cva6_fifo_v3.sv:122:7
			if (pop_i) begin
				// Trace: core/cva6_fifo_v3.sv:123:9
				status_cnt_n = status_cnt_q;
				// Trace: core/cva6_fifo_v3.sv:124:9
				read_pointer_n = read_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:125:9
				write_pointer_n = write_pointer_q;
			end
		end
	end
	// Trace: core/cva6_fifo_v3.sv:131:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cva6_fifo_v3.sv:132:5
		if (~rst_ni) begin
			// Trace: core/cva6_fifo_v3.sv:133:7
			read_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:134:7
			write_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:135:7
			status_cnt_q <= 1'sb0;
		end
		else
			// Trace: core/cva6_fifo_v3.sv:137:7
			if (flush_i) begin
				// Trace: core/cva6_fifo_v3.sv:138:9
				read_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:139:9
				write_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:140:9
				status_cnt_q <= 1'sb0;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:142:9
				read_pointer_q <= read_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:143:9
				write_pointer_q <= write_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:144:9
				status_cnt_q <= status_cnt_n;
			end
	// Trace: core/cva6_fifo_v3.sv:149:3
	generate
		if (FPGA_EN) begin : gen_fpga_queue
			// Trace: core/cva6_fifo_v3.sv:150:5
			AsyncDpRam #(
				.ADDR_WIDTH(ADDR_DEPTH),
				.DATA_DEPTH(DEPTH),
				.DATA_WIDTH(1)
			) fifo_ram(
				.Clk_CI(clk_i),
				.WrEn_SI(fifo_ram_we),
				.RdAddr_DI(fifo_ram_read_address),
				.WrAddr_DI(fifo_ram_write_address),
				.WrData_DI(fifo_ram_wdata),
				.RdData_DO(fifo_ram_rdata)
			);
		end
		else begin : gen_asic_queue
			// Trace: core/cva6_fifo_v3.sv:163:5
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cva6_fifo_v3.sv:164:7
				if (~rst_ni)
					// Trace: core/cva6_fifo_v3.sv:165:9
					mem_q <= 1'sb0;
				else if (!gate_clock)
					// Trace: core/cva6_fifo_v3.sv:167:9
					mem_q <= mem_n;
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:174:3
	// Trace: core/cva6_fifo_v3.sv:179:3
	// removed an assertion item
	// full_write : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(full_o |-> ~push_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:181:8
	// 	$fatal(1, "Trying to push new data although the FIFO is full.");
	// end
	// Trace: core/cva6_fifo_v3.sv:183:3
	// removed an assertion item
	// empty_read : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(empty_o |-> ~pop_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:185:8
	// 	$fatal(1, "Trying to pop data although the FIFO is empty.");
	// end
	initial _sv2v_0 = 0;
endmodule
module cva6_fifo_v3_DF882_44265 (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	usage_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	// removed localparam type dtype_icache_req_t_icache_req_t_CVA6Cfg_type
	parameter [17102:0] dtype_icache_req_t_icache_req_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// Trace: core/cva6_fifo_v3.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: core/cva6_fifo_v3.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: core/cva6_fifo_v3.sv:18:15
	parameter [0:0] FPGA_EN = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:19:15
	parameter [31:0] dtype = 0;
	// Trace: core/cva6_fifo_v3.sv:21:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: core/cva6_fifo_v3.sv:23:5
	input wire clk_i;
	// Trace: core/cva6_fifo_v3.sv:24:5
	input wire rst_ni;
	// Trace: core/cva6_fifo_v3.sv:25:5
	input wire flush_i;
	// Trace: core/cva6_fifo_v3.sv:26:5
	input wire testmode_i;
	// Trace: core/cva6_fifo_v3.sv:28:5
	output wire full_o;
	// Trace: core/cva6_fifo_v3.sv:29:5
	output wire empty_o;
	// Trace: core/cva6_fifo_v3.sv:30:5
	output wire [ADDR_DEPTH - 1:0] usage_o;
	// Trace: core/cva6_fifo_v3.sv:32:5
	input wire data_i;
	// Trace: core/cva6_fifo_v3.sv:33:5
	input wire push_i;
	// Trace: core/cva6_fifo_v3.sv:35:5
	output reg data_o;
	// Trace: core/cva6_fifo_v3.sv:36:5
	input wire pop_i;
	// Trace: core/cva6_fifo_v3.sv:40:3
	localparam [31:0] FifoDepth = (DEPTH > 0 ? DEPTH : 1);
	// Trace: core/cva6_fifo_v3.sv:42:3
	reg gate_clock;
	// Trace: core/cva6_fifo_v3.sv:44:3
	reg [ADDR_DEPTH - 1:0] read_pointer_n;
	reg [ADDR_DEPTH - 1:0] read_pointer_q;
	reg [ADDR_DEPTH - 1:0] write_pointer_n;
	reg [ADDR_DEPTH - 1:0] write_pointer_q;
	// Trace: core/cva6_fifo_v3.sv:47:3
	reg [ADDR_DEPTH:0] status_cnt_n;
	reg [ADDR_DEPTH:0] status_cnt_q;
	// Trace: core/cva6_fifo_v3.sv:49:3
	reg [FifoDepth - 1:0] mem_n;
	reg [FifoDepth - 1:0] mem_q;
	// Trace: core/cva6_fifo_v3.sv:52:3
	reg fifo_ram_we;
	// Trace: core/cva6_fifo_v3.sv:53:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_read_address;
	// Trace: core/cva6_fifo_v3.sv:54:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_write_address;
	// Trace: core/cva6_fifo_v3.sv:55:3
	reg [0:0] fifo_ram_wdata;
	// Trace: core/cva6_fifo_v3.sv:56:3
	wire [0:0] fifo_ram_rdata;
	// Trace: core/cva6_fifo_v3.sv:58:3
	assign usage_o = status_cnt_q[ADDR_DEPTH - 1:0];
	// Trace: core/cva6_fifo_v3.sv:60:3
	generate
		if (DEPTH == 0) begin : gen_pass_through
			// Trace: core/cva6_fifo_v3.sv:61:5
			assign empty_o = ~push_i;
			// Trace: core/cva6_fifo_v3.sv:62:5
			assign full_o = ~pop_i;
		end
		else begin : gen_fifo
			// Trace: core/cva6_fifo_v3.sv:64:5
			assign full_o = status_cnt_q == FifoDepth[ADDR_DEPTH:0];
			// Trace: core/cva6_fifo_v3.sv:65:5
			assign empty_o = (status_cnt_q == 0) & ~(FALL_THROUGH & push_i);
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:70:3
	always @(*) begin : read_write_comb
		if (_sv2v_0)
			;
		// Trace: core/cva6_fifo_v3.sv:72:5
		read_pointer_n = read_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:73:5
		write_pointer_n = write_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:74:5
		status_cnt_n = status_cnt_q;
		// Trace: core/cva6_fifo_v3.sv:75:5
		if (FPGA_EN) begin
			// Trace: core/cva6_fifo_v3.sv:76:7
			fifo_ram_we = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:77:7
			fifo_ram_read_address = read_pointer_q;
			// Trace: core/cva6_fifo_v3.sv:78:7
			fifo_ram_write_address = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:79:7
			fifo_ram_wdata = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:80:7
			data_o = (DEPTH == 0 ? data_i : fifo_ram_rdata);
		end
		else begin
			// Trace: core/cva6_fifo_v3.sv:82:7
			data_o = (DEPTH == 0 ? data_i : mem_q[read_pointer_q]);
			// Trace: core/cva6_fifo_v3.sv:83:7
			mem_n = mem_q;
			// Trace: core/cva6_fifo_v3.sv:84:7
			gate_clock = 1'b1;
		end
		if (push_i && ~full_o) begin
			// Trace: core/cva6_fifo_v3.sv:89:7
			if (FPGA_EN) begin
				// Trace: core/cva6_fifo_v3.sv:90:9
				fifo_ram_we = 1'b1;
				// Trace: core/cva6_fifo_v3.sv:91:9
				fifo_ram_write_address = write_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:92:9
				fifo_ram_wdata = data_i;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:95:9
				mem_n[write_pointer_q] = data_i;
				// Trace: core/cva6_fifo_v3.sv:97:9
				gate_clock = 1'b0;
			end
			if (write_pointer_q == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:101:61
				write_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:102:12
				write_pointer_n = write_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:104:7
			status_cnt_n = status_cnt_q + 1;
		end
		if (pop_i && ~empty_o) begin
			// Trace: core/cva6_fifo_v3.sv:110:7
			if (read_pointer_n == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:110:60
				read_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:111:12
				read_pointer_n = read_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:113:7
			status_cnt_n = status_cnt_q - 1;
		end
		if (((push_i && pop_i) && ~full_o) && ~empty_o)
			// Trace: core/cva6_fifo_v3.sv:117:49
			status_cnt_n = status_cnt_q;
		if ((FALL_THROUGH && (status_cnt_q == 0)) && push_i) begin
			// Trace: core/cva6_fifo_v3.sv:121:7
			data_o = data_i;
			// Trace: core/cva6_fifo_v3.sv:122:7
			if (pop_i) begin
				// Trace: core/cva6_fifo_v3.sv:123:9
				status_cnt_n = status_cnt_q;
				// Trace: core/cva6_fifo_v3.sv:124:9
				read_pointer_n = read_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:125:9
				write_pointer_n = write_pointer_q;
			end
		end
	end
	// Trace: core/cva6_fifo_v3.sv:131:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cva6_fifo_v3.sv:132:5
		if (~rst_ni) begin
			// Trace: core/cva6_fifo_v3.sv:133:7
			read_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:134:7
			write_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:135:7
			status_cnt_q <= 1'sb0;
		end
		else
			// Trace: core/cva6_fifo_v3.sv:137:7
			if (flush_i) begin
				// Trace: core/cva6_fifo_v3.sv:138:9
				read_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:139:9
				write_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:140:9
				status_cnt_q <= 1'sb0;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:142:9
				read_pointer_q <= read_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:143:9
				write_pointer_q <= write_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:144:9
				status_cnt_q <= status_cnt_n;
			end
	// Trace: core/cva6_fifo_v3.sv:149:3
	generate
		if (FPGA_EN) begin : gen_fpga_queue
			// Trace: core/cva6_fifo_v3.sv:150:5
			AsyncDpRam #(
				.ADDR_WIDTH(ADDR_DEPTH),
				.DATA_DEPTH(DEPTH),
				.DATA_WIDTH(1)
			) fifo_ram(
				.Clk_CI(clk_i),
				.WrEn_SI(fifo_ram_we),
				.RdAddr_DI(fifo_ram_read_address),
				.WrAddr_DI(fifo_ram_write_address),
				.WrData_DI(fifo_ram_wdata),
				.RdData_DO(fifo_ram_rdata)
			);
		end
		else begin : gen_asic_queue
			// Trace: core/cva6_fifo_v3.sv:163:5
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cva6_fifo_v3.sv:164:7
				if (~rst_ni)
					// Trace: core/cva6_fifo_v3.sv:165:9
					mem_q <= 1'sb0;
				else if (!gate_clock)
					// Trace: core/cva6_fifo_v3.sv:167:9
					mem_q <= mem_n;
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:174:3
	// Trace: core/cva6_fifo_v3.sv:179:3
	// removed an assertion item
	// full_write : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(full_o |-> ~push_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:181:8
	// 	$fatal(1, "Trying to push new data although the FIFO is full.");
	// end
	// Trace: core/cva6_fifo_v3.sv:183:3
	// removed an assertion item
	// empty_read : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(empty_o |-> ~pop_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:185:8
	// 	$fatal(1, "Trying to pop data although the FIFO is empty.");
	// end
	initial _sv2v_0 = 0;
endmodule
module cva6_fifo_v3_E0FAF_21007 (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	usage_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	// removed localparam type dtype_dcache_req_t_CVA6Cfg_type
	parameter [17102:0] dtype_dcache_req_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// Trace: core/cva6_fifo_v3.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: core/cva6_fifo_v3.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: core/cva6_fifo_v3.sv:18:15
	parameter [0:0] FPGA_EN = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:19:15
	parameter [31:0] dtype = 0;
	// Trace: core/cva6_fifo_v3.sv:21:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: core/cva6_fifo_v3.sv:23:5
	input wire clk_i;
	// Trace: core/cva6_fifo_v3.sv:24:5
	input wire rst_ni;
	// Trace: core/cva6_fifo_v3.sv:25:5
	input wire flush_i;
	// Trace: core/cva6_fifo_v3.sv:26:5
	input wire testmode_i;
	// Trace: core/cva6_fifo_v3.sv:28:5
	output wire full_o;
	// Trace: core/cva6_fifo_v3.sv:29:5
	output wire empty_o;
	// Trace: core/cva6_fifo_v3.sv:30:5
	output wire [ADDR_DEPTH - 1:0] usage_o;
	// Trace: core/cva6_fifo_v3.sv:32:5
	input wire data_i;
	// Trace: core/cva6_fifo_v3.sv:33:5
	input wire push_i;
	// Trace: core/cva6_fifo_v3.sv:35:5
	output reg data_o;
	// Trace: core/cva6_fifo_v3.sv:36:5
	input wire pop_i;
	// Trace: core/cva6_fifo_v3.sv:40:3
	localparam [31:0] FifoDepth = (DEPTH > 0 ? DEPTH : 1);
	// Trace: core/cva6_fifo_v3.sv:42:3
	reg gate_clock;
	// Trace: core/cva6_fifo_v3.sv:44:3
	reg [ADDR_DEPTH - 1:0] read_pointer_n;
	reg [ADDR_DEPTH - 1:0] read_pointer_q;
	reg [ADDR_DEPTH - 1:0] write_pointer_n;
	reg [ADDR_DEPTH - 1:0] write_pointer_q;
	// Trace: core/cva6_fifo_v3.sv:47:3
	reg [ADDR_DEPTH:0] status_cnt_n;
	reg [ADDR_DEPTH:0] status_cnt_q;
	// Trace: core/cva6_fifo_v3.sv:49:3
	reg [FifoDepth - 1:0] mem_n;
	reg [FifoDepth - 1:0] mem_q;
	// Trace: core/cva6_fifo_v3.sv:52:3
	reg fifo_ram_we;
	// Trace: core/cva6_fifo_v3.sv:53:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_read_address;
	// Trace: core/cva6_fifo_v3.sv:54:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_write_address;
	// Trace: core/cva6_fifo_v3.sv:55:3
	reg [0:0] fifo_ram_wdata;
	// Trace: core/cva6_fifo_v3.sv:56:3
	wire [0:0] fifo_ram_rdata;
	// Trace: core/cva6_fifo_v3.sv:58:3
	assign usage_o = status_cnt_q[ADDR_DEPTH - 1:0];
	// Trace: core/cva6_fifo_v3.sv:60:3
	generate
		if (DEPTH == 0) begin : gen_pass_through
			// Trace: core/cva6_fifo_v3.sv:61:5
			assign empty_o = ~push_i;
			// Trace: core/cva6_fifo_v3.sv:62:5
			assign full_o = ~pop_i;
		end
		else begin : gen_fifo
			// Trace: core/cva6_fifo_v3.sv:64:5
			assign full_o = status_cnt_q == FifoDepth[ADDR_DEPTH:0];
			// Trace: core/cva6_fifo_v3.sv:65:5
			assign empty_o = (status_cnt_q == 0) & ~(FALL_THROUGH & push_i);
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:70:3
	always @(*) begin : read_write_comb
		if (_sv2v_0)
			;
		// Trace: core/cva6_fifo_v3.sv:72:5
		read_pointer_n = read_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:73:5
		write_pointer_n = write_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:74:5
		status_cnt_n = status_cnt_q;
		// Trace: core/cva6_fifo_v3.sv:75:5
		if (FPGA_EN) begin
			// Trace: core/cva6_fifo_v3.sv:76:7
			fifo_ram_we = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:77:7
			fifo_ram_read_address = read_pointer_q;
			// Trace: core/cva6_fifo_v3.sv:78:7
			fifo_ram_write_address = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:79:7
			fifo_ram_wdata = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:80:7
			data_o = (DEPTH == 0 ? data_i : fifo_ram_rdata);
		end
		else begin
			// Trace: core/cva6_fifo_v3.sv:82:7
			data_o = (DEPTH == 0 ? data_i : mem_q[read_pointer_q]);
			// Trace: core/cva6_fifo_v3.sv:83:7
			mem_n = mem_q;
			// Trace: core/cva6_fifo_v3.sv:84:7
			gate_clock = 1'b1;
		end
		if (push_i && ~full_o) begin
			// Trace: core/cva6_fifo_v3.sv:89:7
			if (FPGA_EN) begin
				// Trace: core/cva6_fifo_v3.sv:90:9
				fifo_ram_we = 1'b1;
				// Trace: core/cva6_fifo_v3.sv:91:9
				fifo_ram_write_address = write_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:92:9
				fifo_ram_wdata = data_i;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:95:9
				mem_n[write_pointer_q] = data_i;
				// Trace: core/cva6_fifo_v3.sv:97:9
				gate_clock = 1'b0;
			end
			if (write_pointer_q == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:101:61
				write_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:102:12
				write_pointer_n = write_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:104:7
			status_cnt_n = status_cnt_q + 1;
		end
		if (pop_i && ~empty_o) begin
			// Trace: core/cva6_fifo_v3.sv:110:7
			if (read_pointer_n == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:110:60
				read_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:111:12
				read_pointer_n = read_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:113:7
			status_cnt_n = status_cnt_q - 1;
		end
		if (((push_i && pop_i) && ~full_o) && ~empty_o)
			// Trace: core/cva6_fifo_v3.sv:117:49
			status_cnt_n = status_cnt_q;
		if ((FALL_THROUGH && (status_cnt_q == 0)) && push_i) begin
			// Trace: core/cva6_fifo_v3.sv:121:7
			data_o = data_i;
			// Trace: core/cva6_fifo_v3.sv:122:7
			if (pop_i) begin
				// Trace: core/cva6_fifo_v3.sv:123:9
				status_cnt_n = status_cnt_q;
				// Trace: core/cva6_fifo_v3.sv:124:9
				read_pointer_n = read_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:125:9
				write_pointer_n = write_pointer_q;
			end
		end
	end
	// Trace: core/cva6_fifo_v3.sv:131:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cva6_fifo_v3.sv:132:5
		if (~rst_ni) begin
			// Trace: core/cva6_fifo_v3.sv:133:7
			read_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:134:7
			write_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:135:7
			status_cnt_q <= 1'sb0;
		end
		else
			// Trace: core/cva6_fifo_v3.sv:137:7
			if (flush_i) begin
				// Trace: core/cva6_fifo_v3.sv:138:9
				read_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:139:9
				write_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:140:9
				status_cnt_q <= 1'sb0;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:142:9
				read_pointer_q <= read_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:143:9
				write_pointer_q <= write_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:144:9
				status_cnt_q <= status_cnt_n;
			end
	// Trace: core/cva6_fifo_v3.sv:149:3
	generate
		if (FPGA_EN) begin : gen_fpga_queue
			// Trace: core/cva6_fifo_v3.sv:150:5
			AsyncDpRam #(
				.ADDR_WIDTH(ADDR_DEPTH),
				.DATA_DEPTH(DEPTH),
				.DATA_WIDTH(1)
			) fifo_ram(
				.Clk_CI(clk_i),
				.WrEn_SI(fifo_ram_we),
				.RdAddr_DI(fifo_ram_read_address),
				.WrAddr_DI(fifo_ram_write_address),
				.WrData_DI(fifo_ram_wdata),
				.RdData_DO(fifo_ram_rdata)
			);
		end
		else begin : gen_asic_queue
			// Trace: core/cva6_fifo_v3.sv:163:5
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cva6_fifo_v3.sv:164:7
				if (~rst_ni)
					// Trace: core/cva6_fifo_v3.sv:165:9
					mem_q <= 1'sb0;
				else if (!gate_clock)
					// Trace: core/cva6_fifo_v3.sv:167:9
					mem_q <= mem_n;
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:174:3
	// Trace: core/cva6_fifo_v3.sv:179:3
	// removed an assertion item
	// full_write : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(full_o |-> ~push_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:181:8
	// 	$fatal(1, "Trying to push new data although the FIFO is full.");
	// end
	// Trace: core/cva6_fifo_v3.sv:183:3
	// removed an assertion item
	// empty_read : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(empty_o |-> ~pop_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:185:8
	// 	$fatal(1, "Trying to pop data although the FIFO is empty.");
	// end
	initial _sv2v_0 = 0;
endmodule
module cva6_fifo_v3_ACF64_3D86B (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	usage_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	// removed localparam type dtype_fu_data_t_CVA6Cfg_type
	parameter [17102:0] dtype_fu_data_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// Trace: core/cva6_fifo_v3.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: core/cva6_fifo_v3.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: core/cva6_fifo_v3.sv:18:15
	parameter [0:0] FPGA_EN = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:19:15
	parameter [31:0] dtype = 0;
	// Trace: core/cva6_fifo_v3.sv:21:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: core/cva6_fifo_v3.sv:23:5
	input wire clk_i;
	// Trace: core/cva6_fifo_v3.sv:24:5
	input wire rst_ni;
	// Trace: core/cva6_fifo_v3.sv:25:5
	input wire flush_i;
	// Trace: core/cva6_fifo_v3.sv:26:5
	input wire testmode_i;
	// Trace: core/cva6_fifo_v3.sv:28:5
	output wire full_o;
	// Trace: core/cva6_fifo_v3.sv:29:5
	output wire empty_o;
	// Trace: core/cva6_fifo_v3.sv:30:5
	output wire [ADDR_DEPTH - 1:0] usage_o;
	// Trace: core/cva6_fifo_v3.sv:32:5
	input wire data_i;
	// Trace: core/cva6_fifo_v3.sv:33:5
	input wire push_i;
	// Trace: core/cva6_fifo_v3.sv:35:5
	output reg data_o;
	// Trace: core/cva6_fifo_v3.sv:36:5
	input wire pop_i;
	// Trace: core/cva6_fifo_v3.sv:40:3
	localparam [31:0] FifoDepth = (DEPTH > 0 ? DEPTH : 1);
	// Trace: core/cva6_fifo_v3.sv:42:3
	reg gate_clock;
	// Trace: core/cva6_fifo_v3.sv:44:3
	reg [ADDR_DEPTH - 1:0] read_pointer_n;
	reg [ADDR_DEPTH - 1:0] read_pointer_q;
	reg [ADDR_DEPTH - 1:0] write_pointer_n;
	reg [ADDR_DEPTH - 1:0] write_pointer_q;
	// Trace: core/cva6_fifo_v3.sv:47:3
	reg [ADDR_DEPTH:0] status_cnt_n;
	reg [ADDR_DEPTH:0] status_cnt_q;
	// Trace: core/cva6_fifo_v3.sv:49:3
	reg [FifoDepth - 1:0] mem_n;
	reg [FifoDepth - 1:0] mem_q;
	// Trace: core/cva6_fifo_v3.sv:52:3
	reg fifo_ram_we;
	// Trace: core/cva6_fifo_v3.sv:53:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_read_address;
	// Trace: core/cva6_fifo_v3.sv:54:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_write_address;
	// Trace: core/cva6_fifo_v3.sv:55:3
	reg [0:0] fifo_ram_wdata;
	// Trace: core/cva6_fifo_v3.sv:56:3
	wire [0:0] fifo_ram_rdata;
	// Trace: core/cva6_fifo_v3.sv:58:3
	assign usage_o = status_cnt_q[ADDR_DEPTH - 1:0];
	// Trace: core/cva6_fifo_v3.sv:60:3
	generate
		if (DEPTH == 0) begin : gen_pass_through
			// Trace: core/cva6_fifo_v3.sv:61:5
			assign empty_o = ~push_i;
			// Trace: core/cva6_fifo_v3.sv:62:5
			assign full_o = ~pop_i;
		end
		else begin : gen_fifo
			// Trace: core/cva6_fifo_v3.sv:64:5
			assign full_o = status_cnt_q == FifoDepth[ADDR_DEPTH:0];
			// Trace: core/cva6_fifo_v3.sv:65:5
			assign empty_o = (status_cnt_q == 0) & ~(FALL_THROUGH & push_i);
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:70:3
	always @(*) begin : read_write_comb
		if (_sv2v_0)
			;
		// Trace: core/cva6_fifo_v3.sv:72:5
		read_pointer_n = read_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:73:5
		write_pointer_n = write_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:74:5
		status_cnt_n = status_cnt_q;
		// Trace: core/cva6_fifo_v3.sv:75:5
		if (FPGA_EN) begin
			// Trace: core/cva6_fifo_v3.sv:76:7
			fifo_ram_we = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:77:7
			fifo_ram_read_address = read_pointer_q;
			// Trace: core/cva6_fifo_v3.sv:78:7
			fifo_ram_write_address = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:79:7
			fifo_ram_wdata = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:80:7
			data_o = (DEPTH == 0 ? data_i : fifo_ram_rdata);
		end
		else begin
			// Trace: core/cva6_fifo_v3.sv:82:7
			data_o = (DEPTH == 0 ? data_i : mem_q[read_pointer_q]);
			// Trace: core/cva6_fifo_v3.sv:83:7
			mem_n = mem_q;
			// Trace: core/cva6_fifo_v3.sv:84:7
			gate_clock = 1'b1;
		end
		if (push_i && ~full_o) begin
			// Trace: core/cva6_fifo_v3.sv:89:7
			if (FPGA_EN) begin
				// Trace: core/cva6_fifo_v3.sv:90:9
				fifo_ram_we = 1'b1;
				// Trace: core/cva6_fifo_v3.sv:91:9
				fifo_ram_write_address = write_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:92:9
				fifo_ram_wdata = data_i;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:95:9
				mem_n[write_pointer_q] = data_i;
				// Trace: core/cva6_fifo_v3.sv:97:9
				gate_clock = 1'b0;
			end
			if (write_pointer_q == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:101:61
				write_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:102:12
				write_pointer_n = write_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:104:7
			status_cnt_n = status_cnt_q + 1;
		end
		if (pop_i && ~empty_o) begin
			// Trace: core/cva6_fifo_v3.sv:110:7
			if (read_pointer_n == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:110:60
				read_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:111:12
				read_pointer_n = read_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:113:7
			status_cnt_n = status_cnt_q - 1;
		end
		if (((push_i && pop_i) && ~full_o) && ~empty_o)
			// Trace: core/cva6_fifo_v3.sv:117:49
			status_cnt_n = status_cnt_q;
		if ((FALL_THROUGH && (status_cnt_q == 0)) && push_i) begin
			// Trace: core/cva6_fifo_v3.sv:121:7
			data_o = data_i;
			// Trace: core/cva6_fifo_v3.sv:122:7
			if (pop_i) begin
				// Trace: core/cva6_fifo_v3.sv:123:9
				status_cnt_n = status_cnt_q;
				// Trace: core/cva6_fifo_v3.sv:124:9
				read_pointer_n = read_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:125:9
				write_pointer_n = write_pointer_q;
			end
		end
	end
	// Trace: core/cva6_fifo_v3.sv:131:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cva6_fifo_v3.sv:132:5
		if (~rst_ni) begin
			// Trace: core/cva6_fifo_v3.sv:133:7
			read_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:134:7
			write_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:135:7
			status_cnt_q <= 1'sb0;
		end
		else
			// Trace: core/cva6_fifo_v3.sv:137:7
			if (flush_i) begin
				// Trace: core/cva6_fifo_v3.sv:138:9
				read_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:139:9
				write_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:140:9
				status_cnt_q <= 1'sb0;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:142:9
				read_pointer_q <= read_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:143:9
				write_pointer_q <= write_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:144:9
				status_cnt_q <= status_cnt_n;
			end
	// Trace: core/cva6_fifo_v3.sv:149:3
	generate
		if (FPGA_EN) begin : gen_fpga_queue
			// Trace: core/cva6_fifo_v3.sv:150:5
			AsyncDpRam #(
				.ADDR_WIDTH(ADDR_DEPTH),
				.DATA_DEPTH(DEPTH),
				.DATA_WIDTH(1)
			) fifo_ram(
				.Clk_CI(clk_i),
				.WrEn_SI(fifo_ram_we),
				.RdAddr_DI(fifo_ram_read_address),
				.WrAddr_DI(fifo_ram_write_address),
				.WrData_DI(fifo_ram_wdata),
				.RdData_DO(fifo_ram_rdata)
			);
		end
		else begin : gen_asic_queue
			// Trace: core/cva6_fifo_v3.sv:163:5
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cva6_fifo_v3.sv:164:7
				if (~rst_ni)
					// Trace: core/cva6_fifo_v3.sv:165:9
					mem_q <= 1'sb0;
				else if (!gate_clock)
					// Trace: core/cva6_fifo_v3.sv:167:9
					mem_q <= mem_n;
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:174:3
	// Trace: core/cva6_fifo_v3.sv:179:3
	// removed an assertion item
	// full_write : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(full_o |-> ~push_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:181:8
	// 	$fatal(1, "Trying to push new data although the FIFO is full.");
	// end
	// Trace: core/cva6_fifo_v3.sv:183:3
	// removed an assertion item
	// empty_read : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(empty_o |-> ~pop_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:185:8
	// 	$fatal(1, "Trying to pop data although the FIFO is empty.");
	// end
	initial _sv2v_0 = 0;
endmodule
module cva6_fifo_v3_8725B_47F39 (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	usage_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	// removed localparam type dtype_CVA6Cfg_type
	// removed localparam type dtype_config_pkg_NrMaxRules_type
	parameter [17102:0] dtype_CVA6Cfg = 0;
	parameter signed [31:0] dtype_config_pkg_NrMaxRules = 0;
	reg _sv2v_0;
	// Trace: core/cva6_fifo_v3.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: core/cva6_fifo_v3.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: core/cva6_fifo_v3.sv:18:15
	parameter [0:0] FPGA_EN = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:19:15
	parameter [31:0] dtype = 0;
	// Trace: core/cva6_fifo_v3.sv:21:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: core/cva6_fifo_v3.sv:23:5
	input wire clk_i;
	// Trace: core/cva6_fifo_v3.sv:24:5
	input wire rst_ni;
	// Trace: core/cva6_fifo_v3.sv:25:5
	input wire flush_i;
	// Trace: core/cva6_fifo_v3.sv:26:5
	input wire testmode_i;
	// Trace: core/cva6_fifo_v3.sv:28:5
	output wire full_o;
	// Trace: core/cva6_fifo_v3.sv:29:5
	output wire empty_o;
	// Trace: core/cva6_fifo_v3.sv:30:5
	output wire [ADDR_DEPTH - 1:0] usage_o;
	// Trace: core/cva6_fifo_v3.sv:32:5
	input wire data_i;
	// Trace: core/cva6_fifo_v3.sv:33:5
	input wire push_i;
	// Trace: core/cva6_fifo_v3.sv:35:5
	output reg data_o;
	// Trace: core/cva6_fifo_v3.sv:36:5
	input wire pop_i;
	// Trace: core/cva6_fifo_v3.sv:40:3
	localparam [31:0] FifoDepth = (DEPTH > 0 ? DEPTH : 1);
	// Trace: core/cva6_fifo_v3.sv:42:3
	reg gate_clock;
	// Trace: core/cva6_fifo_v3.sv:44:3
	reg [ADDR_DEPTH - 1:0] read_pointer_n;
	reg [ADDR_DEPTH - 1:0] read_pointer_q;
	reg [ADDR_DEPTH - 1:0] write_pointer_n;
	reg [ADDR_DEPTH - 1:0] write_pointer_q;
	// Trace: core/cva6_fifo_v3.sv:47:3
	reg [ADDR_DEPTH:0] status_cnt_n;
	reg [ADDR_DEPTH:0] status_cnt_q;
	// Trace: core/cva6_fifo_v3.sv:49:3
	reg [FifoDepth - 1:0] mem_n;
	reg [FifoDepth - 1:0] mem_q;
	// Trace: core/cva6_fifo_v3.sv:52:3
	reg fifo_ram_we;
	// Trace: core/cva6_fifo_v3.sv:53:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_read_address;
	// Trace: core/cva6_fifo_v3.sv:54:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_write_address;
	// Trace: core/cva6_fifo_v3.sv:55:3
	reg [0:0] fifo_ram_wdata;
	// Trace: core/cva6_fifo_v3.sv:56:3
	wire [0:0] fifo_ram_rdata;
	// Trace: core/cva6_fifo_v3.sv:58:3
	assign usage_o = status_cnt_q[ADDR_DEPTH - 1:0];
	// Trace: core/cva6_fifo_v3.sv:60:3
	generate
		if (DEPTH == 0) begin : gen_pass_through
			// Trace: core/cva6_fifo_v3.sv:61:5
			assign empty_o = ~push_i;
			// Trace: core/cva6_fifo_v3.sv:62:5
			assign full_o = ~pop_i;
		end
		else begin : gen_fifo
			// Trace: core/cva6_fifo_v3.sv:64:5
			assign full_o = status_cnt_q == FifoDepth[ADDR_DEPTH:0];
			// Trace: core/cva6_fifo_v3.sv:65:5
			assign empty_o = (status_cnt_q == 0) & ~(FALL_THROUGH & push_i);
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:70:3
	always @(*) begin : read_write_comb
		if (_sv2v_0)
			;
		// Trace: core/cva6_fifo_v3.sv:72:5
		read_pointer_n = read_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:73:5
		write_pointer_n = write_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:74:5
		status_cnt_n = status_cnt_q;
		// Trace: core/cva6_fifo_v3.sv:75:5
		if (FPGA_EN) begin
			// Trace: core/cva6_fifo_v3.sv:76:7
			fifo_ram_we = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:77:7
			fifo_ram_read_address = read_pointer_q;
			// Trace: core/cva6_fifo_v3.sv:78:7
			fifo_ram_write_address = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:79:7
			fifo_ram_wdata = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:80:7
			data_o = (DEPTH == 0 ? data_i : fifo_ram_rdata);
		end
		else begin
			// Trace: core/cva6_fifo_v3.sv:82:7
			data_o = (DEPTH == 0 ? data_i : mem_q[read_pointer_q]);
			// Trace: core/cva6_fifo_v3.sv:83:7
			mem_n = mem_q;
			// Trace: core/cva6_fifo_v3.sv:84:7
			gate_clock = 1'b1;
		end
		if (push_i && ~full_o) begin
			// Trace: core/cva6_fifo_v3.sv:89:7
			if (FPGA_EN) begin
				// Trace: core/cva6_fifo_v3.sv:90:9
				fifo_ram_we = 1'b1;
				// Trace: core/cva6_fifo_v3.sv:91:9
				fifo_ram_write_address = write_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:92:9
				fifo_ram_wdata = data_i;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:95:9
				mem_n[write_pointer_q] = data_i;
				// Trace: core/cva6_fifo_v3.sv:97:9
				gate_clock = 1'b0;
			end
			if (write_pointer_q == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:101:61
				write_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:102:12
				write_pointer_n = write_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:104:7
			status_cnt_n = status_cnt_q + 1;
		end
		if (pop_i && ~empty_o) begin
			// Trace: core/cva6_fifo_v3.sv:110:7
			if (read_pointer_n == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:110:60
				read_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:111:12
				read_pointer_n = read_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:113:7
			status_cnt_n = status_cnt_q - 1;
		end
		if (((push_i && pop_i) && ~full_o) && ~empty_o)
			// Trace: core/cva6_fifo_v3.sv:117:49
			status_cnt_n = status_cnt_q;
		if ((FALL_THROUGH && (status_cnt_q == 0)) && push_i) begin
			// Trace: core/cva6_fifo_v3.sv:121:7
			data_o = data_i;
			// Trace: core/cva6_fifo_v3.sv:122:7
			if (pop_i) begin
				// Trace: core/cva6_fifo_v3.sv:123:9
				status_cnt_n = status_cnt_q;
				// Trace: core/cva6_fifo_v3.sv:124:9
				read_pointer_n = read_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:125:9
				write_pointer_n = write_pointer_q;
			end
		end
	end
	// Trace: core/cva6_fifo_v3.sv:131:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cva6_fifo_v3.sv:132:5
		if (~rst_ni) begin
			// Trace: core/cva6_fifo_v3.sv:133:7
			read_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:134:7
			write_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:135:7
			status_cnt_q <= 1'sb0;
		end
		else
			// Trace: core/cva6_fifo_v3.sv:137:7
			if (flush_i) begin
				// Trace: core/cva6_fifo_v3.sv:138:9
				read_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:139:9
				write_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:140:9
				status_cnt_q <= 1'sb0;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:142:9
				read_pointer_q <= read_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:143:9
				write_pointer_q <= write_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:144:9
				status_cnt_q <= status_cnt_n;
			end
	// Trace: core/cva6_fifo_v3.sv:149:3
	generate
		if (FPGA_EN) begin : gen_fpga_queue
			// Trace: core/cva6_fifo_v3.sv:150:5
			AsyncDpRam #(
				.ADDR_WIDTH(ADDR_DEPTH),
				.DATA_DEPTH(DEPTH),
				.DATA_WIDTH(1)
			) fifo_ram(
				.Clk_CI(clk_i),
				.WrEn_SI(fifo_ram_we),
				.RdAddr_DI(fifo_ram_read_address),
				.WrAddr_DI(fifo_ram_write_address),
				.WrData_DI(fifo_ram_wdata),
				.RdData_DO(fifo_ram_rdata)
			);
		end
		else begin : gen_asic_queue
			// Trace: core/cva6_fifo_v3.sv:163:5
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cva6_fifo_v3.sv:164:7
				if (~rst_ni)
					// Trace: core/cva6_fifo_v3.sv:165:9
					mem_q <= 1'sb0;
				else if (!gate_clock)
					// Trace: core/cva6_fifo_v3.sv:167:9
					mem_q <= mem_n;
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:174:3
	// Trace: core/cva6_fifo_v3.sv:179:3
	// removed an assertion item
	// full_write : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(full_o |-> ~push_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:181:8
	// 	$fatal(1, "Trying to push new data although the FIFO is full.");
	// end
	// Trace: core/cva6_fifo_v3.sv:183:3
	// removed an assertion item
	// empty_read : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(empty_o |-> ~pop_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:185:8
	// 	$fatal(1, "Trying to pop data although the FIFO is empty.");
	// end
	initial _sv2v_0 = 0;
endmodule
module cva6_fifo_v3_CA745_802D7 (
	clk_i,
	rst_ni,
	flush_i,
	testmode_i,
	full_o,
	empty_o,
	usage_o,
	data_i,
	push_i,
	data_o,
	pop_i
);
	// removed localparam type dtype_CVA6Cfg_type
	// removed localparam type dtype_config_pkg_NrMaxRules_type
	parameter [17102:0] dtype_CVA6Cfg = 0;
	parameter signed [31:0] dtype_config_pkg_NrMaxRules = 0;
	reg _sv2v_0;
	// Trace: core/cva6_fifo_v3.sv:14:15
	parameter [0:0] FALL_THROUGH = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:15:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: core/cva6_fifo_v3.sv:16:15
	parameter [31:0] DEPTH = 8;
	// Trace: core/cva6_fifo_v3.sv:18:15
	parameter [0:0] FPGA_EN = 1'b0;
	// Trace: core/cva6_fifo_v3.sv:19:15
	parameter [31:0] dtype = 0;
	// Trace: core/cva6_fifo_v3.sv:21:15
	parameter [31:0] ADDR_DEPTH = (DEPTH > 1 ? $clog2(DEPTH) : 1);
	// Trace: core/cva6_fifo_v3.sv:23:5
	input wire clk_i;
	// Trace: core/cva6_fifo_v3.sv:24:5
	input wire rst_ni;
	// Trace: core/cva6_fifo_v3.sv:25:5
	input wire flush_i;
	// Trace: core/cva6_fifo_v3.sv:26:5
	input wire testmode_i;
	// Trace: core/cva6_fifo_v3.sv:28:5
	output wire full_o;
	// Trace: core/cva6_fifo_v3.sv:29:5
	output wire empty_o;
	// Trace: core/cva6_fifo_v3.sv:30:5
	output wire [ADDR_DEPTH - 1:0] usage_o;
	// Trace: core/cva6_fifo_v3.sv:32:5
	input wire data_i;
	// Trace: core/cva6_fifo_v3.sv:33:5
	input wire push_i;
	// Trace: core/cva6_fifo_v3.sv:35:5
	output reg data_o;
	// Trace: core/cva6_fifo_v3.sv:36:5
	input wire pop_i;
	// Trace: core/cva6_fifo_v3.sv:40:3
	localparam [31:0] FifoDepth = (DEPTH > 0 ? DEPTH : 1);
	// Trace: core/cva6_fifo_v3.sv:42:3
	reg gate_clock;
	// Trace: core/cva6_fifo_v3.sv:44:3
	reg [ADDR_DEPTH - 1:0] read_pointer_n;
	reg [ADDR_DEPTH - 1:0] read_pointer_q;
	reg [ADDR_DEPTH - 1:0] write_pointer_n;
	reg [ADDR_DEPTH - 1:0] write_pointer_q;
	// Trace: core/cva6_fifo_v3.sv:47:3
	reg [ADDR_DEPTH:0] status_cnt_n;
	reg [ADDR_DEPTH:0] status_cnt_q;
	// Trace: core/cva6_fifo_v3.sv:49:3
	reg [FifoDepth - 1:0] mem_n;
	reg [FifoDepth - 1:0] mem_q;
	// Trace: core/cva6_fifo_v3.sv:52:3
	reg fifo_ram_we;
	// Trace: core/cva6_fifo_v3.sv:53:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_read_address;
	// Trace: core/cva6_fifo_v3.sv:54:3
	reg [ADDR_DEPTH - 1:0] fifo_ram_write_address;
	// Trace: core/cva6_fifo_v3.sv:55:3
	reg [0:0] fifo_ram_wdata;
	// Trace: core/cva6_fifo_v3.sv:56:3
	wire [0:0] fifo_ram_rdata;
	// Trace: core/cva6_fifo_v3.sv:58:3
	assign usage_o = status_cnt_q[ADDR_DEPTH - 1:0];
	// Trace: core/cva6_fifo_v3.sv:60:3
	generate
		if (DEPTH == 0) begin : gen_pass_through
			// Trace: core/cva6_fifo_v3.sv:61:5
			assign empty_o = ~push_i;
			// Trace: core/cva6_fifo_v3.sv:62:5
			assign full_o = ~pop_i;
		end
		else begin : gen_fifo
			// Trace: core/cva6_fifo_v3.sv:64:5
			assign full_o = status_cnt_q == FifoDepth[ADDR_DEPTH:0];
			// Trace: core/cva6_fifo_v3.sv:65:5
			assign empty_o = (status_cnt_q == 0) & ~(FALL_THROUGH & push_i);
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:70:3
	always @(*) begin : read_write_comb
		if (_sv2v_0)
			;
		// Trace: core/cva6_fifo_v3.sv:72:5
		read_pointer_n = read_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:73:5
		write_pointer_n = write_pointer_q;
		// Trace: core/cva6_fifo_v3.sv:74:5
		status_cnt_n = status_cnt_q;
		// Trace: core/cva6_fifo_v3.sv:75:5
		if (FPGA_EN) begin
			// Trace: core/cva6_fifo_v3.sv:76:7
			fifo_ram_we = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:77:7
			fifo_ram_read_address = read_pointer_q;
			// Trace: core/cva6_fifo_v3.sv:78:7
			fifo_ram_write_address = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:79:7
			fifo_ram_wdata = 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:80:7
			data_o = (DEPTH == 0 ? data_i : fifo_ram_rdata);
		end
		else begin
			// Trace: core/cva6_fifo_v3.sv:82:7
			data_o = (DEPTH == 0 ? data_i : mem_q[read_pointer_q]);
			// Trace: core/cva6_fifo_v3.sv:83:7
			mem_n = mem_q;
			// Trace: core/cva6_fifo_v3.sv:84:7
			gate_clock = 1'b1;
		end
		if (push_i && ~full_o) begin
			// Trace: core/cva6_fifo_v3.sv:89:7
			if (FPGA_EN) begin
				// Trace: core/cva6_fifo_v3.sv:90:9
				fifo_ram_we = 1'b1;
				// Trace: core/cva6_fifo_v3.sv:91:9
				fifo_ram_write_address = write_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:92:9
				fifo_ram_wdata = data_i;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:95:9
				mem_n[write_pointer_q] = data_i;
				// Trace: core/cva6_fifo_v3.sv:97:9
				gate_clock = 1'b0;
			end
			if (write_pointer_q == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:101:61
				write_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:102:12
				write_pointer_n = write_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:104:7
			status_cnt_n = status_cnt_q + 1;
		end
		if (pop_i && ~empty_o) begin
			// Trace: core/cva6_fifo_v3.sv:110:7
			if (read_pointer_n == (FifoDepth[ADDR_DEPTH - 1:0] - 1))
				// Trace: core/cva6_fifo_v3.sv:110:60
				read_pointer_n = 1'sb0;
			else
				// Trace: core/cva6_fifo_v3.sv:111:12
				read_pointer_n = read_pointer_q + 1;
			// Trace: core/cva6_fifo_v3.sv:113:7
			status_cnt_n = status_cnt_q - 1;
		end
		if (((push_i && pop_i) && ~full_o) && ~empty_o)
			// Trace: core/cva6_fifo_v3.sv:117:49
			status_cnt_n = status_cnt_q;
		if ((FALL_THROUGH && (status_cnt_q == 0)) && push_i) begin
			// Trace: core/cva6_fifo_v3.sv:121:7
			data_o = data_i;
			// Trace: core/cva6_fifo_v3.sv:122:7
			if (pop_i) begin
				// Trace: core/cva6_fifo_v3.sv:123:9
				status_cnt_n = status_cnt_q;
				// Trace: core/cva6_fifo_v3.sv:124:9
				read_pointer_n = read_pointer_q;
				// Trace: core/cva6_fifo_v3.sv:125:9
				write_pointer_n = write_pointer_q;
			end
		end
	end
	// Trace: core/cva6_fifo_v3.sv:131:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cva6_fifo_v3.sv:132:5
		if (~rst_ni) begin
			// Trace: core/cva6_fifo_v3.sv:133:7
			read_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:134:7
			write_pointer_q <= 1'sb0;
			// Trace: core/cva6_fifo_v3.sv:135:7
			status_cnt_q <= 1'sb0;
		end
		else
			// Trace: core/cva6_fifo_v3.sv:137:7
			if (flush_i) begin
				// Trace: core/cva6_fifo_v3.sv:138:9
				read_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:139:9
				write_pointer_q <= 1'sb0;
				// Trace: core/cva6_fifo_v3.sv:140:9
				status_cnt_q <= 1'sb0;
			end
			else begin
				// Trace: core/cva6_fifo_v3.sv:142:9
				read_pointer_q <= read_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:143:9
				write_pointer_q <= write_pointer_n;
				// Trace: core/cva6_fifo_v3.sv:144:9
				status_cnt_q <= status_cnt_n;
			end
	// Trace: core/cva6_fifo_v3.sv:149:3
	generate
		if (FPGA_EN) begin : gen_fpga_queue
			// Trace: core/cva6_fifo_v3.sv:150:5
			AsyncDpRam #(
				.ADDR_WIDTH(ADDR_DEPTH),
				.DATA_DEPTH(DEPTH),
				.DATA_WIDTH(1)
			) fifo_ram(
				.Clk_CI(clk_i),
				.WrEn_SI(fifo_ram_we),
				.RdAddr_DI(fifo_ram_read_address),
				.WrAddr_DI(fifo_ram_write_address),
				.WrData_DI(fifo_ram_wdata),
				.RdData_DO(fifo_ram_rdata)
			);
		end
		else begin : gen_asic_queue
			// Trace: core/cva6_fifo_v3.sv:163:5
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/cva6_fifo_v3.sv:164:7
				if (~rst_ni)
					// Trace: core/cva6_fifo_v3.sv:165:9
					mem_q <= 1'sb0;
				else if (!gate_clock)
					// Trace: core/cva6_fifo_v3.sv:167:9
					mem_q <= mem_n;
		end
	endgenerate
	// Trace: core/cva6_fifo_v3.sv:174:3
	// Trace: core/cva6_fifo_v3.sv:179:3
	// removed an assertion item
	// full_write : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(full_o |-> ~push_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:181:8
	// 	$fatal(1, "Trying to push new data although the FIFO is full.");
	// end
	// Trace: core/cva6_fifo_v3.sv:183:3
	// removed an assertion item
	// empty_read : assert property (@(posedge clk_i) disable iff (~rst_ni)
	// 	(empty_o |-> ~pop_i)
	// ) else begin
	// 	// Trace: core/cva6_fifo_v3.sv:185:8
	// 	$fatal(1, "Trying to pop data although the FIFO is empty.");
	// end
	initial _sv2v_0 = 0;
endmodule
