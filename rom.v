`include "defines.v"

module rom(
    input wire ce,
    input wire[11:0] addr,
    output reg[31:0] inst
);

    reg[31:0] inst_mem[0:1023];

    

    always @(*) begin
        if (ce == 1'b0) begin
            inst <= `ZeroWord; 
        end else begin
            case (addr[11:2])
                10'h0: inst <= 32'h00000000;
                10'h1: inst <= 32'h01000010;
                10'h2: inst <= 32'h00000000;
                10'h3: inst <= 32'hffbe083c;
                10'h4: inst <= 32'hf8ff0835;
                10'h5: inst <= 32'hff000924;
                10'h6: inst <= 32'h000009ad;
                10'h7: inst <= 32'h00be103c;
                10'h8: inst <= 32'h00000f24;
                10'h9: inst <= 32'h21780f02;
                10'ha: inst <= 32'h0000e98d;
                10'hb: inst <= 32'h0400ef8d;
                10'hc: inst <= 32'h007c0f00;
                10'hd: inst <= 32'h25482f01;
                10'he: inst <= 32'h4c46083c;
                10'hf: inst <= 32'h7f450835;
                10'h10: inst <= 32'h03000911;
                10'h11: inst <= 32'h00000000;
                10'h12: inst <= 32'h42000010;
                10'h13: inst <= 32'h00000000;
                10'h14: inst <= 32'h38000f24;
                10'h15: inst <= 32'h21780f02;
                10'h16: inst <= 32'h0000f18d;
                10'h17: inst <= 32'h0400ef8d;
                10'h18: inst <= 32'h007c0f00;
                10'h19: inst <= 32'h25882f02;
                10'h1a: inst <= 32'h58000f24;
                10'h1b: inst <= 32'h21780f02;
                10'h1c: inst <= 32'h0000f28d;
                10'h1d: inst <= 32'h0400ef8d;
                10'h1e: inst <= 32'h007c0f00;
                10'h1f: inst <= 32'h25904f02;
                10'h20: inst <= 32'hffff5232;
                10'h21: inst <= 32'h30000f24;
                10'h22: inst <= 32'h21780f02;
                10'h23: inst <= 32'h0000f38d;
                10'h24: inst <= 32'h0400ef8d;
                10'h25: inst <= 32'h007c0f00;
                10'h26: inst <= 32'h25986f02;
                10'h27: inst <= 32'h08002f26;
                10'h28: inst <= 32'h40780f00;
                10'h29: inst <= 32'h21780f02;
                10'h2a: inst <= 32'h0000f48d;
                10'h2b: inst <= 32'h0400ef8d;
                10'h2c: inst <= 32'h007c0f00;
                10'h2d: inst <= 32'h25a08f02;
                10'h2e: inst <= 32'h10002f26;
                10'h2f: inst <= 32'h40780f00;
                10'h30: inst <= 32'h21780f02;
                10'h31: inst <= 32'h0000f58d;
                10'h32: inst <= 32'h0400ef8d;
                10'h33: inst <= 32'h007c0f00;
                10'h34: inst <= 32'h25a8af02;
                10'h35: inst <= 32'h04002f26;
                10'h36: inst <= 32'h40780f00;
                10'h37: inst <= 32'h21780f02;
                10'h38: inst <= 32'h0000f68d;
                10'h39: inst <= 32'h0400ef8d;
                10'h3a: inst <= 32'h007c0f00;
                10'h3b: inst <= 32'h25b0cf02;
                10'h3c: inst <= 32'h10008012;
                10'h3d: inst <= 32'h00000000;
                10'h3e: inst <= 32'h0e00a012;
                10'h3f: inst <= 32'h00000000;
                10'h40: inst <= 32'h0000cf26;
                10'h41: inst <= 32'h40780f00;
                10'h42: inst <= 32'h21780f02;
                10'h43: inst <= 32'h0000e88d;
                10'h44: inst <= 32'h0400ef8d;
                10'h45: inst <= 32'h007c0f00;
                10'h46: inst <= 32'h25400f01;
                10'h47: inst <= 32'h000088ae;
                10'h48: inst <= 32'h0400d626;
                10'h49: inst <= 32'h04009426;
                10'h4a: inst <= 32'hfcffb526;
                10'h4b: inst <= 32'hf4ffa01e;
                10'h4c: inst <= 32'h00000000;
                10'h4d: inst <= 32'h20003126;
                10'h4e: inst <= 32'hffff5226;
                10'h4f: inst <= 32'hd7ff401e;
                10'h50: inst <= 32'h00000000;
                10'h51: inst <= 32'h08006002;
                10'h52: inst <= 32'h00000000;
                10'h53: inst <= 32'hffff0010;
                10'h54: inst <= 32'h00000000;
                10'h55: inst <= 32'hffff0010;
                10'h56: inst <= 32'h00000000;
                default: inst <= 32'h00000000;
            endcase
            inst <= { inst[7:0], inst[15:8], inst[23:16], inst[31:24] }; 
        end
    end

endmodule // rom