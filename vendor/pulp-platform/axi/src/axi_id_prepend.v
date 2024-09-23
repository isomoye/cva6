module axi_id_prepend_C4E23 (
	pre_id_i,
	slv_aw_chans_i,
	slv_aw_valids_i,
	slv_aw_readies_o,
	slv_w_chans_i,
	slv_w_valids_i,
	slv_w_readies_o,
	slv_b_chans_o,
	slv_b_valids_o,
	slv_b_readies_i,
	slv_ar_chans_i,
	slv_ar_valids_i,
	slv_ar_readies_o,
	slv_r_chans_o,
	slv_r_valids_o,
	slv_r_readies_i,
	mst_aw_chans_o,
	mst_aw_valids_o,
	mst_aw_readies_i,
	mst_w_chans_o,
	mst_w_valids_o,
	mst_w_readies_i,
	mst_b_chans_i,
	mst_b_valids_i,
	mst_b_readies_o,
	mst_ar_chans_o,
	mst_ar_valids_o,
	mst_ar_readies_i,
	mst_r_chans_i,
	mst_r_valids_i,
	mst_r_readies_o
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:19:13
	parameter [31:0] NoBus = 1;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:20:13
	parameter [31:0] AxiIdWidthSlvPort = 4;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:21:13
	parameter [31:0] AxiIdWidthMstPort = 6;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:22:26
	// removed localparam type slv_aw_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:23:26
	// removed localparam type slv_w_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:24:26
	// removed localparam type slv_b_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:25:26
	// removed localparam type slv_ar_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:26:26
	// removed localparam type slv_r_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:27:26
	// removed localparam type mst_aw_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:28:26
	// removed localparam type mst_w_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:29:26
	// removed localparam type mst_b_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:30:26
	// removed localparam type mst_ar_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:31:26
	// removed localparam type mst_r_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:33:13
	parameter [31:0] PreIdWidth = AxiIdWidthMstPort - AxiIdWidthSlvPort;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:35:3
	input wire [PreIdWidth - 1:0] pre_id_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:38:3
	input wire [NoBus - 1:0] slv_aw_chans_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:39:3
	input wire [NoBus - 1:0] slv_aw_valids_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:40:3
	output wire [NoBus - 1:0] slv_aw_readies_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:42:3
	input wire [NoBus - 1:0] slv_w_chans_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:43:3
	input wire [NoBus - 1:0] slv_w_valids_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:44:3
	output wire [NoBus - 1:0] slv_w_readies_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:46:3
	output wire [NoBus - 1:0] slv_b_chans_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:47:3
	output wire [NoBus - 1:0] slv_b_valids_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:48:3
	input wire [NoBus - 1:0] slv_b_readies_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:50:3
	input wire [NoBus - 1:0] slv_ar_chans_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:51:3
	input wire [NoBus - 1:0] slv_ar_valids_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:52:3
	output wire [NoBus - 1:0] slv_ar_readies_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:54:3
	output wire [NoBus - 1:0] slv_r_chans_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:55:3
	output wire [NoBus - 1:0] slv_r_valids_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:56:3
	input wire [NoBus - 1:0] slv_r_readies_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:59:3
	output reg [NoBus - 1:0] mst_aw_chans_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:60:3
	output wire [NoBus - 1:0] mst_aw_valids_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:61:3
	input wire [NoBus - 1:0] mst_aw_readies_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:63:3
	output wire [NoBus - 1:0] mst_w_chans_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:64:3
	output wire [NoBus - 1:0] mst_w_valids_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:65:3
	input wire [NoBus - 1:0] mst_w_readies_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:67:3
	input wire [NoBus - 1:0] mst_b_chans_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:68:3
	input wire [NoBus - 1:0] mst_b_valids_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:69:3
	output wire [NoBus - 1:0] mst_b_readies_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:71:3
	output reg [NoBus - 1:0] mst_ar_chans_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:72:3
	output wire [NoBus - 1:0] mst_ar_valids_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:73:3
	input wire [NoBus - 1:0] mst_ar_readies_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:75:3
	input wire [NoBus - 1:0] mst_r_chans_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:76:3
	input wire [NoBus - 1:0] mst_r_valids_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:77:3
	output wire [NoBus - 1:0] mst_r_readies_o;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:81:3
	genvar _gv_i_7;
	generate
		for (_gv_i_7 = 0; _gv_i_7 < NoBus; _gv_i_7 = _gv_i_7 + 1) begin : gen_id_prepend
			localparam i = _gv_i_7;
			if (PreIdWidth == 0) begin : gen_no_prepend
				// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:83:7
				wire [1:1] sv2v_tmp_8AB88;
				assign sv2v_tmp_8AB88 = slv_aw_chans_i[i];
				always @(*) mst_aw_chans_o[i] = sv2v_tmp_8AB88;
				// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:84:7
				wire [1:1] sv2v_tmp_4F728;
				assign sv2v_tmp_4F728 = slv_ar_chans_i[i];
				always @(*) mst_ar_chans_o[i] = sv2v_tmp_4F728;
			end
			else begin : gen_prepend
				// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:86:7
				always @(*) begin
					if (_sv2v_0)
						;
					// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:87:9
					mst_aw_chans_o[i] = slv_aw_chans_i[i];
					// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:88:9
					mst_ar_chans_o[i] = slv_ar_chans_i[i];
					// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:89:9
					mst_aw_chans_o[i].id = {pre_id_i, slv_aw_chans_i[i].id[AxiIdWidthSlvPort - 1:0]};
					// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:90:9
					mst_ar_chans_o[i].id = {pre_id_i, slv_ar_chans_i[i].id[AxiIdWidthSlvPort - 1:0]};
				end
			end
			// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:95:5
			assign slv_b_chans_o[i] = mst_b_chans_i[i];
			// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:96:5
			assign slv_r_chans_o[i] = mst_r_chans_i[i];
		end
	endgenerate
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:100:3
	assign mst_w_chans_o = slv_w_chans_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:101:3
	assign mst_aw_valids_o = slv_aw_valids_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:102:3
	assign slv_aw_readies_o = mst_aw_readies_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:103:3
	assign mst_w_valids_o = slv_w_valids_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:104:3
	assign slv_w_readies_o = mst_w_readies_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:105:3
	assign slv_b_valids_o = mst_b_valids_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:106:3
	assign mst_b_readies_o = slv_b_readies_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:107:3
	assign mst_ar_valids_o = slv_ar_valids_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:108:3
	assign slv_ar_readies_o = mst_ar_readies_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:109:3
	assign slv_r_valids_o = mst_r_valids_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:110:3
	assign mst_r_readies_o = slv_r_readies_i;
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:114:3
	initial begin : p_assert
		// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:115:5
	end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:123:3
	// removed an assertion item
	// aw_id : assert final (mst_aw_chans_o[0].id[$bits(slv_aw_chans_i[0].id) - 1:0] === slv_aw_chans_i[0].id) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:125:14
	// 	$fatal(1, "Something with the AW channel ID prepending went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:126:3
	// removed an assertion item
	// aw_addr : assert final (mst_aw_chans_o[0].addr === slv_aw_chans_i[0].addr) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:127:12
	// 	$fatal(1, "Something with the AW channel ID prepending went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:128:3
	// removed an assertion item
	// aw_len : assert final (mst_aw_chans_o[0].len === slv_aw_chans_i[0].len) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:129:12
	// 	$fatal(1, "Something with the AW channel ID prepending went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:130:3
	// removed an assertion item
	// aw_size : assert final (mst_aw_chans_o[0].size === slv_aw_chans_i[0].size) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:131:12
	// 	$fatal(1, "Something with the AW channel ID prepending went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:132:3
	// removed an assertion item
	// aw_qos : assert final (mst_aw_chans_o[0].qos === slv_aw_chans_i[0].qos) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:133:12
	// 	$fatal(1, "Something with the AW channel ID prepending went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:135:3
	// removed an assertion item
	// b_id : assert final (mst_b_chans_i[0].id[$bits(slv_b_chans_o[0].id) - 1:0] === slv_b_chans_o[0].id) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:137:14
	// 	$fatal(1, "Something with the B channel ID stripping went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:138:3
	// removed an assertion item
	// b_resp : assert final (mst_b_chans_i[0].resp === slv_b_chans_o[0].resp) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:139:12
	// 	$fatal(1, "Something with the B channel ID stripping went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:141:3
	// removed an assertion item
	// ar_id : assert final (mst_ar_chans_o[0].id[$bits(slv_ar_chans_i[0].id) - 1:0] === slv_ar_chans_i[0].id) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:143:14
	// 	$fatal(1, "Something with the AR channel ID prepending went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:144:3
	// removed an assertion item
	// ar_addr : assert final (mst_ar_chans_o[0].addr === slv_ar_chans_i[0].addr) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:145:12
	// 	$fatal(1, "Something with the AR channel ID prepending went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:146:3
	// removed an assertion item
	// ar_len : assert final (mst_ar_chans_o[0].len === slv_ar_chans_i[0].len) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:147:12
	// 	$fatal(1, "Something with the AR channel ID prepending went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:148:3
	// removed an assertion item
	// ar_size : assert final (mst_ar_chans_o[0].size === slv_ar_chans_i[0].size) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:149:12
	// 	$fatal(1, "Something with the AR channel ID prepending went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:150:3
	// removed an assertion item
	// ar_qos : assert final (mst_ar_chans_o[0].qos === slv_ar_chans_i[0].qos) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:151:12
	// 	$fatal(1, "Something with the AR channel ID prepending went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:153:3
	// removed an assertion item
	// r_id : assert final (mst_r_chans_i[0].id[$bits(slv_r_chans_o[0].id) - 1:0] === slv_r_chans_o[0].id) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:154:12
	// 	$fatal(1, "Something with the R channel ID stripping went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:155:3
	// removed an assertion item
	// r_data : assert final (mst_r_chans_i[0].data === slv_r_chans_o[0].data) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:156:12
	// 	$fatal(1, "Something with the R channel ID stripping went wrong.");
	// end
	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:157:3
	// removed an assertion item
	// r_resp : assert final (mst_r_chans_i[0].resp === slv_r_chans_o[0].resp) else begin
	// 	// Trace: vendor/pulp-platform/axi/src/axi_id_prepend.sv:158:12
	// 	$fatal(1, "Something with the R channel ID stripping went wrong.");
	// end
	initial _sv2v_0 = 0;
endmodule
