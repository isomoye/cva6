module axi_multicut (
	clk_i,
	rst_ni,
	slv_req_i,
	slv_resp_o,
	mst_req_o,
	mst_resp_i
);
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:22:13
	parameter [31:0] NoCuts = 32'd1;
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:24:18
	// removed localparam type aw_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:25:19
	// removed localparam type w_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:26:19
	// removed localparam type b_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:27:18
	// removed localparam type ar_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:28:19
	// removed localparam type r_chan_t
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:30:22
	// removed localparam type req_t
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:31:21
	// removed localparam type resp_t
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:33:3
	input wire clk_i;
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:34:3
	input wire rst_ni;
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:36:3
	input wire slv_req_i;
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:37:3
	output wire slv_resp_o;
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:39:3
	output wire mst_req_o;
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:40:3
	input wire mst_resp_i;
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:43:3
	generate
		if (NoCuts == {32 {1'sb0}}) begin : gen_no_cut
			// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:45:5
			assign mst_req_o = slv_req_i;
			// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:46:5
			assign slv_resp_o = mst_resp_i;
		end
		else begin : gen_axi_cut
			// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:49:5
			wire [NoCuts:0] cut_req;
			// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:50:5
			wire [NoCuts:0] cut_resp;
			// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:53:5
			assign cut_req[0] = slv_req_i;
			// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:54:5
			assign slv_resp_o = cut_resp[0];
			genvar _gv_i_6;
			for (_gv_i_6 = 0; _gv_i_6 < NoCuts; _gv_i_6 = _gv_i_6 + 1) begin : gen_axi_cuts
				localparam i = _gv_i_6;
				// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:58:7
				axi_cut_883B1 #(.Bypass(1'b0)) i_cut(
					.clk_i(clk_i),
					.rst_ni(rst_ni),
					.slv_req_i(cut_req[i]),
					.slv_resp_o(cut_resp[i]),
					.mst_req_o(cut_req[i + 1]),
					.mst_resp_i(cut_resp[i + 1])
				);
			end
			// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:78:5
			assign mst_req_o = cut_req[NoCuts];
			// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:79:5
			assign cut_resp[NoCuts] = mst_resp_i;
		end
	endgenerate
	// Trace: vendor/pulp-platform/axi/src/axi_multicut.sv:85:3
endmodule
// removed module with interface ports: axi_multicut_intf
// removed module with interface ports: axi_lite_multicut_intf
