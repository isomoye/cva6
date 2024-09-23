module instr_decoder_B6FAE_B0A02 (
	clk_i,
	rst_ni,
	issue_valid_i,
	issue_req_i,
	issue_ready_o,
	issue_resp_o,
	register_valid_i,
	register_i,
	registers_o,
	opcode_o,
	hartid_o,
	id_o,
	rd_o
);
	// removed localparam type hartid_t_hartid_t_CVA6Cfg_type
	parameter [17102:0] hartid_t_hartid_t_CVA6Cfg = 0;
	// removed localparam type id_t_id_t_CVA6Cfg_type
	parameter [17102:0] id_t_id_t_CVA6Cfg = 0;
	// removed localparam type registers_t_NrRgprPorts_type
	// removed localparam type registers_t_XLEN_type
	parameter [31:0] registers_t_NrRgprPorts = 0;
	parameter [31:0] registers_t_XLEN = 0;
	// removed localparam type x_issue_req_t_x_issue_req_t_CVA6Cfg_type
	parameter [17102:0] x_issue_req_t_x_issue_req_t_CVA6Cfg = 0;
	// removed localparam type x_issue_resp_t_x_issue_resp_t_CVA6Cfg_type
	parameter [17102:0] x_issue_resp_t_x_issue_resp_t_CVA6Cfg = 0;
	// removed localparam type x_register_t_x_register_t_CVA6Cfg_type
	parameter [17102:0] x_register_t_x_register_t_CVA6Cfg = 0;
	reg _sv2v_0;
	// Trace: core/cvxif_example/instr_decoder.sv:11:34
	// removed localparam type copro_issue_resp_t
	// Trace: core/cvxif_example/instr_decoder.sv:12:34
	// removed localparam type opcode_t
	// Trace: core/cvxif_example/instr_decoder.sv:13:15
	parameter signed [31:0] NbInstr = 1;
	// Trace: core/cvxif_example/instr_decoder.sv:14:15
	parameter [(NbInstr * 73) - 1:0] CoproInstr = 'd0;
	// Trace: core/cvxif_example/instr_decoder.sv:15:15
	parameter [31:0] NrRgprPorts = 2;
	// Trace: core/cvxif_example/instr_decoder.sv:16:34
	// removed localparam type hartid_t
	// Trace: core/cvxif_example/instr_decoder.sv:17:34
	// removed localparam type id_t
	// Trace: core/cvxif_example/instr_decoder.sv:18:34
	// removed localparam type x_issue_req_t
	// Trace: core/cvxif_example/instr_decoder.sv:19:34
	// removed localparam type x_issue_resp_t
	// Trace: core/cvxif_example/instr_decoder.sv:20:34
	// removed localparam type x_register_t
	// Trace: core/cvxif_example/instr_decoder.sv:21:34
	// removed localparam type registers_t
	// Trace: core/cvxif_example/instr_decoder.sv:23:5
	input wire clk_i;
	// Trace: core/cvxif_example/instr_decoder.sv:24:5
	input wire rst_ni;
	// Trace: core/cvxif_example/instr_decoder.sv:25:5
	input wire issue_valid_i;
	// Trace: core/cvxif_example/instr_decoder.sv:26:5
	input wire [((32 + x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32]) + x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32]) - 1:0] issue_req_i;
	// Trace: core/cvxif_example/instr_decoder.sv:27:5
	output reg issue_ready_o;
	// Trace: core/cvxif_example/instr_decoder.sv:28:5
	output reg [((1 + (x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32])) + (x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32])) - 1:0] issue_resp_o;
	// Trace: core/cvxif_example/instr_decoder.sv:29:5
	input wire register_valid_i;
	// Trace: core/cvxif_example/instr_decoder.sv:30:5
	input wire [(((x_register_t_x_register_t_CVA6Cfg[127-:32] + x_register_t_x_register_t_CVA6Cfg[255-:32]) + (x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_CVA6Cfg[223-:32])) + (x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_CVA6Cfg[95-:32])) - 1:0] register_i;
	// Trace: core/cvxif_example/instr_decoder.sv:31:5
	output reg [(registers_t_NrRgprPorts * registers_t_XLEN) - 1:0] registers_o;
	// Trace: core/cvxif_example/instr_decoder.sv:32:5
	output reg [3:0] opcode_o;
	// Trace: core/cvxif_example/instr_decoder.sv:33:5
	output reg [hartid_t_hartid_t_CVA6Cfg[127-:32] - 1:0] hartid_o;
	// Trace: core/cvxif_example/instr_decoder.sv:34:5
	output reg [id_t_id_t_CVA6Cfg[255-:32] - 1:0] id_o;
	// Trace: core/cvxif_example/instr_decoder.sv:35:5
	output reg [4:0] rd_o;
	// Trace: core/cvxif_example/instr_decoder.sv:38:3
	wire [NbInstr - 1:0] sel;
	// Trace: core/cvxif_example/instr_decoder.sv:39:3
	reg rs1_ready;
	// Trace: core/cvxif_example/instr_decoder.sv:40:3
	reg rs2_ready;
	// Trace: core/cvxif_example/instr_decoder.sv:41:3
	reg rs3_ready;
	// Trace: core/cvxif_example/instr_decoder.sv:43:3
	genvar _gv_i_25;
	generate
		for (_gv_i_25 = 0; _gv_i_25 < NbInstr; _gv_i_25 = _gv_i_25 + 1) begin : gen_predecoder_selector
			localparam i = _gv_i_25;
			// Trace: core/cvxif_example/instr_decoder.sv:44:5
			assign sel[i] = (CoproInstr[(((NbInstr - 1) - i) * 73) + 40-:32] & issue_req_i[32 + (x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1))-:((32 + (x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1))) >= (x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0)) ? ((32 + (x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1))) - (x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0))) + 1 : ((x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0)) - (32 + (x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)))) + 1)]) == CoproInstr[(((NbInstr - 1) - i) * 73) + 72-:32];
		end
	endgenerate
	// Trace: core/cvxif_example/instr_decoder.sv:47:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvxif_example/instr_decoder.sv:48:5
		rs1_ready = 1'sb0;
		// Trace: core/cvxif_example/instr_decoder.sv:49:5
		rs2_ready = 1'sb0;
		// Trace: core/cvxif_example/instr_decoder.sv:50:5
		rs3_ready = 1'sb0;
		// Trace: core/cvxif_example/instr_decoder.sv:51:5
		issue_ready_o = 1'sb0;
		// Trace: core/cvxif_example/instr_decoder.sv:52:5
		issue_resp_o[1 + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32]) + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1))] = 1'sb0;
		// Trace: core/cvxif_example/instr_decoder.sv:53:5
		issue_resp_o[(x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32]) + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1)-:(((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32]) + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1)) >= ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) + 0) ? (((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32]) + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1)) - ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) + 0)) + 1 : (((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) + 0) - ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32]) + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1))) + 1)] = 1'sb0;
		// Trace: core/cvxif_example/instr_decoder.sv:54:5
		issue_resp_o[(x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1-:x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]] = 1'sb0;
		// Trace: core/cvxif_example/instr_decoder.sv:55:5
		registers_o = 1'sb0;
		// Trace: core/cvxif_example/instr_decoder.sv:56:5
		opcode_o = 4'd0;
		// Trace: core/cvxif_example/instr_decoder.sv:57:5
		hartid_o = 1'sb0;
		// Trace: core/cvxif_example/instr_decoder.sv:58:5
		id_o = 1'sb0;
		// Trace: core/cvxif_example/instr_decoder.sv:59:5
		rd_o = 1'sb0;
		// Trace: core/cvxif_example/instr_decoder.sv:60:5
		begin : sv2v_autoblock_1
			// Trace: core/cvxif_example/instr_decoder.sv:60:10
			reg [31:0] i;
			// Trace: core/cvxif_example/instr_decoder.sv:60:10
			for (i = 0; i < NbInstr; i = i + 1)
				begin
					// Trace: core/cvxif_example/instr_decoder.sv:61:7
					if (sel[i] && issue_valid_i) begin
						// Trace: core/cvxif_example/instr_decoder.sv:62:9
						issue_resp_o[1 + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32]) + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1))] = CoproInstr[(((NbInstr - 1) - i) * 73) + 8];
						// Trace: core/cvxif_example/instr_decoder.sv:63:9
						issue_resp_o[(x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32]) + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1)-:(((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32]) + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1)) >= ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) + 0) ? (((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32]) + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1)) - ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) + 0)) + 1 : (((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) + 0) - ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32]) + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1))) + 1)] = CoproInstr[(((NbInstr - 1) - i) * 73) + 7];
						// Trace: core/cvxif_example/instr_decoder.sv:64:9
						issue_resp_o[(x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1-:x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]] = CoproInstr[(((NbInstr - 1) - i) * 73) + 6-:3];
						// Trace: core/cvxif_example/instr_decoder.sv:65:9
						if (issue_resp_o[1 + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] >= 0 ? x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32] + 1 : 1 - x_issue_resp_t_x_issue_resp_t_CVA6Cfg[63-:32]) + ((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1))]) begin
							// Trace: core/cvxif_example/instr_decoder.sv:66:11
							rs1_ready = ~CoproInstr[(((NbInstr - 1) - i) * 73) + 4] || register_i[((x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1) - ((x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1)];
							// Trace: core/cvxif_example/instr_decoder.sv:67:11
							rs2_ready = ~CoproInstr[(((NbInstr - 1) - i) * 73) + 5] || register_i[((x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1) - ((x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_CVA6Cfg[95-:32]) - 2)];
							// Trace: core/cvxif_example/instr_decoder.sv:68:11
							rs3_ready = (NrRgprPorts == 3 ? ~CoproInstr[(((NbInstr - 1) - i) * 73) + 6] || register_i[((x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1) - ((x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_CVA6Cfg[95-:32]) - 3)] : 1'b1);
							// Trace: core/cvxif_example/instr_decoder.sv:69:11
							issue_ready_o = (rs1_ready && rs2_ready) && rs3_ready;
						end
						// Trace: core/cvxif_example/instr_decoder.sv:71:9
						opcode_o = CoproInstr[(((NbInstr - 1) - i) * 73) + 3-:4];
						// Trace: core/cvxif_example/instr_decoder.sv:72:9
						id_o = issue_req_i[x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1-:x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32]];
						// Trace: core/cvxif_example/instr_decoder.sv:73:9
						hartid_o = issue_req_i[x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)-:((x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)) >= (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0) ? ((x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1)) - (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0)) + 1 : ((x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] + 0) - (x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1))) + 1)];
						// Trace: core/cvxif_example/instr_decoder.sv:74:9
						rd_o = issue_req_i[(32 + (x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1))) - 20:(32 + (x_issue_req_t_x_issue_req_t_CVA6Cfg[127-:32] + (x_issue_req_t_x_issue_req_t_CVA6Cfg[255-:32] - 1))) - 24];
						begin : sv2v_autoblock_2
							// Trace: core/cvxif_example/instr_decoder.sv:75:14
							reg [31:0] j;
							// Trace: core/cvxif_example/instr_decoder.sv:75:14
							for (j = 0; j < NrRgprPorts; j = j + 1)
								begin
									// Trace: core/cvxif_example/instr_decoder.sv:76:11
									registers_o[j * registers_t_XLEN+:registers_t_XLEN] = (issue_resp_o[((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1) - (((x_issue_resp_t_x_issue_resp_t_CVA6Cfg[287-:32] + x_issue_resp_t_x_issue_resp_t_CVA6Cfg[95-:32]) - 1) - j)] ? register_i[((x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_CVA6Cfg[223-:32]) + ((x_register_t_x_register_t_CVA6Cfg[287-:32] + x_register_t_x_register_t_CVA6Cfg[95-:32]) - 1)) - (((x_register_t_x_register_t_CVA6Cfg[287-:32] * x_register_t_x_register_t_CVA6Cfg[223-:32]) - 1) - (j * x_register_t_x_register_t_CVA6Cfg[223-:32]))+:x_register_t_x_register_t_CVA6Cfg[223-:32]] : {registers_t_XLEN {1'sb0}});
								end
						end
					end
				end
		end
		if (issue_valid_i && ~(|sel))
			// Trace: core/cvxif_example/instr_decoder.sv:82:7
			issue_ready_o = 1'b1;
	end
	// Trace: core/cvxif_example/instr_decoder.sv:86:3
	// removed an assertion item
	// assert property (@(posedge clk_i) 
	// 	$onehot0(sel)
	// ) else begin
	// 	// Trace: core/cvxif_example/instr_decoder.sv:87:8
	// 	$warning("This offloaded instruction is valid for multiple coprocessor instructions !");
	// end
	initial _sv2v_0 = 0;
endmodule
