/***************************************************************************************************
                                THE PROJECT IS DESIGNED AND CODED BY
                                            WINTERS WEN
                                NATIONAL UNIVERSITY OF DEFENSE TECHNOLOGY

                                            /
                                          / -----------
                                        /   \      /
                                              \  /
                                               /
                                           /       \
                                        /      *       \
                                    /            *          \
                                               *
                                                 *
                                
***************************************************************************************************/
`timescale 1ns/100ps

module LOGIC(
    input                               clk,
    input                               rst,

    // two operation number
    input       [31:0]                  op1,
    input       [31:0]                  op2,

    // give one clk postive signal, then start this module
    input                               start,

    // choose which compute part to use, there is only one part in this module
    // this module can provide logic computation next clk
    // no there is no need to set two compute parts
    input       [1:0]                   use_part,

    input       [1:0]                   op_mode1,
    input       [2:0]                   op_mode2,

    output      reg                             done,
    output      reg     [31:0]                  res

);




endmodule