`include "defines.v"

module openmips_min_sopc(
    input wire clk,
    input wire rst
);

    wire[`InstAddrBus] inst_addr;
    wire[`InstBus] inst;
    wire rom_ce;
    wire mem_we_i;
    wire[`RegBus] mem_addr_i;
    wire[`RegBus] mem_data_i;
    wire[`RegBus] mem_data_o;
    wire[3:0] mem_sel_i;
    wire mem_ce_i;

    // Exception
    wire[5:0] int;
    wire timer_int;

    assign int = {5'b00000, timer_int};

    openmips openmips0(
        .clk(clk),
        .rst(rst),
        .if_addr_o(inst_addr),
        .if_data_i(inst),
        .if_ce_o(rom_ce),
        .mem_we_o(mem_we_i),
        .mem_addr_o(mem_addr_i),
        .mem_sel_o(mem_sel_i),
        .mem_data_o(mem_data_i),
        .mem_data_i(mem_data_o),
        .mem_ce_o(mem_ce_i),
        .int_i      (int),
        .timer_int_o(timer_int)
    );

//    inst_rom inst_rom0(
//        .addr(inst_addr),
//        .inst(inst),
//        .ce(rom_ce)
//    );

    try_rom try_rom0(
        .a(inst_addr[13:2]),
        .spo(inst)
    );

//    rom rom0(
//        .ce(rom_ce),
//        .addr(inst_addr),
//        .inst()
//    );

    data_ram data_ram0(
        .clk(clk),
        .we(mem_we_i),
        .addr(mem_addr_i),
        .sel(mem_sel_i),
        .data_i(mem_data_i),
        .data_o(mem_data_o),
        .ce(mem_ce_i)   
    );

endmodule // openmips_min_sopc