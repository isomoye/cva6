module dm_sba (
	clk_i,
	rst_ni,
	dmactive_i,
	master_req_o,
	master_add_o,
	master_we_o,
	master_wdata_o,
	master_be_o,
	master_gnt_i,
	master_r_valid_i,
	master_r_rdata_i,
	sbaddress_i,
	sbaddress_write_valid_i,
	sbreadonaddr_i,
	sbaddress_o,
	sbautoincrement_i,
	sbaccess_i,
	sbreadondata_i,
	sbdata_i,
	sbdata_read_valid_i,
	sbdata_write_valid_i,
	sbdata_o,
	sbdata_valid_o,
	sbbusy_o,
	sberror_valid_o,
	sberror_o
);
	reg _sv2v_0;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:19:13
	parameter [31:0] BusWidth = 32;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:20:13
	parameter [0:0] ReadByteEnable = 1;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:22:3
	input wire clk_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:23:3
	input wire rst_ni;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:24:3
	input wire dmactive_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:26:3
	output wire master_req_o;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:27:3
	output wire [BusWidth - 1:0] master_add_o;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:28:3
	output wire master_we_o;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:29:3
	output wire [BusWidth - 1:0] master_wdata_o;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:30:3
	output wire [(BusWidth / 8) - 1:0] master_be_o;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:31:3
	input wire master_gnt_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:32:3
	input wire master_r_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:33:3
	input wire [BusWidth - 1:0] master_r_rdata_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:35:3
	input wire [BusWidth - 1:0] sbaddress_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:36:3
	input wire sbaddress_write_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:38:3
	input wire sbreadonaddr_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:39:3
	output reg [BusWidth - 1:0] sbaddress_o;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:40:3
	input wire sbautoincrement_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:41:3
	input wire [2:0] sbaccess_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:43:3
	input wire sbreadondata_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:44:3
	input wire [BusWidth - 1:0] sbdata_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:45:3
	input wire sbdata_read_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:46:3
	input wire sbdata_write_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:48:3
	output wire [BusWidth - 1:0] sbdata_o;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:49:3
	output wire sbdata_valid_o;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:51:3
	output wire sbbusy_o;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:52:3
	output reg sberror_valid_o;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:53:3
	output reg [2:0] sberror_o;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:56:3
	// removed localparam type dm_sba_state_e
	reg [2:0] state_d;
	reg [2:0] state_q;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:58:3
	reg [BusWidth - 1:0] address;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:59:3
	reg req;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:60:3
	wire gnt;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:61:3
	reg we;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:62:3
	reg [(BusWidth / 8) - 1:0] be;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:63:3
	reg [(BusWidth / 8) - 1:0] be_mask;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:64:3
	reg [$clog2(BusWidth / 8) - 1:0] be_idx;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:66:3
	assign sbbusy_o = state_q != 3'd0;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:68:3
	function automatic signed [31:0] sv2v_cast_32_signed;
		input reg signed [31:0] inp;
		sv2v_cast_32_signed = inp;
	endfunction
	always @(*) begin : p_be_mask
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:69:5
		be_mask = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:72:5
		(* full_case, parallel_case *)
		case (sbaccess_i)
			3'b000:
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:74:9
				be_mask[be_idx] = 1'sb1;
			3'b001:
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:77:9
				be_mask[sv2v_cast_32_signed({be_idx[$clog2(BusWidth / 8) - 1:1], 1'b0})+:2] = 1'sb1;
			3'b010:
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:80:9
				if (BusWidth == 32'd64)
					// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:80:33
					be_mask[sv2v_cast_32_signed({be_idx[$clog2(BusWidth / 8) - 1], 2'h0})+:4] = 1'sb1;
				else
					// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:81:33
					be_mask = 1'sb1;
			3'b011:
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:83:15
				be_mask = 1'sb1;
			default:
				;
		endcase
	end
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:88:3
	always @(*) begin : p_fsm
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:89:5
		req = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:90:5
		address = sbaddress_i;
		// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:91:5
		we = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:92:5
		be = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:93:5
		be_idx = sbaddress_i[$clog2(BusWidth / 8) - 1:0];
		// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:95:5
		sberror_o = 1'sb0;
		// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:96:5
		sberror_valid_o = 1'b0;
		// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:97:5
		sbaddress_o = sbaddress_i;
		// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:99:5
		state_d = state_q;
		// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:101:5
		(* full_case, parallel_case *)
		case (state_q)
			3'd0: begin
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:104:9
				if (sbaddress_write_valid_i && sbreadonaddr_i)
					// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:104:57
					state_d = 3'd1;
				if (sbdata_write_valid_i)
					// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:106:35
					state_d = 3'd2;
				if (sbdata_read_valid_i && sbreadondata_i)
					// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:108:52
					state_d = 3'd1;
			end
			3'd1: begin
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:112:9
				req = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:113:9
				if (ReadByteEnable)
					// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:113:29
					be = be_mask;
				if (gnt)
					// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:114:18
					state_d = 3'd3;
			end
			3'd2: begin
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:118:9
				req = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:119:9
				we = 1'b1;
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:120:9
				be = be_mask;
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:121:9
				if (gnt)
					// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:121:18
					state_d = 3'd4;
			end
			3'd3:
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:125:9
				if (sbdata_valid_o) begin
					// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:126:11
					state_d = 3'd0;
					// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:128:11
					if (sbautoincrement_i)
						// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:128:34
						sbaddress_o = sbaddress_i + (32'h00000001 << sbaccess_i);
				end
			3'd4:
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:133:9
				if (sbdata_valid_o) begin
					// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:134:11
					state_d = 3'd0;
					// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:136:11
					if (sbautoincrement_i)
						// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:136:34
						sbaddress_o = sbaddress_i + (32'h00000001 << sbaccess_i);
				end
			default:
				// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:140:16
				state_d = 3'd0;
		endcase
		if ((sbaccess_i > 3) && (state_q != 3'd0)) begin
			// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:145:7
			req = 1'b0;
			// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:146:7
			state_d = 3'd0;
			// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:147:7
			sberror_valid_o = 1'b1;
			// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:148:7
			sberror_o = 3'd3;
		end
	end
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:153:3
	always @(posedge clk_i or negedge rst_ni) begin : p_regs
		// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:154:5
		if (!rst_ni)
			// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:155:7
			state_q <= 3'd0;
		else
			// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:157:7
			state_q <= state_d;
	end
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:161:3
	assign master_req_o = req;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:162:3
	assign master_add_o = address[BusWidth - 1:0];
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:163:3
	assign master_we_o = we;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:164:3
	assign master_wdata_o = sbdata_i[BusWidth - 1:0];
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:165:3
	assign master_be_o = be[(BusWidth / 8) - 1:0];
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:166:3
	assign gnt = master_gnt_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:167:3
	assign sbdata_valid_o = master_r_valid_i;
	// Trace: corev_apu/riscv-dbg/src/dm_sba.sv:168:3
	assign sbdata_o = master_r_rdata_i[BusWidth - 1:0];
	initial _sv2v_0 = 0;
endmodule
