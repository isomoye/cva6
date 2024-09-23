module hpdcache_ctrl_pe (
	core_req_valid_i,
	core_req_ready_o,
	rtab_req_valid_i,
	rtab_req_ready_o,
	refill_req_valid_i,
	refill_req_ready_o,
	st0_req_is_uncacheable_i,
	st0_req_need_rsp_i,
	st0_req_is_load_i,
	st0_req_is_store_i,
	st0_req_is_amo_i,
	st0_req_is_cmo_fence_i,
	st0_req_is_cmo_inval_i,
	st0_req_is_cmo_prefetch_i,
	st0_req_mshr_check_o,
	st0_req_cachedir_read_o,
	st0_req_cachedata_read_o,
	st1_req_valid_i,
	st1_req_abort_i,
	st1_req_rtab_i,
	st1_req_is_uncacheable_i,
	st1_req_need_rsp_i,
	st1_req_is_load_i,
	st1_req_is_store_i,
	st1_req_is_amo_i,
	st1_req_is_cmo_inval_i,
	st1_req_is_cmo_fence_i,
	st1_req_is_cmo_prefetch_i,
	st1_req_valid_o,
	st1_rsp_valid_o,
	st1_rsp_aborted_o,
	st1_req_cachedir_updt_lru_o,
	st1_req_cachedata_write_o,
	st1_req_cachedata_write_enable_o,
	st2_req_valid_i,
	st2_req_is_prefetch_i,
	st2_req_valid_o,
	st2_req_we_o,
	st2_req_is_prefetch_o,
	st2_req_mshr_alloc_o,
	st2_req_mshr_alloc_cs_o,
	rtab_full_i,
	rtab_check_o,
	rtab_check_hit_i,
	st1_rtab_alloc_o,
	st1_rtab_alloc_and_link_o,
	st1_rtab_commit_o,
	st1_rtab_rback_o,
	st1_rtab_mshr_hit_o,
	st1_rtab_mshr_full_o,
	st1_rtab_mshr_ready_o,
	st1_rtab_wbuf_hit_o,
	st1_rtab_wbuf_not_ready_o,
	cachedir_hit_i,
	cachedir_init_ready_i,
	mshr_alloc_ready_i,
	mshr_hit_i,
	mshr_full_i,
	refill_busy_i,
	refill_core_rsp_valid_i,
	wbuf_write_ready_i,
	wbuf_read_hit_i,
	wbuf_write_valid_o,
	wbuf_write_uncacheable_o,
	wbuf_read_flush_hit_o,
	uc_busy_i,
	uc_req_valid_o,
	uc_core_rsp_ready_o,
	cmo_busy_i,
	cmo_wait_i,
	cmo_req_valid_o,
	evt_cache_write_miss_o,
	evt_cache_read_miss_o,
	evt_uncached_req_o,
	evt_cmo_req_o,
	evt_write_req_o,
	evt_read_req_o,
	evt_prefetch_req_o,
	evt_req_on_hold_o,
	evt_rtab_rollback_o,
	evt_stall_refill_o,
	evt_stall_o
);
	reg _sv2v_0;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:32:5
	input wire core_req_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:33:5
	output reg core_req_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:35:5
	input wire rtab_req_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:36:5
	output reg rtab_req_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:38:5
	input wire refill_req_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:39:5
	output reg refill_req_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:44:5
	input wire st0_req_is_uncacheable_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:45:5
	input wire st0_req_need_rsp_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:46:5
	input wire st0_req_is_load_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:47:5
	input wire st0_req_is_store_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:48:5
	input wire st0_req_is_amo_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:49:5
	input wire st0_req_is_cmo_fence_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:50:5
	input wire st0_req_is_cmo_inval_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:51:5
	input wire st0_req_is_cmo_prefetch_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:52:5
	output reg st0_req_mshr_check_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:53:5
	output reg st0_req_cachedir_read_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:54:5
	output reg st0_req_cachedata_read_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:59:5
	input wire st1_req_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:60:5
	input wire st1_req_abort_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:61:5
	input wire st1_req_rtab_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:62:5
	input wire st1_req_is_uncacheable_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:63:5
	input wire st1_req_need_rsp_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:64:5
	input wire st1_req_is_load_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:65:5
	input wire st1_req_is_store_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:66:5
	input wire st1_req_is_amo_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:67:5
	input wire st1_req_is_cmo_inval_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:68:5
	input wire st1_req_is_cmo_fence_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:69:5
	input wire st1_req_is_cmo_prefetch_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:70:5
	output reg st1_req_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:71:5
	output reg st1_rsp_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:72:5
	output reg st1_rsp_aborted_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:73:5
	output reg st1_req_cachedir_updt_lru_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:74:5
	output reg st1_req_cachedata_write_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:75:5
	output reg st1_req_cachedata_write_enable_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:80:5
	input wire st2_req_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:81:5
	input wire st2_req_is_prefetch_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:82:5
	output reg st2_req_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:83:5
	output reg st2_req_we_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:84:5
	output reg st2_req_is_prefetch_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:85:5
	output reg st2_req_mshr_alloc_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:86:5
	output reg st2_req_mshr_alloc_cs_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:91:5
	input wire rtab_full_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:92:5
	output reg rtab_check_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:93:5
	input wire rtab_check_hit_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:94:5
	output wire st1_rtab_alloc_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:95:5
	output wire st1_rtab_alloc_and_link_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:96:5
	output reg st1_rtab_commit_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:97:5
	output wire st1_rtab_rback_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:98:5
	output reg st1_rtab_mshr_hit_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:99:5
	output reg st1_rtab_mshr_full_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:100:5
	output reg st1_rtab_mshr_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:101:5
	output reg st1_rtab_wbuf_hit_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:102:5
	output reg st1_rtab_wbuf_not_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:107:5
	input wire cachedir_hit_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:108:5
	input wire cachedir_init_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:113:5
	input wire mshr_alloc_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:114:5
	input wire mshr_hit_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:115:5
	input wire mshr_full_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:120:5
	input wire refill_busy_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:121:5
	input wire refill_core_rsp_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:126:5
	input wire wbuf_write_ready_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:127:5
	input wire wbuf_read_hit_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:128:5
	output reg wbuf_write_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:129:5
	output reg wbuf_write_uncacheable_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:130:5
	output reg wbuf_read_flush_hit_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:135:5
	input wire uc_busy_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:136:5
	output reg uc_req_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:137:5
	output wire uc_core_rsp_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:142:5
	input wire cmo_busy_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:143:5
	input wire cmo_wait_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:144:5
	output reg cmo_req_valid_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:149:5
	output reg evt_cache_write_miss_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:150:5
	output reg evt_cache_read_miss_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:151:5
	output reg evt_uncached_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:152:5
	output reg evt_cmo_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:153:5
	output reg evt_write_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:154:5
	output reg evt_read_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:155:5
	output reg evt_prefetch_req_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:156:5
	output wire evt_req_on_hold_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:157:5
	output wire evt_rtab_rollback_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:158:5
	output reg evt_stall_refill_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:159:5
	output wire evt_stall_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:166:5
	wire st1_fence;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:167:5
	reg st1_rtab_alloc;
	reg st1_rtab_alloc_and_link;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:180:5
	assign st1_fence = ((st1_req_is_uncacheable_i | st1_req_is_cmo_fence_i) | st1_req_is_cmo_inval_i) | st1_req_is_amo_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:186:5
	assign evt_stall_o = core_req_valid_i & ~core_req_ready_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:191:5
	assign uc_core_rsp_ready_o = ~refill_core_rsp_valid_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:197:5
	assign st1_rtab_alloc_o = st1_rtab_alloc & ~st1_req_rtab_i;
	assign st1_rtab_alloc_and_link_o = st1_rtab_alloc_and_link;
	assign st1_rtab_rback_o = st1_rtab_alloc & st1_req_rtab_i;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:202:5
	assign evt_req_on_hold_o = st1_rtab_alloc | st1_rtab_alloc_and_link;
	assign evt_rtab_rollback_o = st1_rtab_rback_o;
	// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:208:5
	always @(*) begin : hpdcache_ctrl_comb
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:210:9
		reg nop;
		reg st1_nop;
		reg st2_nop;
		if (_sv2v_0)
			;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:212:9
		uc_req_valid_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:214:9
		cmo_req_valid_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:216:9
		wbuf_write_valid_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:217:9
		wbuf_read_flush_hit_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:218:9
		wbuf_write_uncacheable_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:220:9
		core_req_ready_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:221:9
		rtab_req_ready_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:222:9
		refill_req_ready_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:224:9
		st0_req_mshr_check_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:225:9
		st0_req_cachedir_read_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:226:9
		st0_req_cachedata_read_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:228:9
		st1_req_valid_o = st1_req_valid_i;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:229:9
		st1_nop = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:230:9
		st1_req_cachedata_write_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:231:9
		st1_req_cachedata_write_enable_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:232:9
		st1_req_cachedir_updt_lru_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:233:9
		st1_rsp_valid_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:234:9
		st1_rsp_aborted_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:236:9
		st2_req_valid_o = st2_req_valid_i;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:237:9
		st2_req_we_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:238:9
		st2_req_is_prefetch_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:239:9
		st2_req_mshr_alloc_cs_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:240:9
		st2_req_mshr_alloc_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:241:9
		st2_nop = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:243:9
		nop = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:245:9
		rtab_check_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:246:9
		st1_rtab_alloc = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:247:9
		st1_rtab_alloc_and_link = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:248:9
		st1_rtab_commit_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:249:9
		st1_rtab_mshr_hit_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:250:9
		st1_rtab_mshr_full_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:251:9
		st1_rtab_mshr_ready_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:252:9
		st1_rtab_wbuf_hit_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:253:9
		st1_rtab_wbuf_not_ready_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:255:9
		evt_cache_write_miss_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:256:9
		evt_cache_read_miss_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:257:9
		evt_uncached_req_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:258:9
		evt_cmo_req_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:259:9
		evt_write_req_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:260:9
		evt_read_req_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:261:9
		evt_prefetch_req_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:262:9
		evt_stall_refill_o = 1'b0;
		// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:266:9
		if (!cachedir_init_ready_i)
			;
		else if (refill_busy_i)
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:275:13
			evt_stall_refill_o = core_req_valid_i;
		else begin
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:284:13
			if (st2_req_valid_i) begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:285:17
				st2_req_valid_o = 1'b0;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:288:17
				st2_req_mshr_alloc_cs_o = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:289:17
				st2_req_mshr_alloc_o = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:292:17
				st2_nop = 1'b1;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:295:17
				evt_cache_read_miss_o = ~st2_req_is_prefetch_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:296:17
				evt_read_req_o = ~st2_req_is_prefetch_i;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:297:17
				evt_prefetch_req_o = st2_req_is_prefetch_i;
			end
			if (st1_req_valid_i) begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:306:17
				rtab_check_o = ~st1_req_rtab_i & ~st1_fence;
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:310:17
				if (st1_req_abort_i && !st1_req_rtab_i) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:311:21
					st1_rsp_valid_o = st1_req_need_rsp_i;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:312:21
					st1_rsp_aborted_o = 1'b1;
				end
				else if (rtab_check_o && rtab_check_hit_i) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:318:21
					st1_rtab_alloc_and_link = 1'b1;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:321:21
					st1_nop = 1'b1;
				end
				else if (st1_req_is_cmo_fence_i || st1_req_is_cmo_inval_i) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:327:21
					cmo_req_valid_o = 1'b1;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:328:21
					st1_nop = 1'b1;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:331:21
					evt_cmo_req_o = 1'b1;
				end
				else if (st1_req_is_uncacheable_i) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:338:21
					uc_req_valid_o = 1'b1;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:339:21
					st1_nop = 1'b1;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:342:21
					evt_uncached_req_o = 1'b1;
				end
				else begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:351:21
					if (st1_req_is_amo_i) begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:352:25
						uc_req_valid_o = 1'b1;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:353:25
						st1_nop = 1'b1;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:356:25
						evt_uncached_req_o = 1'b1;
					end
					if (|{st1_req_is_load_i, st1_req_is_cmo_prefetch_i}) begin
						begin
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:367:25
							if (!cachedir_hit_i) begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:370:29
								wbuf_read_flush_hit_o = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:373:29
								st1_nop = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:376:29
								if (mshr_hit_i) begin
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:378:33
									st1_rtab_alloc = 1'b1;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:380:33
									st1_rtab_mshr_hit_o = 1'b1;
								end
								else if (mshr_full_i) begin
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:386:33
									st1_rtab_alloc = 1'b1;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:388:33
									st1_rtab_mshr_full_o = 1'b1;
								end
								else if (wbuf_read_hit_i) begin
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:395:33
									st1_rtab_alloc = 1'b1;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:397:33
									st1_rtab_wbuf_hit_o = 1'b1;
								end
								else if (!mshr_alloc_ready_i) begin
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:412:33
									st1_rtab_alloc = 1'b1;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:414:33
									st1_rtab_mshr_ready_o = 1'b1;
								end
								else begin
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:422:33
									st1_rtab_commit_o = st1_req_rtab_i;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:424:33
									st2_req_valid_o = 1'b1;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:425:33
									st2_req_we_o = 1'b1;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:426:33
									st2_req_is_prefetch_o = st1_req_is_cmo_prefetch_i;
								end
							end
							else begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:436:29
								st1_rtab_commit_o = st1_req_rtab_i;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:440:29
								st1_nop = st1_req_rtab_i & ~rtab_req_valid_i;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:443:29
								st1_req_cachedir_updt_lru_o = st1_req_is_load_i;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:446:29
								st1_rsp_valid_o = st1_req_need_rsp_i;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:449:29
								evt_read_req_o = ~st1_req_is_cmo_prefetch_i;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:450:29
								evt_prefetch_req_o = st1_req_is_cmo_prefetch_i;
							end
						end
					end
					if (st1_req_is_store_i) begin
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:465:25
						wbuf_write_valid_o = ~mshr_hit_i;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:477:25
						st1_nop = ((core_req_valid_i | rtab_req_valid_i) & st0_req_is_load_i) | (st1_req_rtab_i & ~rtab_req_valid_i);
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:486:25
						st1_req_cachedata_write_o = 1'b1;
						// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:489:25
						if (!cachedir_hit_i) begin
							begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:491:29
								if (mshr_hit_i) begin
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:493:33
									st1_rtab_alloc = 1'b1;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:495:33
									st1_rtab_mshr_hit_o = 1'b1;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:498:33
									st1_nop = 1'b1;
								end
								else if (!wbuf_write_ready_i) begin
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:504:33
									st1_rtab_alloc = 1'b1;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:506:33
									st1_rtab_wbuf_not_ready_o = 1'b1;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:509:33
									st1_nop = 1'b1;
								end
								else begin
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:515:33
									st1_rtab_commit_o = st1_req_rtab_i;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:518:33
									st1_rsp_valid_o = st1_req_need_rsp_i;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:521:33
									evt_cache_write_miss_o = 1'b1;
									// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:522:33
									evt_write_req_o = 1'b1;
								end
							end
						end
						else
							// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:529:29
							if (!wbuf_write_ready_i) begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:531:33
								st1_rtab_alloc = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:533:33
								st1_rtab_wbuf_not_ready_o = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:536:33
								st1_nop = 1'b1;
							end
							else begin
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:543:33
								st1_rtab_commit_o = st1_req_rtab_i;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:546:33
								st1_rsp_valid_o = st1_req_need_rsp_i;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:549:33
								st1_req_cachedir_updt_lru_o = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:552:33
								st1_req_cachedata_write_enable_o = 1'b1;
								// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:555:33
								evt_write_req_o = 1'b1;
							end
					end
				end
			end
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:567:13
			nop = st1_nop | st2_nop;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:580:13
			core_req_ready_o = (((((core_req_valid_i & ~rtab_req_valid_i) & ~refill_req_valid_i) & ~rtab_full_i) & ~cmo_busy_i) & ~uc_busy_i) & ~nop;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:588:13
			rtab_req_ready_o = ((rtab_req_valid_i & ~refill_req_valid_i) & (~cmo_busy_i | cmo_wait_i)) & ~nop;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:593:13
			refill_req_ready_o = ((refill_req_valid_i & (~cmo_busy_i | cmo_wait_i)) & ~st1_req_valid_i) & ~st2_req_valid_i;
			// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:599:13
			st1_req_valid_o = core_req_ready_o | rtab_req_ready_o;
			if ((core_req_ready_o | rtab_req_ready_o) && !st0_req_is_uncacheable_i) begin
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:609:17
				st0_req_cachedata_read_o = st0_req_is_load_i & ~((st1_req_valid_i & st1_req_is_store_i) & ~st1_req_is_uncacheable_i);
				// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:612:17
				if (((st0_req_is_load_i | st0_req_is_cmo_prefetch_i) | st0_req_is_store_i) | st0_req_is_amo_i) begin
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:617:21
					st0_req_mshr_check_o = 1'b1;
					// Trace: core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv:618:21
					st0_req_cachedir_read_o = ~st0_req_is_amo_i;
				end
			end
		end
	end
	initial _sv2v_0 = 0;
endmodule
