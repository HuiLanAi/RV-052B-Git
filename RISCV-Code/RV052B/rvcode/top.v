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
	op2 <= 32'hffff_ffff;
	imm_data <= 32'h0000_0001;
	use_part <= 'b01;
	op_mode1 <= 'b00;
	op_mode2 <= 'b010;
	en = 0;
	/*  */
	rst <= 1'b1;
	clk <= 1'b0;
	#3;
	rst <= 1'b0;
	en <= 'd1;
	#2;
	// use_part <= 'b10;
	// en <= 'd1;
	// op_mode2 <= 'b100;
	// op1 <= 'd20;
	en <= 'd0;
	#2;
	// use_part <= 'b01;
	// op2 <= 'd30;
	// #2;
	// en <= 'd0;
	en <= 'd0;
	#2;
	en <= 'd1;
	op_mode2 <= 'b100;
	
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
