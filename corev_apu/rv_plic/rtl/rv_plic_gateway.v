module rv_plic_gateway (
	clk_i,
	rst_ni,
	src,
	le,
	claim,
	complete,
	ip
);
	reg _sv2v_0;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:8:13
	parameter signed [31:0] N_SOURCE = 32;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:10:3
	input clk_i;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:11:3
	input rst_ni;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:13:3
	input [N_SOURCE - 1:0] src;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:14:3
	input [N_SOURCE - 1:0] le;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:16:3
	input [N_SOURCE - 1:0] claim;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:17:3
	input [N_SOURCE - 1:0] complete;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:19:3
	output reg [N_SOURCE - 1:0] ip;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:22:1
	reg [N_SOURCE - 1:0] ia;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:24:1
	reg [N_SOURCE - 1:0] set;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:25:1
	reg [N_SOURCE - 1:0] src_d;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:27:1
	always @(posedge clk_i or negedge rst_ni)
		// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:28:3
		if (!rst_ni)
			// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:28:16
			src_d <= 1'sb0;
		else
			// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:29:16
			src_d <= src;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:32:1
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:33:3
		begin : sv2v_autoblock_1
			// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:33:8
			reg signed [31:0] i;
			// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:33:8
			for (i = 0; i < N_SOURCE; i = i + 1)
				begin
					// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:34:5
					set[i] = (le[i] ? src[i] & ~src_d[i] : src[i]);
				end
		end
	end
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:42:1
	always @(posedge clk_i or negedge rst_ni)
		// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:43:3
		if (!rst_ni)
			// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:44:5
			ip <= 1'sb0;
		else
			// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:46:5
			ip <= (ip | ((set & ~ia) & ~ip)) & ~claim;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:52:1
	always @(posedge clk_i or negedge rst_ni)
		// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:53:3
		if (!rst_ni)
			// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:54:5
			ia <= 1'sb0;
		else
			// Trace: corev_apu/rv_plic/rtl/rv_plic_gateway.sv:56:5
			ia <= (ia | (set & ~ia)) & ~complete;
	initial _sv2v_0 = 0;
endmodule
