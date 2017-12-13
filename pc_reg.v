`include "defines.v"

module pc_reg(
    input wire clk,
    input wire rst,
    input wire[5:0] stall,
    input wire tlb_hit,
    input wire[`InstAddrBus] physical_pc,
    output reg[`InstAddrBus] virtual_pc,
    output reg[`InstAddrBus] pc,
    output reg ce,
    output reg[31:0] excepttype_o,

    // Exception
    input wire flush,
    input wire[`RegBus] new_pc,

    // From ID, for Branch/Jump
    input wire branch_flag_i,
    input wire [`RegBus] branch_target_addr_i
);

    always @ (*) begin
        if (tlb_hit == 1'b1) begin
            pc <= physical_pc;
            excepttype_o <= `ZeroWord;
        end else begin
            pc <= `ZeroWord;
            excepttype_o <= {18'b0, 1'b1, 13'b0};
        end
    end // always @ (*)

    always @(posedge clk) begin
        if (ce == `ChipDisable) begin
            virtual_pc <= 32'hbfc00000;
        end else begin 
            if (flush == 1'b1) begin
                virtual_pc <= new_pc;
            end else if (stall[0] == `NoStop) begin
                if (branch_flag_i == `Branch) begin
                    virtual_pc <= branch_target_addr_i;
                end else begin
                    virtual_pc <= virtual_pc + 4'h4;
                end
            end
        end
    end

    always @(posedge clk) begin
        if (rst == `RstEnable) begin
            ce <= `ChipDisable;
        end else begin
            ce <= `ChipEnable;  
        end
    end
    
endmodule // pc_reg