module rv_plic_target (
	clk_i,
	rst_ni,
	ip,
	ie,
	prio,
	threshold,
	irq,
	irq_id
);
	reg _sv2v_0;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:11:13
	parameter signed [31:0] N_SOURCE = 32;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:12:13
	parameter signed [31:0] MAX_PRIO = 7;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:13:17
	parameter ALGORITHM = "SEQUENTIAL";
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:16:13
	parameter [31:0] SRCW = $clog2(N_SOURCE + 1);
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:17:13
	parameter [31:0] PRIOW = $clog2(MAX_PRIO + 1);
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:19:3
	input clk_i;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:20:3
	input rst_ni;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:22:3
	input [N_SOURCE - 1:0] ip;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:23:3
	input [N_SOURCE - 1:0] ie;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:25:3
	input [(N_SOURCE * PRIOW) - 1:0] prio;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:26:3
	input [PRIOW - 1:0] threshold;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:28:3
	output reg irq;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:29:3
	output reg [SRCW - 1:0] irq_id;
	// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:44:1
	function automatic signed [SRCW - 1:0] sv2v_cast_2B694_signed;
		input reg signed [SRCW - 1:0] inp;
		sv2v_cast_2B694_signed = inp;
	endfunction
	generate
		if (ALGORITHM == "SEQUENTIAL") begin : gen_sequential
			// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:48:3
			reg [PRIOW - 1:0] max_prio;
			// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:49:3
			reg irq_next;
			// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:50:3
			reg [SRCW - 1:0] irq_id_next;
			// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:51:3
			always @(*) begin
				if (_sv2v_0)
					;
				// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:52:5
				max_prio = threshold + 1'b1;
				// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:53:5
				irq_id_next = 1'sb0;
				// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:54:5
				irq_next = 1'b0;
				// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:55:5
				begin : sv2v_autoblock_1
					// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:55:10
					reg signed [31:0] i;
					// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:55:10
					for (i = N_SOURCE - 1; i >= 0; i = i - 1)
						begin
							// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:56:7
							if (((ip[i] & ie[i]) == 1'b1) && (prio[i * PRIOW+:PRIOW] >= max_prio)) begin
								// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:57:9
								max_prio = prio[i * PRIOW+:PRIOW];
								// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:58:9
								irq_id_next = sv2v_cast_2B694_signed(i + 1);
								// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:59:9
								irq_next = 1'b1;
							end
						end
				end
			end
			// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:64:3
			always @(posedge clk_i or negedge rst_ni)
				// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:65:5
				if (!rst_ni) begin
					// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:66:7
					irq <= 1'b0;
					// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:67:7
					irq_id <= 1'sb0;
				end
				else begin
					// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:69:7
					irq <= irq_next;
					// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:70:7
					irq_id <= irq_id_next;
				end
		end
		else if (ALGORITHM == "MATRIX") begin : gen_mat
			// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:81:3
			wire [N_SOURCE - 1:0] is;
			// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:83:3
			reg [(N_SOURCE * N_SOURCE) - 1:0] mat;
			// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:84:3
			reg [N_SOURCE - 1:0] merged_row;
			// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:86:3
			assign is = ip & ie;
			// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:87:3
			always @(*) begin
				if (_sv2v_0)
					;
				// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:88:5
				merged_row[N_SOURCE - 1] = is[N_SOURCE - 1] & (prio[(N_SOURCE - 1) * PRIOW+:PRIOW] > threshold);
				// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:89:5
				begin : sv2v_autoblock_2
					// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:89:10
					reg signed [31:0] i;
					// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:89:10
					for (i = 0; i < (N_SOURCE - 1); i = i + 1)
						begin
							// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:90:7
							merged_row[i] = 1'b1;
							// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:91:7
							begin : sv2v_autoblock_3
								// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:91:12
								reg signed [31:0] j;
								// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:91:12
								for (j = i + 1; j < N_SOURCE; j = j + 1)
									begin
										// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:92:9
										mat[(i * N_SOURCE) + j] = (prio[i * PRIOW+:PRIOW] <= threshold ? 1'b0 : (is[i] & is[j] ? prio[i * PRIOW+:PRIOW] >= prio[j * PRIOW+:PRIOW] : (is[i] ? 1'b1 : 1'b0)));
										// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:95:9
										merged_row[i] = merged_row[i] & mat[(i * N_SOURCE) + j];
									end
							end
						end
				end
			end
			// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:101:3
			wire [N_SOURCE - 1:0] lod;
			// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:102:3
			assign lod = merged_row & (~merged_row + 1'b1);
			// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:103:3
			always @(posedge clk_i or negedge rst_ni)
				// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:104:5
				if (!rst_ni) begin
					// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:105:7
					irq <= 1'b0;
					// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:106:7
					irq_id <= 1'sb0;
				end
				else if (|lod)
					// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:110:7
					begin : sv2v_autoblock_4
						// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:110:12
						reg signed [31:0] i;
						// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:110:12
						for (i = N_SOURCE - 1; i >= 0; i = i - 1)
							begin
								// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:111:9
								if (lod[i] == 1'b1) begin
									// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:112:11
									irq <= 1'b1;
									// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:113:11
									irq_id <= sv2v_cast_2B694_signed(i + 1);
								end
							end
					end
				else begin
					// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:118:7
					irq <= 1'b0;
					// Trace: corev_apu/rv_plic/rtl/rv_plic_target.sv:119:7
					irq_id <= 1'sb0;
				end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
