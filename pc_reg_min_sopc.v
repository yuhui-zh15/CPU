`include "defines.v"

module pc_reg_min_sopc(
    input wire clk,
    input wire rst
);

    wire[`InstAddrBus] pc;
    wire ce;

    pc_reg pc_reg0(
        .clk(clk),
        .rst(rst),
        .pc(pc),
        .ce(ce)
    );

endmodule // pc_reg_min_sopc