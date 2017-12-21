`include "defines.v"

module ex(
    input wire rst,
    // From id
    input wire[`AluOpBus] aluop_i,
    input wire[`AluSelBus] alusel_i,
    input wire[`RegBus] reg1_i,
    input wire[`RegBus] reg2_i,
    input wire[`RegAddrBus] wd_i,
    input wire wreg_i,
    input wire[`RegBus] inst_i,
    // To wd
    output reg[`RegAddrBus] wd_o,
    output reg wreg_o,
    output reg[`RegBus] wdata_o,
    output wire[`RegBus] inst_o,
    // Value from hilo_reg
    input wire[`RegBus] hi_i,
    input wire[`RegBus] lo_i,
    // Whether wb write hilo
    input wire[`RegBus] wb_hi_i,
    input wire[`RegBus] wb_lo_i,
    input wire wb_whilo_i,
    // Whether mem write hilo
    input wire[`RegBus] mem_hi_i,
    input wire[`RegBus] mem_lo_i,
    input wire mem_whilo_i,
    // ex write hilo
    output reg[`RegBus] hi_o,
    output reg[`RegBus] lo_o,
    output reg whilo_o,
    // B&J
    input wire[`RegBus] link_addr_i,
    input wire is_in_delay_slot_i,
    // L&S
    output wire[`AluOpBus] aluop_o,
    output wire[`RegBus] mem_addr_o,
    output wire[`RegBus] reg2_o,
    // Pipeline stop/continue
    output wire stallreq,
    // mem->write CP0
    input wire mem_cp0_reg_we,
    input wire[4:0] mem_cp0_reg_write_addr,
    input wire[`RegBus] mem_cp0_reg_data,
    // wb->write C0
    input wire wb_cp0_reg_we,
    input wire[4:0] wb_cp0_reg_write_addr,
    input wire[`RegBus] wb_cp0_reg_data,
    // link with cp0
    input wire[`RegBus] cp0_reg_data_i,
    output reg[4:0] cp0_reg_read_addr_o,
    // push information about cp0
    output reg cp0_reg_we_o,
    output reg[4:0] cp0_reg_write_addr_o,
    output reg[`RegBus] cp0_reg_data_o,
    // Exception
    input wire[31:0] excepttype_i,
    input wire[`RegBus] current_inst_address_i,
    output wire[31:0] excepttype_o,
    output wire[`RegBus] current_inst_address_o,
    output wire is_in_delay_slot_o
);

    reg trapassert; // trap
    reg ovassert; // overflow

    assign excepttype_o = {excepttype_i[31:12], ovassert, trapassert, excepttype_i[9:8], 8'h00};
    assign is_in_delay_slot_o = is_in_delay_slot_i;
    assign current_inst_address_o = current_inst_address_i;

    assign stallreq = `NoStop; //<TODO> for madd instruction
    assign aluop_o = aluop_i;
    assign mem_addr_o = reg1_i + {{16{inst_i[15]}}, inst_i[15:0]};
    assign reg2_o = reg2_i;

    assign inst_o = inst_i;

    reg[`RegBus] logicout;
    reg[`RegBus] shiftres;
    reg[`RegBus] moveres;
    reg[`RegBus] HI;
    reg[`RegBus] LO;
    reg[`RegBus] arithmeticres;
    reg[`DoubleRegBus] mulres;

    wire ov_sum;
    wire reg1_eq_reg2;
    wire reg1_lt_reg2;
    wire[`RegBus] reg2_i_mux; //reg2_i's complement code
    wire[`RegBus] reg1_i_not; //reg1_i's inverted code
    wire[`RegBus] result_sum;
    wire[`RegBus] opdata1_mult;
    wire[`RegBus] opdata2_mult;
    wire[`DoubleRegBus] hilo_temp;

    // Arithmetic
    // Stage 1: Calculate 5 values
    //assign reg2_i_mux = ((aluop_i == `EXE_SUB_OP) || (aluop_i == `EXE_SUBU_OP) || (aluop_i == `EXE_SLT_OP))? (~reg2_i) + 1: reg2_i;
    //assign result_sum = reg1_i + reg2_i_mux;
    //assign ov_sum = ((!reg1_i[31] && !reg2_i_mux[31]) && result_sum[31]) || ((reg1_i[31] && reg2_i_mux[31]) && !result_sum[31]);
    assign reg2_i_mux = ((aluop_i == `EXE_SUB_OP) ||
                         (aluop_i == `EXE_SUBU_OP) ||
                         (aluop_i == `EXE_SLT_OP) ||
                         (aluop_i == `EXE_TLT_OP) ||
                         (aluop_i == `EXE_TLTI_OP) ||
                         (aluop_i == `EXE_TGE_OP) ||
                         (aluop_i == `EXE_TGEI_OP)) ? (~reg2_i) + 1 : reg2_i;
    assign result_sum = reg1_i + reg2_i_mux;
    assign ov_sum = ((!reg1_i[31] && !reg2_i_mux[31]) && result_sum[31])
                    ||((reg1_i[31] && reg2_i_mux[31]) && (!result_sum[31]));                  
    assign reg1_lt_reg2 = ((aluop_i == `EXE_SLT_OP) || (aluop_i == `EXE_TLT_OP) || (aluop_i == `EXE_TLTI_OP) || (aluop_i == `EXE_TGE_OP) || (aluop_i == `EXE_TGEI_OP)) ? 
                          ((reg1_i[31] && !reg2_i[31]) || (!reg1_i[31] && !reg2_i[31] && result_sum[31]) || (reg1_i[31] && reg2_i[31] && result_sum[31])) : (reg1_i < reg2_i);
    assign reg1_i_not = ~reg1_i;

    // Stage 2: Assign arithmeticres according to various arithmetic operation
    always @(*) begin
        if (rst == `RstEnable) begin
            arithmeticres <= `ZeroWord; 
        end else begin
            case (aluop_i)
                `EXE_SLT_OP, `EXE_SLTU_OP: begin
                    arithmeticres <= reg1_lt_reg2; 
                end
                `EXE_ADD_OP, `EXE_ADDU_OP, `EXE_ADDI_OP, `EXE_ADDIU_OP: begin
                    arithmeticres <= result_sum; 
                end
                `EXE_SUB_OP, `EXE_SUBU_OP: begin
                    arithmeticres <= result_sum; 
                end
                `EXE_CLZ_OP: begin
                    arithmeticres <= reg1_i[31] ?0 :reg1_i[30] ?1 :reg1_i[29] ?2 :reg1_i[28] ?3 :reg1_i[27] ?4 :reg1_i[26] ?5 :reg1_i[25] ?6 :reg1_i[24] ?7 :reg1_i[23] ?8 :reg1_i[22] ?9 :reg1_i[21] ?10 :reg1_i[20] ?11 :reg1_i[19] ?12 :reg1_i[18] ?13 :reg1_i[17] ?14 :reg1_i[16] ?15 :reg1_i[15] ?16 :reg1_i[14] ?17 :reg1_i[13] ?18 :reg1_i[12] ?19 :reg1_i[11] ?20 :reg1_i[10] ?21 :reg1_i[9] ?22 :reg1_i[8] ?23 :reg1_i[7] ?24 :reg1_i[6] ?25 :reg1_i[5] ?26 :reg1_i[4] ?27 :reg1_i[3] ?28 :reg1_i[2] ?29 :reg1_i[1] ?30 :reg1_i[0] ?31 :32;
                end
                `EXE_CLO_OP: begin
                    arithmeticres <= reg1_i_not[31] ?0 :reg1_i_not[30] ?1 :reg1_i_not[29] ?2 :reg1_i_not[28] ?3 :reg1_i_not[27] ?4 :reg1_i_not[26] ?5 :reg1_i_not[25] ?6 :reg1_i_not[24] ?7 :reg1_i_not[23] ?8 :reg1_i_not[22] ?9 :reg1_i_not[21] ?10 :reg1_i_not[20] ?11 :reg1_i_not[19] ?12 :reg1_i_not[18] ?13 :reg1_i_not[17] ?14 :reg1_i_not[16] ?15 :reg1_i_not[15] ?16 :reg1_i_not[14] ?17 :reg1_i_not[13] ?18 :reg1_i_not[12] ?19 :reg1_i_not[11] ?20 :reg1_i_not[10] ?21 :reg1_i_not[9] ?22 :reg1_i_not[8] ?23 :reg1_i_not[7] ?24 :reg1_i_not[6] ?25 :reg1_i_not[5] ?26 :reg1_i_not[4] ?27 :reg1_i_not[3] ?28 :reg1_i_not[2] ?29 :reg1_i_not[1] ?30 :reg1_i_not[0] ?31 :32; 
                end
                default: begin
                    arithmeticres <= `ZeroWord; 
                end
            endcase 
        end
    end

    // Stage 3: Multiply Operation
    assign opdata1_mult = (((aluop_i == `EXE_MUL_OP) || (aluop_i == `EXE_MULT_OP)) && (reg1_i[31]))? (~reg1_i + 1): reg1_i;
    assign opdata2_mult = (((aluop_i == `EXE_MUL_OP) || (aluop_i == `EXE_MULT_OP)) && (reg2_i[31]))? (~reg2_i + 1): reg2_i;
    assign hilo_temp = opdata1_mult * opdata2_mult;
    always @(*) begin
        if (rst == `RstEnable) begin
            mulres <= {`ZeroWord, `ZeroWord}; 
        end else if ((aluop_i == `EXE_MULT_OP) || (aluop_i == `EXE_MUL_OP)) begin
            if (reg1_i[31] ^ reg2_i[31]) begin
                mulres <= ~hilo_temp + 1; 
            end else begin
                mulres <= hilo_temp; 
            end
        end else begin
            mulres <= hilo_temp; 
        end
    end

    // Stage 4: Determine data written, just modify following codes
    // Stage 5: Determine HI/LO, just modify following codes

    // Logic
    always @(*) begin
        if (rst == `RstEnable) begin
            logicout <= `ZeroWord; 
        end else begin
            case (aluop_i)
                `EXE_OR_OP: begin
                    logicout <= reg1_i | reg2_i;
                end
                `EXE_AND_OP: begin
                    logicout <= reg1_i & reg2_i;
                end
                `EXE_XOR_OP: begin
                    logicout <= reg1_i ^ reg2_i;
                end
                `EXE_NOR_OP: begin
                    logicout <= ~(reg1_i | reg2_i);
                end
                default: begin
                    logicout <= `ZeroWord; 
                end 
            endcase 
        end
    end

    // Shift
    always @(*) begin
        if (rst == `RstEnable) begin
            shiftres <= `ZeroWord;
        end else begin
            case (aluop_i)
                `EXE_SLL_OP: begin
                    shiftres <= reg2_i << reg1_i[4:0];
                end
                `EXE_SRL_OP: begin
                    shiftres <= reg2_i >> reg1_i[4:0];
                end
                `EXE_SRA_OP: begin
                    shiftres <= ({32{reg2_i[31]}} << (6'd32 - {1'b0, reg1_i[4:0]})) | (reg2_i >> reg1_i[4:0]);
                end
                default: begin
                    shiftres <= `ZeroWord;
                end
            endcase
        end
    end

    // Move
    // Stage 1: Get HI/LO, solve confliction
    always @(*) begin
        if (rst == `RstEnable) begin
            {HI, LO} <= {`ZeroWord, `ZeroWord}; 
        end else if (mem_whilo_i == `WriteEnable) begin
            {HI, LO} <= {mem_hi_i, mem_lo_i}; 
        end else if (wb_whilo_i == `WriteEnable) begin
            {HI, LO} <= {wb_hi_i, wb_lo_i}; 
        end else begin
            {HI, LO} <= {hi_i, lo_i}; 
        end
    end

    // Stage 2: Implement MFHI/MFLO/MOVN/MOVZ
    always @(*) begin
        if (rst == `RstEnable) begin
            moveres <= `ZeroWord; 
        end else begin
            moveres <= `ZeroWord; 
            case (aluop_i)
                `EXE_MFHI_OP: begin
                    moveres <= HI; 
                end
                `EXE_MFLO_OP: begin
                    moveres <= LO;
                end
                `EXE_MOVZ_OP: begin
                    moveres <= reg1_i;
                end
                `EXE_MOVN_OP: begin
                    moveres <= reg1_i; 
                end
                `EXE_MFC0_OP: begin
                    cp0_reg_read_addr_o <= inst_i[15:11];
                    moveres <= cp0_reg_data_i;
                    if (mem_cp0_reg_we == `WriteEnable && mem_cp0_reg_write_addr == inst_i[15:11])
                    begin
                        moveres <= mem_cp0_reg_data;
                    end else if (wb_cp0_reg_we == `WriteEnable && wb_cp0_reg_write_addr == inst_i[15:11])
                    begin
                        moveres <= wb_cp0_reg_data;
                    end
                end
                default: begin 
                end
            endcase
        end
    end

    //Stage 3: Determine wdata_o based on alusel_i, just modify following codes
    //Stage 4: Implement MTHI/MTLO
    always @(*) begin
        if (rst == `RstEnable) begin
            whilo_o <= `WriteDisable;
            hi_o <= `ZeroWord;
            lo_o <= `ZeroWord; 
        end else if ((aluop_i == `EXE_MULT_OP) || (aluop_i == `EXE_MULTU_OP)) begin
            whilo_o <= `WriteEnable;  
            hi_o <= mulres[63:32];
            lo_o <= mulres[31:0];
        end else if (aluop_i == `EXE_MTHI_OP) begin
            whilo_o <= `WriteEnable;
            hi_o <= reg1_i;
            lo_o <= LO; 
        end else if (aluop_i == `EXE_MTLO_OP) begin
            whilo_o <= `WriteEnable;
            hi_o <= HI;
            lo_o <= reg1_i; 
        end else begin
            whilo_o <= `WriteDisable;
            hi_o <= `ZeroWord;
            lo_o <= `ZeroWord; 
        end
    end

    // cp0
    always @ (*) begin
        if (rst == `RstEnable) begin
            cp0_reg_write_addr_o <= 5'b00000;
            cp0_reg_we_o <= `WriteDisable;
            cp0_reg_data_o <= `ZeroWord;
        end else if (aluop_i == `EXE_MTC0_OP) begin
            cp0_reg_write_addr_o <= inst_i[15:11];
            cp0_reg_we_o <= `WriteEnable;
            cp0_reg_data_o <= reg1_i;
        end else begin
            cp0_reg_write_addr_o <= 5'b00000;
            cp0_reg_we_o <= `WriteDisable;
            cp0_reg_data_o <= `ZeroWord;
        end
    end

    always @(*) begin
        wd_o <= wd_i;
        if (((aluop_i == `EXE_ADD_OP) || (aluop_i == `EXE_ADDI_OP) || (aluop_i == `EXE_SUB_OP)) && (ov_sum)) begin
            wreg_o <= `WriteDisable;
        end else begin
            wreg_o <= wreg_i;
        end
        case (alusel_i)
            `EXE_RES_LOGIC: begin
                wdata_o <= logicout;  
            end
            `EXE_RES_SHIFT: begin
                wdata_o <= shiftres;
            end
            `EXE_RES_MOVE: begin
                wdata_o <= moveres; 
            end
            `EXE_RES_ARITHMETIC: begin
                wdata_o <= arithmeticres; 
            end
            `EXE_RES_MUL: begin
                wdata_o <= mulres[31: 0];
            end
            `EXE_RES_JUMP_BRANCH: begin
                wdata_o <= link_addr_i;
            end
            default: begin
                wdata_o <= `ZeroWord;  
            end
        endcase  
    end

    // trap
    always @ (*) begin
        if (rst == `RstEnable) begin
            trapassert <= `TrapNotAssert;
        end else begin
            trapassert <= `TrapNotAssert;
            case (aluop_i)
                `EXE_TEQ_OP, `EXE_TEQI_OP: begin
                    if (reg1_i == reg2_i) begin
                        trapassert <= `TrapAssert;
                    end
                end
                `EXE_TGE_OP, `EXE_TGEI_OP, `EXE_TGEIU_OP, `EXE_TGEU_OP: begin
                    if (~reg1_lt_reg2) begin
                        trapassert <= `TrapAssert;
                    end
                end
                `EXE_TLT_OP, `EXE_TLTI_OP, `EXE_TLTIU_OP, `EXE_TLTU_OP: begin
                    if (reg1_lt_reg2) begin
                        trapassert <= `TrapAssert;
                    end
                end
                `EXE_TNE_OP, `EXE_TNEI_OP: begin
                    if (reg1_i != reg2_i) begin
                        trapassert <= `TrapAssert;
                    end                    
                end
                default: begin
                    trapassert <= `TrapNotAssert;
                end
            endcase // aluop_i
        end
    end

    // overflow
    always @ (*) begin
        if (((aluop_i == `EXE_ADD_OP) || (aluop_i == `EXE_ADDI_OP) || (aluop_i == `EXE_SUB_OP)) && (ov_sum == 1'b1)) begin
            wreg_o <= `WriteDisable;
            ovassert <= 1'b1;
        end else begin
            wreg_o <= wreg_i;
            ovassert <= 1'b0;
        end
    end

endmodule // ex