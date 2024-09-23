module axi_adapter_98594_FF811 (
	clk_i,
	rst_ni,
	req_i,
	type_i,
	amo_i,
	gnt_o,
	addr_i,
	we_i,
	wdata_i,
	be_i,
	size_i,
	id_i,
	valid_o,
	rdata_o,
	id_o,
	critical_word_o,
	critical_word_valid_o,
	axi_req_o,
	axi_resp_i
);
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth_type
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth_type
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth_type
	// removed localparam type axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth_type
	// removed localparam type axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth_type
	// removed localparam type axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth = 0;
	reg _sv2v_0;
	// Trace: core/cache_subsystem/axi_adapter.sv:20:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/cache_subsystem/axi_adapter.sv:21:15
	parameter [31:0] DATA_WIDTH = 256;
	// Trace: core/cache_subsystem/axi_adapter.sv:22:15
	parameter [0:0] CRITICAL_WORD_FIRST = 0;
	// Trace: core/cache_subsystem/axi_adapter.sv:23:15
	parameter [31:0] CACHELINE_BYTE_OFFSET = 8;
	// Trace: core/cache_subsystem/axi_adapter.sv:24:20
	// removed localparam type axi_req_t
	// Trace: core/cache_subsystem/axi_adapter.sv:25:20
	// removed localparam type axi_rsp_t
	// Trace: core/cache_subsystem/axi_adapter.sv:27:5
	input wire clk_i;
	// Trace: core/cache_subsystem/axi_adapter.sv:28:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/axi_adapter.sv:30:5
	input wire req_i;
	// Trace: core/cache_subsystem/axi_adapter.sv:31:5
	// removed localparam type ariane_pkg_ad_req_t
	input wire type_i;
	// Trace: core/cache_subsystem/axi_adapter.sv:32:5
	// removed localparam type ariane_pkg_amo_t
	input wire [3:0] amo_i;
	// Trace: core/cache_subsystem/axi_adapter.sv:33:5
	output reg gnt_o;
	// Trace: core/cache_subsystem/axi_adapter.sv:34:5
	input wire [CVA6Cfg[17102-:32] - 1:0] addr_i;
	// Trace: core/cache_subsystem/axi_adapter.sv:35:5
	input wire we_i;
	// Trace: core/cache_subsystem/axi_adapter.sv:36:5
	input wire [((DATA_WIDTH / CVA6Cfg[16712-:32]) * CVA6Cfg[16712-:32]) - 1:0] wdata_i;
	// Trace: core/cache_subsystem/axi_adapter.sv:37:5
	input wire [((DATA_WIDTH / CVA6Cfg[16712-:32]) * (CVA6Cfg[16712-:32] / 8)) - 1:0] be_i;
	// Trace: core/cache_subsystem/axi_adapter.sv:38:5
	input wire [1:0] size_i;
	// Trace: core/cache_subsystem/axi_adapter.sv:39:5
	input wire [CVA6Cfg[16680-:32] - 1:0] id_i;
	// Trace: core/cache_subsystem/axi_adapter.sv:41:5
	output reg valid_o;
	// Trace: core/cache_subsystem/axi_adapter.sv:42:5
	output reg [((DATA_WIDTH / CVA6Cfg[16712-:32]) * CVA6Cfg[16712-:32]) - 1:0] rdata_o;
	// Trace: core/cache_subsystem/axi_adapter.sv:43:5
	output reg [CVA6Cfg[16680-:32] - 1:0] id_o;
	// Trace: core/cache_subsystem/axi_adapter.sv:45:5
	output reg [CVA6Cfg[16712-:32] - 1:0] critical_word_o;
	// Trace: core/cache_subsystem/axi_adapter.sv:46:5
	output reg critical_word_valid_o;
	// Trace: core/cache_subsystem/axi_adapter.sv:48:5
	output reg [(((((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) + (((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 2) + (((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth)) + 1:0] axi_req_o;
	// Trace: core/cache_subsystem/axi_adapter.sv:49:5
	input wire [(((4 + ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) + 1) + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth)) - 1:0] axi_resp_i;
	// Trace: core/cache_subsystem/axi_adapter.sv:51:3
	localparam BURST_SIZE = (DATA_WIDTH / CVA6Cfg[16712-:32]) - 1;
	// Trace: core/cache_subsystem/axi_adapter.sv:52:3
	localparam ADDR_INDEX = ($clog2(DATA_WIDTH / CVA6Cfg[16712-:32]) > 0 ? $clog2(DATA_WIDTH / CVA6Cfg[16712-:32]) : 1);
	// Trace: core/cache_subsystem/axi_adapter.sv:57:3
	localparam MAX_OUTSTANDING_AW = CVA6Cfg[1353-:32];
	// Trace: core/cache_subsystem/axi_adapter.sv:58:3
	localparam MAX_OUTSTANDING_AW_CNT_WIDTH = ($clog2(MAX_OUTSTANDING_AW + 1) > 0 ? $clog2(MAX_OUTSTANDING_AW + 1) : 1);
	// Trace: core/cache_subsystem/axi_adapter.sv:64:3
	// removed localparam type outstanding_aw_cnt_t
	// Trace: core/cache_subsystem/axi_adapter.sv:66:3
	reg [3:0] state_q;
	reg [3:0] state_d;
	// Trace: core/cache_subsystem/axi_adapter.sv:81:3
	reg [ADDR_INDEX - 1:0] cnt_d;
	reg [ADDR_INDEX - 1:0] cnt_q;
	// Trace: core/cache_subsystem/axi_adapter.sv:82:3
	reg [((DATA_WIDTH / CVA6Cfg[16712-:32]) * CVA6Cfg[16712-:32]) - 1:0] cache_line_d;
	reg [((DATA_WIDTH / CVA6Cfg[16712-:32]) * CVA6Cfg[16712-:32]) - 1:0] cache_line_q;
	// Trace: core/cache_subsystem/axi_adapter.sv:85:3
	reg [(DATA_WIDTH / CVA6Cfg[16712-:32]) - 1:0] addr_offset_d;
	reg [(DATA_WIDTH / CVA6Cfg[16712-:32]) - 1:0] addr_offset_q;
	// Trace: core/cache_subsystem/axi_adapter.sv:86:3
	reg [CVA6Cfg[16680-:32] - 1:0] id_d;
	reg [CVA6Cfg[16680-:32] - 1:0] id_q;
	// Trace: core/cache_subsystem/axi_adapter.sv:87:3
	reg [ADDR_INDEX - 1:0] index;
	// Trace: core/cache_subsystem/axi_adapter.sv:89:3
	reg [3:0] amo_d;
	reg [3:0] amo_q;
	// Trace: core/cache_subsystem/axi_adapter.sv:90:3
	reg [1:0] size_d;
	reg [1:0] size_q;
	// Trace: core/cache_subsystem/axi_adapter.sv:92:3
	reg [MAX_OUTSTANDING_AW_CNT_WIDTH - 1:0] outstanding_aw_cnt_q;
	reg [MAX_OUTSTANDING_AW_CNT_WIDTH - 1:0] outstanding_aw_cnt_d;
	// Trace: core/cache_subsystem/axi_adapter.sv:93:3
	wire any_outstanding_aw;
	// Trace: core/cache_subsystem/axi_adapter.sv:95:3
	assign any_outstanding_aw = outstanding_aw_cnt_q != {MAX_OUTSTANDING_AW_CNT_WIDTH {1'sb0}};
	// Trace: core/cache_subsystem/axi_adapter.sv:97:3
	localparam axi_pkg_ATOP_ADD = 3'b000;
	localparam axi_pkg_ATOP_ATOMICLOAD = 2'b10;
	localparam axi_pkg_ATOP_ATOMICSWAP = 6'b110000;
	localparam axi_pkg_ATOP_CLR = 3'b001;
	localparam axi_pkg_ATOP_EOR = 3'b010;
	localparam axi_pkg_ATOP_LITTLE_END = 1'b0;
	localparam axi_pkg_ATOP_NONE = 2'b00;
	localparam axi_pkg_ATOP_SET = 3'b011;
	localparam axi_pkg_ATOP_SMAX = 3'b100;
	localparam axi_pkg_ATOP_SMIN = 3'b101;
	localparam axi_pkg_ATOP_UMAX = 3'b110;
	localparam axi_pkg_ATOP_UMIN = 3'b111;
	// removed localparam type axi_pkg_atop_t
	function automatic [5:0] atop_from_amo;
		// Trace: core/cache_subsystem/axi_adapter.sv:483:52
		input reg [3:0] amo;
		// Trace: core/cache_subsystem/axi_adapter.sv:484:5
		reg [5:0] result;
		begin
			result = 6'b000000;
			// Trace: core/cache_subsystem/axi_adapter.sv:486:5
			(* full_case, parallel_case *)
			case (amo)
				4'b0000:
					// Trace: core/cache_subsystem/axi_adapter.sv:487:29
					result = {axi_pkg_ATOP_NONE, 4'b0000};
				4'b0011:
					// Trace: core/cache_subsystem/axi_adapter.sv:488:29
					result = {axi_pkg_ATOP_ATOMICSWAP};
				4'b0100:
					// Trace: core/cache_subsystem/axi_adapter.sv:490:7
					result = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_ADD};
				4'b0101:
					// Trace: core/cache_subsystem/axi_adapter.sv:492:7
					result = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_CLR};
				4'b0110:
					// Trace: core/cache_subsystem/axi_adapter.sv:494:7
					result = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_SET};
				4'b0111:
					// Trace: core/cache_subsystem/axi_adapter.sv:496:7
					result = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_EOR};
				4'b1000:
					// Trace: core/cache_subsystem/axi_adapter.sv:498:7
					result = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_SMAX};
				4'b1001:
					// Trace: core/cache_subsystem/axi_adapter.sv:500:7
					result = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_UMAX};
				4'b1010:
					// Trace: core/cache_subsystem/axi_adapter.sv:502:7
					result = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_SMIN};
				4'b1011:
					// Trace: core/cache_subsystem/axi_adapter.sv:504:7
					result = {axi_pkg_ATOP_ATOMICLOAD, axi_pkg_ATOP_LITTLE_END, axi_pkg_ATOP_UMIN};
				4'b1100:
					// Trace: core/cache_subsystem/axi_adapter.sv:505:29
					result = {axi_pkg_ATOP_NONE, 4'b0000};
				4'b1101:
					// Trace: core/cache_subsystem/axi_adapter.sv:506:29
					result = {axi_pkg_ATOP_NONE, 4'b0000};
				default:
					// Trace: core/cache_subsystem/axi_adapter.sv:507:16
					result = 6'b000000;
			endcase
			atop_from_amo = result;
		end
	endfunction
	function automatic amo_returns_data;
		// Trace: core/cache_subsystem/axi_adapter.sv:513:45
		input reg [3:0] amo;
		// Trace: core/cache_subsystem/axi_adapter.sv:514:5
		reg [5:0] atop;
		// Trace: core/cache_subsystem/axi_adapter.sv:515:5
		reg is_load;
		// Trace: core/cache_subsystem/axi_adapter.sv:516:5
		reg is_swap_or_cmp;
		begin
			atop = atop_from_amo(amo);
			is_load = atop[5:4] == axi_pkg_ATOP_ATOMICLOAD;
			is_swap_or_cmp = atop[5:4] == axi_pkg_ATOP_ATOMICSWAP[5:4];
			// Trace: core/cache_subsystem/axi_adapter.sv:517:5
			amo_returns_data = is_load || is_swap_or_cmp;
		end
	endfunction
	localparam axi_pkg_BURST_INCR = 2'b01;
	localparam axi_pkg_BURST_WRAP = 2'b10;
	localparam axi_pkg_CACHE_MODIFIABLE = 4'b0010;
	localparam axi_pkg_RESP_EXOKAY = 2'b01;
	always @(*) begin : axi_fsm
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/axi_adapter.sv:99:5
		axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b0;
		// Trace: core/cache_subsystem/axi_adapter.sv:101:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) >= (35 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) - (35 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((35 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) + 1)] = addr_i;
		// Trace: core/cache_subsystem/axi_adapter.sv:102:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (7 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)))-:((7 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) >= (14 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) - (14 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((14 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9))) + 1)] = 3'b000;
		// Trace: core/cache_subsystem/axi_adapter.sv:103:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9) >= (6 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9) - (6 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((6 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) + 1)] = 4'b0000;
		// Trace: core/cache_subsystem/axi_adapter.sv:104:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (27 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (27 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((27 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = 8'b00000000;
		// Trace: core/cache_subsystem/axi_adapter.sv:105:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (17 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)))-:((17 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) >= (24 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((17 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)) - (24 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((24 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (17 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9))) + 1)] = {1'b0, size_i};
		// Trace: core/cache_subsystem/axi_adapter.sv:106:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (18 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((18 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (22 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((18 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (22 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((22 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (18 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = axi_pkg_BURST_INCR;
		// Trace: core/cache_subsystem/axi_adapter.sv:107:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (12 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)))] = 1'b0;
		// Trace: core/cache_subsystem/axi_adapter.sv:108:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (15 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((15 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (17 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((15 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (17 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((17 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (15 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = axi_pkg_CACHE_MODIFIABLE;
		// Trace: core/cache_subsystem/axi_adapter.sv:109:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (8 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((8 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (10 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((8 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (10 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((10 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (8 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = 4'b0000;
		// Trace: core/cache_subsystem/axi_adapter.sv:110:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) >= (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (35 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))))) + 1)] = id_i;
		// Trace: core/cache_subsystem/axi_adapter.sv:111:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5) >= (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) + 1 : ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) + 1)] = atop_from_amo(amo_i);
		// Trace: core/cache_subsystem/axi_adapter.sv:112:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth - 1))-:axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth] = 1'sb0;
		// Trace: core/cache_subsystem/axi_adapter.sv:114:5
		axi_req_o[1] = 1'b0;
		// Trace: core/cache_subsystem/axi_adapter.sv:116:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) >= (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) - (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) + 1)] = addr_i;
		// Trace: core/cache_subsystem/axi_adapter.sv:119:5
		if (!CRITICAL_WORD_FIRST && (type_i != 1'd0))
			// Trace: core/cache_subsystem/axi_adapter.sv:120:7
			axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) - ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth - 1) - (CACHELINE_BYTE_OFFSET - 1)))):((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth - 1)))] = 1'sb0;
		// Trace: core/cache_subsystem/axi_adapter.sv:122:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (7 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)))-:((7 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) >= (8 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) - (8 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((8 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3))) + 1)] = 3'b000;
		// Trace: core/cache_subsystem/axi_adapter.sv:123:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3) >= (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) + 1 : ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) + 1)] = 4'b0000;
		// Trace: core/cache_subsystem/axi_adapter.sv:124:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))-:((21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1)] = 8'b00000000;
		// Trace: core/cache_subsystem/axi_adapter.sv:125:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (17 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)))-:((17 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) >= (18 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((17 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)) - (18 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((18 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (17 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3))) + 1)] = {1'b0, size_i};
		// Trace: core/cache_subsystem/axi_adapter.sv:126:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (10 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))-:((10 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (16 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((10 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (16 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((16 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (10 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1)] = (CRITICAL_WORD_FIRST ? axi_pkg_BURST_WRAP : axi_pkg_BURST_INCR);
		// Trace: core/cache_subsystem/axi_adapter.sv:127:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (12 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)))] = 1'b0;
		// Trace: core/cache_subsystem/axi_adapter.sv:128:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (7 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))-:((7 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (11 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((7 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (11 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((11 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (7 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1)] = axi_pkg_CACHE_MODIFIABLE;
		// Trace: core/cache_subsystem/axi_adapter.sv:129:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7) >= (4 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7) - (4 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((4 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) + 1)] = 4'b0000;
		// Trace: core/cache_subsystem/axi_adapter.sv:130:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) >= (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth + (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))))) + 1)] = id_i;
		// Trace: core/cache_subsystem/axi_adapter.sv:131:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth - 1))-:axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth] = 1'sb0;
		// Trace: core/cache_subsystem/axi_adapter.sv:133:5
		axi_req_o[2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b0;
		// Trace: core/cache_subsystem/axi_adapter.sv:134:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) >= (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1)] = wdata_i[0+:CVA6Cfg[16712-:32]];
		// Trace: core/cache_subsystem/axi_adapter.sv:135:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) >= (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1)] = be_i[0+:CVA6Cfg[16712-:32] / 8];
		// Trace: core/cache_subsystem/axi_adapter.sv:136:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))] = 1'b0;
		// Trace: core/cache_subsystem/axi_adapter.sv:137:5
		axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth - 1))-:axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth] = 1'sb0;
		// Trace: core/cache_subsystem/axi_adapter.sv:139:5
		axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b0;
		// Trace: core/cache_subsystem/axi_adapter.sv:140:5
		axi_req_o[0] = 1'b0;
		// Trace: core/cache_subsystem/axi_adapter.sv:142:5
		gnt_o = 1'b0;
		// Trace: core/cache_subsystem/axi_adapter.sv:143:5
		valid_o = 1'b0;
		// Trace: core/cache_subsystem/axi_adapter.sv:144:5
		id_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) >= (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)))) + 1)];
		// Trace: core/cache_subsystem/axi_adapter.sv:146:5
		critical_word_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) >= (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) - (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) + 1)];
		// Trace: core/cache_subsystem/axi_adapter.sv:147:5
		critical_word_valid_o = 1'b0;
		// Trace: core/cache_subsystem/axi_adapter.sv:148:5
		rdata_o = cache_line_q;
		// Trace: core/cache_subsystem/axi_adapter.sv:150:5
		state_d = state_q;
		// Trace: core/cache_subsystem/axi_adapter.sv:151:5
		cnt_d = cnt_q;
		// Trace: core/cache_subsystem/axi_adapter.sv:152:5
		cache_line_d = cache_line_q;
		// Trace: core/cache_subsystem/axi_adapter.sv:153:5
		addr_offset_d = addr_offset_q;
		// Trace: core/cache_subsystem/axi_adapter.sv:154:5
		id_d = id_q;
		// Trace: core/cache_subsystem/axi_adapter.sv:155:5
		amo_d = amo_q;
		// Trace: core/cache_subsystem/axi_adapter.sv:156:5
		size_d = size_q;
		// Trace: core/cache_subsystem/axi_adapter.sv:157:5
		index = 1'sb0;
		// Trace: core/cache_subsystem/axi_adapter.sv:159:5
		outstanding_aw_cnt_d = outstanding_aw_cnt_q;
		case (state_q)
			4'd0: begin
				// Trace: core/cache_subsystem/axi_adapter.sv:164:9
				cnt_d = 1'sb0;
				// Trace: core/cache_subsystem/axi_adapter.sv:166:9
				if (req_i) begin
					begin
						// Trace: core/cache_subsystem/axi_adapter.sv:169:11
						if (we_i) begin
							begin
								// Trace: core/cache_subsystem/axi_adapter.sv:173:13
								if (!any_outstanding_aw || ((id_i == id_q) && (amo_i == 4'b0000))) begin
									// Trace: core/cache_subsystem/axi_adapter.sv:175:15
									axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b1;
									// Trace: core/cache_subsystem/axi_adapter.sv:176:15
									axi_req_o[2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b1;
									// Trace: core/cache_subsystem/axi_adapter.sv:178:15
									axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (12 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 9)))] = amo_i == 4'b0010;
									// Trace: core/cache_subsystem/axi_adapter.sv:180:15
									if (type_i == 1'd0) begin
										// Trace: core/cache_subsystem/axi_adapter.sv:182:17
										axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))] = 1'b1;
										// Trace: core/cache_subsystem/axi_adapter.sv:184:17
										gnt_o = axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))] & axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))];
										// Trace: core/cache_subsystem/axi_adapter.sv:185:17
										case ({axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]})
											2'b11:
												// Trace: core/cache_subsystem/axi_adapter.sv:188:28
												state_d = 4'd1;
											2'b01:
												// Trace: core/cache_subsystem/axi_adapter.sv:189:28
												state_d = 4'd2;
											2'b10:
												// Trace: core/cache_subsystem/axi_adapter.sv:190:28
												state_d = 4'd3;
											default:
												// Trace: core/cache_subsystem/axi_adapter.sv:191:28
												state_d = 4'd0;
										endcase
										if (axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) begin
											// Trace: core/cache_subsystem/axi_adapter.sv:195:19
											id_d = id_i;
											// Trace: core/cache_subsystem/axi_adapter.sv:196:19
											amo_d = amo_i;
											// Trace: core/cache_subsystem/axi_adapter.sv:197:19
											size_d = size_i;
										end
									end
									else begin
										// Trace: core/cache_subsystem/axi_adapter.sv:203:17
										// Trace: core/cache_subsystem/axi_adapter.sv:206:17
										axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (27 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (27 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((27 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = BURST_SIZE[7:0];
										// Trace: core/cache_subsystem/axi_adapter.sv:207:17
										axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) >= (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1)] = wdata_i[0+:CVA6Cfg[16712-:32]];
										// Trace: core/cache_subsystem/axi_adapter.sv:208:17
										axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) >= (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1)] = be_i[0+:CVA6Cfg[16712-:32] / 8];
										if (axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))])
											// Trace: core/cache_subsystem/axi_adapter.sv:210:41
											cnt_d = BURST_SIZE[ADDR_INDEX - 1:0] - 1;
										else
											// Trace: core/cache_subsystem/axi_adapter.sv:211:22
											cnt_d = BURST_SIZE[ADDR_INDEX - 1:0];
										case ({axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]})
											2'b11:
												// Trace: core/cache_subsystem/axi_adapter.sv:216:28
												state_d = 4'd3;
											2'b01:
												// Trace: core/cache_subsystem/axi_adapter.sv:217:28
												state_d = 4'd4;
											2'b10:
												// Trace: core/cache_subsystem/axi_adapter.sv:218:28
												state_d = 4'd3;
											default:
												;
										endcase
									end
								end
							end
						end
						else
							// Trace: core/cache_subsystem/axi_adapter.sv:226:13
							if (!any_outstanding_aw) begin
								// Trace: core/cache_subsystem/axi_adapter.sv:228:15
								axi_req_o[1] = 1'b1;
								// Trace: core/cache_subsystem/axi_adapter.sv:230:15
								axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (12 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 3)))] = amo_i == 4'b0001;
								// Trace: core/cache_subsystem/axi_adapter.sv:232:15
								gnt_o = axi_resp_i[3 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))];
								// Trace: core/cache_subsystem/axi_adapter.sv:233:15
								if (type_i != 1'd0) begin
									// Trace: core/cache_subsystem/axi_adapter.sv:234:17
									// Trace: core/cache_subsystem/axi_adapter.sv:237:17
									axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)))-:((21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) >= (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7)) - (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (21 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 7))) + 1)] = BURST_SIZE[7:0];
									// Trace: core/cache_subsystem/axi_adapter.sv:238:17
									cnt_d = BURST_SIZE[ADDR_INDEX - 1:0];
								end
								if (axi_resp_i[3 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) begin
									// Trace: core/cache_subsystem/axi_adapter.sv:242:17
									state_d = (type_i == 1'd0 ? 4'd6 : 4'd7);
									// Trace: core/cache_subsystem/axi_adapter.sv:243:17
									addr_offset_d = addr_i[ADDR_INDEX + 2:3];
								end
							end
					end
				end
			end
			4'd2: begin
				// Trace: core/cache_subsystem/axi_adapter.sv:252:9
				axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b1;
				// Trace: core/cache_subsystem/axi_adapter.sv:254:9
				if (axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) begin
					// Trace: core/cache_subsystem/axi_adapter.sv:255:11
					gnt_o = 1'b1;
					// Trace: core/cache_subsystem/axi_adapter.sv:256:11
					state_d = 4'd1;
					// Trace: core/cache_subsystem/axi_adapter.sv:257:11
					id_d = id_i;
					// Trace: core/cache_subsystem/axi_adapter.sv:258:11
					amo_d = amo_i;
					// Trace: core/cache_subsystem/axi_adapter.sv:259:11
					size_d = size_i;
				end
			end
			4'd4: begin
				// Trace: core/cache_subsystem/axi_adapter.sv:265:9
				axi_req_o[2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b1;
				// Trace: core/cache_subsystem/axi_adapter.sv:266:9
				axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))] = cnt_q == {ADDR_INDEX {1'sb0}};
				// Trace: core/cache_subsystem/axi_adapter.sv:267:9
				if (type_i == 1'd0) begin
					// Trace: core/cache_subsystem/axi_adapter.sv:268:11
					axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) >= (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1)] = wdata_i[0+:CVA6Cfg[16712-:32]];
					// Trace: core/cache_subsystem/axi_adapter.sv:269:11
					axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) >= (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1)] = be_i[0+:CVA6Cfg[16712-:32] / 8];
				end
				else begin
					// Trace: core/cache_subsystem/axi_adapter.sv:271:11
					axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) >= (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1)] = wdata_i[(BURST_SIZE[ADDR_INDEX - 1:0] - cnt_q) * CVA6Cfg[16712-:32]+:CVA6Cfg[16712-:32]];
					// Trace: core/cache_subsystem/axi_adapter.sv:272:11
					axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) >= (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1)] = be_i[(BURST_SIZE[ADDR_INDEX - 1:0] - cnt_q) * (CVA6Cfg[16712-:32] / 8)+:CVA6Cfg[16712-:32] / 8];
				end
				// Trace: core/cache_subsystem/axi_adapter.sv:274:9
				axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b1;
				// Trace: core/cache_subsystem/axi_adapter.sv:276:9
				axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (27 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (27 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((27 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = BURST_SIZE[7:0];
				case ({axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))], axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]})
					2'b01:
						// Trace: core/cache_subsystem/axi_adapter.sv:284:13
						if (cnt_q == 0)
							// Trace: core/cache_subsystem/axi_adapter.sv:284:29
							state_d = 4'd5;
						else
							// Trace: core/cache_subsystem/axi_adapter.sv:286:15
							cnt_d = cnt_q - 1;
					2'b10:
						// Trace: core/cache_subsystem/axi_adapter.sv:288:20
						state_d = 4'd3;
					2'b11:
						// Trace: core/cache_subsystem/axi_adapter.sv:291:13
						if (cnt_q == 0) begin
							// Trace: core/cache_subsystem/axi_adapter.sv:292:15
							state_d = 4'd1;
							// Trace: core/cache_subsystem/axi_adapter.sv:293:15
							gnt_o = 1'b1;
						end
						else begin
							// Trace: core/cache_subsystem/axi_adapter.sv:296:15
							state_d = 4'd3;
							// Trace: core/cache_subsystem/axi_adapter.sv:297:15
							cnt_d = cnt_q - 1;
						end
					default:
						;
				endcase
			end
			4'd5: begin
				// Trace: core/cache_subsystem/axi_adapter.sv:307:9
				axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)))] = 1'b1;
				// Trace: core/cache_subsystem/axi_adapter.sv:308:9
				axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 35) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)))-:((29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) >= (27 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5)) - (27 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((27 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (29 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 5))) + 1)] = BURST_SIZE[7:0];
				// Trace: core/cache_subsystem/axi_adapter.sv:310:9
				if (axi_resp_i[4 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) begin
					// Trace: core/cache_subsystem/axi_adapter.sv:311:11
					state_d = 4'd1;
					// Trace: core/cache_subsystem/axi_adapter.sv:312:11
					gnt_o = 1'b1;
				end
			end
			4'd3: begin
				// Trace: core/cache_subsystem/axi_adapter.sv:318:9
				axi_req_o[2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b1;
				// Trace: core/cache_subsystem/axi_adapter.sv:320:9
				if (type_i != 1'd0) begin
					// Trace: core/cache_subsystem/axi_adapter.sv:321:11
					axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) >= (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))) + 1)] = wdata_i[(BURST_SIZE[ADDR_INDEX - 1:0] - cnt_q) * CVA6Cfg[16712-:32]+:CVA6Cfg[16712-:32]];
					// Trace: core/cache_subsystem/axi_adapter.sv:322:11
					axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)))-:((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) >= (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) ? ((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1 : ((1 + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0)) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth + (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))) + 1)] = be_i[(BURST_SIZE[ADDR_INDEX - 1:0] - cnt_q) * (CVA6Cfg[16712-:32] / 8)+:CVA6Cfg[16712-:32] / 8];
				end
				if (cnt_q == {ADDR_INDEX {1'sb0}}) begin
					// Trace: core/cache_subsystem/axi_adapter.sv:327:11
					axi_req_o[((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + (2 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1))) - (((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_DataWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_StrbWidth) + 1) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) - 1) - (axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth + 0))] = 1'b1;
					// Trace: core/cache_subsystem/axi_adapter.sv:328:11
					if (axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) begin
						// Trace: core/cache_subsystem/axi_adapter.sv:329:13
						state_d = 4'd1;
						// Trace: core/cache_subsystem/axi_adapter.sv:330:13
						gnt_o = 1'b1;
					end
				end
				else if (axi_resp_i[2 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))])
					// Trace: core/cache_subsystem/axi_adapter.sv:333:11
					cnt_d = cnt_q - 1;
			end
			4'd1: begin
				// Trace: core/cache_subsystem/axi_adapter.sv:339:9
				id_o = axi_resp_i[(((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1)))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1)) >= (2 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1)) - (2 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((2 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1))) + 1)];
				// Trace: core/cache_subsystem/axi_adapter.sv:342:9
				if (axi_resp_i[1 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))] && !any_outstanding_aw) begin
					// Trace: core/cache_subsystem/axi_adapter.sv:343:11
					axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b1;
					// Trace: core/cache_subsystem/axi_adapter.sv:347:11
					if (amo_returns_data(amo_q)) begin
						begin
							// Trace: core/cache_subsystem/axi_adapter.sv:348:13
							if (axi_resp_i[(((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0]) begin
								// Trace: core/cache_subsystem/axi_adapter.sv:350:15
								valid_o = 1'b1;
								// Trace: core/cache_subsystem/axi_adapter.sv:351:15
								axi_req_o[0] = 1'b1;
								// Trace: core/cache_subsystem/axi_adapter.sv:352:15
								state_d = 4'd0;
								// Trace: core/cache_subsystem/axi_adapter.sv:353:15
								rdata_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) >= (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) - (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) + 1)];
							end
							else
								// Trace: core/cache_subsystem/axi_adapter.sv:356:15
								state_d = 4'd9;
						end
					end
					else begin
						// Trace: core/cache_subsystem/axi_adapter.sv:359:13
						valid_o = 1'b1;
						// Trace: core/cache_subsystem/axi_adapter.sv:360:13
						state_d = 4'd0;
						// Trace: core/cache_subsystem/axi_adapter.sv:363:13
						if (amo_q == 4'b0010) begin
							begin
								// Trace: core/cache_subsystem/axi_adapter.sv:364:15
								if (axi_resp_i[(((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0)) - ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1) >= (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) + 1 : ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 1)) + 1)] == axi_pkg_RESP_EXOKAY)
									// Trace: core/cache_subsystem/axi_adapter.sv:366:17
									rdata_o = 'b0;
								else
									// Trace: core/cache_subsystem/axi_adapter.sv:372:17
									rdata_o = (size_q == 2'b10 ? (1'b1 << 32) | 64'b0000000000000000000000000000000000000000000000000000000000000001 : 64'b0000000000000000000000000000000000000000000000000000000000000001);
							end
						end
					end
				end
				else
					// Trace: core/cache_subsystem/axi_adapter.sv:379:11
					if ((amo_q == 4'b0000) && (outstanding_aw_cnt_q != MAX_OUTSTANDING_AW)) begin
						// Trace: core/cache_subsystem/axi_adapter.sv:380:13
						state_d = 4'd0;
						// Trace: core/cache_subsystem/axi_adapter.sv:381:13
						outstanding_aw_cnt_d = outstanding_aw_cnt_q + 1;
					end
			end
			4'd9:
				// Trace: core/cache_subsystem/axi_adapter.sv:389:9
				if (axi_resp_i[(((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0]) begin
					// Trace: core/cache_subsystem/axi_adapter.sv:390:11
					axi_req_o[0] = 1'b1;
					// Trace: core/cache_subsystem/axi_adapter.sv:391:11
					state_d = 4'd0;
					// Trace: core/cache_subsystem/axi_adapter.sv:392:11
					valid_o = 1'b1;
					// Trace: core/cache_subsystem/axi_adapter.sv:393:11
					rdata_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) >= (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) - (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) + 1)];
				end
			4'd7, 4'd6: begin
				// Trace: core/cache_subsystem/axi_adapter.sv:399:9
				if (CRITICAL_WORD_FIRST)
					// Trace: core/cache_subsystem/axi_adapter.sv:399:34
					index = addr_offset_q + (BURST_SIZE[ADDR_INDEX - 1:0] - cnt_q);
				else
					// Trace: core/cache_subsystem/axi_adapter.sv:400:14
					index = BURST_SIZE[ADDR_INDEX - 1:0] - cnt_q;
				// Trace: core/cache_subsystem/axi_adapter.sv:403:9
				axi_req_o[0] = 1'b1;
				if (axi_resp_i[(((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0]) begin
					// Trace: core/cache_subsystem/axi_adapter.sv:406:11
					if (CRITICAL_WORD_FIRST) begin
						begin
							// Trace: core/cache_subsystem/axi_adapter.sv:408:13
							if ((state_q == 4'd7) && (cnt_q == BURST_SIZE)) begin
								// Trace: core/cache_subsystem/axi_adapter.sv:409:15
								critical_word_valid_o = 1'b1;
								// Trace: core/cache_subsystem/axi_adapter.sv:410:15
								critical_word_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) >= (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) - (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) + 1)];
							end
						end
					end
					else
						// Trace: core/cache_subsystem/axi_adapter.sv:414:13
						if (index == addr_offset_q) begin
							// Trace: core/cache_subsystem/axi_adapter.sv:415:15
							critical_word_valid_o = 1'b1;
							// Trace: core/cache_subsystem/axi_adapter.sv:416:15
							critical_word_o = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) >= (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) - (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) + 1)];
						end
					if (axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))]) begin
						// Trace: core/cache_subsystem/axi_adapter.sv:422:13
						id_d = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) >= (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)))) + 1 : ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)))) + 1)];
						// Trace: core/cache_subsystem/axi_adapter.sv:423:13
						state_d = 4'd8;
					end
					if (state_q == 4'd7)
						// Trace: core/cache_subsystem/axi_adapter.sv:428:13
						cache_line_d[index * CVA6Cfg[16712-:32]+:CVA6Cfg[16712-:32]] = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) >= (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) - (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) + 1)];
					else
						// Trace: core/cache_subsystem/axi_adapter.sv:430:20
						cache_line_d[0+:CVA6Cfg[16712-:32]] = axi_resp_i[((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) - 1) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)))-:((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) >= (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) ? ((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2)) - (3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0))) + 1 : ((3 + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 0)) - (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth + (axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth + 2))) + 1)];
					// Trace: core/cache_subsystem/axi_adapter.sv:433:11
					cnt_d = cnt_q - 1;
				end
			end
			4'd8: begin
				// Trace: core/cache_subsystem/axi_adapter.sv:438:9
				valid_o = 1'b1;
				// Trace: core/cache_subsystem/axi_adapter.sv:439:9
				state_d = 4'd0;
				// Trace: core/cache_subsystem/axi_adapter.sv:440:9
				id_o = id_q;
			end
			default:
				// Trace: core/cache_subsystem/axi_adapter.sv:443:16
				state_d = 4'd0;
		endcase
		if (any_outstanding_aw && axi_resp_i[1 + (((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + 2) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + ((((axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_IdWidth + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_DataWidth) + 3) + axi_rsp_t_axi_rsp_t_axi_rsp_t_axi_rsp_t_noc_resp_t_ariane_axi_UserWidth) + 0))]) begin
			// Trace: core/cache_subsystem/axi_adapter.sv:449:7
			axi_req_o[1 + ((((axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_IdWidth + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_AddrWidth) + 29) + axi_req_t_axi_req_t_axi_req_t_axi_req_t_noc_req_t_ariane_axi_UserWidth) + 1)] = 1'b1;
			// Trace: core/cache_subsystem/axi_adapter.sv:450:7
			valid_o = 1'b1;
			// Trace: core/cache_subsystem/axi_adapter.sv:453:7
			outstanding_aw_cnt_d = outstanding_aw_cnt_d - 1;
		end
	end
	// Trace: core/cache_subsystem/axi_adapter.sv:460:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/axi_adapter.sv:461:5
		if (~rst_ni) begin
			// Trace: core/cache_subsystem/axi_adapter.sv:463:7
			state_q <= 4'd0;
			// Trace: core/cache_subsystem/axi_adapter.sv:464:7
			cnt_q <= 1'sb0;
			// Trace: core/cache_subsystem/axi_adapter.sv:465:7
			cache_line_q <= 1'sb0;
			// Trace: core/cache_subsystem/axi_adapter.sv:466:7
			addr_offset_q <= 1'sb0;
			// Trace: core/cache_subsystem/axi_adapter.sv:467:7
			id_q <= 1'sb0;
			// Trace: core/cache_subsystem/axi_adapter.sv:468:7
			amo_q <= 4'b0000;
			// Trace: core/cache_subsystem/axi_adapter.sv:469:7
			size_q <= 1'sb0;
			// Trace: core/cache_subsystem/axi_adapter.sv:470:7
			outstanding_aw_cnt_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/axi_adapter.sv:472:7
			state_q <= state_d;
			// Trace: core/cache_subsystem/axi_adapter.sv:473:7
			cnt_q <= cnt_d;
			// Trace: core/cache_subsystem/axi_adapter.sv:474:7
			cache_line_q <= cache_line_d;
			// Trace: core/cache_subsystem/axi_adapter.sv:475:7
			addr_offset_q <= addr_offset_d;
			// Trace: core/cache_subsystem/axi_adapter.sv:476:7
			id_q <= id_d;
			// Trace: core/cache_subsystem/axi_adapter.sv:477:7
			amo_q <= amo_d;
			// Trace: core/cache_subsystem/axi_adapter.sv:478:7
			size_q <= size_d;
			// Trace: core/cache_subsystem/axi_adapter.sv:479:7
			outstanding_aw_cnt_q <= outstanding_aw_cnt_d;
		end
	// Trace: core/cache_subsystem/axi_adapter.sv:483:3
	// Trace: core/cache_subsystem/axi_adapter.sv:513:3
	initial _sv2v_0 = 0;
endmodule
