// Verilog translation of some parts of the provided C++ code
// Copyright 2023-2024 Intel Corporation
// SPDX-License-Identifier: MIT

module bipbip_cipher (
    input  [63:0] plaintext,
    input  [127:0] key,
    output [63:0] ciphertext
);

import bipbip_pkg::*;

    // Define constants and tables
    // reg [7:0] BBB [63:0];
    // reg [7:0] PI1 [23:0];
    // reg [7:0] PI2 [23:0];
    // reg [7:0] PI3 [23:0];
    // reg [7:0] PI1_inv [23:0];
    // reg [7:0] PI2_inv [23:0];
    // reg [7:0] PI3_inv [23:0];
    // reg [7:0] PI4 [52:0];
    // reg [7:0] PI5 [52:0];
    // reg [7:0] Sbox_table [63:0];
    // reg [7:0] Sbox_inv_table [63:0];

     // BipBipBox
  logic [7:0] BBB [63:0] = '{8'h00, 8'h01, 8'h02, 8'h03, 8'h04, 8'h06, 8'h3e, 8'h3c,
                             8'h08, 8'h11, 8'h0e, 8'h17, 8'h2b, 8'h33, 8'h35, 8'h2d,
                             8'h19, 8'h1c, 8'h09, 8'h0c, 8'h15, 8'h13, 8'h3d, 8'h3b,
                             8'h31, 8'h2c, 8'h25, 8'h38, 8'h3a, 8'h26, 8'h36, 8'h2a,
                             8'h34, 8'h1d, 8'h37, 8'h1e, 8'h30, 8'h1a, 8'h0b, 8'h21,
                             8'h2e, 8'h1f, 8'h29, 8'h18, 8'h0f, 8'h3f, 8'h10, 8'h20,
                             8'h28, 8'h05, 8'h39, 8'h14, 8'h24, 8'h0a, 8'h0d, 8'h23,
                             8'h12, 8'h27, 8'h07, 8'h32, 8'h1b, 8'h2f, 8'h16, 8'h22};

  logic [7:0] PI1 [23:0] = '{1, 7, 6, 0, 2, 8, 12, 18, 19, 13, 14, 20,
                             21, 15, 16, 22, 23, 17, 9, 3, 4, 10, 11, 5};

  logic [7:0] PI2 [23:0] = '{0, 1, 4, 5, 8, 9, 2, 3, 6, 7, 10, 11,
                             16, 12, 13, 17, 20, 21, 15, 14, 18, 19, 22, 23};

  logic [7:0] PI3 [23:0] = '{16, 22, 11, 5, 2, 8, 0, 6, 19, 13, 12, 18,
                             14, 15, 1, 7, 21, 20, 4, 3, 17, 23, 10, 9};

  logic [7:0] PI1_inv [23:0] = '{3, 0, 4, 19, 20, 23, 2, 1, 5, 18, 21, 22,
                                 6, 9, 10, 13, 14, 17, 7, 8, 11, 12, 15, 16};

  logic [7:0] PI2_inv [23:0] = '{0, 1, 6, 7, 2, 3, 8, 9, 4, 5, 10, 11,
                                 13, 14, 19, 18, 12, 15, 20, 21, 16, 17, 22, 23};

  logic [7:0] PI3_inv [23:0] = '{6, 14, 4, 19, 18, 3, 7, 15, 5, 23, 22, 2,
                                 10, 9, 12, 13, 0, 20, 11, 8, 17, 16, 1, 21};

  logic [7:0] PI4 [52:0] = '{0, 13, 26, 39, 52, 12, 25, 38, 51, 11, 24, 37, 50, 10,
                             23, 36, 49, 9, 22, 35, 48, 8, 21, 34, 47, 7, 20, 33,
                             46, 6, 19, 32, 45, 5, 18, 31, 44, 4, 17, 30, 43, 3,
                             16, 29, 42, 2, 15, 28, 41, 1, 14, 27, 40};

  logic [7:0] PI5 [52:0] = '{0, 11, 22, 33, 44, 2, 13, 24, 35, 46, 4, 15, 26, 37,
                             48, 6, 17, 28, 39, 50, 8, 19, 30, 41, 52, 10, 21, 32,
                             43, 1, 12, 23, 34, 45, 3, 14, 25, 36, 47, 5, 16, 27,
                             38, 49, 7, 18, 29, 40, 51, 9, 20, 31, 42};

  logic [7:0] Sbox_table [63:0] = '{8'h00, 8'h01, 8'h02, 8'h03, 8'h04, 8'h06, 8'h3e, 8'h3c,
                                     8'h08, 8'h11, 8'h0e, 8'h17, 8'h2b, 8'h33, 8'h35, 8'h2d,
                                     8'h19, 8'h1c, 8'h09, 8'h0c, 8'h15, 8'h13, 8'h3d, 8'h3b,
                                     8'h31, 8'h2c, 8'h25, 8'h38, 8'h3a, 8'h26, 8'h36, 8'h2a,
                                     8'h34, 8'h1d, 8'h37, 8'h1e, 8'h30, 8'h1a, 8'h0b, 8'h21,
                                     8'h2e, 8'h1f, 8'h29, 8'h18, 8'h0f, 8'h3f, 8'h10, 8'h20,
                                     8'h28, 8'h05, 8'h39, 8'h14, 8'h24, 8'h0a, 8'h0d, 8'h23,
                                     8'h12, 8'h27, 8'h07, 8'h32, 8'h1b, 8'h2f, 8'h16, 8'h22};

  logic [7:0] Sbox_inv_table [63:0] = '{8'h00, 8'h01, 8'h02, 8'h03, 8'h04, 8'h31, 8'h05, 8'h3a,
                                        8'h08, 8'h12, 8'h35, 8'h26, 8'h13, 8'h36, 8'h0a, 8'h2c,
                                        8'h2e, 8'h09, 8'h38, 8'h15, 8'h33, 8'h14, 8'h3e, 8'h0b,
                                        8'h2b, 8'h10, 8'h25, 8'h3c, 8'h11, 8'h21, 8'h23, 8'h29,
                                        8'h2f, 8'h27, 8'h3f, 8'h37, 8'h34, 8'h1a, 8'h1d, 8'h39,
                                        8'h30, 8'h2a, 8'h1f, 8'h0c, 8'h19, 8'h0f, 8'h28, 8'h3d,
                                        8'h24, 8'h18, 8'h3b, 8'h0d, 8'h20, 8'h0e, 8'h1e, 8'h22,
                                        8'h1b, 8'h32, 8'h1c, 8'h17, 8'h07, 8'h16, 8'h06, 8'h2d};

