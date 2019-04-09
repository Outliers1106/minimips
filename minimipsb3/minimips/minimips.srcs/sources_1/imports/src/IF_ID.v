//------------------------------------------------------------------------------
// Maintainance:    HITwh NSCSCC TEAM
// Engineer:        RickyTino
// 
// Create Date:     2019/03/28
// Manager Name:    RickyTino
// Annotation:      SPC
// Module Name:     IF_ID
// Project Name:    miniMIPS
//
// Revision:
// Revision 0.01 - File Created
//
// Additional Comments:
// 
//------------------------------------------------------------------------------
module IF_ID
(
    input  wire         clk,
    input  wire         rst,

    input  wire [31: 0] if_pc,
    input  wire [31: 0] if_inst,

    output reg  [31: 0] id_pc,      // pc, to ID seg
    output reg  [31: 0] id_inst     // instruction, to ID seg
);

    always @(posedge clk, posedge rst) begin
        if(rst) begin
            id_pc   <= 32'b0;
            id_inst <= 32'b0;
        end
        else begin
            id_pc   <= if_pc;
            id_inst <= if_inst;
        end
    end

endmodule