`default_nettype none

module thinpad_top(/*autoport*/
//inout
    base_ram_data,
    ext_ram_data,
    flash_data,
    sl811_data,
    dm9k_data,
//output
    uart_rdn,
    uart_wrn,
    base_ram_addr,
    base_ram_be_n,
    base_ram_ce_n,
    base_ram_oe_n,
    base_ram_we_n,
    ext_ram_addr,
    ext_ram_be_n,
    ext_ram_ce_n,
    ext_ram_oe_n,
    ext_ram_we_n,
    txd,
    flash_a,
    flash_rp_n,
    flash_vpen,
    flash_oe_n,
    flash_ce_n,
    flash_byte_n,
    flash_we_n,
    sl811_a0,
    sl811_we_n,
    sl811_rd_n,
    sl811_cs_n,
    sl811_rst_n,
    sl811_drq,
    dm9k_cmd,
    dm9k_we_n,
    dm9k_rd_n,
    dm9k_cs_n,
    dm9k_rst_n,
    leds,
    video_pixel,
    video_hsync,
    video_vsync,
    video_clk,
    video_de,
//input
    clk_in,
    clk_uart_in,
    uart_dataready,
    uart_tbre,
    uart_tsre,
    rxd,
    sl811_dack,
    sl811_int,
    dm9k_int,
    dip_sw,
    touch_btn);

input wire clk_in; //50MHz main clock input
input wire clk_uart_in; //11.0592MHz clock for UART

//UART controller signals
output wire uart_rdn;
output wire uart_wrn;
input wire uart_dataready;
input wire uart_tbre;
input wire uart_tsre;

//Base memory signals, a.k.a. RAM1
inout wire[31:0] base_ram_data; // [7:0] also connected to CPLD
output reg[19:0] base_ram_addr;
output reg[3:0] base_ram_be_n;
output reg base_ram_ce_n;
output reg base_ram_oe_n;
output reg base_ram_we_n;

//Extension memory signals
inout wire[31:0] ext_ram_data;
output reg[19:0] ext_ram_addr;
output reg[3:0] ext_ram_be_n;
output reg ext_ram_ce_n;
output reg ext_ram_oe_n;
output reg ext_ram_we_n;

//Ext serial port signals
output wire txd;
input wire rxd;

//Flash memory, JS28F640
output reg[22:0] flash_a;
output reg flash_rp_n;
output wire flash_vpen; // ???
output reg flash_oe_n;
inout wire[15:0] flash_data;
output reg flash_ce_n;
output reg flash_byte_n;
output reg flash_we_n;

//SL811 USB controller signals
output wire sl811_a0;
inout wire[7:0] sl811_data;
output wire sl811_we_n;
output wire sl811_rd_n;
output wire sl811_cs_n;
output wire sl811_rst_n;
input wire sl811_dack;
input wire sl811_int;
output wire sl811_drq;

//DM9000 Ethernet controller signals
output wire dm9k_cmd;
inout wire[15:0] dm9k_data;
output wire dm9k_we_n;
output wire dm9k_rd_n;
output wire dm9k_cs_n;
output wire dm9k_rst_n;
input wire dm9k_int;

//LED, SegDisp, DIP SW, and BTN1~6
output wire[31:0] leds; // leds[31:16] is SegDisp, leds[15:0] is LEDs
input wire[31:0] dip_sw;
input wire[5:0] touch_btn;

//Video output
output wire[7:0] video_pixel;
output wire video_hsync;
output wire video_vsync;
output wire video_clk;
output wire video_de;

/* =========== Demo code begin =========== */

// 7-Segment display decoder
reg[7:0] number;
SEG7_LUT segL(.oSEG1({leds[23:22],leds[19:17],leds[20],leds[21],leds[16]}), .iDIG(number[3:0]));
SEG7_LUT segH(.oSEG1({leds[31:30],leds[27:25],leds[28],leds[29],leds[24]}), .iDIG(number[7:4]));

//LED & DIP switches test
// reg[23:0] counter;
// always @(posedge clk_in) begin
//     if (touch_btn[5]) begin //reset
//         counter <= 0;
//         led_bits[15:0] <= dip_sw[15:0] ^ dip_sw[31:16];
//         // number <= 0;
//     end
//     else begin
//         counter <= counter+1;
//         if (&counter) begin
//             led_bits[15:0] <= {led_bits[14:0],led_bits[15]};
//             // number <= number + 1;
//         end
//     end
// end
reg[15:0] led_bits;
assign leds[15:0] = led_bits;

reg clk_25;
initial begin
    clk_25 <= 1'b0;
end
always @(posedge clk_in) begin
    clk_25 <= ~clk_25;
end

//Ext serial port receive and transmit, 115200 baudrate, no parity
wire [7:0] RxD_data;
wire RxD_data_ready;
wire TxD_busy;
wire RxD_idle;
reg [7:0] TxD_data;
reg TxD_start;
reg [7:0] TxD_data_reg;
reg TxD_start_reg;
reg [1:0] counter;

always @(posedge clk_in) begin
    if (touch_btn[5]) begin
        TxD_data_reg <= 8'b0;
        TxD_start_reg <= 1'b0; 
        counter <= 2'b0;
    end else begin
        if (TxD_start) begin
            counter <= 2'b0;
            TxD_data_reg <= TxD_data;
            TxD_start_reg <= 1'b1;
        end else begin
            counter <= counter + 1;
            if (&counter) begin
                TxD_data_reg <= 8'b0;
                TxD_start_reg <= 1'b0;
            end 
        end
    end
end

async_receiver #(.ClkFrequency(11059200),.Baud(115200)) 
    uart_r(.clk(clk_uart_in),.RxD(rxd),.RxD_data_ready(RxD_data_ready),.RxD_data(RxD_data),.RxD_idle(RxD_idle));
async_transmitter #(.ClkFrequency(11059200),.Baud(115200)) 
    uart_t(.clk(clk_uart_in),.TxD(txd),.TxD_start(TxD_start_reg),.TxD_data(TxD_data_reg),.TxD_busy(TxD_busy)); //transmit data back

//VGA display pattern generation
wire[2:0] red,green;
wire[1:0] blue;
assign video_pixel = {red,green,blue};
assign video_clk = clk_in;
vga #(12, 800, 856, 976, 1040, 600, 637, 643, 666, 1, 1) vga800x600at75 (
    .clk(clk_in), 
    .hdata(red),
    .vdata({blue,green}),
    .hsync(video_hsync),
    .vsync(video_vsync),
    .data_enable(video_de)
);
/* =========== Demo code end =========== */

    wire[5:0] int;
    wire timer_int;
    assign int = {5'b00000, timer_int};

    openmips openmips0(
        .clk(clk_uart_in), // 25MHz
        .rst(touch_btn[5]),
    
        .if_addr_o(openmips_if_addr_o),
        .if_data_i(openmips_if_data_i),
        .if_ce_o(openmips_if_ce_o),
        .if_sram_ce_o(openmips_if_sram_ce_o),
        .if_flash_ce_o(openmips_if_flash_ce_o),
        .if_serial_ce_o(openmips_if_serial_ce_o),
        .if_rom_ce_o(openmips_if_rom_ce_o),
        .mem_we_o(openmips_mem_we_o),
        .mem_addr_o(openmips_mem_addr_o),
        .mem_sel_o(openmips_mem_sel_o),
        .mem_data_o(openmips_mem_data_o),
        .mem_data_i(openmips_mem_data_i),
        .mem_ce_o(openmips_mem_ce_o),
        .mem_sram_ce_o(openmips_mem_sram_ce_o),
        .mem_flash_ce_o(openmips_mem_flash_ce_o),
        .mem_serial_ce_o(openmips_mem_serial_ce_o),
        .mem_rom_ce_o(openmips_mem_rom_ce_o),

        .int_i(int),
        .timer_int_o(timer_int)
    );

    wire[31:0] openmips_if_addr_o;
    reg[31:0] openmips_if_data_i;
    wire openmips_if_ce_o;
    wire openmips_if_sram_ce_o;
    wire openmips_if_flash_ce_o;
    wire openmips_if_serial_ce_o;
    wire openmips_if_rom_ce_o;
    wire openmips_mem_we_o;
    wire[31:0] openmips_mem_addr_o;
    wire[3:0] openmips_mem_sel_o;
    wire[31:0] openmips_mem_data_o;
    reg[31:0] openmips_mem_data_i;
    wire openmips_mem_ce_o;
    wire openmips_mem_sram_ce_o;
    wire openmips_mem_flash_ce_o;
    wire openmips_mem_serial_ce_o;
    wire openmips_mem_rom_ce_o;

//    rom rom0(
//        .ce(rom_ce),
//        .addr(rom_addr),
//        .inst(rom_data)
//    );
    
    rom_mem rom_mem0(
        .a(rom_addr),
        .spo(rom_data)
    );

    reg rom_ce;
    reg[11:0] rom_addr;
    wire[31:0] rom_data;

    assign base_ram_data = (openmips_mem_ce_o && openmips_mem_sram_ce_o && openmips_mem_we_o)? openmips_mem_data_o: 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz; // To drive the inout net

    always @(*) begin
        if (touch_btn[5]) begin
            base_ram_addr <= 20'b0;
            base_ram_be_n <= 4'b1111;
            base_ram_ce_n <= 1'b1;
            base_ram_oe_n <= 1'b1;
            base_ram_we_n <= 1'b1;
            ext_ram_addr <= 20'b0;
            ext_ram_be_n <= 4'b1111;
            ext_ram_ce_n <= 1'b1;
            ext_ram_oe_n <= 1'b1;
            ext_ram_we_n <= 1'b1;
            flash_a <= 23'b0;
            flash_rp_n <= 1'b1;
            flash_oe_n <= 1'b1;
            flash_ce_n <= 1'b1;
            flash_byte_n <= 1'b1;
            flash_we_n <= 1'b1;
            TxD_data <= 8'b0;
            TxD_start <= 1'b0;
            rom_ce <= 1'b0;
            rom_addr <= 12'b0;
            openmips_if_data_i <= 32'b0;
            openmips_mem_data_i <= 32'b0;
        end else begin
            base_ram_addr <= 20'b0;
            base_ram_be_n <= 4'b1111;
            base_ram_ce_n <= 1'b1;
            base_ram_oe_n <= 1'b1;
            base_ram_we_n <= 1'b1;
            ext_ram_addr <= 20'b0;
            ext_ram_be_n <= 4'b1111;
            ext_ram_ce_n <= 1'b1;
            ext_ram_oe_n <= 1'b1;
            ext_ram_we_n <= 1'b1;            
            flash_a <= 23'b0;
            flash_rp_n <= 1'b1;
            flash_oe_n <= 1'b1;
            flash_ce_n <= 1'b1;
            flash_byte_n <= 1'b1;
            flash_we_n <= 1'b1;
            TxD_data <= 8'b0;
            TxD_start <= 1'b0;
            rom_ce <= 1'b0;
            rom_addr <= 12'b0;
            openmips_if_data_i <= 32'b0;
            openmips_mem_data_i <= 32'b0;
            if (openmips_mem_ce_o) begin
                if (openmips_mem_sram_ce_o) begin
                    if (openmips_mem_addr_o[22] == 1'b0) begin
                        base_ram_addr <= openmips_mem_addr_o[21:2];
                        base_ram_be_n <= ~openmips_mem_sel_o;
                        base_ram_ce_n <= 1'b0;
                        if (openmips_mem_we_o) begin
                            base_ram_oe_n <= 1'b1;
                            base_ram_we_n <= 1'b0;
                        end else begin
                            base_ram_oe_n <= 1'b0;
                            base_ram_we_n <= 1'b1;
                            openmips_mem_data_i <= base_ram_data;
                        end
                    end else if (openmips_mem_addr_o[22] == 1'b1) begin
                        ext_ram_addr <= openmips_mem_addr_o[21:2];
                        ext_ram_be_n <= ~openmips_mem_sel_o;
                        ext_ram_ce_n <= 1'b0;
                        if (openmips_mem_we_o) begin
                            ext_ram_oe_n <= 1'b1;
                            ext_ram_we_n <= 1'b0;
                        end else begin
                            ext_ram_oe_n <= 1'b0;
                            ext_ram_we_n <= 1'b1;
                            openmips_mem_data_i <= ext_ram_data;
                        end
                    end
                end else if (openmips_mem_flash_ce_o) begin
                    flash_a <= openmips_mem_addr_o[23:1];
                    flash_rp_n <= 1'b1;
                    flash_oe_n <= 1'b0;
                    flash_ce_n <= 1'b0;
                    flash_byte_n <= 1'b1;
                    flash_we_n <= 1'b1;
                    openmips_mem_data_i <= { 16'b0, flash_data };
                    led_bits <= flash_data;
                end else if (openmips_mem_serial_ce_o) begin
                    if (openmips_mem_addr_o[3:0] == 4'hc) begin
                        openmips_mem_data_i <= { 30'b0, RxD_idle, TxD_busy }; // <TODO>
                    end else if (openmips_mem_addr_o[3:0] == 4'h8) begin
                        if (openmips_mem_we_o) begin
                            TxD_data <= openmips_mem_data_o[7:0];
                            TxD_start <= 1'b1;
                        end else begin
                            openmips_mem_data_i <= { 24'b0, RxD_data };
                        end
                    end
                end else if (openmips_mem_rom_ce_o) begin
                    rom_addr <= openmips_mem_addr_o[13:2];
                    rom_ce <= 1'b1;
                    openmips_mem_data_i <= rom_data; 
                end
            end else if (openmips_if_ce_o) begin
                if (openmips_if_sram_ce_o) begin
                    if (openmips_if_addr_o[22] == 1'b0) begin
                        base_ram_addr <= openmips_if_addr_o[21:2];
                        base_ram_be_n <= 4'b0000;
                        base_ram_ce_n <= 1'b0;
                        base_ram_oe_n <= 1'b0;
                        base_ram_we_n <= 1'b1;
                        openmips_if_data_i <= base_ram_data;
                    end else if (openmips_if_addr_o[22] == 1'b1) begin
                        ext_ram_addr <= openmips_if_addr_o[21:2];
                        ext_ram_be_n <= 4'b0000;
                        ext_ram_ce_n <= 1'b0;
                        ext_ram_oe_n <= 1'b0;
                        ext_ram_we_n <= 1'b1;
                        openmips_if_data_i <= ext_ram_data;
                    end       
                end else if (openmips_if_flash_ce_o) begin
                    flash_a <= openmips_if_addr_o[23:1];
                    flash_rp_n <= 1'b1;
                    flash_oe_n <= 1'b0;
                    flash_ce_n <= 1'b0;
                    flash_byte_n <= 1'b1;
                    flash_we_n <= 1'b1;
                    openmips_if_data_i <= { 16'b0, flash_data };
                end else if (openmips_if_serial_ce_o) begin
                    if (openmips_if_addr_o[3:0] == 4'hc) begin
                        openmips_if_data_i <= { 30'b0, RxD_idle, TxD_busy }; // <TODO>
                    end else if (openmips_if_addr_o[3:0] == 4'h8) begin
                        openmips_if_data_i <= { 24'b0, RxD_data };
                    end
                end else if (openmips_if_rom_ce_o) begin
                    rom_addr <= openmips_if_addr_o[13:2];
                    rom_ce <= 1'b1;
                    openmips_if_data_i <= rom_data;
                end
            end
        end
    end

    always @(posedge clk_in) begin
        number <= openmips_if_addr_o[7:0];
        if (touch_btn[5]) begin
            number <= 8'b0; 
        end else if (openmips_mem_serial_ce_o) begin
            // number <= openmips_if_addr_o[7:0];
            // led_bits <= openmips_if_data_i[15:0];
            number <= openmips_mem_data_o[7:0];
            //led_bits <= openmips_mem_data_o[15:0];
        end
    end

endmodule
