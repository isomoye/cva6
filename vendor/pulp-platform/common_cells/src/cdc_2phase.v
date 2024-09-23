module cdc_2phase_1A17D (
	src_rst_ni,
	src_clk_i,
	src_data_i,
	src_valid_i,
	src_ready_o,
	dst_rst_ni,
	dst_clk_i,
	dst_data_o,
	dst_valid_o,
	dst_ready_i
);
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:20:18
	// removed localparam type T
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:22:3
	input wire src_rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:23:3
	input wire src_clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:24:3
	input wire [40:0] src_data_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:25:3
	input wire src_valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:26:3
	output wire src_ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:28:3
	input wire dst_rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:29:3
	input wire dst_clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:30:3
	output wire [40:0] dst_data_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:31:3
	output wire dst_valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:32:3
	input wire dst_ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:36:29
	(* dont_touch = "true" *) wire async_req;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:37:29
	(* dont_touch = "true" *) wire async_ack;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:38:29
	(* dont_touch = "true" *) wire [40:0] async_data;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:41:3
	cdc_2phase_src_595FC i_src(
		.rst_ni(src_rst_ni),
		.clk_i(src_clk_i),
		.data_i(src_data_i),
		.valid_i(src_valid_i),
		.ready_o(src_ready_o),
		.async_req_o(async_req),
		.async_ack_i(async_ack),
		.async_data_o(async_data)
	);
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:53:3
	cdc_2phase_dst_694ED i_dst(
		.rst_ni(dst_rst_ni),
		.clk_i(dst_clk_i),
		.data_o(dst_data_o),
		.valid_o(dst_valid_o),
		.ready_i(dst_ready_i),
		.async_req_i(async_req),
		.async_ack_o(async_ack),
		.async_data_i(async_data)
	);
endmodule
module cdc_2phase_ED5E8 (
	src_rst_ni,
	src_clk_i,
	src_data_i,
	src_valid_i,
	src_ready_o,
	dst_rst_ni,
	dst_clk_i,
	dst_data_o,
	dst_valid_o,
	dst_ready_i
);
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:20:18
	// removed localparam type T
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:22:3
	input wire src_rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:23:3
	input wire src_clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:24:3
	input wire [33:0] src_data_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:25:3
	input wire src_valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:26:3
	output wire src_ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:28:3
	input wire dst_rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:29:3
	input wire dst_clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:30:3
	output wire [33:0] dst_data_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:31:3
	output wire dst_valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:32:3
	input wire dst_ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:36:29
	(* dont_touch = "true" *) wire async_req;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:37:29
	(* dont_touch = "true" *) wire async_ack;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:38:29
	(* dont_touch = "true" *) wire [33:0] async_data;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:41:3
	cdc_2phase_src_6CED9 i_src(
		.rst_ni(src_rst_ni),
		.clk_i(src_clk_i),
		.data_i(src_data_i),
		.valid_i(src_valid_i),
		.ready_o(src_ready_o),
		.async_req_o(async_req),
		.async_ack_i(async_ack),
		.async_data_o(async_data)
	);
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:53:3
	cdc_2phase_dst_3DD18 i_dst(
		.rst_ni(dst_rst_ni),
		.clk_i(dst_clk_i),
		.data_o(dst_data_o),
		.valid_o(dst_valid_o),
		.ready_i(dst_ready_i),
		.async_req_i(async_req),
		.async_ack_o(async_ack),
		.async_data_i(async_data)
	);
endmodule
module cdc_2phase_src_595FC (
	rst_ni,
	clk_i,
	data_i,
	valid_i,
	ready_o,
	async_req_o,
	async_ack_i,
	async_data_o
);
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:69:18
	// removed localparam type T
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:71:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:72:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:73:3
	input wire [40:0] data_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:74:3
	input wire valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:75:3
	output wire ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:76:3
	output wire async_req_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:77:3
	input wire async_ack_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:78:3
	output wire [40:0] async_data_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:82:3
	(* dont_touch = "true" *) reg req_src_q;
	(* dont_touch = "true" *) reg ack_src_q;
	(* dont_touch = "true" *) reg ack_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:84:3
	(* dont_touch = "true" *) reg [40:0] data_src_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:87:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:88:5
		if (!rst_ni) begin
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:89:7
			req_src_q <= 0;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:90:7
			data_src_q <= 1'sb0;
		end
		else if (valid_i && ready_o) begin
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:92:7
			req_src_q <= ~req_src_q;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:93:7
			data_src_q <= data_i;
		end
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:98:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:99:5
		if (!rst_ni) begin
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:100:7
			ack_src_q <= 0;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:101:7
			ack_q <= 0;
		end
		else begin
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:103:7
			ack_src_q <= async_ack_i;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:104:7
			ack_q <= ack_src_q;
		end
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:109:3
	assign ready_o = req_src_q == ack_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:110:3
	assign async_req_o = req_src_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:111:3
	assign async_data_o = data_src_q;
