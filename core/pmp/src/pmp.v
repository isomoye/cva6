module pmp (
	addr_i,
	access_type_i,
	priv_lvl_i,
	conf_addr_i,
	conf_i,
	allow_o
);
	reg _sv2v_0;
	// Trace: core/pmp/src/pmp.sv:16:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/pmp/src/pmp.sv:17:15
	parameter [31:0] PLEN = 34;
	// Trace: core/pmp/src/pmp.sv:18:15
	parameter [31:0] PMP_LEN = 32;
	// Trace: core/pmp/src/pmp.sv:19:15
	parameter [31:0] NR_ENTRIES = 4;
	// Trace: core/pmp/src/pmp.sv:22:5
	input wire [PLEN - 1:0] addr_i;
	// Trace: core/pmp/src/pmp.sv:23:5
	// removed localparam type riscv_pmp_access_t
	input wire [2:0] access_type_i;
	// Trace: core/pmp/src/pmp.sv:24:5
	// removed localparam type riscv_priv_lvl_t
	input wire [1:0] priv_lvl_i;
	// Trace: core/pmp/src/pmp.sv:26:5
	input wire [(NR_ENTRIES >= 0 ? ((NR_ENTRIES + 1) * PMP_LEN) - 1 : ((1 - NR_ENTRIES) * PMP_LEN) + ((NR_ENTRIES * PMP_LEN) - 1)):(NR_ENTRIES >= 0 ? 0 : NR_ENTRIES * PMP_LEN)] conf_addr_i;
	// Trace: core/pmp/src/pmp.sv:27:5
	// removed localparam type riscv_pmp_addr_mode_t
	// removed localparam type riscv_pmpcfg_access_t
	// removed localparam type riscv_pmpcfg_t
	input wire [(NR_ENTRIES >= 0 ? ((NR_ENTRIES + 1) * 8) - 1 : ((1 - NR_ENTRIES) * 8) + ((NR_ENTRIES * 8) - 1)):(NR_ENTRIES >= 0 ? 0 : NR_ENTRIES * 8)] conf_i;
	// Trace: core/pmp/src/pmp.sv:29:5
	output reg allow_o;
	// Trace: core/pmp/src/pmp.sv:32:3
	generate
		if (NR_ENTRIES > 0) begin : gen_pmp
			// Trace: core/pmp/src/pmp.sv:33:5
			wire [NR_ENTRIES - 1:0] match;
			genvar _gv_i_72;
			for (_gv_i_72 = 0; _gv_i_72 < NR_ENTRIES; _gv_i_72 = _gv_i_72 + 1) begin : genblk1
				localparam i = _gv_i_72;
				// Trace: core/pmp/src/pmp.sv:36:7
				wire [PMP_LEN - 1:0] conf_addr_prev;
				// Trace: core/pmp/src/pmp.sv:38:7
				assign conf_addr_prev = (i == 0 ? {PMP_LEN {1'sb0}} : conf_addr_i[(NR_ENTRIES >= 0 ? i - 1 : NR_ENTRIES - (i - 1)) * PMP_LEN+:PMP_LEN]);
				// Trace: core/pmp/src/pmp.sv:40:7
				pmp_entry #(
					.CVA6Cfg(CVA6Cfg),
					.PLEN(PLEN),
					.PMP_LEN(PMP_LEN)
				) i_pmp_entry(
					.addr_i(addr_i),
					.conf_addr_i(conf_addr_i[(NR_ENTRIES >= 0 ? i : NR_ENTRIES - i) * PMP_LEN+:PMP_LEN]),
					.conf_addr_prev_i(conf_addr_prev),
					.conf_addr_mode_i(conf_i[((NR_ENTRIES >= 0 ? i : NR_ENTRIES - i) * 8) + 4-:2]),
					.match_o(match[i])
				);
			end
			// Trace: core/pmp/src/pmp.sv:53:5
			always @(*) begin : sv2v_autoblock_1
				reg [0:1] _sv2v_jump;
				_sv2v_jump = 2'b00;
				begin : sv2v_autoblock_2
					// Trace: core/pmp/src/pmp.sv:54:7
					reg signed [31:0] i;
					if (_sv2v_0)
						;
					// Trace: core/pmp/src/pmp.sv:56:7
					allow_o = 1'b0;
					// Trace: core/pmp/src/pmp.sv:57:7
					begin : sv2v_autoblock_3
						reg signed [31:0] _sv2v_value_on_break;
						for (i = 0; i < NR_ENTRIES; i = i + 1)
							if (_sv2v_jump < 2'b10) begin
								_sv2v_jump = 2'b00;
								// Trace: core/pmp/src/pmp.sv:60:9
								if ((priv_lvl_i != 2'b11) || conf_i[((NR_ENTRIES >= 0 ? i : NR_ENTRIES - i) * 8) + 7]) begin
									begin
										// Trace: core/pmp/src/pmp.sv:61:11
										if (match[i]) begin
											// Trace: core/pmp/src/pmp.sv:62:13
											if ((access_type_i & conf_i[((NR_ENTRIES >= 0 ? i : NR_ENTRIES - i) * 8) + 2-:3]) != access_type_i)
												// Trace: core/pmp/src/pmp.sv:62:75
												allow_o = 1'b0;
											else
												// Trace: core/pmp/src/pmp.sv:63:18
												allow_o = 1'b1;
											_sv2v_jump = 2'b10;
										end
									end
								end
								_sv2v_value_on_break = i;
							end
						if (!(_sv2v_jump < 2'b10))
							i = _sv2v_value_on_break;
						if (_sv2v_jump != 2'b11)
							_sv2v_jump = 2'b00;
					end
					if (_sv2v_jump == 2'b00) begin
						if (i == NR_ENTRIES) begin
							begin
								// Trace: core/pmp/src/pmp.sv:70:9
								if (priv_lvl_i == 2'b11)
									// Trace: core/pmp/src/pmp.sv:70:46
									allow_o = 1'b1;
								else
									// Trace: core/pmp/src/pmp.sv:73:11
									allow_o = 1'b0;
							end
						end
					end
				end
			end
		end
		else begin : genblk1
			// Trace: core/pmp/src/pmp.sv:76:12
			wire [1:1] sv2v_tmp_9B86A;
			assign sv2v_tmp_9B86A = 1'b1;
			always @(*) allow_o = sv2v_tmp_9B86A;
		end
	endgenerate
	// Trace: core/pmp/src/pmp.sv:79:3
	always @(*) begin : sv2v_autoblock_4
		// Trace: core/pmp/src/pmp.sv:80:5
		reg no_locked;
		if (_sv2v_0)
			;
		// Trace: core/pmp/src/pmp.sv:81:5
		no_locked = 1'b0;
		// Trace: core/pmp/src/pmp.sv:82:5
		if (priv_lvl_i == 2'b11) begin
			// Trace: core/pmp/src/pmp.sv:83:7
			no_locked = 1'b1;
			// Trace: core/pmp/src/pmp.sv:84:7
			begin : sv2v_autoblock_5
				// Trace: core/pmp/src/pmp.sv:84:12
				reg signed [31:0] i;
				// Trace: core/pmp/src/pmp.sv:84:12
				for (i = 0; i < NR_ENTRIES; i = i + 1)
					begin
						// Trace: core/pmp/src/pmp.sv:85:9
						if (conf_i[((NR_ENTRIES >= 0 ? i : NR_ENTRIES - i) * 8) + 7] && (conf_i[((NR_ENTRIES >= 0 ? i : NR_ENTRIES - i) * 8) + 4-:2] != 2'b00))
							// Trace: core/pmp/src/pmp.sv:86:11
							no_locked = no_locked & 1'b0;
						else
							// Trace: core/pmp/src/pmp.sv:87:18
							no_locked = no_locked & 1'b1;
					end
			end
			if (no_locked == 1'b1)
				;
		end
	end
	initial _sv2v_0 = 0;
endmodule
