module serdiv (
	clk_i,
	rst_ni,
	id_i,
	op_a_i,
	op_b_i,
	opcode_i,
	in_vld_i,
	in_rdy_o,
	flush_i,
	out_vld_o,
	out_rdy_i,
	id_o,
	res_o
);
	reg _sv2v_0;
	// removed import ariane_pkg::*;
	// Trace: core/serdiv.sv:21:15
	localparam config_pkg_NrMaxRules = 16;
	// removed localparam type config_pkg_cache_type_t
	// removed localparam type config_pkg_noc_type_e
	// removed localparam type config_pkg_vm_mode_t
	// removed localparam type config_pkg_cva6_cfg_t
	localparam [17102:0] config_pkg_cva6_cfg_empty = 17103'd0;
	parameter [17102:0] CVA6Cfg = config_pkg_cva6_cfg_empty;
	// Trace: core/serdiv.sv:22:15
	parameter WIDTH = 64;
	// Trace: core/serdiv.sv:23:15
	parameter STABLE_HANDSHAKE = 0;
	// Trace: core/serdiv.sv:26:5
	input wire clk_i;
	// Trace: core/serdiv.sv:28:5
	input wire rst_ni;
	// Trace: core/serdiv.sv:30:5
	input wire [CVA6Cfg[16503-:32] - 1:0] id_i;
	// Trace: core/serdiv.sv:32:5
	input wire [WIDTH - 1:0] op_a_i;
	// Trace: core/serdiv.sv:34:5
	input wire [WIDTH - 1:0] op_b_i;
	// Trace: core/serdiv.sv:36:5
	input wire [1:0] opcode_i;
	// Trace: core/serdiv.sv:38:5
	input wire in_vld_i;
	// Trace: core/serdiv.sv:40:5
	output reg in_rdy_o;
	// Trace: core/serdiv.sv:42:5
	input wire flush_i;
	// Trace: core/serdiv.sv:44:5
	output reg out_vld_o;
	// Trace: core/serdiv.sv:46:5
	input wire out_rdy_i;
	// Trace: core/serdiv.sv:48:5
	output wire [CVA6Cfg[16503-:32] - 1:0] id_o;
	// Trace: core/serdiv.sv:50:5
	output wire [WIDTH - 1:0] res_o;
	// Trace: core/serdiv.sv:57:3
	reg [1:0] state_d;
	reg [1:0] state_q;
	// Trace: core/serdiv.sv:64:3
	reg [WIDTH - 1:0] res_q;
	wire [WIDTH - 1:0] res_d;
	// Trace: core/serdiv.sv:65:3
	reg [WIDTH - 1:0] op_a_q;
	wire [WIDTH - 1:0] op_a_d;
	// Trace: core/serdiv.sv:66:3
	reg [WIDTH - 1:0] op_b_q;
	wire [WIDTH - 1:0] op_b_d;
	// Trace: core/serdiv.sv:67:3
	wire op_a_sign;
	wire op_b_sign;
	// Trace: core/serdiv.sv:68:3
	wire op_b_zero;
	reg op_b_zero_q;
	wire op_b_zero_d;
	// Trace: core/serdiv.sv:69:3
	wire op_b_neg_one;
	reg op_b_neg_one_q;
	wire op_b_neg_one_d;
	// Trace: core/serdiv.sv:71:3
	reg [CVA6Cfg[16503-:32] - 1:0] id_q;
	wire [CVA6Cfg[16503-:32] - 1:0] id_d;
	// Trace: core/serdiv.sv:73:3
	wire rem_sel_d;
	reg rem_sel_q;
	// Trace: core/serdiv.sv:74:3
	wire comp_inv_d;
	reg comp_inv_q;
	// Trace: core/serdiv.sv:75:3
	wire res_inv_d;
	reg res_inv_q;
	// Trace: core/serdiv.sv:77:3
	wire [WIDTH - 1:0] add_mux;
	// Trace: core/serdiv.sv:78:3
	wire [WIDTH - 1:0] add_out;
	// Trace: core/serdiv.sv:79:3
	wire [WIDTH - 1:0] add_tmp;
	// Trace: core/serdiv.sv:80:3
	wire [WIDTH - 1:0] b_mux;
	// Trace: core/serdiv.sv:81:3
	wire [WIDTH - 1:0] out_mux;
	// Trace: core/serdiv.sv:83:3
	reg [$clog2(WIDTH) - 1:0] cnt_q;
	wire [$clog2(WIDTH) - 1:0] cnt_d;
	// Trace: core/serdiv.sv:84:3
	wire cnt_zero;
	// Trace: core/serdiv.sv:86:3
	wire [WIDTH - 1:0] lzc_a_input;
	wire [WIDTH - 1:0] lzc_b_input;
	wire [WIDTH - 1:0] op_b;
	// Trace: core/serdiv.sv:87:3
	wire [$clog2(WIDTH) - 1:0] lzc_a_result;
	wire [$clog2(WIDTH) - 1:0] lzc_b_result;
	// Trace: core/serdiv.sv:88:3
	wire [$clog2(WIDTH + 1) - 1:0] shift_a;
	// Trace: core/serdiv.sv:89:3
	wire [$clog2(WIDTH + 1):0] div_shift;
	// Trace: core/serdiv.sv:91:3
	reg a_reg_en;
	reg b_reg_en;
	reg res_reg_en;
	wire ab_comp;
	wire pm_sel;
	reg load_en;
	// Trace: core/serdiv.sv:92:3
	wire lzc_a_no_one;
	wire lzc_b_no_one;
	// Trace: core/serdiv.sv:93:3
	wire div_res_zero_d;
	reg div_res_zero_q;
	// Trace: core/serdiv.sv:101:3
	assign op_a_sign = op_a_i[WIDTH - 1];
	// Trace: core/serdiv.sv:102:3
	assign op_b_sign = op_b_i[WIDTH - 1];
	// Trace: core/serdiv.sv:103:3
	assign op_b_zero = lzc_b_no_one & ~op_b_sign;
	// Trace: core/serdiv.sv:104:3
	assign op_b_neg_one = lzc_b_no_one & op_b_sign;
	// Trace: core/serdiv.sv:106:3
	assign lzc_a_input = (opcode_i[0] & op_a_sign ? {~op_a_i[WIDTH - 2:0], 1'b1} : op_a_i);
	// Trace: core/serdiv.sv:107:3
	assign lzc_b_input = (opcode_i[0] & op_b_sign ? ~op_b_i : op_b_i);
	// Trace: core/serdiv.sv:109:3
	lzc #(
		.MODE(1),
		.WIDTH(WIDTH)
	) i_lzc_a(
		.in_i(lzc_a_input),
		.cnt_o(lzc_a_result),
		.empty_o(lzc_a_no_one)
	);
	// Trace: core/serdiv.sv:118:3
	lzc #(
		.MODE(1),
		.WIDTH(WIDTH)
	) i_lzc_b(
		.in_i(lzc_b_input),
		.cnt_o(lzc_b_result),
		.empty_o(lzc_b_no_one)
	);
	// Trace: core/serdiv.sv:127:3
	assign shift_a = (lzc_a_no_one ? WIDTH : {1'b0, lzc_a_result});
	// Trace: core/serdiv.sv:128:3
	assign div_shift = {1'b0, lzc_b_result} - shift_a;
	// Trace: core/serdiv.sv:130:3
	assign op_b = op_b_i <<< div_shift;
	// Trace: core/serdiv.sv:133:3
	assign div_res_zero_d = (load_en ? div_shift[($clog2(WIDTH + 1) >= 0 ? $clog2(WIDTH + 1) : 0)] : div_res_zero_q);
	// Trace: core/serdiv.sv:139:3
	assign pm_sel = load_en & ~(opcode_i[0] & (op_a_sign ^ op_b_sign));
	// Trace: core/serdiv.sv:142:3
	assign add_mux = (load_en ? op_a_i : op_b_q);
	// Trace: core/serdiv.sv:145:3
	assign b_mux = (load_en ? op_b : {comp_inv_q, op_b_q[WIDTH - 1:1]});
	// Trace: core/serdiv.sv:148:3
	assign out_mux = (rem_sel_q ? (op_b_neg_one_q ? {WIDTH {1'sb0}} : op_a_q) : (op_b_zero_q ? {WIDTH {1'sb1}} : (op_b_neg_one_q ? op_a_q : res_q)));
	// Trace: core/serdiv.sv:151:3
	assign res_o = (res_inv_q ? -$signed(out_mux) : out_mux);
	// Trace: core/serdiv.sv:154:3
	assign ab_comp = ((op_a_q == op_b_q) | ((op_a_q > op_b_q) ^ comp_inv_q)) & (|op_a_q | op_b_zero_q);
	// Trace: core/serdiv.sv:157:3
	assign add_tmp = (load_en ? 0 : op_a_q);
	// Trace: core/serdiv.sv:158:3
	assign add_out = (pm_sel ? add_tmp + add_mux : add_tmp - $signed(add_mux));
	// Trace: core/serdiv.sv:164:3
	assign cnt_zero = cnt_q == 0;
	// Trace: core/serdiv.sv:165:3
	assign cnt_d = (load_en ? div_shift[$clog2(WIDTH) - 1:0] : (~cnt_zero ? cnt_q - 1 : cnt_q));
	// Trace: core/serdiv.sv:167:3
	always @(*) begin : p_fsm
		if (_sv2v_0)
			;
		// Trace: core/serdiv.sv:169:5
		state_d = state_q;
		// Trace: core/serdiv.sv:170:5
		in_rdy_o = 1'b0;
		// Trace: core/serdiv.sv:171:5
		out_vld_o = 1'b0;
		// Trace: core/serdiv.sv:172:5
		load_en = 1'b0;
		// Trace: core/serdiv.sv:173:5
		a_reg_en = 1'b0;
		// Trace: core/serdiv.sv:174:5
		b_reg_en = 1'b0;
		// Trace: core/serdiv.sv:175:5
		res_reg_en = 1'b0;
		// Trace: core/serdiv.sv:177:5
		(* full_case, parallel_case *)
		case (state_q)
			2'd0: begin
				// Trace: core/serdiv.sv:179:9
				in_rdy_o = 1'b1;
				// Trace: core/serdiv.sv:181:9
				if (in_vld_i) begin
					// Trace: core/serdiv.sv:184:11
					in_rdy_o = (STABLE_HANDSHAKE ? 1'b1 : 1'b0);
					// Trace: core/serdiv.sv:185:11
					a_reg_en = 1'b1;
					// Trace: core/serdiv.sv:186:11
					b_reg_en = 1'b1;
					// Trace: core/serdiv.sv:187:11
					load_en = 1'b1;
					// Trace: core/serdiv.sv:188:11
					state_d = 2'd1;
				end
			end
			2'd1: begin
				// Trace: core/serdiv.sv:192:9
				if (~((div_res_zero_q | op_b_zero_q) | op_b_neg_one_q)) begin
					// Trace: core/serdiv.sv:193:11
					a_reg_en = ab_comp;
					// Trace: core/serdiv.sv:194:11
					b_reg_en = 1'b1;
					// Trace: core/serdiv.sv:195:11
					res_reg_en = 1'b1;
				end
				if ((div_res_zero_q | op_b_zero_q) | op_b_neg_one_q) begin
					// Trace: core/serdiv.sv:199:11
					out_vld_o = 1'b1;
					// Trace: core/serdiv.sv:200:11
					state_d = 2'd2;
					// Trace: core/serdiv.sv:201:11
					if (out_rdy_i)
						// Trace: core/serdiv.sv:203:13
						state_d = 2'd0;
				end
				else if (cnt_zero)
					// Trace: core/serdiv.sv:206:11
					state_d = 2'd2;
			end
			2'd2: begin
				// Trace: core/serdiv.sv:210:9
				out_vld_o = 1'b1;
				// Trace: core/serdiv.sv:212:9
				if (out_rdy_i)
					// Trace: core/serdiv.sv:214:11
					state_d = 2'd0;
			end
			default:
				// Trace: core/serdiv.sv:217:16
				state_d = 2'd0;
		endcase
		if (flush_i) begin
			// Trace: core/serdiv.sv:221:7
			in_rdy_o = 1'b0;
			// Trace: core/serdiv.sv:222:7
			out_vld_o = 1'b0;
			// Trace: core/serdiv.sv:223:7
			a_reg_en = 1'b0;
			// Trace: core/serdiv.sv:224:7
			b_reg_en = 1'b0;
			// Trace: core/serdiv.sv:225:7
			load_en = 1'b0;
			// Trace: core/serdiv.sv:226:7
			state_d = 2'd0;
		end
	end
	// Trace: core/serdiv.sv:235:3
	assign rem_sel_d = (load_en ? opcode_i[1] : rem_sel_q);
	// Trace: core/serdiv.sv:236:3
	assign comp_inv_d = (load_en ? opcode_i[0] & op_b_sign : comp_inv_q);
	// Trace: core/serdiv.sv:237:3
	assign op_b_zero_d = (load_en ? op_b_zero : op_b_zero_q);
	// Trace: core/serdiv.sv:238:3
	assign op_b_neg_one_d = (load_en ? op_b_neg_one : op_b_neg_one_q);
	// Trace: core/serdiv.sv:239:3
	assign res_inv_d = (load_en ? ((~op_b_zero | opcode_i[1]) & opcode_i[0]) & ((op_a_sign ^ op_b_sign) ^ op_b_neg_one) : res_inv_q);
	// Trace: core/serdiv.sv:242:3
	assign id_d = (load_en ? id_i : id_q);
	// Trace: core/serdiv.sv:243:3
	assign id_o = id_q;
	// Trace: core/serdiv.sv:245:3
	assign op_a_d = (a_reg_en ? add_out : op_a_q);
	// Trace: core/serdiv.sv:246:3
	assign op_b_d = (b_reg_en ? b_mux : op_b_q);
	// Trace: core/serdiv.sv:247:3
	assign res_d = (load_en ? {WIDTH {1'sb0}} : (res_reg_en ? {res_q[WIDTH - 2:0], ab_comp} : res_q));
	// Trace: core/serdiv.sv:249:3
	always @(posedge clk_i or negedge rst_ni) begin : p_regs
		// Trace: core/serdiv.sv:250:5
		if (~rst_ni) begin
			// Trace: core/serdiv.sv:251:7
			state_q <= 2'd0;
			// Trace: core/serdiv.sv:252:7
			op_a_q <= 1'sb0;
			// Trace: core/serdiv.sv:253:7
			op_b_q <= 1'sb0;
			// Trace: core/serdiv.sv:254:7
			res_q <= 1'sb0;
			// Trace: core/serdiv.sv:255:7
			cnt_q <= 1'sb0;
			// Trace: core/serdiv.sv:256:7
			id_q <= 1'sb0;
			// Trace: core/serdiv.sv:257:7
			rem_sel_q <= 1'b0;
			// Trace: core/serdiv.sv:258:7
			comp_inv_q <= 1'b0;
			// Trace: core/serdiv.sv:259:7
			res_inv_q <= 1'b0;
			// Trace: core/serdiv.sv:260:7
			op_b_zero_q <= 1'b0;
			// Trace: core/serdiv.sv:261:7
			op_b_neg_one_q <= 1'b0;
			// Trace: core/serdiv.sv:262:7
			div_res_zero_q <= 1'b0;
		end
		else begin
			// Trace: core/serdiv.sv:264:7
			state_q <= state_d;
			// Trace: core/serdiv.sv:265:7
			op_a_q <= op_a_d;
			// Trace: core/serdiv.sv:266:7
			op_b_q <= op_b_d;
			// Trace: core/serdiv.sv:267:7
			res_q <= res_d;
			// Trace: core/serdiv.sv:268:7
			cnt_q <= cnt_d;
			// Trace: core/serdiv.sv:269:7
			id_q <= id_d;
			// Trace: core/serdiv.sv:270:7
			rem_sel_q <= rem_sel_d;
			// Trace: core/serdiv.sv:271:7
			comp_inv_q <= comp_inv_d;
			// Trace: core/serdiv.sv:272:7
			res_inv_q <= res_inv_d;
			// Trace: core/serdiv.sv:273:7
			op_b_zero_q <= op_b_zero_d;
			// Trace: core/serdiv.sv:274:7
			op_b_neg_one_q <= op_b_neg_one_d;
			// Trace: core/serdiv.sv:275:7
			div_res_zero_q <= div_res_zero_d;
		end
	end
	initial _sv2v_0 = 0;
endmodule
