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
reg         [9:0]                       raddr;
reg         [9:0]                       waddr;

// when loading half word, sometimes need accessing memory two times
reg         [1:0]                       half_word_extra;
// dout value for first accessing
reg         [31:0]                      dout_f;


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
        end

        else if(start) begin
            case (op_mode1)
            // load data 
            'b00: begin
                wea <= 'd0;

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
            end

            endcase
        end

        else begin
            wea <= wea;
            ram_en <= ram_en;
        end

    end

    else begin
        ram_en <= 'd0;
        wea <= 'd0;
    end
end






/* set loading operation clk, done signal and output data choose */
// set loading cnt and half_word_extra read flag
always @ (posedge clk) begin
    if(!rst) begin
        if(ram_en) begin
            if(load_cnt == 'd1) begin
                // read half word
                if(op_mode2 == 'b010 || op_mode2 == 'b011) begin
                    case (raddr[1:0]) 
                    // set extra loading flag for half_word loading
                    // half_word_extra is set as 2
                    'b11: begin
                        load_cnt <= 'd2;
                        half_word_extra <= 'd2;    
                    end
                    default: begin
                        load_cnt <= load_cnt - 'd1;
                        half_word_extra <= half_word_extra;    
                    end
                    endcase
                end
                
                // read byte and read word
                else begin
                    load_cnt <= load_cnt - 'd1;
                    half_word_extra <= 'd0;    
                end
            end

            else begin
                if(load_cnt == 'd0) begin
                    load_cnt <= 'd1;
                end
                else begin
                    load_cnt <= load_cnt - 'd1;
                end

                half_word_extra <= half_word_extra;    
            end
        end
        else begin
            load_cnt <= 'd1;
            half_word_extra <= 'd0;    
        end
    end

    else begin
        load_cnt <= 'd1;    
        half_word_extra <= 'd0;    
    end
end


// generate done signal
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


// read half word is complex for it's accessing times can vary in 1 to 2
always @ (done) begin
    if(!rst) begin
        if(done) begin
            case (op_mode2)
            // read byte
            'b000: begin
                case (addr[1:0])
                'b00:
                    res = {{24{dout[7]}}, dout[7:0]};

                'b01:
                    res = {{24{dout[15]}}, dout[15:8]};

                'b10:
                    res = {{24{dout[23]}}, dout[23:16]};

                'b11:
                    res = {{24{dout[31]}}, dout[31:24]};
                endcase
            end

            // read half word
            'b010: begin
                case (addr[1:0])
                // raddr will self-add for two-times reading
                'b00: begin
                    if(half_word_extra == 'd2) begin
                        res = {{16{dout[7]}}, dout_f[31:24], dout[7:0]};
                    end
                    else begin
                        res = {{16{dout[15]}}, dout[15:0]};
                    end
                end

                'b01:
                    res = {{16{dout[23]}}, dout[23:8]};

                'b10:
                    res = {{16{dout[31]}}, dout[31:16]};
                
                default: begin
                    res = res;
                end
                endcase
            end

            // read word
            'b100: begin
                res = dout;
            end

            // read byte unsigned
            'b001: begin
                case (addr[1:0])
                'b00: begin
                    if(half_word_extra == 'd2) begin
                        res = {16'b0, dout_f[31:24], dout[7:0]};
                    end
                    else begin
                        res = {16'b0, dout[15:0]};
                    end
                end
                'b01:
                    res = {24'b0, dout[15:8]};
                'b10:
                    res = {24'b0, dout[23:16]};

                default: begin
                    res = res;
                end
                endcase
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


// handling bram dout when need extra half word loading
always @ (*) begin
    if(!rst) begin
        if(wea == 'd0 && half_word_extra == 'd2 && load_cnt == 'd2) begin
            dout_f = dout;
        end
        else begin
            dout_f = dout_f;
        end
    end

    else begin
        dout_f = 'd0;    
    end
end





/* control accessing addr */
// generate reading adddr
always @ (*) begin
    if(!rst) begin
        if( wea == 'd0 && ram_en == 'd1) begin
            // need half_word_extra loading
            if(half_word_extra == 'd2) begin
                if(load_cnt == 'd2) begin
                    raddr = op1 + imm_data;
                end
                else if (load_cnt == 'd1)begin
                    raddr = raddr + 'd1;
                end
                else begin
                    raddr = raddr;
                end
            end
            else begin
                raddr = op1 + imm_data;
            end
        end
    end

    else begin
        raddr = 'd0;
    end
end


// control addr's value from raddr and waddr
always @ (*) begin
    if(!rst) begin
        if(wea == 'd0) begin
            addr = raddr;
        end
        else begin
            addr = waddr;
        end
    end

    else begin
        addr = 'd0;
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
                if(ram_en) begin
                    if(store_cnt == 'd5) begin
                        store_cnt <= 'd2;
                    end
                    else begin
                        store_cnt <= store_cnt - 'd1;
                    end
                end
                else begin
                    store_cnt <= 'd5;
                end
            end

            // store word
            'b100: begin
                if(ram_en) begin
                    if(store_cnt == 'd5) begin
                        store_cnt <= 'd4;
                    end
                    else begin
                        store_cnt <= store_cnt - 'd1;
                    end
                end
                else begin
                    store_cnt <= 'd5;
                end
            end

            default: begin
                store_cnt <= 'd5;
            end

            endcase
        
        end

        else begin
            store_cnt <= 'd5;
        end
    end

    else begin
        store_cnt <= 'd5;        
    end
end


endmodule