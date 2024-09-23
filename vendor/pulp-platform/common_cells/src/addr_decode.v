module addr_decode (
	addr_i,
	addr_map_i,
	idx_o,
	dec_valid_o,
	dec_error_o,
	en_default_idx_i,
	default_idx_i
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:32:13
	parameter [31:0] NoIndices = 32'd0;
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:34:13
	parameter [31:0] NoRules = 32'd0;
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:36:26
	// removed localparam type addr_t
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:49:26
	// removed localparam type rule_t
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:53:13
	function automatic [31:0] cf_math_pkg_idx_width;
		// Trace: vendor/pulp-platform/common_cells/src/cf_math_pkg.sv:57:52
		input reg [31:0] num_idx;
		// Trace: vendor/pulp-platform/common_cells/src/cf_math_pkg.sv:58:9
		cf_math_pkg_idx_width = (num_idx > 32'd1 ? $unsigned($clog2(num_idx)) : 32'd1);
	endfunction
	parameter [31:0] IdxWidth = cf_math_pkg_idx_width(NoIndices);
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:57:26
	// removed localparam type idx_t
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:60:3
	input wire addr_i;
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:62:3
	input wire [NoRules - 1:0] addr_map_i;
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:64:3
	output reg [IdxWidth - 1:0] idx_o;
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:66:3
	output reg dec_valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:68:3
	output reg dec_error_o;
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:72:3
	input wire en_default_idx_i;
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:78:3
	input wire [IdxWidth - 1:0] default_idx_i;
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:81:3
	reg [NoRules - 1:0] matched_rules;
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:83:3
	function automatic [IdxWidth - 1:0] sv2v_cast_5FDFE;
		input reg [IdxWidth - 1:0] inp;
		sv2v_cast_5FDFE = inp;
	endfunction
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:85:5
		matched_rules = 1'sb0;
		// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:86:5
		dec_valid_o = 1'b0;
		// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:87:5
		dec_error_o = (en_default_idx_i ? 1'b0 : 1'b1);
		// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:88:5
		idx_o = (en_default_idx_i ? default_idx_i : {IdxWidth {1'sb0}});
		// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:91:5
		begin : sv2v_autoblock_1
			// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:91:10
			reg [31:0] i;
			// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:91:10
			for (i = 0; i < NoRules; i = i + 1)
				begin
					// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:92:7
					if ((addr_i >= addr_map_i[i].start_addr) && (addr_i < addr_map_i[i].end_addr)) begin
						// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:93:9
						matched_rules[i] = 1'b1;
						// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:94:9
						dec_valid_o = 1'b1;
						// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:95:9
						dec_error_o = 1'b0;
						// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:96:9
						idx_o = sv2v_cast_5FDFE(addr_map_i[i].idx);
					end
				end
		end
	end
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:105:3
	initial begin : proc_check_parameters
		// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:106:5
	end
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:115:3
	// removed an assertion item
	// assert final ($onehot0(matched_rules)) else begin
	// 	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:116:5
	// 	$warning("More than one bit set in the one-hot signal, matched_rules");
	// end
	// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:126:3
	always @(addr_map_i)
		#(0) begin : proc_check_addr_map
			// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:127:5
			if (!$isunknown(addr_map_i))
				// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:128:7
				begin : sv2v_autoblock_2
					// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:128:12
					reg [31:0] i;
					// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:128:12
					for (i = 0; i < NoRules; i = i + 1)
						begin
							// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:129:9
							begin : check_start
								
							end
							begin : check_idx
								
							end
							begin : sv2v_autoblock_3
								// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:144:14
								reg [31:0] j;
								// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:144:14
								for (j = i + 1; j < NoRules; j = j + 1)
									begin
										// Trace: vendor/pulp-platform/common_cells/src/addr_decode.sv:146:11
										begin : check_overlap
											
										end
									end
							end
						end
				end
		end
	initial _sv2v_0 = 0;
endmodule
