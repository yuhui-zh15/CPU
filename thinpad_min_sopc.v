`include "defines.v"
`timescale 1ns/1ps

module thinpad_min_sopc();

    wire [31:0] ram_data;
    wire [19:0] ram_addr;
    wire [3:0] ram_be_n;
    wire ram_ce_n;
    wire ram_we_n;
    wire [5:0] touch_btn;
    wire [22:0] flash_addr;
    wire [15:0] flash_data;

    reg clk;
    reg clk_25;
    reg CLOCK_11059200;
    reg rst;

    initial begin
        clk = 1'b0; 
        forever #10 clk = ~clk; 
    end
    initial begin
        clk_25 = 1'b0;
        forever #20 clk_25 = ~clk_25;
    end
    initial begin
        CLOCK_11059200 = 1'b0;
        forever #45.211227 CLOCK_11059200 = ~CLOCK_11059200;
    end

    initial begin
        rst = 1'b1;
        #195 rst = 1'b0;
        #50000000 $stop; 
    end

    assign touch_btn = {rst, 5'b00000};

    thinpad_top thinpad_top0(
        .clk_in(clk),
        .clk_uart_in(CLOCK_11059200),
        .touch_btn(touch_btn),
        .base_ram_data(ram_data),
        .base_ram_addr(ram_addr),
        .base_ram_be_n(ram_be_n),
        .base_ram_we_n(ram_we_n),
        .base_ram_ce_n(ram_ce_n),
        .flash_data(flash_data),
        .flash_a(flash_addr)

    );
    
    flash flash0(
        .clk(clk),
        .a(flash_addr[22:1]),
        .data(flash_data)
    );

    ram ram0(
        .clk(clk),
        .we(ram_we_n),
        .addr(ram_addr),
        .be(ram_be_n),
        .data(ram_data),
        .ce(ram_ce_n)   
    );

endmodule // openmips_min_sopc