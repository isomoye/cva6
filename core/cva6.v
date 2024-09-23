module cva6_4956D_8351D (
	clk_i,
	rst_ni,
	boot_addr_i,
	hart_id_i,
	irq_i,
	ipi_i,
	time_irq_i,
	debug_req_i,
	rvfi_probes_o,
	cvxif_req_o,
	cvxif_resp_i,
	noc_req_o,
	noc_resp_i
);
	// removed localparam type axi_ar_chan_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_ar_chan_t_ariane_axi_IdWidth_type
	// removed localparam type axi_ar_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_ar_chan_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_ar_chan_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_ar_chan_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_aw_chan_t_ariane_axi_AddrWidth_type
	// removed localparam type axi_aw_chan_t_ariane_axi_IdWidth_type
	// removed localparam type axi_aw_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_aw_chan_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] axi_aw_chan_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] axi_aw_chan_t_ariane_axi_UserWidth = 0;
	// removed localparam type axi_w_chan_t_ariane_axi_DataWidth_type
	// removed localparam type axi_w_chan_t_ariane_axi_StrbWidth_type
	// removed localparam type axi_w_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] axi_w_chan_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] axi_w_chan_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] axi_w_chan_t_ariane_axi_UserWidth = 0;
	// removed localparam type cvxif_req_t_CVA6Cfg_type
	parameter [17102:0] cvxif_req_t_CVA6Cfg = 0;
	// removed localparam type cvxif_resp_t_CVA6Cfg_type
	parameter [17102:0] cvxif_resp_t_CVA6Cfg = 0;
	// removed localparam type hartid_t_CVA6Cfg_type
	parameter [17102:0] hartid_t_CVA6Cfg = 0;
	// removed localparam type id_t_CVA6Cfg_type
	parameter [17102:0] id_t_CVA6Cfg = 0;
	// removed localparam type noc_req_t_ariane_axi_AddrWidth_type
	// removed localparam type noc_req_t_ariane_axi_DataWidth_type
	// removed localparam type noc_req_t_ariane_axi_IdWidth_type
	// removed localparam type noc_req_t_ariane_axi_StrbWidth_type
	// removed localparam type noc_req_t_ariane_axi_UserWidth_type
	parameter signed [31:0] noc_req_t_ariane_axi_AddrWidth = 0;
	parameter signed [31:0] noc_req_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] noc_req_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] noc_req_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] noc_req_t_ariane_axi_UserWidth = 0;
	// removed localparam type noc_resp_t_ariane_axi_DataWidth_type
	// removed localparam type noc_resp_t_ariane_axi_IdWidth_type
	// removed localparam type noc_resp_t_ariane_axi_UserWidth_type
	parameter signed [31:0] noc_resp_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] noc_resp_t_ariane_axi_IdWidth = 0;
	parameter signed [31:0] noc_resp_t_ariane_axi_UserWidth = 0;
	// removed localparam type readregflags_t_CVA6Cfg_type
	parameter [17102:0] readregflags_t_CVA6Cfg = 0;
	// removed localparam type writeregflags_t_CVA6Cfg_type
	parameter [17102:0] writeregflags_t_CVA6Cfg = 0;
	// removed localparam type x_commit_t_CVA6Cfg_type
	parameter [17102:0] x_commit_t_CVA6Cfg = 0;
	// removed localparam type x_compressed_req_t_CVA6Cfg_type
	parameter [17102:0] x_compressed_req_t_CVA6Cfg = 0;
	// removed localparam type x_issue_req_t_CVA6Cfg_type
	parameter [17102:0] x_issue_req_t_CVA6Cfg = 0;
	// removed localparam type x_issue_resp_t_CVA6Cfg_type
	parameter [17102:0] x_issue_resp_t_CVA6Cfg = 0;
	// removed localparam type x_register_t_CVA6Cfg_type
	parameter [17102:0] x_register_t_CVA6Cfg = 0;
	// removed localparam type x_result_t_CVA6Cfg_type
	parameter [17102:0] x_result_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/cva6.sv:22:15
	// removed localparam type config_pkg_vm_mode_t
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_cva6_cfg_t
	// removed localparam type config_pkg_cva6_user_cfg_t
	function automatic [17102:0] build_config_pkg_build_config;
		// Trace: core/include/build_config_pkg.sv:3:58
		input reg [15710:0] CVA6Cfg;
		// Trace: core/include/build_config_pkg.sv:4:5
		reg IS_XLEN32;
		// Trace: core/include/build_config_pkg.sv:5:5
		reg IS_XLEN64;
		// Trace: core/include/build_config_pkg.sv:6:5
		reg FpPresent;
		// Trace: core/include/build_config_pkg.sv:7:5
		reg NSX;
		// Trace: core/include/build_config_pkg.sv:8:5
		reg [31:0] FLen;
		// Trace: core/include/build_config_pkg.sv:16:5
		reg RVFVec;
		// Trace: core/include/build_config_pkg.sv:17:5
		reg XF16Vec;
		// Trace: core/include/build_config_pkg.sv:18:5
		reg XF16ALTVec;
		// Trace: core/include/build_config_pkg.sv:19:5
		reg XF8Vec;
		// Trace: core/include/build_config_pkg.sv:21:5
		reg EnableAccelerator;
		// Trace: core/include/build_config_pkg.sv:22:5
		reg [31:0] NrWbPorts;
		// Trace: core/include/build_config_pkg.sv:24:5
		reg [31:0] ICACHE_INDEX_WIDTH;
		// Trace: core/include/build_config_pkg.sv:25:5
		reg [31:0] DCACHE_INDEX_WIDTH;
		// Trace: core/include/build_config_pkg.sv:26:5
		reg [31:0] DCACHE_OFFSET_WIDTH;
		// Trace: core/include/build_config_pkg.sv:29:5
		reg [31:0] VpnLen;
		// Trace: core/include/build_config_pkg.sv:30:5
		reg [31:0] PtLevels;
		// Trace: core/include/build_config_pkg.sv:32:5
		reg [17102:0] cfg;
		begin
			IS_XLEN32 = (CVA6Cfg[15710-:32] == 32 ? 1'b1 : 1'b0);
			IS_XLEN64 = (CVA6Cfg[15710-:32] == 32 ? 1'b0 : 1'b1);
			FpPresent = (((CVA6Cfg[15668] | CVA6Cfg[15667]) | CVA6Cfg[15666]) | CVA6Cfg[15665]) | CVA6Cfg[15664];
			NSX = ((CVA6Cfg[15666] | CVA6Cfg[15665]) | CVA6Cfg[15664]) | CVA6Cfg[15663];
			FLen = (CVA6Cfg[15667] ? 64 : (CVA6Cfg[15668] ? 32 : (CVA6Cfg[15666] ? 16 : (CVA6Cfg[15665] ? 16 : (CVA6Cfg[15664] ? 8 : 1)))));
			RVFVec = (CVA6Cfg[15668] & CVA6Cfg[15663]) & (FLen > 32);
			XF16Vec = (CVA6Cfg[15666] & CVA6Cfg[15663]) & (FLen > 16);
			XF16ALTVec = (CVA6Cfg[15665] & CVA6Cfg[15663]) & (FLen > 16);
			XF8Vec = (CVA6Cfg[15664] & CVA6Cfg[15663]) & (FLen > 8);
			EnableAccelerator = CVA6Cfg[15676];
			NrWbPorts = (CVA6Cfg[935] || EnableAccelerator ? 5 : 4);
			ICACHE_INDEX_WIDTH = $clog2(CVA6Cfg[741-:32] / CVA6Cfg[709-:32]);
			DCACHE_INDEX_WIDTH = $clog2(CVA6Cfg[611-:32] / CVA6Cfg[579-:32]);
			DCACHE_OFFSET_WIDTH = $clog2(CVA6Cfg[547-:32] / 8);
			VpnLen = (CVA6Cfg[15710-:32] == 64 ? (CVA6Cfg[15674] ? 29 : 27) : 20);
			PtLevels = (CVA6Cfg[15710-:32] == 64 ? 3 : 2);
			// Trace: core/include/build_config_pkg.sv:34:5
			cfg[17102-:32] = CVA6Cfg[15710-:32];
			// Trace: core/include/build_config_pkg.sv:35:5
			cfg[17070-:32] = (CVA6Cfg[15710-:32] == 32 ? 32 : 64);
			// Trace: core/include/build_config_pkg.sv:36:5
			cfg[17038-:32] = (CVA6Cfg[15710-:32] == 32 ? 34 : 56);
			// Trace: core/include/build_config_pkg.sv:37:5
			cfg[17006-:32] = (CVA6Cfg[15710-:32] == 32 ? 34 : 41);
			// Trace: core/include/build_config_pkg.sv:38:5
			cfg[16974] = IS_XLEN32;
			// Trace: core/include/build_config_pkg.sv:39:5
			cfg[16973] = IS_XLEN64;
			// Trace: core/include/build_config_pkg.sv:40:5
			cfg[16972-:32] = $clog2(CVA6Cfg[15710-:32] / 8);
			// Trace: core/include/build_config_pkg.sv:41:5
			cfg[16940-:32] = (CVA6Cfg[15710-:32] == 64 ? 16 : 1);
			// Trace: core/include/build_config_pkg.sv:42:5
			cfg[16908-:32] = (CVA6Cfg[15710-:32] == 64 ? 14 : 1);
			// Trace: core/include/build_config_pkg.sv:44:5
			cfg[16876] = CVA6Cfg[387];
			// Trace: core/include/build_config_pkg.sv:45:5
			cfg[16875] = CVA6Cfg[386];
			// Trace: core/include/build_config_pkg.sv:47:5
			cfg[16874] = CVA6Cfg[385];
			// Trace: core/include/build_config_pkg.sv:48:5
			cfg[16873-:32] = (CVA6Cfg[385] ? $unsigned(2) : CVA6Cfg[384-:32]);
			// Trace: core/include/build_config_pkg.sv:49:5
			cfg[16841-:32] = $unsigned((CVA6Cfg[385] ? 2 : 1));
			// Trace: core/include/build_config_pkg.sv:50:5
			cfg[16809] = CVA6Cfg[385];
			// Trace: core/include/build_config_pkg.sv:52:5
			cfg[16808-:32] = CVA6Cfg[352-:32];
			// Trace: core/include/build_config_pkg.sv:53:5
			cfg[16776-:32] = CVA6Cfg[320-:32];
			// Trace: core/include/build_config_pkg.sv:54:5
			cfg[16744-:32] = CVA6Cfg[902-:32];
			// Trace: core/include/build_config_pkg.sv:55:5
			cfg[16712-:32] = CVA6Cfg[870-:32];
			// Trace: core/include/build_config_pkg.sv:56:5
			cfg[16680-:32] = CVA6Cfg[838-:32];
			// Trace: core/include/build_config_pkg.sv:57:5
			cfg[16648-:32] = CVA6Cfg[806-:32];
			// Trace: core/include/build_config_pkg.sv:58:5
			cfg[16616-:32] = CVA6Cfg[773-:32];
			// Trace: core/include/build_config_pkg.sv:59:5
			cfg[16584-:32] = CVA6Cfg[256-:32];
			// Trace: core/include/build_config_pkg.sv:60:5
			cfg[16552] = CVA6Cfg[15668];
			// Trace: core/include/build_config_pkg.sv:61:5
			cfg[16551] = CVA6Cfg[15667];
			// Trace: core/include/build_config_pkg.sv:62:5
			cfg[16550] = CVA6Cfg[15666];
			// Trace: core/include/build_config_pkg.sv:63:5
			cfg[16549] = CVA6Cfg[15665];
			// Trace: core/include/build_config_pkg.sv:64:5
			cfg[16548] = CVA6Cfg[15664];
			// Trace: core/include/build_config_pkg.sv:65:5
			cfg[16547] = CVA6Cfg[15678];
			// Trace: core/include/build_config_pkg.sv:66:5
			cfg[16546] = CVA6Cfg[15677];
			// Trace: core/include/build_config_pkg.sv:67:5
			cfg[16545] = CVA6Cfg[15676];
			// Trace: core/include/build_config_pkg.sv:68:5
			cfg[16544] = CVA6Cfg[15675];
			// Trace: core/include/build_config_pkg.sv:69:5
			cfg[16543] = CVA6Cfg[15674];
			// Trace: core/include/build_config_pkg.sv:70:5
			cfg[16542] = CVA6Cfg[15673];
			// Trace: core/include/build_config_pkg.sv:71:5
			cfg[16541] = CVA6Cfg[15672];
			// Trace: core/include/build_config_pkg.sv:72:5
			cfg[16540] = CVA6Cfg[15663];
			// Trace: core/include/build_config_pkg.sv:73:5
			cfg[16539] = CVA6Cfg[935];
			// Trace: core/include/build_config_pkg.sv:74:5
			cfg[16538] = CVA6Cfg[15671];
			// Trace: core/include/build_config_pkg.sv:75:5
			cfg[16537] = CVA6Cfg[15670];
			// Trace: core/include/build_config_pkg.sv:76:5
			cfg[16536] = CVA6Cfg[15669];
			// Trace: core/include/build_config_pkg.sv:77:5
			cfg[16535-:32] = CVA6Cfg[288-:32];
			// Trace: core/include/build_config_pkg.sv:78:5
			cfg[16503-:32] = $clog2(CVA6Cfg[288-:32]);
			// Trace: core/include/build_config_pkg.sv:80:5
			cfg[16471] = FpPresent;
			// Trace: core/include/build_config_pkg.sv:81:5
			cfg[16470] = NSX;
			// Trace: core/include/build_config_pkg.sv:82:5
			cfg[16469-:32] = $unsigned(FLen);
			// Trace: core/include/build_config_pkg.sv:83:5
			cfg[16437] = RVFVec;
			// Trace: core/include/build_config_pkg.sv:84:5
			cfg[16436] = XF16Vec;
			// Trace: core/include/build_config_pkg.sv:85:5
			cfg[16435] = XF16ALTVec;
			// Trace: core/include/build_config_pkg.sv:86:5
			cfg[16434] = XF8Vec;
			// Trace: core/include/build_config_pkg.sv:88:5
			cfg[16433-:32] = $unsigned((CVA6Cfg[385] ? 4 : 2));
			// Trace: core/include/build_config_pkg.sv:90:5
			cfg[16401-:32] = $unsigned(NrWbPorts);
			// Trace: core/include/build_config_pkg.sv:91:5
			cfg[16369] = EnableAccelerator;
			// Trace: core/include/build_config_pkg.sv:92:5
			cfg[16368] = CVA6Cfg[15662];
			// Trace: core/include/build_config_pkg.sv:93:5
			cfg[16367] = CVA6Cfg[15661];
			// Trace: core/include/build_config_pkg.sv:94:5
			cfg[16366] = CVA6Cfg[15660];
			// Trace: core/include/build_config_pkg.sv:95:5
			cfg[16365] = CVA6Cfg[15659];
			// Trace: core/include/build_config_pkg.sv:97:5
			cfg[16364-:64] = CVA6Cfg[15593-:64];
			// Trace: core/include/build_config_pkg.sv:98:5
			cfg[16300-:64] = CVA6Cfg[15529-:64];
			// Trace: core/include/build_config_pkg.sv:99:5
			cfg[16236-:32] = CVA6Cfg[192-:32];
			// Trace: core/include/build_config_pkg.sv:100:5
			cfg[16204-:32] = CVA6Cfg[160-:32];
			// Trace: core/include/build_config_pkg.sv:101:5
			cfg[16172-:32] = CVA6Cfg[128-:32];
			// Trace: core/include/build_config_pkg.sv:102:5
			cfg[15979-:64] = CVA6Cfg[15657-:64];
			// Trace: core/include/build_config_pkg.sv:103:5
			cfg[15915] = CVA6Cfg[15465];
			// Trace: core/include/build_config_pkg.sv:104:5
			cfg[15914] = CVA6Cfg[15464];
			// Trace: core/include/build_config_pkg.sv:105:5
			cfg[15913-:32] = CVA6Cfg[15463-:32];
			// Trace: core/include/build_config_pkg.sv:106:5
			cfg[15881-:4096] = CVA6Cfg[15431-:4096];
			// Trace: core/include/build_config_pkg.sv:107:5
			cfg[11785-:4096] = CVA6Cfg[11335-:4096];
			// Trace: core/include/build_config_pkg.sv:108:5
			cfg[7689-:64] = CVA6Cfg[7239-:64];
			// Trace: core/include/build_config_pkg.sv:109:5
			cfg[7625-:32] = CVA6Cfg[934-:32];
			// Trace: core/include/build_config_pkg.sv:110:5
			cfg[7593-:32] = CVA6Cfg[7175-:32];
			// Trace: core/include/build_config_pkg.sv:111:5
			cfg[7561-:1024] = CVA6Cfg[7143-:1024];
			// Trace: core/include/build_config_pkg.sv:112:5
			cfg[6537-:1024] = CVA6Cfg[6119-:1024];
			// Trace: core/include/build_config_pkg.sv:113:5
			cfg[5513-:32] = CVA6Cfg[5095-:32];
			// Trace: core/include/build_config_pkg.sv:114:5
			cfg[5481-:1024] = CVA6Cfg[5063-:1024];
			// Trace: core/include/build_config_pkg.sv:115:5
			cfg[4457-:1024] = CVA6Cfg[4039-:1024];
			// Trace: core/include/build_config_pkg.sv:116:5
			cfg[3433-:32] = CVA6Cfg[3015-:32];
			// Trace: core/include/build_config_pkg.sv:117:5
			cfg[3401-:1024] = CVA6Cfg[2983-:1024];
			// Trace: core/include/build_config_pkg.sv:118:5
			cfg[2377-:1024] = CVA6Cfg[1959-:1024];
			// Trace: core/include/build_config_pkg.sv:119:5
			cfg[1353-:32] = CVA6Cfg[224-:32];
			// Trace: core/include/build_config_pkg.sv:120:5
			cfg[1321] = CVA6Cfg[15658];
			// Trace: core/include/build_config_pkg.sv:121:5
			cfg[1320] = (CVA6Cfg[7175-:32] > 0) && (CVA6Cfg[6119-:1024] > 0);
			// Trace: core/include/build_config_pkg.sv:122:5
			cfg[1319] = CVA6Cfg[774];
			// Trace: core/include/build_config_pkg.sv:124:5
			cfg[1318-:32] = CVA6Cfg[709-:32];
			// Trace: core/include/build_config_pkg.sv:125:5
			cfg[1286-:32] = $clog2(CVA6Cfg[709-:32]);
			// Trace: core/include/build_config_pkg.sv:126:5
			cfg[1254-:32] = ICACHE_INDEX_WIDTH;
			// Trace: core/include/build_config_pkg.sv:127:5
			cfg[1222-:32] = cfg[17038-:32] - ICACHE_INDEX_WIDTH;
			// Trace: core/include/build_config_pkg.sv:128:5
			cfg[1190-:32] = CVA6Cfg[677-:32];
			// Trace: core/include/build_config_pkg.sv:129:5
			cfg[1158-:32] = (CVA6Cfg[806-:32] == 1 ? 4 : CVA6Cfg[677-:32]);
			// Trace: core/include/build_config_pkg.sv:130:5
			cfg[1126-:2] = CVA6Cfg[645-:2];
			// Trace: core/include/build_config_pkg.sv:131:5
			cfg[1124-:32] = CVA6Cfg[643-:32];
			// Trace: core/include/build_config_pkg.sv:132:5
			cfg[1092-:32] = CVA6Cfg[579-:32];
			// Trace: core/include/build_config_pkg.sv:133:5
			cfg[1060-:32] = $clog2(CVA6Cfg[579-:32]);
			// Trace: core/include/build_config_pkg.sv:134:5
			cfg[1028-:32] = DCACHE_INDEX_WIDTH;
			// Trace: core/include/build_config_pkg.sv:135:5
			cfg[996-:32] = cfg[17038-:32] - DCACHE_INDEX_WIDTH;
			// Trace: core/include/build_config_pkg.sv:136:5
			cfg[964-:32] = CVA6Cfg[547-:32];
			// Trace: core/include/build_config_pkg.sv:137:5
			cfg[932-:32] = (CVA6Cfg[806-:32] == 1 ? 4 : CVA6Cfg[547-:32]);
			// Trace: core/include/build_config_pkg.sv:138:5
			cfg[900-:32] = CVA6Cfg[806-:32];
			// Trace: core/include/build_config_pkg.sv:139:5
			cfg[868-:32] = DCACHE_OFFSET_WIDTH;
			// Trace: core/include/build_config_pkg.sv:140:5
			cfg[836-:32] = 2 ** (DCACHE_INDEX_WIDTH - DCACHE_OFFSET_WIDTH);
			// Trace: core/include/build_config_pkg.sv:142:5
			cfg[804-:32] = $unsigned(2 ** CVA6Cfg[773-:32]);
			// Trace: core/include/build_config_pkg.sv:144:5
			cfg[772-:32] = CVA6Cfg[515-:32];
			// Trace: core/include/build_config_pkg.sv:145:5
			cfg[740-:32] = CVA6Cfg[483-:32];
			// Trace: core/include/build_config_pkg.sv:146:5
			cfg[708-:32] = CVA6Cfg[419-:32];
			// Trace: core/include/build_config_pkg.sv:147:5
			cfg[676-:32] = CVA6Cfg[451-:32];
			// Trace: core/include/build_config_pkg.sv:148:5
			cfg[644] = CVA6Cfg[515-:32] | CVA6Cfg[451-:32];
			// Trace: core/include/build_config_pkg.sv:150:5
			cfg[643-:32] = $unsigned((CVA6Cfg[385] ? 64 : 32));
			// Trace: core/include/build_config_pkg.sv:151:5
			cfg[611-:32] = $clog2(cfg[643-:32] / 8);
			// Trace: core/include/build_config_pkg.sv:152:5
			cfg[579-:32] = cfg[643-:32] / (CVA6Cfg[15675] ? 16 : 32);
			// Trace: core/include/build_config_pkg.sv:153:5
			cfg[547-:32] = (cfg[579-:32] > 1 ? $clog2(cfg[579-:32]) : 1);
			// Trace: core/include/build_config_pkg.sv:155:5
			cfg[515-:32] = (CVA6Cfg[15710-:32] == 32 ? 1 : 4);
			// Trace: core/include/build_config_pkg.sv:156:5
			cfg[483-:32] = (CVA6Cfg[15710-:32] == 32 ? 9 : 16);
			// Trace: core/include/build_config_pkg.sv:157:5
			cfg[451-:32] = (CVA6Cfg[15710-:32] == 32 ? 7 : 14);
			// Trace: core/include/build_config_pkg.sv:158:5
			cfg[419-:32] = (CVA6Cfg[15710-:32] == 32 ? 22 : 44);
			// Trace: core/include/build_config_pkg.sv:159:5
			cfg[387-:32] = (CVA6Cfg[15710-:32] == 32 ? 22 : 29);
			// Trace: core/include/build_config_pkg.sv:160:5
			cfg[355-:4] = (CVA6Cfg[15710-:32] == 32 ? 4'd1 : 4'd8);
			// Trace: core/include/build_config_pkg.sv:161:5
			cfg[351-:32] = (cfg[355-:4] == 4'd1 ? 32 : 39);
			// Trace: core/include/build_config_pkg.sv:162:5
			cfg[319-:32] = (cfg[355-:4] == 4'd1 ? 34 : 41);
			// Trace: core/include/build_config_pkg.sv:163:5
			cfg[16140-:32] = CVA6Cfg[96-:32];
			// Trace: core/include/build_config_pkg.sv:164:5
			cfg[16108-:32] = CVA6Cfg[64-:32];
			// Trace: core/include/build_config_pkg.sv:165:5
			cfg[16076] = CVA6Cfg[32];
			// Trace: core/include/build_config_pkg.sv:166:5
			cfg[16075-:32] = CVA6Cfg[31-:32];
			// Trace: core/include/build_config_pkg.sv:167:5
			cfg[16043-:32] = VpnLen;
			// Trace: core/include/build_config_pkg.sv:168:5
			cfg[16011-:32] = PtLevels;
			// Trace: core/include/build_config_pkg.sv:170:5
			cfg[287-:32] = cfg[16433-:32] / cfg[16841-:32];
			// Trace: core/include/build_config_pkg.sv:171:5
			cfg[255-:32] = cfg[16503-:32];
			// Trace: core/include/build_config_pkg.sv:172:5
			cfg[223-:32] = cfg[17102-:32];
			// Trace: core/include/build_config_pkg.sv:173:5
			cfg[191-:32] = cfg[17102-:32];
			// Trace: core/include/build_config_pkg.sv:174:5
			cfg[159-:32] = 1;
			// Trace: core/include/build_config_pkg.sv:175:5
			cfg[127-:32] = cfg[17102-:32];
			// Trace: core/include/build_config_pkg.sv:176:5
			cfg[95-:32] = 0;
			// Trace: core/include/build_config_pkg.sv:177:5
			cfg[63-:32] = 0;
			// Trace: core/include/build_config_pkg.sv:178:5
			cfg[31-:32] = 0;
			// Trace: core/include/build_config_pkg.sv:180:5
			build_config_pkg_build_config = cfg;
		end
	endfunction
	localparam cva6_config_pkg_CVA6ConfigAExtEn = 1;
	localparam cva6_config_pkg_CVA6ConfigAxiAddrWidth = 64;
	localparam cva6_config_pkg_CVA6ConfigAxiDataWidth = 64;
	localparam cva6_config_pkg_CVA6ConfigAxiIdWidth = 4;
	localparam cva6_config_pkg_CVA6ConfigBExtEn = 1;
	localparam cva6_config_pkg_CVA6ConfigBHTEntries = 128;
	localparam cva6_config_pkg_CVA6ConfigBTBEntries = 32;
	localparam cva6_config_pkg_CVA6ConfigCExtEn = 1;
	localparam cva6_config_pkg_CVA6ConfigCvxifEn = 1;
	localparam cva6_config_pkg_CVA6ConfigDataUserEn = 0;
	localparam cva6_config_pkg_CVA6ConfigXlen = 64;
	localparam cva6_config_pkg_CVA6ConfigDataUserWidth = cva6_config_pkg_CVA6ConfigXlen;
	localparam cva6_config_pkg_CVA6ConfigDcacheByteSize = 32768;
	localparam cva6_config_pkg_CVA6ConfigDcacheIdWidth = 1;
	localparam cva6_config_pkg_CVA6ConfigDcacheLineWidth = 128;
	localparam cva6_config_pkg_CVA6ConfigDcacheSetAssoc = 8;
	localparam [1:0] cva6_config_pkg_CVA6ConfigDcacheType = 2'd1;
	localparam cva6_config_pkg_CVA6ConfigF16AltEn = 0;
	localparam cva6_config_pkg_CVA6ConfigF16En = 0;
	localparam cva6_config_pkg_CVA6ConfigF8En = 0;
	localparam cva6_config_pkg_CVA6ConfigFVecEn = 0;
	localparam cva6_config_pkg_CVA6ConfigFetchUserEn = 0;
	localparam cva6_config_pkg_CVA6ConfigFetchUserWidth = cva6_config_pkg_CVA6ConfigXlen;
	localparam cva6_config_pkg_CVA6ConfigFpgaEn = 0;
	localparam cva6_config_pkg_CVA6ConfigHExtEn = 0;
	localparam cva6_config_pkg_CVA6ConfigIcacheByteSize = 16384;
	localparam cva6_config_pkg_CVA6ConfigIcacheLineWidth = 128;
	localparam cva6_config_pkg_CVA6ConfigIcacheSetAssoc = 4;
	localparam cva6_config_pkg_CVA6ConfigMemTidWidth = 2;
	localparam cva6_config_pkg_CVA6ConfigMmuPresent = 1;
	localparam cva6_config_pkg_CVA6ConfigNrLoadBufEntries = 2;
	localparam cva6_config_pkg_CVA6ConfigNrLoadPipeRegs = 1;
	localparam cva6_config_pkg_CVA6ConfigNrPMPEntries = 8;
	localparam cva6_config_pkg_CVA6ConfigNrScoreboardEntries = 8;
	localparam cva6_config_pkg_CVA6ConfigNrStorePipeRegs = 0;
	localparam cva6_config_pkg_CVA6ConfigPerfCounterEn = 1;
	localparam cva6_config_pkg_CVA6ConfigRASDepth = 2;
	localparam cva6_config_pkg_CVA6ConfigRVF = 1;
	localparam cva6_config_pkg_CVA6ConfigRVZiCond = 1;
	localparam cva6_config_pkg_CVA6ConfigTvalEn = 1;
	localparam cva6_config_pkg_CVA6ConfigVExtEn = 0;
	localparam cva6_config_pkg_CVA6ConfigWtDcacheWbufDepth = 8;
	localparam cva6_config_pkg_CVA6ConfigZcbExtEn = 1;
	localparam cva6_config_pkg_CVA6ConfigZcmpExtEn = 0;
	function automatic [31:0] sv2v_cast_32;
		input reg [31:0] inp;
		sv2v_cast_32 = inp;
	endfunction
	function automatic [0:0] sv2v_cast_1;
		input reg [0:0] inp;
		sv2v_cast_1 = inp;
	endfunction
	localparam [15710:0] cva6_config_pkg_cva6_cfg = {sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigXlen)), sv2v_cast_1(cva6_config_pkg_CVA6ConfigAExtEn), sv2v_cast_1(cva6_config_pkg_CVA6ConfigBExtEn), sv2v_cast_1(cva6_config_pkg_CVA6ConfigVExtEn), sv2v_cast_1(cva6_config_pkg_CVA6ConfigCExtEn), sv2v_cast_1(cva6_config_pkg_CVA6ConfigHExtEn), sv2v_cast_1(cva6_config_pkg_CVA6ConfigZcbExtEn), sv2v_cast_1(cva6_config_pkg_CVA6ConfigZcmpExtEn), sv2v_cast_1(cva6_config_pkg_CVA6ConfigRVZiCond), 2'h3, sv2v_cast_1(cva6_config_pkg_CVA6ConfigRVF), sv2v_cast_1(cva6_config_pkg_CVA6ConfigRVF), sv2v_cast_1(cva6_config_pkg_CVA6ConfigF16En), sv2v_cast_1(cva6_config_pkg_CVA6ConfigF16AltEn), sv2v_cast_1(cva6_config_pkg_CVA6ConfigF8En), sv2v_cast_1(cva6_config_pkg_CVA6ConfigFVecEn), sv2v_cast_1(cva6_config_pkg_CVA6ConfigPerfCounterEn), sv2v_cast_1(cva6_config_pkg_CVA6ConfigMmuPresent), 195'h7000000000000000000000000000008000000000000000808, sv2v_cast_1(cva6_config_pkg_CVA6ConfigTvalEn), 1'd0, sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigNrPMPEntries)), {64 {64'h0000000000000000}}, {64 {64'h0000000000000000}}, 64'd0, $unsigned(2), 2048'b0, $unsigned(3), 2048'h80000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000000000000000100000000000000001000, $unsigned(1), 2048'h800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000, sv2v_cast_1(cva6_config_pkg_CVA6ConfigCvxifEn), 32'd0, sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigAxiAddrWidth)), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigAxiDataWidth)), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigAxiIdWidth)), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigDataUserWidth)), 1'd0, sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigMemTidWidth)), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigIcacheByteSize)), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigIcacheSetAssoc)), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigIcacheLineWidth)), cva6_config_pkg_CVA6ConfigDcacheType, sv2v_cast_32(cva6_config_pkg_CVA6ConfigDcacheIdWidth), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigDcacheByteSize)), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigDcacheSetAssoc)), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigDcacheLineWidth)), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigDataUserEn)), sv2v_cast_32(cva6_config_pkg_CVA6ConfigWtDcacheWbufDepth), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigFetchUserEn)), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigFetchUserWidth)), sv2v_cast_1(cva6_config_pkg_CVA6ConfigFpgaEn), 2'h0, $unsigned(2), sv2v_cast_32(cva6_config_pkg_CVA6ConfigNrLoadPipeRegs), sv2v_cast_32(cva6_config_pkg_CVA6ConfigNrStorePipeRegs), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigNrScoreboardEntries)), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigNrLoadBufEntries)), $unsigned(7), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigRASDepth)), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigBTBEntries)), sv2v_cast_32($unsigned(cva6_config_pkg_CVA6ConfigBHTEntries)), 97'h0000000200000002000000040};
	parameter [17102:0] CVA6Cfg = build_config_pkg_build_config(cva6_config_pkg_cva6_cfg);
	// Trace: core/cva6.sv:27:20
	localparam ariane_pkg_REG_ADDR_SIZE = 5;
	// removed localparam type ariane_pkg_fu_op
	// removed localparam type ariane_pkg_fu_t
	// removed localparam type riscv_priv_lvl_t
	// removed localparam type rvfi_probes_instr_t
	// Trace: core/cva6.sv:28:20
	localparam [31:0] ariane_pkg_MHPMCounterNum = 6;
	// removed localparam type riscv_dcsr_t
	// removed localparam type riscv_fcsr_t
	// removed localparam type riscv_pmp_addr_mode_t
	// removed localparam type riscv_pmpcfg_access_t
	// removed localparam type riscv_pmpcfg_t
	// removed localparam type rvfi_probes_csr_t
	// Trace: core/cva6.sv:29:20
	// removed localparam type rvfi_probes_t
	// Trace: core/cva6.sv:37:21
	// removed localparam type ariane_pkg_cf_t
	// removed localparam type branchpredict_sbe_t
	// Trace: core/cva6.sv:42:21
	// removed localparam type exception_t
	// Trace: core/cva6.sv:54:21
	// removed localparam type icache_areq_t
	// Trace: core/cva6.sv:59:21
	// removed localparam type icache_arsp_t
	// Trace: core/cva6.sv:65:21
	// removed localparam type icache_dreq_t
	// Trace: core/cva6.sv:72:21
	// removed localparam type icache_drsp_t
	// Trace: core/cva6.sv:83:21
	// removed localparam type fetch_entry_t
	// Trace: core/cva6.sv:91:21
	// removed localparam type scoreboard_entry_t
	// Trace: core/cva6.sv:122:21
	// removed localparam type bp_resolve_t
	// Trace: core/cva6.sv:133:21
	// removed localparam type irq_ctrl_t
	// Trace: core/cva6.sv:142:21
	// removed localparam type lsu_ctrl_t
	// Trace: core/cva6.sv:157:21
	// removed localparam type fu_data_t
	// Trace: core/cva6.sv:166:21
	// removed localparam type icache_req_t
	// Trace: core/cva6.sv:172:21
	// removed localparam type wt_cache_pkg_icache_in_t
	// removed localparam type icache_rtrn_t
	// Trace: core/cva6.sv:186:21
	// removed localparam type dcache_req_i_t
	// Trace: core/cva6.sv:200:21
	// removed localparam type dcache_req_o_t
	// Trace: core/cva6.sv:209:20
	// removed localparam type axi_pkg_burst_t
	// removed localparam type axi_pkg_cache_t
	// removed localparam type axi_pkg_len_t
	// removed localparam type axi_pkg_prot_t
	// removed localparam type axi_pkg_qos_t
	// removed localparam type axi_pkg_region_t
	// removed localparam type axi_pkg_size_t
	// removed localparam type axi_ar_chan_t
	// Trace: core/cva6.sv:222:20
	// removed localparam type axi_pkg_atop_t
	// removed localparam type axi_aw_chan_t
	// Trace: core/cva6.sv:236:20
	// removed localparam type axi_w_chan_t
	// Trace: core/cva6.sv:242:20
	// removed localparam type axi_pkg_resp_t
	// removed localparam type b_chan_t
	// Trace: core/cva6.sv:247:20
	// removed localparam type r_chan_t
	// Trace: core/cva6.sv:254:20
	// removed localparam type noc_req_t
	// Trace: core/cva6.sv:264:20
	// removed localparam type noc_resp_t
	// Trace: core/cva6.sv:274:20
	// removed localparam type acc_cfg_t
	// Trace: core/cva6.sv:275:15
	parameter [0:0] AccCfg = 1'sb0;
	// Trace: core/cva6.sv:277:20
	// removed localparam type readregflags_t
	// Trace: core/cva6.sv:278:20
	// removed localparam type writeregflags_t
	// Trace: core/cva6.sv:279:20
	// removed localparam type id_t
	// Trace: core/cva6.sv:280:20
	// removed localparam type hartid_t
	// Trace: core/cva6.sv:281:20
	// removed localparam type x_compressed_req_t
	// Trace: core/cva6.sv:282:20
	// removed localparam type x_compressed_resp_t
	// Trace: core/cva6.sv:283:20
	// removed localparam type x_issue_req_t
	// Trace: core/cva6.sv:284:20
	// removed localparam type x_issue_resp_t
	// Trace: core/cva6.sv:285:20
	// removed localparam type x_register_t
	// Trace: core/cva6.sv:286:20
	// removed localparam type x_commit_t
	// Trace: core/cva6.sv:287:20
	// removed localparam type x_result_t
	// Trace: core/cva6.sv:288:20
	// removed localparam type cvxif_req_t
	// Trace: core/cva6.sv:290:20
	// removed localparam type cvxif_resp_t
	// Trace: core/cva6.sv:294:5
	input wire clk_i;
	// Trace: core/cva6.sv:296:5
	input wire rst_ni;
	// Trace: core/cva6.sv:298:5
	input wire [CVA6Cfg[17070-:32] - 1:0] boot_addr_i;
	// Trace: core/cva6.sv:300:5
	input wire [CVA6Cfg[17102-:32] - 1:0] hart_id_i;
	// Trace: core/cva6.sv:302:5
	input wire [1:0] irq_i;
	// Trace: core/cva6.sv:304:5
	input wire ipi_i;
	// Trace: core/cva6.sv:306:5
	input wire time_irq_i;
	// Trace: core/cva6.sv:308:5
	input wire debug_req_i;
	// Trace: core/cva6.sv:310:5
	output wire [1:0] rvfi_probes_o;
	// Trace: core/cva6.sv:312:5
	output wire [(((((((17 + cvxif_req_t_CVA6Cfg[127-:32]) + 1) + ((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32])) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32]))) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0))) + 0:0] cvxif_req_o;
	// Trace: core/cva6.sv:314:5
	input wire [(((35 + ((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32]))) + 2) + ((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32]))) - 1:0] cvxif_resp_i;
	// Trace: core/cva6.sv:316:5
	output wire [(((((((noc_req_t_ariane_axi_IdWidth + noc_req_t_ariane_axi_AddrWidth) + 35) + noc_req_t_ariane_axi_UserWidth) + 1) + (((noc_req_t_ariane_axi_DataWidth + noc_req_t_ariane_axi_StrbWidth) + 1) + noc_req_t_ariane_axi_UserWidth)) + 2) + (((noc_req_t_ariane_axi_IdWidth + noc_req_t_ariane_axi_AddrWidth) + 29) + noc_req_t_ariane_axi_UserWidth)) + 1:0] noc_req_o;
	// Trace: core/cva6.sv:318:5
	input wire [(((4 + ((noc_resp_t_ariane_axi_IdWidth + 2) + noc_resp_t_ariane_axi_UserWidth)) + 1) + (((noc_resp_t_ariane_axi_IdWidth + noc_resp_t_ariane_axi_DataWidth) + 3) + noc_resp_t_ariane_axi_UserWidth)) - 1:0] noc_resp_i;
	// Trace: core/cva6.sv:321:3
	// removed localparam type interrupts_t
	// Trace: core/cva6.sv:334:3
	localparam [31:0] riscv_IRQ_HS_EXT = 12;
	localparam [31:0] riscv_IRQ_M_EXT = 11;
	localparam [31:0] riscv_IRQ_M_SOFT = 3;
	localparam [31:0] riscv_IRQ_M_TIMER = 7;
	localparam [31:0] riscv_IRQ_S_EXT = 9;
	localparam [31:0] riscv_IRQ_S_SOFT = 1;
	localparam [31:0] riscv_IRQ_S_TIMER = 5;
	localparam [31:0] riscv_IRQ_VS_EXT = 10;
	localparam [31:0] riscv_IRQ_VS_SOFT = 2;
	localparam [31:0] riscv_IRQ_VS_TIMER = 6;
	function automatic [CVA6Cfg[17102-:32] - 1:0] sv2v_cast_94688;
		input reg [CVA6Cfg[17102-:32] - 1:0] inp;
		sv2v_cast_94688 = inp;
	endfunction
	localparam [(((((((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) - 1:0] INTERRUPTS = {sv2v_cast_94688((1 << (CVA6Cfg[17102-:32] - 1)) | sv2v_cast_94688(riscv_IRQ_S_SOFT)), sv2v_cast_94688((1 << (CVA6Cfg[17102-:32] - 1)) | sv2v_cast_94688(riscv_IRQ_VS_SOFT)), sv2v_cast_94688((1 << (CVA6Cfg[17102-:32] - 1)) | sv2v_cast_94688(riscv_IRQ_M_SOFT)), sv2v_cast_94688((1 << (CVA6Cfg[17102-:32] - 1)) | sv2v_cast_94688(riscv_IRQ_S_TIMER)), sv2v_cast_94688((1 << (CVA6Cfg[17102-:32] - 1)) | sv2v_cast_94688(riscv_IRQ_VS_TIMER)), sv2v_cast_94688((1 << (CVA6Cfg[17102-:32] - 1)) | sv2v_cast_94688(riscv_IRQ_M_TIMER)), sv2v_cast_94688((1 << (CVA6Cfg[17102-:32] - 1)) | sv2v_cast_94688(riscv_IRQ_S_EXT)), sv2v_cast_94688((1 << (CVA6Cfg[17102-:32] - 1)) | sv2v_cast_94688(riscv_IRQ_VS_EXT)), sv2v_cast_94688((1 << (CVA6Cfg[17102-:32] - 1)) | sv2v_cast_94688(riscv_IRQ_M_EXT)), sv2v_cast_94688((1 << (CVA6Cfg[17102-:32] - 1)) | sv2v_cast_94688(riscv_IRQ_HS_EXT))};
	// Trace: core/cva6.sv:351:3
	wire [1:0] priv_lvl;
	// Trace: core/cva6.sv:352:3
	wire v;
	// Trace: core/cva6.sv:353:3
	wire [((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33:0] ex_commit;
	// Trace: core/cva6.sv:354:3
	wire [((1 + CVA6Cfg[17070-:32]) + CVA6Cfg[17070-:32]) + 4:0] resolved_branch;
	// Trace: core/cva6.sv:355:3
	wire [CVA6Cfg[17070-:32] - 1:0] pc_commit;
	// Trace: core/cva6.sv:356:3
	wire eret;
	// Trace: core/cva6.sv:357:3
	wire [CVA6Cfg[16873-:32] - 1:0] commit_ack;
	// Trace: core/cva6.sv:358:3
	wire [CVA6Cfg[16873-:32] - 1:0] commit_macro_ack;
	// Trace: core/cva6.sv:360:3
	localparam NumPorts = 4;
	// Trace: core/cva6.sv:363:3
	reg [(((((((17 + cvxif_req_t_CVA6Cfg[127-:32]) + 1) + ((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32])) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32]))) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0))) + 0:0] cvxif_req;
	// Trace: core/cva6.sv:365:3
	wire x_compressed_valid;
	// Trace: core/cva6.sv:366:3
	wire [(16 + x_compressed_req_t_CVA6Cfg[127-:32]) - 1:0] x_compressed_req;
	// Trace: core/cva6.sv:367:3
	wire x_issue_valid;
	// Trace: core/cva6.sv:368:3
	wire [((32 + x_issue_req_t_CVA6Cfg[127-:32]) + x_issue_req_t_CVA6Cfg[255-:32]) - 1:0] x_issue_req;
	// Trace: core/cva6.sv:369:3
	wire x_register_valid;
	// Trace: core/cva6.sv:370:3
	wire [(((x_register_t_CVA6Cfg[127-:32] + x_register_t_CVA6Cfg[255-:32]) + (x_register_t_CVA6Cfg[287-:32] * x_register_t_CVA6Cfg[223-:32])) + (x_register_t_CVA6Cfg[287-:32] + x_register_t_CVA6Cfg[95-:32])) - 1:0] x_register;
	// Trace: core/cva6.sv:371:3
	wire x_commit_valid;
	// Trace: core/cva6.sv:372:3
	wire [(x_commit_t_CVA6Cfg[127-:32] + x_commit_t_CVA6Cfg[255-:32]) + 0:0] x_commit;
	// Trace: core/cva6.sv:373:3
	wire x_result_ready;
	// Trace: core/cva6.sv:375:3
	reg x_compressed_ready;
	// Trace: core/cva6.sv:376:3
	reg [32:0] x_compressed_resp;
	// Trace: core/cva6.sv:377:3
	reg x_issue_ready;
	// Trace: core/cva6.sv:378:3
	reg [((1 + (x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_CVA6Cfg[63-:32])) + (x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_CVA6Cfg[95-:32])) - 1:0] x_issue_resp;
	// Trace: core/cva6.sv:379:3
	reg x_register_ready;
	// Trace: core/cva6.sv:380:3
	reg x_result_valid;
	// Trace: core/cva6.sv:381:3
	reg [((((x_result_t_CVA6Cfg[127-:32] + x_result_t_CVA6Cfg[255-:32]) + x_result_t_CVA6Cfg[191-:32]) + 5) + (x_result_t_CVA6Cfg[63-:32] >= 0 ? x_result_t_CVA6Cfg[63-:32] + 1 : 1 - x_result_t_CVA6Cfg[63-:32])) - 1:0] x_result;
	// Trace: core/cva6.sv:386:3
	wire [CVA6Cfg[17070-:32] - 1:0] trap_vector_base_commit_pcgen;
	// Trace: core/cva6.sv:387:3
	wire [CVA6Cfg[17070-:32] - 1:0] epc_commit_pcgen;
	// Trace: core/cva6.sv:391:3
	wire [(CVA6Cfg[16841-:32] * (((CVA6Cfg[17070-:32] + 32) + (3 + CVA6Cfg[17070-:32])) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)))) - 1:0] fetch_entry_if_id;
	// Trace: core/cva6.sv:392:3
	wire [CVA6Cfg[16841-:32] - 1:0] fetch_valid_if_id;
	// Trace: core/cva6.sv:393:3
	wire [CVA6Cfg[16841-:32] - 1:0] fetch_ready_id_if;
	// Trace: core/cva6.sv:398:3
	wire [((((((((CVA6Cfg[17070-:32] + CVA6Cfg[16503-:32]) + 27) + CVA6Cfg[17102-:32]) + 4) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (3 + CVA6Cfg[17070-:32])) + 4) >= 0 ? (CVA6Cfg[16841-:32] * ((((((((((CVA6Cfg[17070-:32] + CVA6Cfg[16503-:32]) + 12) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + CVA6Cfg[17102-:32]) + 4) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (3 + CVA6Cfg[17070-:32])) + 5)) - 1 : (CVA6Cfg[16841-:32] * (1 - ((((((((((CVA6Cfg[17070-:32] + CVA6Cfg[16503-:32]) + 12) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + CVA6Cfg[17102-:32]) + 4) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (3 + CVA6Cfg[17070-:32])) + 4))) + ((((((((((CVA6Cfg[17070-:32] + CVA6Cfg[16503-:32]) + 12) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + CVA6Cfg[17102-:32]) + 4) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (3 + CVA6Cfg[17070-:32])) + 3)):((((((((CVA6Cfg[17070-:32] + CVA6Cfg[16503-:32]) + 27) + CVA6Cfg[17102-:32]) + 4) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (3 + CVA6Cfg[17070-:32])) + 4) >= 0 ? 0 : (((((((((CVA6Cfg[17070-:32] + CVA6Cfg[16503-:32]) + 12) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + CVA6Cfg[17102-:32]) + 4) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (3 + CVA6Cfg[17070-:32])) + 4)] issue_entry_id_issue;
	// Trace: core/cva6.sv:399:3
	wire [(CVA6Cfg[16841-:32] * 32) - 1:0] orig_instr_id_issue;
	// Trace: core/cva6.sv:400:3
	wire [CVA6Cfg[16841-:32] - 1:0] issue_entry_valid_id_issue;
	// Trace: core/cva6.sv:401:3
	wire [CVA6Cfg[16841-:32] - 1:0] is_ctrl_fow_id_issue;
	// Trace: core/cva6.sv:402:3
	wire [CVA6Cfg[16841-:32] - 1:0] issue_instr_issue_id;
	// Trace: core/cva6.sv:407:3
	wire [(CVA6Cfg[16841-:32] * CVA6Cfg[17070-:32]) - 1:0] rs1_forwarding_id_ex;
	// Trace: core/cva6.sv:408:3
	wire [(CVA6Cfg[16841-:32] * CVA6Cfg[17070-:32]) - 1:0] rs2_forwarding_id_ex;
	// Trace: core/cva6.sv:410:3
	wire [(CVA6Cfg[16841-:32] * ((((12 + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[16503-:32])) - 1:0] fu_data_id_ex;
	// Trace: core/cva6.sv:411:3
	wire [CVA6Cfg[17070-:32] - 1:0] pc_id_ex;
	// Trace: core/cva6.sv:412:3
	wire is_compressed_instr_id_ex;
	// Trace: core/cva6.sv:413:3
	wire [(CVA6Cfg[16841-:32] * 32) - 1:0] tinst_ex;
	// Trace: core/cva6.sv:415:3
	wire flu_ready_ex_id;
	// Trace: core/cva6.sv:416:3
	wire [CVA6Cfg[16503-:32] - 1:0] flu_trans_id_ex_id;
	// Trace: core/cva6.sv:417:3
	wire flu_valid_ex_id;
	// Trace: core/cva6.sv:418:3
	wire [CVA6Cfg[17102-:32] - 1:0] flu_result_ex_id;
	// Trace: core/cva6.sv:419:3
	wire [((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33:0] flu_exception_ex_id;
	// Trace: core/cva6.sv:421:3
	wire [CVA6Cfg[16841-:32] - 1:0] alu_valid_id_ex;
	// Trace: core/cva6.sv:423:3
	wire [CVA6Cfg[16841-:32] - 1:0] branch_valid_id_ex;
	// Trace: core/cva6.sv:425:3
	wire [(3 + CVA6Cfg[17070-:32]) - 1:0] branch_predict_id_ex;
	// Trace: core/cva6.sv:426:3
	wire resolve_branch_ex_id;
	// Trace: core/cva6.sv:428:3
	wire [CVA6Cfg[16841-:32] - 1:0] lsu_valid_id_ex;
	// Trace: core/cva6.sv:429:3
	wire lsu_ready_ex_id;
	// Trace: core/cva6.sv:431:3
	wire [CVA6Cfg[16503-:32] - 1:0] load_trans_id_ex_id;
	// Trace: core/cva6.sv:432:3
	wire [CVA6Cfg[17102-:32] - 1:0] load_result_ex_id;
	// Trace: core/cva6.sv:433:3
	wire load_valid_ex_id;
	// Trace: core/cva6.sv:434:3
	wire [((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33:0] load_exception_ex_id;
	// Trace: core/cva6.sv:436:3
	wire [CVA6Cfg[17102-:32] - 1:0] store_result_ex_id;
	// Trace: core/cva6.sv:437:3
	wire [CVA6Cfg[16503-:32] - 1:0] store_trans_id_ex_id;
	// Trace: core/cva6.sv:438:3
	wire store_valid_ex_id;
	// Trace: core/cva6.sv:439:3
	wire [((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33:0] store_exception_ex_id;
	// Trace: core/cva6.sv:441:3
	wire [CVA6Cfg[16841-:32] - 1:0] mult_valid_id_ex;
	// Trace: core/cva6.sv:443:3
	wire fpu_ready_ex_id;
	// Trace: core/cva6.sv:444:3
	wire [CVA6Cfg[16841-:32] - 1:0] fpu_valid_id_ex;
	// Trace: core/cva6.sv:445:3
	wire [1:0] fpu_fmt_id_ex;
	// Trace: core/cva6.sv:446:3
	wire [2:0] fpu_rm_id_ex;
	// Trace: core/cva6.sv:447:3
	wire [CVA6Cfg[16503-:32] - 1:0] fpu_trans_id_ex_id;
	// Trace: core/cva6.sv:448:3
	wire [CVA6Cfg[17102-:32] - 1:0] fpu_result_ex_id;
	// Trace: core/cva6.sv:449:3
	wire fpu_valid_ex_id;
	// Trace: core/cva6.sv:450:3
	wire [((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33:0] fpu_exception_ex_id;
	// Trace: core/cva6.sv:452:3
	wire [CVA6Cfg[16841-:32] - 1:0] alu2_valid_id_ex;
	// Trace: core/cva6.sv:454:3
	wire stall_acc_id;
	// Trace: core/cva6.sv:455:3
	wire [(((((((((CVA6Cfg[17070-:32] + CVA6Cfg[16503-:32]) + 12) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + CVA6Cfg[17102-:32]) + 4) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (3 + CVA6Cfg[17070-:32])) + 4:0] issue_instr_id_acc;
	// Trace: core/cva6.sv:456:3
	wire issue_instr_hs_id_acc;
	// Trace: core/cva6.sv:457:3
	wire [CVA6Cfg[16503-:32] - 1:0] acc_trans_id_ex_id;
	// Trace: core/cva6.sv:458:3
	wire [CVA6Cfg[17102-:32] - 1:0] acc_result_ex_id;
	// Trace: core/cva6.sv:459:3
	wire acc_valid_ex_id;
	// Trace: core/cva6.sv:460:3
	wire [((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33:0] acc_exception_ex_id;
	// Trace: core/cva6.sv:461:3
	wire halt_acc_ctrl;
	// Trace: core/cva6.sv:462:3
	wire [4:0] acc_resp_fflags;
	// Trace: core/cva6.sv:463:3
	wire acc_resp_fflags_valid;
	// Trace: core/cva6.sv:464:3
	wire single_step_acc_commit;
	// Trace: core/cva6.sv:466:3
	wire [CVA6Cfg[16841-:32] - 1:0] csr_valid_id_ex;
	// Trace: core/cva6.sv:467:3
	wire csr_hs_ld_st_inst_ex;
	// Trace: core/cva6.sv:469:3
	wire [CVA6Cfg[16503-:32] - 1:0] x_trans_id_ex_id;
	// Trace: core/cva6.sv:470:3
	wire [CVA6Cfg[17102-:32] - 1:0] x_result_ex_id;
	// Trace: core/cva6.sv:471:3
	wire x_valid_ex_id;
	// Trace: core/cva6.sv:472:3
	wire [((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33:0] x_exception_ex_id;
	// Trace: core/cva6.sv:473:3
	wire x_we_ex_id;
	// Trace: core/cva6.sv:474:3
	wire [4:0] x_rd_ex_id;
	// Trace: core/cva6.sv:475:3
	wire [CVA6Cfg[16841-:32] - 1:0] x_issue_valid_id_ex;
	// Trace: core/cva6.sv:476:3
	wire x_issue_ready_ex_id;
	// Trace: core/cva6.sv:477:3
	wire [31:0] x_off_instr_id_ex;
	// Trace: core/cva6.sv:478:3
	wire x_transaction_rejected;
	// Trace: core/cva6.sv:483:3
	wire csr_commit_commit_ex;
	// Trace: core/cva6.sv:484:3
	wire dirty_fp_state;
	// Trace: core/cva6.sv:485:3
	wire dirty_v_state;
	// Trace: core/cva6.sv:487:3
	wire lsu_commit_commit_ex;
	// Trace: core/cva6.sv:488:3
	wire lsu_commit_ready_ex_commit;
	// Trace: core/cva6.sv:489:3
	wire [CVA6Cfg[16503-:32] - 1:0] lsu_commit_trans_id;
	// Trace: core/cva6.sv:490:3
	wire stall_st_pending_ex;
	// Trace: core/cva6.sv:491:3
	wire no_st_pending_ex;
	// Trace: core/cva6.sv:492:3
	wire no_st_pending_commit;
	// Trace: core/cva6.sv:493:3
	wire amo_valid_commit;
	// Trace: core/cva6.sv:495:3
	wire acc_valid_acc_ex;
	// Trace: core/cva6.sv:499:3
	wire [((((((((CVA6Cfg[17070-:32] + CVA6Cfg[16503-:32]) + 27) + CVA6Cfg[17102-:32]) + 4) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (3 + CVA6Cfg[17070-:32])) + 4) >= 0 ? (CVA6Cfg[16873-:32] * ((((((((((CVA6Cfg[17070-:32] + CVA6Cfg[16503-:32]) + 12) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + CVA6Cfg[17102-:32]) + 4) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (3 + CVA6Cfg[17070-:32])) + 5)) - 1 : (CVA6Cfg[16873-:32] * (1 - ((((((((((CVA6Cfg[17070-:32] + CVA6Cfg[16503-:32]) + 12) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + CVA6Cfg[17102-:32]) + 4) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (3 + CVA6Cfg[17070-:32])) + 4))) + ((((((((((CVA6Cfg[17070-:32] + CVA6Cfg[16503-:32]) + 12) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + CVA6Cfg[17102-:32]) + 4) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (3 + CVA6Cfg[17070-:32])) + 3)):((((((((CVA6Cfg[17070-:32] + CVA6Cfg[16503-:32]) + 27) + CVA6Cfg[17102-:32]) + 4) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (3 + CVA6Cfg[17070-:32])) + 4) >= 0 ? 0 : (((((((((CVA6Cfg[17070-:32] + CVA6Cfg[16503-:32]) + 12) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + ariane_pkg_REG_ADDR_SIZE) + CVA6Cfg[17102-:32]) + 4) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (3 + CVA6Cfg[17070-:32])) + 4)] commit_instr_id_commit;
	// Trace: core/cva6.sv:500:3
	wire [CVA6Cfg[16873-:32] - 1:0] commit_drop_id_commit;
	// Trace: core/cva6.sv:501:3
	wire [CVA6Cfg[16873-:32] - 1:0] commit_ack_commit_id;
	// Trace: core/cva6.sv:506:3
	wire [(CVA6Cfg[16841-:32] * CVA6Cfg[16503-:32]) - 1:0] rvfi_issue_pointer;
	// Trace: core/cva6.sv:507:3
	wire [(CVA6Cfg[16873-:32] * CVA6Cfg[16503-:32]) - 1:0] rvfi_commit_pointer;
	// Trace: core/cva6.sv:511:3
	wire [(CVA6Cfg[16873-:32] * 5) - 1:0] waddr_commit_id;
	// Trace: core/cva6.sv:512:3
	wire [(CVA6Cfg[16873-:32] * CVA6Cfg[17102-:32]) - 1:0] wdata_commit_id;
	// Trace: core/cva6.sv:513:3
	wire [CVA6Cfg[16873-:32] - 1:0] we_gpr_commit_id;
	// Trace: core/cva6.sv:514:3
	wire [CVA6Cfg[16873-:32] - 1:0] we_fpr_commit_id;
	// Trace: core/cva6.sv:518:3
	wire [4:0] fflags_csr_commit;
	// Trace: core/cva6.sv:519:3
	// removed localparam type riscv_xs_t
	wire [1:0] fs;
	// Trace: core/cva6.sv:520:3
	wire [1:0] vfs;
	// Trace: core/cva6.sv:521:3
	wire [2:0] frm_csr_id_issue_ex;
	// Trace: core/cva6.sv:522:3
	wire [6:0] fprec_csr_ex;
	// Trace: core/cva6.sv:523:3
	wire [1:0] vs;
	// Trace: core/cva6.sv:524:3
	wire enable_translation_csr_ex;
	// Trace: core/cva6.sv:525:3
	wire enable_g_translation_csr_ex;
	// Trace: core/cva6.sv:526:3
	wire en_ld_st_translation_csr_ex;
	// Trace: core/cva6.sv:527:3
	wire en_ld_st_g_translation_csr_ex;
	// Trace: core/cva6.sv:528:3
	wire [1:0] ld_st_priv_lvl_csr_ex;
	// Trace: core/cva6.sv:529:3
	wire ld_st_v_csr_ex;
	// Trace: core/cva6.sv:530:3
	wire sum_csr_ex;
	// Trace: core/cva6.sv:531:3
	wire vs_sum_csr_ex;
	// Trace: core/cva6.sv:532:3
	wire mxr_csr_ex;
	// Trace: core/cva6.sv:533:3
	wire vmxr_csr_ex;
	// Trace: core/cva6.sv:534:3
	wire [CVA6Cfg[419-:32] - 1:0] satp_ppn_csr_ex;
	// Trace: core/cva6.sv:535:3
	wire [CVA6Cfg[16940-:32] - 1:0] asid_csr_ex;
	// Trace: core/cva6.sv:536:3
	wire [CVA6Cfg[419-:32] - 1:0] vsatp_ppn_csr_ex;
	// Trace: core/cva6.sv:537:3
	wire [CVA6Cfg[16940-:32] - 1:0] vs_asid_csr_ex;
	// Trace: core/cva6.sv:538:3
	wire [CVA6Cfg[419-:32] - 1:0] hgatp_ppn_csr_ex;
	// Trace: core/cva6.sv:539:3
	wire [CVA6Cfg[16908-:32] - 1:0] vmid_csr_ex;
	// Trace: core/cva6.sv:540:3
	wire [11:0] csr_addr_ex_csr;
	// Trace: core/cva6.sv:541:3
	wire [7:0] csr_op_commit_csr;
	// Trace: core/cva6.sv:542:3
	wire [CVA6Cfg[17102-:32] - 1:0] csr_wdata_commit_csr;
	// Trace: core/cva6.sv:543:3
	wire [CVA6Cfg[17102-:32] - 1:0] csr_rdata_csr_commit;
	// Trace: core/cva6.sv:544:3
	wire [((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33:0] csr_exception_csr_commit;
	// Trace: core/cva6.sv:545:3
	wire tvm_csr_id;
	// Trace: core/cva6.sv:546:3
	wire tw_csr_id;
	// Trace: core/cva6.sv:547:3
	wire vtw_csr_id;
	// Trace: core/cva6.sv:548:3
	wire tsr_csr_id;
	// Trace: core/cva6.sv:549:3
	wire hu;
	// Trace: core/cva6.sv:550:3
	wire [(((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) + 1:0] irq_ctrl_csr_id;
	// Trace: core/cva6.sv:551:3
	wire dcache_en_csr_nbdcache;
	// Trace: core/cva6.sv:552:3
	wire csr_write_fflags_commit_cs;
	// Trace: core/cva6.sv:553:3
	wire icache_en_csr;
	// Trace: core/cva6.sv:554:3
	wire acc_cons_en_csr;
	// Trace: core/cva6.sv:555:3
	wire debug_mode;
	// Trace: core/cva6.sv:556:3
	wire single_step_csr_commit;
	// Trace: core/cva6.sv:557:3
	wire [(CVA6Cfg[15913-:32] * 8) - 1:0] pmpcfg;
	// Trace: core/cva6.sv:558:3
	wire [((CVA6Cfg[17038-:32] - 3) >= 0 ? (CVA6Cfg[15913-:32] * (CVA6Cfg[17038-:32] - 2)) - 1 : (CVA6Cfg[15913-:32] * (4 - CVA6Cfg[17038-:32])) + (CVA6Cfg[17038-:32] - 4)):((CVA6Cfg[17038-:32] - 3) >= 0 ? 0 : CVA6Cfg[17038-:32] - 3)] pmpaddr;
	// Trace: core/cva6.sv:559:3
	wire [31:0] mcountinhibit_csr_perf;
	// Trace: core/cva6.sv:563:3
	wire [11:0] addr_csr_perf;
	// Trace: core/cva6.sv:564:3
	wire [CVA6Cfg[17102-:32] - 1:0] data_csr_perf;
	wire [CVA6Cfg[17102-:32] - 1:0] data_perf_csr;
	// Trace: core/cva6.sv:565:3
	wire we_csr_perf;
	// Trace: core/cva6.sv:567:3
	wire icache_flush_ctrl_cache;
	// Trace: core/cva6.sv:568:3
	wire itlb_miss_ex_perf;
	// Trace: core/cva6.sv:569:3
	wire dtlb_miss_ex_perf;
	// Trace: core/cva6.sv:570:3
	wire dcache_miss_cache_perf;
	// Trace: core/cva6.sv:571:3
	wire icache_miss_cache_perf;
	// Trace: core/cva6.sv:572:3
	wire [(4 * CVA6Cfg[1092-:32]) - 1:0] miss_vld_bits;
	// Trace: core/cva6.sv:573:3
	wire stall_issue;
	// Trace: core/cva6.sv:577:3
	wire set_pc_ctrl_pcgen;
	// Trace: core/cva6.sv:578:3
	wire flush_csr_ctrl;
	// Trace: core/cva6.sv:579:3
	wire flush_unissued_instr_ctrl_id;
	// Trace: core/cva6.sv:580:3
	wire flush_ctrl_if;
	// Trace: core/cva6.sv:581:3
	wire flush_ctrl_id;
	// Trace: core/cva6.sv:582:3
	wire flush_ctrl_ex;
	// Trace: core/cva6.sv:583:3
	wire flush_ctrl_bp;
	// Trace: core/cva6.sv:584:3
	wire flush_tlb_ctrl_ex;
	// Trace: core/cva6.sv:585:3
	wire flush_tlb_vvma_ctrl_ex;
	// Trace: core/cva6.sv:586:3
	wire flush_tlb_gvma_ctrl_ex;
	// Trace: core/cva6.sv:587:3
	wire fence_i_commit_controller;
	// Trace: core/cva6.sv:588:3
	wire fence_commit_controller;
	// Trace: core/cva6.sv:589:3
	wire sfence_vma_commit_controller;
	// Trace: core/cva6.sv:590:3
	wire hfence_vvma_commit_controller;
	// Trace: core/cva6.sv:591:3
	wire hfence_gvma_commit_controller;
	// Trace: core/cva6.sv:592:3
	wire halt_ctrl;
	// Trace: core/cva6.sv:593:3
	wire halt_csr_ctrl;
	// Trace: core/cva6.sv:594:3
	wire dcache_flush_ctrl_cache;
	// Trace: core/cva6.sv:595:3
	wire dcache_flush_ack_cache_ctrl;
	// Trace: core/cva6.sv:596:3
	wire set_debug_pc;
	// Trace: core/cva6.sv:597:3
	wire flush_commit;
	// Trace: core/cva6.sv:598:3
	wire flush_acc;
	// Trace: core/cva6.sv:600:3
	wire [((1 + CVA6Cfg[17038-:32]) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) - 1:0] icache_areq_ex_cache;
	// Trace: core/cva6.sv:601:3
	wire [(1 + CVA6Cfg[17070-:32]) - 1:0] icache_areq_cache_ex;
	// Trace: core/cva6.sv:602:3
	wire [(4 + CVA6Cfg[17070-:32]) - 1:0] icache_dreq_if_cache;
	// Trace: core/cva6.sv:603:3
	wire [((((2 + CVA6Cfg[643-:32]) + CVA6Cfg[708-:32]) + CVA6Cfg[17070-:32]) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) - 1:0] icache_dreq_cache_if;
	// Trace: core/cva6.sv:605:3
	// removed localparam type ariane_pkg_amo_t
	// removed localparam type ariane_pkg_amo_req_t
	wire [134:0] amo_req;
	// Trace: core/cva6.sv:606:3
	// removed localparam type ariane_pkg_amo_resp_t
	wire [64:0] amo_resp;
	// Trace: core/cva6.sv:607:3
	wire sb_full;
	// Trace: core/cva6.sv:610:3
	wire c3_enable;
	// Trace: core/cva6.sv:614:3
	wire [(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (3 * ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2)) - 1 : (3 * (1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))) + ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 0)):(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1)] dcache_req_ports_ex_cache;
	// Trace: core/cva6.sv:615:3
	reg [(3 * (((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32])) - 1:0] dcache_req_ports_cache_ex;
	// Trace: core/cva6.sv:616:3
	wire [(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (2 * ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2)) - 1 : (2 * (1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))) + ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 0)):(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1)] dcache_req_ports_acc_cache;
	// Trace: core/cva6.sv:617:3
	reg [(2 * (((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32])) - 1:0] dcache_req_ports_cache_acc;
	// Trace: core/cva6.sv:618:3
	wire dcache_commit_wbuffer_empty;
	// Trace: core/cva6.sv:619:3
	wire dcache_commit_wbuffer_not_ni;
	// Trace: core/cva6.sv:622:3
	wire [((((((1 + CVA6Cfg[17070-:32]) + 36) + CVA6Cfg[17102-:32]) + (CVA6Cfg[17102-:32] / 8)) + 12) + CVA6Cfg[16503-:32]) - 1:0] rvfi_lsu_ctrl;
	// Trace: core/cva6.sv:623:3
	wire [CVA6Cfg[17038-:32] - 1:0] rvfi_mem_paddr;
	// Trace: core/cva6.sv:624:3
	wire [CVA6Cfg[16841-:32] - 1:0] rvfi_is_compressed;
	// Trace: core/cva6.sv:625:3
	wire rvfi_csr;
	// Trace: core/cva6.sv:628:3
	wire [63:0] inval_addr;
	// Trace: core/cva6.sv:629:3
	wire inval_valid;
	// Trace: core/cva6.sv:630:3
	wire inval_ready;
	// Trace: core/cva6.sv:635:3
	frontend_FEAA5_C53EA #(
		.bp_resolve_t_CVA6Cfg(CVA6Cfg),
		.bp_resolve_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.fetch_entry_t_CVA6Cfg(CVA6Cfg),
		.fetch_entry_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.icache_dreq_t_CVA6Cfg(CVA6Cfg),
		.icache_dreq_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.icache_drsp_t_CVA6Cfg(CVA6Cfg),
		.icache_drsp_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.CVA6Cfg(CVA6Cfg)
	) i_frontend(
		.flush_i(flush_ctrl_if),
		.flush_bp_i(1'b0),
		.halt_i(halt_ctrl),
		.debug_mode_i(debug_mode),
		.boot_addr_i(boot_addr_i[CVA6Cfg[17070-:32] - 1:0]),
		.icache_dreq_i(icache_dreq_cache_if),
		.icache_dreq_o(icache_dreq_if_cache),
		.resolved_branch_i(resolved_branch),
		.pc_commit_i(pc_commit),
		.set_pc_commit_i(set_pc_ctrl_pcgen),
		.set_debug_pc_i(set_debug_pc),
		.epc_i(epc_commit_pcgen),
		.eret_i(eret),
		.trap_vector_base_i(trap_vector_base_commit_pcgen),
		.ex_valid_i(ex_commit[0]),
		.fetch_entry_o(fetch_entry_if_id),
		.fetch_entry_valid_o(fetch_valid_if_id),
		.fetch_entry_ready_i(fetch_ready_id_if),
		.clk_i(clk_i),
		.rst_ni(rst_ni)
	);
	// Trace: core/cva6.sv:666:3
	id_stage_1271B_A4180 #(
		.branchpredict_sbe_t_CVA6Cfg(CVA6Cfg),
		.exception_t_CVA6Cfg(CVA6Cfg),
		.fetch_entry_t_CVA6Cfg(CVA6Cfg),
		.interrupts_t_CVA6Cfg(CVA6Cfg),
		.irq_ctrl_t_CVA6Cfg(CVA6Cfg),
		.scoreboard_entry_t_CVA6Cfg(CVA6Cfg),
		.x_compressed_req_t_x_compressed_req_t_CVA6Cfg(x_compressed_req_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg),
		.INTERRUPTS(INTERRUPTS)
	) id_stage_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.flush_i(flush_ctrl_if),
		.debug_req_i(debug_req_i),
		.fetch_entry_i(fetch_entry_if_id),
		.fetch_entry_valid_i(fetch_valid_if_id),
		.fetch_entry_ready_o(fetch_ready_id_if),
		.issue_entry_o(issue_entry_id_issue),
		.orig_instr_o(orig_instr_id_issue),
		.issue_entry_valid_o(issue_entry_valid_id_issue),
		.is_ctrl_flow_o(is_ctrl_fow_id_issue),
		.issue_instr_ack_i(issue_instr_issue_id),
		.rvfi_is_compressed_o(rvfi_is_compressed),
		.priv_lvl_i(priv_lvl),
		.v_i(v),
		.fs_i(fs),
		.vfs_i(vfs),
		.frm_i(frm_csr_id_issue_ex),
		.vs_i(vs),
		.irq_i(irq_i),
		.irq_ctrl_i(irq_ctrl_csr_id),
		.debug_mode_i(debug_mode),
		.tvm_i(tvm_csr_id),
		.tw_i(tw_csr_id),
		.vtw_i(vtw_csr_id),
		.tsr_i(tsr_csr_id),
		.hu_i(hu),
		.hart_id_i(hart_id_i),
		.compressed_ready_i(x_compressed_ready),
		.compressed_resp_i(x_compressed_resp),
		.compressed_valid_o(x_compressed_valid),
		.compressed_req_o(x_compressed_req)
	);
	// Trace: core/cva6.sv:716:3
	wire [(CVA6Cfg[16401-:32] * CVA6Cfg[16503-:32]) - 1:0] trans_id_ex_id;
	// Trace: core/cva6.sv:717:3
	wire [(CVA6Cfg[16401-:32] * CVA6Cfg[17102-:32]) - 1:0] wbdata_ex_id;
	// Trace: core/cva6.sv:718:3
	wire [((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? (CVA6Cfg[16401-:32] * (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34)) - 1 : (CVA6Cfg[16401-:32] * (1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))) + (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 32)):((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? 0 : ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)] ex_ex_ex_id;
	// Trace: core/cva6.sv:719:3
	wire [CVA6Cfg[16401-:32] - 1:0] wt_valid_ex_id;
	// Trace: core/cva6.sv:721:3
	localparam ariane_pkg_FLU_WB = 0;
	assign trans_id_ex_id[0+:CVA6Cfg[16503-:32]] = flu_trans_id_ex_id;
	// Trace: core/cva6.sv:722:3
	assign wbdata_ex_id[0+:CVA6Cfg[17102-:32]] = flu_result_ex_id;
	// Trace: core/cva6.sv:723:3
	assign ex_ex_ex_id[((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? 0 : ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) + 0+:((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))] = flu_exception_ex_id;
	// Trace: core/cva6.sv:724:3
	assign wt_valid_ex_id[ariane_pkg_FLU_WB] = flu_valid_ex_id;
	// Trace: core/cva6.sv:726:3
	localparam ariane_pkg_STORE_WB = 1;
	assign trans_id_ex_id[ariane_pkg_STORE_WB * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] = store_trans_id_ex_id;
	// Trace: core/cva6.sv:727:3
	assign wbdata_ex_id[ariane_pkg_STORE_WB * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]] = store_result_ex_id;
	// Trace: core/cva6.sv:728:3
	assign ex_ex_ex_id[((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? 0 : ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) + (ariane_pkg_STORE_WB * ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)))+:((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))] = store_exception_ex_id;
	// Trace: core/cva6.sv:729:3
	assign wt_valid_ex_id[ariane_pkg_STORE_WB] = store_valid_ex_id;
	// Trace: core/cva6.sv:731:3
	localparam ariane_pkg_LOAD_WB = 2;
	assign trans_id_ex_id[ariane_pkg_LOAD_WB * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] = load_trans_id_ex_id;
	// Trace: core/cva6.sv:732:3
	assign wbdata_ex_id[ariane_pkg_LOAD_WB * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]] = load_result_ex_id;
	// Trace: core/cva6.sv:733:3
	assign ex_ex_ex_id[((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? 0 : ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) + (ariane_pkg_LOAD_WB * ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)))+:((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))] = load_exception_ex_id;
	// Trace: core/cva6.sv:734:3
	assign wt_valid_ex_id[ariane_pkg_LOAD_WB] = load_valid_ex_id;
	// Trace: core/cva6.sv:736:3
	localparam ariane_pkg_FPU_WB = 3;
	assign trans_id_ex_id[ariane_pkg_FPU_WB * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] = fpu_trans_id_ex_id;
	// Trace: core/cva6.sv:737:3
	assign wbdata_ex_id[ariane_pkg_FPU_WB * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]] = fpu_result_ex_id;
	// Trace: core/cva6.sv:738:3
	assign ex_ex_ex_id[((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? 0 : ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) + (ariane_pkg_FPU_WB * ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)))+:((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))] = fpu_exception_ex_id;
	// Trace: core/cva6.sv:739:3
	assign wt_valid_ex_id[ariane_pkg_FPU_WB] = fpu_valid_ex_id;
	// Trace: core/cva6.sv:741:3
	always @(*) begin : gen_cvxif_input_assignement
		if (_sv2v_0)
			;
		// Trace: core/cva6.sv:742:5
		x_compressed_ready = cvxif_resp_i[35 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))];
		// Trace: core/cva6.sv:743:5
		x_compressed_resp = cvxif_resp_i[34 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))-:((34 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))) >= (1 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0)))) ? ((34 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))) - (1 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0))))) + 1 : ((1 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0)))) - (34 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1)))) + 1)];
		// Trace: core/cva6.sv:744:5
		x_issue_ready = cvxif_resp_i[1 + (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))];
		// Trace: core/cva6.sv:745:5
		x_issue_resp = cvxif_resp_i[((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1)-:((((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1)) >= (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0)) ? ((((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1)) - (2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0))) + 1 : ((2 + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0)) - (((1 + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + (cvxif_resp_t_CVA6Cfg[287-:32] + cvxif_resp_t_CVA6Cfg[95-:32])) + (((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1))) + 1)];
		// Trace: core/cva6.sv:746:5
		x_register_ready = cvxif_resp_i[((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 1];
		// Trace: core/cva6.sv:747:5
		x_result_valid = cvxif_resp_i[((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) + 0];
		// Trace: core/cva6.sv:748:5
		x_result = cvxif_resp_i[((((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])) - 1-:(((cvxif_resp_t_CVA6Cfg[127-:32] + cvxif_resp_t_CVA6Cfg[255-:32]) + cvxif_resp_t_CVA6Cfg[191-:32]) + 5) + (cvxif_resp_t_CVA6Cfg[63-:32] >= 0 ? cvxif_resp_t_CVA6Cfg[63-:32] + 1 : 1 - cvxif_resp_t_CVA6Cfg[63-:32])];
	end
	// Trace: core/cva6.sv:750:3
	localparam ariane_pkg_ACC_WB = 4;
	localparam ariane_pkg_X_WB = 4;
	generate
		if (CVA6Cfg[16539]) begin : genblk1
			// Trace: core/cva6.sv:751:5
			always @(*) begin : gen_cvxif_output_assignement
				if (_sv2v_0)
					;
				// Trace: core/cva6.sv:752:7
				cvxif_req[1 + ((16 + cvxif_req_t_CVA6Cfg[127-:32]) + (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0)))))))] = x_compressed_valid;
				// Trace: core/cva6.sv:753:7
				cvxif_req[(16 + cvxif_req_t_CVA6Cfg[127-:32]) + (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))))))-:(((16 + cvxif_req_t_CVA6Cfg[127-:32]) + (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))))))) >= (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1)))))) ? (((16 + cvxif_req_t_CVA6Cfg[127-:32]) + (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))))))) - (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1))))))) + 1 : ((1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1)))))) - ((16 + cvxif_req_t_CVA6Cfg[127-:32]) + (1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0)))))))) + 1)] = x_compressed_req;
				// Trace: core/cva6.sv:754:7
				cvxif_req[1 + (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0)))))] = x_issue_valid;
				// Trace: core/cva6.sv:755:7
				cvxif_req[((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))))-:((((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))))) >= (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1)))) ? ((((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))))) - (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1))))) + 1 : ((1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1)))) - (((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32]) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0)))))) + 1)] = x_issue_req;
				// Trace: core/cva6.sv:756:7
				cvxif_req[1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0)))] = x_register_valid;
				// Trace: core/cva6.sv:757:7
				cvxif_req[(((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))-:(((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))) >= (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1)) ? (((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))) - (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1))) + 1 : ((1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 1)) - ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32])) + (1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0)))) + 1)] = x_register;
				// Trace: core/cva6.sv:758:7
				cvxif_req[1 + ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0)] = x_commit_valid;
				// Trace: core/cva6.sv:759:7
				cvxif_req[(((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0-:(((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0) >= 1 ? (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0 : 2 - ((((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0)) + 0))] = x_commit;
				// Trace: core/cva6.sv:760:7
				cvxif_req[0] = x_result_ready;
			end
			// Trace: core/cva6.sv:762:5
			assign trans_id_ex_id[ariane_pkg_X_WB * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] = x_trans_id_ex_id;
			// Trace: core/cva6.sv:763:5
			assign wbdata_ex_id[ariane_pkg_X_WB * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]] = x_result_ex_id;
			// Trace: core/cva6.sv:764:5
			assign ex_ex_ex_id[((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? 0 : ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) + (ariane_pkg_X_WB * ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)))+:((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))] = x_exception_ex_id;
			// Trace: core/cva6.sv:765:5
			assign wt_valid_ex_id[ariane_pkg_X_WB] = x_valid_ex_id;
		end
		else if (CVA6Cfg[16369]) begin : genblk1
			// Trace: core/cva6.sv:767:5
			wire [(((((((((17 + cvxif_req_t_CVA6Cfg[127-:32]) + 1) + ((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32])) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32]))) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0))) + 0) >= 0 ? (((((((17 + cvxif_req_t_CVA6Cfg[127-:32]) + 1) + ((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32])) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32]))) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0))) + 1 : 1 - ((((((((17 + cvxif_req_t_CVA6Cfg[127-:32]) + 1) + ((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32])) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32]))) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0))) + 0)):1] sv2v_tmp_74465;
			assign sv2v_tmp_74465 = 1'sb0;
			always @(*) cvxif_req = sv2v_tmp_74465;
			// Trace: core/cva6.sv:768:5
			assign trans_id_ex_id[ariane_pkg_ACC_WB * CVA6Cfg[16503-:32]+:CVA6Cfg[16503-:32]] = acc_trans_id_ex_id;
			// Trace: core/cva6.sv:769:5
			assign wbdata_ex_id[ariane_pkg_ACC_WB * CVA6Cfg[17102-:32]+:CVA6Cfg[17102-:32]] = acc_result_ex_id;
			// Trace: core/cva6.sv:770:5
			assign ex_ex_ex_id[((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? 0 : ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) + (ariane_pkg_ACC_WB * ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)))+:((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33))] = acc_exception_ex_id;
			// Trace: core/cva6.sv:771:5
			assign wt_valid_ex_id[ariane_pkg_ACC_WB] = acc_valid_ex_id;
		end
		else begin : genblk1
			// Trace: core/cva6.sv:773:5
			wire [(((((((((17 + cvxif_req_t_CVA6Cfg[127-:32]) + 1) + ((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32])) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32]))) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0))) + 0) >= 0 ? (((((((17 + cvxif_req_t_CVA6Cfg[127-:32]) + 1) + ((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32])) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32]))) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0))) + 1 : 1 - ((((((((17 + cvxif_req_t_CVA6Cfg[127-:32]) + 1) + ((32 + cvxif_req_t_CVA6Cfg[127-:32]) + cvxif_req_t_CVA6Cfg[255-:32])) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + (cvxif_req_t_CVA6Cfg[287-:32] * cvxif_req_t_CVA6Cfg[223-:32])) + (cvxif_req_t_CVA6Cfg[287-:32] + cvxif_req_t_CVA6Cfg[95-:32]))) + 1) + (((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0) >= 0 ? (cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 1 : 1 - ((cvxif_req_t_CVA6Cfg[127-:32] + cvxif_req_t_CVA6Cfg[255-:32]) + 0))) + 0)):1] sv2v_tmp_74465;
			assign sv2v_tmp_74465 = 1'sb0;
			always @(*) cvxif_req = sv2v_tmp_74465;
		end
	endgenerate
	// Trace: core/cva6.sv:776:3
	generate
		if (CVA6Cfg[16539] && CVA6Cfg[16369]) begin : gen_err_xif_and_acc
			// Trace: core/cva6.sv:777:5
			initial $display("Error [elaboration] core/cva6.sv:777:5 - cva6.gen_err_xif_and_acc\n msg: ", "X-interface and accelerator port cannot be enabled at the same time.");
		end
	endgenerate
	// Trace: core/cva6.sv:783:3
	issue_stage_96801_23E55 #(
		.bp_resolve_t_CVA6Cfg(CVA6Cfg),
		.branchpredict_sbe_t_CVA6Cfg(CVA6Cfg),
		.exception_t_CVA6Cfg(CVA6Cfg),
		.fu_data_t_CVA6Cfg(CVA6Cfg),
		.scoreboard_entry_t_CVA6Cfg(CVA6Cfg),
		.x_commit_t_x_commit_t_CVA6Cfg(x_commit_t_CVA6Cfg),
		.x_issue_req_t_x_issue_req_t_CVA6Cfg(x_issue_req_t_CVA6Cfg),
		.x_issue_resp_t_x_issue_resp_t_CVA6Cfg(x_issue_resp_t_CVA6Cfg),
		.x_register_t_x_register_t_CVA6Cfg(x_register_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) issue_stage_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.sb_full_o(sb_full),
		.flush_unissued_instr_i(flush_unissued_instr_ctrl_id),
		.flush_i(flush_ctrl_id),
		.stall_i(stall_acc_id),
		.decoded_instr_i(issue_entry_id_issue),
		.orig_instr_i(orig_instr_id_issue),
		.decoded_instr_valid_i(issue_entry_valid_id_issue),
		.is_ctrl_flow_i(is_ctrl_fow_id_issue),
		.decoded_instr_ack_o(issue_instr_issue_id),
		.rs1_forwarding_o(rs1_forwarding_id_ex),
		.rs2_forwarding_o(rs2_forwarding_id_ex),
		.fu_data_o(fu_data_id_ex),
		.pc_o(pc_id_ex),
		.is_compressed_instr_o(is_compressed_instr_id_ex),
		.tinst_o(tinst_ex),
		.flu_ready_i(flu_ready_ex_id),
		.alu_valid_o(alu_valid_id_ex),
		.branch_valid_o(branch_valid_id_ex),
		.branch_predict_o(branch_predict_id_ex),
		.resolve_branch_i(resolve_branch_ex_id),
		.lsu_ready_i(lsu_ready_ex_id),
		.lsu_valid_o(lsu_valid_id_ex),
		.mult_valid_o(mult_valid_id_ex),
		.fpu_ready_i(fpu_ready_ex_id),
		.fpu_valid_o(fpu_valid_id_ex),
		.fpu_fmt_o(fpu_fmt_id_ex),
		.fpu_rm_o(fpu_rm_id_ex),
		.alu2_valid_o(alu2_valid_id_ex),
		.csr_valid_o(csr_valid_id_ex),
		.xfu_valid_o(x_issue_valid_id_ex),
		.xfu_ready_i(x_issue_ready_ex_id),
		.x_off_instr_o(x_off_instr_id_ex),
		.hart_id_i(hart_id_i),
		.x_issue_ready_i(x_issue_ready),
		.x_issue_resp_i(x_issue_resp),
		.x_issue_valid_o(x_issue_valid),
		.x_issue_req_o(x_issue_req),
		.x_register_ready_i(x_register_ready),
		.x_register_valid_o(x_register_valid),
		.x_register_o(x_register),
		.x_commit_valid_o(x_commit_valid),
		.x_commit_o(x_commit),
		.x_transaction_rejected_o(x_transaction_rejected),
		.issue_instr_o(issue_instr_id_acc),
		.issue_instr_hs_o(issue_instr_hs_id_acc),
		.resolved_branch_i(resolved_branch),
		.trans_id_i(trans_id_ex_id),
		.wbdata_i(wbdata_ex_id),
		.ex_ex_i(ex_ex_ex_id),
		.wt_valid_i(wt_valid_ex_id),
		.x_we_i(x_we_ex_id),
		.x_rd_i(x_rd_ex_id),
		.waddr_i(waddr_commit_id),
		.wdata_i(wdata_commit_id),
		.we_gpr_i(we_gpr_commit_id),
		.we_fpr_i(we_fpr_commit_id),
		.commit_instr_o(commit_instr_id_commit),
		.commit_drop_o(commit_drop_id_commit),
		.commit_ack_i(commit_ack_commit_id),
		.stall_issue_o(stall_issue),
		.rvfi_issue_pointer_o(rvfi_issue_pointer),
		.rvfi_commit_pointer_o(rvfi_commit_pointer)
	);
	// Trace: core/cva6.sv:881:3
	ex_stage_F40F2_C6BD8 #(
		.bp_resolve_t_CVA6Cfg(CVA6Cfg),
		.branchpredict_sbe_t_CVA6Cfg(CVA6Cfg),
		.dcache_req_i_t_CVA6Cfg(CVA6Cfg),
		.dcache_req_o_t_CVA6Cfg(CVA6Cfg),
		.exception_t_CVA6Cfg(CVA6Cfg),
		.fu_data_t_CVA6Cfg(CVA6Cfg),
		.icache_areq_t_CVA6Cfg(CVA6Cfg),
		.icache_arsp_t_CVA6Cfg(CVA6Cfg),
		.icache_dreq_t_CVA6Cfg(CVA6Cfg),
		.icache_drsp_t_CVA6Cfg(CVA6Cfg),
		.lsu_ctrl_t_CVA6Cfg(CVA6Cfg),
		.x_result_t_x_result_t_CVA6Cfg(x_result_t_CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) ex_stage_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.debug_mode_i(debug_mode),
		.flush_i(flush_ctrl_ex),
		.rs1_forwarding_i(rs1_forwarding_id_ex),
		.rs2_forwarding_i(rs2_forwarding_id_ex),
		.fu_data_i(fu_data_id_ex),
		.pc_i(pc_id_ex),
		.is_compressed_instr_i(is_compressed_instr_id_ex),
		.tinst_i(tinst_ex),
		.flu_result_o(flu_result_ex_id),
		.flu_trans_id_o(flu_trans_id_ex_id),
		.flu_valid_o(flu_valid_ex_id),
		.flu_exception_o(flu_exception_ex_id),
		.flu_ready_o(flu_ready_ex_id),
		.alu_valid_i(alu_valid_id_ex),
		.branch_valid_i(branch_valid_id_ex),
		.branch_predict_i(branch_predict_id_ex),
		.resolved_branch_o(resolved_branch),
		.resolve_branch_o(resolve_branch_ex_id),
		.csr_valid_i(csr_valid_id_ex),
		.csr_addr_o(csr_addr_ex_csr),
		.csr_commit_i(csr_commit_commit_ex),
		.csr_hs_ld_st_inst_o(csr_hs_ld_st_inst_ex),
		.mult_valid_i(mult_valid_id_ex),
		.lsu_ready_o(lsu_ready_ex_id),
		.lsu_valid_i(lsu_valid_id_ex),
		.load_result_o(load_result_ex_id),
		.load_trans_id_o(load_trans_id_ex_id),
		.load_valid_o(load_valid_ex_id),
		.load_exception_o(load_exception_ex_id),
		.store_result_o(store_result_ex_id),
		.store_trans_id_o(store_trans_id_ex_id),
		.store_valid_o(store_valid_ex_id),
		.store_exception_o(store_exception_ex_id),
		.lsu_commit_i(lsu_commit_commit_ex),
		.lsu_commit_ready_o(lsu_commit_ready_ex_commit),
		.commit_tran_id_i(lsu_commit_trans_id),
		.stall_st_pending_i(stall_st_pending_ex),
		.no_st_pending_o(no_st_pending_ex),
		.fpu_ready_o(fpu_ready_ex_id),
		.fpu_valid_i(fpu_valid_id_ex),
		.fpu_fmt_i(fpu_fmt_id_ex),
		.fpu_rm_i(fpu_rm_id_ex),
		.fpu_frm_i(frm_csr_id_issue_ex),
		.fpu_prec_i(fprec_csr_ex),
		.fpu_trans_id_o(fpu_trans_id_ex_id),
		.fpu_result_o(fpu_result_ex_id),
		.fpu_valid_o(fpu_valid_ex_id),
		.fpu_exception_o(fpu_exception_ex_id),
		.alu2_valid_i(alu2_valid_id_ex),
		.amo_valid_commit_i(amo_valid_commit),
		.amo_req_o(amo_req),
		.amo_resp_i(amo_resp),
		.x_valid_i(x_issue_valid_id_ex),
		.x_ready_o(x_issue_ready_ex_id),
		.x_off_instr_i(x_off_instr_id_ex),
		.x_transaction_rejected_i(x_transaction_rejected),
		.x_trans_id_o(x_trans_id_ex_id),
		.x_exception_o(x_exception_ex_id),
		.x_result_o(x_result_ex_id),
		.x_valid_o(x_valid_ex_id),
		.x_we_o(x_we_ex_id),
		.x_rd_o(x_rd_ex_id),
		.x_result_valid_i(x_result_valid),
		.x_result_i(x_result),
		.x_result_ready_o(x_result_ready),
		.acc_valid_i(acc_valid_acc_ex),
		.itlb_miss_o(itlb_miss_ex_perf),
		.dtlb_miss_o(dtlb_miss_ex_perf),
		.enable_translation_i(enable_translation_csr_ex),
		.enable_g_translation_i(enable_g_translation_csr_ex),
		.en_ld_st_translation_i(en_ld_st_translation_csr_ex),
		.en_ld_st_g_translation_i(en_ld_st_g_translation_csr_ex),
		.flush_tlb_i(flush_tlb_ctrl_ex),
		.flush_tlb_vvma_i(flush_tlb_vvma_ctrl_ex),
		.flush_tlb_gvma_i(flush_tlb_gvma_ctrl_ex),
		.priv_lvl_i(priv_lvl),
		.v_i(v),
		.ld_st_priv_lvl_i(ld_st_priv_lvl_csr_ex),
		.ld_st_v_i(ld_st_v_csr_ex),
		.sum_i(sum_csr_ex),
		.vs_sum_i(vs_sum_csr_ex),
		.mxr_i(mxr_csr_ex),
		.vmxr_i(vmxr_csr_ex),
		.satp_ppn_i(satp_ppn_csr_ex),
		.asid_i(asid_csr_ex),
		.vsatp_ppn_i(vsatp_ppn_csr_ex),
		.vs_asid_i(vs_asid_csr_ex),
		.hgatp_ppn_i(hgatp_ppn_csr_ex),
		.vmid_i(vmid_csr_ex),
		.icache_areq_i(icache_areq_cache_ex),
		.icache_areq_o(icache_areq_ex_cache),
		.dcache_req_ports_i(dcache_req_ports_cache_ex),
		.dcache_req_ports_o(dcache_req_ports_ex_cache),
		.dcache_wbuffer_empty_i(dcache_commit_wbuffer_empty),
		.dcache_wbuffer_not_ni_i(dcache_commit_wbuffer_not_ni),
		.pmpcfg_i(pmpcfg),
		.pmpaddr_i(pmpaddr),
		.rvfi_lsu_ctrl_o(rvfi_lsu_ctrl),
		.rvfi_mem_paddr_o(rvfi_mem_paddr),
		.c3_enable_i(c3_enable)
	);
	// Trace: core/cva6.sv:1024:3
	assign no_st_pending_commit = no_st_pending_ex & dcache_commit_wbuffer_empty;
	// Trace: core/cva6.sv:1026:3
	commit_stage_309F0_F5630 #(
		.exception_t_CVA6Cfg(CVA6Cfg),
		.exception_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.scoreboard_entry_t_CVA6Cfg(CVA6Cfg),
		.scoreboard_entry_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.CVA6Cfg(CVA6Cfg)
	) commit_stage_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.halt_i(halt_ctrl),
		.flush_dcache_i(dcache_flush_ctrl_cache),
		.exception_o(ex_commit),
		.dirty_fp_state_o(dirty_fp_state),
		.single_step_i(single_step_csr_commit || single_step_acc_commit),
		.commit_instr_i(commit_instr_id_commit),
		.commit_drop_i(commit_drop_id_commit),
		.commit_ack_o(commit_ack_commit_id),
		.commit_macro_ack_o(commit_macro_ack),
		.no_st_pending_i(no_st_pending_commit),
		.waddr_o(waddr_commit_id),
		.wdata_o(wdata_commit_id),
		.we_gpr_o(we_gpr_commit_id),
		.we_fpr_o(we_fpr_commit_id),
		.commit_lsu_o(lsu_commit_commit_ex),
		.commit_lsu_ready_i(lsu_commit_ready_ex_commit),
		.commit_tran_id_o(lsu_commit_trans_id),
		.amo_valid_commit_o(amo_valid_commit),
		.amo_resp_i(amo_resp),
		.commit_csr_o(csr_commit_commit_ex),
		.pc_o(pc_commit),
		.csr_op_o(csr_op_commit_csr),
		.csr_wdata_o(csr_wdata_commit_csr),
		.csr_rdata_i(csr_rdata_csr_commit),
		.csr_write_fflags_o(csr_write_fflags_commit_cs),
		.csr_exception_i(csr_exception_csr_commit),
		.fence_i_o(fence_i_commit_controller),
		.fence_o(fence_commit_controller),
		.sfence_vma_o(sfence_vma_commit_controller),
		.hfence_vvma_o(hfence_vvma_commit_controller),
		.hfence_gvma_o(hfence_gvma_commit_controller),
		.flush_commit_o(flush_commit)
	);
	// Trace: core/cva6.sv:1068:3
	assign commit_ack = commit_ack_commit_id & ~commit_drop_id_commit;
	// Trace: core/cva6.sv:1073:3
	csr_regfile_386FB_07714 #(
		.exception_t_CVA6Cfg(CVA6Cfg),
		.irq_ctrl_t_CVA6Cfg(CVA6Cfg),
		.scoreboard_entry_t_CVA6Cfg(CVA6Cfg),
		.CVA6Cfg(CVA6Cfg),
		.MHPMCounterNum(ariane_pkg_MHPMCounterNum)
	) csr_regfile_i(
		.flush_o(flush_csr_ctrl),
		.halt_csr_o(halt_csr_ctrl),
		.commit_instr_i(commit_instr_id_commit),
		.commit_ack_i(commit_macro_ack),
		.boot_addr_i(boot_addr_i[CVA6Cfg[17070-:32] - 1:0]),
		.hart_id_i(hart_id_i[CVA6Cfg[17102-:32] - 1:0]),
		.ex_i(ex_commit),
		.csr_op_i(csr_op_commit_csr),
		.csr_write_fflags_i(csr_write_fflags_commit_cs),
		.dirty_fp_state_i(dirty_fp_state),
		.dirty_v_state_i(dirty_v_state),
		.csr_addr_i(csr_addr_ex_csr),
		.csr_wdata_i(csr_wdata_commit_csr),
		.csr_rdata_o(csr_rdata_csr_commit),
		.pc_i(pc_commit),
		.csr_exception_o(csr_exception_csr_commit),
		.epc_o(epc_commit_pcgen),
		.eret_o(eret),
		.set_debug_pc_o(set_debug_pc),
		.trap_vector_base_o(trap_vector_base_commit_pcgen),
		.priv_lvl_o(priv_lvl),
		.v_o(v),
		.acc_fflags_ex_i(acc_resp_fflags),
		.acc_fflags_ex_valid_i(acc_resp_fflags_valid),
		.fs_o(fs),
		.vfs_o(vfs),
		.fflags_o(fflags_csr_commit),
		.frm_o(frm_csr_id_issue_ex),
		.fprec_o(fprec_csr_ex),
		.vs_o(vs),
		.irq_ctrl_o(irq_ctrl_csr_id),
		.ld_st_priv_lvl_o(ld_st_priv_lvl_csr_ex),
		.ld_st_v_o(ld_st_v_csr_ex),
		.csr_hs_ld_st_inst_i(csr_hs_ld_st_inst_ex),
		.en_translation_o(enable_translation_csr_ex),
		.en_g_translation_o(enable_g_translation_csr_ex),
		.en_ld_st_translation_o(en_ld_st_translation_csr_ex),
		.en_ld_st_g_translation_o(en_ld_st_g_translation_csr_ex),
		.sum_o(sum_csr_ex),
		.vs_sum_o(vs_sum_csr_ex),
		.mxr_o(mxr_csr_ex),
		.vmxr_o(vmxr_csr_ex),
		.satp_ppn_o(satp_ppn_csr_ex),
		.asid_o(asid_csr_ex),
		.vsatp_ppn_o(vsatp_ppn_csr_ex),
		.vs_asid_o(vs_asid_csr_ex),
		.hgatp_ppn_o(hgatp_ppn_csr_ex),
		.vmid_o(vmid_csr_ex),
		.tvm_o(tvm_csr_id),
		.tw_o(tw_csr_id),
		.vtw_o(vtw_csr_id),
		.tsr_o(tsr_csr_id),
		.hu_o(hu),
		.debug_mode_o(debug_mode),
		.single_step_o(single_step_csr_commit),
		.dcache_en_o(dcache_en_csr_nbdcache),
		.icache_en_o(icache_en_csr),
		.acc_cons_en_o(acc_cons_en_csr),
		.perf_addr_o(addr_csr_perf),
		.perf_data_o(data_csr_perf),
		.perf_data_i(data_perf_csr),
		.perf_we_o(we_csr_perf),
		.pmpcfg_o(pmpcfg),
		.pmpaddr_o(pmpaddr),
		.mcountinhibit_o(mcountinhibit_csr_perf),
		.rvfi_csr_o(rvfi_csr),
		.c3_enable_o(c3_enable),
		.debug_req_i(debug_req_i),
		.ipi_i(ipi_i),
		.irq_i(irq_i),
		.time_irq_i(time_irq_i),
		.clk_i(clk_i),
		.rst_ni(rst_ni)
	);
	// Trace: core/cva6.sv:1159:3
	generate
		if (CVA6Cfg[16368]) begin : gen_perf_counter
			// Trace: core/cva6.sv:1160:5
			perf_counters_68487_73CC7 #(
				.bp_resolve_t_CVA6Cfg(CVA6Cfg),
				.bp_resolve_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
				.dcache_req_i_t_CVA6Cfg(CVA6Cfg),
				.dcache_req_i_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
				.dcache_req_o_t_CVA6Cfg(CVA6Cfg),
				.dcache_req_o_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
				.exception_t_CVA6Cfg(CVA6Cfg),
				.exception_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
				.icache_dreq_t_CVA6Cfg(CVA6Cfg),
				.icache_dreq_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
				.scoreboard_entry_t_CVA6Cfg(CVA6Cfg),
				.scoreboard_entry_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
				.CVA6Cfg(CVA6Cfg),
				.NumPorts(NumPorts)
			) perf_counters_i(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.debug_mode_i(debug_mode),
				.addr_i(addr_csr_perf),
				.we_i(we_csr_perf),
				.data_i(data_csr_perf),
				.data_o(data_perf_csr),
				.commit_instr_i(commit_instr_id_commit),
				.commit_ack_i(commit_ack),
				.l1_icache_miss_i(icache_miss_cache_perf),
				.l1_dcache_miss_i(dcache_miss_cache_perf),
				.itlb_miss_i(itlb_miss_ex_perf),
				.dtlb_miss_i(dtlb_miss_ex_perf),
				.sb_full_i(sb_full),
				.if_empty_i(~fetch_valid_if_id[0]),
				.ex_i(ex_commit),
				.eret_i(eret),
				.resolved_branch_i(resolved_branch),
				.branch_exceptions_i(flu_exception_ex_id),
				.l1_icache_access_i(icache_dreq_if_cache),
				.l1_dcache_access_i(dcache_req_ports_ex_cache),
				.miss_vld_bits_i(miss_vld_bits),
				.i_tlb_flush_i(flush_tlb_ctrl_ex),
				.stall_issue_i(stall_issue),
				.mcountinhibit_i(mcountinhibit_csr_perf)
			);
		end
		else begin : gen_no_perf_counter
			// Trace: core/cva6.sv:1201:5
			assign data_perf_csr = 1'sb0;
		end
	endgenerate
	// Trace: core/cva6.sv:1207:3
	controller_AD18E_A90D3 #(
		.bp_resolve_t_CVA6Cfg(CVA6Cfg),
		.bp_resolve_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.CVA6Cfg(CVA6Cfg)
	) controller_i(
		.v_i(v),
		.set_pc_commit_o(set_pc_ctrl_pcgen),
		.flush_unissued_instr_o(flush_unissued_instr_ctrl_id),
		.flush_if_o(flush_ctrl_if),
		.flush_id_o(flush_ctrl_id),
		.flush_ex_o(flush_ctrl_ex),
		.flush_bp_o(flush_ctrl_bp),
		.flush_tlb_o(flush_tlb_ctrl_ex),
		.flush_tlb_vvma_o(flush_tlb_vvma_ctrl_ex),
		.flush_tlb_gvma_o(flush_tlb_gvma_ctrl_ex),
		.flush_dcache_o(dcache_flush_ctrl_cache),
		.flush_dcache_ack_i(dcache_flush_ack_cache_ctrl),
		.halt_csr_i(halt_csr_ctrl),
		.halt_acc_i(halt_acc_ctrl),
		.halt_o(halt_ctrl),
		.eret_i(eret),
		.ex_valid_i(ex_commit[0]),
		.set_debug_pc_i(set_debug_pc),
		.flush_csr_i(flush_csr_ctrl),
		.resolved_branch_i(resolved_branch),
		.fence_i_i(fence_i_commit_controller),
		.fence_i(fence_commit_controller),
		.sfence_vma_i(sfence_vma_commit_controller),
		.hfence_vvma_i(hfence_vvma_commit_controller),
		.hfence_gvma_i(hfence_gvma_commit_controller),
		.flush_commit_i(flush_commit),
		.flush_acc_i(flush_acc),
		.flush_icache_o(icache_flush_ctrl_cache),
		.clk_i(clk_i),
		.rst_ni(rst_ni)
	);
	// Trace: core/cva6.sv:1253:3
	wire [(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (4 * ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2)) - 1 : (4 * (1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))) + ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 0)):(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1)] dcache_req_to_cache;
	// Trace: core/cva6.sv:1254:3
	wire [(4 * (((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32])) - 1:0] dcache_req_from_cache;
	// Trace: core/cva6.sv:1257:3
	assign dcache_req_to_cache[(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) + 0+:(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))] = dcache_req_ports_ex_cache[(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) + 0+:(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))];
	// Trace: core/cva6.sv:1258:3
	assign dcache_req_to_cache[(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) + (((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))+:(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))] = dcache_req_ports_ex_cache[(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) + (((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))+:(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))];
	// Trace: core/cva6.sv:1259:3
	assign dcache_req_to_cache[(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) + (2 * (((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1)))+:(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))] = dcache_req_ports_acc_cache[(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) + 0+:(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))];
	// Trace: core/cva6.sv:1260:3
	assign dcache_req_to_cache[(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) + (3 * (((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1)))+:(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))] = (dcache_req_ports_ex_cache[(2 * (((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))) + (((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 2 + ((CVA6Cfg[17102-:32] / 8) + (2 + (CVA6Cfg[1124-:32] + 1))) : ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) - (2 + ((CVA6Cfg[17102-:32] / 8) + (2 + (CVA6Cfg[1124-:32] + 1)))))] ? dcache_req_ports_ex_cache[(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) + (2 * (((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1)))+:(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))] : dcache_req_ports_acc_cache[(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 0 : (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) + (((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))+:(((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))]);
	// Trace: core/cva6.sv:1264:3
	wire [(((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) * 1:1] sv2v_tmp_F3B49;
	assign sv2v_tmp_F3B49 = dcache_req_from_cache[0+:((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]];
	always @(*) dcache_req_ports_cache_ex[0+:((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]] = sv2v_tmp_F3B49;
	// Trace: core/cva6.sv:1265:3
	wire [(((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) * 1:1] sv2v_tmp_70AE7;
	assign sv2v_tmp_70AE7 = dcache_req_from_cache[((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]+:((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]];
	always @(*) dcache_req_ports_cache_ex[((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]+:((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]] = sv2v_tmp_70AE7;
	// Trace: core/cva6.sv:1266:3
	wire [(((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) * 1:1] sv2v_tmp_DB97A;
	assign sv2v_tmp_DB97A = dcache_req_from_cache[2 * (((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32])+:((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]];
	always @(*) dcache_req_ports_cache_acc[0+:((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]] = sv2v_tmp_DB97A;
	// Trace: core/cva6.sv:1267:3
	always @(*) begin : gen_dcache_req_store_data_gnt
		if (_sv2v_0)
			;
		// Trace: core/cva6.sv:1268:5
		dcache_req_ports_cache_ex[2 * (((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32])+:((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]] = dcache_req_from_cache[3 * (((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32])+:((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]];
		// Trace: core/cva6.sv:1269:5
		dcache_req_ports_cache_acc[((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]+:((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]] = dcache_req_from_cache[3 * (((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32])+:((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]];
		// Trace: core/cva6.sv:1272:5
		dcache_req_ports_cache_ex[(2 * (((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32])) + (2 + (CVA6Cfg[1124-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[900-:32] - 1))))] = dcache_req_ports_cache_ex[(2 * (((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32])) + (2 + (CVA6Cfg[1124-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[900-:32] - 1))))] & dcache_req_ports_ex_cache[(2 * (((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))) + (((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 2 + ((CVA6Cfg[17102-:32] / 8) + (2 + (CVA6Cfg[1124-:32] + 1))) : ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) - (2 + ((CVA6Cfg[17102-:32] / 8) + (2 + (CVA6Cfg[1124-:32] + 1)))))];
		// Trace: core/cva6.sv:1273:5
		dcache_req_ports_cache_acc[(((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + (2 + (CVA6Cfg[1124-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[900-:32] - 1))))] = dcache_req_ports_cache_acc[(((2 + CVA6Cfg[1124-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + (2 + (CVA6Cfg[1124-:32] + (CVA6Cfg[17102-:32] + (CVA6Cfg[900-:32] - 1))))] & !dcache_req_ports_ex_cache[(2 * (((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? (((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 2 : 1 - ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1))) + (((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) >= 0 ? 2 + ((CVA6Cfg[17102-:32] / 8) + (2 + (CVA6Cfg[1124-:32] + 1))) : ((((((((CVA6Cfg[1028-:32] + CVA6Cfg[996-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[900-:32]) + 2) + (CVA6Cfg[17102-:32] / 8)) + 2) + CVA6Cfg[1124-:32]) + 1) - (2 + ((CVA6Cfg[17102-:32] / 8) + (2 + (CVA6Cfg[1124-:32] + 1)))))];
	end
	// Trace: core/cva6.sv:1276:3
	generate
		if (CVA6Cfg[1126-:2] == 2'd1) begin : gen_cache_wt
			// Trace: core/cva6.sv:1278:5
			wt_cache_subsystem_69836_EAB39 #(
				.dcache_req_i_t_CVA6Cfg(CVA6Cfg),
				.dcache_req_o_t_CVA6Cfg(CVA6Cfg),
				.icache_areq_t_CVA6Cfg(CVA6Cfg),
				.icache_arsp_t_CVA6Cfg(CVA6Cfg),
				.icache_dreq_t_CVA6Cfg(CVA6Cfg),
				.icache_drsp_t_CVA6Cfg(CVA6Cfg),
				.icache_req_t_CVA6Cfg(CVA6Cfg),
				.icache_rtrn_t_CVA6Cfg(CVA6Cfg),
				.noc_req_t_noc_req_t_ariane_axi_AddrWidth(noc_req_t_ariane_axi_AddrWidth),
				.noc_req_t_noc_req_t_ariane_axi_DataWidth(noc_req_t_ariane_axi_DataWidth),
				.noc_req_t_noc_req_t_ariane_axi_IdWidth(noc_req_t_ariane_axi_IdWidth),
				.noc_req_t_noc_req_t_ariane_axi_StrbWidth(noc_req_t_ariane_axi_StrbWidth),
				.noc_req_t_noc_req_t_ariane_axi_UserWidth(noc_req_t_ariane_axi_UserWidth),
				.noc_resp_t_noc_resp_t_ariane_axi_DataWidth(noc_resp_t_ariane_axi_DataWidth),
				.noc_resp_t_noc_resp_t_ariane_axi_IdWidth(noc_resp_t_ariane_axi_IdWidth),
				.noc_resp_t_noc_resp_t_ariane_axi_UserWidth(noc_resp_t_ariane_axi_UserWidth),
				.CVA6Cfg(CVA6Cfg),
				.NumPorts(NumPorts)
			) i_cache_subsystem(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.icache_en_i(icache_en_csr),
				.icache_flush_i(icache_flush_ctrl_cache),
				.icache_miss_o(icache_miss_cache_perf),
				.icache_areq_i(icache_areq_ex_cache),
				.icache_areq_o(icache_areq_cache_ex),
				.icache_dreq_i(icache_dreq_if_cache),
				.icache_dreq_o(icache_dreq_cache_if),
				.dcache_enable_i(dcache_en_csr_nbdcache),
				.dcache_flush_i(dcache_flush_ctrl_cache),
				.dcache_flush_ack_o(dcache_flush_ack_cache_ctrl),
				.dcache_amo_req_i(amo_req),
				.dcache_amo_resp_o(amo_resp),
				.dcache_miss_o(dcache_miss_cache_perf),
				.miss_vld_bits_o(miss_vld_bits),
				.dcache_req_ports_i(dcache_req_to_cache),
				.dcache_req_ports_o(dcache_req_from_cache),
				.wbuffer_empty_o(dcache_commit_wbuffer_empty),
				.wbuffer_not_ni_o(dcache_commit_wbuffer_not_ni),
				.noc_req_o(noc_req_o),
				.noc_resp_i(noc_resp_i),
				.inval_addr_i(inval_addr),
				.inval_valid_i(inval_valid),
				.inval_ready_o(inval_ready)
			);
		end
		else if (CVA6Cfg[1126-:2] == 2'd2) begin : gen_cache_hpd
			// Trace: core/cva6.sv:1326:5
			// removed localparam type sv2v_uu_i_cache_subsystem_dcache_cmo_req_i
			localparam [0:0] sv2v_uu_i_cache_subsystem_ext_dcache_cmo_req_i_0 = 1'sb0;
			localparam signed [31:0] sv2v_uu_i_cache_subsystem_NrHwPrefetchers = 4;
			// removed localparam type sv2v_uu_i_cache_subsystem_hwpf_base_set_i
			localparam [3:0] sv2v_uu_i_cache_subsystem_ext_hwpf_base_set_i_0 = 1'sb0;
			// removed localparam type sv2v_uu_i_cache_subsystem_hwpf_base_i
			localparam [255:0] sv2v_uu_i_cache_subsystem_ext_hwpf_base_i_0 = 1'sb0;
			// removed localparam type sv2v_uu_i_cache_subsystem_hwpf_param_set_i
			localparam [3:0] sv2v_uu_i_cache_subsystem_ext_hwpf_param_set_i_0 = 1'sb0;
			// removed localparam type sv2v_uu_i_cache_subsystem_hwpf_param_i
			localparam [255:0] sv2v_uu_i_cache_subsystem_ext_hwpf_param_i_0 = 1'sb0;
			// removed localparam type sv2v_uu_i_cache_subsystem_hwpf_throttle_set_i
			localparam [3:0] sv2v_uu_i_cache_subsystem_ext_hwpf_throttle_set_i_0 = 1'sb0;
			// removed localparam type sv2v_uu_i_cache_subsystem_hwpf_throttle_i
			localparam [255:0] sv2v_uu_i_cache_subsystem_ext_hwpf_throttle_i_0 = 1'sb0;
			cva6_hpdcache_subsystem_964A5_2044D #(
				.axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth(axi_ar_chan_t_ariane_axi_AddrWidth),
				.axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth(axi_ar_chan_t_ariane_axi_IdWidth),
				.axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth(axi_ar_chan_t_ariane_axi_UserWidth),
				.axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth(axi_aw_chan_t_ariane_axi_AddrWidth),
				.axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth(axi_aw_chan_t_ariane_axi_IdWidth),
				.axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth(axi_aw_chan_t_ariane_axi_UserWidth),
				.axi_b_chan_t_CVA6Cfg(CVA6Cfg),
				.axi_b_chan_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
				.axi_r_chan_t_CVA6Cfg(CVA6Cfg),
				.axi_r_chan_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
				.axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth(axi_w_chan_t_ariane_axi_DataWidth),
				.axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth(axi_w_chan_t_ariane_axi_StrbWidth),
				.axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth(axi_w_chan_t_ariane_axi_UserWidth),
				.dcache_req_i_t_CVA6Cfg(CVA6Cfg),
				.dcache_req_o_t_CVA6Cfg(CVA6Cfg),
				.icache_areq_t_CVA6Cfg(CVA6Cfg),
				.icache_arsp_t_CVA6Cfg(CVA6Cfg),
				.icache_dreq_t_CVA6Cfg(CVA6Cfg),
				.icache_drsp_t_CVA6Cfg(CVA6Cfg),
				.icache_req_t_CVA6Cfg(CVA6Cfg),
				.icache_rtrn_t_CVA6Cfg(CVA6Cfg),
				.noc_req_t_noc_req_t_ariane_axi_AddrWidth(noc_req_t_ariane_axi_AddrWidth),
				.noc_req_t_noc_req_t_ariane_axi_DataWidth(noc_req_t_ariane_axi_DataWidth),
				.noc_req_t_noc_req_t_ariane_axi_IdWidth(noc_req_t_ariane_axi_IdWidth),
				.noc_req_t_noc_req_t_ariane_axi_StrbWidth(noc_req_t_ariane_axi_StrbWidth),
				.noc_req_t_noc_req_t_ariane_axi_UserWidth(noc_req_t_ariane_axi_UserWidth),
				.noc_resp_t_noc_resp_t_ariane_axi_DataWidth(noc_resp_t_ariane_axi_DataWidth),
				.noc_resp_t_noc_resp_t_ariane_axi_IdWidth(noc_resp_t_ariane_axi_IdWidth),
				.noc_resp_t_noc_resp_t_ariane_axi_UserWidth(noc_resp_t_ariane_axi_UserWidth),
				.CVA6Cfg(CVA6Cfg),
				.NumPorts(NumPorts)
			) i_cache_subsystem(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.icache_en_i(icache_en_csr),
				.icache_flush_i(icache_flush_ctrl_cache),
				.icache_miss_o(icache_miss_cache_perf),
				.icache_areq_i(icache_areq_ex_cache),
				.icache_areq_o(icache_areq_cache_ex),
				.icache_dreq_i(icache_dreq_if_cache),
				.icache_dreq_o(icache_dreq_cache_if),
				.dcache_enable_i(dcache_en_csr_nbdcache),
				.dcache_flush_i(dcache_flush_ctrl_cache),
				.dcache_flush_ack_o(dcache_flush_ack_cache_ctrl),
				.dcache_miss_o(dcache_miss_cache_perf),
				.dcache_amo_req_i(amo_req),
				.dcache_amo_resp_o(amo_resp),
				.dcache_cmo_req_i(sv2v_uu_i_cache_subsystem_ext_dcache_cmo_req_i_0),
				.dcache_cmo_resp_o(),
				.dcache_req_ports_i(dcache_req_to_cache),
				.dcache_req_ports_o(dcache_req_from_cache),
				.wbuffer_empty_o(dcache_commit_wbuffer_empty),
				.wbuffer_not_ni_o(dcache_commit_wbuffer_not_ni),
				.hwpf_base_set_i(sv2v_uu_i_cache_subsystem_ext_hwpf_base_set_i_0),
				.hwpf_base_i(sv2v_uu_i_cache_subsystem_ext_hwpf_base_i_0),
				.hwpf_base_o(),
				.hwpf_param_set_i(sv2v_uu_i_cache_subsystem_ext_hwpf_param_set_i_0),
				.hwpf_param_i(sv2v_uu_i_cache_subsystem_ext_hwpf_param_i_0),
				.hwpf_param_o(),
				.hwpf_throttle_set_i(sv2v_uu_i_cache_subsystem_ext_hwpf_throttle_set_i_0),
				.hwpf_throttle_i(sv2v_uu_i_cache_subsystem_ext_hwpf_throttle_i_0),
				.hwpf_throttle_o(),
				.hwpf_status_o(),
				.noc_req_o(noc_req_o),
				.noc_resp_i(noc_resp_i)
			);
			// Trace: core/cva6.sv:1389:5
			assign inval_ready = 1'b1;
		end
		else begin : gen_cache_wb
			// Trace: core/cva6.sv:1391:5
			std_cache_subsystem_F6C4A_02A13 #(
				.axi_ar_chan_t_axi_ar_chan_t_ariane_axi_AddrWidth(axi_ar_chan_t_ariane_axi_AddrWidth),
				.axi_ar_chan_t_axi_ar_chan_t_ariane_axi_IdWidth(axi_ar_chan_t_ariane_axi_IdWidth),
				.axi_ar_chan_t_axi_ar_chan_t_ariane_axi_UserWidth(axi_ar_chan_t_ariane_axi_UserWidth),
				.axi_aw_chan_t_axi_aw_chan_t_ariane_axi_AddrWidth(axi_aw_chan_t_ariane_axi_AddrWidth),
				.axi_aw_chan_t_axi_aw_chan_t_ariane_axi_IdWidth(axi_aw_chan_t_ariane_axi_IdWidth),
				.axi_aw_chan_t_axi_aw_chan_t_ariane_axi_UserWidth(axi_aw_chan_t_ariane_axi_UserWidth),
				.axi_req_t_noc_req_t_ariane_axi_AddrWidth(noc_req_t_ariane_axi_AddrWidth),
				.axi_req_t_noc_req_t_ariane_axi_DataWidth(noc_req_t_ariane_axi_DataWidth),
				.axi_req_t_noc_req_t_ariane_axi_IdWidth(noc_req_t_ariane_axi_IdWidth),
				.axi_req_t_noc_req_t_ariane_axi_StrbWidth(noc_req_t_ariane_axi_StrbWidth),
				.axi_req_t_noc_req_t_ariane_axi_UserWidth(noc_req_t_ariane_axi_UserWidth),
				.axi_rsp_t_noc_resp_t_ariane_axi_DataWidth(noc_resp_t_ariane_axi_DataWidth),
				.axi_rsp_t_noc_resp_t_ariane_axi_IdWidth(noc_resp_t_ariane_axi_IdWidth),
				.axi_rsp_t_noc_resp_t_ariane_axi_UserWidth(noc_resp_t_ariane_axi_UserWidth),
				.axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth(axi_w_chan_t_ariane_axi_DataWidth),
				.axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth(axi_w_chan_t_ariane_axi_StrbWidth),
				.axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth(axi_w_chan_t_ariane_axi_UserWidth),
				.dcache_req_i_t_CVA6Cfg(CVA6Cfg),
				.dcache_req_o_t_CVA6Cfg(CVA6Cfg),
				.icache_areq_t_CVA6Cfg(CVA6Cfg),
				.icache_arsp_t_CVA6Cfg(CVA6Cfg),
				.icache_dreq_t_CVA6Cfg(CVA6Cfg),
				.icache_drsp_t_CVA6Cfg(CVA6Cfg),
				.icache_req_t_CVA6Cfg(CVA6Cfg),
				.icache_rtrn_t_CVA6Cfg(CVA6Cfg),
				.CVA6Cfg(CVA6Cfg),
				.NumPorts(NumPorts)
			) i_cache_subsystem(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.priv_lvl_i(priv_lvl),
				.icache_en_i(icache_en_csr),
				.icache_flush_i(icache_flush_ctrl_cache),
				.icache_miss_o(icache_miss_cache_perf),
				.icache_areq_i(icache_areq_ex_cache),
				.icache_areq_o(icache_areq_cache_ex),
				.icache_dreq_i(icache_dreq_if_cache),
				.icache_dreq_o(icache_dreq_cache_if),
				.dcache_enable_i(dcache_en_csr_nbdcache),
				.dcache_flush_i(dcache_flush_ctrl_cache),
				.dcache_flush_ack_o(dcache_flush_ack_cache_ctrl),
				.amo_req_i(amo_req),
				.amo_resp_o(amo_resp),
				.dcache_miss_o(dcache_miss_cache_perf),
				.wbuffer_empty_o(dcache_commit_wbuffer_empty),
				.dcache_req_ports_i(dcache_req_to_cache),
				.dcache_req_ports_o(dcache_req_from_cache),
				.axi_req_o(noc_req_o),
				.axi_resp_i(noc_resp_i)
			);
			// Trace: core/cva6.sv:1440:5
			assign dcache_commit_wbuffer_not_ni = 1'b1;
			// Trace: core/cva6.sv:1441:5
			assign inval_ready = 1'b1;
		end
	endgenerate
	// Trace: core/cva6.sv:1448:3
	generate
		if (CVA6Cfg[16369]) begin : gen_accelerator
			// Trace: core/cva6.sv:1449:5
			acc_dispatcher_BA9A3_5F027 #(
				.acc_req_t_cvxif_req_t_CVA6Cfg(cvxif_req_t_CVA6Cfg),
				.acc_resp_t_cvxif_resp_t_CVA6Cfg(cvxif_resp_t_CVA6Cfg),
				.dcache_req_i_t_CVA6Cfg(CVA6Cfg),
				.dcache_req_o_t_CVA6Cfg(CVA6Cfg),
				.exception_t_CVA6Cfg(CVA6Cfg),
				.fu_data_t_CVA6Cfg(CVA6Cfg),
				.scoreboard_entry_t_CVA6Cfg(CVA6Cfg),
				.CVA6Cfg(CVA6Cfg),
				.AccCfg(AccCfg)
			) i_acc_dispatcher(
				.clk_i(clk_i),
				.rst_ni(rst_ni),
				.flush_unissued_instr_i(flush_unissued_instr_ctrl_id),
				.flush_ex_i(flush_ctrl_ex),
				.flush_pipeline_o(flush_acc),
				.single_step_o(single_step_acc_commit),
				.acc_cons_en_i(acc_cons_en_csr),
				.acc_fflags_valid_o(acc_resp_fflags_valid),
				.acc_fflags_o(acc_resp_fflags),
				.ld_st_priv_lvl_i(ld_st_priv_lvl_csr_ex),
				.sum_i(sum_csr_ex),
				.pmpcfg_i(pmpcfg),
				.pmpaddr_i(pmpaddr),
				.fcsr_frm_i(frm_csr_id_issue_ex),
				.dirty_v_state_o(dirty_v_state),
				.issue_instr_i(issue_instr_id_acc),
				.issue_instr_hs_i(issue_instr_hs_id_acc),
				.issue_stall_o(stall_acc_id),
				.fu_data_i(fu_data_id_ex[0+:(((12 + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[17102-:32]) + CVA6Cfg[16503-:32]]),
				.commit_instr_i(commit_instr_id_commit),
				.commit_st_barrier_i(fence_i_commit_controller | fence_commit_controller),
				.acc_trans_id_o(acc_trans_id_ex_id),
				.acc_result_o(acc_result_ex_id),
				.acc_valid_o(acc_valid_ex_id),
				.acc_exception_o(acc_exception_ex_id),
				.acc_valid_ex_o(acc_valid_acc_ex),
				.commit_ack_i(commit_ack),
				.acc_stall_st_pending_o(stall_st_pending_ex),
				.acc_no_st_pending_i(no_st_pending_commit),
				.dcache_req_ports_i(dcache_req_ports_ex_cache),
				.ctrl_halt_o(halt_acc_ctrl),
				.csr_addr_i(csr_addr_ex_csr),
				.acc_dcache_req_ports_o(dcache_req_ports_acc_cache),
				.acc_dcache_req_ports_i(dcache_req_ports_cache_acc),
				.inval_ready_i(inval_ready),
				.inval_valid_o(inval_valid),
				.inval_addr_o(inval_addr),
				.acc_req_o(cvxif_req_o),
				.acc_resp_i(cvxif_resp_i)
			);
		end
		else begin : gen_no_accelerator
			// Trace: core/cva6.sv:1503:5
			assign acc_trans_id_ex_id = 1'sb0;
			// Trace: core/cva6.sv:1504:5
			assign acc_result_ex_id = 1'sb0;
			// Trace: core/cva6.sv:1505:5
			assign acc_valid_ex_id = 1'sb0;
			// Trace: core/cva6.sv:1506:5
			assign acc_exception_ex_id = 1'sb0;
			// Trace: core/cva6.sv:1507:5
			assign acc_resp_fflags = 1'sb0;
			// Trace: core/cva6.sv:1508:5
			assign acc_resp_fflags_valid = 1'sb0;
			// Trace: core/cva6.sv:1509:5
			assign stall_acc_id = 1'sb0;
			// Trace: core/cva6.sv:1510:5
			assign dirty_v_state = 1'sb0;
			// Trace: core/cva6.sv:1511:5
			assign acc_valid_acc_ex = 1'sb0;
			// Trace: core/cva6.sv:1512:5
			assign halt_acc_ctrl = 1'sb0;
			// Trace: core/cva6.sv:1513:5
			assign stall_st_pending_ex = 1'sb0;
			// Trace: core/cva6.sv:1514:5
			assign flush_acc = 1'sb0;
			// Trace: core/cva6.sv:1515:5
			assign single_step_acc_commit = 1'sb0;
			// Trace: core/cva6.sv:1518:5
			assign dcache_req_ports_acc_cache = 1'sb0;
			// Trace: core/cva6.sv:1521:5
			assign inval_valid = 1'sb0;
			// Trace: core/cva6.sv:1522:5
			assign inval_addr = 1'sb0;
			// Trace: core/cva6.sv:1525:5
			assign cvxif_req_o = cvxif_req;
		end
	endgenerate
	// Trace: core/cva6.sv:1533:3
	task automatic config_pkg_check_cfg;
		// Trace: core/include/config_pkg.sv:359:37
		input reg [17102:0] Cfg;
		;
	endtask
	initial begin
		// Trace: core/cva6.sv:1533:11
		config_pkg_check_cfg(CVA6Cfg);
	end
	// Trace: core/cva6.sv:1589:3
	instr_tracer_B752E_D8FD3 #(
		.bp_resolve_t_CVA6Cfg(CVA6Cfg),
		.bp_resolve_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.exception_t_CVA6Cfg(CVA6Cfg),
		.exception_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.interrupts_t_CVA6Cfg(CVA6Cfg),
		.interrupts_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.scoreboard_entry_t_CVA6Cfg(CVA6Cfg),
		.scoreboard_entry_t_config_pkg_NrMaxRules(config_pkg_NrMaxRules),
		.CVA6Cfg(CVA6Cfg),
		.INTERRUPTS(INTERRUPTS)
	) instr_tracer_i(
		.pck(clk_i),
		.rstn(rst_ni),
		.flush_unissued(flush_unissued_instr_ctrl_id),
		.flush_all(flush_ctrl_ex),
		.instruction(id_stage_i.fetch_entry_i[0].instruction),
		.fetch_valid(id_stage_i.fetch_entry_valid_i[0]),
		.fetch_ack(id_stage_i.fetch_entry_ready_o[0]),
		.issue_ack(issue_stage_i.i_scoreboard.issue_ack_i),
		.issue_sbe(issue_stage_i.i_scoreboard.issue_instr_o),
		.waddr(waddr_commit_id),
		.wdata(wdata_commit_id),
		.we_gpr(we_gpr_commit_id),
		.we_fpr(we_fpr_commit_id),
		.commit_instr(commit_instr_id_commit),
		.commit_ack(commit_ack),
		.st_valid(ex_stage_i.lsu_i.i_store_unit.store_buffer_i.valid_i),
		.st_paddr(ex_stage_i.lsu_i.i_store_unit.store_buffer_i.paddr_i),
		.ld_valid(ex_stage_i.lsu_i.i_load_unit.req_port_o.tag_valid),
		.ld_kill(ex_stage_i.lsu_i.i_load_unit.req_port_o.kill_req),
		.ld_paddr(ex_stage_i.lsu_i.i_load_unit.paddr_i),
		.resolve_branch(resolved_branch),
		.commit_exception(commit_stage_i.exception_o),
		.priv_lvl(priv_lvl),
		.debug_mode(debug_mode),
		.hart_id_i(hart_id_i)
	);
	// Trace: core/cva6.sv:1684:3
	wire [(CVA6Cfg[16841-:32] * 32) - 1:0] rvfi_fetch_instr;
	// Trace: core/cva6.sv:1685:3
	genvar _gv_i_28;
	generate
		for (_gv_i_28 = 0; _gv_i_28 < CVA6Cfg[16841-:32]; _gv_i_28 = _gv_i_28 + 1) begin : genblk6
			localparam i = _gv_i_28;
			// Trace: core/cva6.sv:1686:5
			assign rvfi_fetch_instr[i * 32+:32] = fetch_entry_if_id[(i * (((CVA6Cfg[17070-:32] + 32) + (3 + CVA6Cfg[17070-:32])) + ((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)))) + (32 + ((3 + CVA6Cfg[17070-:32]) + (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)) - 1)))-:((32 + ((3 + CVA6Cfg[17070-:32]) + (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)) - 1))) >= ((3 + CVA6Cfg[17070-:32]) + (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)) + 0)) ? ((32 + ((3 + CVA6Cfg[17070-:32]) + (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)) - 1))) - ((3 + CVA6Cfg[17070-:32]) + (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)) + 0))) + 1 : (((3 + CVA6Cfg[17070-:32]) + (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)) + 0)) - (32 + ((3 + CVA6Cfg[17070-:32]) + (((((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33) >= 0 ? ((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 34 : 1 - (((CVA6Cfg[17102-:32] + CVA6Cfg[17102-:32]) + CVA6Cfg[17006-:32]) + 33)) - 1)))) + 1)];
		end
	endgenerate
	// Trace: core/cva6.sv:1689:3
	cva6_rvfi_probes_5C276_3A398 #(
		.exception_t_CVA6Cfg(CVA6Cfg),
		.lsu_ctrl_t_CVA6Cfg(CVA6Cfg),
		.scoreboard_entry_t_CVA6Cfg(CVA6Cfg),
		.CVA6Cfg(CVA6Cfg)
	) i_cva6_rvfi_probes(
		.flush_i(flush_ctrl_if),
		.issue_instr_ack_i(issue_instr_issue_id),
		.fetch_entry_valid_i(fetch_valid_if_id),
		.instruction_i(rvfi_fetch_instr),
		.is_compressed_i(rvfi_is_compressed),
		.issue_pointer_i(rvfi_issue_pointer),
		.commit_pointer_i(rvfi_commit_pointer),
		.flush_unissued_instr_i(flush_unissued_instr_ctrl_id),
		.decoded_instr_valid_i(issue_entry_valid_id_issue),
		.decoded_instr_ack_i(issue_instr_issue_id),
		.rs1_forwarding_i(rs1_forwarding_id_ex),
		.rs2_forwarding_i(rs2_forwarding_id_ex),
		.commit_instr_i(commit_instr_id_commit),
		.commit_drop_i(commit_drop_id_commit),
		.ex_commit_i(ex_commit),
		.priv_lvl_i(priv_lvl),
		.lsu_ctrl_i(rvfi_lsu_ctrl),
		.wbdata_i(wbdata_ex_id),
		.commit_ack_i(commit_macro_ack),
		.mem_paddr_i(rvfi_mem_paddr),
		.debug_mode_i(debug_mode),
		.wdata_i(wdata_commit_id),
		.csr_i(rvfi_csr),
		.rvfi_probes_o(rvfi_probes_o)
	);
	// Trace: core/cva6.sv:1734:3
	initial _sv2v_0 = 0;
endmodule
