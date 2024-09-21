module pmp_entry (
	addr_i,
	conf_addr_i,
	conf_addr_prev_i,
	conf_addr_mode_i,
	match_o
);
	reg _sv2v_0;
	// Trace: core/pmp/src/pmp_entry.sv:16:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/pmp/src/pmp_entry.sv:17:15
	parameter [31:0] PLEN = 56;
	// Trace: core/pmp/src/pmp_entry.sv:18:15
	parameter [31:0] PMP_LEN = 54;
	// Trace: core/pmp/src/pmp_entry.sv:21:5
	input wire [PLEN - 1:0] addr_i;
	// Trace: core/pmp/src/pmp_entry.sv:24:5
	input wire [PMP_LEN - 1:0] conf_addr_i;
	// Trace: core/pmp/src/pmp_entry.sv:25:5
	input wire [PMP_LEN - 1:0] conf_addr_prev_i;
	// Trace: core/pmp/src/pmp_entry.sv:26:5
	// removed localparam type riscv_pmp_addr_mode_t
	input wire [1:0] conf_addr_mode_i;
	// Trace: core/pmp/src/pmp_entry.sv:29:5
	output reg match_o;
	// Trace: core/pmp/src/pmp_entry.sv:31:3
	wire [PLEN - 1:0] conf_addr_n;
	// Trace: core/pmp/src/pmp_entry.sv:32:3
	wire [$clog2(PLEN) - 1:0] trail_ones;
	// Trace: core/pmp/src/pmp_entry.sv:33:3
	reg [PLEN - 1:0] base;
	// Trace: core/pmp/src/pmp_entry.sv:34:3
	reg [PLEN - 1:0] mask;
	// Trace: core/pmp/src/pmp_entry.sv:35:3
	reg [31:0] size;
	// Trace: core/pmp/src/pmp_entry.sv:36:3
	assign conf_addr_n = {2'b11, ~conf_addr_i};
	// Trace: core/pmp/src/pmp_entry.sv:37:3
	lzc #(
		.WIDTH(PLEN),
		.MODE(1'b0)
	) i_lzc(
		.in_i(conf_addr_n),
		.cnt_o(trail_ones),
		.empty_o()
	);
	// Trace: core/pmp/src/pmp_entry.sv:46:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/pmp/src/pmp_entry.sv:47:5
		case (conf_addr_mode_i)
			2'b01: begin
				// Trace: core/pmp/src/pmp_entry.sv:49:9
				base = 1'sb0;
				// Trace: core/pmp/src/pmp_entry.sv:50:9
				mask = 1'sb0;
				// Trace: core/pmp/src/pmp_entry.sv:51:9
				size = 1'sb0;
				// Trace: core/pmp/src/pmp_entry.sv:54:9
				if ((addr_i >= ({2'b00, conf_addr_prev_i} << 2)) && (addr_i < ({2'b00, conf_addr_i} << 2)))
					// Trace: core/pmp/src/pmp_entry.sv:55:11
					match_o = 1'b1;
				else
					// Trace: core/pmp/src/pmp_entry.sv:56:18
					match_o = 1'b0;
				if (match_o == 0)
					;
			end
			2'b10, 2'b11: begin
				// Trace: core/pmp/src/pmp_entry.sv:69:9
				if (conf_addr_mode_i == 2'b10)
					// Trace: core/pmp/src/pmp_entry.sv:69:45
					size = 2;
				else
					// Trace: core/pmp/src/pmp_entry.sv:72:11
					size = {{32 - $clog2(PLEN) {1'b0}}, trail_ones} + 3;
				// Trace: core/pmp/src/pmp_entry.sv:75:9
				mask = 1'sb1 << size;
				// Trace: core/pmp/src/pmp_entry.sv:76:9
				base = ({2'b00, conf_addr_i} << 2) & mask;
				// Trace: core/pmp/src/pmp_entry.sv:77:9
				match_o = ((addr_i & mask) == base ? 1'b1 : 1'b0);
				if (conf_addr_mode_i == 2'b11) begin
					// Trace: core/pmp/src/pmp_entry.sv:83:11
					if (size < PMP_LEN)
						;
					begin : sv2v_autoblock_1
						// Trace: core/pmp/src/pmp_entry.sv:85:16
						reg signed [31:0] i;
						// Trace: core/pmp/src/pmp_entry.sv:85:16
						for (i = 0; i < PMP_LEN; i = i + 1)
							begin
								// Trace: core/pmp/src/pmp_entry.sv:86:13
								if ((size > 3) && (i <= (size - 4)))
									;
							end
					end
				end
				if (size < (PLEN - 1)) begin
					begin
						// Trace: core/pmp/src/pmp_entry.sv:93:11
						if ((base + (2 ** size)) > base) begin
							begin
								// Trace: core/pmp/src/pmp_entry.sv:94:13
								if (match_o == 0)
									;
							end
						end
						else
							// Trace: core/pmp/src/pmp_entry.sv:100:13
							if (match_o == 0)
								;
					end
				end
			end
			2'b00: begin
				// Trace: core/pmp/src/pmp_entry.sv:111:9
				match_o = 1'b0;
				// Trace: core/pmp/src/pmp_entry.sv:112:9
				base = 1'sb0;
				// Trace: core/pmp/src/pmp_entry.sv:113:9
				mask = 1'sb0;
				// Trace: core/pmp/src/pmp_entry.sv:114:9
				size = 1'sb0;
			end
			default: begin
				// Trace: core/pmp/src/pmp_entry.sv:117:9
				match_o = 0;
				// Trace: core/pmp/src/pmp_entry.sv:118:9
				base = 1'sb0;
				// Trace: core/pmp/src/pmp_entry.sv:119:9
				mask = 1'sb0;
				// Trace: core/pmp/src/pmp_entry.sv:120:9
				size = 1'sb0;
			end
		endcase
	end
	initial _sv2v_0 = 0;
endmodule
