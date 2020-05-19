module Norm(
    exp_max,
    fraction_25,
    exp_out,
    fraction_out
);

input   [7: 0]    exp_max;
input   [24: 0]   fraction_25;

output  [7: 0]   exp_out;
output  [22: 0]  fraction_out;

wire    [31: 0] fraction_shift;
wire    [4: 0]  index_tmp;
wire    [7: 0]  index, shift_num, exp_inc, exp_sub_index, exp_out_tmp, index_25;
wire            cout, cout_exp_inc, cout_exp_sub_index, cout_bias;


FIRST_1_DETECTOR    FRIST_1_DETECT_0(.in({7'b0,fraction_25}), .out(index_tmp));

FA_8                INC_INDEX(.a({3'b0,index_tmp}), .b(8'b00000001), .cin(1'b0), .s(index_25), .cout(cout_index));


assign index = (({8{fraction_25[24]}}) & (index_25)) | (({8{~fraction_25[24]}}) & (index_tmp));

FS_8                FS_Index(.a(8'b00010111), .b(index),   .cin(1'b0),
                             .out(shift_num),    .cout(cout));

FA_8                FA_EXP(.a(exp_max),     .b(8'b00000001),   .cin(1'b0),     .s(exp_inc),    .cout(cout_exp_inc));

FS_8                FS_EXP_INDEX(.a(exp_max), .b(shift_num), .cin(1'b0), .out(exp_sub_index),    .cout(cout_exp_sub_index));

SHIFT_LEFT          SHIFT_LEFT_FRACTION(.in({7'b0,fraction_25}),  .out(fraction_shift), .shift_num(shift_num[4:0]));

assign fraction_out =   (({23{~cout}}) & (fraction_shift[22:0])) | (({23{cout}}) & (fraction_25[24:1]));
assign exp_out_tmp  =   (({8{~cout}}) & (exp_sub_index)) | (({8{cout}}) & (exp_inc));

FA_8                FA_8_BIAS(.a(exp_out_tmp),  .b(8'b01111111),    .cin(0),    .s(exp_out),    .cout(cout_bias));

endmodule