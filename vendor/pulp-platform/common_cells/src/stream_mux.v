module stream_mux_351CF_60955 (
	inp_data_i,
	inp_valid_i,
	inp_ready_o,
	inp_sel_i,
	oup_data_o,
	oup_valid_o,
	oup_ready_i
);
	// removed localparam type DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth_type
	// removed localparam type DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth_type
	// removed localparam type DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth_type
	parameter signed [31:0] DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth = 0;
	parameter signed [31:0] DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth = 0;
	parameter signed [31:0] DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth = 0;
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:15:18
	// removed localparam type DATA_T
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:16:13
	parameter integer N_INP = 0;
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:18:13
	parameter integer LOG_N_INP = $clog2(N_INP);
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:20:3
	input wire [(N_INP * (((DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth + DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth) + 1) + DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth)) - 1:0] inp_data_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:21:3
	input wire [N_INP - 1:0] inp_valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:22:3
	output reg [N_INP - 1:0] inp_ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:24:3
	input wire [LOG_N_INP - 1:0] inp_sel_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:26:3
	output wire [(((DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth + DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth) + 1) + DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth) - 1:0] oup_data_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:27:3
	output wire oup_valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:28:3
	input wire oup_ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:31:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:32:5
		inp_ready_o = 1'sb0;
		// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:33:5
		inp_ready_o[inp_sel_i] = oup_ready_i;
	end
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:35:3
	assign oup_data_o = inp_data_i[inp_sel_i * (((DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth + DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth) + 1) + DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth)+:((DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_DataWidth + DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_StrbWidth) + 1) + DATA_T_axi_w_chan_t_axi_w_chan_t_ariane_axi_UserWidth];
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:36:3
	assign oup_valid_o = inp_valid_i[inp_sel_i];
	// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:40:3
	initial begin : p_assertions
		// Trace: vendor/pulp-platform/common_cells/src/stream_mux.sv:41:5
	end
	initial _sv2v_0 = 0;
endmodule
