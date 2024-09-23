module spill_register_flushable_D072E (
	clk_i,
	rst_ni,
	valid_i,
	flush_i,
	ready_o,
	data_i,
	valid_o,
	ready_i,
	data_o
);
	// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:18:18
	// removed localparam type T
	// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:19:13
	parameter [0:0] Bypass = 1'b0;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:21:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:22:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:23:3
	input wire valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:24:3
	input wire flush_i;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:25:3
	output wire ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:26:3
	input wire data_i;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:27:3
	output wire valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:28:3
	input wire ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:29:3
	output wire data_o;
	// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:32:3
	generate
		if (Bypass) begin : gen_bypass
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:33:5
			assign valid_o = valid_i;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:34:5
			assign ready_o = ready_i;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:35:5
			assign data_o = data_i;
		end
		else begin : gen_spill_reg
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:38:5
			reg a_data_q;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:39:5
			reg a_full_q;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:40:5
			wire a_fill;
			wire a_drain;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:42:5
			always @(posedge clk_i or negedge rst_ni) begin : ps_a_data
				// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:43:7
				if (!rst_ni)
					// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:44:9
					a_data_q <= 1'sb0;
				else if (a_fill)
					// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:46:9
					a_data_q <= data_i;
			end
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:49:5
			always @(posedge clk_i or negedge rst_ni) begin : ps_a_full
				// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:50:7
				if (!rst_ni)
					// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:51:9
					a_full_q <= 0;
				else if (a_fill || a_drain)
					// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:53:9
					a_full_q <= a_fill;
			end
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:57:5
			reg b_data_q;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:58:5
			reg b_full_q;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:59:5
			wire b_fill;
			wire b_drain;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:61:5
			always @(posedge clk_i or negedge rst_ni) begin : ps_b_data
				// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:62:7
				if (!rst_ni)
					// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:63:9
					b_data_q <= 1'sb0;
				else if (b_fill)
					// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:65:9
					b_data_q <= a_data_q;
			end
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:68:5
			always @(posedge clk_i or negedge rst_ni) begin : ps_b_full
				// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:69:7
				if (!rst_ni)
					// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:70:9
					b_full_q <= 0;
				else if (b_fill || b_drain)
					// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:72:9
					b_full_q <= b_fill;
			end
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:77:5
			assign a_fill = (valid_i && ready_o) && !flush_i;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:78:5
			assign a_drain = (a_full_q && !b_full_q) || flush_i;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:83:5
			assign b_fill = (a_drain && !ready_i) && !flush_i;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:84:5
			assign b_drain = (b_full_q && ready_i) || flush_i;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:89:5
			assign ready_o = !a_full_q || !b_full_q;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:92:5
			assign valid_o = a_full_q | b_full_q;
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:95:5
			assign data_o = (b_full_q ? b_data_q : a_data_q);
			// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:99:5
			// removed an assertion item
			// flush_valid : assert property (@(posedge clk_i) disable iff (~rst_ni)
			// 	(flush_i |-> ~valid_i)
			// ) else begin
			// 	// Trace: vendor/pulp-platform/common_cells/src/spill_register_flushable.sv:101:7
			// 	$warning("Trying to flush and feed the spill register simultaneously. You will lose data!");
			// end
		end
	endgenerate
endmodule
