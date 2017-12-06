`include "defines.v"

module ram(
    input wire clk,
    input wire ce,
    input wire we,
    input wire[19:0] addr,
    input wire[3:0] sel,
    inout wire[31:0] data
);
    reg[31:0] data_mem[0:1048576];

    initial $readmemh ("inst_rom.data", data_mem);


    always @(posedge clk) begin
        if (ce == `ChipDisable) begin
            
        end else if (we == `WriteEnable) begin
            if (sel[3] == 1'b1) begin
                data_mem[addr][31:24] <= data[31:24]; 
            end
            if (sel[2] == 1'b1) begin
                data_mem[addr][23:16] <= data[23:16]; 
            end
            if (sel[1] == 1'b1) begin
                data_mem[addr][15:8] <= data[15:8]; 
            end
            if (sel[0] == 1'b1) begin
                data_mem[addr][7:0] <= data[7:0]; 
            end
        end
    end

    assign data = we? 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz: data_mem[addr];

endmodule // data_ram