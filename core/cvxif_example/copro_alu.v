module copro_alu_4B3DF_8116F (
	clk_i,
	rst_ni,
	registers_i,
	opcode_i,
	hartid_i,
	id_i,
	rd_i,
	result_o,
	hartid_o,
	id_o,
	rd_o,
	valid_o,
	we_o
);
	// removed localparam type hartid_t_hartid_t_CVA6Cfg_type
	parameter [17102:0] hartid_t_hartid_t_CVA6Cfg = 0;
	// removed localparam type id_t_id_t_CVA6Cfg_type
	parameter [17102:0] id_t_id_t_CVA6Cfg = 0;
	// removed localparam type registers_t_NrRgprPorts_type
	// removed localparam type registers_t_XLEN_type
	parameter [31:0] registers_t_NrRgprPorts = 0;
	parameter [31:0] registers_t_XLEN = 0;
	reg _sv2v_0;
	// removed import cvxif_instr_pkg::*;
	// Trace: core/cvxif_example/copro_alu.sv:13:15
	parameter [31:0] NrRgprPorts = 2;
	// Trace: core/cvxif_example/copro_alu.sv:14:15
	parameter [31:0] XLEN = 32;
	// Trace: core/cvxif_example/copro_alu.sv:15:20
	// removed localparam type hartid_t
	// Trace: core/cvxif_example/copro_alu.sv:16:20
	// removed localparam type id_t
	// Trace: core/cvxif_example/copro_alu.sv:17:20
	// removed localparam type registers_t
	// Trace: core/cvxif_example/copro_alu.sv:20:5
	input wire clk_i;
	// Trace: core/cvxif_example/copro_alu.sv:21:5
	input wire rst_ni;
	// Trace: core/cvxif_example/copro_alu.sv:22:5
	input wire [(registers_t_NrRgprPorts * registers_t_XLEN) - 1:0] registers_i;
	// Trace: core/cvxif_example/copro_alu.sv:23:5
	// removed localparam type cvxif_instr_pkg_opcode_t
	input wire [3:0] opcode_i;
	// Trace: core/cvxif_example/copro_alu.sv:24:5
	input wire [hartid_t_hartid_t_CVA6Cfg[127-:32] - 1:0] hartid_i;
	// Trace: core/cvxif_example/copro_alu.sv:25:5
	input wire [id_t_id_t_CVA6Cfg[255-:32] - 1:0] id_i;
	// Trace: core/cvxif_example/copro_alu.sv:26:5
	input wire [4:0] rd_i;
	// Trace: core/cvxif_example/copro_alu.sv:27:5
	output wire [XLEN - 1:0] result_o;
	// Trace: core/cvxif_example/copro_alu.sv:28:5
	output wire [hartid_t_hartid_t_CVA6Cfg[127-:32] - 1:0] hartid_o;
	// Trace: core/cvxif_example/copro_alu.sv:29:5
	output wire [id_t_id_t_CVA6Cfg[255-:32] - 1:0] id_o;
	// Trace: core/cvxif_example/copro_alu.sv:30:5
	output wire [4:0] rd_o;
	// Trace: core/cvxif_example/copro_alu.sv:31:5
	output wire valid_o;
	// Trace: core/cvxif_example/copro_alu.sv:32:5
	output wire we_o;
	// Trace: core/cvxif_example/copro_alu.sv:35:3
	reg [XLEN - 1:0] result_n;
	reg [XLEN - 1:0] result_q;
	// Trace: core/cvxif_example/copro_alu.sv:36:3
	reg [hartid_t_hartid_t_CVA6Cfg[127-:32] - 1:0] hartid_n;
	reg [hartid_t_hartid_t_CVA6Cfg[127-:32] - 1:0] hartid_q;
	// Trace: core/cvxif_example/copro_alu.sv:37:3
	reg [id_t_id_t_CVA6Cfg[255-:32] - 1:0] id_n;
	reg [id_t_id_t_CVA6Cfg[255-:32] - 1:0] id_q;
	// Trace: core/cvxif_example/copro_alu.sv:38:3
	reg valid_n;
	reg valid_q;
	// Trace: core/cvxif_example/copro_alu.sv:39:3
	reg [4:0] rd_n;
	reg [4:0] rd_q;
	// Trace: core/cvxif_example/copro_alu.sv:40:3
	reg we_n;
	reg we_q;
	// Trace: core/cvxif_example/copro_alu.sv:42:3
	assign result_o = result_q;
	// Trace: core/cvxif_example/copro_alu.sv:43:3
	assign hartid_o = hartid_q;
	// Trace: core/cvxif_example/copro_alu.sv:44:3
	assign id_o = id_q;
	// Trace: core/cvxif_example/copro_alu.sv:45:3
	assign valid_o = valid_q;
	// Trace: core/cvxif_example/copro_alu.sv:46:3
	assign rd_o = rd_q;
	// Trace: core/cvxif_example/copro_alu.sv:47:3
	assign we_o = we_q;
	// Trace: core/cvxif_example/copro_alu.sv:49:3
	always @(*) begin
		if (_sv2v_0)
			;
		// Trace: core/cvxif_example/copro_alu.sv:50:5
		case (opcode_i)
			4'b0001: begin
				// Trace: core/cvxif_example/copro_alu.sv:52:9
				result_n = 1'sb0;
				// Trace: core/cvxif_example/copro_alu.sv:53:9
				hartid_n = hartid_i;
				// Trace: core/cvxif_example/copro_alu.sv:54:9
				id_n = id_i;
				// Trace: core/cvxif_example/copro_alu.sv:55:9
				valid_n = 1'b1;
				// Trace: core/cvxif_example/copro_alu.sv:56:9
				rd_n = 1'sb0;
				// Trace: core/cvxif_example/copro_alu.sv:57:9
				we_n = 1'sb0;
			end
			4'b0010: begin
				// Trace: core/cvxif_example/copro_alu.sv:60:9
				result_n = registers_i[registers_t_XLEN+:registers_t_XLEN] + registers_i[0+:registers_t_XLEN];
				// Trace: core/cvxif_example/copro_alu.sv:61:9
				hartid_n = hartid_i;
				// Trace: core/cvxif_example/copro_alu.sv:62:9
				id_n = id_i;
				// Trace: core/cvxif_example/copro_alu.sv:63:9
				valid_n = 1'b1;
				// Trace: core/cvxif_example/copro_alu.sv:64:9
				rd_n = rd_i;
				// Trace: core/cvxif_example/copro_alu.sv:65:9
				we_n = 1'b1;
			end
			4'b0011: begin
				// Trace: core/cvxif_example/copro_alu.sv:68:9
				result_n = registers_i[0+:registers_t_XLEN] + registers_i[0+:registers_t_XLEN];
				// Trace: core/cvxif_example/copro_alu.sv:69:9
				hartid_n = hartid_i;
				// Trace: core/cvxif_example/copro_alu.sv:70:9
				id_n = id_i;
				// Trace: core/cvxif_example/copro_alu.sv:71:9
				valid_n = 1'b1;
				// Trace: core/cvxif_example/copro_alu.sv:72:9
				rd_n = rd_i;
				// Trace: core/cvxif_example/copro_alu.sv:73:9
				we_n = 1'b1;
			end
			4'b0100: begin
				// Trace: core/cvxif_example/copro_alu.sv:76:9
				result_n = registers_i[registers_t_XLEN+:registers_t_XLEN] + registers_i[registers_t_XLEN+:registers_t_XLEN];
				// Trace: core/cvxif_example/copro_alu.sv:77:9
				hartid_n = hartid_i;
				// Trace: core/cvxif_example/copro_alu.sv:78:9
				id_n = id_i;
				// Trace: core/cvxif_example/copro_alu.sv:79:9
				valid_n = 1'b1;
				// Trace: core/cvxif_example/copro_alu.sv:80:9
				rd_n = rd_i;
				// Trace: core/cvxif_example/copro_alu.sv:81:9
				we_n = 1'b1;
			end
			4'b0101: begin
				// Trace: core/cvxif_example/copro_alu.sv:84:9
				result_n = registers_i[registers_t_XLEN+:registers_t_XLEN] + registers_i[0+:registers_t_XLEN];
				// Trace: core/cvxif_example/copro_alu.sv:85:9
				hartid_n = hartid_i;
				// Trace: core/cvxif_example/copro_alu.sv:86:9
				id_n = id_i;
				// Trace: core/cvxif_example/copro_alu.sv:87:9
				valid_n = 1'b1;
				// Trace: core/cvxif_example/copro_alu.sv:88:9
				rd_n = rd_i;
				// Trace: core/cvxif_example/copro_alu.sv:89:9
				we_n = 1'b1;
			end
			4'b0110: begin
				// Trace: core/cvxif_example/copro_alu.sv:92:9
				result_n = (NrRgprPorts == 3 ? (registers_i[2 * registers_t_XLEN+:registers_t_XLEN] + registers_i[registers_t_XLEN+:registers_t_XLEN]) + registers_i[0+:registers_t_XLEN] : registers_i[registers_t_XLEN+:registers_t_XLEN] + registers_i[0+:registers_t_XLEN]);
				// Trace: core/cvxif_example/copro_alu.sv:93:9
				hartid_n = hartid_i;
				// Trace: core/cvxif_example/copro_alu.sv:94:9
				id_n = id_i;
				// Trace: core/cvxif_example/copro_alu.sv:95:9
				valid_n = 1'b1;
				// Trace: core/cvxif_example/copro_alu.sv:96:9
				rd_n = rd_i;
				// Trace: core/cvxif_example/copro_alu.sv:97:9
				we_n = 1'b1;
			end
			4'b0111: begin
				// Trace: core/cvxif_example/copro_alu.sv:100:9
				result_n = (NrRgprPorts == 3 ? (registers_i[2 * registers_t_XLEN+:registers_t_XLEN] + registers_i[registers_t_XLEN+:registers_t_XLEN]) + registers_i[0+:registers_t_XLEN] : registers_i[registers_t_XLEN+:registers_t_XLEN] + registers_i[0+:registers_t_XLEN]);
				// Trace: core/cvxif_example/copro_alu.sv:101:9
				hartid_n = hartid_i;
				// Trace: core/cvxif_example/copro_alu.sv:102:9
				id_n = id_i;
				// Trace: core/cvxif_example/copro_alu.sv:103:9
				valid_n = 1'b1;
				// Trace: core/cvxif_example/copro_alu.sv:104:9
				rd_n = 5'b01010;
				// Trace: core/cvxif_example/copro_alu.sv:105:9
				we_n = 1'b1;
			end
			default: begin
				// Trace: core/cvxif_example/copro_alu.sv:108:9
				result_n = 1'sb0;
				// Trace: core/cvxif_example/copro_alu.sv:109:9
				hartid_n = 1'sb0;
				// Trace: core/cvxif_example/copro_alu.sv:110:9
				id_n = 1'sb0;
				// Trace: core/cvxif_example/copro_alu.sv:111:9
				valid_n = 1'sb0;
				// Trace: core/cvxif_example/copro_alu.sv:112:9
				rd_n = 1'sb0;
				// Trace: core/cvxif_example/copro_alu.sv:113:9
				we_n = 1'sb0;
			end
		endcase
	end
	// Trace: core/cvxif_example/copro_alu.sv:118:3
	always @(posedge clk_i or negedge rst_ni)
		// Trace: core/cvxif_example/copro_alu.sv:119:5
		if (~rst_ni) begin
			// Trace: core/cvxif_example/copro_alu.sv:120:7
			result_q <= 1'sb0;
			// Trace: core/cvxif_example/copro_alu.sv:121:7
			hartid_q <= 1'sb0;
			// Trace: core/cvxif_example/copro_alu.sv:122:7
			id_q <= 1'sb0;
			// Trace: core/cvxif_example/copro_alu.sv:123:7
			valid_q <= 1'sb0;
			// Trace: core/cvxif_example/copro_alu.sv:124:7
			rd_q <= 1'sb0;
			// Trace: core/cvxif_example/copro_alu.sv:125:7
			we_q <= 1'sb0;
		end
		else begin
			// Trace: core/cvxif_example/copro_alu.sv:127:7
			result_q <= result_n;
			// Trace: core/cvxif_example/copro_alu.sv:128:7
			hartid_q <= hartid_n;
			// Trace: core/cvxif_example/copro_alu.sv:129:7
			id_q <= id_n;
			// Trace: core/cvxif_example/copro_alu.sv:130:7
			valid_q <= valid_n;
			// Trace: core/cvxif_example/copro_alu.sv:131:7
			rd_q <= rd_n;
			// Trace: core/cvxif_example/copro_alu.sv:132:7
			we_q <= we_n;
		end
	initial _sv2v_0 = 0;
endmodule
