`include "defines.v"

module cp0_reg(

	input wire clk,
	input wire rst,

	input wire we_i,
	input wire[4:0] waddr_i,
	input wire[4:0] raddr_i,
	input wire[`RegBus] data_i,

	input wire[5:0] int_i,

	output reg[`RegBus] data_o,
	output reg[`RegBus] count_o,
	output reg[`RegBus] compare_o,
	output reg[`RegBus] status_o,
	output reg[`RegBus] cause_o,
	output reg[`RegBus] epc_o,
	output reg[`RegBus] config_o,
	output reg[`RegBus] prid_o,

	output reg timer_int_o // whether exception happening

); 

// Operation for read

	always @ (posedge clk) begin
		if (rst == `RstEnable) begin
			count_o <= `ZeroWord;
			compare_o <= `ZeroWord;
			status_o <= 32'b00010000000000000000000000000000;
			cause_o <= `ZeroWord;
			epc_o <= `ZeroWord;
			config_o <= 32'b00000000000000001000000000000000;
			prid_o <= 32'b00000000010011000000000000000000;
			timer_int_o <= `InterruptNotAssert;
		end else begin

			count_o <= count_o + 1;
			cause_o[15:10] <= int_i;

			// clock interrupt
			if (compare_o != `ZeroWord && count_o == compare_o) begin
				timer_int_o <= `InterruptAssert;
			end // if (compare_o != `ZeroWord && count_o == compare_o)

			if (we_i == `WriteEnable) begin
				case (waddr_i)
					`CP0_REG_COUNT: begin
						count_o <= data_i;
					end
					`CP0_REG_COMPARE: begin
						compare_o <= data_i;
						timer_int_o <= `InterruptNotAssert;
					end
					`CP0_REG_STATUS: begin
						status_o <= data_i;
					end
					`CP0_REG_EPC: begin
						epc_o <= data_i;
					end
					`CP0_REG_CAUSE: begin
						cause_o[9:8] <= data_i[9:8];
						cause_o[23:22] <= data_i[23:22];
					end
				endcase // waddr_i
			end // if (we_i == `WriteEnable)

		end // if (rst == `RstEnable)
	end // always @ (posedge clk)

// Operation for write

	always @ (*) begin
		if (rst == `RstEnable) begin
			data_o <= `ZeroWord;
		end else begin
			case (raddr_i)
				`CP0_REG_COUNT: begin
					data_o <= count_o;
				end
				`CP0_REG_COMPARE: begin
					data_o <= compare_o;
				end
				`CP0_REG_STATUS: begin
					data_o <= status_o;
				end
				`CP0_REG_CAUSE: begin
					data_o <= cause_o;
				end
				`CP0_REG_EPC: begin
					data_o <= epc_o;
				end
				`CP0_REG_PRId: begin
					data_o <= prid_o;
				end
				`CP0_REG_CONFIG: begin
					data_o <= config_o;
				end
				default: begin
				end
			endcase // raddr_i
		end
	end

endmodule // cp0_reg