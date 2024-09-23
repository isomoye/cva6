module wt_dcache_missunit_AE121_53AFD (
	clk_i,
	rst_ni,
	enable_i,
	flush_i,
	flush_ack_o,
	miss_o,
	wbuffer_empty_i,
	cache_en_o,
	amo_req_i,
	amo_resp_o,
	miss_req_i,
	miss_ack_o,
	miss_nc_i,
	miss_we_i,
	miss_wdata_i,
	miss_wuser_i,
	miss_paddr_i,
	miss_vld_bits_i,
	miss_size_i,
	miss_id_i,
	miss_replay_o,
	miss_rtrn_vld_o,
	miss_rtrn_id_o,
	tx_paddr_i,
	tx_vld_i,
	wr_cl_vld_o,
	wr_cl_nc_o,
	wr_cl_we_o,
	wr_cl_tag_o,
	wr_cl_idx_o,
	wr_cl_off_o,
	wr_cl_data_o,
	wr_cl_user_o,
	wr_cl_data_be_o,
	wr_vld_bits_o,
	mem_rtrn_vld_i,
	mem_rtrn_i,
	mem_data_req_o,
	mem_data_ack_i,
	mem_data_o
);
	// removed localparam type dcache_req_t_dcache_req_t_CVA6Cfg_type
	parameter [17102:0] dcache_req_t_dcache_req_t_CVA6Cfg = 0;
	// removed localparam type dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg_type
	parameter [17102:0] dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// removed import wt_cache_pkg::*;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:21:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:22:15
	parameter DCACHE_CL_IDX_WIDTH = 0;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:23:20
	// removed localparam type dcache_req_t
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:24:20
	// removed localparam type dcache_rtrn_t
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:25:15
	parameter [CVA6Cfg[16616-:32] - 1:0] AmoTxId = 1;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:26:15
	parameter [31:0] NumPorts = 4;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:28:5
	input wire clk_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:29:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:31:5
	input wire enable_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:32:5
	input wire flush_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:33:5
	output reg flush_ack_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:34:5
	output wire miss_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:36:5
	input wire wbuffer_empty_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:37:5
	output wire cache_en_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:39:5
	// removed localparam type ariane_pkg_amo_t
	// removed localparam type ariane_pkg_amo_req_t
	input wire [134:0] amo_req_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:40:5
	// removed localparam type ariane_pkg_amo_resp_t
	output reg [64:0] amo_resp_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:42:5
	input wire [NumPorts - 1:0] miss_req_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:43:5
	output reg [NumPorts - 1:0] miss_ack_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:44:5
	input wire [NumPorts - 1:0] miss_nc_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:45:5
	input wire [NumPorts - 1:0] miss_we_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:46:5
	input wire [(NumPorts * CVA6Cfg[17102-:32]) - 1:0] miss_wdata_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:47:5
	input wire [(NumPorts * CVA6Cfg[900-:32]) - 1:0] miss_wuser_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:48:5
	input wire [(NumPorts * CVA6Cfg[17038-:32]) - 1:0] miss_paddr_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:49:5
	input wire [(NumPorts * CVA6Cfg[1092-:32]) - 1:0] miss_vld_bits_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:50:5
	input wire [(NumPorts * 3) - 1:0] miss_size_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:51:5
	input wire [(NumPorts * CVA6Cfg[16616-:32]) - 1:0] miss_id_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:53:5
	output reg [NumPorts - 1:0] miss_replay_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:55:5
	output reg [NumPorts - 1:0] miss_rtrn_vld_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:56:5
	output wire [CVA6Cfg[16616-:32] - 1:0] miss_rtrn_id_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:58:5
	input wire [(CVA6Cfg[804-:32] * CVA6Cfg[17038-:32]) - 1:0] tx_paddr_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:59:5
	input wire [CVA6Cfg[804-:32] - 1:0] tx_vld_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:61:5
	output wire wr_cl_vld_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:62:5
	output wire wr_cl_nc_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:63:5
	output wire [CVA6Cfg[1092-:32] - 1:0] wr_cl_we_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:64:5
	output wire [CVA6Cfg[996-:32] - 1:0] wr_cl_tag_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:65:5
	output wire [DCACHE_CL_IDX_WIDTH - 1:0] wr_cl_idx_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:66:5
	output wire [CVA6Cfg[868-:32] - 1:0] wr_cl_off_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:67:5
	output wire [CVA6Cfg[964-:32] - 1:0] wr_cl_data_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:68:5
	output wire [CVA6Cfg[932-:32] - 1:0] wr_cl_user_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:69:5
	output wire [(CVA6Cfg[964-:32] / 8) - 1:0] wr_cl_data_be_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:70:5
	output wire [CVA6Cfg[1092-:32] - 1:0] wr_vld_bits_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:72:5
	input wire mem_rtrn_vld_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:73:5
	input wire [((((3 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32]) + ((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32])) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32]) - 1:0] mem_rtrn_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:74:5
	output reg mem_data_req_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:75:5
	input wire mem_data_ack_i;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:76:5
	output reg [((((((5 + dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[900-:32]) + 1) + dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32]) + 3:0] mem_data_o;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:80:3
	function automatic [CVA6Cfg[1092-:32] - 1:0] dcache_way_bin2oh;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:81:7
		input reg [CVA6Cfg[1060-:32] - 1:0] in;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:82:5
		reg [CVA6Cfg[1092-:32] - 1:0] out;
		begin
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:83:5
			out = 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:84:5
			out[in] = 1'b1;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:85:5
			dcache_way_bin2oh = out;
		end
	endfunction
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:94:3
	function automatic [CVA6Cfg[17038-:32] - 1:0] paddrSizeAlign;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:94:62
		input reg [CVA6Cfg[17038-:32] - 1:0] paddr;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:95:62
		input reg [2:0] size;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:96:5
		reg [CVA6Cfg[17038-:32] - 1:0] out;
		begin
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:97:5
			out = paddr;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:98:5
			(* full_case, parallel_case *)
			case (size)
				3'b001:
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:99:16
					out[0:0] = 1'sb0;
				3'b010:
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:100:16
					out[1:0] = 1'sb0;
				3'b011:
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:101:16
					out[2:0] = 1'sb0;
				3'b111:
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:102:16
					out[CVA6Cfg[868-:32] - 1:0] = 1'sb0;
				default:
					;
			endcase
			paddrSizeAlign = out;
		end
	endfunction
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:109:3
	// removed localparam type state_e
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:118:3
	reg [2:0] state_d;
	reg [2:0] state_q;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:121:3
	// removed localparam type mshr_t
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:131:3
	wire [((((((CVA6Cfg[17038-:32] + 3) + CVA6Cfg[1092-:32]) + CVA6Cfg[16616-:32]) + 1) + $clog2(CVA6Cfg[1092-:32])) + $clog2(NumPorts)) - 1:0] mshr_d;
	reg [((((((CVA6Cfg[17038-:32] + 3) + CVA6Cfg[1092-:32]) + CVA6Cfg[16616-:32]) + 1) + $clog2(CVA6Cfg[1092-:32])) + $clog2(NumPorts)) - 1:0] mshr_q;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:132:3
	wire [$clog2(CVA6Cfg[1092-:32]) - 1:0] repl_way;
	wire [$clog2(CVA6Cfg[1092-:32]) - 1:0] inv_way;
	wire [$clog2(CVA6Cfg[1092-:32]) - 1:0] rnd_way;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:133:3
	wire mshr_vld_d;
	reg mshr_vld_q;
	reg mshr_vld_q1;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:134:3
	reg mshr_allocate;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:135:3
	reg update_lfsr;
	wire all_ways_valid;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:137:3
	reg enable_d;
	reg enable_q;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:138:3
	reg flush_ack_d;
	reg flush_ack_q;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:139:3
	reg flush_en;
	wire flush_done;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:140:3
	reg mask_reads;
	reg lock_reqs;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:141:3
	reg amo_sel;
	wire miss_is_write;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:142:3
	wire amo_req_d;
	reg amo_req_q;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:143:3
	wire [63:0] amo_rtrn_mux;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:144:3
	reg [CVA6Cfg[17102-:32] - 1:0] amo_data;
	wire [CVA6Cfg[17102-:32] - 1:0] amo_data_a;
	wire [CVA6Cfg[17102-:32] - 1:0] amo_data_b;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:145:3
	reg [CVA6Cfg[17102-:32] - 1:0] amo_user;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:146:3
	wire [CVA6Cfg[17038-:32] - 1:0] tmp_paddr;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:147:3
	wire [$clog2(NumPorts) - 1:0] miss_port_idx;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:148:3
	wire [DCACHE_CL_IDX_WIDTH - 1:0] cnt_d;
	reg [DCACHE_CL_IDX_WIDTH - 1:0] cnt_q;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:149:3
	wire [NumPorts - 1:0] miss_req_masked_d;
	reg [NumPorts - 1:0] miss_req_masked_q;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:151:3
	reg inv_vld;
	reg inv_vld_all;
	wire cl_write_en;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:152:3
	reg load_ack;
	reg store_ack;
	reg amo_ack;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:154:3
	wire [NumPorts - 1:0] mshr_rdrd_collision_d;
	reg [NumPorts - 1:0] mshr_rdrd_collision_q;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:155:3
	wire [NumPorts - 1:0] mshr_rdrd_collision;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:156:3
	reg tx_rdwr_collision;
	wire mshr_rdwr_collision;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:162:3
	assign cache_en_o = enable_q;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:163:3
	assign cnt_d = (flush_en ? cnt_q + 1 : {DCACHE_CL_IDX_WIDTH {1'sb0}});
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:164:3
	assign flush_done = cnt_q == (CVA6Cfg[836-:32] - 1);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:166:3
	assign miss_req_masked_d = (lock_reqs ? miss_req_masked_q : (mask_reads ? miss_we_i & miss_req_i : miss_req_i));
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:168:3
	assign miss_is_write = miss_we_i[miss_port_idx];
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:171:3
	lzc #(.WIDTH(NumPorts)) i_lzc_reqs(
		.in_i(miss_req_masked_d),
		.cnt_o(miss_port_idx),
		.empty_o()
	);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:179:3
	always @(*) begin : p_ack
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:180:5
		miss_ack_o = 1'sb0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:181:5
		if (!amo_sel)
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:182:7
			miss_ack_o[miss_port_idx] = mem_data_ack_i & mem_data_req_o;
	end
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:191:3
	lzc #(.WIDTH(CVA6Cfg[1092-:32])) i_lzc_inv(
		.in_i(~miss_vld_bits_i[miss_port_idx * CVA6Cfg[1092-:32]+:CVA6Cfg[1092-:32]]),
		.cnt_o(inv_way),
		.empty_o(all_ways_valid)
	);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:200:3
	lfsr #(
		.LfsrWidth(8),
		.OutWidth($clog2(CVA6Cfg[1092-:32]))
	) i_lfsr_inv(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.en_i(update_lfsr),
		.out_o(rnd_way)
	);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:210:3
	assign repl_way = (all_ways_valid ? rnd_way : inv_way);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:212:3
	assign mshr_d[3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))))-:((3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))))) >= (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0))))) ? ((3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))))) - (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0)))))) + 1 : ((CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0))))) - (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) + 1)] = (mshr_allocate ? miss_size_i[miss_port_idx * 3+:3] : mshr_q[3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))))-:((3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))))) >= (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0))))) ? ((3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))))) - (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0)))))) + 1 : ((CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0))))) - (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) + 1)]);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:213:3
	assign mshr_d[CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))-:((CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) >= (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0)))))) ? ((CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) - (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0))))))) + 1 : ((3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0)))))) - (CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))))))) + 1)] = (mshr_allocate ? miss_paddr_i[miss_port_idx * CVA6Cfg[17038-:32]+:CVA6Cfg[17038-:32]] : mshr_q[CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))-:((CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) >= (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0)))))) ? ((CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) - (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0))))))) + 1 : ((3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0)))))) - (CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))))))) + 1)]);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:214:3
	assign mshr_d[CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))-:((CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))) >= (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0)))) ? ((CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))) - (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0))))) + 1 : ((CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0)))) - (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))))) + 1)] = (mshr_allocate ? miss_vld_bits_i[miss_port_idx * CVA6Cfg[1092-:32]+:CVA6Cfg[1092-:32]] : mshr_q[CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))-:((CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))) >= (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0)))) ? ((CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))) - (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0))))) + 1 : ((CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0)))) - (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))))) + 1)]);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:215:3
	assign mshr_d[CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))-:((CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))) >= (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0))) ? ((CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))) - (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0)))) + 1 : ((1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0))) - (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))) + 1)] = (mshr_allocate ? miss_id_i[miss_port_idx * CVA6Cfg[16616-:32]+:CVA6Cfg[16616-:32]] : mshr_q[CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))-:((CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))) >= (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0))) ? ((CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)))) - (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0)))) + 1 : ((1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) + 0))) - (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))) + 1)]);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:216:3
	assign mshr_d[1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))] = (mshr_allocate ? miss_nc_i[miss_port_idx] : mshr_q[1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))]);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:217:3
	assign mshr_d[$clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)-:(($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)) >= ($clog2(NumPorts) + 0) ? (($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)) - ($clog2(NumPorts) + 0)) + 1 : (($clog2(NumPorts) + 0) - ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))) + 1)] = (mshr_allocate ? repl_way : mshr_q[$clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)-:(($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)) >= ($clog2(NumPorts) + 0) ? (($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)) - ($clog2(NumPorts) + 0)) + 1 : (($clog2(NumPorts) + 0) - ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))) + 1)]);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:218:3
	assign mshr_d[$clog2(NumPorts) - 1-:$clog2(NumPorts)] = (mshr_allocate ? miss_port_idx : mshr_q[$clog2(NumPorts) - 1-:$clog2(NumPorts)]);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:221:3
	assign mshr_vld_d = (mshr_allocate ? 1'b1 : (load_ack ? 1'b0 : mshr_vld_q));
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:223:3
	assign miss_o = (mshr_allocate ? ~miss_nc_i[miss_port_idx] : 1'b0);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:226:3
	genvar _gv_k_14;
	generate
		for (_gv_k_14 = 0; _gv_k_14 < NumPorts; _gv_k_14 = _gv_k_14 + 1) begin : gen_rdrd_collision
			localparam k = _gv_k_14;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:227:5
			assign mshr_rdrd_collision[k] = (mshr_q[(CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) - ((CVA6Cfg[17038-:32] - 1) - (CVA6Cfg[17038-:32] - 1)):(CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) - ((CVA6Cfg[17038-:32] - 1) - CVA6Cfg[868-:32])] == miss_paddr_i[(k * CVA6Cfg[17038-:32]) + ((CVA6Cfg[17038-:32] - 1) >= CVA6Cfg[868-:32] ? CVA6Cfg[17038-:32] - 1 : ((CVA6Cfg[17038-:32] - 1) + ((CVA6Cfg[17038-:32] - 1) >= CVA6Cfg[868-:32] ? ((CVA6Cfg[17038-:32] - 1) - CVA6Cfg[868-:32]) + 1 : (CVA6Cfg[868-:32] - (CVA6Cfg[17038-:32] - 1)) + 1)) - 1)-:((CVA6Cfg[17038-:32] - 1) >= CVA6Cfg[868-:32] ? ((CVA6Cfg[17038-:32] - 1) - CVA6Cfg[868-:32]) + 1 : (CVA6Cfg[868-:32] - (CVA6Cfg[17038-:32] - 1)) + 1)]) && (mshr_vld_q | mshr_vld_q1);
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:228:5
			assign mshr_rdrd_collision_d[k] = (!miss_req_i[k] ? 1'b0 : mshr_rdrd_collision_q[k] | mshr_rdrd_collision[k]);
		end
	endgenerate
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:233:3
	assign mshr_rdwr_collision = (mshr_q[(CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) - ((CVA6Cfg[17038-:32] - 1) - (CVA6Cfg[17038-:32] - 1)):(CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) - ((CVA6Cfg[17038-:32] - 1) - CVA6Cfg[868-:32])] == miss_paddr_i[((NumPorts - 1) * CVA6Cfg[17038-:32]) + ((CVA6Cfg[17038-:32] - 1) >= CVA6Cfg[868-:32] ? CVA6Cfg[17038-:32] - 1 : ((CVA6Cfg[17038-:32] - 1) + ((CVA6Cfg[17038-:32] - 1) >= CVA6Cfg[868-:32] ? ((CVA6Cfg[17038-:32] - 1) - CVA6Cfg[868-:32]) + 1 : (CVA6Cfg[868-:32] - (CVA6Cfg[17038-:32] - 1)) + 1)) - 1)-:((CVA6Cfg[17038-:32] - 1) >= CVA6Cfg[868-:32] ? ((CVA6Cfg[17038-:32] - 1) - CVA6Cfg[868-:32]) + 1 : (CVA6Cfg[868-:32] - (CVA6Cfg[17038-:32] - 1)) + 1)]) && mshr_vld_q;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:236:3
	always @(*) begin : p_tx_coll
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:237:5
		tx_rdwr_collision = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:238:5
		begin : sv2v_autoblock_1
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:238:10
			reg signed [31:0] k;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:238:10
			for (k = 0; k < CVA6Cfg[804-:32]; k = k + 1)
				begin
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:239:7
					tx_rdwr_collision = tx_rdwr_collision | ((miss_paddr_i[(miss_port_idx * CVA6Cfg[17038-:32]) + ((CVA6Cfg[17038-:32] - 1) >= CVA6Cfg[868-:32] ? CVA6Cfg[17038-:32] - 1 : ((CVA6Cfg[17038-:32] - 1) + ((CVA6Cfg[17038-:32] - 1) >= CVA6Cfg[868-:32] ? ((CVA6Cfg[17038-:32] - 1) - CVA6Cfg[868-:32]) + 1 : (CVA6Cfg[868-:32] - (CVA6Cfg[17038-:32] - 1)) + 1)) - 1)-:((CVA6Cfg[17038-:32] - 1) >= CVA6Cfg[868-:32] ? ((CVA6Cfg[17038-:32] - 1) - CVA6Cfg[868-:32]) + 1 : (CVA6Cfg[868-:32] - (CVA6Cfg[17038-:32] - 1)) + 1)] == tx_paddr_i[(k * CVA6Cfg[17038-:32]) + ((CVA6Cfg[17038-:32] - 1) >= CVA6Cfg[868-:32] ? CVA6Cfg[17038-:32] - 1 : ((CVA6Cfg[17038-:32] - 1) + ((CVA6Cfg[17038-:32] - 1) >= CVA6Cfg[868-:32] ? ((CVA6Cfg[17038-:32] - 1) - CVA6Cfg[868-:32]) + 1 : (CVA6Cfg[868-:32] - (CVA6Cfg[17038-:32] - 1)) + 1)) - 1)-:((CVA6Cfg[17038-:32] - 1) >= CVA6Cfg[868-:32] ? ((CVA6Cfg[17038-:32] - 1) - CVA6Cfg[868-:32]) + 1 : (CVA6Cfg[868-:32] - (CVA6Cfg[17038-:32] - 1)) + 1)]) && tx_vld_i[k]);
				end
		end
	end
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:249:3
	generate
		if (CVA6Cfg[16547]) begin : genblk2
			if (CVA6Cfg[16973]) begin : gen_amo_64b_data
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:251:7
				assign amo_data_a = {amo_req_i[0+:32], amo_req_i[0+:32]};
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:252:7
				assign amo_data_b = amo_req_i[63-:64];
			end
			else begin : gen_amo_32b_data
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:254:7
				assign amo_data_a = amo_req_i[0+:32];
			end
		end
	endgenerate
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:258:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:259:5
		if (CVA6Cfg[16547]) begin
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:260:7
			if (CVA6Cfg[16973]) begin
				begin
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:261:9
					if (amo_req_i[129-:2] == 2'b10)
						// Trace: core/cache_subsystem/wt_dcache_missunit.sv:262:11
						amo_data = amo_data_a;
					else
						// Trace: core/cache_subsystem/wt_dcache_missunit.sv:264:11
						amo_data = amo_data_b;
				end
			end
			else
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:267:9
				amo_data = amo_data_a;
			if (CVA6Cfg[772-:32])
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:270:9
				amo_user = amo_data;
			else
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:272:9
				amo_user = 1'sb0;
		end
	end
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:277:3
	generate
		if (CVA6Cfg[16547]) begin : genblk3
			if (CVA6Cfg[7625-:32] == 32'd0) begin : gen_axi_rtrn_mux
				if (CVA6Cfg[16712-:32] > 64) begin : genblk1
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:281:9
					assign amo_rtrn_mux = mem_rtrn_i[(dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) - ((dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] - 1) - (amo_req_i[63 + $clog2(CVA6Cfg[16712-:32] / 8):67] * 64))+:64];
				end
				else begin : genblk1
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:285:9
					assign amo_rtrn_mux = mem_rtrn_i[(dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) - (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] - 1)+:64];
				end
			end
			else begin : gen_piton_rtrn_mux
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:288:7
				assign amo_rtrn_mux = mem_rtrn_i[(dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) - ((dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] - 1) - (amo_req_i[63 + CVA6Cfg[868-:32]:67] * 64))+:64];
			end
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:292:5
			wire [64:1] sv2v_tmp_AFE12;
			assign sv2v_tmp_AFE12 = (amo_req_i[129-:2] == 2'b10 ? {{32 {amo_rtrn_mux[(amo_req_i[66] * 32) + 31]}}, amo_rtrn_mux[amo_req_i[66] * 32+:32]} : amo_rtrn_mux);
			always @(*) amo_resp_o[63-:64] = sv2v_tmp_AFE12;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:294:5
			assign amo_req_d = amo_req_i[134];
		end
	endgenerate
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:298:3
	wire [((dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3) >= 4 ? dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 0 : 5 - (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)) * 1:1] sv2v_tmp_5F1E6;
	assign sv2v_tmp_5F1E6 = (CVA6Cfg[16547] && amo_sel ? AmoTxId : miss_id_i[miss_port_idx * CVA6Cfg[16616-:32]+:CVA6Cfg[16616-:32]]);
	always @(*) mem_data_o[dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3-:((dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3) >= 4 ? dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 0 : 5 - (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))] = sv2v_tmp_5F1E6;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:299:3
	wire [1:1] sv2v_tmp_E245D;
	assign sv2v_tmp_E245D = (CVA6Cfg[16547] && amo_sel ? 1'b1 : miss_nc_i[miss_port_idx]);
	always @(*) mem_data_o[1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)] = sv2v_tmp_E245D;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:300:3
	wire [((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) + 1) * 1:1] sv2v_tmp_C8A92;
	assign sv2v_tmp_C8A92 = (CVA6Cfg[16547] && amo_sel ? {(((((((((5 + dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[900-:32]) + 1) + dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32]) + 3) >= 0 ? dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))) : ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) + 1)) + 1) >= ((((((((5 + dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[900-:32]) + 1) + dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32]) + 3) >= 0 ? ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) + 1)) + 1 : dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) ? (((((((((5 + dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[900-:32]) + 1) + dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32]) + 3) >= 0 ? dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))) : ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) + 1)) + 1) - ((((((((5 + dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[900-:32]) + 1) + dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32]) + 3) >= 0 ? ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) + 1)) + 1 : dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) + 1 : (((((((((5 + dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[900-:32]) + 1) + dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32]) + 3) >= 0 ? ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) + 1)) + 1 : dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - ((((((((5 + dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32]) + dcache_req_t_dcache_req_t_CVA6Cfg[900-:32]) + 1) + dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32]) + 3) >= 0 ? dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))) : ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) + 1)) + 1)) + 1) {1'sb0}} : repl_way);
	always @(*) mem_data_o[dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))-:((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) + 1)] = sv2v_tmp_C8A92;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:301:3
	wire [((dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))) - (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))) + 1) * 1:1] sv2v_tmp_54FEC;
	assign sv2v_tmp_54FEC = (CVA6Cfg[16547] && amo_sel ? amo_data : miss_wdata_i[miss_port_idx * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]]);
	always @(*) mem_data_o[dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))-:((dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))) - (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))) + 1)] = sv2v_tmp_54FEC;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:302:3
	wire [((dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))) >= (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))) - (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))) + 1 : ((1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)) - (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))) + 1) * 1:1] sv2v_tmp_31D0A;
	assign sv2v_tmp_31D0A = (CVA6Cfg[16547] && amo_sel ? amo_user : miss_wuser_i[miss_port_idx * CVA6Cfg[900-:32]+:CVA6Cfg[900-:32]]);
	always @(*) mem_data_o[dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))-:((dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))) >= (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))) - (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))) + 1 : ((1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)) - (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))) + 1)] = sv2v_tmp_31D0A;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:303:3
	wire [((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) ? ((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) - (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1) * 1:1] sv2v_tmp_4B25C;
	assign sv2v_tmp_4B25C = (CVA6Cfg[16547] && amo_sel ? {1'b0, amo_req_i[129-:2]} : miss_size_i[miss_port_idx * 3+:3]);
	always @(*) mem_data_o[3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))-:((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) ? ((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) - (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1)] = sv2v_tmp_4B25C;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:304:3
	wire [4:1] sv2v_tmp_BB884;
	assign sv2v_tmp_BB884 = (CVA6Cfg[16547] && amo_sel ? amo_req_i[133-:4] : 4'b0000);
	always @(*) mem_data_o[3-:4] = sv2v_tmp_BB884;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:306:3
	assign tmp_paddr = (CVA6Cfg[16547] && amo_sel ? amo_req_i[63 + CVA6Cfg[17038-:32]:64] : miss_paddr_i[miss_port_idx * CVA6Cfg[17038-:32]+:CVA6Cfg[17038-:32]]);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:307:3
	wire [((dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) + 1) * 1:1] sv2v_tmp_1F724;
	assign sv2v_tmp_1F724 = paddrSizeAlign(tmp_paddr, mem_data_o[3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))-:((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) ? ((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))) - (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1)]);
	always @(*) mem_data_o[dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))-:((dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))) >= (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))) ? ((dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))) + 1 : ((dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))) - (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))) + 1)] = sv2v_tmp_1F724;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:313:3
	reg sc_fail;
	reg sc_pass;
	wire sc_backoff_over;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:314:3
	exp_backoff #(
		.Seed(3),
		.MaxExp(16)
	) i_exp_backoff(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.set_i(sc_fail),
		.clr_i(sc_pass),
		.is_zero_o(sc_backoff_over)
	);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:330:3
	wire store_sent;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:331:3
	wire [$clog2(CVA6Cfg[804-:32] + 1) - 1:0] stores_inflight_d;
	reg [$clog2(CVA6Cfg[804-:32] + 1) - 1:0] stores_inflight_q;
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:332:3
	// removed localparam type wt_cache_pkg_dcache_out_t
	assign store_sent = (mem_data_req_o & mem_data_ack_i) & (mem_data_o[5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))-:((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) ? ((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))))) + 1 : ((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) - (5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1)] == 2'd0);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:334:3
	assign stores_inflight_d = (store_ack && store_sent ? stores_inflight_q : (store_ack ? stores_inflight_q - 1 : (store_sent ? stores_inflight_q + 1 : stores_inflight_q)));
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:340:3
	// removed localparam type wt_cache_pkg_dcache_in_t
	always @(*) begin : p_rtrn_logic
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:341:5
		load_ack = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:342:5
		store_ack = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:343:5
		amo_ack = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:344:5
		inv_vld = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:345:5
		inv_vld_all = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:346:5
		sc_fail = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:347:5
		sc_pass = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:348:5
		miss_rtrn_vld_o = 1'sb0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:349:5
		if (mem_rtrn_vld_i)
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:350:7
			(* full_case, parallel_case *)
			case (mem_rtrn_i[3 + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))))-:((3 + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))))) >= (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] + 0)))) ? ((3 + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))))) - (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] + 0))))) + 1 : ((dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] + 0)))) - (3 + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)))))) + 1)])
				3'd2:
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:352:11
					if (mshr_vld_q) begin
						// Trace: core/cache_subsystem/wt_dcache_missunit.sv:353:13
						load_ack = 1'b1;
						// Trace: core/cache_subsystem/wt_dcache_missunit.sv:354:13
						miss_rtrn_vld_o[mshr_q[$clog2(NumPorts) - 1-:$clog2(NumPorts)]] = 1'b1;
					end
				3'd1:
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:358:11
					if (stores_inflight_q > 0) begin
						// Trace: core/cache_subsystem/wt_dcache_missunit.sv:359:13
						store_ack = 1'b1;
						// Trace: core/cache_subsystem/wt_dcache_missunit.sv:360:13
						miss_rtrn_vld_o[NumPorts - 1] = 1'b1;
					end
				3'd3:
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:364:11
					if (CVA6Cfg[16547]) begin
						begin
							// Trace: core/cache_subsystem/wt_dcache_missunit.sv:365:13
							if (amo_req_q) begin
								// Trace: core/cache_subsystem/wt_dcache_missunit.sv:366:15
								amo_ack = 1'b1;
								// Trace: core/cache_subsystem/wt_dcache_missunit.sv:369:15
								if (amo_req_i[133-:4] == 4'b0010) begin
									begin
										// Trace: core/cache_subsystem/wt_dcache_missunit.sv:370:17
										if (amo_resp_o[63-:64] > 0)
											// Trace: core/cache_subsystem/wt_dcache_missunit.sv:371:19
											sc_fail = 1'b1;
										else
											// Trace: core/cache_subsystem/wt_dcache_missunit.sv:373:19
											sc_pass = 1'b1;
									end
								end
							end
						end
					end
				3'd0: begin
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:380:11
					inv_vld = mem_rtrn_i[(((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - ((((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) - 1) - (2 + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32] - 1))))] | mem_rtrn_i[(((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - ((((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) - 1) - (1 + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32] - 1))))];
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:381:11
					inv_vld_all = mem_rtrn_i[(((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - ((((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) - 1) - (1 + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32] - 1))))];
				end
				default:
					;
			endcase
	end
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:393:3
	assign miss_rtrn_id_o = mem_rtrn_i[dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1-:dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32]];
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:400:3
	assign wr_cl_nc_o = mshr_q[1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))];
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:401:3
	assign wr_cl_vld_o = load_ack | (|wr_cl_we_o);
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:403:3
	assign wr_cl_we_o = (flush_en ? {CVA6Cfg[1092-:32] {1'sb1}} : (inv_vld_all ? {CVA6Cfg[1092-:32] {1'sb1}} : (inv_vld ? dcache_way_bin2oh(mem_rtrn_i[(((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - ((((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) - 1) - (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32] - 1))-:dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]]) : (cl_write_en ? dcache_way_bin2oh(mshr_q[$clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)-:(($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)) >= ($clog2(NumPorts) + 0) ? (($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)) - ($clog2(NumPorts) + 0)) + 1 : (($clog2(NumPorts) + 0) - ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))) + 1)]) : {CVA6Cfg[1092-:32] {1'sb0}}))));
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:409:3
	assign wr_vld_bits_o = (flush_en ? {CVA6Cfg[1092-:32] {1'sb0}} : (inv_vld ? {CVA6Cfg[1092-:32] {1'sb0}} : (cl_write_en ? dcache_way_bin2oh(mshr_q[$clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)-:(($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)) >= ($clog2(NumPorts) + 0) ? (($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1)) - ($clog2(NumPorts) + 0)) + 1 : (($clog2(NumPorts) + 0) - ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))) + 1)]) : {CVA6Cfg[1092-:32] {1'sb0}})));
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:413:3
	assign wr_cl_idx_o = (flush_en ? cnt_q : (inv_vld ? mem_rtrn_i[(((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - ((((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) - 1) - ((dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32] - 1)) - ((dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32] - 1) - (CVA6Cfg[1028-:32] - 1)))):(((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - ((((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) - 1) - ((dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32] - 1)) - ((dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32] - 1) - CVA6Cfg[868-:32])))] : mshr_q[(CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) - ((CVA6Cfg[17038-:32] - 1) - (CVA6Cfg[1028-:32] - 1)):(CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) - ((CVA6Cfg[17038-:32] - 1) - CVA6Cfg[868-:32])]));
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:417:3
	assign wr_cl_tag_o = mshr_q[(CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) - ((CVA6Cfg[17038-:32] - 1) - ((CVA6Cfg[996-:32] + CVA6Cfg[1028-:32]) - 1)):(CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) - ((CVA6Cfg[17038-:32] - 1) - CVA6Cfg[1028-:32])];
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:418:3
	assign wr_cl_off_o = mshr_q[(CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) - ((CVA6Cfg[17038-:32] - 1) - (CVA6Cfg[868-:32] - 1)):(CVA6Cfg[17038-:32] + (3 + (CVA6Cfg[1092-:32] + (CVA6Cfg[16616-:32] + (1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))))))) - (CVA6Cfg[17038-:32] - 1)];
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:419:3
	assign wr_cl_data_o = mem_rtrn_i[dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)))-:((dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) >= (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] + 0))) ? ((dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) - (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] + 0)))) + 1 : ((dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] + 0))) - (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[964-:32] + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))))) + 1)];
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:420:3
	assign wr_cl_user_o = mem_rtrn_i[dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))-:((dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))) >= (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] + 0)) ? ((dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1))) - (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] + 0))) + 1 : ((((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] + 0)) - (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[932-:32] + (((2 + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1028-:32]) + dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[1060-:32]) + (dcache_rtrn_t_dcache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) + 1)];
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:421:3
	assign wr_cl_data_be_o = (cl_write_en ? {CVA6Cfg[964-:32] / 8 {1'sb1}} : {CVA6Cfg[964-:32] / 8 {1'sb0}});
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:424:3
	assign cl_write_en = load_ack & ~mshr_q[1 + ($clog2(CVA6Cfg[1092-:32]) + ($clog2(NumPorts) - 1))];
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:430:3
	always @(*) begin : p_fsm
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:432:5
		state_d = state_q;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:434:5
		flush_ack_o = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:435:5
		mem_data_o[5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))-:((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) ? ((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))))) + 1 : ((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) - (5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1)] = 2'd1;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:436:5
		mem_data_req_o = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:437:5
		amo_resp_o[64] = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:438:5
		miss_replay_o = 1'sb0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:441:5
		enable_d = enable_q & enable_i;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:442:5
		flush_ack_d = flush_ack_q;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:443:5
		flush_en = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:444:5
		amo_sel = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:445:5
		update_lfsr = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:446:5
		mshr_allocate = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:447:5
		lock_reqs = 1'b0;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:448:5
		mask_reads = mshr_vld_q;
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:451:5
		(* full_case, parallel_case *)
		case (state_q)
			3'd0:
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:455:9
				if (flush_i || (enable_i && !enable_q)) begin
					begin
						// Trace: core/cache_subsystem/wt_dcache_missunit.sv:456:11
						if (wbuffer_empty_i && !mshr_vld_q) begin
							// Trace: core/cache_subsystem/wt_dcache_missunit.sv:457:13
							flush_ack_d = flush_i;
							// Trace: core/cache_subsystem/wt_dcache_missunit.sv:458:13
							state_d = 3'd3;
						end
						else
							// Trace: core/cache_subsystem/wt_dcache_missunit.sv:460:13
							state_d = 3'd1;
					end
				end
				else if (CVA6Cfg[16547] && amo_req_i[134]) begin
					begin
						// Trace: core/cache_subsystem/wt_dcache_missunit.sv:463:11
						if (wbuffer_empty_i && !mshr_vld_q)
							// Trace: core/cache_subsystem/wt_dcache_missunit.sv:464:13
							state_d = 3'd2;
						else
							// Trace: core/cache_subsystem/wt_dcache_missunit.sv:466:13
							state_d = 3'd1;
					end
				end
				else if (|miss_req_masked_d) begin
					begin
						// Trace: core/cache_subsystem/wt_dcache_missunit.sv:471:11
						if (miss_is_write) begin
							begin
								// Trace: core/cache_subsystem/wt_dcache_missunit.sv:473:13
								if (!mshr_rdwr_collision) begin
									// Trace: core/cache_subsystem/wt_dcache_missunit.sv:474:15
									mem_data_req_o = 1'b1;
									// Trace: core/cache_subsystem/wt_dcache_missunit.sv:475:15
									mem_data_o[5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))-:((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) ? ((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))))) + 1 : ((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) - (5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1)] = 2'd0;
									// Trace: core/cache_subsystem/wt_dcache_missunit.sv:476:15
									if (!mem_data_ack_i)
										// Trace: core/cache_subsystem/wt_dcache_missunit.sv:477:17
										state_d = 3'd4;
								end
							end
						end
						else if (!mshr_vld_q || load_ack) begin
							begin
								// Trace: core/cache_subsystem/wt_dcache_missunit.sv:485:13
								if (mshr_rdrd_collision_d[miss_port_idx])
									// Trace: core/cache_subsystem/wt_dcache_missunit.sv:486:15
									miss_replay_o[miss_port_idx] = 1'b1;
								else if (!tx_rdwr_collision) begin
									// Trace: core/cache_subsystem/wt_dcache_missunit.sv:489:15
									mem_data_req_o = 1'b1;
									// Trace: core/cache_subsystem/wt_dcache_missunit.sv:490:15
									mem_data_o[5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))-:((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) ? ((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))))) + 1 : ((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) - (5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1)] = 2'd1;
									// Trace: core/cache_subsystem/wt_dcache_missunit.sv:491:15
									update_lfsr = all_ways_valid & mem_data_ack_i;
									// Trace: core/cache_subsystem/wt_dcache_missunit.sv:492:15
									mshr_allocate = mem_data_ack_i;
									// Trace: core/cache_subsystem/wt_dcache_missunit.sv:493:15
									if (!mem_data_ack_i)
										// Trace: core/cache_subsystem/wt_dcache_missunit.sv:494:17
										state_d = 3'd5;
								end
							end
						end
					end
				end
			3'd4: begin
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:503:9
				lock_reqs = 1'b1;
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:504:9
				mem_data_req_o = 1'b1;
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:505:9
				mem_data_o[5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))-:((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) ? ((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))))) + 1 : ((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) - (5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1)] = 2'd0;
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:506:9
				if (mem_data_ack_i)
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:507:11
					state_d = 3'd0;
			end
			3'd5: begin
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:513:9
				lock_reqs = 1'b1;
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:514:9
				mem_data_req_o = 1'b1;
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:515:9
				mem_data_o[5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))-:((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) ? ((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))))) + 1 : ((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) - (5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1)] = 2'd1;
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:516:9
				if (mem_data_ack_i) begin
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:517:11
					update_lfsr = all_ways_valid;
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:518:11
					mshr_allocate = 1'b1;
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:519:11
					state_d = 3'd0;
				end
			end
			3'd1: begin
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:526:9
				mask_reads = 1'b1;
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:528:9
				if (|miss_req_masked_d && !mshr_rdwr_collision) begin
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:529:11
					mem_data_req_o = 1'b1;
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:530:11
					mem_data_o[5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))-:((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) ? ((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))))) + 1 : ((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) - (5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1)] = 2'd0;
				end
				if (wbuffer_empty_i && !mshr_vld_q)
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:534:11
					state_d = 3'd0;
			end
			3'd3: begin
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:541:9
				flush_en = 1'b1;
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:542:9
				if (flush_done) begin
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:543:11
					state_d = 3'd0;
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:544:11
					flush_ack_o = flush_ack_q;
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:545:11
					flush_ack_d = 1'b0;
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:546:11
					enable_d = enable_i;
				end
			end
			3'd2:
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:552:9
				if (CVA6Cfg[16547]) begin
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:553:11
					mem_data_o[5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))-:((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) >= (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) ? ((5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3))))))) - (3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4)))))))) + 1 : ((3 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 4))))))) - (5 + (dcache_req_t_dcache_req_t_CVA6Cfg[1060-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17038-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[17102-:32] + (dcache_req_t_dcache_req_t_CVA6Cfg[900-:32] + (1 + (dcache_req_t_dcache_req_t_CVA6Cfg[16616-:32] + 3)))))))) + 1)] = 2'd2;
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:554:11
					amo_sel = 1'b1;
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:556:11
					if ((amo_req_i[133-:4] != 4'b0001) || sc_backoff_over) begin
						// Trace: core/cache_subsystem/wt_dcache_missunit.sv:557:13
						mem_data_req_o = 1'b1;
						// Trace: core/cache_subsystem/wt_dcache_missunit.sv:558:13
						if (mem_data_ack_i)
							// Trace: core/cache_subsystem/wt_dcache_missunit.sv:559:15
							state_d = 3'd6;
					end
				end
			3'd6:
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:567:9
				if (CVA6Cfg[16547]) begin
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:568:11
					amo_sel = 1'b1;
					// Trace: core/cache_subsystem/wt_dcache_missunit.sv:569:11
					if (amo_ack) begin
						// Trace: core/cache_subsystem/wt_dcache_missunit.sv:570:13
						amo_resp_o[64] = 1'b1;
						// Trace: core/cache_subsystem/wt_dcache_missunit.sv:571:13
						state_d = 3'd0;
					end
				end
			default:
				// Trace: core/cache_subsystem/wt_dcache_missunit.sv:578:9
				state_d = 3'd0;
		endcase
	end
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:587:3
	always @(posedge clk_i or negedge rst_ni) begin : p_regs
		// Trace: core/cache_subsystem/wt_dcache_missunit.sv:588:5
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:589:7
			state_q <= 3'd3;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:590:7
			cnt_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:591:7
			enable_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:592:7
			flush_ack_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:593:7
			mshr_vld_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:594:7
			mshr_vld_q1 <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:595:7
			mshr_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:596:7
			mshr_rdrd_collision_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:597:7
			miss_req_masked_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:598:7
			amo_req_q <= 1'sb0;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:599:7
			stores_inflight_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:601:7
			state_q <= state_d;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:602:7
			cnt_q <= cnt_d;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:603:7
			enable_q <= enable_d;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:604:7
			flush_ack_q <= flush_ack_d;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:605:7
			mshr_vld_q <= mshr_vld_d;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:606:7
			mshr_vld_q1 <= mshr_vld_q;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:607:7
			mshr_q <= mshr_d;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:608:7
			mshr_rdrd_collision_q <= mshr_rdrd_collision_d;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:609:7
			miss_req_masked_q <= miss_req_masked_d;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:610:7
			amo_req_q <= amo_req_d;
			// Trace: core/cache_subsystem/wt_dcache_missunit.sv:611:7
			stores_inflight_q <= stores_inflight_d;
		end
	end
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:622:3
	// removed an assertion item
	// read_tid : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(mshr_vld_q |-> (mem_rtrn_vld_i |-> (load_ack |-> mem_rtrn_i.tid == mshr_q.id)))
	// ) else begin
	// 	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:625:8
	// 	$fatal(1, "[l1 dcache missunit] TID of load response doesn't match");
	// end
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:627:3
	// removed an assertion item
	// read_ports : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(|miss_req_i[NumPorts - 2:0] |-> miss_we_i[NumPorts - 2:0] == 0)
	// ) else begin
	// 	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:630:8
	// 	$fatal(1, "[l1 dcache missunit] only last port can issue write requests");
	// end
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:632:3
	// removed an assertion item
	// write_port : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	(miss_req_i[NumPorts - 1] |-> miss_we_i[NumPorts - 1])
	// ) else begin
	// 	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:635:8
	// 	$fatal(1, "[l1 dcache missunit] last port can only issue write requests");
	// end
	// Trace: core/cache_subsystem/wt_dcache_missunit.sv:637:3
	initial _sv2v_0 = 0;
endmodule
