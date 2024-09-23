module hpdcache_wbuf_0BDBB_7C17F (
	clk_i,
	rst_ni,
	empty_o,
	full_o,
	flush_all_i,
	cfg_threshold_i,
	cfg_reset_timecnt_on_write_i,
	cfg_sequential_waw_i,
	cfg_inhibit_write_coalescing_i,
	write_i,
	write_ready_o,
	write_addr_i,
	write_data_i,
	write_be_i,
	write_uc_i,
	read_addr_i,
	read_hit_o,
	read_flush_hit_i,
	replay_addr_i,
	replay_is_read_i,
	replay_open_hit_o,
	replay_pend_hit_o,
	replay_sent_hit_o,
	replay_not_ready_o,
	mem_req_write_ready_i,
	mem_req_write_valid_o,
	mem_req_write_o,
	mem_req_write_data_ready_i,
	mem_req_write_data_valid_o,
	mem_req_write_data_o,
	mem_resp_write_ready_o,
	mem_resp_write_valid_i,
	mem_resp_write_i
);
	// removed localparam type hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg = 0;
	// removed localparam type wbuf_addr_t_HPDcacheCfg_type
	parameter [1349:0] wbuf_addr_t_HPDcacheCfg = 0;
	// removed localparam type wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg_type
	parameter [1349:0] wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// removed import hpdcache_pkg::*;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:31:15
	// removed localparam type hpdcache_pkg_hpdcache_victim_sel_policy_t
	// removed localparam type hpdcache_pkg_hpdcache_user_cfg_t
	// removed localparam type hpdcache_pkg_hpdcache_cfg_t
	parameter [1349:0] HPDcacheCfg = 1'sb0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:33:20
	// removed localparam type wbuf_addr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:34:20
	// removed localparam type wbuf_timecnt_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:36:20
	// removed localparam type hpdcache_mem_id_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:37:20
	// removed localparam type hpdcache_mem_req_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:38:20
	// removed localparam type hpdcache_mem_req_w_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:39:20
	// removed localparam type hpdcache_mem_resp_w_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:41:16
	localparam [31:0] WBUF_WORD_WIDTH = HPDcacheCfg[1157-:32] * HPDcacheCfg[1285-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:42:21
	// removed localparam type wbuf_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:43:21
	// removed localparam type wbuf_be_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:51:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:52:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:55:5
	output reg empty_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:56:5
	output reg full_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:57:5
	input wire flush_all_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:61:5
	input wire [wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] - 1:0] cfg_threshold_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:63:5
	input wire cfg_reset_timecnt_on_write_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:65:5
	input wire cfg_sequential_waw_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:67:5
	input wire cfg_inhibit_write_coalescing_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:70:5
	input wire write_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:71:5
	output wire write_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:72:5
	input wire [wbuf_addr_t_HPDcacheCfg[1317-:32] - 1:0] write_addr_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:73:5
	input wire [WBUF_WORD_WIDTH - 1:0] write_data_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:74:5
	input wire [(WBUF_WORD_WIDTH / 8) - 1:0] write_be_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:75:5
	input wire write_uc_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:78:5
	input wire [wbuf_addr_t_HPDcacheCfg[1317-:32] - 1:0] read_addr_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:79:5
	output reg read_hit_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:80:5
	input wire read_flush_hit_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:83:5
	input wire [wbuf_addr_t_HPDcacheCfg[1317-:32] - 1:0] replay_addr_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:84:5
	input wire replay_is_read_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:85:5
	output wire replay_open_hit_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:86:5
	output wire replay_pend_hit_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:87:5
	output wire replay_sent_hit_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:88:5
	output reg replay_not_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:91:5
	input wire mem_req_write_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:92:5
	output wire mem_req_write_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:93:5
	output wire [((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + 11) + hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32]) + 6:0] mem_req_write_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:95:5
	input wire mem_req_write_data_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:96:5
	output wire mem_req_write_data_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:97:5
	output wire [(hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8)) + 0:0] mem_req_write_data_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:99:5
	output wire mem_resp_write_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:100:5
	input wire mem_resp_write_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:101:5
	input wire [(3 + hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32]) - 1:0] mem_resp_write_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:107:5
	localparam [31:0] WBUF_DIR_NENTRIES = HPDcacheCfg[800-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:108:5
	localparam [31:0] WBUF_DATA_NENTRIES = HPDcacheCfg[768-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:109:5
	localparam [31:0] WBUF_DATA_NWORDS = HPDcacheCfg[736-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:110:5
	localparam [31:0] WBUF_OFFSET_WIDTH = $clog2((WBUF_WORD_WIDTH / 8) * WBUF_DATA_NWORDS);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:111:5
	localparam [31:0] WBUF_TAG_WIDTH = HPDcacheCfg[1317-:32] - WBUF_OFFSET_WIDTH;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:112:5
	localparam [31:0] WBUF_WORD_OFFSET = $clog2(WBUF_WORD_WIDTH / 8);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:113:5
	localparam signed [31:0] WBUF_SEND_FIFO_DEPTH = WBUF_DATA_NENTRIES;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:114:5
	localparam [31:0] WBUF_READ_MATCH_WIDTH = HPDcacheCfg[383-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:115:5
	localparam [31:0] WBUF_MEM_DATA_RATIO = HPDcacheCfg[575-:32] / HPDcacheCfg[127-:32];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:117:5
	localparam [31:0] WBUF_MEM_DATA_WORD_INDEX_WIDTH = $clog2(WBUF_MEM_DATA_RATIO);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:119:5
	// removed localparam type wbuf_data_buf_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:120:5
	// removed localparam type wbuf_be_buf_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:121:5
	// removed localparam type wbuf_dir_ptr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:122:5
	// removed localparam type wbuf_data_ptr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:123:5
	// removed localparam type wbuf_tag_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:124:5
	// removed localparam type wbuf_match_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:126:5
	// removed localparam type wbuf_state_e
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:133:5
	// removed localparam type wbuf_dir_entry_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:140:5
	// removed localparam type wbuf_data_entry_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:145:5
	// removed localparam type wbuf_send_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:150:5
	// removed localparam type wbuf_send_meta_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:156:5
	task automatic wbuf_data_write;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:157:13
		output reg [(WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) - 1:0] wbuf_ret_data;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:158:13
		output reg [(WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1:0] wbuf_ret_be;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:159:13
		input reg [(WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) - 1:0] wbuf_old_data;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:160:13
		input reg [(WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1:0] wbuf_old_be;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:161:13
		input reg [(WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) - 1:0] wbuf_new_data;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:162:13
		input reg [(WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1:0] wbuf_new_be;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:163:9
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:163:14
		reg [31:0] w;
		begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:163:14
			for (w = 0; w < WBUF_DATA_NWORDS; w = w + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:164:13
					begin : sv2v_autoblock_1
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:164:18
						reg [31:0] b;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:164:18
						for (b = 0; b < (WBUF_WORD_WIDTH / 8); b = b + 1)
							begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:165:17
								wbuf_ret_data[(w * WBUF_WORD_WIDTH) + (b * 8)+:8] = (wbuf_new_be[(w * (WBUF_WORD_WIDTH / 8)) + b] ? wbuf_new_data[(w * WBUF_WORD_WIDTH) + (b * 8)+:8] : wbuf_old_data[(w * WBUF_WORD_WIDTH) + (b * 8)+:8]);
							end
					end
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:169:13
					wbuf_ret_be[w * (WBUF_WORD_WIDTH / 8)+:WBUF_WORD_WIDTH / 8] = wbuf_old_be[w * (WBUF_WORD_WIDTH / 8)+:WBUF_WORD_WIDTH / 8] | wbuf_new_be[w * (WBUF_WORD_WIDTH / 8)+:WBUF_WORD_WIDTH / 8];
				end
		end
	endtask
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:173:5
	function automatic [HPDcacheCfg[383-:32] - 1:0] wbuf_tag_to_match_addr;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:173:60
		input reg [WBUF_TAG_WIDTH - 1:0] tag;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:174:9
		wbuf_tag_to_match_addr = tag[WBUF_TAG_WIDTH - 1:WBUF_TAG_WIDTH - WBUF_READ_MATCH_WIDTH];
	endfunction
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:180:5
	reg [(WBUF_DIR_NENTRIES * 2) - 1:0] wbuf_dir_state_q;
	reg [(WBUF_DIR_NENTRIES * 2) - 1:0] wbuf_dir_state_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:181:5
	reg [((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (WBUF_DIR_NENTRIES * (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1)) - 1 : (WBUF_DIR_NENTRIES * (1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) - 1)):((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? 0 : ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0)] wbuf_dir_q;
	reg [((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (WBUF_DIR_NENTRIES * (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1)) - 1 : (WBUF_DIR_NENTRIES * (1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) - 1)):((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? 0 : ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0)] wbuf_dir_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:182:5
	reg [WBUF_DATA_NENTRIES - 1:0] wbuf_data_valid_q;
	reg [WBUF_DATA_NENTRIES - 1:0] wbuf_data_valid_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:183:5
	reg [(WBUF_DATA_NENTRIES * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) - 1:0] wbuf_data_q;
	reg [(WBUF_DATA_NENTRIES * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) - 1:0] wbuf_data_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:185:5
	wire wbuf_dir_free;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:186:5
	wire [WBUF_DIR_NENTRIES - 1:0] wbuf_dir_free_ptr_bv;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:187:5
	wire wbuf_data_free;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:188:5
	wire [HPDcacheCfg[63-:32] - 1:0] wbuf_data_free_ptr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:189:5
	wire [WBUF_DATA_NENTRIES - 1:0] wbuf_data_free_ptr_bv;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:191:5
	wire wbuf_write_free;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:192:5
	reg wbuf_write_hit_open;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:193:5
	reg wbuf_write_hit_pend;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:194:5
	reg wbuf_write_hit_sent;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:195:5
	reg [HPDcacheCfg[95-:32] - 1:0] wbuf_write_hit_open_dir_ptr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:196:5
	reg [HPDcacheCfg[95-:32] - 1:0] wbuf_write_hit_pend_dir_ptr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:198:5
	wire [WBUF_DIR_NENTRIES - 1:0] wbuf_dir_free_bv;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:199:5
	wire [WBUF_DIR_NENTRIES - 1:0] wbuf_dir_open_bv;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:200:5
	wire [WBUF_DIR_NENTRIES - 1:0] wbuf_dir_pend_bv;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:201:5
	wire [WBUF_DIR_NENTRIES - 1:0] wbuf_dir_sent_bv;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:203:5
	wire [WBUF_DIR_NENTRIES - 1:0] wbuf_send_grant;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:204:5
	wire [(((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? (WBUF_DIR_NENTRIES * ((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 1)) - 1 : (WBUF_DIR_NENTRIES * (1 - ((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0))) + ((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) - 1)):(((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? 0 : (WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0)] wbuf_meta_pend;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:205:5
	wire [(WBUF_DIR_NENTRIES * HPDcacheCfg[63-:32]) - 1:0] wbuf_meta_pend_data_ptr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:206:5
	wire [HPDcacheCfg[63-:32] - 1:0] wbuf_meta_send_data_ptr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:208:5
	wire send_meta_valid;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:209:5
	wire send_meta_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:210:5
	wire [(WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0:0] wbuf_meta_send;
	wire [(WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0:0] wbuf_meta_send_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:212:5
	wire send_data_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:213:5
	wire send_data_w;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:214:5
	wire [(HPDcacheCfg[63-:32] + WBUF_TAG_WIDTH) - 1:0] send_data_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:215:5
	wire [(HPDcacheCfg[63-:32] + WBUF_TAG_WIDTH) - 1:0] send_data_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:217:5
	wire [wbuf_addr_t_HPDcacheCfg[1317-:32] - 1:0] send_tag;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:218:5
	wire [(WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) - 1:0] send_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:219:5
	wire [(WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1:0] send_be;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:221:5
	wire [HPDcacheCfg[95-:32] - 1:0] ack_id;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:222:5
	wire ack_error;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:224:5
	wire [WBUF_TAG_WIDTH - 1:0] write_tag;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:225:5
	reg [(WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) - 1:0] write_data;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:226:5
	reg [(WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1:0] write_be;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:228:5
	wire [WBUF_DIR_NENTRIES - 1:0] replay_match;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:229:5
	wire [WBUF_DIR_NENTRIES - 1:0] replay_open_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:230:5
	wire [WBUF_DIR_NENTRIES - 1:0] replay_pend_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:231:5
	wire [WBUF_DIR_NENTRIES - 1:0] replay_sent_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:233:5
	genvar _gv_gen_i_6;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:238:5
	generate
		for (_gv_gen_i_6 = 0; _gv_gen_i_6 < WBUF_DIR_NENTRIES; _gv_gen_i_6 = _gv_gen_i_6 + 1) begin : gen_dir_state_bv
			localparam gen_i = _gv_gen_i_6;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:239:9
			assign wbuf_dir_free_bv[gen_i] = wbuf_dir_state_q[gen_i * 2+:2] == 2'b00;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:240:9
			assign wbuf_dir_open_bv[gen_i] = wbuf_dir_state_q[gen_i * 2+:2] == 2'b01;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:241:9
			assign wbuf_dir_pend_bv[gen_i] = wbuf_dir_state_q[gen_i * 2+:2] == 2'b10;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:242:9
			assign wbuf_dir_sent_bv[gen_i] = wbuf_dir_state_q[gen_i * 2+:2] == 2'b11;
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:245:5
	always @(*) begin : empty_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:247:9
		empty_o = 1'b1;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:248:9
		begin : sv2v_autoblock_2
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:248:14
			reg [31:0] i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:248:14
			for (i = 0; i < WBUF_DIR_NENTRIES; i = i + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:249:13
					empty_o = empty_o & wbuf_dir_free_bv[i];
				end
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:253:5
	always @(*) begin : full_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:255:9
		full_o = 1'b1;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:256:9
		begin : sv2v_autoblock_3
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:256:14
			reg [31:0] i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:256:14
			for (i = 0; i < WBUF_DIR_NENTRIES; i = i + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:257:13
					full_o = full_o & ~wbuf_dir_free_bv[i];
				end
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:264:5
	assign write_tag = write_addr_i[HPDcacheCfg[1317-:32] - 1:WBUF_OFFSET_WIDTH];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:265:5
	assign ack_id = mem_resp_write_i[(hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] - 1) - (hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] - 1)+:HPDcacheCfg[95-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:266:5
	// removed localparam type hpdcache_pkg_hpdcache_mem_error_e
	assign ack_error = mem_resp_write_i[hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 1-:((hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 1) >= (hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 0) ? ((hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 1) - (hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 0)) + 1 : ((hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 0) - (hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_hpdcache_mem_resp_w_t_HPDcacheCfg[607-:32] + 1)) + 1)] != 2'b00;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:268:5
	always @(*) begin : wbuf_write_data_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:270:9
		begin : sv2v_autoblock_4
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:270:14
			reg [31:0] w;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:270:14
			for (w = 0; w < WBUF_DATA_NWORDS; w = w + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:271:13
					write_data[w * WBUF_WORD_WIDTH+:WBUF_WORD_WIDTH] = write_data_i;
				end
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:275:5
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	generate
		if (WBUF_OFFSET_WIDTH > WBUF_WORD_OFFSET) begin : gen_wbuf_write_be_gt
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:277:13
			always @(*) begin : wbuf_write_be_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:279:17
				begin : sv2v_autoblock_5
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:279:22
					reg [31:0] w;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:279:22
					for (w = 0; w < WBUF_DATA_NWORDS; w = w + 1)
						begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:280:21
							if (w == sv2v_cast_32_signed(write_addr_i[WBUF_OFFSET_WIDTH - 1:WBUF_WORD_OFFSET]))
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:281:25
								write_be[w * (WBUF_WORD_WIDTH / 8)+:WBUF_WORD_WIDTH / 8] = write_be_i;
							else
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:283:25
								write_be[w * (WBUF_WORD_WIDTH / 8)+:WBUF_WORD_WIDTH / 8] = 1'sb0;
						end
				end
			end
		end
		else begin : gen_wbuf_write_be_le
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:288:13
			always @(*) begin : wbuf_write_be_comb
				if (_sv2v_0)
					;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:290:17
				begin : sv2v_autoblock_6
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:290:22
					reg [31:0] w;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:290:22
					for (w = 0; w < WBUF_DATA_NWORDS; w = w + 1)
						begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:291:21
							write_be[w * (WBUF_WORD_WIDTH / 8)+:WBUF_WORD_WIDTH / 8] = write_be_i;
						end
				end
			end
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:297:5
	hpdcache_fxarb #(.N(WBUF_DIR_NENTRIES)) dir_free_rrarb_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(wbuf_dir_free_bv),
		.gnt_o(wbuf_dir_free_ptr_bv),
		.ready_i(write_i & wbuf_write_free)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:307:5
	hpdcache_fxarb #(.N(WBUF_DATA_NENTRIES)) data_free_rrarb_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(~wbuf_data_valid_q),
		.gnt_o(wbuf_data_free_ptr_bv),
		.ready_i(write_i & wbuf_write_free)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:317:5
	hpdcache_1hot_to_binary #(.N(WBUF_DATA_NENTRIES)) data_free_ptr_binary_i(
		.val_i(wbuf_data_free_ptr_bv),
		.val_o(wbuf_data_free_ptr)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:324:5
	assign wbuf_dir_free = |wbuf_dir_free_bv;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:325:5
	assign wbuf_data_free = ~(&wbuf_data_valid_q);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:327:5
	function automatic [HPDcacheCfg[95-:32] - 1:0] sv2v_cast_3D56B;
		input reg [HPDcacheCfg[95-:32] - 1:0] inp;
		sv2v_cast_3D56B = inp;
	endfunction
	always @(*) begin : wbuf_write_hit_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:329:9
		wbuf_write_hit_open = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:330:9
		wbuf_write_hit_pend = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:331:9
		wbuf_write_hit_sent = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:333:9
		wbuf_write_hit_open_dir_ptr = 0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:334:9
		wbuf_write_hit_pend_dir_ptr = 0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:335:9
		begin : sv2v_autoblock_7
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:335:14
			reg [31:0] i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:335:14
			for (i = 0; i < WBUF_DIR_NENTRIES; i = i + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:336:13
					if (wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? WBUF_TAG_WIDTH + 0 : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (WBUF_TAG_WIDTH + 0)) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? WBUF_TAG_WIDTH + 0 : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (WBUF_TAG_WIDTH + 0))) + ((WBUF_TAG_WIDTH + 0) >= 1 ? WBUF_TAG_WIDTH + 0 : 2 - (WBUF_TAG_WIDTH + 0))) - 1)-:((WBUF_TAG_WIDTH + 0) >= 1 ? WBUF_TAG_WIDTH + 0 : 2 - (WBUF_TAG_WIDTH + 0))] == write_tag)
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:337:17
						(* full_case, parallel_case *)
						case (wbuf_dir_state_q[i * 2+:2])
							2'b01: begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:339:25
								wbuf_write_hit_open = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:340:25
								wbuf_write_hit_open_dir_ptr = sv2v_cast_3D56B(i);
							end
							2'b10: begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:343:25
								wbuf_write_hit_pend = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:344:25
								wbuf_write_hit_pend_dir_ptr = sv2v_cast_3D56B(i);
							end
							2'b11:
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:347:25
								wbuf_write_hit_sent = 1'b1;
							default:
								;
						endcase
				end
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:359:5
	function automatic [wbuf_addr_t_HPDcacheCfg[1317-:32] - 1:0] sv2v_cast_F14CC;
		input reg [wbuf_addr_t_HPDcacheCfg[1317-:32] - 1:0] inp;
		sv2v_cast_F14CC = inp;
	endfunction
	always @(*) begin : read_hit_comb
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:361:9
		reg [WBUF_DIR_NENTRIES - 1:0] read_hit;
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:363:9
		begin : sv2v_autoblock_8
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:363:14
			reg [31:0] i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:363:14
			for (i = 0; i < WBUF_DIR_NENTRIES; i = i + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:364:13
					read_hit[i] = 1'b0;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:365:13
					(* full_case, parallel_case *)
					case (wbuf_dir_state_q[i * 2+:2])
						2'b01, 2'b10, 2'b11: begin : sv2v_autoblock_9
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:367:21
							reg [wbuf_addr_t_HPDcacheCfg[1317-:32] - 1:0] wbuf_addr;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:368:21
							reg [HPDcacheCfg[383-:32] - 1:0] wbuf_tag;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:369:21
							reg [HPDcacheCfg[383-:32] - 1:0] read_tag;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:371:21
							wbuf_addr = sv2v_cast_F14CC(wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? WBUF_TAG_WIDTH + 0 : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (WBUF_TAG_WIDTH + 0)) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? WBUF_TAG_WIDTH + 0 : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (WBUF_TAG_WIDTH + 0))) + ((WBUF_TAG_WIDTH + 0) >= 1 ? WBUF_TAG_WIDTH + 0 : 2 - (WBUF_TAG_WIDTH + 0))) - 1)-:((WBUF_TAG_WIDTH + 0) >= 1 ? WBUF_TAG_WIDTH + 0 : 2 - (WBUF_TAG_WIDTH + 0))]) << WBUF_OFFSET_WIDTH;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:372:21
							read_tag = read_addr_i[HPDcacheCfg[1317-:32] - 1:HPDcacheCfg[1317-:32] - WBUF_READ_MATCH_WIDTH];
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:374:21
							wbuf_tag = wbuf_addr[HPDcacheCfg[1317-:32] - 1:HPDcacheCfg[1317-:32] - WBUF_READ_MATCH_WIDTH];
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:376:21
							read_hit[i] = (read_tag == wbuf_tag ? 1'b1 : 1'b0);
						end
						default:
							;
					endcase
				end
		end
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:384:9
		read_hit_o = |read_hit;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:389:5
	generate
		for (_gv_gen_i_6 = 0; _gv_gen_i_6 < WBUF_DIR_NENTRIES; _gv_gen_i_6 = _gv_gen_i_6 + 1) begin : gen_replay_match
			localparam gen_i = _gv_gen_i_6;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:391:13
			assign replay_match[gen_i] = (replay_is_read_i ? wbuf_tag_to_match_addr(wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (gen_i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? WBUF_TAG_WIDTH + 0 : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (WBUF_TAG_WIDTH + 0)) : (((gen_i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? WBUF_TAG_WIDTH + 0 : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (WBUF_TAG_WIDTH + 0))) + ((WBUF_TAG_WIDTH + 0) >= 1 ? WBUF_TAG_WIDTH + 0 : 2 - (WBUF_TAG_WIDTH + 0))) - 1)-:((WBUF_TAG_WIDTH + 0) >= 1 ? WBUF_TAG_WIDTH + 0 : 2 - (WBUF_TAG_WIDTH + 0))]) == replay_addr_i[HPDcacheCfg[1317-:32] - 1:HPDcacheCfg[1317-:32] - WBUF_READ_MATCH_WIDTH] : wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (gen_i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? WBUF_TAG_WIDTH + 0 : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (WBUF_TAG_WIDTH + 0)) : (((gen_i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? WBUF_TAG_WIDTH + 0 : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (WBUF_TAG_WIDTH + 0))) + ((WBUF_TAG_WIDTH + 0) >= 1 ? WBUF_TAG_WIDTH + 0 : 2 - (WBUF_TAG_WIDTH + 0))) - 1)-:((WBUF_TAG_WIDTH + 0) >= 1 ? WBUF_TAG_WIDTH + 0 : 2 - (WBUF_TAG_WIDTH + 0))] == replay_addr_i[HPDcacheCfg[1317-:32] - 1:HPDcacheCfg[1317-:32] - WBUF_TAG_WIDTH]);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:401:13
			assign replay_open_hit[gen_i] = replay_match[gen_i] & wbuf_dir_open_bv[gen_i];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:402:13
			assign replay_pend_hit[gen_i] = replay_match[gen_i] & wbuf_dir_pend_bv[gen_i];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:403:13
			assign replay_sent_hit[gen_i] = replay_match[gen_i] & wbuf_dir_sent_bv[gen_i];
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:407:5
	assign replay_open_hit_o = |replay_open_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:408:5
	assign replay_pend_hit_o = |replay_pend_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:409:5
	assign replay_sent_hit_o = |replay_sent_hit;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:411:5
	always @(*) begin : replay_wbuf_not_ready_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:413:9
		replay_not_ready_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:414:9
		if (replay_pend_hit_o)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:415:13
			replay_not_ready_o = 1'b1;
		else if (replay_sent_hit_o && cfg_sequential_waw_i)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:417:13
			replay_not_ready_o = 1'b1;
		else if (!replay_open_hit_o && (!wbuf_dir_free || !wbuf_data_free))
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:419:13
			replay_not_ready_o = 1'b1;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:423:5
	assign wbuf_write_free = (((wbuf_dir_free & wbuf_data_free) & ~wbuf_write_hit_open) & ~wbuf_write_hit_pend) & ~(wbuf_write_hit_sent & cfg_sequential_waw_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:430:5
	assign write_ready_o = wbuf_write_free | ((wbuf_write_hit_open | wbuf_write_hit_pend) & ~cfg_inhibit_write_coalescing_i);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:437:5
	always @(*) begin : wbuf_update_comb
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:439:9
		reg timeout;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:440:9
		reg write_hit;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:441:9
		reg read_hit;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:442:9
		reg match_open_ptr;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:443:9
		reg match_pend_ptr;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:444:9
		reg match_free;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:445:9
		reg send;
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:447:9
		timeout = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:448:9
		write_hit = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:449:9
		read_hit = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:450:9
		match_open_ptr = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:451:9
		match_pend_ptr = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:452:9
		match_free = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:453:9
		send = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:455:9
		wbuf_dir_state_d = wbuf_dir_state_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:456:9
		wbuf_dir_d = wbuf_dir_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:457:9
		wbuf_data_d = wbuf_data_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:459:9
		begin : sv2v_autoblock_10
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:459:14
			reg [31:0] i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:459:14
			for (i = 0; i < WBUF_DIR_NENTRIES; i = i + 1)
				begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:460:13
					(* full_case, parallel_case *)
					case (wbuf_dir_state_q[i * 2+:2])
						2'b00: begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:462:21
							match_free = wbuf_write_free & wbuf_dir_free_ptr_bv[i];
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:464:21
							if (write_i && match_free) begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:465:25
								send = (((cfg_threshold_i == 0) | write_uc_i) | flush_all_i) | cfg_inhibit_write_coalescing_i;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:470:25
								wbuf_dir_state_d[i * 2+:2] = (send ? 2'b10 : 2'b01);
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:471:25
								wbuf_dir_d[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? WBUF_TAG_WIDTH + 0 : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (WBUF_TAG_WIDTH + 0)) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? WBUF_TAG_WIDTH + 0 : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (WBUF_TAG_WIDTH + 0))) + ((WBUF_TAG_WIDTH + 0) >= 1 ? WBUF_TAG_WIDTH + 0 : 2 - (WBUF_TAG_WIDTH + 0))) - 1)-:((WBUF_TAG_WIDTH + 0) >= 1 ? WBUF_TAG_WIDTH + 0 : 2 - (WBUF_TAG_WIDTH + 0))] = write_tag;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:472:25
								wbuf_dir_d[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) >= (WBUF_TAG_WIDTH + 1) ? ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) - (WBUF_TAG_WIDTH + 1)) + 1 : ((WBUF_TAG_WIDTH + 1) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) + 1)) - 1)-:((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) >= (WBUF_TAG_WIDTH + 1) ? ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) - (WBUF_TAG_WIDTH + 1)) + 1 : ((WBUF_TAG_WIDTH + 1) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) + 1)] = 0;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:473:25
								wbuf_dir_d[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))))) + ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)) - 1)-:((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)] = wbuf_data_free_ptr;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:474:25
								wbuf_dir_d[(i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? 0 : ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0)] = write_uc_i;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:476:25
								wbuf_data_write(wbuf_data_d[(wbuf_data_free_ptr * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) + ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1))-:(((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)) >= ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0) ? (((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)) - ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0)) + 1 : (((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0) - ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1))) + 1)], wbuf_data_d[(wbuf_data_free_ptr * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)-:WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)], 1'sb0, 1'sb0, write_data, write_be);
							end
						end
						2'b01: begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:488:21
							match_open_ptr = i == sv2v_cast_32_signed(wbuf_write_hit_open_dir_ptr);
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:489:21
							timeout = wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) >= (WBUF_TAG_WIDTH + 1) ? ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) - (WBUF_TAG_WIDTH + 1)) + 1 : ((WBUF_TAG_WIDTH + 1) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) + 1)) - 1)-:((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) >= (WBUF_TAG_WIDTH + 1) ? ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) - (WBUF_TAG_WIDTH + 1)) + 1 : ((WBUF_TAG_WIDTH + 1) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) + 1)] == (cfg_threshold_i - 1);
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:490:21
							read_hit = (read_flush_hit_i & wbuf_write_hit_open) & match_open_ptr;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:491:21
							write_hit = ((write_i & wbuf_write_hit_open) & match_open_ptr) & ~cfg_inhibit_write_coalescing_i;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:496:21
							if (!flush_all_i) begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:497:25
								if (write_hit && cfg_reset_timecnt_on_write_i) begin
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:498:29
									timeout = 1'b0;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:499:29
									wbuf_dir_d[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) >= (WBUF_TAG_WIDTH + 1) ? ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) - (WBUF_TAG_WIDTH + 1)) + 1 : ((WBUF_TAG_WIDTH + 1) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) + 1)) - 1)-:((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) >= (WBUF_TAG_WIDTH + 1) ? ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) - (WBUF_TAG_WIDTH + 1)) + 1 : ((WBUF_TAG_WIDTH + 1) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) + 1)] = 0;
								end
								else if (!timeout)
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:501:29
									wbuf_dir_d[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) >= (WBUF_TAG_WIDTH + 1) ? ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) - (WBUF_TAG_WIDTH + 1)) + 1 : ((WBUF_TAG_WIDTH + 1) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) + 1)) - 1)-:((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) >= (WBUF_TAG_WIDTH + 1) ? ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) - (WBUF_TAG_WIDTH + 1)) + 1 : ((WBUF_TAG_WIDTH + 1) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) + 1)] = wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) >= (WBUF_TAG_WIDTH + 1) ? ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) - (WBUF_TAG_WIDTH + 1)) + 1 : ((WBUF_TAG_WIDTH + 1) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) + 1)) - 1)-:((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) >= (WBUF_TAG_WIDTH + 1) ? ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) - (WBUF_TAG_WIDTH + 1)) + 1 : ((WBUF_TAG_WIDTH + 1) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) + 1)] + 1;
								if ((read_hit | timeout) | cfg_inhibit_write_coalescing_i)
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:505:29
									wbuf_dir_state_d[i * 2+:2] = 2'b10;
							end
							else
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:508:25
								wbuf_dir_state_d[i * 2+:2] = 2'b10;
							if (write_hit)
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:512:25
								wbuf_data_write(wbuf_data_d[(wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))))) + ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)) - 1)-:((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)] * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) + ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1))-:(((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)) >= ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0) ? (((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)) - ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0)) + 1 : (((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0) - ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1))) + 1)], wbuf_data_d[(wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))))) + ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)) - 1)-:((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)] * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)-:WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)], wbuf_data_q[(wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))))) + ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)) - 1)-:((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)] * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) + ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1))-:(((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)) >= ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0) ? (((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)) - ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0)) + 1 : (((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0) - ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1))) + 1)], wbuf_data_q[(wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))))) + ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)) - 1)-:((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)] * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)-:WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)], write_data, write_be);
						end
						2'b10: begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:524:21
							match_pend_ptr = i == sv2v_cast_32_signed(wbuf_write_hit_pend_dir_ptr);
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:525:21
							write_hit = ((write_i & wbuf_write_hit_pend) & match_pend_ptr) & ~cfg_inhibit_write_coalescing_i;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:530:21
							if (write_hit)
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:531:25
								wbuf_data_write(wbuf_data_d[(wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))))) + ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)) - 1)-:((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)] * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) + ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1))-:(((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)) >= ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0) ? (((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)) - ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0)) + 1 : (((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0) - ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1))) + 1)], wbuf_data_d[(wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))))) + ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)) - 1)-:((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)] * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)-:WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)], wbuf_data_q[(wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))))) + ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)) - 1)-:((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)] * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) + ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1))-:(((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)) >= ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0) ? (((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)) - ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0)) + 1 : (((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0) - ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1))) + 1)], wbuf_data_q[(wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))))) + ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)) - 1)-:((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)] * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)-:WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)], write_data, write_be);
							if ((wbuf_send_grant[i] && send_data_ready) && send_meta_ready)
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:542:25
								wbuf_dir_state_d[i * 2+:2] = 2'b11;
						end
						2'b11:
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:547:21
							if (mem_resp_write_valid_i && (i == sv2v_cast_32_signed(ack_id)))
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:548:25
								wbuf_dir_state_d[i * 2+:2] = 2'b00;
					endcase
				end
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:555:5
	always @(*) begin : wbuf_data_valid_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:557:9
		wbuf_data_valid_d = wbuf_data_valid_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:560:9
		if (write_i && wbuf_write_free)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:561:13
			wbuf_data_valid_d[wbuf_data_free_ptr] = 1'b1;
		if (mem_req_write_data_valid_o && mem_req_write_data_ready_i)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:566:13
			wbuf_data_valid_d[send_data_q[HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1)-:((HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1)) >= (WBUF_TAG_WIDTH + 0) ? ((HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1)) - (WBUF_TAG_WIDTH + 0)) + 1 : ((WBUF_TAG_WIDTH + 0) - (HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1))) + 1)]] = 1'b0;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:573:5
	genvar _gv_i_81;
	generate
		for (_gv_i_81 = 0; _gv_i_81 < WBUF_DIR_NENTRIES; _gv_i_81 = _gv_i_81 + 1) begin : gen_wbuf_dir_pend
			localparam i = _gv_i_81;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:574:9
			assign wbuf_meta_pend[(((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? (i * (((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? (WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 1 : 1 - ((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0))) + (((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0) : ((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) - (WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0))) : (((i * (((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? (WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 1 : 1 - ((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0))) + (((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0) : ((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) - (WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0)))) + ((WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0)) >= (HPDcacheCfg[95-:32] + 1) ? ((WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0)) - (HPDcacheCfg[95-:32] + 1)) + 1 : ((HPDcacheCfg[95-:32] + 1) - (WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0))) + 1)) - 1)-:((WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0)) >= (HPDcacheCfg[95-:32] + 1) ? ((WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0)) - (HPDcacheCfg[95-:32] + 1)) + 1 : ((HPDcacheCfg[95-:32] + 1) - (WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0))) + 1)] = wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? WBUF_TAG_WIDTH + 0 : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (WBUF_TAG_WIDTH + 0)) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? WBUF_TAG_WIDTH + 0 : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (WBUF_TAG_WIDTH + 0))) + ((WBUF_TAG_WIDTH + 0) >= 1 ? WBUF_TAG_WIDTH + 0 : 2 - (WBUF_TAG_WIDTH + 0))) - 1)-:((WBUF_TAG_WIDTH + 0) >= 1 ? WBUF_TAG_WIDTH + 0 : 2 - (WBUF_TAG_WIDTH + 0))];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:575:9
			assign wbuf_meta_pend[(((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? (i * (((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? (WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 1 : 1 - ((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0))) + (((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? HPDcacheCfg[95-:32] + 0 : ((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) - (HPDcacheCfg[95-:32] + 0)) : (((i * (((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? (WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 1 : 1 - ((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0))) + (((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? HPDcacheCfg[95-:32] + 0 : ((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) - (HPDcacheCfg[95-:32] + 0))) + ((HPDcacheCfg[95-:32] + 0) >= 1 ? HPDcacheCfg[95-:32] + 0 : 2 - (HPDcacheCfg[95-:32] + 0))) - 1)-:((HPDcacheCfg[95-:32] + 0) >= 1 ? HPDcacheCfg[95-:32] + 0 : 2 - (HPDcacheCfg[95-:32] + 0))] = i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:576:9
			assign wbuf_meta_pend[(i * (((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? (WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 1 : 1 - ((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0))) + (((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? 0 : (WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0)] = wbuf_dir_q[(i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? 0 : ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0)];
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:577:9
			assign wbuf_meta_pend_data_ptr[i * HPDcacheCfg[63-:32]+:HPDcacheCfg[63-:32]] = wbuf_dir_q[((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? (i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) : (((i * ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? ((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 1 : 1 - (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0))) + ((((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) >= 0 ? HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)) : (((HPDcacheCfg[63-:32] + wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32]) + WBUF_TAG_WIDTH) + 0) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))))) + ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)) - 1)-:((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) >= (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) ? ((HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0))) - (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1))) + 1 : ((wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 1)) - (HPDcacheCfg[63-:32] + (wbuf_timecnt_t_wbuf_timecnt_t_hpdcache_wbuf_timecnt_t_HPDcacheCfg[704-:32] + (WBUF_TAG_WIDTH + 0)))) + 1)];
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:580:5
	hpdcache_rrarb #(.N(WBUF_DIR_NENTRIES)) pend_rrarb_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(wbuf_dir_pend_bv),
		.gnt_o(wbuf_send_grant),
		.ready_i(send_data_ready & send_meta_ready)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:590:5
	hpdcache_mux #(
		.NINPUT(WBUF_DIR_NENTRIES),
		.DATA_WIDTH((((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0) >= 0 ? (WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 1 : 1 - ((WBUF_TAG_WIDTH + HPDcacheCfg[95-:32]) + 0))),
		.ONE_HOT_SEL(1'b1)
	) wbuf_send_meta_mux_i(
		.data_i(wbuf_meta_pend),
		.sel_i(wbuf_send_grant),
		.data_o(wbuf_meta_send)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:600:5
	hpdcache_mux #(
		.NINPUT(WBUF_DIR_NENTRIES),
		.DATA_WIDTH(HPDcacheCfg[63-:32]),
		.ONE_HOT_SEL(1'b1)
	) wbuf_send_data_ptr_mux_i(
		.data_i(wbuf_meta_pend_data_ptr),
		.sel_i(wbuf_send_grant),
		.data_o(wbuf_meta_send_data_ptr)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:611:5
	assign send_data_w = |wbuf_dir_pend_bv & send_meta_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:612:5
	assign send_data_d[HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1)-:((HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1)) >= (WBUF_TAG_WIDTH + 0) ? ((HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1)) - (WBUF_TAG_WIDTH + 0)) + 1 : ((WBUF_TAG_WIDTH + 0) - (HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1))) + 1)] = wbuf_meta_send_data_ptr;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:613:5
	assign send_data_d[WBUF_TAG_WIDTH - 1-:WBUF_TAG_WIDTH] = wbuf_meta_send[WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0)-:((WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0)) >= (HPDcacheCfg[95-:32] + 1) ? ((WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0)) - (HPDcacheCfg[95-:32] + 1)) + 1 : ((HPDcacheCfg[95-:32] + 1) - (WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0))) + 1)];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:615:5
	hpdcache_fifo_reg_F03C9_21C1E #(
		.fifo_data_t_HPDcacheCfg(HPDcacheCfg),
		.fifo_data_t_WBUF_TAG_WIDTH(WBUF_TAG_WIDTH),
		.FIFO_DEPTH(WBUF_SEND_FIFO_DEPTH),
		.FEEDTHROUGH(HPDcacheCfg[672])
	) send_data_ptr_fifo_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.w_i(send_data_w),
		.wok_o(send_data_ready),
		.wdata_i(send_data_d),
		.r_i(mem_req_write_data_ready_i),
		.rok_o(mem_req_write_data_valid_o),
		.rdata_o(send_data_q)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:630:5
	assign send_tag = sv2v_cast_F14CC(send_data_q[WBUF_TAG_WIDTH - 1-:WBUF_TAG_WIDTH]);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:631:5
	assign send_data = wbuf_data_q[(send_data_q[HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1)-:((HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1)) >= (WBUF_TAG_WIDTH + 0) ? ((HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1)) - (WBUF_TAG_WIDTH + 0)) + 1 : ((WBUF_TAG_WIDTH + 0) - (HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1))) + 1)] * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) + ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1))-:(((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)) >= ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0) ? (((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)) - ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0)) + 1 : (((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) + 0) - ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1))) + 1)];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:632:5
	assign send_be = wbuf_data_q[(send_data_q[HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1)-:((HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1)) >= (WBUF_TAG_WIDTH + 0) ? ((HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1)) - (WBUF_TAG_WIDTH + 0)) + 1 : ((WBUF_TAG_WIDTH + 0) - (HPDcacheCfg[63-:32] + (WBUF_TAG_WIDTH - 1))) + 1)] * ((WBUF_DATA_NWORDS * WBUF_WORD_WIDTH) + (WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)))) + ((WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)) - 1)-:WBUF_DATA_NWORDS * (WBUF_WORD_WIDTH / 8)];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:635:5
	assign send_meta_valid = |wbuf_dir_pend_bv & send_data_ready;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:637:5
	hpdcache_fifo_reg_C7CE8_7E04B #(
		.fifo_data_t_HPDcacheCfg(HPDcacheCfg),
		.fifo_data_t_WBUF_TAG_WIDTH(WBUF_TAG_WIDTH),
		.FIFO_DEPTH(WBUF_SEND_FIFO_DEPTH),
		.FEEDTHROUGH(HPDcacheCfg[672])
	) send_meta_fifo_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.w_i(send_meta_valid),
		.wok_o(send_meta_ready),
		.wdata_i(wbuf_meta_send),
		.r_i(mem_req_write_ready_i),
		.rok_o(mem_req_write_valid_o),
		.rdata_o(wbuf_meta_send_q)
	);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:655:5
	assign mem_req_write_o[hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))-:((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) >= (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) ? ((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) - (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7))) + 1 : ((11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[639-:32] + (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)))) + 1)] = {wbuf_meta_send_q[WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0)-:((WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0)) >= (HPDcacheCfg[95-:32] + 1) ? ((WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0)) - (HPDcacheCfg[95-:32] + 1)) + 1 : ((HPDcacheCfg[95-:32] + 1) - (WBUF_TAG_WIDTH + (HPDcacheCfg[95-:32] + 0))) + 1)], {WBUF_OFFSET_WIDTH {1'b0}}};
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:656:5
	assign mem_req_write_o[11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)-:((11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) >= (3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) ? ((11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) - (3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7))) + 1 : ((3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) - (11 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) + 1)] = 0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:657:5
	// removed localparam type hpdcache_pkg_hpdcache_mem_size_t
	function automatic [2:0] hpdcache_pkg_get_hpdcache_mem_size;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:304:66
		input reg [31:0] bytes;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:305:9
		if (bytes == 0)
			hpdcache_pkg_get_hpdcache_mem_size = 0;
		else if (bytes <= 2)
			hpdcache_pkg_get_hpdcache_mem_size = 1;
		else if (bytes <= 4)
			hpdcache_pkg_get_hpdcache_mem_size = 2;
		else if (bytes <= 8)
			hpdcache_pkg_get_hpdcache_mem_size = 3;
		else if (bytes <= 16)
			hpdcache_pkg_get_hpdcache_mem_size = 4;
		else if (bytes <= 32)
			hpdcache_pkg_get_hpdcache_mem_size = 5;
		else if (bytes <= 64)
			hpdcache_pkg_get_hpdcache_mem_size = 6;
		else if (bytes <= 128)
			hpdcache_pkg_get_hpdcache_mem_size = 7;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv:315:13
			hpdcache_pkg_get_hpdcache_mem_size = 0;
	endfunction
	assign mem_req_write_o[3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)-:((3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) >= (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7) ? ((3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6)) - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7)) + 1 : ((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 7) - (3 + (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))) + 1)] = hpdcache_pkg_get_hpdcache_mem_size(HPDcacheCfg[127-:32] / 8);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:658:5
	function automatic [hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] sv2v_cast_CF630;
		input reg [hpdcache_mem_id_t_hpdcache_mem_id_t_hpdcache_mem_id_t_HPDcacheCfg[607-:32] - 1:0] inp;
		sv2v_cast_CF630 = inp;
	endfunction
	assign mem_req_write_o[hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6-:((hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6) >= 7 ? hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 0 : 8 - (hpdcache_mem_req_t_hpdcache_mem_req_t_hpdcache_mem_req_t_HPDcacheCfg[607-:32] + 6))] = sv2v_cast_CF630(wbuf_meta_send_q[HPDcacheCfg[95-:32] + 0-:((HPDcacheCfg[95-:32] + 0) >= 1 ? HPDcacheCfg[95-:32] + 0 : 2 - (HPDcacheCfg[95-:32] + 0))]);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:659:5
	// removed localparam type hpdcache_pkg_hpdcache_mem_command_e
	assign mem_req_write_o[6-:2] = 2'b01;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:660:5
	// removed localparam type hpdcache_pkg_hpdcache_mem_atomic_e
	assign mem_req_write_o[4-:4] = 4'b0000;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:661:5
	assign mem_req_write_o[0] = ~wbuf_meta_send_q[0];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:663:5
	assign mem_req_write_data_o[0] = 1'b1;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:665:5
	generate
		if (WBUF_MEM_DATA_RATIO > 1) begin : gen_wbuf_data_upsizing
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:666:9
			wire [((HPDcacheCfg[127-:32] / 8) * WBUF_MEM_DATA_RATIO) - 1:0] mem_req_be;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:669:9
			hpdcache_demux #(
				.NOUTPUT(WBUF_MEM_DATA_RATIO),
				.DATA_WIDTH(HPDcacheCfg[127-:32] / 8),
				.ONE_HOT_SEL(1'b0)
			) mem_write_be_demux_i(
				.data_i(send_be),
				.sel_i(send_tag[0+:WBUF_MEM_DATA_WORD_INDEX_WIDTH]),
				.data_o(mem_req_be)
			);
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:679:9
			assign mem_req_write_data_o[hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0)-:((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0)) >= ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 1) ? ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0)) - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 1)) + 1 : (((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 1) - (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0))) + 1)] = {WBUF_MEM_DATA_RATIO {send_data}};
			assign mem_req_write_data_o[(hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0-:(((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0) >= 1 ? (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0 : 2 - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0))] = mem_req_be;
		end
		else if (WBUF_MEM_DATA_RATIO == 1) begin : gen_wbuf_data_forwarding
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:683:9
			assign mem_req_write_data_o[hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0)-:((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0)) >= ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 1) ? ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0)) - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 1)) + 1 : (((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 1) - (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] + ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0))) + 1)] = send_data;
			assign mem_req_write_data_o[(hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0-:(((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0) >= 1 ? (hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0 : 2 - ((hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_hpdcache_mem_req_w_t_HPDcacheCfg[575-:32] / 8) + 0))] = send_be;
		end
	endgenerate
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:687:5
	assign mem_resp_write_ready_o = 1'b1;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:692:5
	always @(posedge clk_i)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:692:32
		wbuf_data_q <= wbuf_data_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:694:5
	always @(posedge clk_i or negedge rst_ni) begin : wbuf_state_ff
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:696:9
		if (!rst_ni) begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:697:13
			wbuf_dir_q <= 1'sb0;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:698:13
			wbuf_dir_state_q <= {WBUF_DIR_NENTRIES {2'b00}};
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:699:13
			wbuf_data_valid_q <= 1'sb0;
		end
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:701:13
			wbuf_dir_q <= wbuf_dir_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:702:13
			wbuf_dir_state_q <= wbuf_dir_state_d;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:703:13
			wbuf_data_valid_q <= wbuf_data_valid_d;
		end
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:711:5
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:713:5
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:715:5
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:718:5
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:720:5
	// removed an assertion item
	// ack_sent_assert : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	mem_resp_write_valid_i -> (wbuf_dir_state_q[ack_id] == WBUF_SENT)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:722:13
	// 	$error("WBUF: acknowledging a not SENT slot");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:723:5
	// removed an assertion item
	// send_valid_data_assert : assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	mem_req_write_data_valid_o -> (wbuf_data_valid_q[send_data_q.data_ptr] == 1'b1)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv:725:13
	// 	$error("WBUF: sending a not valid data");
	// end
	initial _sv2v_0 = 0;
endmodule
