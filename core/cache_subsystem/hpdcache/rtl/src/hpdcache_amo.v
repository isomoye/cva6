module hpdcache_amo (
	ld_data_i,
	st_data_i,
	op_i,
	result_o
);
	reg _sv2v_0;
	// removed import hpdcache_pkg::*;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:31:5
	input wire [63:0] ld_data_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:32:5
	input wire [63:0] st_data_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:33:5
	// removed localparam type hpdcache_pkg_hpdcache_uc_op_t
	input wire [12:0] op_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:34:5
	output reg [63:0] result_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:38:5
	wire signed [63:0] ld_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:39:5
	wire signed [63:0] st_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:40:5
	wire signed [63:0] sum;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:41:5
	wire ugt;
	wire sgt;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:43:5
	assign ld_data = ld_data_i;
	assign st_data = st_data_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:46:5
	assign ugt = ld_data_i > st_data_i;
	assign sgt = ld_data > st_data;
	assign sum = ld_data + st_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:50:5
	always @(*) begin : amo_compute_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:52:9
		(* full_case, parallel_case *)
		case (1'b1)
			op_i[10]:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:53:32
				result_o = ld_data_i;
			op_i[9]:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:54:32
				result_o = st_data_i;
			op_i[8]:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:55:32
				result_o = st_data_i;
			op_i[7]:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:56:32
				result_o = sum;
			op_i[6]:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:57:32
				result_o = ld_data_i & st_data_i;
			op_i[5]:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:58:32
				result_o = ld_data_i | st_data_i;
			op_i[4]:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:59:32
				result_o = ld_data_i ^ st_data_i;
			op_i[3]:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:60:32
				result_o = (sgt ? ld_data_i : st_data_i);
			op_i[2]:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:61:32
				result_o = (ugt ? ld_data_i : st_data_i);
			op_i[1]:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:62:32
				result_o = (sgt ? st_data_i : ld_data_i);
			op_i[0]:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:63:32
				result_o = (ugt ? st_data_i : ld_data_i);
			default:
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv:64:32
				result_o = 1'sb0;
		endcase
	end
	initial _sv2v_0 = 0;
endmodule
