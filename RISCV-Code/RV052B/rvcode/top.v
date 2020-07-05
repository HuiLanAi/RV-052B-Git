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

module top();

reg clk;
reg rst;



/*  */
reg		[31:0]			op1;
reg		[31:0]			op2;
reg						en;
reg		[1:0]			use_part;
reg		[1:0]			op_mode1;
reg		[2:0]			op_mode2;
wire					done;
wire	[31:0]			res;
reg		[31:0]			imm_data;
/*  */

initial begin
	/*  */
	op1 <= 32'h0000_0000;
	op2 <= 32'h4321_abcd;
	imm_data <= 32'h0000_0000;
	use_part <= 'b01;
	op_mode1 <= 'b01;
	op_mode2 <= 'b100;
	en = 0;
	/*  */
	rst <= 1'b1;
	clk <= 1'b0;
	#3;
	/* clk 1 */
	rst <= 1'b0;
	en <= 'd1;
	#2;
	/* clk 2 */
	en <= 'd0;
	#2;
	/* clk 3 */
	en <= 'd0;
	#2;
	/* clk 4 */
	// en <= 'd1;
	// op_mode2 <= 'b100;
	#10;
	/* clk 6 */
	en <= 'd1;
	op_mode1 <= 'b00;
	imm_data <= 'd2;
	#2;
	en <= 'd0;

end


always begin
	#1;
	clk <= ~clk;
end




DATA_RAM ram(
	.clk(clk),
	.rst(rst),
	.op1(op1),
	.op2(op2),
	.start(en),
	.imm_data(imm_data),
	.use_part(use_part),
	.op_mode1(op_mode1),
	.op_mode2(op_mode2),
	.done(done),
	.res(res)
);



endmodule
