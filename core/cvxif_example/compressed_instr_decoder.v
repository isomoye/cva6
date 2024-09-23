module compressed_instr_decoder_622D4_D5BC8 (
	clk_i,
	rst_ni,
	compressed_valid_i,
	compressed_req_i,
	compressed_ready_o,
	compressed_resp_o
);
	// removed localparam type x_compressed_req_t_x_compressed_req_t_CVA6Cfg_type
	parameter [17102:0] x_compressed_req_t_x_compressed_req_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:11:39
	// removed localparam type copro_compressed_resp_t
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:12:15
	parameter signed [31:0] NbInstr = 1;
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:13:15
	parameter [(NbInstr * 65) - 1:0] CoproInstr = 'd0;
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:14:39
	// removed localparam type x_compressed_req_t
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:15:39
	// removed localparam type x_compressed_resp_t
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:17:5
	input wire clk_i;
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:18:5
	input wire rst_ni;
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:19:5
	input wire compressed_valid_i;
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:20:5
	input wire [(16 + x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32]) - 1:0] compressed_req_i;
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:21:5
	output reg compressed_ready_o;
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:22:5
	output reg [32:0] compressed_resp_o;
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:25:3
	wire [NbInstr - 1:0] sel;
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:27:3
	genvar _gv_i_26;
	generate
		for (_gv_i_26 = 0; _gv_i_26 < NbInstr; _gv_i_26 = _gv_i_26 + 1) begin : gen_predecoder_selector
			localparam i = _gv_i_26;
			// Trace: core/cvxif_example/compressed_instr_decoder.sv:28:5
			assign sel[i] = (CoproInstr[(((NbInstr - 1) - i) * 65) + 48-:16] & compressed_req_i[x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15-:((x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15) >= (x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 0) ? ((x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15) - (x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 0)) + 1 : ((x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 0) - (x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 15)) + 1)]) == CoproInstr[(((NbInstr - 1) - i) * 65) + 64-:16];
		end
	endgenerate
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:31:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvxif_example/compressed_instr_decoder.sv:32:5
		compressed_ready_o = 1'sb1;
		// Trace: core/cvxif_example/compressed_instr_decoder.sv:33:5
		compressed_resp_o[0] = 1'sb0;
		// Trace: core/cvxif_example/compressed_instr_decoder.sv:34:5
		compressed_resp_o[32-:32] = 1'sb0;
		// Trace: core/cvxif_example/compressed_instr_decoder.sv:35:5
		begin : sv2v_autoblock_1
			// Trace: core/cvxif_example/compressed_instr_decoder.sv:35:10
			reg [31:0] i;
			// Trace: core/cvxif_example/compressed_instr_decoder.sv:35:10
			for (i = 0; i < NbInstr; i = i + 1)
				begin
					// Trace: core/cvxif_example/compressed_instr_decoder.sv:36:7
					if (sel[i] && compressed_valid_i) begin
						// Trace: core/cvxif_example/compressed_instr_decoder.sv:37:9
						compressed_resp_o[0] = CoproInstr[(((NbInstr - 1) - i) * 65) + 32];
						// Trace: core/cvxif_example/compressed_instr_decoder.sv:38:9
						compressed_resp_o[32-:32] = CoproInstr[(((NbInstr - 1) - i) * 65) + 31-:32];
						// Trace: core/cvxif_example/compressed_instr_decoder.sv:40:9
						compressed_resp_o[20:16] = compressed_req_i[x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 11:x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 7];
						// Trace: core/cvxif_example/compressed_instr_decoder.sv:41:9
						compressed_resp_o[25:21] = compressed_req_i[x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 6:x_compressed_req_t_x_compressed_req_t_CVA6Cfg[127-:32] + 2];
					end
				end
		end
	end
	// Trace: core/cvxif_example/compressed_instr_decoder.sv:46:3
	// removed an assertion item
	// assert property (@(posedge clk_i) 
	// 	$onehot0(sel)
	// ) else begin
	// 	// Trace: core/cvxif_example/compressed_instr_decoder.sv:47:8
	// 	$warning("This offloaded instruction is valid for multiple coprocessor instructions !");
	// end
	initial _sv2v_0 = 0;
endmodule
