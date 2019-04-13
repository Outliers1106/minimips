//------------------------------------------------------------------------------
// Maintainance:    HITwh NSCSCC TEAM
// Engineer:        RickyTino
// 
// Create Date:     2019/03/28
// Manager Name:    RickyTinohttp://ssxd.mediav.com/s?type=2&r=20&mv_ref=mini.safe.360.cn&enup=CAABcAbgKQgAAingBnAA&mvid=NzU5OTIzNjE4NTgyNjIzMTMxMTAwMTg&bid=134544cf25706c94&ugi=FdTmlQEVyN92TBUCFY4EFaoEFQAAFcjG28wNJcgBFoCcjbXuisMFAA&uai=FYKrmwIlAhUCFriKpK704t3GdxX4ByWq+tq0DCUAFQIUCBwWpsjOmaHK7tBHFQAAAA&ubi=FZyaNBWc09ICFa7d3BcV9uPEWRUGFRwW6rmE3xUWuIq5lf6o4sZ3NAIWsgglAhWtkrKQDSUANqnQ8/vH+IX1eQA&clickid=0&cpx=__OFFSET_X__&cpy=__OFFSET_Y__&cs=__EVENT_TIME_START__&ce=__EVENT_TIME_END__&csign2=IC7ZLVu0iT1=&url=https%3A%2F%2Fwin.xhtjg.com%2Fweb%2F20190403wxbhg2-360%2Findex.html%3Fbid%3D3510551
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
    output reg  [31: 0] id_inst,     // instruction, to ID seg

    input  wire [ 5: 0] stall
);

    always @(posedge clk, posedge rst) begin
        if(rst) begin
            id_pc   <= 32'b0;
            id_inst <= 32'b0;
        end
        else if(stall[1]==1'b1&&stall[2]==1'b0) begin
            id_pc   <= 32'b0;
            id_inst <= 32'b0;
        end
        else if(stall[1]==1'b0) begin
            id_pc   <= if_pc;
            id_inst <= if_inst;
        end
    end

endmodule