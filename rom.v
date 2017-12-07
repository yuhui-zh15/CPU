`include "defines.v"

module rom(
    input wire ce,
    input wire[`RomBus] addr,
    output reg[`InstBus] inst
);

    reg[`InstBus] inst_mem[0:`RomNum-1];

    always @(*) begin
        if (ce == `ChipDisable) begin
            inst <= `ZeroWord; 
        end else begin
            inst <= inst_mem[addr]; // <TODO> last 2 bit?
        end
    end

endmodule // rom