module hpdcache_cmo_DA064_8E9A7 (
	clk_i,
	rst_ni,
	wbuf_empty_i,
	mshr_empty_i,
	rtab_empty_i,
	ctrl_empty_i,
	req_valid_i,
	req_ready_o,
	req_op_i,
	req_addr_i,
	req_wdata_i,
	req_wait_o,
	wbuf_flush_all_o,
	dir_check_o,
	dir_check_set_o,
	dir_check_tag_o,
	dir_check_hit_way_i,
	dir_inval_o,
	dir_inval_set_o,
	dir_inval_way_o
);
	// removed localparam type hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_nline_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_nline_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_addr_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_addr_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_set_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_set_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg = 0;
	// removed localparam type hpdcache_way_vector_t_HPDcacheCfg_type
	parameter [1349:0] hpdcache_way_vector_t_HPDcacheCfg = 0;
	reg _sv2v_0;
	// removed import hpdcache_pkg::*;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:31:15
	// removed localparam type hpdcache_pkg_hpdcache_victim_sel_policy_t
	// removed localparam type hpdcache_pkg_hpdcache_user_cfg_t
	// removed localparam type hpdcache_pkg_hpdcache_cfg_t
	parameter [1349:0] HPDcacheCfg = 1'sb0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:33:20
	// removed localparam type hpdcache_nline_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:34:20
	// removed localparam type hpdcache_tag_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:35:20
	// removed localparam type hpdcache_set_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:36:20
	// removed localparam type hpdcache_data_word_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:37:20
	// removed localparam type hpdcache_way_vector_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:39:20
	// removed localparam type hpdcache_req_addr_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:40:20
	// removed localparam type hpdcache_req_data_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:47:5
	input wire clk_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:48:5
	input wire rst_ni;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:52:5
	input wire wbuf_empty_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:53:5
	input wire mshr_empty_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:54:5
	input wire rtab_empty_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:55:5
	input wire ctrl_empty_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:60:5
	input wire req_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:61:5
	output wire req_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:62:5
	// removed localparam type hpdcache_pkg_hpdcache_cmoh_op_t
	input wire [3:0] req_op_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:63:5
	input wire [hpdcache_req_addr_t_HPDcacheCfg[1317-:32] - 1:0] req_addr_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:64:5
	input wire [(hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1157-:32] * hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]) - 1:0] req_wdata_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:65:5
	output wire req_wait_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:70:5
	output reg wbuf_flush_all_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:75:5
	output reg dir_check_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:76:5
	output wire [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] dir_check_set_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:77:5
	output wire [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] dir_check_tag_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:78:5
	input wire [hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] dir_check_hit_way_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:80:5
	output reg dir_inval_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:81:5
	output reg [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] dir_inval_set_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:82:5
	output reg [hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] dir_inval_way_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:89:5
	// removed localparam type hpdcache_cmoh_fsm_t
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:100:5
	reg [31:0] cmoh_fsm_q;
	reg [31:0] cmoh_fsm_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:101:5
	reg [3:0] cmoh_op_q;
	reg [3:0] cmoh_op_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:102:5
	reg [hpdcache_req_addr_t_HPDcacheCfg[1317-:32] - 1:0] cmoh_addr_q;
	reg [hpdcache_req_addr_t_HPDcacheCfg[1317-:32] - 1:0] cmoh_addr_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:103:5
	reg [hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] cmoh_way_q;
	reg [hpdcache_way_vector_t_HPDcacheCfg[1221-:32] - 1:0] cmoh_way_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:104:5
	reg [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] cmoh_set_cnt_q;
	reg [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] cmoh_set_cnt_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:105:5
	wire [hpdcache_nline_t_HPDcacheCfg[383-:32] - 1:0] cmoh_nline_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:106:5
	wire [hpdcache_tag_t_hpdcache_tag_t_hpdcache_tag_t_HPDcacheCfg[351-:32] - 1:0] cmoh_tag_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:107:5
	wire [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] cmoh_set_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:108:5
	wire [hpdcache_data_word_t_hpdcache_data_word_t_hpdcache_data_word_t_HPDcacheCfg[1285-:32] - 1:0] cmoh_wdata;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:113:5
	assign cmoh_nline_q = cmoh_addr_q[HPDcacheCfg[447-:32]+:HPDcacheCfg[383-:32]];
	assign cmoh_set_q = cmoh_nline_q[0+:HPDcacheCfg[415-:32]];
	assign cmoh_tag_q = cmoh_nline_q[HPDcacheCfg[415-:32]+:HPDcacheCfg[351-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:117:5
	assign dir_check_set_o = cmoh_set_q;
	assign dir_check_tag_o = cmoh_tag_q;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:120:5
	assign req_ready_o = cmoh_fsm_q == 32'd0;
	assign req_wait_o = (cmoh_fsm_q == 32'd1) | (cmoh_fsm_q == 32'd2);
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:126:5
	assign cmoh_wdata = req_wdata_i[0+:hpdcache_req_data_t_hpdcache_req_data_t_hpdcache_req_data_t_HPDcacheCfg[1285-:32]];
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:128:5
	function automatic [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] sv2v_cast_23D3D;
		input reg [hpdcache_set_t_HPDcacheCfg[415-:32] - 1:0] inp;
		sv2v_cast_23D3D = inp;
	endfunction
	always @(*) begin : cmoh_fsm_comb
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:130:9
		cmoh_op_d = cmoh_op_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:131:9
		cmoh_addr_d = cmoh_addr_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:132:9
		cmoh_way_d = cmoh_way_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:133:9
		cmoh_set_cnt_d = cmoh_set_cnt_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:135:9
		dir_check_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:136:9
		dir_inval_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:137:9
		dir_inval_set_o = cmoh_set_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:138:9
		dir_inval_way_o = 1'sb0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:140:9
		wbuf_flush_all_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:142:9
		cmoh_fsm_d = cmoh_fsm_q;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:144:9
		(* full_case, parallel_case *)
		case (cmoh_fsm_q)
			32'd0: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:146:17
				cmoh_fsm_d = 32'd0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:148:17
				if (req_valid_i)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:149:21
					(* full_case, parallel_case *)
					case (1'b1)
						req_op_i[0]: begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:152:29
							wbuf_flush_all_o = rtab_empty_i;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:155:29
							if (!rtab_empty_i || !wbuf_empty_i)
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:156:33
								cmoh_fsm_d = 32'd1;
						end
						req_op_i[3], req_op_i[2], req_op_i[1]: begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:162:29
							cmoh_op_d = req_op_i;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:163:29
							cmoh_addr_d = req_addr_i;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:164:29
							cmoh_way_d = cmoh_wdata[0+:HPDcacheCfg[1221-:32]];
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:165:29
							cmoh_set_cnt_d = 0;
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:166:29
							if ((mshr_empty_i && rtab_empty_i) && ctrl_empty_i) begin
								begin
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:167:33
									if (req_op_i[3])
										// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:168:37
										cmoh_fsm_d = 32'd3;
									else
										// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:170:37
										cmoh_fsm_d = 32'd4;
								end
							end
							else
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:173:33
								cmoh_fsm_d = 32'd2;
						end
					endcase
			end
			32'd1: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:180:17
				wbuf_flush_all_o = rtab_empty_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:181:17
				if (wbuf_empty_i && rtab_empty_i)
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:182:21
					cmoh_fsm_d = 32'd0;
				else
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:184:21
					cmoh_fsm_d = 32'd1;
			end
			32'd2: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:188:17
				cmoh_fsm_d = 32'd2;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:189:17
				if ((mshr_empty_i && rtab_empty_i) && ctrl_empty_i) begin
					begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:190:21
						if (cmoh_op_q[3])
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:191:25
							cmoh_fsm_d = 32'd3;
						else
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:193:25
							cmoh_fsm_d = 32'd4;
					end
				end
			end
			32'd3: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:198:17
				dir_check_o = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:199:17
				cmoh_fsm_d = 32'd4;
			end
			32'd4: begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:202:17
				cmoh_fsm_d = 32'd4;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:203:17
				(* full_case, parallel_case *)
				case (1'b1)
					cmoh_op_q[3]: begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:205:25
						dir_inval_o = |dir_check_hit_way_i;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:206:25
						dir_inval_way_o = dir_check_hit_way_i;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:207:25
						cmoh_fsm_d = 32'd0;
					end
					cmoh_op_q[1]: begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:210:25
						dir_inval_o = 1'b1;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:211:25
						dir_inval_way_o = {HPDcacheCfg[1221-:32] {1'b1}};
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:212:25
						dir_inval_set_o = cmoh_set_cnt_q;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:213:25
						cmoh_set_cnt_d = cmoh_set_cnt_q + 1;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:214:25
						if (cmoh_set_cnt_q == sv2v_cast_23D3D(HPDcacheCfg[1253-:32] - 1))
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:215:29
							cmoh_fsm_d = 32'd0;
					end
					cmoh_op_q[2]: begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:219:25
						dir_inval_o = 1'b1;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:220:25
						dir_inval_way_o = cmoh_way_q;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:221:25
						cmoh_fsm_d = 32'd0;
					end
				endcase
			end
		endcase
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:231:5
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:233:9
		if (!rst_ni)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:234:13
			cmoh_fsm_q <= 32'd0;
		else
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:236:13
			cmoh_fsm_q <= cmoh_fsm_d;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:240:5
	always @(posedge clk_i) begin
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:242:9
		cmoh_op_q <= cmoh_op_d;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:243:9
		cmoh_addr_q <= cmoh_addr_d;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:244:9
		cmoh_way_q <= cmoh_way_d;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:245:9
		cmoh_set_cnt_q <= cmoh_set_cnt_d;
	end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:252:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	req_valid_i -> $onehot({req_op_i.is_fence, req_op_i.is_inval_by_nline, req_op_i.is_inval_by_set, req_op_i.is_inval_all})
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:257:21
	// 	$error("cmo_handler: invalid request");
	// end
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:259:5
	// removed an assertion item
	// assert property (@(posedge clk_i) disable iff (!rst_ni)
	// 	req_valid_i -> (cmoh_fsm_q == CMOH_IDLE)
	// ) else begin
	// 	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv:261:21
	// 	$error("cmo_handler: new request received while busy");
	// end
	initial _sv2v_0 = 0;
endmodule
