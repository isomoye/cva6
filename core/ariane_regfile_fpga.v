module ariane_regfile_fpga (
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
	// Trace: core/ariane_regfile_fpga.sv:29:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/ariane_regfile_fpga.sv:30:15
	parameter [31:0] DATA_WIDTH = 32;
	// Trace: core/ariane_regfile_fpga.sv:31:15
	parameter [31:0] NR_READ_PORTS = 2;
	// Trace: core/ariane_regfile_fpga.sv:32:15
	parameter [0:0] ZERO_REG_ZERO = 0;
	// Trace: core/ariane_regfile_fpga.sv:35:5
	input wire clk_i;
	// Trace: core/ariane_regfile_fpga.sv:36:5
	input wire rst_ni;
	// Trace: core/ariane_regfile_fpga.sv:38:5
	input wire test_en_i;
	// Trace: core/ariane_regfile_fpga.sv:40:5
	input wire [(NR_READ_PORTS * 5) - 1:0] raddr_i;
	// Trace: core/ariane_regfile_fpga.sv:41:5
	output wire [(NR_READ_PORTS * DATA_WIDTH) - 1:0] rdata_o;
	// Trace: core/ariane_regfile_fpga.sv:43:5
	input wire [(CVA6Cfg[16873-:32] * 5) - 1:0] waddr_i;
	// Trace: core/ariane_regfile_fpga.sv:44:5
	input wire [(CVA6Cfg[16873-:32] * DATA_WIDTH) - 1:0] wdata_i;
	// Trace: core/ariane_regfile_fpga.sv:45:5
	input wire [CVA6Cfg[16873-:32] - 1:0] we_i;
	// Trace: core/ariane_regfile_fpga.sv:48:3
	localparam ADDR_WIDTH = 5;
	// Trace: core/ariane_regfile_fpga.sv:49:3
	localparam NUM_WORDS = 32;
	// Trace: core/ariane_regfile_fpga.sv:50:3
	localparam LOG_NR_WRITE_PORTS = (CVA6Cfg[16873-:32] == 1 ? 1 : $clog2(CVA6Cfg[16873-:32]));
	// Trace: core/ariane_regfile_fpga.sv:53:3
	reg [(32 * DATA_WIDTH) - 1:0] mem [0:CVA6Cfg[16873-:32] - 1];
	// Trace: core/ariane_regfile_fpga.sv:55:3
	reg [(CVA6Cfg[16873-:32] * 32) - 1:0] we_dec;
	// Trace: core/ariane_regfile_fpga.sv:56:3
	reg [(32 * LOG_NR_WRITE_PORTS) - 1:0] mem_block_sel;
	// Trace: core/ariane_regfile_fpga.sv:57:3
	reg [(32 * LOG_NR_WRITE_PORTS) - 1:0] mem_block_sel_q;
	// Trace: core/ariane_regfile_fpga.sv:60:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/ariane_regfile_fpga.sv:61:5
		begin : sv2v_autoblock_1
			// Trace: core/ariane_regfile_fpga.sv:61:10
			reg [31:0] j;
			// Trace: core/ariane_regfile_fpga.sv:61:10
			for (j = 0; j < CVA6Cfg[16873-:32]; j = j + 1)
				begin
					// Trace: core/ariane_regfile_fpga.sv:62:7
					begin : sv2v_autoblock_2
						// Trace: core/ariane_regfile_fpga.sv:62:12
						reg [31:0] i;
						// Trace: core/ariane_regfile_fpga.sv:62:12
						for (i = 0; i < NUM_WORDS; i = i + 1)
							begin
								// Trace: core/ariane_regfile_fpga.sv:63:9
								if (waddr_i[j * 5+:5] == i)
									// Trace: core/ariane_regfile_fpga.sv:64:11
									we_dec[(j * 32) + i] = we_i[j];
								else
									// Trace: core/ariane_regfile_fpga.sv:66:11
									we_dec[(j * 32) + i] = 1'b0;
							end
					end
				end
		end
	end
	// Trace: core/ariane_regfile_fpga.sv:76:3
	function automatic signed [LOG_NR_WRITE_PORTS - 1:0] sv2v_cast_BAD37_signed;
		input reg signed [LOG_NR_WRITE_PORTS - 1:0] inp;
		sv2v_cast_BAD37_signed = inp;
	endfunction
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/ariane_regfile_fpga.sv:77:5
		mem_block_sel = mem_block_sel_q;
		// Trace: core/ariane_regfile_fpga.sv:78:5
		begin : sv2v_autoblock_3
			// Trace: core/ariane_regfile_fpga.sv:78:10
			reg signed [31:0] i;
			// Trace: core/ariane_regfile_fpga.sv:78:10
			for (i = 0; i < NUM_WORDS; i = i + 1)
				begin
					// Trace: core/ariane_regfile_fpga.sv:79:7
					begin : sv2v_autoblock_4
						// Trace: core/ariane_regfile_fpga.sv:79:12
						reg signed [31:0] j;
						// Trace: core/ariane_regfile_fpga.sv:79:12
						for (j = 0; j < CVA6Cfg[16873-:32]; j = j + 1)
							begin
								// Trace: core/ariane_regfile_fpga.sv:80:9
								if (we_dec[(j * 32) + i] == 1'b1)
									// Trace: core/ariane_regfile_fpga.sv:81:11
									mem_block_sel[i * LOG_NR_WRITE_PORTS+:LOG_NR_WRITE_PORTS] = sv2v_cast_BAD37_signed(j);
							end
					end
				end
		end
	end
	// Trace: core/ariane_regfile_fpga.sv:88:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/ariane_regfile_fpga.sv:89:5
		if (!rst_ni)
			// Trace: core/ariane_regfile_fpga.sv:90:7
			mem_block_sel_q <= 1'sb0;
		else
			// Trace: core/ariane_regfile_fpga.sv:92:7
			mem_block_sel_q <= mem_block_sel;
	// Trace: core/ariane_regfile_fpga.sv:97:3
	wire [(NR_READ_PORTS * DATA_WIDTH) - 1:0] mem_read [0:CVA6Cfg[16873-:32] - 1];
	// Trace: core/ariane_regfile_fpga.sv:98:3
	genvar _gv_j_4;
	generate
		for (_gv_j_4 = 0; _gv_j_4 < CVA6Cfg[16873-:32]; _gv_j_4 = _gv_j_4 + 1) begin : regfile_ram_block
			localparam j = _gv_j_4;
			// Trace: core/ariane_regfile_fpga.sv:99:5
			always @(posedge clk_i)
				// Trace: core/ariane_regfile_fpga.sv:100:7
				if (we_i[j] && (~waddr_i[j * 5+:5] != 0))
					// Trace: core/ariane_regfile_fpga.sv:101:9
					mem[j][waddr_i[j * 5+:5] * DATA_WIDTH+:DATA_WIDTH] <= wdata_i[j * DATA_WIDTH+:DATA_WIDTH];
			genvar _gv_k_3;
			for (_gv_k_3 = 0; _gv_k_3 < NR_READ_PORTS; _gv_k_3 = _gv_k_3 + 1) begin : block_read
				localparam k = _gv_k_3;
				// Trace: core/ariane_regfile_fpga.sv:105:7
				assign mem_read[j][k * DATA_WIDTH+:DATA_WIDTH] = mem[j][raddr_i[k * 5+:5] * DATA_WIDTH+:DATA_WIDTH];
			end
		end
	endgenerate
	// Trace: core/ariane_regfile_fpga.sv:110:3
	wire [(NR_READ_PORTS * LOG_NR_WRITE_PORTS) - 1:0] block_addr;
	// Trace: core/ariane_regfile_fpga.sv:111:3
	genvar _gv_k_4;
	generate
		for (_gv_k_4 = 0; _gv_k_4 < NR_READ_PORTS; _gv_k_4 = _gv_k_4 + 1) begin : regfile_read_port
			localparam k = _gv_k_4;
			// Trace: core/ariane_regfile_fpga.sv:112:5
			assign block_addr[k * LOG_NR_WRITE_PORTS+:LOG_NR_WRITE_PORTS] = mem_block_sel_q[raddr_i[k * 5+:5] * LOG_NR_WRITE_PORTS+:LOG_NR_WRITE_PORTS];
			// Trace: core/ariane_regfile_fpga.sv:113:5
			assign rdata_o[k * DATA_WIDTH+:DATA_WIDTH] = (ZERO_REG_ZERO && (raddr_i[k * 5+:5] == {5 {1'sb0}}) ? {DATA_WIDTH * 1 {1'sb0}} : mem_read[block_addr[k * LOG_NR_WRITE_PORTS+:LOG_NR_WRITE_PORTS]][k * DATA_WIDTH+:DATA_WIDTH]);
		end
	endgenerate
	// Trace: core/ariane_regfile_fpga.sv:117:3
	initial begin
		// Trace: core/ariane_regfile_fpga.sv:118:5
		begin : sv2v_autoblock_5
			// Trace: core/ariane_regfile_fpga.sv:118:10
			reg signed [31:0] i;
			// Trace: core/ariane_regfile_fpga.sv:118:10
			for (i = 0; i < CVA6Cfg[16873-:32]; i = i + 1)
				begin
					// Trace: core/ariane_regfile_fpga.sv:119:7
					begin : sv2v_autoblock_6
						// Trace: core/ariane_regfile_fpga.sv:119:12
						reg signed [31:0] j;
						// Trace: core/ariane_regfile_fpga.sv:119:12
						for (j = 0; j < NUM_WORDS; j = j + 1)
							begin
								// Trace: core/ariane_regfile_fpga.sv:120:9
								mem[i][j * DATA_WIDTH+:DATA_WIDTH] = $random();
							end
					end
				end
		end
	end
	initial _sv2v_0 = 0;
endmodule
