`include "defines.v"

module openmips(
    input wire clk,
    input wire rst,

    input wire[5:0] int_i,

    input wire[`RegBus] rom_data_i,
    output wire[`RegBus] rom_addr_o,
    output wire rom_ce_o,

    input wire[`RegBus] ram_data_i,
    output wire[`RegBus] ram_addr_o,
    output wire[`RegBus] ram_data_o,
    output wire ram_we_o,
    output wire[3:0] ram_sel_o,
    output wire ram_ce_o,

    output wire timer_int_o
);

    wire[`InstAddrBus] pc;
    wire[`InstAddrBus] id_pc_i;
    wire[`InstBus] id_inst_i;

    // Connect id to id_ex
    wire[`AluOpBus] id_aluop_o;
    wire[`AluSelBus] id_alusel_o;
    wire[`RegBus] id_reg1_o;
    wire[`RegBus] id_reg2_o;
    wire id_wreg_o;
    wire[`RegAddrBus] id_wd_o;
    wire[`RegBus] id_inst_o;
    wire[31:0] id_excepttype_o;
    wire[`RegBus] id_current_inst_address_o;

    // Connect id_ex to ex
    wire[`AluOpBus] ex_aluop_i;
    wire[`AluSelBus] ex_alusel_i;
    wire[`RegBus] ex_reg1_i;
    wire[`RegBus] ex_reg2_i;
    wire ex_wreg_i;
    wire[`RegAddrBus] ex_wd_i;
    wire[`RegBus] ex_inst_i;
    wire[31:0] ex_excepttype_i;
    wire[`RegBus] ex_current_inst_address_i;

    // Connect ex to ex_mem
    wire ex_wreg_o;
    wire[`RegAddrBus] ex_wd_o;
    wire[`RegBus] ex_wdata_o;
    wire[`RegBus] ex_hi_o;
    wire[`RegBus] ex_lo_o;
    wire ex_whilo_o;
    wire[`AluOpBus] ex_aluop_o;
	wire[`RegBus] ex_mem_addr_o;
	wire[`RegBus] ex_reg1_o;
	wire[`RegBus] ex_reg2_o;	
    wire ex_cp0_reg_we_o;
    wire[4:0] ex_cp0_reg_write_addr_o;
    wire[`RegBus] ex_cp0_reg_data_o;
    wire[31:0] ex_excepttype_o;
    wire[`RegBus] ex_current_inst_address_o;
    wire ex_is_in_delay_slot_o;

    // Connect ex_mem to mem
    wire mem_wreg_i;
    wire[`RegAddrBus] mem_wd_i;
    wire[`RegBus] mem_wdata_i;
    wire[`RegBus] mem_hi_i;
    wire[`RegBus] mem_lo_i;
    wire mem_whilo_i;
    wire[`AluOpBus] mem_aluop_i;
    wire[`RegBus] mem_mem_addr_i;
    wire[`RegBus] mem_reg1_i;
    wire[`RegBus] mem_reg2_i;
    wire mem_cp0_reg_we_i;
    wire[4:0] mem_cp0_reg_write_addr_i;
    wire[`RegBus] mem_cp0_reg_data_i;
    wire[31:0] mem_excepttype_i;
    wire[`RegBus] mem_current_inst_address_i;
    wire mem_is_in_delay_slot_i;

    // Connect mem to mem_wb
    wire mem_wreg_o;
    wire[`RegAddrBus] mem_wd_o;
    wire[`RegBus] mem_wdata_o;
    wire[`RegBus] mem_hi_o;
    wire[`RegBus] mem_lo_o;
    wire mem_whilo_o;
    wire mem_cp0_reg_we_o;
    wire[4:0] mem_cp0_reg_write_addr_o;
    wire[`RegBus] mem_cp0_reg_data_o;
    wire[31:0] mem_excepttype_o;
    wire[`RegBus] mem_current_inst_address_o;
    wire mem_is_in_delay_slot_o;

    // Connect mem_wb to rewrite
    wire wb_wreg_i;
    wire[`RegAddrBus] wb_wd_i;
    wire[`RegBus] wb_wdata_i;
    wire[`RegBus] wb_hi_i;
    wire[`RegBus] wb_lo_i;
    wire wb_whilo_i;
    wire wb_cp0_reg_we_i;
    wire[4:0] wb_cp0_reg_write_addr_i;
    wire[`RegBus] wb_cp0_reg_data_i;

    // Connect id to regfile
    wire reg1_read;
    wire reg2_read;
    wire[`RegBus] reg1_data;
    wire[`RegBus] reg2_data;
    wire[`RegAddrBus] reg1_addr;
    wire[`RegAddrBus] reg2_addr;

    wire[`RegBus] hi;
    wire[`RegBus] lo;

    wire[5:0] stall;
    wire stallreq_from_id;
    wire stallreq_from_ex;
    
    // B&J
    wire id_is_in_delay_slot_i;
    wire id_next_inst_in_delay_slot_o;
    wire id_branch_flag_o;
    wire[`RegBus] id_branch_target_addr_o;
    wire[`RegBus] id_link_addr_o;
    wire id_is_in_delay_slot_o;
    wire ex_is_in_delay_slot_i;
    wire[`RegBus] ex_link_addr_i;

    // CP0
    wire[`RegBus] cp0_data_o;
    wire[4:0] cp0_raddr_i;


    wire[`RegBus]   cp0_count;
    wire[`RegBus]   cp0_compare;
    wire[`RegBus]   cp0_status;
    wire[`RegBus]   cp0_cause;
    wire[`RegBus]   cp0_epc;
    wire[`RegBus]   cp0_config;
    wire[`RegBus]   cp0_prid; 
    wire[`RegBus]   cp0_index; 
    wire[`RegBus]   cp0_entrylo0; 
    wire[`RegBus]   cp0_entrylo1; 
    wire[`RegBus]   cp0_badvaddr;
    wire[`RegBus]   cp0_entryhi;
    wire[`RegBus]   cp0_random;
    wire[`RegBus]   cp0_pagemask;

    wire[`RegBus] latest_epc;

    // Exception
    wire flush;
    wire[`RegBus] new_pc;

    // pc_reg
    pc_reg pc_reg0(
        .clk(clk),
        .rst(rst),
        .stall(stall),
        .pc(pc),
        .ce(rom_ce_o),
        .branch_flag_i(id_branch_flag_o),
        .branch_target_addr_i(id_branch_target_addr_o),
        .flush(flush),
        .new_pc(new_pc)
    );

    assign rom_addr_o = pc;

    // if_id
    if_id if_id0(
        .clk(clk),
        .rst(rst),
        .stall(stall),
        .if_pc(pc),
        .if_inst(rom_data_i),
        .id_pc(id_pc_i),
        .id_inst(id_inst_i),
        .flush(flush)
    );

    // id
    id id0(
        .rst(rst),
        .pc_i(id_pc_i),
        .inst_i(id_inst_i),
        // To regfile
        .reg1_data_i(reg1_data),
        .reg2_data_i(reg2_data),
        .reg1_read_o(reg1_read),
        .reg2_read_o(reg2_read),
        .reg1_addr_o(reg1_addr),
        .reg2_addr_o(reg2_addr),
        // To id_ex
        .aluop_o(id_aluop_o),
        .alusel_o(id_alusel_o),
        .reg1_o(id_reg1_o),
        .reg2_o(id_reg2_o),
        .wd_o(id_wd_o),
        .wreg_o(id_wreg_o),
        .inst_o(id_inst_o),
        // From ex
        .ex_wdata_i(ex_wdata_o),
        .ex_wd_i(ex_wd_o),
        .ex_wreg_i(ex_wreg_o),
        .ex_aluop_i(ex_aluop_o),
        // From mem
        .mem_wdata_i(mem_wdata_o),
        .mem_wd_i(mem_wd_o),
        .mem_wreg_i(mem_wreg_o),

        .stallreq(stallreq_from_id),
        // B&J
        .is_in_delay_slot_i(id_is_in_delay_slot_i),
        .next_inst_in_delay_slot_o(id_next_inst_in_delay_slot_o),
        .branch_flag_o(id_branch_flag_o),
        .branch_target_addr_o(id_branch_target_addr_o),
        .link_addr_o(id_link_addr_o),
        .is_in_delay_slot_o(id_is_in_delay_slot_o),
        // Exception
        .excepttype_o(id_excepttype_o),
        .current_inst_address_o   (id_current_inst_address_o)
    );

    // reg
    regfile regfile1(
        .clk(clk),
        .rst(rst),
        .we(wb_wreg_i),
        .waddr(wb_wd_i),
        .wdata(wb_wdata_i),
        .re1(reg1_read),
        .raddr1(reg1_addr),
        .rdata1(reg1_data),
        .re2(reg2_read),
        .raddr2(reg2_addr),
        .rdata2(reg2_data)
    );

    // id_ex
    id_ex id_ex0(
        .clk(clk),
        .rst(rst),
        .stall(stall),
        // From id
        .id_aluop(id_aluop_o),
        .id_alusel(id_alusel_o),
        .id_reg1(id_reg1_o),
        .id_reg2(id_reg2_o),
        .id_wd(id_wd_o),
        .id_wreg(id_wreg_o),
        .id_inst(id_inst_o),
        // To ex
        .ex_aluop(ex_aluop_i),
        .ex_alusel(ex_alusel_i),
        .ex_reg1(ex_reg1_i),
        .ex_reg2(ex_reg2_i),
        .ex_wd(ex_wd_i),
        .ex_wreg(ex_wreg_i),
        .ex_inst(ex_inst_i),
        // B&J
        .id_link_addr(id_link_addr_o),
        .id_is_in_delay_slot(id_is_in_delay_slot_o),
        .next_inst_in_delay_slot_i(id_next_inst_in_delay_slot_o),
        .ex_link_addr(ex_link_addr_i),
        .ex_is_in_delay_slot(ex_is_in_delay_slot_i),
        .is_in_delay_slot_o(id_is_in_delay_slot_i),
        // Exception
        .flush                    (flush),
        .id_excepttype            (id_excepttype_o),
        .id_current_inst_address  (id_current_inst_address_o),
        .ex_excepttype            (ex_excepttype_i),
        .ex_current_inst_address  (ex_current_inst_address_i)
    );

    // ex
    ex ex0(
        .rst(rst),
        // To ex
        .aluop_i(ex_aluop_i),
        .alusel_i(ex_alusel_i),
        .reg1_i(ex_reg1_i),
        .reg2_i(ex_reg2_i),
        .wd_i(ex_wd_i),
        .wreg_i(ex_wreg_i),
        .hi_i(hi),
        .lo_i(lo),
        .inst_i(ex_inst_i),
        .wb_hi_i(wb_hi_i), // Caution!
        .wb_lo_i(wb_lo_i), 
        .wb_whilo_i(wb_whilo_i),
        .mem_hi_i(mem_hi_o),
        .mem_lo_i(mem_lo_o),
        .mem_whilo_i(mem_whilo_o),
        // To ex_mem
        .wd_o(ex_wd_o),
        .wreg_o(ex_wreg_o),
        .wdata_o(ex_wdata_o),
        .hi_o(ex_hi_o),
        .lo_o(ex_lo_o),
        .whilo_o(ex_whilo_o),
        .aluop_o(ex_aluop_o),
        .mem_addr_o(ex_mem_addr_o),
        .reg2_o(ex_reg2_o),

        .stallreq(stallreq_from_ex),
        // B&J
        .is_in_delay_slot_i(ex_is_in_delay_slot_i),
        .link_addr_i(ex_link_addr_i),
        // CP0
        .cp0_reg_data_o(ex_cp0_reg_data_o),
        .cp0_reg_write_addr_o(ex_cp0_reg_write_addr_o),
        .cp0_reg_we_o(ex_cp0_reg_we_o),
        .cp0_reg_data_i(cp0_data_o),
        .cp0_reg_read_addr_o(cp0_raddr_i),
        .wb_cp0_reg_data(wb_cp0_reg_data_i),
        .wb_cp0_reg_write_addr(wb_cp0_reg_write_addr_i),
        .wb_cp0_reg_we(wb_cp0_reg_we_i),
        .mem_cp0_reg_data(mem_cp0_reg_data_o),
        .mem_cp0_reg_write_addr(mem_cp0_reg_write_addr_o),
        .mem_cp0_reg_we(mem_cp0_reg_we_o),
        // Exception
        .excepttype_i          (ex_excepttype_i),
        .current_inst_address_i(ex_current_inst_address_i),
        .excepttype_o          (ex_excepttype_o),
        .current_inst_address_o(ex_current_inst_address_o),
        .is_in_delay_slot_o    (ex_is_in_delay_slot_o)
    );

    // ex_mem
    ex_mem ex_mem0(
        .clk(clk),
        .rst(rst),
        .stall(stall),
        // From ex
        .ex_wd(ex_wd_o),
        .ex_wreg(ex_wreg_o),
        .ex_wdata(ex_wdata_o),
        .ex_hi(ex_hi_o),
        .ex_lo(ex_lo_o),
        .ex_whilo(ex_whilo_o),
        .ex_aluop(ex_aluop_o),
        .ex_mem_addr(ex_mem_addr_o),
        .ex_reg2(ex_reg2_o),
        // To mem
        .mem_wd(mem_wd_i),
        .mem_wreg(mem_wreg_i),
        .mem_wdata(mem_wdata_i),
        .mem_hi(mem_hi_i),
        .mem_lo(mem_lo_i),
        .mem_whilo(mem_whilo_i),
        .mem_aluop(mem_aluop_i),
        .mem_mem_addr(mem_mem_addr_i),
        .mem_reg2(mem_reg2_i),
        // CP0
        .ex_cp0_reg_data(ex_cp0_reg_data_o),
        .ex_cp0_reg_write_addr(ex_cp0_reg_write_addr_o),
        .ex_cp0_reg_we(ex_cp0_reg_we_o),
        .mem_cp0_reg_data(mem_cp0_reg_data_i),
        .mem_cp0_reg_write_addr(mem_cp0_reg_write_addr_i),
        .mem_cp0_reg_we(mem_cp0_reg_we_i),
        // Exception
        .flush                   (flush),
        .ex_excepttype           (ex_excepttype_o),
        .ex_current_inst_address (ex_current_inst_address_o),
        .ex_is_in_delay_slot     (ex_is_in_delay_slot_o),
        .mem_excepttype          (mem_excepttype_i),
        .mem_current_inst_address(mem_current_inst_address_i),
        .mem_is_in_delay_slot    (mem_is_in_delay_slot_i)
    );

    // mem
    mem mem0(
        .rst(rst),
        // From ex_mem
        .wd_i(mem_wd_i),
        .wreg_i(mem_wreg_i),
        .wdata_i(mem_wdata_i),
        .hi_i(mem_hi_i),
        .lo_i(mem_lo_i),
        .whilo_i(mem_whilo_i),
        .aluop_i(mem_aluop_i),
        .mem_addr_i(mem_mem_addr_i),
        .reg2_i(mem_reg2_i),
        // To mem_wb
        .wd_o(mem_wd_o),
        .wreg_o(mem_wreg_o),
        .wdata_o(mem_wdata_o),
        .hi_o(mem_hi_o),
        .lo_o(mem_lo_o),
        .whilo_o(mem_whilo_o),
        // L&S
        .mem_data_i(ram_data_i),
        .mem_addr_o(ram_addr_o),
        .mem_we_o(ram_we_o),
        .mem_sel_o(ram_sel_o),
        .mem_data_o(ram_data_o),
        .mem_ce_o(ram_ce_o),
        // CP0
        .cp0_reg_data_i(mem_cp0_reg_data_i),
        .cp0_reg_write_addr_i(mem_cp0_reg_write_addr_i),
        .cp0_reg_we_i(mem_cp0_reg_we_i),
        .cp0_reg_data_o(mem_cp0_reg_data_o),
        .cp0_reg_write_addr_o(mem_cp0_reg_write_addr_o),
        .cp0_reg_we_o(mem_cp0_reg_we_o),
        // Exception
        .excepttype_i          (mem_excepttype_i),
        .current_inst_address_i(mem_current_inst_address_i),
        .is_in_delay_slot_i    (mem_is_in_delay_slot_i),
        .cp0_status_i          (cp0_status),
        .cp0_cause_i           (cp0_cause),
        .cp0_epc_i             (cp0_epc),
        .wb_cp0_reg_we         (wb_cp0_reg_we_i),
        .wb_cp0_reg_data       (wb_cp0_reg_data_i),
        .wb_cp0_reg_write_addr (wb_cp0_reg_write_addr_i),
        .cp0_epc_o             (latest_epc),
        .excepttype_o          (mem_excepttype_o),
        .current_inst_address_o(mem_current_inst_address_o),
        .is_in_delay_slot_o    (mem_is_in_delay_slot_o)
    );

    // mem_wb
    mem_wb mem_wb0(
        .clk(clk),
        .rst(rst),
        .stall(stall),
        // From mem
        .mem_wd(mem_wd_o),
        .mem_wreg(mem_wreg_o),
        .mem_wdata(mem_wdata_o),
        .mem_hi(mem_hi_o),
        .mem_lo(mem_lo_o),
        .mem_whilo(mem_whilo_o),
        // To wb
        .wb_wd(wb_wd_i),
        .wb_wreg(wb_wreg_i),
        .wb_wdata(wb_wdata_i),
        .wb_hi(wb_hi_i),
        .wb_lo(wb_lo_i),
        .wb_whilo(wb_whilo_i),
        // CP0
        .mem_cp0_reg_data(mem_cp0_reg_data_o),
        .mem_cp0_reg_write_addr(mem_cp0_reg_write_addr_o),
        .mem_cp0_reg_we(mem_cp0_reg_we_o),
        .wb_cp0_reg_data(wb_cp0_reg_data_i),
        .wb_cp0_reg_write_addr(wb_cp0_reg_write_addr_i),
        .wb_cp0_reg_we(wb_cp0_reg_we_i),
        // Exception
        .flush                 (flush)
    );

    // hilo_reg
    hilo_reg hilo_reg0(
        .clk(clk),
        .rst(rst),
        // From wb
        .we(wb_whilo_i),
        .hi_i(wb_hi_i),
        .lo_i(wb_lo_i),
        // To others
        .hi_o(hi),
        .lo_o(lo)
    );

    // ctrl0
    ctrl ctrl0(
        .rst(rst),
        .stallreq_from_id(stallreq_from_id),
        .stallreq_from_ex(stallreq_from_ex),
        .stall(stall),
        // Exception
        .flush           (flush),
        .new_pc          (new_pc),
        .cp0_epc_i       (latest_epc),
        .excepttype_i    (mem_excepttype_o)
    );

    // cp0
    cp0_reg cp0_reg0(
        .rst(rst),
        .clk(clk),

        .int_i(int_i),
        .timer_int_o(timer_int_o),

        .data_i(wb_cp0_reg_data_i),
        .waddr_i(wb_cp0_reg_write_addr_i),
        .raddr_i(cp0_raddr_i),
        .we_i(wb_cp0_reg_we_i),
        .data_o(cp0_data_o),

        .count_o(cp0_count),
        .compare_o(cp0_compare),
        .status_o(cp0_status),
        .cause_o(cp0_cause),
        .epc_o(cp0_epc),
        .config_o(cp0_config),
        .prid_o(cp0_prid),

        // MMU/TLB
        .index_o            (cp0_index),
        .entrylo0_o         (cp0_entrylo0),
        .entrylo1_o         (cp0_entrylo1),
        .pagemask_o         (cp0_pagemask),
        .badvaddr_o         (cp0_badvaddr),
        .entryhi_o          (cp0_entryhi),
        .random_o           (cp0_random),

        //Exception
        .excepttype_i       (mem_excepttype_o),
        .current_inst_addr_i(mem_current_inst_address_o),
        .is_in_delay_slot_i (mem_is_in_delay_slot_o)

    );

endmodule // openmips
