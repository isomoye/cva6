module cva6_icache_axi_wrapper_7C6FC_B07F8 (
	clk_i,
	rst_ni,
	priv_lvl_i,
	flush_i,
	en_i,
	miss_o,
	areq_i,
	areq_o,
	dreq_i,
	dreq_o,
	axi_req_o,
	axi_resp_i
);
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth_type
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth_type
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth_type
	// removed localparam type axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth_type
	// removed localparam type axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth_type
	// removed localparam type axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth = 0;
	// removed localparam type icache_areq_t_icache_areq_t_CVA6Cfg_type
	parameter [17102:0] icache_areq_t_icache_areq_t_CVA6Cfg = 0;
	// removed localparam type icache_arsp_t_icache_arsp_t_CVA6Cfg_type
	parameter [17102:0] icache_arsp_t_icache_arsp_t_CVA6Cfg = 0;
	// removed localparam type icache_dreq_t_icache_dreq_t_CVA6Cfg_type
	parameter [17102:0] icache_dreq_t_icache_dreq_t_CVA6Cfg = 0;
	// removed localparam type icache_drsp_t_icache_drsp_t_CVA6Cfg_type
	parameter [17102:0] icache_drsp_t_icache_drsp_t_CVA6Cfg = 0;
	// removed localparam type icache_req_t_icache_req_t_CVA6Cfg_type
	parameter [17102:0] icache_req_t_icache_req_t_CVA6Cfg = 0;
	// removed localparam type icache_rtrn_t_icache_rtrn_t_CVA6Cfg_type
	parameter [17102:0] icache_rtrn_t_icache_rtrn_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// removed import wt_cache_pkg::*;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:20:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:21:20
	// removed localparam type icache_areq_t
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:22:20
	// removed localparam type icache_arsp_t
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:23:20
	// removed localparam type icache_dreq_t
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:24:20
	// removed localparam type icache_drsp_t
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:25:20
	// removed localparam type icache_req_t
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:26:20
	// removed localparam type icache_rtrn_t
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:27:20
	// removed localparam type axi_req_t
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:28:20
	// removed localparam type axi_rsp_t
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:30:5
	input wire clk_i;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:31:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:32:5
	// removed localparam type riscv_priv_lvl_t
	input wire [1:0] priv_lvl_i;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:34:5
	input wire flush_i;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:35:5
	input wire en_i;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:36:5
	output wire miss_o;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:38:5
	input wire [((1 + icache_areq_t_icache_areq_t_CVA6Cfg[17038-:32]) + ((((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32] + icache_areq_t_icache_areq_t_CVA6Cfg[17102-:32]) + icache_areq_t_icache_areq_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] areq_i;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:39:5
	output wire [(1 + icache_arsp_t_icache_arsp_t_CVA6Cfg[17070-:32]) - 1:0] areq_o;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:41:5
	input wire [(4 + icache_dreq_t_icache_dreq_t_CVA6Cfg[17070-:32]) - 1:0] dreq_i;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:42:5
	output wire [((((2 + icache_drsp_t_icache_drsp_t_CVA6Cfg[643-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[708-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17070-:32]) + ((((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33) >= 0 ? ((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 34 : 1 - (((icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32] + icache_drsp_t_icache_drsp_t_CVA6Cfg[17102-:32]) + icache_drsp_t_icache_drsp_t_CVA6Cfg[17006-:32]) + 33))) - 1:0] dreq_o;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:44:5
	output wire [(((((((axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_req_o;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:45:5
	input wire [(((4 + ((axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_resp_i;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:48:3
	localparam AxiNumWords = ((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) * (CVA6Cfg[1190-:32] > CVA6Cfg[964-:32])) + ((CVA6Cfg[964-:32] / CVA6Cfg[16712-:32]) * (CVA6Cfg[1190-:32] <= CVA6Cfg[964-:32]));
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:51:3
	wire icache_mem_rtrn_vld;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:52:3
	wire [((((1 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32]) + ((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32])) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32]) - 1:0] icache_mem_rtrn;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:53:3
	wire icache_mem_data_req;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:54:3
	wire icache_mem_data_ack;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:55:3
	wire [(((icache_req_t_icache_req_t_CVA6Cfg[1286-:32] + icache_req_t_icache_req_t_CVA6Cfg[17038-:32]) + 1) + icache_req_t_icache_req_t_CVA6Cfg[16616-:32]) - 1:0] icache_mem_data;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:57:3
	wire axi_rd_req;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:58:3
	wire axi_rd_gnt;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:59:3
	wire [CVA6Cfg[16744-:32] - 1:0] axi_rd_addr;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:60:3
	wire [$clog2(AxiNumWords) - 1:0] axi_rd_blen;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:61:3
	wire [2:0] axi_rd_size;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:62:3
	wire [CVA6Cfg[16680-:32] - 1:0] axi_rd_id_in;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:63:3
	wire axi_rd_rdy;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:64:3
	wire axi_rd_lock;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:65:3
	wire axi_rd_last;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:66:3
	wire axi_rd_valid;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:67:3
	wire [CVA6Cfg[16712-:32] - 1:0] axi_rd_data;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:68:3
	wire [CVA6Cfg[16680-:32] - 1:0] axi_rd_id_out;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:69:3
	wire axi_rd_exokay;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:71:3
	wire req_valid_d;
	reg req_valid_q;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:72:3
	wire [(((icache_req_t_icache_req_t_CVA6Cfg[1286-:32] + icache_req_t_icache_req_t_CVA6Cfg[17038-:32]) + 1) + icache_req_t_icache_req_t_CVA6Cfg[16616-:32]) - 1:0] req_data_d;
	reg [(((icache_req_t_icache_req_t_CVA6Cfg[1286-:32] + icache_req_t_icache_req_t_CVA6Cfg[17038-:32]) + 1) + icache_req_t_icache_req_t_CVA6Cfg[16616-:32]) - 1:0] req_data_q;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:73:3
	reg first_d;
	reg first_q;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:74:3
	reg [((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) * CVA6Cfg[16712-:32]) - 1:0] rd_shift_d;
	reg [((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) * CVA6Cfg[16712-:32]) - 1:0] rd_shift_q;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:79:3
	assign req_valid_d = ~axi_rd_gnt & (icache_mem_data_req | req_valid_q);
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:82:3
	assign req_data_d = (icache_mem_data_req ? icache_mem_data : req_data_q);
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:85:3
	assign axi_rd_req = icache_mem_data_req | req_valid_q;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:86:3
	function automatic [CVA6Cfg[16744-:32] - 1:0] sv2v_cast_ECA07;
		input reg [CVA6Cfg[16744-:32] - 1:0] inp;
		sv2v_cast_ECA07 = inp;
	endfunction
	assign axi_rd_addr = sv2v_cast_ECA07(req_data_d[icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)-:((icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) >= (1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) ? ((icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) - (1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) + 1 : ((1 + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0)) - (icache_req_t_icache_req_t_CVA6Cfg[17038-:32] + (icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0))) + 1)]);
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:89:3
	assign axi_rd_blen = (req_data_d[icache_req_t_icache_req_t_CVA6Cfg[16616-:32] + 0] ? {$clog2(AxiNumWords) {1'sb0}} : (CVA6Cfg[1190-:32] / 64) - 1);
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:90:3
	assign axi_rd_size = $clog2(CVA6Cfg[16712-:32] / 8);
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:91:3
	assign axi_rd_id_in = req_data_d[icache_req_t_icache_req_t_CVA6Cfg[16616-:32] - 1-:icache_req_t_icache_req_t_CVA6Cfg[16616-:32]];
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:92:3
	assign axi_rd_rdy = 1'b1;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:93:3
	assign axi_rd_lock = 1'b0;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:96:3
	assign icache_mem_data_ack = icache_mem_data_req;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:99:3
	assign icache_mem_rtrn_vld = axi_rd_valid & axi_rd_last;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:100:3
	assign icache_mem_rtrn[icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))-:((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) >= (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0))) ? ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)))) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0)))) + 1 : ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0))) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))))) + 1)] = rd_shift_d;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:101:3
	assign icache_mem_rtrn[icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1-:icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32]] = req_data_q[icache_req_t_icache_req_t_CVA6Cfg[16616-:32] - 1-:icache_req_t_icache_req_t_CVA6Cfg[16616-:32]];
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:102:3
	// removed localparam type wt_cache_pkg_icache_in_t
	assign icache_mem_rtrn[1 + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1190-:32] + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1158-:32] + (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))))] = 1'd1;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:103:3
	assign icache_mem_rtrn[((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)-:((((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)) >= (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0) ? ((((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1)) - (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0)) + 1 : ((icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] + 0) - (((2 + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1254-:32]) + icache_rtrn_t_icache_rtrn_t_CVA6Cfg[1286-:32]) + (icache_rtrn_t_icache_rtrn_t_CVA6Cfg[16616-:32] - 1))) + 1)] = 1'sb0;
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:108:3
	cva6_icache_4BE9B_67586 #(
		.icache_areq_t_icache_areq_t_icache_areq_t_CVA6Cfg(icache_areq_t_icache_areq_t_CVA6Cfg),
		.icache_arsp_t_icache_arsp_t_icache_arsp_t_CVA6Cfg(icache_arsp_t_icache_arsp_t_CVA6Cfg),
		.icache_dreq_t_icache_dreq_t_icache_dreq_t_CVA6Cfg(icache_dreq_t_icache_dreq_t_CVA6Cfg),
		.icache_drsp_t_icache_drsp_t_icache_drsp_t_CVA6Cfg(icache_drsp_t_icache_drsp_t_CVA6Cfg),
		.icache_req_t_icache_req_t_icache_req_t_CVA6Cfg(icache_req_t_icache_req_t_CVA6Cfg),
		.icache_rtrn_t_icache_rtrn_t_icache_rtrn_t_CVA6Cfg(icache_rtrn_t_icache_rtrn_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg),
		.RdTxId(0)
	) i_cva6_icache(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_i),
		.en_i(en_i),
		.miss_o(miss_o),
		.areq_i(areq_i),
		.areq_o(areq_o),
		.dreq_i(dreq_i),
		.dreq_o(dreq_o),
		.mem_rtrn_vld_i(icache_mem_rtrn_vld),
		.mem_rtrn_i(icache_mem_rtrn),
		.mem_data_req_o(icache_mem_data_req),
		.mem_data_ack_i(icache_mem_data_ack),
		.mem_data_o(icache_mem_data)
	);
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:138:3
	// removed localparam type sv2v_uu_i_axi_shim_wr_req_i
	localparam [0:0] sv2v_uu_i_axi_shim_ext_wr_req_i_0 = 1'sb0;
	localparam [17102:0] sv2v_uu_i_axi_shim_config_pkg_cva6_cfg_empty = 17103'd0;
	localparam [17102:0] sv2v_uu_i_axi_shim_CVA6Cfg = CVA6Cfg;
	// removed localparam type sv2v_uu_i_axi_shim_wr_addr_i
	localparam [sv2v_uu_i_axi_shim_CVA6Cfg[16744-:32] - 1:0] sv2v_uu_i_axi_shim_ext_wr_addr_i_0 = 1'sb0;
	localparam [31:0] sv2v_uu_i_axi_shim_AxiNumWords = AxiNumWords;
	// removed localparam type sv2v_uu_i_axi_shim_wr_data_i
	localparam [(sv2v_uu_i_axi_shim_AxiNumWords * sv2v_uu_i_axi_shim_CVA6Cfg[16712-:32]) - 1:0] sv2v_uu_i_axi_shim_ext_wr_data_i_0 = 1'sb0;
	// removed localparam type sv2v_uu_i_axi_shim_wr_user_i
	localparam [(sv2v_uu_i_axi_shim_AxiNumWords * sv2v_uu_i_axi_shim_CVA6Cfg[16648-:32]) - 1:0] sv2v_uu_i_axi_shim_ext_wr_user_i_0 = 1'sb0;
	// removed localparam type sv2v_uu_i_axi_shim_wr_be_i
	localparam [(sv2v_uu_i_axi_shim_AxiNumWords * (sv2v_uu_i_axi_shim_CVA6Cfg[16712-:32] / 8)) - 1:0] sv2v_uu_i_axi_shim_ext_wr_be_i_0 = 1'sb0;
	// removed localparam type sv2v_uu_i_axi_shim_wr_blen_i
	localparam [$clog2(sv2v_uu_i_axi_shim_AxiNumWords) - 1:0] sv2v_uu_i_axi_shim_ext_wr_blen_i_0 = 1'sb0;
	// removed localparam type sv2v_uu_i_axi_shim_wr_size_i
	localparam [2:0] sv2v_uu_i_axi_shim_ext_wr_size_i_0 = 1'sb0;
	// removed localparam type sv2v_uu_i_axi_shim_wr_id_i
	localparam [sv2v_uu_i_axi_shim_CVA6Cfg[16680-:32] - 1:0] sv2v_uu_i_axi_shim_ext_wr_id_i_0 = 1'sb0;
	// removed localparam type sv2v_uu_i_axi_shim_wr_lock_i
	localparam [0:0] sv2v_uu_i_axi_shim_ext_wr_lock_i_0 = 1'sb0;
	// removed localparam type sv2v_uu_i_axi_shim_wr_atop_i
	localparam [5:0] sv2v_uu_i_axi_shim_ext_wr_atop_i_0 = 1'sb0;
	// removed localparam type sv2v_uu_i_axi_shim_wr_rdy_i
	localparam [0:0] sv2v_uu_i_axi_shim_ext_wr_rdy_i_0 = 1'sb0;
	axi_shim_C0833_57DBF #(
		.axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth(axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth),
		.axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth(axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth),
		.axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth(axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth),
		.axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth(axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth),
		.axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth(axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth),
		.axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth(axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth),
		.axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth(axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth),
		.axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth(axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth),
		.CVA6Cfg(CVA6Cfg),
		.AxiNumWords(AxiNumWords)
	) i_axi_shim(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.rd_req_i(axi_rd_req),
		.rd_gnt_o(axi_rd_gnt),
		.rd_addr_i(axi_rd_addr),
		.rd_blen_i(axi_rd_blen),
		.rd_size_i(axi_rd_size),
		.rd_id_i(axi_rd_id_in),
		.rd_rdy_i(axi_rd_rdy),
		.rd_lock_i(axi_rd_lock),
		.rd_last_o(axi_rd_last),
		.rd_valid_o(axi_rd_valid),
		.rd_data_o(axi_rd_data),
		.rd_user_o(),
		.rd_id_o(axi_rd_id_out),
		.rd_exokay_o(axi_rd_exokay),
		.wr_req_i(sv2v_uu_i_axi_shim_ext_wr_req_i_0),
		.wr_gnt_o(),
		.wr_addr_i(sv2v_uu_i_axi_shim_ext_wr_addr_i_0),
		.wr_data_i(sv2v_uu_i_axi_shim_ext_wr_data_i_0),
		.wr_user_i(sv2v_uu_i_axi_shim_ext_wr_user_i_0),
		.wr_be_i(sv2v_uu_i_axi_shim_ext_wr_be_i_0),
		.wr_blen_i(sv2v_uu_i_axi_shim_ext_wr_blen_i_0),
		.wr_size_i(sv2v_uu_i_axi_shim_ext_wr_size_i_0),
		.wr_id_i(sv2v_uu_i_axi_shim_ext_wr_id_i_0),
		.wr_lock_i(sv2v_uu_i_axi_shim_ext_wr_lock_i_0),
		.wr_atop_i(sv2v_uu_i_axi_shim_ext_wr_atop_i_0),
		.wr_rdy_i(sv2v_uu_i_axi_shim_ext_wr_rdy_i_0),
		.wr_valid_o(),
		.wr_id_o(),
		.wr_exokay_o(),
		.axi_req_o(axi_req_o),
		.axi_resp_i(axi_resp_i)
	);
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:180:3
	always @(*) begin : p_axi_rtrn_shift
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:181:5
		first_d = first_q;
		// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:182:5
		rd_shift_d = rd_shift_q;
		// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:184:5
		if (axi_rd_valid) begin
			// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:185:7
			first_d = axi_rd_last;
			// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:186:7
			if (CVA6Cfg[1190-:32] == CVA6Cfg[16712-:32])
				// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:187:9
				rd_shift_d = axi_rd_data;
			else
				// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:189:9
				rd_shift_d = {axi_rd_data, rd_shift_q[CVA6Cfg[16712-:32] * ((((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1) >= 1 ? (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1 : (((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1) + (((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1) >= 1 ? (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1 : 3 - (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]))) - 1) - ((((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1) >= 1 ? (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1 : 3 - (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32])) - 1))+:CVA6Cfg[16712-:32] * (((CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1) >= 1 ? (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]) - 1 : 3 - (CVA6Cfg[1190-:32] / CVA6Cfg[16712-:32]))]};
			if (first_q)
				// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:194:9
				rd_shift_d[0+:CVA6Cfg[16712-:32]] = axi_rd_data;
		end
	end
	// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:200:3
	always @(posedge clk_i or negedge rst_ni) begin : p_rd_buf
		// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:201:5
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:202:7
			req_valid_q <= 1'b0;
			// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:203:7
			req_data_q <= 1'sb0;
			// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:204:7
			first_q <= 1'b1;
			// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:205:7
			rd_shift_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:207:7
			req_valid_q <= req_valid_d;
			// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:208:7
			req_data_q <= req_data_d;
			// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:209:7
			first_q <= first_d;
			// Trace: core/cache_subsystem/cva6_icache_axi_wrapper.sv:210:7
			rd_shift_q <= rd_shift_d;
		end
	end
	initial _sv2v_0 = 0;
endmodule