typedef struct {
    logic [23:0] data_round_key;
    logic [52:0] tweak_round_key [5:0];
} key_schedule_t;

function key_schedule_t GenKeySchedule(input logic [63:0] MK [3:0]);
    key_schedule_t key_schedule;
    key_schedule.data_round_key = 24'd0;
    int position = 1;

    // Generate data_round_key
    for (int i = 0; i < 24; i++) begin
        position = (position * 3) % 256;
        logic bit = get_bit(MK[position / 64], position % 64);
        key_schedule.data_round_key[i] = bit;
    end

    position = 53;

    // Generate tweak_round_key
    for (int i = 0; i < 6; i++) begin
        key_schedule.tweak_round_key[i] = 53'd0;
        for (int j = 0; j < 53; j++) begin
            logic bit = get_bit(MK[position / 64], position % 64);
            position = (position + 1) % 256;
            key_schedule.tweak_round_key[i][j] = bit;
        end
    end

    return key_schedule;
endfunction

function logic get_bit(input logic [63:0] word, input int bit_position);
    return word[bit_position];
endfunction

    // Define the get_bit function
    // function automatic bit get_bit;
    //     input [63:0] in;
    //     input integer position;
    //     begin
    //         get_bit = (in >> position) & 1;
    //     end
    // endfunction

    // Define the sbox function
    function block_word sbox;
        input block_word state_in;
        input reg [7:0] table [63:0];
        block_word state_out;
        integer i;
        begin
            state_out = 0;
            for (i = 3; i >= 0; i = i - 1) begin
                state_out = (state_out << 6) | table[(state_in >> (i * 6)) & 6'h3F];
            end
            return state_out;
        end
    endfunction

    // S-box Layer S
    function block_word SBL;
        input block_word state_in;
        begin
            SBL = sbox(state_in, Sbox_table);
        end
    endfunction

    // S-box Layer S inverse
    function block_word SBL_inv;
        input block_word state_in;
        begin
            SBL_inv = sbox(state_in, Sbox_inv_table);
        end
    endfunction

    // Linear Mixing Layer in Data Path: theta_d
    function block_word LML1;
        input block_word state_in;
        reg block_word state_in_shift2, state_in_shift12;
        begin
            state_in_shift2 = (state_in >> 2) | (state_in << (24 - 2));
            state_in_shift12 = (state_in >> 12) | (state_in << (24 - 12));
            LML1 = state_in ^ state_in_shift2 ^ state_in_shift12;
        end
    endfunction


    function block_word LML1_inv;
    input block_word state_in;
    reg block_word state_in_temp,state_in_shift2, state_in_shift12;
    begin
        state_in_temp = state_in & BITMASK(24);
        state_in_shift2 = (state_in_temp >> 2) | (state_in_temp << (24 - 2));
        state_in_shift12 = (state_in_temp >> 12) | (state_in_temp << (24 - 12));
        state_tmp = (state_in_temp ^ state_in_shift2 ^ state_in_shift12) & BITMASK(24);
        return ((state_tmp >> 20) | (state_tmp << 4)) & BITMASK(24);
    end
endfunction

    // Round Function: Core Round
    function block_word RFC;
        input block_word state_in;
        reg block_word state;
        begin
            state = SBL(state_in);
            state = BPL(state, PI1, 24);
            state = LML1(state);
            RFC = BPL(state, PI2, 24);
        end
    endfunction

       // Round Function: Core Round
    function block_word RFC_inv;
        input block_word state_in;
        reg block_word state;
        begin
            state = BPL(state_in, PI2_inv, 24);
            state = LM1_inv(state);
            state = BPL(state, PI1_inv, 24);
            return SBL_inv(state);
        end
    endfunction


    // Round Key Extraction E0
    function block_word RKE0;
        input [52:0] in;
        begin
            // Implement the deinterleave logic
            RKE0 = deinterleave_odd_bits(in);
        end
    endfunction


    function automatic block_word RFS(input block_word in);
        block_word tmp;
        tmp = SBL(in);  // Call the SBL function with input 'in'
        return BPL(tmp, PI3, 24);  // Call BPL with tmp, PI3, and 24
    endfunction

    function automatic block_word RFS_inv(input block_word in);
        block_word tmp;
        tmp = BPL(in, PI3_inv, 24);  // Call BPL with in, PI3_inv, and 24
        return SBL_inv(tmp);  // Call SBL_inv with tmp
    endfunction


    function block_word KAD (
        input block_word data,   // Assuming block_word is 24 bits
        input block_word tweak  // Assuming block_word is 24 bits
    );
        // XOR the data and tweak
        return = data ^ tweak;

    endfunction

    // Function for BipBip Encryption
    function block_word BipBipEnc;
        input block_word plaintext;
        input tweak_schedule_t tweak_schedule;
        reg [63:0] state;
        integer i;
        begin
            state = plaintext;
            for (i = 11; i >= 1; i = i - 1) begin
                state = KAD(state,tweak_schedule[i]);
                state = RFS_inv(state)
            end
            return = KAD(state,tweak_schedule[0])
        end
    endfunction

//     // Function for BipBip Decryption
//     function [63:0] BipBipDec;
//         input [63:0] ciphertext;
//         input [23:0] tweak_schedule [11:0];
//         reg [63:0] state;
//         integer i;
//         begin
//             state = ciphertext;
//             for (i = 0; i < 12; i = i + 1) begin
//                 if (i < 4 || i > 7) state = RFS(state);
//                 else state = RFC(state);
//                 state = state ^ tweak_schedule[i];
//             end
//             BipBipDec = state;
//         end
//     endfunction

//     // Key Schedule and other functions would be added here...

//     // Example usage in a simple testbench
//     initial begin
//         // Test encryption and decryption
//         $display("Plaintext: %h", plaintext);
//         ciphertext = BipBipEnc(plaintext, key);
//         $display("Ciphertext: %h", ciphertext);
//         $display("Decrypted: %h", BipBipDec(ciphertext, key));
//     end

endmodule
