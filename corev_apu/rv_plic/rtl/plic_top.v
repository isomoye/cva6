module plic_top (
	clk_i,
	rst_ni,
	req_i,
	resp_o,
	le_i,
	irq_sources_i,
	eip_targets_o
);
	reg _sv2v_0;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:16:13
	parameter signed [31:0] N_SOURCE = 30;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:17:13
	parameter signed [31:0] N_TARGET = 2;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:18:13
	parameter signed [31:0] MAX_PRIO = 7;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:19:13
	parameter signed [31:0] SRCW = $clog2(N_SOURCE + 1);
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:20:18
	// removed localparam type reg_req_t
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:21:18
	// removed localparam type reg_rsp_t
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:23:3
	input wire clk_i;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:24:3
	input wire rst_ni;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:26:3
	input wire req_i;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:27:3
	output wire resp_o;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:28:3
	input wire [N_SOURCE - 1:0] le_i;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:30:3
	input wire [N_SOURCE - 1:0] irq_sources_i;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:32:3
	output wire [N_TARGET - 1:0] eip_targets_o;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:34:3
	localparam PRIOW = $clog2(MAX_PRIO + 1);
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:36:3
	wire [N_SOURCE - 1:0] ip;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:38:3
	reg [(N_TARGET * PRIOW) - 1:0] threshold_q;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:40:3
	wire [N_TARGET - 1:0] claim_re;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:41:3
	wire [(N_TARGET * SRCW) - 1:0] claim_id;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:42:3
	reg [N_SOURCE - 1:0] claim;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:44:3
	wire [N_TARGET - 1:0] complete_we;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:45:3
	wire [(N_TARGET * SRCW) - 1:0] complete_id;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:46:3
	reg [N_SOURCE - 1:0] complete;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:48:3
	reg [(N_SOURCE * PRIOW) - 1:0] prio_q;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:49:3
	reg [(N_TARGET * N_SOURCE) - 1:0] ie_q;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:51:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: corev_apu/rv_plic/rtl/plic_top.sv:52:5
		claim = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_top.sv:53:5
		complete = 1'sb0;
		// Trace: corev_apu/rv_plic/rtl/plic_top.sv:54:5
		begin : sv2v_autoblock_1
			// Trace: corev_apu/rv_plic/rtl/plic_top.sv:54:10
			reg signed [31:0] i;
			// Trace: corev_apu/rv_plic/rtl/plic_top.sv:54:10
			for (i = 0; i < N_TARGET; i = i + 1)
				begin
					// Trace: corev_apu/rv_plic/rtl/plic_top.sv:55:7
					if (claim_re[i] && (claim_id[i * SRCW+:SRCW] != 0))
						// Trace: corev_apu/rv_plic/rtl/plic_top.sv:55:44
						claim[claim_id[i * SRCW+:SRCW] - 1] = 1'b1;
					if (complete_we[i] && (complete_id[i * SRCW+:SRCW] != 0))
						// Trace: corev_apu/rv_plic/rtl/plic_top.sv:56:50
						complete[complete_id[i * SRCW+:SRCW] - 1] = 1'b1;
				end
		end
	end
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:61:3
	rv_plic_gateway #(.N_SOURCE(N_SOURCE)) i_rv_plic_gateway(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.src(irq_sources_i),
		.le(le_i),
		.claim(claim),
		.complete(complete),
		.ip(ip)
	);
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:74:3
	genvar _gv_i_3;
	generate
		for (_gv_i_3 = 0; _gv_i_3 < N_TARGET; _gv_i_3 = _gv_i_3 + 1) begin : gen_target
			localparam i = _gv_i_3;
			// Trace: corev_apu/rv_plic/rtl/plic_top.sv:75:5
			rv_plic_target #(
				.N_SOURCE(N_SOURCE),
				.MAX_PRIO(MAX_PRIO),
				.ALGORITHM("SEQUENTIAL")
			) i_target(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.ip(ip),
				.ie(ie_q[i * N_SOURCE+:N_SOURCE]),
				.prio(prio_q),
				.threshold(threshold_q[i * PRIOW+:PRIOW]),
				.irq(eip_targets_o[i]),
				.irq_id(claim_id[i * SRCW+:SRCW])
			);
		end
	endgenerate
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:91:3
	wire [N_TARGET - 1:0] threshold_we_o;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:92:3
	wire [(N_TARGET * PRIOW) - 1:0] threshold_o;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:94:3
	wire [(N_SOURCE >= 0 ? ((N_SOURCE + 1) * PRIOW) - 1 : ((1 - N_SOURCE) * PRIOW) + ((N_SOURCE * PRIOW) - 1)):(N_SOURCE >= 0 ? 0 : N_SOURCE * PRIOW)] prio_i;
	wire [(N_SOURCE >= 0 ? ((N_SOURCE + 1) * PRIOW) - 1 : ((1 - N_SOURCE) * PRIOW) + ((N_SOURCE * PRIOW) - 1)):(N_SOURCE >= 0 ? 0 : N_SOURCE * PRIOW)] prio_o;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:95:3
	wire [N_SOURCE:0] prio_we_o;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:99:3
	wire [(N_SOURCE >= 0 ? (N_TARGET * (N_SOURCE + 1)) - 1 : (N_TARGET * (1 - N_SOURCE)) + (N_SOURCE - 1)):(N_SOURCE >= 0 ? 0 : N_SOURCE + 0)] ie_i;
	wire [(N_SOURCE >= 0 ? (N_TARGET * (N_SOURCE + 1)) - 1 : (N_TARGET * (1 - N_SOURCE)) + (N_SOURCE - 1)):(N_SOURCE >= 0 ? 0 : N_SOURCE + 0)] ie_o;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:100:3
	wire [N_TARGET - 1:0] ie_we_o;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:102:3
	plic_regs_E6147 i_plic_regs(
		.prio_i(prio_i),
		.prio_o(prio_o),
		.prio_we_o(prio_we_o),
		.prio_re_o(),
		.ip_i({ip, 1'b0}),
		.ip_re_o(),
		.ie_i(ie_i),
		.ie_o(ie_o),
		.ie_we_o(ie_we_o),
		.ie_re_o(),
		.threshold_i(threshold_q),
		.threshold_o(threshold_o),
		.threshold_we_o(threshold_we_o),
		.threshold_re_o(),
		.cc_i(claim_id),
		.cc_o(complete_id),
		.cc_we_o(complete_we),
		.cc_re_o(claim_re),
		.req_i(req_i),
		.resp_o(resp_o)
	);
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:129:3
	assign prio_i[(N_SOURCE >= 0 ? 0 : N_SOURCE) * PRIOW+:PRIOW] = 1'sb0;
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:131:3
	genvar _gv_i_4;
	generate
		for (_gv_i_4 = 0; _gv_i_4 < N_TARGET; _gv_i_4 = _gv_i_4 + 1) begin : genblk2
			localparam i = _gv_i_4;
			// Trace: corev_apu/rv_plic/rtl/plic_top.sv:132:5
			assign ie_i[(N_SOURCE >= 0 ? 0 : N_SOURCE) + (i * (N_SOURCE >= 0 ? N_SOURCE + 1 : 1 - N_SOURCE))+:(N_SOURCE >= 0 ? N_SOURCE + 1 : 1 - N_SOURCE)] = {ie_q[(i * N_SOURCE) + (N_SOURCE - 1)-:N_SOURCE], 1'b0};
		end
	endgenerate
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:135:3
	genvar _gv_i_5;
	generate
		for (_gv_i_5 = 1; _gv_i_5 < (N_SOURCE + 1); _gv_i_5 = _gv_i_5 + 1) begin : genblk3
			localparam i = _gv_i_5;
			// Trace: corev_apu/rv_plic/rtl/plic_top.sv:136:5
			assign prio_i[(N_SOURCE >= 0 ? i : N_SOURCE - i) * PRIOW+:PRIOW] = prio_q[(i - 1) * PRIOW+:PRIOW];
		end
	endgenerate
	// Trace: corev_apu/rv_plic/rtl/plic_top.sv:140:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: corev_apu/rv_plic/rtl/plic_top.sv:141:5
		if (~rst_ni) begin
			// Trace: corev_apu/rv_plic/rtl/plic_top.sv:142:7
			prio_q <= 1'sb0;
			// Trace: corev_apu/rv_plic/rtl/plic_top.sv:143:7
			ie_q <= 1'sb0;
			// Trace: corev_apu/rv_plic/rtl/plic_top.sv:144:7
			threshold_q <= 1'sb0;
		end
		else begin
			// Trace: corev_apu/rv_plic/rtl/plic_top.sv:147:7
			begin : sv2v_autoblock_2
				// Trace: corev_apu/rv_plic/rtl/plic_top.sv:147:12
				reg signed [31:0] i;
				// Trace: corev_apu/rv_plic/rtl/plic_top.sv:147:12
				for (i = 0; i < N_SOURCE; i = i + 1)
					begin
						// Trace: corev_apu/rv_plic/rtl/plic_top.sv:148:9
						prio_q[i * PRIOW+:PRIOW] <= (prio_we_o[i + 1] ? prio_o[(N_SOURCE >= 0 ? i + 1 : N_SOURCE - (i + 1)) * PRIOW+:PRIOW] : prio_q[i * PRIOW+:PRIOW]);
					end
			end
			begin : sv2v_autoblock_3
				// Trace: corev_apu/rv_plic/rtl/plic_top.sv:150:12
				reg signed [31:0] i;
				// Trace: corev_apu/rv_plic/rtl/plic_top.sv:150:12
				for (i = 0; i < N_TARGET; i = i + 1)
					begin
						// Trace: corev_apu/rv_plic/rtl/plic_top.sv:151:9
						threshold_q[i * PRIOW+:PRIOW] <= (threshold_we_o[i] ? threshold_o[i * PRIOW+:PRIOW] : threshold_q[i * PRIOW+:PRIOW]);
						// Trace: corev_apu/rv_plic/rtl/plic_top.sv:152:9
						ie_q[i * N_SOURCE+:N_SOURCE] <= (ie_we_o[i] ? ie_o[(N_SOURCE >= 0 ? (i * (N_SOURCE >= 0 ? N_SOURCE + 1 : 1 - N_SOURCE)) + (N_SOURCE >= 0 ? (N_SOURCE >= 1 ? N_SOURCE : (N_SOURCE + (N_SOURCE >= 1 ? N_SOURCE : 2 - N_SOURCE)) - 1) : N_SOURCE - (N_SOURCE >= 1 ? N_SOURCE : (N_SOURCE + (N_SOURCE >= 1 ? N_SOURCE : 2 - N_SOURCE)) - 1)) : (((i * (N_SOURCE >= 0 ? N_SOURCE + 1 : 1 - N_SOURCE)) + (N_SOURCE >= 0 ? (N_SOURCE >= 1 ? N_SOURCE : (N_SOURCE + (N_SOURCE >= 1 ? N_SOURCE : 2 - N_SOURCE)) - 1) : N_SOURCE - (N_SOURCE >= 1 ? N_SOURCE : (N_SOURCE + (N_SOURCE >= 1 ? N_SOURCE : 2 - N_SOURCE)) - 1))) + (N_SOURCE >= 1 ? N_SOURCE : 2 - N_SOURCE)) - 1)-:(N_SOURCE >= 1 ? N_SOURCE : 2 - N_SOURCE)] : ie_q[i * N_SOURCE+:N_SOURCE]);
					end
			end
		end
	initial _sv2v_0 = 0;
endmodule
