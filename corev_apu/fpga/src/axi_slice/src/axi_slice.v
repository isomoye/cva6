module axi_slice (
	clk_i,
	rst_ni,
	test_en_i,
	axi_slave_aw_valid_i,
	axi_slave_aw_addr_i,
	axi_slave_aw_prot_i,
	axi_slave_aw_region_i,
	axi_slave_aw_len_i,
	axi_slave_aw_size_i,
	axi_slave_aw_burst_i,
	axi_slave_aw_lock_i,
	axi_slave_aw_cache_i,
	axi_slave_aw_qos_i,
	axi_slave_aw_id_i,
	axi_slave_aw_user_i,
	axi_slave_aw_ready_o,
	axi_slave_ar_valid_i,
	axi_slave_ar_addr_i,
	axi_slave_ar_prot_i,
	axi_slave_ar_region_i,
	axi_slave_ar_len_i,
	axi_slave_ar_size_i,
	axi_slave_ar_burst_i,
	axi_slave_ar_lock_i,
	axi_slave_ar_cache_i,
	axi_slave_ar_qos_i,
	axi_slave_ar_id_i,
	axi_slave_ar_user_i,
	axi_slave_ar_ready_o,
	axi_slave_w_valid_i,
	axi_slave_w_data_i,
	axi_slave_w_strb_i,
	axi_slave_w_user_i,
	axi_slave_w_last_i,
	axi_slave_w_ready_o,
	axi_slave_r_valid_o,
	axi_slave_r_data_o,
	axi_slave_r_resp_o,
	axi_slave_r_last_o,
	axi_slave_r_id_o,
	axi_slave_r_user_o,
	axi_slave_r_ready_i,
	axi_slave_b_valid_o,
	axi_slave_b_resp_o,
	axi_slave_b_id_o,
	axi_slave_b_user_o,
	axi_slave_b_ready_i,
	axi_master_aw_valid_o,
	axi_master_aw_addr_o,
	axi_master_aw_prot_o,
	axi_master_aw_region_o,
	axi_master_aw_len_o,
	axi_master_aw_size_o,
	axi_master_aw_burst_o,
	axi_master_aw_lock_o,
	axi_master_aw_cache_o,
	axi_master_aw_qos_o,
	axi_master_aw_id_o,
	axi_master_aw_user_o,
	axi_master_aw_ready_i,
	axi_master_ar_valid_o,
	axi_master_ar_addr_o,
	axi_master_ar_prot_o,
	axi_master_ar_region_o,
	axi_master_ar_len_o,
	axi_master_ar_size_o,
	axi_master_ar_burst_o,
	axi_master_ar_lock_o,
	axi_master_ar_cache_o,
	axi_master_ar_qos_o,
	axi_master_ar_id_o,
	axi_master_ar_user_o,
	axi_master_ar_ready_i,
	axi_master_w_valid_o,
	axi_master_w_data_o,
	axi_master_w_strb_o,
	axi_master_w_user_o,
	axi_master_w_last_o,
	axi_master_w_ready_i,
	axi_master_r_valid_i,
	axi_master_r_data_i,
	axi_master_r_resp_i,
	axi_master_r_last_i,
	axi_master_r_id_i,
	axi_master_r_user_i,
	axi_master_r_ready_o,
	axi_master_b_valid_i,
	axi_master_b_resp_i,
	axi_master_b_id_i,
	axi_master_b_user_i,
	axi_master_b_ready_o
);
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:15:15
	parameter AXI_ADDR_WIDTH = 32;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:16:15
	parameter AXI_DATA_WIDTH = 64;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:17:15
	parameter AXI_USER_WIDTH = 6;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:18:15
	parameter AXI_ID_WIDTH = 3;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:19:15
	parameter SLICE_DEPTH = 2;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:20:15
	parameter AXI_STRB_WIDTH = AXI_DATA_WIDTH / 8;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:23:5
	input wire clk_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:24:5
	input wire rst_ni;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:25:5
	input wire test_en_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:30:5
	input wire axi_slave_aw_valid_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:31:5
	input wire [AXI_ADDR_WIDTH - 1:0] axi_slave_aw_addr_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:32:5
	input wire [2:0] axi_slave_aw_prot_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:33:5
	input wire [3:0] axi_slave_aw_region_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:34:5
	input wire [7:0] axi_slave_aw_len_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:35:5
	input wire [2:0] axi_slave_aw_size_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:36:5
	input wire [1:0] axi_slave_aw_burst_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:37:5
	input wire axi_slave_aw_lock_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:38:5
	input wire [3:0] axi_slave_aw_cache_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:39:5
	input wire [3:0] axi_slave_aw_qos_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:40:5
	input wire [AXI_ID_WIDTH - 1:0] axi_slave_aw_id_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:41:5
	input wire [AXI_USER_WIDTH - 1:0] axi_slave_aw_user_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:42:5
	output wire axi_slave_aw_ready_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:45:5
	input wire axi_slave_ar_valid_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:46:5
	input wire [AXI_ADDR_WIDTH - 1:0] axi_slave_ar_addr_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:47:5
	input wire [2:0] axi_slave_ar_prot_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:48:5
	input wire [3:0] axi_slave_ar_region_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:49:5
	input wire [7:0] axi_slave_ar_len_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:50:5
	input wire [2:0] axi_slave_ar_size_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:51:5
	input wire [1:0] axi_slave_ar_burst_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:52:5
	input wire axi_slave_ar_lock_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:53:5
	input wire [3:0] axi_slave_ar_cache_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:54:5
	input wire [3:0] axi_slave_ar_qos_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:55:5
	input wire [AXI_ID_WIDTH - 1:0] axi_slave_ar_id_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:56:5
	input wire [AXI_USER_WIDTH - 1:0] axi_slave_ar_user_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:57:5
	output wire axi_slave_ar_ready_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:60:5
	input wire axi_slave_w_valid_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:61:5
	input wire [AXI_DATA_WIDTH - 1:0] axi_slave_w_data_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:62:5
	input wire [AXI_STRB_WIDTH - 1:0] axi_slave_w_strb_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:63:5
	input wire [AXI_USER_WIDTH - 1:0] axi_slave_w_user_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:64:5
	input wire axi_slave_w_last_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:65:5
	output wire axi_slave_w_ready_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:68:5
	output wire axi_slave_r_valid_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:69:5
	output wire [AXI_DATA_WIDTH - 1:0] axi_slave_r_data_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:70:5
	output wire [1:0] axi_slave_r_resp_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:71:5
	output wire axi_slave_r_last_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:72:5
	output wire [AXI_ID_WIDTH - 1:0] axi_slave_r_id_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:73:5
	output wire [AXI_USER_WIDTH - 1:0] axi_slave_r_user_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:74:5
	input wire axi_slave_r_ready_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:77:5
	output wire axi_slave_b_valid_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:78:5
	output wire [1:0] axi_slave_b_resp_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:79:5
	output wire [AXI_ID_WIDTH - 1:0] axi_slave_b_id_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:80:5
	output wire [AXI_USER_WIDTH - 1:0] axi_slave_b_user_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:81:5
	input wire axi_slave_b_ready_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:86:5
	output wire axi_master_aw_valid_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:87:5
	output wire [AXI_ADDR_WIDTH - 1:0] axi_master_aw_addr_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:88:5
	output wire [2:0] axi_master_aw_prot_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:89:5
	output wire [3:0] axi_master_aw_region_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:90:5
	output wire [7:0] axi_master_aw_len_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:91:5
	output wire [2:0] axi_master_aw_size_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:92:5
	output wire [1:0] axi_master_aw_burst_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:93:5
	output wire axi_master_aw_lock_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:94:5
	output wire [3:0] axi_master_aw_cache_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:95:5
	output wire [3:0] axi_master_aw_qos_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:96:5
	output wire [AXI_ID_WIDTH - 1:0] axi_master_aw_id_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:97:5
	output wire [AXI_USER_WIDTH - 1:0] axi_master_aw_user_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:98:5
	input wire axi_master_aw_ready_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:101:5
	output wire axi_master_ar_valid_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:102:5
	output wire [AXI_ADDR_WIDTH - 1:0] axi_master_ar_addr_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:103:5
	output wire [2:0] axi_master_ar_prot_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:104:5
	output wire [3:0] axi_master_ar_region_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:105:5
	output wire [7:0] axi_master_ar_len_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:106:5
	output wire [2:0] axi_master_ar_size_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:107:5
	output wire [1:0] axi_master_ar_burst_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:108:5
	output wire axi_master_ar_lock_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:109:5
	output wire [3:0] axi_master_ar_cache_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:110:5
	output wire [3:0] axi_master_ar_qos_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:111:5
	output wire [AXI_ID_WIDTH - 1:0] axi_master_ar_id_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:112:5
	output wire [AXI_USER_WIDTH - 1:0] axi_master_ar_user_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:113:5
	input wire axi_master_ar_ready_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:116:5
	output wire axi_master_w_valid_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:117:5
	output wire [AXI_DATA_WIDTH - 1:0] axi_master_w_data_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:118:5
	output wire [AXI_STRB_WIDTH - 1:0] axi_master_w_strb_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:119:5
	output wire [AXI_USER_WIDTH - 1:0] axi_master_w_user_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:120:5
	output wire axi_master_w_last_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:121:5
	input wire axi_master_w_ready_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:124:5
	input wire axi_master_r_valid_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:125:5
	input wire [AXI_DATA_WIDTH - 1:0] axi_master_r_data_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:126:5
	input wire [1:0] axi_master_r_resp_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:127:5
	input wire axi_master_r_last_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:128:5
	input wire [AXI_ID_WIDTH - 1:0] axi_master_r_id_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:129:5
	input wire [AXI_USER_WIDTH - 1:0] axi_master_r_user_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:130:5
	output wire axi_master_r_ready_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:133:5
	input wire axi_master_b_valid_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:134:5
	input wire [1:0] axi_master_b_resp_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:135:5
	input wire [AXI_ID_WIDTH - 1:0] axi_master_b_id_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:136:5
	input wire [AXI_USER_WIDTH - 1:0] axi_master_b_user_i;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:137:5
	output wire axi_master_b_ready_o;
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:141:4
	axi_aw_buffer #(
		.ID_WIDTH(AXI_ID_WIDTH),
		.ADDR_WIDTH(AXI_ADDR_WIDTH),
		.USER_WIDTH(AXI_USER_WIDTH),
		.BUFFER_DEPTH(SLICE_DEPTH)
	) aw_buffer_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.test_en_i(test_en_i),
		.slave_valid_i(axi_slave_aw_valid_i),
		.slave_addr_i(axi_slave_aw_addr_i),
		.slave_prot_i(axi_slave_aw_prot_i),
		.slave_region_i(axi_slave_aw_region_i),
		.slave_len_i(axi_slave_aw_len_i),
		.slave_size_i(axi_slave_aw_size_i),
		.slave_burst_i(axi_slave_aw_burst_i),
		.slave_lock_i(axi_slave_aw_lock_i),
		.slave_cache_i(axi_slave_aw_cache_i),
		.slave_qos_i(axi_slave_aw_qos_i),
		.slave_id_i(axi_slave_aw_id_i),
		.slave_user_i(axi_slave_aw_user_i),
		.slave_ready_o(axi_slave_aw_ready_o),
		.master_valid_o(axi_master_aw_valid_o),
		.master_addr_o(axi_master_aw_addr_o),
		.master_prot_o(axi_master_aw_prot_o),
		.master_region_o(axi_master_aw_region_o),
		.master_len_o(axi_master_aw_len_o),
		.master_size_o(axi_master_aw_size_o),
		.master_burst_o(axi_master_aw_burst_o),
		.master_lock_o(axi_master_aw_lock_o),
		.master_cache_o(axi_master_aw_cache_o),
		.master_qos_o(axi_master_aw_qos_o),
		.master_id_o(axi_master_aw_id_o),
		.master_user_o(axi_master_aw_user_o),
		.master_ready_i(axi_master_aw_ready_i)
	);
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:184:4
	axi_ar_buffer #(
		.ID_WIDTH(AXI_ID_WIDTH),
		.ADDR_WIDTH(AXI_ADDR_WIDTH),
		.USER_WIDTH(AXI_USER_WIDTH),
		.BUFFER_DEPTH(SLICE_DEPTH)
	) ar_buffer_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.test_en_i(test_en_i),
		.slave_valid_i(axi_slave_ar_valid_i),
		.slave_addr_i(axi_slave_ar_addr_i),
		.slave_prot_i(axi_slave_ar_prot_i),
		.slave_region_i(axi_slave_ar_region_i),
		.slave_len_i(axi_slave_ar_len_i),
		.slave_size_i(axi_slave_ar_size_i),
		.slave_burst_i(axi_slave_ar_burst_i),
		.slave_lock_i(axi_slave_ar_lock_i),
		.slave_cache_i(axi_slave_ar_cache_i),
		.slave_qos_i(axi_slave_ar_qos_i),
		.slave_id_i(axi_slave_ar_id_i),
		.slave_user_i(axi_slave_ar_user_i),
		.slave_ready_o(axi_slave_ar_ready_o),
		.master_valid_o(axi_master_ar_valid_o),
		.master_addr_o(axi_master_ar_addr_o),
		.master_prot_o(axi_master_ar_prot_o),
		.master_region_o(axi_master_ar_region_o),
		.master_len_o(axi_master_ar_len_o),
		.master_size_o(axi_master_ar_size_o),
		.master_burst_o(axi_master_ar_burst_o),
		.master_lock_o(axi_master_ar_lock_o),
		.master_cache_o(axi_master_ar_cache_o),
		.master_qos_o(axi_master_ar_qos_o),
		.master_id_o(axi_master_ar_id_o),
		.master_user_o(axi_master_ar_user_o),
		.master_ready_i(axi_master_ar_ready_i)
	);
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:227:4
	axi_w_buffer #(
		.DATA_WIDTH(AXI_DATA_WIDTH),
		.USER_WIDTH(AXI_USER_WIDTH),
		.BUFFER_DEPTH(SLICE_DEPTH)
	) w_buffer_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.test_en_i(test_en_i),
		.slave_valid_i(axi_slave_w_valid_i),
		.slave_data_i(axi_slave_w_data_i),
		.slave_strb_i(axi_slave_w_strb_i),
		.slave_user_i(axi_slave_w_user_i),
		.slave_last_i(axi_slave_w_last_i),
		.slave_ready_o(axi_slave_w_ready_o),
		.master_valid_o(axi_master_w_valid_o),
		.master_data_o(axi_master_w_data_o),
		.master_strb_o(axi_master_w_strb_o),
		.master_user_o(axi_master_w_user_o),
		.master_last_o(axi_master_w_last_o),
		.master_ready_i(axi_master_w_ready_i)
	);
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:255:4
	axi_r_buffer #(
		.ID_WIDTH(AXI_ID_WIDTH),
		.DATA_WIDTH(AXI_DATA_WIDTH),
		.USER_WIDTH(AXI_USER_WIDTH),
		.BUFFER_DEPTH(SLICE_DEPTH)
	) r_buffer_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.test_en_i(test_en_i),
		.slave_valid_i(axi_master_r_valid_i),
		.slave_data_i(axi_master_r_data_i),
		.slave_resp_i(axi_master_r_resp_i),
		.slave_user_i(axi_master_r_user_i),
		.slave_id_i(axi_master_r_id_i),
		.slave_last_i(axi_master_r_last_i),
		.slave_ready_o(axi_master_r_ready_o),
		.master_valid_o(axi_slave_r_valid_o),
		.master_data_o(axi_slave_r_data_o),
		.master_resp_o(axi_slave_r_resp_o),
		.master_user_o(axi_slave_r_user_o),
		.master_id_o(axi_slave_r_id_o),
		.master_last_o(axi_slave_r_last_o),
		.master_ready_i(axi_slave_r_ready_i)
	);
	// Trace: corev_apu/fpga/src/axi_slice/src/axi_slice.sv:286:4
	axi_b_buffer #(
		.ID_WIDTH(AXI_ID_WIDTH),
		.USER_WIDTH(AXI_USER_WIDTH),
		.BUFFER_DEPTH(SLICE_DEPTH)
	) b_buffer_i(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.test_en_i(test_en_i),
		.slave_valid_i(axi_master_b_valid_i),
		.slave_resp_i(axi_master_b_resp_i),
		.slave_id_i(axi_master_b_id_i),
		.slave_user_i(axi_master_b_user_i),
		.slave_ready_o(axi_master_b_ready_o),
		.master_valid_o(axi_slave_b_valid_o),
		.master_resp_o(axi_slave_b_resp_o),
		.master_id_o(axi_slave_b_id_o),
		.master_user_o(axi_slave_b_user_o),
		.master_ready_i(axi_slave_b_ready_i)
	);
endmodule
