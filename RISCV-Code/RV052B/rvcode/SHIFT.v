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

    // op1 <- rs1
	// op2 represents shift amounts, occupy lowest 5 bit of op2
    input       [31:0]                  op1,
    input       [31:0]                  op2,

    // give one clk postive signal, then start this module
    input                               start,

    // all operation is done in one clk
	// so there only need one shift part in this module
    input       [1:0]                   use_part,

    input       [1:0]                   op_mode1,
    input       [2:0]                   op_mode2,

    output      reg                             done,
    output      reg     [31:0]                  res

);


always @ (posedge clk) begin
	if(!rst) begin
		if(start) begin
			done <= 'd1;
			
			// SLL
			if(op_mode1 == 'd0 && op_mode2 == 'd0) begin
				res <= op1 << op2;
			end

			// SRL
			else if (op_mode1 == 'd0 && op_mode2 == 'b010) begin
				res <= op1 >> op2;
			end

			// SLLI
			else if (op_mode1 == 'b10 && op_mode2 == 'b000) begin
				res <= op1 << op2;
			end

			// SRLI
			else if (op_mode1 == 'b10 && op_mode2 == 'b010) begin
				res <= op1 >> op2;
			end

			// SRA
			else if (op_mode1 == 'b00 && op_mode2 == 'b100) begin
				res <= {op1[31]} op1 << op2;
			end

		end

		else begin
			done <= 'd0;
			res <= 'd0;
		end
	end

	else begin
		done <= 'd0;
		res <= 'd0;
	end
end




endmodule