`include "defines.v"

module tlb_reg(
    input wire clk,
    input wire rst,
    input wire[`RegBus] addr_i,

    input wire[`RegBus] inst_i,

    input wire[`RegBus] index_i,
    input wire[`RegBus] random_i,
    input wire[`RegBus] entrylo0_i,
    input wire[`RegBus] entrylo1_i,
    input wire[`RegBus] entryhi_i,

    output reg tlb_hit, // whether tlb success
    output reg[`RegBus] addr_o
    
);

	reg[`TlbBus] regs[0:15];
	
	always @(posedge clk) begin
		if (rst == `RstDisable) begin
		end else begin
			// TLBWI
			if (inst_i == 32'b01000010000000000000000000000010) begin
				regs[index_i[3:0]] = {entryhi_i, entrylo0_i, entrylo1_i};
			end
			// TLBWR
			if (inst_i == 32'b01000010000000000000000000000110) begin
				regs[random_i[3:0]] = {entryhi_i, entrylo0_i, entrylo1_i};
			end
		end
	end

    always @ (*) begin
        if (rst == `RstDisable) begin
            tlb_hit <= 1'b0;
            addr_o <= `ZeroWord;
        end else begin
        	tlb_hit <= 1'b0;
        	addr_o <= `ZeroWord;

        	if (addr_i >= 8'h80000000 && addr_i <= 8'h9fffffff) begin

        		tlb_hit <= 1'b1;
        		addr_o <= {1'b0, addr_i[30:0]};

        	end else if (addr_i >= 8'ha0000000 && addr_i <= 8'hbfffffff) begin

        		tlb_hit <= 1'b1;
        		addr_o <= {3'b0, addr_i[28:0]};

        	end else begin

	        	if (regs[0][95:77] == addr_i[31:13] && regs[0][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[0][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[0][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[0][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[0][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[1][95:77] == addr_i[31:13] && regs[1][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[1][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[1][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[1][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[1][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[2][95:77] == addr_i[31:13] && regs[2][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[2][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[2][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[2][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[2][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[3][95:77] == addr_i[31:13] && regs[3][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[3][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[3][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[3][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[3][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[4][95:77] == addr_i[31:13] && regs[4][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[4][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[4][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[4][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[4][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[5][95:77] == addr_i[31:13] && regs[5][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[5][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[5][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[5][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[5][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[6][95:77] == addr_i[31:13] && regs[6][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[6][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[6][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[6][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[6][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[7][95:77] == addr_i[31:13] && regs[7][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[7][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[7][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[7][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[7][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[8][95:77] == addr_i[31:13] && regs[8][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[8][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[8][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[8][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[8][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[9][95:77] == addr_i[31:13] && regs[9][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[9][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[9][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[9][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[9][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[10][95:77] == addr_i[31:13] && regs[10][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[10][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[10][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[10][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[10][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[11][95:77] == addr_i[31:13] && regs[11][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[11][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[11][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[11][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[11][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[12][95:77] == addr_i[31:13] && regs[12][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[12][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[12][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[12][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[12][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[13][95:77] == addr_i[31:13] && regs[13][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[13][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[13][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[13][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[13][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[14][95:77] == addr_i[31:13] && regs[14][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[14][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[14][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[14][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[14][25:6], addr_i[11:0]};
	        		end
	        	end

	        	if (regs[15][95:77] == addr_i[31:13] && regs[15][71:64] == entryhi_i[7:0]) begin
	        		if (addr_i[12] == 1'b0 && regs[15][33] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[15][57:38], addr_i[11:0]};
	        		end
	        		if (addr_i[12] == 1'b1 && regs[15][1] == 1'b1) begin
	        			tlb_hit <= 1'b1;
	        			addr_o <= {regs[15][25:6], addr_i[11:0]};
	        		end
	        	end
	        end

        end
    end

endmodule // tlb_reg