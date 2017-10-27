`include "defines.v"

module id_ex(
    input wire clk,
    input wire rst,
    // From id
    input wire[`AluOpBus] id_aluop,
    input wire[`AluSelBus] id_alusel,
    input wire[`RegBus] id_reg1,
    input wire[`RegBus] id_reg2,
    input wire[`RegAddrBus] id_wd,
    input wire id_wreg,
    input wire[`RegBus] id_link_addr,
    input wire id_is_in_delay_slot,
    input wire next_inst_in_delay_slot_i,
    // To ex
    output reg[`AluOpBus] ex_aluop,
    output reg[`AluSelBus] ex_alusel,
    output reg[`RegBus] ex_reg1,
    output reg[`RegBus] ex_reg2,
    output reg[`RegAddrBus] ex_wd,
    output reg ex_wreg,
    output reg[`RegBus] ex_link_addr,
    output reg ex_is_in_delay_slot,
    output reg is_in_delay_slot_o
);

    always @(posedge clk) begin
        if (rst == `RstEnable) begin
            ex_aluop <= `EXE_NOP_OP;
            ex_alusel <= `EXE_RES_NOP;
            ex_reg1 <= `ZeroWord;
            ex_reg2 <= `ZeroWord;
            ex_wd <= `NOPRegAddr;
            ex_wreg <= `WriteDisable;  
            ex_link_addr <= `ZeroWord;
            ex_is_in_delay_slot <= `NotInDelaySlot;
            is_in_delay_slot_o <= `NotInDelaySlot;
        end else begin
            ex_aluop <= id_aluop;
            ex_alusel <= id_alusel;
            ex_reg1 <= id_reg1;
            ex_reg2 <= id_reg2;
            ex_wd <= id_wd;
            ex_wreg <= id_wreg;  
            ex_link_addr <= id_link_addr;
            ex_is_in_delay_slot <= id_is_in_delay_slot;
            is_in_delay_slot_o <= next_inst_in_delay_slot_i;
        end
    end

endmodule // id_ex