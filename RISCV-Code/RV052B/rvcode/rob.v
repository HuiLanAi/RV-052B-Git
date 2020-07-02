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





module ROB (
    input                                       clk,
    input                                       rst,

    input       [`ROB_ITEM_INDEX:0]             decode_info,

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



    output      reg                             if_stall

);


// counter and flag
reg         [3:0]                           rob_cnter;
reg         [2:0]                           end_flag;
reg         [2:0]                           head_flag;



// rob reg structure
reg         [`ROB_ITEM_INDEX:0]               rob             [`ROB_NUM - 1:0];
// quick reg for checking waw and forwarding
reg         [31:0]                          reg_as_dst;
reg         [31:0]                          reg_tmp_val     [31:0];


// dispatch
reg         [`ROB_NUM - 1:0]                iss_rs;
reg         [`ROB_NUM - 1:0]                data_rdy;
wire                                        rs_idle;
reg         [`ROB_ITEM_INDEX:0]             dec_info2rs_check;
reg         [2:0]                           searching_pt4rs;
wire        [7:0]                           rs_reg_w;
reg                                         en_rs_check;




/* cnter and head_flag's self-adding
when rob is near full, set if_stall signal */
always @ (posedge clk or posedge rst) begin
    if(rst) begin
        if_stall <= 'd0;
        rob_cnter <= 'd0;
        head_flag <= 'd0;
    end
    else begin
        // when decode is working, load decode info
        if(decode_info[`PART_HIGH:`PART_LOW] != 'd0) begin
            // if rob is not full
            if(rob_cnter <= `ROB_NUM - 2) begin
                if_stall <= 'd0;
                rob_cnter <= rob_cnter + 'd1;
                head_flag <= head_flag + 'd1;
            end
            else begin
                if_stall <= 'd1;
                rob_cnter <= rob_cnter;
                head_flag <= head_flag;
            end
        end
        else begin
            if_stall <= if_stall;
            rob_cnter <= rob_cnter;
            head_flag <= head_flag;
        end
    end
end




/* send decode info into rob
    choose corresponding reg due to head_flag */
always @ (posedge clk) begin
    if(!rst) begin
        if(decode_info[`PART_HIGH:`PART_LOW] != 'd0) begin
            case (head_flag)
            'd0: begin
                rob[0] <= decode_info;
                rob[1] <= rob[1];
                rob[2] <= rob[2];
                rob[3] <= rob[3];
                rob[4] <= rob[4];
                rob[5] <= rob[5];
                rob[6] <= rob[6];
                rob[7] <= rob[7];
                rob[8] <= rob[8];
                rob[9] <= rob[9];
            end
            'd1: begin
                rob[1] <= decode_info;
                rob[0] <= rob[0];
                rob[2] <= rob[2];
                rob[3] <= rob[3];
                rob[4] <= rob[4];
                rob[5] <= rob[5];
                rob[6] <= rob[6];
                rob[7] <= rob[7];
                rob[8] <= rob[8];
                rob[9] <= rob[9];
            end
            'd2: begin
                rob[2] <= decode_info;
                rob[0] <= rob[0];
                rob[1] <= rob[1];
                rob[3] <= rob[3];
                rob[4] <= rob[4];
                rob[5] <= rob[5];
                rob[6] <= rob[6];
                rob[7] <= rob[7];
                rob[8] <= rob[8];
                rob[9] <= rob[9];
            end
            'd3: begin
                rob[3] <= decode_info;
                rob[0] <= rob[0];
                rob[1] <= rob[1];
                rob[2] <= rob[2];
                rob[4] <= rob[4];
                rob[5] <= rob[5];
                rob[6] <= rob[6];
                rob[7] <= rob[7];
                rob[8] <= rob[8];
                rob[9] <= rob[9];
            end
            'd4: begin
                rob[4] <= decode_info;
                rob[0] <= rob[0];
                rob[1] <= rob[1];
                rob[2] <= rob[2];
                rob[3] <= rob[3];
                rob[5] <= rob[5];
                rob[6] <= rob[6];
                rob[7] <= rob[7];
                rob[8] <= rob[8];
                rob[9] <= rob[9];
            end
            'd5: begin
                rob[5] <= decode_info;
                rob[0] <= rob[0];
                rob[1] <= rob[1];
                rob[2] <= rob[2];
                rob[3] <= rob[3];
                rob[4] <= rob[4];
                rob[6] <= rob[6];
                rob[7] <= rob[7];
                rob[8] <= rob[8];
                rob[9] <= rob[9];
            end
            'd6: begin
                rob[6] <= decode_info;
                rob[0] <= rob[0];
                rob[1] <= rob[1];
                rob[2] <= rob[2];
                rob[3] <= rob[3];
                rob[4] <= rob[4];
                rob[5] <= rob[5];
                rob[7] <= rob[7];
                rob[8] <= rob[8];
                rob[9] <= rob[9];
            end
            'd7: begin
                rob[7] <= decode_info;
                rob[0] <= rob[0];
                rob[1] <= rob[1];
                rob[2] <= rob[2];
                rob[3] <= rob[3];
                rob[4] <= rob[4];
                rob[5] <= rob[5];
                rob[6] <= rob[6];
                rob[8] <= rob[8];
                rob[9] <= rob[9];
            end
            'd8: begin
                rob[8] <= decode_info;
                rob[0] <= rob[0];
                rob[1] <= rob[1];
                rob[2] <= rob[2];
                rob[3] <= rob[3];
                rob[4] <= rob[4];
                rob[5] <= rob[5];
                rob[6] <= rob[6];
                rob[7] <= rob[7];
                rob[9] <= rob[9];
            end
            'd9: begin
                rob[9] <= decode_info;
                rob[0] <= rob[0];
                rob[1] <= rob[1];
                rob[2] <= rob[2];
                rob[3] <= rob[3];
                rob[4] <= rob[4];
                rob[5] <= rob[5];
                rob[6] <= rob[6];
                rob[7] <= rob[7];
                rob[8] <= rob[8];
            end
            default: begin
                rob[0] <= rob[0];
                rob[1] <= rob[1];
                rob[2] <= rob[2];
                rob[3] <= rob[3];
                rob[4] <= rob[4];
                rob[5] <= rob[5];
                rob[6] <= rob[6];
                rob[7] <= rob[7];
                rob[8] <= rob[8];
                rob[9] <= rob[9];
            end
            endcase
        end
        else begin
            rob[0] <= rob[0];
            rob[1] <= rob[1];
            rob[2] <= rob[2];
            rob[3] <= rob[3];
            rob[4] <= rob[4];
            rob[5] <= rob[5];
            rob[6] <= rob[6];
            rob[7] <= rob[7];
            rob[8] <= rob[8];
            rob[9] <= rob[9];
        end
    end
    else begin
        rob[0] <= 'd0;
        rob[1] <= 'd0;
        rob[2] <= 'd0;
        rob[3] <= 'd0;
        rob[4] <= 'd0;
        rob[5] <= 'd0;
        rob[6] <= 'd0;
        rob[7] <= 'd0;
        rob[8] <= 'd0;
        rob[9] <= 'd0;
    end
end




/* check corresponding hardware is idle or not */
RS_CHECK rs_check(
    .decode_info            (dec_info2rs_check),
    .add_sub_rs             (add_sub_rs),
    .shift_a_rs             (shift_a_rs),
    .shift_rs               (shift_rs),
    .fadd_fsub_rs           (fadd_fsub_rs),
    .cmp_u_rs               (cmp_u_rs),
    .cmp_rs                 (cmp_rs),
    .mul_rs                 (mul_rs),
    .mul_u_rs               (mul_u_rs),
    .div_rs                 (div_rs),
    .div_u_rs               (div_u_rs),
    .fmul_rs                (fmul_rs),
    .fdiv_rs                (fdiv_rs),
    .data_ram_rs            (data_ram_rs),
    .branch_rs              (branch_rs),
    .fcmp_rs                (fcmp_rs),
    .logic_rs               (logic_rs),
    .fsqrt_rs               (fsqrt_rs),
    .rem_rs                 (rem_rs),
    .rem_u_rs               (rem_u_rs),
    .rs_idle                (rs_idle),
    .en_rs_check            (en_rs_check)
);


RS_CHECK_REG rs_check_reg(
    .inst_post              (searching_pt4rs),
    .rs_idle                (rs_idle),
    .rst                    (rst),
    .rs_reg                 (rs_reg),
    .en_rs_check            (en_rs_check)
);


always @ (*) begin
    if(!rst) begin
        // process arriving inst first
        searching_pt4rs = head_flag - 'd1;
        if(decode_info[`PART_HIGH:`PART_LOW] != 'd0) begin
            dec_info2rs_check = decode_info;
            en_rs_check = ~en_rs_check;
            searching_pt4rs = searching_pt4rs - 'd1;
        end

        else begin 
            searching_pt4rs = head_flag - 'd1;
        end

        

    end
    else begin
        //rs_idle = 'd0;
        en_rs_check = 'd0;
    end
end



endmodule












