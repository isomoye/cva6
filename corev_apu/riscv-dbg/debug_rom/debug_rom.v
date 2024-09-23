module debug_rom (
	clk_i,
	req_i,
	addr_i,
	rdata_o
);
	reg _sv2v_0;
	// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:18:3
	input wire clk_i;
	// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:19:3
	input wire req_i;
	// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:20:3
	input wire [63:0] addr_i;
	// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:21:3
	output reg [63:0] rdata_o;
	// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:24:3
	localparam [31:0] RomSize = 19;
	// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:26:3
	wire [1215:0] mem;
	// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:27:3
	assign mem = 1216'h7b2000737b2024737b30257310852423f1402473a85ff06f7b2024737b30257310052223001000737b2024737b3025731005262300c5151300c5551300000517fd5ff06ffa041ce3002474134004440300a40433f140247302041c63001474134004440300a4043310852023f140247300c5151300c55513000005177b3510737b2410730ff0000f04c0006f07c0006f00c0006f;
	// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:49:3
	reg [4:0] addr_q;
	// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:51:3
	always @(posedge clk_i)
		// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:52:5
		if (req_i)
			// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:53:7
			addr_q <= addr_i[7:3];
	// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:59:3
	function automatic [4:0] sv2v_cast_C6D38;
		input reg [4:0] inp;
		sv2v_cast_C6D38 = inp;
	endfunction
	always @(*) begin : p_outmux
		if (_sv2v_0)
			;
		// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:60:5
		rdata_o = 1'sb0;
		// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:61:5
		if (addr_q < sv2v_cast_C6D38(RomSize))
			// Trace: corev_apu/riscv-dbg/debug_rom/debug_rom.sv:62:9
			rdata_o = mem[addr_q * 64+:64];
	end
	initial _sv2v_0 = 0;
endmodule
