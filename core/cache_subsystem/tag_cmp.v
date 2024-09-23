module tag_cmp_3FE31_78C65 (
	clk_i,
	rst_ni,
	req_i,
	gnt_o,
	addr_i,
	wdata_i,
	we_i,
	be_i,
	rdata_o,
	tag_i,
	hit_way_o,
	req_o,
	addr_o,
	wdata_o,
	we_o,
	be_o,
	rdata_i
);
	// removed localparam type l_be_t_CVA6Cfg_type
	parameter [17102:0] l_be_t_CVA6Cfg = 0;
	// removed localparam type l_data_t_CVA6Cfg_type
	parameter [17102:0] l_data_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// Trace: core/cache_subsystem/tag_cmp.sv:19:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/tag_cmp.sv:20:15
	parameter [31:0] NR_PORTS = 3;
	// Trace: core/cache_subsystem/tag_cmp.sv:21:15
	parameter [31:0] ADDR_WIDTH = 64;
	// Trace: core/cache_subsystem/tag_cmp.sv:22:38
	// removed localparam type l_data_t
	// Trace: core/cache_subsystem/tag_cmp.sv:23:38
	// removed localparam type l_be_t
	// Trace: core/cache_subsystem/tag_cmp.sv:25:5
	input wire clk_i;
	// Trace: core/cache_subsystem/tag_cmp.sv:26:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/tag_cmp.sv:28:5
	input wire [(NR_PORTS * CVA6Cfg[1092-:32]) - 1:0] req_i;
	// Trace: core/cache_subsystem/tag_cmp.sv:29:5
	output reg [NR_PORTS - 1:0] gnt_o;
	// Trace: core/cache_subsystem/tag_cmp.sv:30:5
	input wire [(NR_PORTS * ADDR_WIDTH) - 1:0] addr_i;
	// Trace: core/cache_subsystem/tag_cmp.sv:31:5
	input wire [(((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (NR_PORTS * ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 2)) - 1 : (NR_PORTS * (1 - ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1))) + ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 0)):(((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1)] wdata_i;
	// Trace: core/cache_subsystem/tag_cmp.sv:32:5
	input wire [NR_PORTS - 1:0] we_i;
	// Trace: core/cache_subsystem/tag_cmp.sv:33:5
	input wire [(NR_PORTS * ((((l_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((l_be_t_CVA6Cfg[964-:32] + 7) / 8)) + l_be_t_CVA6Cfg[1092-:32])) - 1:0] be_i;
	// Trace: core/cache_subsystem/tag_cmp.sv:34:5
	output wire [(((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[1092-:32] * ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 2)) - 1 : (CVA6Cfg[1092-:32] * (1 - ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1))) + ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 0)):(((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1)] rdata_o;
	// Trace: core/cache_subsystem/tag_cmp.sv:35:5
	input wire [(NR_PORTS * CVA6Cfg[996-:32]) - 1:0] tag_i;
	// Trace: core/cache_subsystem/tag_cmp.sv:36:5
	output wire [CVA6Cfg[1092-:32] - 1:0] hit_way_o;
	// Trace: core/cache_subsystem/tag_cmp.sv:39:5
	output reg [CVA6Cfg[1092-:32] - 1:0] req_o;
	// Trace: core/cache_subsystem/tag_cmp.sv:40:5
	output reg [ADDR_WIDTH - 1:0] addr_o;
	// Trace: core/cache_subsystem/tag_cmp.sv:41:5
	output reg [(l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1:0] wdata_o;
	// Trace: core/cache_subsystem/tag_cmp.sv:42:5
	output reg we_o;
	// Trace: core/cache_subsystem/tag_cmp.sv:43:5
	output reg [((((l_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((l_be_t_CVA6Cfg[964-:32] + 7) / 8)) + l_be_t_CVA6Cfg[1092-:32]) - 1:0] be_o;
	// Trace: core/cache_subsystem/tag_cmp.sv:44:5
	input wire [(((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (CVA6Cfg[1092-:32] * ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 2)) - 1 : (CVA6Cfg[1092-:32] * (1 - ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1))) + ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 0)):(((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1)] rdata_i;
	// Trace: core/cache_subsystem/tag_cmp.sv:47:3
	assign rdata_o = rdata_i;
	// Trace: core/cache_subsystem/tag_cmp.sv:49:3
	reg [NR_PORTS - 1:0] id_d;
	reg [NR_PORTS - 1:0] id_q;
	// Trace: core/cache_subsystem/tag_cmp.sv:50:3
	reg [CVA6Cfg[996-:32] - 1:0] sel_tag;
	// Trace: core/cache_subsystem/tag_cmp.sv:52:3
	always @(*) begin : tag_sel
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/tag_cmp.sv:53:5
		sel_tag = 1'sb0;
		// Trace: core/cache_subsystem/tag_cmp.sv:54:5
		begin : sv2v_autoblock_1
			// Trace: core/cache_subsystem/tag_cmp.sv:54:10
			reg [31:0] i;
			// Trace: core/cache_subsystem/tag_cmp.sv:54:10
			for (i = 0; i < NR_PORTS; i = i + 1)
				if (id_q[i])
					// Trace: core/cache_subsystem/tag_cmp.sv:54:62
					sel_tag = tag_i[i * CVA6Cfg[996-:32]+:CVA6Cfg[996-:32]];
		end
	end
	// Trace: core/cache_subsystem/tag_cmp.sv:57:3
	genvar _gv_j_10;
	generate
		for (_gv_j_10 = 0; _gv_j_10 < CVA6Cfg[1092-:32]; _gv_j_10 = _gv_j_10 + 1) begin : tag_cmp
			localparam j = _gv_j_10;
			// Trace: core/cache_subsystem/tag_cmp.sv:58:5
			assign hit_way_o[j] = (sel_tag == rdata_i[(((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (j * (((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 2 : 1 - ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1))) + (((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? l_data_t_CVA6Cfg[996-:32] + (l_data_t_CVA6Cfg[964-:32] + 1) : ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) - (l_data_t_CVA6Cfg[996-:32] + (l_data_t_CVA6Cfg[964-:32] + 1))) : (((j * (((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 2 : 1 - ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1))) + (((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? l_data_t_CVA6Cfg[996-:32] + (l_data_t_CVA6Cfg[964-:32] + 1) : ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) - (l_data_t_CVA6Cfg[996-:32] + (l_data_t_CVA6Cfg[964-:32] + 1)))) + ((l_data_t_CVA6Cfg[996-:32] + (l_data_t_CVA6Cfg[964-:32] + 1)) >= (l_data_t_CVA6Cfg[964-:32] + 2) ? ((l_data_t_CVA6Cfg[996-:32] + (l_data_t_CVA6Cfg[964-:32] + 1)) - (l_data_t_CVA6Cfg[964-:32] + 2)) + 1 : ((l_data_t_CVA6Cfg[964-:32] + 2) - (l_data_t_CVA6Cfg[996-:32] + (l_data_t_CVA6Cfg[964-:32] + 1))) + 1)) - 1)-:((l_data_t_CVA6Cfg[996-:32] + (l_data_t_CVA6Cfg[964-:32] + 1)) >= (l_data_t_CVA6Cfg[964-:32] + 2) ? ((l_data_t_CVA6Cfg[996-:32] + (l_data_t_CVA6Cfg[964-:32] + 1)) - (l_data_t_CVA6Cfg[964-:32] + 2)) + 1 : ((l_data_t_CVA6Cfg[964-:32] + 2) - (l_data_t_CVA6Cfg[996-:32] + (l_data_t_CVA6Cfg[964-:32] + 1))) + 1)] ? rdata_i[(j * (((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 2 : 1 - ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1))) + (((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? 1 : (l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 0)] : 1'b0);
		end
	endgenerate
	// Trace: core/cache_subsystem/tag_cmp.sv:61:3
	always @(*) begin : sv2v_autoblock_2
		reg [0:1] _sv2v_jump;
		_sv2v_jump = 2'b00;
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/tag_cmp.sv:63:5
		gnt_o = 1'sb0;
		// Trace: core/cache_subsystem/tag_cmp.sv:64:5
		id_d = 1'sb0;
		// Trace: core/cache_subsystem/tag_cmp.sv:65:5
		wdata_o = 1'sb0;
		// Trace: core/cache_subsystem/tag_cmp.sv:66:5
		req_o = 1'sb0;
		// Trace: core/cache_subsystem/tag_cmp.sv:67:5
		addr_o = 1'sb0;
		// Trace: core/cache_subsystem/tag_cmp.sv:68:5
		be_o = 1'sb0;
		// Trace: core/cache_subsystem/tag_cmp.sv:69:5
		we_o = 1'sb0;
		// Trace: core/cache_subsystem/tag_cmp.sv:72:5
		begin : sv2v_autoblock_3
			// Trace: core/cache_subsystem/tag_cmp.sv:72:10
			reg [31:0] i;
			// Trace: core/cache_subsystem/tag_cmp.sv:72:10
			begin : sv2v_autoblock_4
				reg [31:0] _sv2v_value_on_break;
				for (i = 0; i < NR_PORTS; i = i + 1)
					if (_sv2v_jump < 2'b10) begin
						_sv2v_jump = 2'b00;
						// Trace: core/cache_subsystem/tag_cmp.sv:73:7
						req_o = req_i[i * CVA6Cfg[1092-:32]+:CVA6Cfg[1092-:32]];
						// Trace: core/cache_subsystem/tag_cmp.sv:74:7
						id_d = 1'b1 << i;
						// Trace: core/cache_subsystem/tag_cmp.sv:75:7
						gnt_o[i] = 1'b1;
						// Trace: core/cache_subsystem/tag_cmp.sv:76:7
						addr_o = addr_i[i * ADDR_WIDTH+:ADDR_WIDTH];
						// Trace: core/cache_subsystem/tag_cmp.sv:77:7
						be_o = be_i[i * ((((l_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((l_be_t_CVA6Cfg[964-:32] + 7) / 8)) + l_be_t_CVA6Cfg[1092-:32])+:(((l_be_t_CVA6Cfg[996-:32] + 7) / 8) + ((l_be_t_CVA6Cfg[964-:32] + 7) / 8)) + l_be_t_CVA6Cfg[1092-:32]];
						// Trace: core/cache_subsystem/tag_cmp.sv:78:7
						we_o = we_i[i];
						// Trace: core/cache_subsystem/tag_cmp.sv:79:7
						wdata_o = wdata_i[(((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? 0 : (l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) + (i * (((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 2 : 1 - ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1)))+:(((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1) >= 0 ? (l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 2 : 1 - ((l_data_t_CVA6Cfg[996-:32] + l_data_t_CVA6Cfg[964-:32]) + 1))];
						// Trace: core/cache_subsystem/tag_cmp.sv:81:7
						if (req_i[i * CVA6Cfg[1092-:32]+:CVA6Cfg[1092-:32]])
							_sv2v_jump = 2'b10;
						_sv2v_value_on_break = i;
					end
				if (!(_sv2v_jump < 2'b10))
					i = _sv2v_value_on_break;
				if (_sv2v_jump != 2'b11)
					_sv2v_jump = 2'b00;
			end
		end
		if (_sv2v_jump == 2'b00) begin : onehot
			
		end
	end
	// Trace: core/cache_subsystem/tag_cmp.sv:97:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/tag_cmp.sv:98:5
		if (~rst_ni)
			// Trace: core/cache_subsystem/tag_cmp.sv:99:7
			id_q <= 0;
		else
			// Trace: core/cache_subsystem/tag_cmp.sv:101:7
			id_q <= id_d;
	initial _sv2v_0 = 0;
endmodule
