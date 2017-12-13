// inout wire[31:0] ram_data;
// output reg[19:0] ram_addr;
// output reg[3:0] ram_be_n;
// output reg ram_ce_n;
// output reg ram_oe_n;
// output reg ram_we_n;

module ram(
    input wire clk,
    input wire ce,
    input wire we,
    input wire oe,
    input wire[19:0] addr,
    input wire[3:0] be,
    inout wire[31:0] data
);
    reg[31:0] data_ram[0:1048575];
    
    // initial $readmemh ("ram.data", data_ram);

    assign oe = 1'b0;

    always @(posedge clk) begin
        if (ce == 1'b1) begin
            
        end else if (we == 1'b0) begin
            if (be[3] == 1'b0) begin
                data_ram[addr][7:0] <= data[31:24]; 
            end
            if (be[2] == 1'b0) begin
                data_ram[addr][15:8] <= data[23:16]; 
            end
            if (be[1] == 1'b0) begin
                data_ram[addr][23:16] <= data[15:8]; 
            end
            if (be[0] == 1'b0) begin
                data_ram[addr][31:24] <= data[7:0]; 
            end
        end
    end

    assign data = we? { data_ram[addr][7:0], data_ram[addr][15:8], data_ram[addr][23:16], data_ram[addr][31:24] }: 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;

endmodule // data_ram