// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fp2int,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-e,HLS_INPUT_CLOCK=3.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.728000,HLS_SYN_LAT=2,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=69,HLS_SYN_LUT=480,HLS_VERSION=2019_1}" *)

module fp2int (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r,
        output_r,
        output_r_ap_vld
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] input_r;
output  [31:0] output_r;
output   output_r_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg output_r_ap_vld;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [0:0] p_Result_s_reg_199;
wire   [22:0] tmp_V_1_fu_83_p1;
reg   [22:0] tmp_V_1_reg_204;
wire   [0:0] isNeg_fu_97_p3;
reg   [0:0] isNeg_reg_209;
wire  signed [8:0] ush_fu_115_p3;
reg  signed [8:0] ush_reg_214;
wire   [31:0] p_Val2_5_fu_180_p3;
reg   [31:0] p_Val2_5_reg_220;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire   [31:0] p_Val2_s_fu_61_p1;
wire   [7:0] tmp_V_fu_73_p4;
wire   [8:0] zext_ln339_fu_87_p1;
wire   [8:0] add_ln339_fu_91_p2;
wire   [7:0] sub_ln1311_fu_105_p2;
wire  signed [8:0] sext_ln1311_fu_111_p1;
wire   [24:0] mantissa_V_fu_123_p4;
wire  signed [31:0] sext_ln1311_1_fu_136_p1;
wire  signed [24:0] sext_ln1311_2_fu_139_p1;
wire   [78:0] zext_ln682_fu_132_p1;
wire   [78:0] zext_ln1287_fu_142_p1;
wire   [24:0] r_V_fu_146_p2;
wire   [0:0] tmp_fu_158_p3;
wire   [78:0] r_V_1_fu_152_p2;
wire   [31:0] zext_ln662_fu_166_p1;
wire   [31:0] tmp_1_fu_170_p4;
wire   [31:0] result_V_1_fu_187_p2;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        isNeg_reg_209 <= add_ln339_fu_91_p2[32'd8];
        p_Result_s_reg_199 <= p_Val2_s_fu_61_p1[32'd31];
        tmp_V_1_reg_204 <= tmp_V_1_fu_83_p1;
        ush_reg_214 <= ush_fu_115_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_Val2_5_reg_220 <= p_Val2_5_fu_180_p3;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_r_ap_vld = 1'b1;
    end else begin
        output_r_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln339_fu_91_p2 = ($signed(9'd385) + $signed(zext_ln339_fu_87_p1));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign isNeg_fu_97_p3 = add_ln339_fu_91_p2[32'd8];

assign mantissa_V_fu_123_p4 = {{{{1'd1}, {tmp_V_1_reg_204}}}, {1'd0}};

assign output_r = ((p_Result_s_reg_199[0:0] === 1'b1) ? result_V_1_fu_187_p2 : p_Val2_5_reg_220);

assign p_Val2_5_fu_180_p3 = ((isNeg_reg_209[0:0] === 1'b1) ? zext_ln662_fu_166_p1 : tmp_1_fu_170_p4);

assign p_Val2_s_fu_61_p1 = input_r;

assign r_V_1_fu_152_p2 = zext_ln682_fu_132_p1 << zext_ln1287_fu_142_p1;

assign r_V_fu_146_p2 = mantissa_V_fu_123_p4 >> sext_ln1311_2_fu_139_p1;

assign result_V_1_fu_187_p2 = (32'd0 - p_Val2_5_reg_220);

assign sext_ln1311_1_fu_136_p1 = ush_reg_214;

assign sext_ln1311_2_fu_139_p1 = ush_reg_214;

assign sext_ln1311_fu_111_p1 = $signed(sub_ln1311_fu_105_p2);

assign sub_ln1311_fu_105_p2 = (8'd127 - tmp_V_fu_73_p4);

assign tmp_1_fu_170_p4 = {{r_V_1_fu_152_p2[55:24]}};

assign tmp_V_1_fu_83_p1 = p_Val2_s_fu_61_p1[22:0];

assign tmp_V_fu_73_p4 = {{p_Val2_s_fu_61_p1[30:23]}};

assign tmp_fu_158_p3 = r_V_fu_146_p2[32'd24];

assign ush_fu_115_p3 = ((isNeg_fu_97_p3[0:0] === 1'b1) ? sext_ln1311_fu_111_p1 : add_ln339_fu_91_p2);

assign zext_ln1287_fu_142_p1 = $unsigned(sext_ln1311_1_fu_136_p1);

assign zext_ln339_fu_87_p1 = tmp_V_fu_73_p4;

assign zext_ln662_fu_166_p1 = tmp_fu_158_p3;

assign zext_ln682_fu_132_p1 = mantissa_V_fu_123_p4;

endmodule //fp2int