endmodule
module cdc_2phase_src_6CED9 (
	rst_ni,
	clk_i,
	data_i,
	valid_i,
	ready_o,
	async_req_o,
	async_ack_i,
	async_data_o
);
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:69:18
	// removed localparam type T
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:71:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:72:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:73:3
	input wire [33:0] data_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:74:3
	input wire valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:75:3
	output wire ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:76:3
	output wire async_req_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:77:3
	input wire async_ack_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:78:3
	output wire [33:0] async_data_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:82:3
	(* dont_touch = "true" *) reg req_src_q;
	(* dont_touch = "true" *) reg ack_src_q;
	(* dont_touch = "true" *) reg ack_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:84:3
	(* dont_touch = "true" *) reg [33:0] data_src_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:87:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:88:5
		if (!rst_ni) begin
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:89:7
			req_src_q <= 0;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:90:7
			data_src_q <= 1'sb0;
		end
		else if (valid_i && ready_o) begin
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:92:7
			req_src_q <= ~req_src_q;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:93:7
			data_src_q <= data_i;
		end
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:98:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:99:5
		if (!rst_ni) begin
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:100:7
			ack_src_q <= 0;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:101:7
			ack_q <= 0;
		end
		else begin
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:103:7
			ack_src_q <= async_ack_i;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:104:7
			ack_q <= ack_src_q;
		end
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:109:3
	assign ready_o = req_src_q == ack_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:110:3
	assign async_req_o = req_src_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:111:3
	assign async_data_o = data_src_q;
endmodule
module cdc_2phase_dst_3DD18 (
	rst_ni,
	clk_i,
	data_o,
	valid_o,
	ready_i,
	async_req_i,
	async_ack_o,
	async_data_i
);
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:119:18
	// removed localparam type T
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:121:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:122:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:123:3
	output wire [33:0] data_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:124:3
	output wire valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:125:3
	input wire ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:126:3
	input wire async_req_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:127:3
	output wire async_ack_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:128:3
	input wire [33:0] async_data_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:133:3
	(* dont_touch = "true" *) (* async_reg = "true" *) reg req_dst_q;
	(* dont_touch = "true" *) (* async_reg = "true" *) reg req_q0;
	(* dont_touch = "true" *) (* async_reg = "true" *) reg req_q1;
	(* dont_touch = "true" *) (* async_reg = "true" *) reg ack_dst_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:135:3
	(* dont_touch = "true" *) reg [33:0] data_dst_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:138:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:139:5
		if (!rst_ni)
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:140:7
			ack_dst_q <= 0;
		else if (valid_o && ready_i)
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:142:7
			ack_dst_q <= ~ack_dst_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:148:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:149:5
		if (!rst_ni)
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:150:7
			data_dst_q <= 1'sb0;
		else if ((req_q0 != req_q1) && !valid_o)
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:152:7
			data_dst_q <= async_data_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:157:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:158:5
		if (!rst_ni) begin
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:159:7
			req_dst_q <= 0;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:160:7
			req_q0 <= 0;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:161:7
			req_q1 <= 0;
		end
		else begin
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:163:7
			req_dst_q <= async_req_i;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:164:7
			req_q0 <= req_dst_q;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:165:7
			req_q1 <= req_q0;
		end
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:170:3
	assign valid_o = ack_dst_q != req_q1;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:171:3
	assign data_o = data_dst_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:172:3
	assign async_ack_o = ack_dst_q;
endmodule
module cdc_2phase_dst_694ED (
	rst_ni,
	clk_i,
	data_o,
	valid_o,
	ready_i,
	async_req_i,
	async_ack_o,
	async_data_i
);
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:119:18
	// removed localparam type T
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:121:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:122:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:123:3
	output wire [40:0] data_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:124:3
	output wire valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:125:3
	input wire ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:126:3
	input wire async_req_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:127:3
	output wire async_ack_o;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:128:3
	input wire [40:0] async_data_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:133:3
	(* dont_touch = "true" *) (* async_reg = "true" *) reg req_dst_q;
	(* dont_touch = "true" *) (* async_reg = "true" *) reg req_q0;
	(* dont_touch = "true" *) (* async_reg = "true" *) reg req_q1;
	(* dont_touch = "true" *) (* async_reg = "true" *) reg ack_dst_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:135:3
	(* dont_touch = "true" *) reg [40:0] data_dst_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:138:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:139:5
		if (!rst_ni)
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:140:7
			ack_dst_q <= 0;
		else if (valid_o && ready_i)
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:142:7
			ack_dst_q <= ~ack_dst_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:148:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:149:5
		if (!rst_ni)
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:150:7
			data_dst_q <= 1'sb0;
		else if ((req_q0 != req_q1) && !valid_o)
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:152:7
			data_dst_q <= async_data_i;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:157:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:158:5
		if (!rst_ni) begin
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:159:7
			req_dst_q <= 0;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:160:7
			req_q0 <= 0;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:161:7
			req_q1 <= 0;
		end
		else begin
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:163:7
			req_dst_q <= async_req_i;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:164:7
			req_q0 <= req_dst_q;
			// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:165:7
			req_q1 <= req_q0;
		end
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:170:3
	assign valid_o = ack_dst_q != req_q1;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:171:3
	assign data_o = data_dst_q;
	// Trace: vendor/pulp-platform/common_cells/src/cdc_2phase.sv:172:3
	assign async_ack_o = ack_dst_q;
endmodule
