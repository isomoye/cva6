module bht_980B8_E74A8 (
	clk_i,
	rst_ni,
	flush_bp_i,
	debug_mode_i,
	vpc_i,
	bht_update_i,
	bht_prediction_o
);
	// removed localparam type bht_update_t_CVA6Cfg_type
	// removed localparam type bht_update_t_config_pkg_NrMaxRules_type
	parameter [17102:0] bht_update_t_CVA6Cfg = 0;
	parameter signed [31:0] bht_update_t_config_pkg_NrMaxRules = 0;
	reg _sv2v_0;
	// Trace: core/frontend/bht.sv:22:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/frontend/bht.sv:23:20
	// removed localparam type bht_update_t
	// Trace: core/frontend/bht.sv:24:15
	parameter [31:0] NR_ENTRIES = 1024;
	// Trace: core/frontend/bht.sv:27:5
	input wire clk_i;
	// Trace: core/frontend/bht.sv:29:5
	input wire rst_ni;
	// Trace: core/frontend/bht.sv:31:5
	input wire flush_bp_i;
	// Trace: core/frontend/bht.sv:33:5
	input wire debug_mode_i;
	// Trace: core/frontend/bht.sv:35:5
	input wire [CVA6Cfg[17070-:32] - 1:0] vpc_i;
	// Trace: core/frontend/bht.sv:37:5
	input wire [(1 + bht_update_t_CVA6Cfg[9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)]) + 0:0] bht_update_i;
	// Trace: core/frontend/bht.sv:39:5
	// removed localparam type ariane_pkg_bht_prediction_t
	output reg [(CVA6Cfg[579-:32] * 2) - 1:0] bht_prediction_o;
	// Trace: core/frontend/bht.sv:42:3
	localparam OFFSET = (CVA6Cfg[16544] == 1'b1 ? 1 : 2);
	// Trace: core/frontend/bht.sv:44:3
	localparam NR_ROWS = NR_ENTRIES / CVA6Cfg[579-:32];
	// Trace: core/frontend/bht.sv:46:3
	localparam ROW_ADDR_BITS = $clog2(CVA6Cfg[579-:32]);
	// Trace: core/frontend/bht.sv:47:3
	localparam ROW_INDEX_BITS = (CVA6Cfg[16544] == 1'b1 ? $clog2(CVA6Cfg[579-:32]) : 1);
	// Trace: core/frontend/bht.sv:49:3
	localparam PREDICTION_BITS = ($clog2(NR_ROWS) + OFFSET) + ROW_ADDR_BITS;
	// Trace: core/frontend/bht.sv:51:3
	unread i_unread(.d_i(|vpc_i));
	// Trace: core/frontend/bht.sv:53:3
	reg [((NR_ROWS * CVA6Cfg[579-:32]) * 3) - 1:0] bht_d;
	reg [((NR_ROWS * CVA6Cfg[579-:32]) * 3) - 1:0] bht_q;
	// Trace: core/frontend/bht.sv:60:3
	wire [$clog2(NR_ROWS) - 1:0] index;
	wire [$clog2(NR_ROWS) - 1:0] update_pc;
	// Trace: core/frontend/bht.sv:61:3
	wire [ROW_INDEX_BITS - 1:0] update_row_index;
	// Trace: core/frontend/bht.sv:63:3
	assign index = vpc_i[PREDICTION_BITS - 1:ROW_ADDR_BITS + OFFSET];
	// Trace: core/frontend/bht.sv:64:3
	assign update_pc = bht_update_i[(bht_update_t_CVA6Cfg[9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] + 0) - ((bht_update_t_CVA6Cfg[9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1) - (PREDICTION_BITS - 1)):(bht_update_t_CVA6Cfg[9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] + 0) - ((bht_update_t_CVA6Cfg[9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1) - (ROW_ADDR_BITS + OFFSET))];
	// Trace: core/frontend/bht.sv:65:3
	generate
		if (CVA6Cfg[16544]) begin : gen_update_row_index
			// Trace: core/frontend/bht.sv:66:5
			assign update_row_index = bht_update_i[(bht_update_t_CVA6Cfg[9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] + 0) - ((bht_update_t_CVA6Cfg[9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1) - ((ROW_ADDR_BITS + OFFSET) - 1)):(bht_update_t_CVA6Cfg[9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] + 0) - ((bht_update_t_CVA6Cfg[9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] - 1) - OFFSET)];
		end
		else begin : genblk1
			// Trace: core/frontend/bht.sv:68:5
			assign update_row_index = 1'sb0;
		end
	endgenerate
	// Trace: core/frontend/bht.sv:71:3
	// removed localparam type ariane_pkg_bht_t
	generate
		if (!CVA6Cfg[16876]) begin : gen_asic_bht
			// Trace: core/frontend/bht.sv:73:5
			reg [1:0] saturation_counter;
			genvar _gv_i_57;
			for (_gv_i_57 = 0; _gv_i_57 < CVA6Cfg[579-:32]; _gv_i_57 = _gv_i_57 + 1) begin : gen_bht_output
				localparam i = _gv_i_57;
				// Trace: core/frontend/bht.sv:76:7
				wire [1:1] sv2v_tmp_D2DA8;
				assign sv2v_tmp_D2DA8 = bht_q[(((index * CVA6Cfg[579-:32]) + i) * 3) + 2];
				always @(*) bht_prediction_o[(i * 2) + 1] = sv2v_tmp_D2DA8;
				// Trace: core/frontend/bht.sv:77:7
				wire [1:1] sv2v_tmp_C4717;
				assign sv2v_tmp_C4717 = bht_q[(((index * CVA6Cfg[579-:32]) + i) * 3) + 1] == 1'b1;
				always @(*) bht_prediction_o[i * 2] = sv2v_tmp_C4717;
			end
			// Trace: core/frontend/bht.sv:80:5
			always @(*) begin : update_bht
				if (_sv2v_0)
					;
				// Trace: core/frontend/bht.sv:81:7
				bht_d = bht_q;
				// Trace: core/frontend/bht.sv:82:7
				saturation_counter = bht_q[(((update_pc * CVA6Cfg[579-:32]) + update_row_index) * 3) + 1-:2];
				// Trace: core/frontend/bht.sv:84:7
				if (((bht_update_i[1 + (bht_update_t_CVA6Cfg[9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] + 0)] && CVA6Cfg[1321]) && !debug_mode_i) || (bht_update_i[1 + (bht_update_t_CVA6Cfg[9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] + 0)] && !CVA6Cfg[1321])) begin
					// Trace: core/frontend/bht.sv:85:9
					bht_d[(((update_pc * CVA6Cfg[579-:32]) + update_row_index) * 3) + 2] = 1'b1;
					// Trace: core/frontend/bht.sv:87:9
					if (saturation_counter == 2'b11) begin
						begin
							// Trace: core/frontend/bht.sv:89:11
							if (!bht_update_i[0])
								// Trace: core/frontend/bht.sv:90:13
								bht_d[(((update_pc * CVA6Cfg[579-:32]) + update_row_index) * 3) + 1-:2] = saturation_counter - 1;
						end
					end
					else if (saturation_counter == 2'b00) begin
						begin
							// Trace: core/frontend/bht.sv:94:11
							if (bht_update_i[0])
								// Trace: core/frontend/bht.sv:95:13
								bht_d[(((update_pc * CVA6Cfg[579-:32]) + update_row_index) * 3) + 1-:2] = saturation_counter + 1;
						end
					end
					else
						// Trace: core/frontend/bht.sv:97:11
						if (bht_update_i[0])
							// Trace: core/frontend/bht.sv:98:13
							bht_d[(((update_pc * CVA6Cfg[579-:32]) + update_row_index) * 3) + 1-:2] = saturation_counter + 1;
						else
							// Trace: core/frontend/bht.sv:99:16
							bht_d[(((update_pc * CVA6Cfg[579-:32]) + update_row_index) * 3) + 1-:2] = saturation_counter - 1;
				end
			end
			// Trace: core/frontend/bht.sv:104:5
			always @(posedge clk_i or negedge rst_ni)
				// Trace: core/frontend/bht.sv:105:7
				if (!rst_ni)
					// Trace: core/frontend/bht.sv:106:9
					begin : sv2v_autoblock_1
						// Trace: core/frontend/bht.sv:106:14
						reg [31:0] i;
						// Trace: core/frontend/bht.sv:106:14
						for (i = 0; i < NR_ROWS; i = i + 1)
							begin
								// Trace: core/frontend/bht.sv:107:11
								begin : sv2v_autoblock_2
									// Trace: core/frontend/bht.sv:107:16
									reg signed [31:0] j;
									// Trace: core/frontend/bht.sv:107:16
									for (j = 0; j < CVA6Cfg[579-:32]; j = j + 1)
										begin
											// Trace: core/frontend/bht.sv:108:13
											bht_q[((i * CVA6Cfg[579-:32]) + j) * 3+:3] <= 1'sb0;
										end
								end
							end
					end
				else
					// Trace: core/frontend/bht.sv:113:9
					if (flush_bp_i)
						// Trace: core/frontend/bht.sv:114:11
						begin : sv2v_autoblock_3
							// Trace: core/frontend/bht.sv:114:16
							reg signed [31:0] i;
							// Trace: core/frontend/bht.sv:114:16
							for (i = 0; i < NR_ROWS; i = i + 1)
								begin
									// Trace: core/frontend/bht.sv:115:13
									begin : sv2v_autoblock_4
										// Trace: core/frontend/bht.sv:115:18
										reg signed [31:0] j;
										// Trace: core/frontend/bht.sv:115:18
										for (j = 0; j < CVA6Cfg[579-:32]; j = j + 1)
											begin
												// Trace: core/frontend/bht.sv:116:15
												bht_q[(((i * CVA6Cfg[579-:32]) + j) * 3) + 2] <= 1'b0;
												// Trace: core/frontend/bht.sv:117:15
												bht_q[(((i * CVA6Cfg[579-:32]) + j) * 3) + 1-:2] <= 2'b10;
											end
									end
								end
						end
					else
						// Trace: core/frontend/bht.sv:121:11
						bht_q <= bht_d;
		end
		else begin : gen_fpga_bht
			// Trace: core/frontend/bht.sv:129:5
			localparam BRAM_WORD_BITS = 3;
			// Trace: core/frontend/bht.sv:130:5
			wire [ROW_INDEX_BITS - 1:0] row_index;
			// Trace: core/frontend/bht.sv:131:5
			reg [CVA6Cfg[579-:32] - 1:0] bht_ram_we;
			// Trace: core/frontend/bht.sv:132:5
			reg [(CVA6Cfg[579-:32] * $clog2(NR_ROWS)) - 1:0] bht_ram_read_address_0;
			// Trace: core/frontend/bht.sv:133:5
			reg [(CVA6Cfg[579-:32] * $clog2(NR_ROWS)) - 1:0] bht_ram_read_address_1;
			// Trace: core/frontend/bht.sv:134:5
			reg [(CVA6Cfg[579-:32] * $clog2(NR_ROWS)) - 1:0] bht_ram_write_address;
			// Trace: core/frontend/bht.sv:135:5
			reg [(CVA6Cfg[579-:32] * BRAM_WORD_BITS) - 1:0] bht_ram_wdata;
			// Trace: core/frontend/bht.sv:136:5
			wire [(CVA6Cfg[579-:32] * BRAM_WORD_BITS) - 1:0] bht_ram_rdata_0;
			// Trace: core/frontend/bht.sv:137:5
			wire [(CVA6Cfg[579-:32] * BRAM_WORD_BITS) - 1:0] bht_ram_rdata_1;
			// Trace: core/frontend/bht.sv:139:5
			reg [(CVA6Cfg[579-:32] * 3) - 1:0] bht;
			// Trace: core/frontend/bht.sv:140:5
			reg [(CVA6Cfg[579-:32] * 3) - 1:0] bht_updated;
			if (CVA6Cfg[16544]) begin : gen_row_index
				// Trace: core/frontend/bht.sv:143:7
				assign row_index = vpc_i[(ROW_ADDR_BITS + OFFSET) - 1:OFFSET];
			end
			else begin : genblk1
				// Trace: core/frontend/bht.sv:145:7
				assign row_index = 1'sb0;
			end
			// Trace: core/frontend/bht.sv:151:5
			always @(*) begin : prediction_update_bht
				if (_sv2v_0)
					;
				// Trace: core/frontend/bht.sv:152:7
				bht_ram_we = 1'sb0;
				// Trace: core/frontend/bht.sv:153:7
				bht_ram_read_address_0 = 1'sb0;
				// Trace: core/frontend/bht.sv:154:7
				bht_ram_read_address_1 = 1'sb0;
				// Trace: core/frontend/bht.sv:155:7
				bht_ram_write_address = 1'sb0;
				// Trace: core/frontend/bht.sv:156:7
				bht_ram_wdata = 1'sb0;
				// Trace: core/frontend/bht.sv:157:7
				bht_updated = 1'sb0;
				// Trace: core/frontend/bht.sv:158:7
				bht = 1'sb0;
				// Trace: core/frontend/bht.sv:160:7
				begin : sv2v_autoblock_5
					// Trace: core/frontend/bht.sv:160:12
					reg signed [31:0] i;
					// Trace: core/frontend/bht.sv:160:12
					for (i = 0; i < CVA6Cfg[579-:32]; i = i + 1)
						begin
							// Trace: core/frontend/bht.sv:161:9
							if (row_index == i) begin
								// Trace: core/frontend/bht.sv:162:11
								bht_ram_read_address_0[i * $clog2(NR_ROWS)+:$clog2(NR_ROWS)] = index;
								// Trace: core/frontend/bht.sv:163:11
								bht_prediction_o[(i * 2) + 1] = bht_ram_rdata_0[(i * BRAM_WORD_BITS) + 2];
								// Trace: core/frontend/bht.sv:164:11
								bht_prediction_o[i * 2] = bht_ram_rdata_0[(i * BRAM_WORD_BITS) + 1];
							end
						end
				end
				if (bht_update_i[1 + (bht_update_t_CVA6Cfg[9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))-:((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) >= (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) ? ((9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353))))))))) - (9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354)))))))))) + 1 : ((9477 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1354))))))))) - (9509 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + (32 + ((bht_update_t_config_pkg_NrMaxRules * 64) + ((bht_update_t_config_pkg_NrMaxRules * 64) + 1353)))))))))) + 1)] + 0)] && !debug_mode_i)
					// Trace: core/frontend/bht.sv:169:9
					begin : sv2v_autoblock_6
						// Trace: core/frontend/bht.sv:169:14
						reg signed [31:0] i;
						// Trace: core/frontend/bht.sv:169:14
						for (i = 0; i < CVA6Cfg[579-:32]; i = i + 1)
							begin
								// Trace: core/frontend/bht.sv:170:11
								if (update_row_index == i) begin
									// Trace: core/frontend/bht.sv:171:13
									bht_ram_read_address_1[i * $clog2(NR_ROWS)+:$clog2(NR_ROWS)] = update_pc;
									// Trace: core/frontend/bht.sv:172:13
									bht[(i * 3) + 1-:2] = bht_ram_rdata_1[i * BRAM_WORD_BITS+:2];
									// Trace: core/frontend/bht.sv:174:13
									if (bht[(i * 3) + 1-:2] == 2'b11) begin
										begin
											// Trace: core/frontend/bht.sv:176:15
											if (!bht_update_i[0])
												// Trace: core/frontend/bht.sv:177:17
												bht_updated[(i * 3) + 1-:2] = bht[(i * 3) + 1-:2] - 1;
											else
												// Trace: core/frontend/bht.sv:178:20
												bht_updated[(i * 3) + 1-:2] = 2'b11;
										end
									end
									else if (bht[(i * 3) + 1-:2] == 2'b00) begin
										begin
											// Trace: core/frontend/bht.sv:182:15
											if (bht_update_i[0])
												// Trace: core/frontend/bht.sv:183:17
												bht_updated[(i * 3) + 1-:2] = bht[(i * 3) + 1-:2] + 1;
											else
												// Trace: core/frontend/bht.sv:184:20
												bht_updated[(i * 3) + 1-:2] = 2'b00;
										end
									end
									else
										// Trace: core/frontend/bht.sv:186:15
										if (bht_update_i[0])
											// Trace: core/frontend/bht.sv:187:17
											bht_updated[(i * 3) + 1-:2] = bht[(i * 3) + 1-:2] + 1;
										else
											// Trace: core/frontend/bht.sv:188:20
											bht_updated[(i * 3) + 1-:2] = bht[(i * 3) + 1-:2] - 1;
									// Trace: core/frontend/bht.sv:191:13
									bht_updated[(i * 3) + 2] = 1'b1;
									// Trace: core/frontend/bht.sv:192:13
									bht_ram_we[i] = 1'b1;
									// Trace: core/frontend/bht.sv:193:13
									bht_ram_write_address[i * $clog2(NR_ROWS)+:$clog2(NR_ROWS)] = update_pc;
									// Trace: core/frontend/bht.sv:195:13
									bht_ram_wdata[i * BRAM_WORD_BITS+:BRAM_WORD_BITS] = {bht_updated[(i * 3) + 2], bht_updated[(i * 3) + 1-:2]};
								end
							end
					end
			end
			genvar _gv_i_58;
			for (_gv_i_58 = 0; _gv_i_58 < CVA6Cfg[579-:32]; _gv_i_58 = _gv_i_58 + 1) begin : gen_bht_ram
				localparam i = _gv_i_58;
				// Trace: core/frontend/bht.sv:205:7
				AsyncThreePortRam #(
					.ADDR_WIDTH($clog2(NR_ROWS)),
					.DATA_DEPTH(NR_ROWS),
					.DATA_WIDTH(BRAM_WORD_BITS)
				) i_bht_ram(
					.Clk_CI(clk_i),
					.WrEn_SI(bht_ram_we[i]),
					.WrAddr_DI(bht_ram_write_address[i * $clog2(NR_ROWS)+:$clog2(NR_ROWS)]),
					.WrData_DI(bht_ram_wdata[i * BRAM_WORD_BITS+:BRAM_WORD_BITS]),
					.RdAddr_DI_0(bht_ram_read_address_0[i * $clog2(NR_ROWS)+:$clog2(NR_ROWS)]),
					.RdAddr_DI_1(bht_ram_read_address_1[i * $clog2(NR_ROWS)+:$clog2(NR_ROWS)]),
					.RdData_DO_0(bht_ram_rdata_0[i * BRAM_WORD_BITS+:BRAM_WORD_BITS]),
					.RdData_DO_1(bht_ram_rdata_1[i * BRAM_WORD_BITS+:BRAM_WORD_BITS])
				);
			end
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
