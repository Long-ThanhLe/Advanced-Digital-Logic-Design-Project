
module DECODE_5_32(
	select,
	out
);

parameter SELECT_WIDTH = 5;
parameter OUT_WIDTH = 32;

input [SELECT_WIDTH-1:0] select;
output [SELECT_WIDTH-1:0] out;

	assign out[0] = (~select[4]) & (~select[3]) & (~select[2]) & (~select[1]) & (~select[0]);
	assign out[1] = (~select[4]) & (~select[3]) & (~select[2]) & (~select[1]) & (select[0]);
	assign out[2] = (~select[4]) & (~select[3]) & (~select[2]) & (select[1]) & (~select[0]);
	assign out[3] = (~select[4]) & (~select[3]) & (~select[2]) & (select[1]) & (select[0]);
	assign out[4] = (~select[4]) & (~select[3]) & (select[2]) & (~select[1]) & (~select[0]);
	assign out[5] = (~select[4]) & (~select[3]) & (select[2]) & (~select[1]) & (select[0]);
	assign out[6] = (~select[4]) & (~select[3]) & (select[2]) & (select[1]) & (~select[0]);
	assign out[7] = (~select[4]) & (~select[3]) & (select[2]) & (select[1]) & (select[0]);
	assign out[8] = (~select[4]) & (select[3]) & (~select[2]) & (~select[1]) & (~select[0]);
	assign out[9] = (~select[4]) & (select[3]) & (~select[2]) & (~select[1]) & (select[0]);
	assign out[10] = (~select[4]) & (select[3]) & (~select[2]) & (select[1]) & (~select[0]);
	assign out[11] = (~select[4]) & (select[3]) & (~select[2]) & (select[1]) & (select[0]);
	assign out[12] = (~select[4]) & (select[3]) & (select[2]) & (~select[1]) & (~select[0]);
	assign out[13] = (~select[4]) & (select[3]) & (select[2]) & (~select[1]) & (select[0]);
	assign out[14] = (~select[4]) & (select[3]) & (select[2]) & (select[1]) & (~select[0]);
	assign out[15] = (~select[4]) & (select[3]) & (select[2]) & (select[1]) & (select[0]);

	// assign out[16] = (select[4]) & (~select[3]) & (~select[2]) & (~select[1]) & (~select[0]);
	// assign out[17] = (select[4]) & (~select[3]) & (~select[2]) & (~select[1]) & (select[0]);
	// assign out[18] = (select[4]) & (~select[3]) & (~select[2]) & (select[1]) & (~select[0]);
	// assign out[19] = (select[4]) & (~select[3]) & (~select[2]) & (select[1]) & (select[0]);
	// assign out[20] = (select[4]) & (~select[3]) & (select[2]) & (~select[1]) & (~select[0]);
	// assign out[21] = (select[4]) & (~select[3]) & (select[2]) & (~select[1]) & (select[0]);
	// assign out[22] = (select[4]) & (~select[3]) & (select[2]) & (select[1]) & (~select[0]);
	// assign out[23] = (select[4]) & (~select[3]) & (select[2]) & (select[1]) & (select[0]);
	// assign out[24] = (select[4]) & (~select[3]) & (~select[2]) & (~select[1]) & (~select[0]);
	// assign out[25] = (select[4]) & (~select[3]) & (~select[2]) & (~select[1]) & (select[0]);
	// assign out[26] = (select[4]) & (~select[3]) & (~select[2]) & (select[1]) & (~select[0]);
	// assign out[27] = (select[4]) & (~select[3]) & (~select[2]) & (select[1]) & (select[0]);
	// assign out[28] = (select[4]) & (~select[3]) & (select[2]) & (~select[1]) & (~select[0]);
	// assign out[29] = (select[4]) & (~select[3]) & (select[2]) & (~select[1]) & (select[0]);
	// assign out[30] = (select[4]) & (~select[3]) & (select[2]) & (select[1]) & (~select[0]);
	// assign out[31] = (select[4]) & (~select[3]) & (select[2]) & (select[1]) & (select[0]);

endmodule
