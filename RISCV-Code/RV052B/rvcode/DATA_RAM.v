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

module DATA_RAM(
    input                               clk,
    input                               rst,

    // to be noticed:
    // when load data from data_ram, please set rs1(base) into op1 and imm_addr into imm_data
    // when store data into ram, please set rs1(base) into op1 and rs2(src_data) into op2
    input       [31:0]                  op1,
    input       [31:0]                  op2,
    input       [31:0]                  imm_data,

    // give one clk postive signal, then start this module
    input                               start,

    // choose which compute part to use, there is only one part in this module
    input       [1:0]                   use_part,

    input       [1:0]                   op_mode1,
    input       [2:0]                   op_mode2,

    output      reg                             done,
    output      reg     [31:0]                  res

);


reg         [9:0]                       addr;

// use to store op2
reg         [7:0]                       src_data        [3:0];

wire        [7:0]                       din;
wire        [31:0]                      dout;
reg                                     ram_en;
reg                                     wea;

// set operation clocks
reg         [3:0]                       load_cnt;
reg         [3:0]                       store_cnt;




DATA_BRAM data_bram(
    .addra              (addr),
    .clka               (clk),
    .dina               (din),
    .douta              (dout),
    .ena                (ram_en),
    .wea                (wea)
);





/* set initial controling signal */
always @ (posedge clk) begin
    if(!rst) begin
        if(load_cnt == 'd0 || store_cnt == 'd0) begin
            ram_en <= 'd0;
            wea <= 'd0;
            addr <= addr;
        end

        else if(start) begin
            case (op_mode1)
            // load data 
            'b00: begin
                wea <= 'd0;
                ram_en <= 'd1;
                addr <= op1 + imm_data;
            end     

            // store data
            'b01: begin
                wea <= 'd1;
                ram_en <= 'd1;
                addr <= op1 + imm_data;
            end

            default: begin
                wea <= wea;
                ram_en <= ram_en;
                addr <= addr;
            end

            endcase
        end

        else begin
            wea <= wea;
            ram_en <= ram_en;
            addr <= addr;
        end

    end

    else begin
        ram_en <= 'd0;
        addr <= 'd0;
        wea <= 'd0;
    end
end






/* set loading operation clk and output data choose */
always @ (posedge clk) begin
    
end




endmodule