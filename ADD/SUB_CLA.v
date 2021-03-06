module SUB_CLA_2(
    iG,
    iP,
    iC,
    oG,
    oP,
    oC
);

input   [1:0]   iG, iP;
input           iC;

output          oG  , oP;
output  [2:0]   oC;

assign  oC[0] = iC;
assign  oC[1] = iG[0] | (iP[0] & oC[0]);

assign  oG = iG[1] | (iP[1] & iG[0]);
assign  oP = iP[1] & iP[0];

assign  oC[2] = oG | (oP & oC[0]);

endmodule