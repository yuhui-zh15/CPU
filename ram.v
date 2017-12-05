`include "defines.v"

module ram(
    input wire clk,
    input wire ce,
    input wire we,
    input wire[`DataAddrBus] addr,
    input wire[3:0] sel,
    inout wire[`DataBus] data
);
    reg[31:0] data_mem[0:`DataMemNum-1];

    initial $readmemh ("inst_rom.data", data_mem);


    always @(posedge clk) begin
        if (ce == `ChipDisable) begin
            
        end else if (we == `WriteEnable) begin
            if (sel[3] == 1'b1) begin
                data_mem[addr[`DataMemNumLog2+1:2]][31:24] <= data[31:24]; 
            end
            if (sel[2] == 1'b1) begin
                data_mem[addr[`DataMemNumLog2+1:2]][23:16] <= data[23:16]; 
            end
            if (sel[1] == 1'b1) begin
                data_mem[addr[`DataMemNumLog2+1:2]][15:8] <= data[15:8]; 
            end
            if (sel[0] == 1'b1) begin
                data_mem[addr[`DataMemNumLog2+1:2]][7:0] <= data[7:0]; 
            end
        end
    end

    assign data = we? 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz: data_mem[addr[`DataMemNumLog2+1:2]];

endmodule // data_ram