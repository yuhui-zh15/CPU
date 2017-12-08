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
            inst <= { inst_mem[addr[11:2]][7:0], inst_mem[addr[11:2]][15:8], inst_mem[addr[11:2]][23:16], inst_mem[addr[11:2]][31:24] }; 
        end
    end

endmodule // rom