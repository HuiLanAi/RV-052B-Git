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


module RS_CHECK_REG (
    input           [2:0]                       inst_post,
    input                                       rs_idle,
    input                                       rst,
    input                                       en_rs_check,
    output  reg     [7:0]                       rs_reg
);




always @ (en_rs_check) begin
    if(!rst) begin
        if(rs_idle) begin
            case(inst_post) 
            'd0: begin
                rs_reg[0] = 'd1;
            end
            'd1: begin
                rs_reg[1] = 'd1;
            end
            'd2: begin
                rs_reg[2] = 'd1;
            end
            'd3: begin
                rs_reg[3] = 'd1;
            end
            'd4: begin
                rs_reg[4] = 'd1;
            end
            'd5: begin
                rs_reg[5] = 'd1;
            end
            'd6: begin
                rs_reg[6] = 'd1;
            end
            'd7: begin
                rs_reg[7] = 'd1;
            end
            default: begin
                rs_reg = rs_reg;
            end
            endcase
        end
    end

    // rst 
    else begin
        rs_reg = 'd0;
    end
end

endmodule