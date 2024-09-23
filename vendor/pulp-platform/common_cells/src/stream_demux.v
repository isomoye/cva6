module stream_demux (
	inp_valid_i,
	inp_ready_o,
	oup_sel_i,
	oup_valid_o,
	oup_ready_i
);
	reg _sv2v_0;
	// Trace: vendor/pulp-platform/common_cells/src/stream_demux.sv:17:13
	parameter [31:0] N_OUP = 32'd1;
	// Trace: vendor/pulp-platform/common_cells/src/stream_demux.sv:19:13
	parameter [31:0] LOG_N_OUP = (N_OUP > 32'd1 ? $unsigned($clog2(N_OUP)) : 1'b1);
	// Trace: vendor/pulp-platform/common_cells/src/stream_demux.sv:21:3
	input wire inp_valid_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_demux.sv:22:3
	output wire inp_ready_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_demux.sv:24:3
	input wire [LOG_N_OUP - 1:0] oup_sel_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_demux.sv:26:3
	output reg [N_OUP - 1:0] oup_valid_o;
	// Trace: vendor/pulp-platform/common_cells/src/stream_demux.sv:27:3
	input wire [N_OUP - 1:0] oup_ready_i;
	// Trace: vendor/pulp-platform/common_cells/src/stream_demux.sv:30:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: vendor/pulp-platform/common_cells/src/stream_demux.sv:31:5
		oup_valid_o = 1'sb0;
		// Trace: vendor/pulp-platform/common_cells/src/stream_demux.sv:32:5
		oup_valid_o[oup_sel_i] = inp_valid_i;
	end
	// Trace: vendor/pulp-platform/common_cells/src/stream_demux.sv:34:3
	assign inp_ready_o = oup_ready_i[oup_sel_i];
	initial _sv2v_0 = 0;
endmodule
