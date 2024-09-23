module hpdcache_sync_buffer_1EE38_A38DF (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type data_t_fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg_type
	// removed localparam type data_t_fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg_type
	parameter [1349:0] data_t_fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg = 0;
	parameter [1349:0] data_t_fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:30:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:31:20
	// removed localparam type data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:37:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:38:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:39:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:40:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:41:5
	input wire [(data_t_fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32] * data_t_fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:42:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:43:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:44:5
	output wire [(data_t_fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32] * data_t_fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:50:5
	reg [(data_t_fifo_data_t_hpdcache_refill_data_t_HPDcacheCfg[995-:32] * data_t_fifo_data_t_hpdcache_refill_data_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32]) - 1:0] buf_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:51:5
	wire buf_we;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:52:5
	reg valid_q;
	wire valid_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:57:5
	assign rok_o = valid_q | (FEEDTHROUGH & w_i);
	assign wok_o = ~valid_q | (FEEDTHROUGH & r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:60:5
	assign buf_we = w_i & ((FEEDTHROUGH & ~(valid_q ^ r_i)) | (~FEEDTHROUGH & ~valid_q));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:65:5
	assign valid_d = buf_we | (valid_q & ~r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:70:5
	always @(posedge clk_i)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:9
		if (buf_we)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:21
			buf_q <= wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:75:5
	assign rdata_o = (FEEDTHROUGH && !valid_q ? wdata_i : buf_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:80:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:82:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:83:13
			valid_q <= 1'b0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:85:13
			valid_q <= valid_d;
endmodule
module hpdcache_sync_buffer_4FAFD_74451 (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg_type
	parameter [1349:0] data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:30:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:31:20
	// removed localparam type data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:37:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:38:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:39:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:40:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:41:5
	input wire [(((data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:42:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:43:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:44:5
	output wire [(((data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:50:5
	reg [(((data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1157-:32] * data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1285-:32]) + data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1093-:32]) + data_t_fifo_data_t_hpdcache_rsp_t_hpdcache_rsp_t_hpdcache_rsp_t_HPDcacheCfg[1125-:32]) + 1:0] buf_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:51:5
	wire buf_we;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:52:5
	reg valid_q;
	wire valid_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:57:5
	assign rok_o = valid_q | (FEEDTHROUGH & w_i);
	assign wok_o = ~valid_q | (FEEDTHROUGH & r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:60:5
	assign buf_we = w_i & ((FEEDTHROUGH & ~(valid_q ^ r_i)) | (~FEEDTHROUGH & ~valid_q));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:65:5
	assign valid_d = buf_we | (valid_q & ~r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:70:5
	always @(posedge clk_i)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:9
		if (buf_we)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:21
			buf_q <= wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:75:5
	assign rdata_o = (FEEDTHROUGH && !valid_q ? wdata_i : buf_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:80:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:82:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:83:13
			valid_q <= 1'b0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:85:13
			valid_q <= valid_d;
endmodule
module hpdcache_sync_buffer_91A37_F5B7E (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type data_t_fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg_type
	// removed localparam type data_t_fifo_data_t_hpdcache_nline_t_HPDcacheCfg_type
	parameter [1349:0] data_t_fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg = 0;
	parameter [1349:0] data_t_fifo_data_t_hpdcache_nline_t_HPDcacheCfg = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:30:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:31:20
	// removed localparam type data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:37:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:38:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:39:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:40:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:41:5
	input wire [(((2 + data_t_fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) + 1) + data_t_fifo_data_t_hpdcache_nline_t_HPDcacheCfg[383-:32]) - 1:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:42:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:43:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:44:5
	output wire [(((2 + data_t_fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) + 1) + data_t_fifo_data_t_hpdcache_nline_t_HPDcacheCfg[383-:32]) - 1:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:50:5
	reg [(((2 + data_t_fifo_data_t_hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32]) + 1) + data_t_fifo_data_t_hpdcache_nline_t_HPDcacheCfg[383-:32]) - 1:0] buf_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:51:5
	wire buf_we;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:52:5
	reg valid_q;
	wire valid_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:57:5
	assign rok_o = valid_q | (FEEDTHROUGH & w_i);
	assign wok_o = ~valid_q | (FEEDTHROUGH & r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:60:5
	assign buf_we = w_i & ((FEEDTHROUGH & ~(valid_q ^ r_i)) | (~FEEDTHROUGH & ~valid_q));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:65:5
	assign valid_d = buf_we | (valid_q & ~r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:70:5
	always @(posedge clk_i)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:9
		if (buf_we)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:21
			buf_q <= wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:75:5
	assign rdata_o = (FEEDTHROUGH && !valid_q ? wdata_i : buf_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:80:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:82:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:83:13
			valid_q <= 1'b0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:85:13
			valid_q <= valid_d;
endmodule
module hpdcache_sync_buffer_55BF2_D4981 (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type data_t_fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg_type
	parameter [1349:0] data_t_fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:30:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:31:20
	// removed localparam type data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:37:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:38:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:39:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:40:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:41:5
	input wire [((data_t_fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + data_t_fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:42:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:43:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:44:5
	output wire [((data_t_fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + data_t_fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:50:5
	reg [((data_t_fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + data_t_fifo_data_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] buf_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:51:5
	wire buf_we;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:52:5
	reg valid_q;
	wire valid_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:57:5
	assign rok_o = valid_q | (FEEDTHROUGH & w_i);
	assign wok_o = ~valid_q | (FEEDTHROUGH & r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:60:5
	assign buf_we = w_i & ((FEEDTHROUGH & ~(valid_q ^ r_i)) | (~FEEDTHROUGH & ~valid_q));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:65:5
	assign valid_d = buf_we | (valid_q & ~r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:70:5
	always @(posedge clk_i)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:9
		if (buf_we)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:21
			buf_q <= wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:75:5
	assign rdata_o = (FEEDTHROUGH && !valid_q ? wdata_i : buf_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:80:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:82:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:83:13
			valid_q <= 1'b0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:85:13
			valid_q <= valid_d;
endmodule
module hpdcache_sync_buffer_59580_A7CEC (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type data_t_fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg_type
	parameter [1349:0] data_t_fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:30:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:31:20
	// removed localparam type data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:37:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:38:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:39:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:40:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:41:5
	input wire [data_t_fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:42:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:43:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:44:5
	output wire [data_t_fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:50:5
	reg [data_t_fifo_data_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] buf_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:51:5
	wire buf_we;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:52:5
	reg valid_q;
	wire valid_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:57:5
	assign rok_o = valid_q | (FEEDTHROUGH & w_i);
	assign wok_o = ~valid_q | (FEEDTHROUGH & r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:60:5
	assign buf_we = w_i & ((FEEDTHROUGH & ~(valid_q ^ r_i)) | (~FEEDTHROUGH & ~valid_q));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:65:5
	assign valid_d = buf_we | (valid_q & ~r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:70:5
	always @(posedge clk_i)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:9
		if (buf_we)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:21
			buf_q <= wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:75:5
	assign rdata_o = (FEEDTHROUGH && !valid_q ? wdata_i : buf_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:80:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:82:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:83:13
			valid_q <= 1'b0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:85:13
			valid_q <= valid_d;
endmodule
module hpdcache_sync_buffer_3A8E4_D629C (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type data_t_fifo_data_t_HPDcacheCfg_type
	// removed localparam type data_t_fifo_data_t_WBUF_TAG_WIDTH_type
	parameter [1349:0] data_t_fifo_data_t_HPDcacheCfg = 0;
	parameter [31:0] data_t_fifo_data_t_WBUF_TAG_WIDTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:30:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:31:20
	// removed localparam type data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:37:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:38:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:39:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:40:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:41:5
	input wire [(data_t_fifo_data_t_WBUF_TAG_WIDTH + data_t_fifo_data_t_HPDcacheCfg[95-:32]) + 0:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:42:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:43:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:44:5
	output wire [(data_t_fifo_data_t_WBUF_TAG_WIDTH + data_t_fifo_data_t_HPDcacheCfg[95-:32]) + 0:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:50:5
	reg [(data_t_fifo_data_t_WBUF_TAG_WIDTH + data_t_fifo_data_t_HPDcacheCfg[95-:32]) + 0:0] buf_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:51:5
	wire buf_we;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:52:5
	reg valid_q;
	wire valid_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:57:5
	assign rok_o = valid_q | (FEEDTHROUGH & w_i);
	assign wok_o = ~valid_q | (FEEDTHROUGH & r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:60:5
	assign buf_we = w_i & ((FEEDTHROUGH & ~(valid_q ^ r_i)) | (~FEEDTHROUGH & ~valid_q));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:65:5
	assign valid_d = buf_we | (valid_q & ~r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:70:5
	always @(posedge clk_i)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:9
		if (buf_we)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:21
			buf_q <= wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:75:5
	assign rdata_o = (FEEDTHROUGH && !valid_q ? wdata_i : buf_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:80:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:82:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:83:13
			valid_q <= 1'b0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:85:13
			valid_q <= valid_d;
endmodule
module hpdcache_sync_buffer_AC0A5_5EFB1 (
	clk_i,
	rst_ni,
	w_i,
	wok_o,
	wdata_i,
	r_i,
	rok_o,
	rdata_o
);
	// removed localparam type data_t_fifo_data_t_HPDcacheCfg_type
	// removed localparam type data_t_fifo_data_t_WBUF_TAG_WIDTH_type
	parameter [1349:0] data_t_fifo_data_t_HPDcacheCfg = 0;
	parameter [31:0] data_t_fifo_data_t_WBUF_TAG_WIDTH = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:30:15
	parameter [0:0] FEEDTHROUGH = 1'b0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:31:20
	// removed localparam type data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:37:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:38:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:39:5
	input wire w_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:40:5
	output wire wok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:41:5
	input wire [(data_t_fifo_data_t_HPDcacheCfg[63-:32] + data_t_fifo_data_t_WBUF_TAG_WIDTH) - 1:0] wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:42:5
	input wire r_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:43:5
	output wire rok_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:44:5
	output wire [(data_t_fifo_data_t_HPDcacheCfg[63-:32] + data_t_fifo_data_t_WBUF_TAG_WIDTH) - 1:0] rdata_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:50:5
	reg [(data_t_fifo_data_t_HPDcacheCfg[63-:32] + data_t_fifo_data_t_WBUF_TAG_WIDTH) - 1:0] buf_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:51:5
	wire buf_we;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:52:5
	reg valid_q;
	wire valid_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:57:5
	assign rok_o = valid_q | (FEEDTHROUGH & w_i);
	assign wok_o = ~valid_q | (FEEDTHROUGH & r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:60:5
	assign buf_we = w_i & ((FEEDTHROUGH & ~(valid_q ^ r_i)) | (~FEEDTHROUGH & ~valid_q));
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:65:5
	assign valid_d = buf_we | (valid_q & ~r_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:70:5
	always @(posedge clk_i)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:9
		if (buf_we)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:72:21
			buf_q <= wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:75:5
	assign rdata_o = (FEEDTHROUGH && !valid_q ? wdata_i : buf_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:80:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:82:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:83:13
			valid_q <= 1'b0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv:85:13
			valid_q <= valid_d;
endmodule
