module ariane_regfile (
	clk_i,
	rst_ni,
	test_en_i,
	raddr_i,
	rdata_o,
	waddr_i,
	wdata_i,
	we_i
);
	reg _sv2v_0;
	// Trace: core/ariane_regfile_ff.sv:26:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/ariane_regfile_ff.sv:27:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: core/ariane_regfile_ff.sv:28:15
	parameter [31:0] NR_READ_PORTS = 2;
	// Trace: core/ariane_regfile_ff.sv:29:15
	parameter [0:0] ZERO_REG_ZERO = 0;
	// Trace: core/ariane_regfile_ff.sv:32:5
	input wire clk_i;
	// Trace: core/ariane_regfile_ff.sv:33:5
	input wire rst_ni;
	// Trace: core/ariane_regfile_ff.sv:35:5
	input wire test_en_i;
	// Trace: core/ariane_regfile_ff.sv:37:5
	input wire [(NR_READ_PORTS * 5) - 1:0] raddr_i;
	// Trace: core/ariane_regfile_ff.sv:38:5
	output wire [(NR_READ_PORTS * DATA_WIDTH) - 1:0] rdata_o;
	// Trace: core/ariane_regfile_ff.sv:40:5
	input wire [(CVA6Cfg[16873-:32] * 5) - 1:0] waddr_i;
	// Trace: core/ariane_regfile_ff.sv:41:5
	input wire [(CVA6Cfg[16873-:32] * DATA_WIDTH) - 1:0] wdata_i;
	// Trace: core/ariane_regfile_ff.sv:42:5
	input wire [CVA6Cfg[16873-:32] - 1:0] we_i;
	// Trace: core/ariane_regfile_ff.sv:45:3
	localparam ADDR_WIDTH = 5;
	// Trace: core/ariane_regfile_ff.sv:46:3
	localparam NUM_WORDS = 32;
	// Trace: core/ariane_regfile_ff.sv:48:3
	reg [(32 * DATA_WIDTH) - 1:0] mem;
	// Trace: core/ariane_regfile_ff.sv:49:3
	reg [(CVA6Cfg[16873-:32] * 32) - 1:0] we_dec;
	// Trace: core/ariane_regfile_ff.sv:52:3
	always @(*) begin : we_decoder
		if (_sv2v_0)
			;
		// Trace: core/ariane_regfile_ff.sv:53:5
		begin : sv2v_autoblock_1
			// Trace: core/ariane_regfile_ff.sv:53:10
			reg [31:0] j;
			// Trace: core/ariane_regfile_ff.sv:53:10
			for (j = 0; j < CVA6Cfg[16873-:32]; j = j + 1)
				begin
					// Trace: core/ariane_regfile_ff.sv:54:7
					begin : sv2v_autoblock_2
						// Trace: core/ariane_regfile_ff.sv:54:12
						reg [31:0] i;
						// Trace: core/ariane_regfile_ff.sv:54:12
						for (i = 0; i < NUM_WORDS; i = i + 1)
							begin
								// Trace: core/ariane_regfile_ff.sv:55:9
								if (waddr_i[j * 5+:5] == i)
									// Trace: core/ariane_regfile_ff.sv:55:30
									we_dec[(j * 32) + i] = we_i[j];
								else
									// Trace: core/ariane_regfile_ff.sv:56:14
									we_dec[(j * 32) + i] = 1'b0;
							end
					end
				end
		end
	end
	// Trace: core/ariane_regfile_ff.sv:62:3
	function automatic [DATA_WIDTH - 1:0] sv2v_cast_55832;
		input reg [DATA_WIDTH - 1:0] inp;
		sv2v_cast_55832 = inp;
	endfunction
	always @(posedge clk_i or negedge rst_ni) begin : register_write_behavioral
		// Trace: core/ariane_regfile_ff.sv:63:5
		if (~rst_ni)
			// Trace: core/ariane_regfile_ff.sv:64:7
			mem <= {NUM_WORDS {sv2v_cast_55832(1'sb0)}};
		else
			// Trace: core/ariane_regfile_ff.sv:66:7
			begin : sv2v_autoblock_3
				// Trace: core/ariane_regfile_ff.sv:66:12
				reg [31:0] j;
				// Trace: core/ariane_regfile_ff.sv:66:12
				for (j = 0; j < CVA6Cfg[16873-:32]; j = j + 1)
					begin
						// Trace: core/ariane_regfile_ff.sv:67:9
						begin : sv2v_autoblock_4
							// Trace: core/ariane_regfile_ff.sv:67:14
							reg [31:0] i;
							// Trace: core/ariane_regfile_ff.sv:67:14
							for (i = 0; i < NUM_WORDS; i = i + 1)
								begin
									// Trace: core/ariane_regfile_ff.sv:68:11
									if (we_dec[(j * 32) + i])
										// Trace: core/ariane_regfile_ff.sv:69:13
										mem[i * DATA_WIDTH+:DATA_WIDTH] <= wdata_i[j * DATA_WIDTH+:DATA_WIDTH];
								end
						end
						if (ZERO_REG_ZERO)
							// Trace: core/ariane_regfile_ff.sv:73:11
							mem[0+:DATA_WIDTH] <= 1'sb0;
					end
			end
	end
	// Trace: core/ariane_regfile_ff.sv:79:3
	genvar _gv_i_46;
	generate
		for (_gv_i_46 = 0; _gv_i_46 < NR_READ_PORTS; _gv_i_46 = _gv_i_46 + 1) begin : genblk1
			localparam i = _gv_i_46;
			// Trace: core/ariane_regfile_ff.sv:80:5
			assign rdata_o[i * DATA_WIDTH+:DATA_WIDTH] = mem[raddr_i[i * 5+:5] * DATA_WIDTH+:DATA_WIDTH];
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
