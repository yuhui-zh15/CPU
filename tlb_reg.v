`include "defines.v"

module tlb_reg(
    input wire clk,
    input wire rst,
    input wire[`RegBus] addr_i,

    output reg tlb_hit, // whether tlb success
    output reg[`RegBus] addr_o
    
);

	reg[`TlbBus] virtual_address[0:15]; // virtual_address
	reg[`TlbBus] physical_address[0:15]; // physical_address
	reg[3:0] i;

	wire[`TlbBus] virtual_page_number = addr_i[31:12]; 

    always @ (*) begin
        if (rst == `RstDisable) begin
            tlb_hit <= 1'b0;
            addr_o <= `ZeroWord;
        end else begin
        	tlb_hit <= 1'b0;
        	addr_o <= `ZeroWord;
        	for (i = 0; i < 16; i = i + 1) begin
        		if (virtual_page_number == virtual_address[i]) begin
        			tlb_hit <= 1'b1;
        			addr_o <= {physical_address[i], addr_i[11:0]};
        		end
        	end
        end
    end

endmodule // tlb_reg