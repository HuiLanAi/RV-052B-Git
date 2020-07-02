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





/* set initial controling signal and operating addr */
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
                addr <= op1 + imm_data;

                if(load_cnt == 'd0) begin
                    ram_en <= 'd0;
                end
                else begin
                    ram_en <= 'd1;
                end
            end     

            // store data
            'b01: begin
                ram_en <= 'd1;
                addr <= op1 + imm_data;

                if(store_cnt == 'd0) begin
                    ram_en <= 'd0;
                    wea <= 'd0;
                end
                else begin
                    ram_en <= 'd1;
                    wea <= 'd1;
                end
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






/* set loading operation clk, done signal and output data choose */
always @ (posedge clk) begin
    if(!rst) begin
        if(ram_en) begin
            if(load_cnt == 'd0) begin
                load_cnt <= 'd1;
            end
            else begin
                load_cnt <= 'd0;
            end
        end
        else begin
            load_cnt <= 'd1;
        end
    end

    else begin
        load_cnt <= 'd1;        
    end
end

always @ (posedge clk) begin
    if(!rst) begin
        if(load_cnt == 'd0 || store_cnt == 'd0) begin
            done <= 'd1;
        end
        else begin
            done <= 'd0;
        end
    end

    else begin
        done <= 'd0;  
    end
end

always @ (*) begin
    if(!rst) begin
        if(done) begin
            case (op_mode2)

            // read byte
            'b000: begin
                res = {{24{dout[7]}}, dout[7:0]};
            end

            // read half word
            'b010: begin
                res = {{16{dout[15]}}, dout[15:0]};
            end

            // read word
            'b100: begin
                res = dout;
            end

            // read byte unsigned
            'b001: begin
                res = {24'b0, dout[7:0]};
            end

            // read half word unsigned
            'b011: begin
                res = {16'b0, dout[15:0]};
            end

            default: begin
                res = res;
            end

            endcase
        end
        else begin
            res = res;
        end
    end

    else begin
        res = 'd0;
    end
end





/* set storing operation clk, done signal and input data choose */
always @ (posedge clk) begin
    if(!rst) begin
        if(ram_en && wea) begin
            case (op_mode2)
            // store byte
            'b000: begin
                if(ram_en) begin
                    if(store_cnt == 'd5) begin
                        store_cnt <= 'd1;
                    end
                    else begin
                        store_cnt <= store_cnt - 'd1;
                    end
                end
                else begin
                    store_cnt <= 'd5;
                end
            end

            // store half word
            'b010: begin
                
            end

            // store word
            'b100: begin
                
            end

            endcase
        
        end

        else begin

        end
    end

    else begin
        store_cnt <= 'd5;        
    end
end


endmodule