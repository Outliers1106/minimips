//------------------------------------------------------------------------------
// Maintainance:    HITwh NSCSCC TEAM
// Engineer:        RickyTino
// 
// Create Date:     2019/03/28
// Manager Name:    RickyTino
// Annotation:      SPC
// Module Name:     ID
// Project Name:    miniMIPS
//
// Revision:
// Revision 0.01 - File Created
//
// Additional Comments:
// 
//------------------------------------------------------------------------------
`include "defines.v"

module ID
(
    input  wire [31: 0] pc,         // use to find the Exceptions, you can use it
    input  wire [31: 0] inst,       // instruction

    output reg  [ 4: 0] r1addr,     // default rs
    input  wire [31: 0] r1data,
    output reg  [ 4: 0] r2addr,     // default rt
    input  wire [31: 0] r2data,

    output wire [31: 0] opr1,       // operator 1
    output wire [31: 0] opr2,       // operator 2
    output reg  [ 3: 0] aluop,      // alu type
    output wire [31: 0] offset,
    output reg          wreg,       // reg write enable signal
    output reg  [ 4: 0] wraddr,

    output reg          br_flag,    // branch flag
    output reg  [31: 0] br_addr,    // branch address

    output wire          stallreq,    // use to requre the pipeline stall, you can use it

    input  wire [31: 0] regdata_from_ex,//++++++++++++
    input  wire [ 4: 0] regaddr_from_id_ex,//+++++++++++++
    input  wire         reg_enable_from_id_ex,//+++++++++++++
    input  wire [ 3: 0] alu_from_ex,
    input  wire [ 3: 0] alu_from_mem,//alu_op from mem
    input  wire [31: 0] m_din_from_mem,//mem_data write to reg (from mem)
    input  wire [31: 0] regdata_from_mem,//++++
    input  wire [ 4: 0] regaddr_from_mem,//++++
    input  wire         reg_enable_from_mem//++++

);

    wire [ 5: 0] opcode    = inst[31:26];
    wire [ 4: 0] rs        = inst[25:21];
    wire [ 4: 0] rt        = inst[20:16];
    wire [ 4: 0] rd        = inst[15:11];
    wire [ 4: 0] sa        = inst[10: 6];
    wire [ 5: 0] funct     = inst[ 5: 0];
    wire [15: 0] immediate = inst[15: 0];
    wire [25: 0] j_offset  = inst[25: 0];
    wire [ 2: 0] sel       = inst[ 3: 0];

    wire [31: 0] zero_ext = {16'b0, immediate};
    wire [31: 0] sign_ext = {{16{immediate[15]}}, immediate};
    wire [31: 0] lui_ext  = {immediate, 16'b0};

    wire [31: 0] pcp4      = pc + 32'd4;
    wire [31: 0] br_target = pcp4 + (sign_ext << 2);

    reg  [31: 0] ext_imme;
    reg          r1read;
    reg          r2read;
    wire         pre_inst_is_lw;
    reg  [31: 0] r1data_out;
    reg  [31: 0] r2data_out;
    reg          stallreq_reg1;
    reg          stallreq_reg2;

    assign pre_inst_is_lw = (alu_from_ex==`ALU_LW)?1'b1:1'b0;//judge whether inst is lw 
    assign offset = sign_ext;
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    always @ (*) begin
        stallreq_reg1 <= 1'b0;
        if(pre_inst_is_lw == 1'b1 && regaddr_from_id_ex == r1addr && r1read == 1'b1) begin
            stallreq_reg1 <= 1'b1;
        end else if(reg_enable_from_id_ex == 1'b1 && regaddr_from_id_ex == r1addr) begin
            r1data_out <= regdata_from_ex;
        end else if(reg_enable_from_mem == 1'b1 && regaddr_from_mem == r1addr) begin
            r1data_out <= regdata_from_mem;
        end else begin
            r1data_out <= r1data;
        end
    end
    always @ (*) begin
        stallreq_reg2 <= 1'b0;
        if(pre_inst_is_lw == 1'b1 && regaddr_from_id_ex == r2addr && r2read == 1'b1) begin
            stallreq_reg2 <= 1'b1;
        end else if(reg_enable_from_id_ex == 1'b1 && regaddr_from_id_ex == r2addr) begin
            r2data_out <= regdata_from_ex;
        end else if(reg_enable_from_mem == 1'b1 && regaddr_from_mem == r2addr) begin
            r2data_out <= (alu_from_mem == `ALU_LW) ? m_din_from_mem : regdata_from_mem;
        end else begin
            r2data_out <= r2data;
        end
    end

    assign opr1 = r1read ? r1data_out : ext_imme;
    assign opr2 = r2read ? r2data_out : ext_imme;
    assign stallreq = stallreq_reg1 | stallreq_reg2;

    /*
    always @(*) begin
        stallreq <= 1'b0;
        if ((r1addr==regaddr_from_id_ex)&&(reg_enable_from_id_ex==1'b1)&&(r1read==1'b1)) begin
            r1data_out <= regdata_from_ex;
            if(pre_inst_is_lw==1'b1) begin//if the pre inst is lw then stop
                stallreq <= 1'b1;
            end
        end else if((r1addr==regaddr_from_mem)&&(reg_enable_from_mem==1'b1)&&(r1read==1'b1))begin
            r1data_out <= (alu_from_mem==`ALU_LW)?m_:regdata_from_mem;
            if(pre_inst_is_lw==1'b1) begin//if the pre inst is lw then stop
                stallreq <= 1'b1;
            end
        end else begin
            r1data_out <= r1data;
        end
    end
    */
    always @(*) begin
        aluop     <= `ALU_NOP;
        r1read    <= 1'b0;
        r2read    <= 1'b0;
        wreg      <= 1'b0;
        r1addr    <=  rs;
        r2addr    <=  rt;
        wraddr    <=  rd;
        ext_imme  <= 32'b0;
        br_flag   <= 1'b0;
        br_addr   <= 32'b0;

        case (opcode)
            `OP_OPECIAL: begin
                case (funct)
                    `OP_SLL: begin
                        aluop     <= `ALU_SLL;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                        ext_imme  <=  sa;
                    end

                    `OP_SRL: begin
                        aluop     <= `ALU_SRL;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                        ext_imme  <=  sa;
                    end

                    `OP_SRA: begin
                        aluop     <= `ALU_SRA;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                        ext_imme  <=  sa;
                    end

                    `OP_SLLV: begin
                        aluop     <= `ALU_SLL;
                        r1read    <= 1'b1;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                    end

                    `OP_SRLV: begin
                        aluop     <= `ALU_SRL;
                        r1read    <= 1'b1;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                    end

                    `OP_SRAV: begin
                        aluop     <= `ALU_SRA;
                        r1read    <= 1'b1;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                    end

                    `OP_JR: begin
                        r1read    <= 1'b1;
                        br_flag   <= 1'b1;
                        br_addr   <= opr1;
                    end

                    `OP_ADD,
                    `OP_ADDU: begin
                        aluop     <= `ALU_ADD;
                        r1read    <= 1'b1;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                    end

                    `OP_SUB,
                    `OP_SUBU: begin
                        aluop     <= `ALU_SUB;
                        r1read    <= 1'b1;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                    end

                    `OP_AND: begin
                        aluop     <= `ALU_AND;
                        r1read    <= 1'b1;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                    end

                    `OP_OR: begin
                        aluop     <= `ALU_OR;
                        r1read    <= 1'b1;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                    end

                    `OP_XOR: begin
                        aluop     <= `ALU_XOR;
                        r1read    <= 1'b1;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                    end

                    `OP_NOR: begin
                        aluop     <= `ALU_NOR;
                        r1read    <= 1'b1;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                    end

                    `OP_SLT: begin
                        aluop     <= `ALU_SLT;
                        r1read    <= 1'b1;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                    end

                    `OP_SLTU: begin
                        aluop     <= `ALU_SLTU;
                        r1read    <= 1'b1;
                        r2read    <= 1'b1;
                        wreg      <= 1'b1;
                    end
                endcase
            end

            `OP_J: begin
                br_flag   <= 1'b1;
                br_addr   <= {pcp4[31:28], j_offset, 2'b00};
            end

            `OP_JAL: begin
                aluop     <= `ALU_JAL;
                wreg      <= 1'b1;
                wraddr    <= 5'd31;
                br_flag   <= 1'b1;
                br_addr   <= {pcp4[31:28], j_offset, 2'b00};
            end

            `OP_BEQ: begin
                r1read    <= 1'b1;
                r2read    <= 1'b1;
                br_flag   <= opr1 == opr2;
                br_addr   <= br_target;
            end

            `OP_BNE: begin
                r1read    <= 1'b1;
                r2read    <= 1'b1;
                br_flag   <= !(opr1 == opr2);
                br_addr   <= br_target;
            end

            `OP_BLEZ: if(rt == 5'b0) begin
                r1read    <= 1'b1;
                br_flag   <= opr1 <= 32'd0;
                br_addr   <= br_target;
            end

            `OP_BGTZ: if(rt == 5'b0) begin
                r1read    <= 1'b1;
                br_flag   <= opr1 > 32'd0;
                br_addr   <= br_target;
            end

            `OP_ADDI,
            `OP_ADDIU: begin
                aluop     <= `ALU_ADD;
                r1read    <= 1'b1;
                wreg      <= 1'b1;
                wraddr    <=  rt;
                ext_imme  <=  sign_ext;
            end

            `OP_SLTI: begin
                aluop     <= `ALU_SLT;
                r1read    <= 1'b1;
                wreg      <= 1'b1;
                wraddr    <=  rt;
                ext_imme  <=  sign_ext;
            end

            `OP_SLTIU: begin
                aluop     <= `ALU_SLTU;
                r1read    <= 1'b1;
                wreg      <= 1'b1;
                wraddr    <=  rt;
                ext_imme  <=  sign_ext;
            end

            `OP_ANDI: begin
                aluop     <= `ALU_AND;
                r1read    <= 1'b1;
                wreg      <= 1'b1;
                wraddr    <=  rt;
                ext_imme  <=  zero_ext;
            end

            `OP_ORI: begin
                aluop     <= `ALU_OR;
                r1read    <= 1'b1;
                wreg      <= 1'b1;
                wraddr    <=  rt;
                ext_imme  <=  zero_ext;
            end

            `OP_XORI: begin
                aluop     <= `ALU_XOR;
                r1read    <= 1'b1;
                wreg      <= 1'b1;
                wraddr    <=  rt;
                ext_imme  <=  zero_ext;
            end

            `OP_LUI: if(rs == 5'b0) begin
                aluop     <= `ALU_OR;
                r1read    <= 1'b1;
                wreg      <= 1'b1;
                wraddr    <=  rt;
                ext_imme  <=  lui_ext;
            end

            `OP_LW: begin
                aluop     <= `ALU_LW;
                r1read    <= 1'b1;
                wreg      <= 1'b1;
                wraddr    <= rt;
            end

            `OP_SW: begin
                aluop     <= `ALU_SW;
                r1read    <= 1'b1;
                r2read    <= 1'b1;
            end
        endcase
    end

endmodule