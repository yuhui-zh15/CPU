`include "defines.v"

module openmips(
    input wire clk,
    input wire rst,

    input wire[`RegBus] rom_data_i,
    output wire[`RegBus] rom_addr_o,
    output wire rom_ce_o,

    input wire[`RegBus] ram_data_i,
    output wire[`RegBus] ram_addr_o,
    output wire[`RegBus] ram_data_o,
    output wire ram_we_o,
    output wire[3:0] ram_sel_o,
    output wire ram_ce_o
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

    // Connect id_ex to ex
    wire[`AluOpBus] ex_aluop_i;
    wire[`AluSelBus] ex_alusel_i;
    wire[`RegBus] ex_reg1_i;
    wire[`RegBus] ex_reg2_i;
    wire ex_wreg_i;
    wire[`RegAddrBus] ex_wd_i;
    wire[`RegBus] ex_inst_i;

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

    // Connect mem to mem_wb
    wire mem_wreg_o;
    wire[`RegAddrBus] mem_wd_o;
    wire[`RegBus] mem_wdata_o;
    wire[`RegBus] mem_hi_o;
    wire[`RegBus] mem_lo_o;
    wire mem_whilo_o;

    // Connect mem_wb to rewrite
    wire wb_wreg_i;
    wire[`RegAddrBus] wb_wd_i;
    wire[`RegBus] wb_wdata_i;
    wire[`RegBus] wb_hi_i;
    wire[`RegBus] wb_lo_i;
    wire wb_whilo_i;

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

    // pc_reg
    pc_reg pc_reg0(
        .clk(clk),
        .rst(rst),
        .stall(stall),
        .pc(pc),
        .ce(rom_ce_o),
        .branch_flag_i(id_branch_flag_o),
        .branch_target_addr_i(id_branch_target_addr_o)
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
        .id_inst(id_inst_i)
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
        .is_in_delay_slot_o(id_is_in_delay_slot_o)
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
        .is_in_delay_slot_o(id_is_in_delay_slot_i)
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
        .link_addr_i(ex_link_addr_i)
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
        .mem_reg2(mem_reg2_i)
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
        .mem_ce_o(ram_ce_o)
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
        .wb_whilo(wb_whilo_i)
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
        .stall(stall)
    );

endmodule // openmips
