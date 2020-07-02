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
`define ROB_ITEM_INDEX 167


module ROB_8_1 (
    input       [`ROB_ITEM_INDEX:0]                     rob_0;
    input       [`ROB_ITEM_INDEX:0]                     rob_1;         
    input       [`ROB_ITEM_INDEX:0]                     rob_2;         
    input       [`ROB_ITEM_INDEX:0]                     rob_3;         
    input       [`ROB_ITEM_INDEX:0]                     rob_4;         
    input       [`ROB_ITEM_INDEX:0]                     rob_5;         
    input       [`ROB_ITEM_INDEX:0]                     rob_6;         
    input       [`ROB_ITEM_INDEX:0]                     rob_7;         
    input       [2:0]                                   addr,
    output  wire    [`ROB_ITEM_INDEX:0]                 tar_rob
);


always @ (*)



endmodule
