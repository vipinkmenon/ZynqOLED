`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2020 12:32:44 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
input  clock, //100MHz onboard clock
input  reset,
//oled interface
output oled_spi_clk,
output oled_spi_data,
output oled_vdd,
output oled_vbat,
output oled_reset_n,
output oled_dc_n,

input [7:0] sendData,
input sendDataValid,
output sendDone
);

    
oledControl OC(
    .clock(clock), //100MHz onboard clock
    .reset(reset),
    //oled interface
    .oled_spi_clk(oled_spi_clk),
    .oled_spi_data(oled_spi_data),
    .oled_vdd(oled_vdd),
    .oled_vbat(oled_vbat),
    .oled_reset_n(oled_reset_n),
    .oled_dc_n(oled_dc_n),
    //
    .sendData(sendData),
    .sendDataValid(sendDataValid),
    .sendDone(sendDone)
        );    
    
endmodule
