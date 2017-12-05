`include "defines.v"

module thinpad_min_sopc();

    wire [31:0] ram_data;
    wire [31:0] ram_addr;
    wire ram_be_n;
    wire ram_ce_n;
    wire ram_we_n;
    wire [5:0] touch_btn;

    reg clk;
    reg rst;

    initial begin
        clk = 1'b0;
        forever #10 clk = ~clk; 
    end

    initial begin
        rst = 1'b1;
        #195 rst = 1'b0;
        #5000000 $stop; 
    end

    assign touch_btn = {rst, 5'b00000};

    thinpad_top thinpad_top0(
        .clk_in(clk),
        .clk_uart_in(clk),
        .touch_btn(touch_btn),
        .base_ram_data(ram_data),
        .base_ram_addr(ram_addr),
        .base_ram_be_n(ram_be_n),
        .base_ram_we_n(ram_we_n),
        .base_ram_ce_n(ram_ce_n)

    );

    ram ram0(
        .clk(clk),
        .we(~ram_we_n),
        .addr(ram_addr),
        .sel(~ram_be_n),
        .data(ram_data),
        .ce(~ram_ce_n)   
    );

endmodule // openmips_min_sopc