//------------------------------------------------------------------------------
// Maintainance:    HITwh NSCSCC TEAM
// Engineer:        RickyTino
// 
// Create Date:     2019/03/28
// Manager Name:    RickyTino
// Module Name:     miniMIPS_Top
// Project Name:    miniMIPS
//
// Revision:
// Revision 0.01 - File Created
//
// Additional Comments:
// 
//------------------------------------------------------------------------------
`include "defines.v"

module miniMIPS_Top
(
    input  wire         clk,
    input  wire         rst,

    output wire [31: 0] inst_addr,
    input  wire [31: 0] inst_data,

    output wire         data_wen,
    output wire [31: 0] data_addr,
    output wire [31: 0] data_dout,
    input  wire [31: 0] data_din
);

    wire [31: 0] if_pc;
    wire [31: 0] if_inst;

    wire [31: 0] id_pc;
    wire [31: 0] id_inst;
    wire         br_flag;
    wire [31: 0] br_addr;

    wire [ 4: 0] r1addr;
    wire [31: 0] r1data;
    wire [ 4: 0] r2addr;
    wire [31: 0] r2data;

    wire [31: 0] id_opr1;
    wire [31: 0] id_opr2;
    wire [31: 0] id_offset;
    wire [ 3: 0] id_aluop;
    wire         id_wreg;
    wire [ 4: 0] id_wraddr;

    wire [31: 0] ex_pc;
    wire [ 3: 0] ex_aluop;
    wire [31: 0] ex_opr1;
    wire [31: 0] ex_opr2;
    wire [31: 0] ex_offset;
    wire         ex_wreg;
    wire [ 4: 0] ex_wraddr;

    wire [31: 0] ex_alures;
    wire         ex_m_wen;
    wire [31: 0] ex_m_addr;
    wire [31: 0] ex_m_dout;
    
    wire [ 3: 0] mem_aluop;
    wire [31: 0] mem_alures;
    wire         mem_wreg;
    wire [ 4: 0] mem_wraddr;
    wire         mem_m_wen;
    wire [31: 0] mem_m_addr;
    wire [31: 0] mem_m_dout;

    wire [31: 0] mem_m_din_o;
    wire [ 3: 0] mem_aluop_o;
    wire [31: 0] mem_alures_o;
    wire         mem_wreg_o;
    wire [ 4: 0] mem_wraddr_o;

    wire [ 3: 0] wb_aluop;
    wire [31: 0] wb_alures;
    wire [31: 0] wb_m_din;
    wire         wb_wreg;
    wire [ 4: 0] wb_wraddr;
    wire [31: 0] wb_wrdata;

    wire         wb_wreg_o;
    wire [ 4: 0] wb_wraddr_o;
    /*
    //解决ex_id冲突�?增加的连�?
    wire [ 4: 0] regaddr_from_id_ex;//+++++++++++++++++++++++++++++++
    wire [31: 0] regdata_from_ex;//++++++++++++++++++++++++++++++++++
    wire         reg_enable_from_id_ex;//++++++++++++++++++++++++++++++
    //解决mem_id冲突�?增加的连�?
    wire [ 4: 0] regaddr_from_mem;
    wire [31: 0] regdata_from_mem;
    wire         reg_enable_from_mem;
    //流水线暂�?
    wire         stallreq_from_id;
    //wire         stallreq_from_ex;
    */
    wire [ 5: 0] stall;

    // IF stage
    PC pc
    (
        .clk        ( clk       ),
        .rst        ( rst       ),
        .br_flag    ( br_flag   ),
        .br_addr    ( br_addr   ),
        .pc         ( if_pc     ),
        //流水线暂�?
        .stall      ( stall)
    );

    assign inst_addr = if_pc;
    assign if_inst   = inst_data;

    //IF_ID
    IF_ID if_id (
        .clk        ( clk       ),
        .rst        ( rst       ),

        .if_pc      ( if_pc     ),
        .if_inst    ( if_inst   ),

        .id_pc      ( id_pc     ),
        .id_inst    ( id_inst   ),
        //流水线暂�?
        .stall      ( stall)
    );

    // ID stage
    ID id
    (
        //.regaddr_from_id_ex ( regaddr_from_id_ex),//+++++++++++
        .reg_enable_from_id_ex            (ex_wreg), 
        .regaddr_from_id_ex              (ex_wraddr ),
        .regdata_from_ex                (ex_alures),
        //.regdata_from_ex    ( regdata_from_ex),//+++++++++++++
        //.reg_enable_from_id_ex ( reg_enable_from_id_ex),//+++++++++++++

        .regaddr_from_mem (mem_wraddr_o),//++++
        .regdata_from_mem (mem_alures_o),//++++
        .reg_enable_from_mem (mem_wreg_o),//+++++
        //.regaddr_from_mem (regaddr_from_mem),//++++
        //.regdata_from_mem (regdata_from_mem),//++++
        //.reg_enable_from_mem (reg_enable_from_mem),//+++++
        .alu_from_ex (ex_aluop),
        .alu_from_mem ( mem_aluop_o ),
        .m_din_from_mem ( mem_m_din_o ),
        .stallreq   ( stallreq_from_id  ),
        .pc         ( id_pc     ),
        .inst       ( id_inst   ),
        .r1addr     ( r1addr    ),
        .r1data     ( r1data    ),
        .r2addr     ( r2addr    ),
        .r2data     ( r2data    ),
        .opr1       ( id_opr1   ),
        .opr2       ( id_opr2   ),
        .aluop      ( id_aluop  ),
        .offset     ( id_offset ),
        .wreg       ( id_wreg   ),
        .wraddr     ( id_wraddr ),
        .br_flag    ( br_flag   ),
        .br_addr    ( br_addr   )
        // .stallreq
    );

    RegFile rf
    (
        .clk        ( clk        ),
        .rst        ( rst        ), 
        .r1addr     ( r1addr     ),
        .r1data     ( r1data     ),
        .r2addr     ( r2addr     ),
        .r2data     ( r2data     ),
        .wreg       ( wb_wreg_o  ),
        .wraddr     ( wb_wraddr_o), 
        .wrdata     ( wb_wrdata  )
    );

    //ID_EX
    ID_EX id_ex ( 
        .clk        ( clk       ),
        .rst        ( rst       ),

        .id_pc      ( id_pc     ),
        .id_aluop   ( id_aluop  ),
        .id_opr1    ( id_opr1   ),
        .id_opr2    ( id_opr2   ),
        .id_offset  ( id_offset ),
        .id_wreg    ( id_wreg   ),
        .id_wraddr  ( id_wraddr ),

        .ex_pc      ( ex_pc     ),
        .ex_aluop   ( ex_aluop  ),
        .ex_opr1    ( ex_opr1   ),
        .ex_opr2    ( ex_opr2   ),
        .ex_offset  ( ex_offset ),
        .ex_wreg    ( ex_wreg   ),//reg_enable_from_id_ex
        .ex_wraddr  ( ex_wraddr ),//regaddr_from_id_ex 
       // .ex_wraddr  ( regaddr_from_id_ex ),//++++++++++++++++++++++++++++
       // .ex_wreg    ( reg_enable_from_id_ex),//++++++++++++++++++++++++
        //流水线暂�?
        .stall      ( stall) 

    );

    //EX stage
    EX ex 
    (
        .pc         ( ex_pc     ),
        .aluop      ( ex_aluop  ),
        .opr1       ( ex_opr1   ),
        .opr2       ( ex_opr2   ),
        .offset     ( ex_offset ),
        .alures     ( ex_alures ),
        .m_wen      ( ex_m_wen  ),
        .m_addr     ( ex_m_addr ),
        .m_dout     ( ex_m_dout )

        // .alures     (regdata_from_ex)//++++++++++++++++++++++
    );

    //EX_MEM
    EX_MEM ex_mem ( 
        .clk        ( clk           ),
        .rst        ( rst           ),

        .ex_aluop   ( ex_aluop      ),
        .ex_alures  ( ex_alures     ),
        .ex_m_wen   ( ex_m_wen      ),
        .ex_m_addr  ( ex_m_addr     ),
        .ex_m_dout  ( ex_m_dout     ),
        .ex_wreg    ( ex_wreg       ),
        .ex_wraddr  ( ex_wraddr     ),
        .mem_aluop  ( mem_aluop     ),
        .mem_alures ( mem_alures    ),
        .mem_m_wen  ( mem_m_wen     ),
        .mem_m_addr ( mem_m_addr    ),
        .mem_m_dout ( mem_m_dout    ),
        .mem_wreg   ( mem_wreg      ),
        .mem_wraddr ( mem_wraddr    ),

        //流水线暂�?
        .stall      ( stall)

    );

    //MEM stage
    MEM mem(
        .aluop_i    ( mem_aluop     ),
        .alures_i   ( mem_alures    ),
        .m_wen_i    ( mem_m_wen     ),
        .m_addr_i   ( mem_m_addr    ),
        .m_dout_i   ( mem_m_dout    ),
        .wreg_i     ( mem_wreg      ),
        .wraddr_i   ( mem_wraddr    ),

        .m_din_i    ( data_din      ),

        .aluop_o    ( mem_aluop_o   ),
        .alures_o   ( mem_alures_o  ),
        .wreg_o     ( mem_wreg_o    ),
        .wraddr_o   ( mem_wraddr_o  ),

        .data_wen_o ( data_wen      ),
        .data_addr_o( data_addr     ),
        .data_dout_o( data_dout     ),

        .m_din_o    ( mem_m_din_o   )

      //  .alures_o   ( regdata_from_mem),//+++++
      //  .wreg_o     ( reg_enable_from_mem),//++++
      //  .wraddr_o   ( regaddr_from_mem)//++++

    );

    //MEM_WB
    MEM_WB mem_wb (
        .clk        ( clk           ),
        .rst        ( rst           ),

        .mem_aluop  ( mem_aluop_o   ),
        .mem_alures ( mem_alures_o  ),
        .mem_m_din  ( mem_m_din_o   ),
        .mem_wreg   ( mem_wreg_o    ),
        .mem_wraddr ( mem_wraddr_o  ),

        .wb_aluop   ( wb_aluop      ),
        .wb_alures  ( wb_alures     ),
        .wb_m_din   ( wb_m_din      ),
        .wb_wreg    ( wb_wreg       ),
        .wb_wraddr  ( wb_wraddr     ),
        //流水线暂�?
        .stall      ( stall)
    );

    //WB stage
    WB wb(
        .aluop_i    ( wb_aluop      ),
        .alures_i   ( wb_alures     ),
        .m_din_i    ( wb_m_din      ),
        .wreg_i     ( wb_wreg       ),
        .wraddr_i   ( wb_wraddr     ),

        .wreg_o     ( wb_wreg_o     ),
        .wraddr_o   ( wb_wraddr_o   ),
        .wrdata_o   ( wb_wrdata     )
    );
    //额外增加的控制模�?
    CTRL ctrl(
        .rst        ( rst ),
        .stall      ( stall),
        .stallreq_from_id   ( stallreq_from_id)

    );

endmodule

