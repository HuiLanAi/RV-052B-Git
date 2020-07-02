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

`define JMP_PC_LOW 0
`define JMP_PC_HIGH 31
`define PC_LOW 32
`define PC_HIGH 63
`define RES_LOW 64
`define RES_HIGH 95
`define IMM_LOW 96
`define IMM_HIGH 127
`define DST_LOW 128
`define DST_HIGH 132
`define RS2_LOW 133
`define RS2_HIGH 137
`define RS1_LOW 138
`define RS2_HIGH 142
`define PART_LOW 143
`define PART_HIGH 157
`define DONE 158
`define BUSY 159
`define OP2_LOW 160
`define OP2_HIGH 162
`define OP1_LOW 163
`define OP1_HIGH 164
`define IMM_USE 165
`define RSS 166
`define PREDICT 167
`define ROB_ITEM_INDEX 167
`define ROB_NUM 8
`define RAM 143
`define BRANCH `RAM+1
`define SHIFT `RAM+2
`define LOGIC `RAM+3
`define CMP `RAM+4
`define ADD `RAM+5
`define MUL `RAM+6
`define DIV `RAM+7
`define SP `RAM+8
`define RINFO `RAM+9
`define FADD `RAM+10
`define FMUL `RAM+11
`define FDIV `RAM+12
`define FSP `RAM+13
`define FCMP `RAM+14




/* this module is used to check hardware available feature (rs-station) */
module RS_CHECK(
    input         [`ROB_ITEM_INDEX:0]             decode_info,

    // reservation station conuter
    input         [1:0]                           add_sub_rs,
    input         [1:0]                           shift_a_rs,
    input         [1:0]                           shift_rs,
    input         [1:0]                           fadd_fsub_rs,
    input         [1:0]                           cmp_u_rs,
    input         [1:0]                           cmp_rs,
    input         [1:0]                           mul_rs,
    input         [1:0]                           mul_u_rs,
    input         [1:0]                           div_rs,
    input         [1:0]                           div_u_rs,
    input         [1:0]                           fmul_rs,
    input         [1:0]                           fdiv_rs,
    input         [1:0]                           data_ram_rs,
    input         [1:0]                           branch_rs,
    input         [1:0]                           fcmp_rs,
    input         [1:0]                           logic_rs,
    input         [1:0]                           fsqrt_rs,
    input         [1:0]                           rem_rs,
    input         [1:0]                           rem_u_rs,

    input                                         en_rs_check,

    output        reg                             rs_idle
);




always @ (en_rs_check) begin
    rs_idle = 'd0;

    // ram
    if(decode_info[`RAM] == 'd1) begin
        if(data_ram_rs != 'd0) begin
            rs_idle = 'd1;
        end
        else begin
            rs_idle = 'd0;
        end
    end

    // branch
    else if (decode_info[`BRANCH] == 'd1) begin
        if(branch_rs != 'd0) begin
            rs_idle = 'd1;
        end
        else begin
            rs_idle = 'd0;
        end
    end

    // shift: algorithm and common shift
    else if (decode_info[`SHIFT] == 'd1) begin
        // algorithm shift
        if(decode_info[`OP2_HIGH] == 'd1) begin
            if(shift_a_rs != 'd0) begin
                rs_idle = 'd1;
            end
            else begin
                rs_idle = 'd0;
            end
        end
        // common shift
        else begin
            if(shift_rs != 'd0) begin
                rs_idle = 'd1;
            end
            else begin
                rs_idle = 'd0;
            end
        end
    end

    // logic
    else if (decode_info[`LOGIC] == 'd1) begin
        if(logic_rs != 'd0) begin
            rs_idle = 'd1;
        end
        else begin
            rs_idle = 'd0;
        end
    end

    // CMP: CMP and CMPU
    else if (decode_info[`CMP] == 'd1) begin
        // unsigned cmp
        if(decode_info[`OP1_LOW] == 'd1) begin
            if(cmp_u_rs != 'd0) begin
                rs_idle = 'd1;
            end
            else begin
                rs_idle = 'd0;
            end
        end
        // common shift
        else begin
            if(cmp_rs != 'd0) begin
                rs_idle = 'd1;
            end
            else begin
                rs_idle = 'd0;
            end
        end
    end

    // add/sub
    else if (decode_info[`ADD] == 'd1) begin
        if(add_sub_rs != 'd0) begin
            rs_idle = 'd1;
        end
        else begin
            rs_idle = 'd0;
        end
    end

    // mul: mul and mulu
    else if (decode_info[`MUL] == 'd1) begin
        // unsigned mul
        if(decode_info[`OP1_HIGH] == 'd1) begin
            if(mul_u_rs != 'd0) begin
                rs_idle = 'd1;
            end
            else begin
                rs_idle = 'd0;
            end
        end
        // common mul
        else begin
            if(mul_rs != 'd0) begin
                rs_idle = 'd1;
            end
            else begin
                rs_idle = 'd0;
            end
        end
    end

    // div: mul and divu
    else if (decode_info[`DIV] == 'd1) begin
        // unsigned mul
        if(decode_info[`OP1_HIGH] == 'd1) begin
            if(div_u_rs != 'd0) begin
                rs_idle = 'd1;
            end
            else begin
                rs_idle = 'd0;
            end
        end
        // common div
        else begin
            if(div_rs != 'd0) begin
                rs_idle = 'd1;
            end
            else begin
                rs_idle = 'd0;
            end
        end
    end

    else begin
        rs_idle = 'd0;
    end
end



endmodule
