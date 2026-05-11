# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2026.03
# platform  : Linux 4.18.0-553.123.1.el8_10.x86_64
# version   : 2026.03 FCS 64 bits
# build date: 2026.03.26 12:48:29 UTC
# ----------------------------------------
# started   : 2026-05-11 17:35:28 EDT
# created   : 2026-05-11 17:49:27 EDT
# hostname  : node1-s.ece.Virginia.EDU.UVAECE
# pid       : 491233
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:35889' '-style' 'windows' '-data' 'AAABCXicVY5JCsJAEEVfBEFceARvEEfUTS6huJcgQQxiQoa1HtWbxBeDSqq6hv/7V3UDwecQPZqm4WPBq6tEAX1r8aDP7J+9CsP/ZdtOCLmTceJCzVVmJFNx5mY/lSn1mkRFKR+rS5j9FGPVOYUbUtHBHKvL1RROZE5WojaXzFmxMLbmDUv9aOxYi1bWUE/d/92X+EbVffUN32UgpA==' '-bridge_url' '10.230.53.157:43703' '-proj' '/net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260511T173527--jgproject/sessionLogs/session_0' '-init' '-hidden' '/net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260511T173527--jgproject/.tmp/.initCmds.tcl' 'issue_stage.tcl'
# ----------------------------------------
#
# Any disclosure about the Cadence Design Systems software or its use
# model to any third party violates the written Non-Disclosure Agreement
# between Cadence Design Systems, Inc. and the customer.
#
# THIS SOFTWARE CONTAINS CONFIDENTIAL INFORMATION AND TRADE SECRETS OF
# CADENCE DESIGN SYSTEMS, INC. USE, DISCLOSURE, OR REPRODUCTION IS
# PROHIBITED WITHOUT THE PRIOR EXPRESS WRITTEN PERMISSION OF CADENCE
# DESIGN SYSTEMS, INC.
#
# Copyright (C) 2000-2026 Cadence Design Systems, Inc. All Rights
# Reserved.  Unpublished -- rights reserved under the copyright laws of
# the United States.
#
# This product includes software developed by others and redistributed
# according to license agreement. See doc/third_party_readme.txt for
# further details.
#
# RESTRICTED RIGHTS LEGEND
#
# Use, duplication, or disclosure by the Government is subject to
# restrictions as set forth in subparagraph (c) (1) (ii) of the Rights in
# Technical Data and Computer Software clause at DFARS 252.227-7013 or
# subparagraphs (c) (1) and (2) of Commercial Computer Software -- Restricted
# Rights at 48 CFR 52.227-19, as applicable.
#
#
#                           Cadence Design Systems, Inc.
#                           2655 Seely Avenue
#                           San Jose, CA 95134
#                           Phone: 408.943.1234
#
# For technical assistance visit http://support.cadence.com.

analyze -clear
analyze -sv09 -req +define+JASPER_SVA_NO_BIND /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260511T173527--jgproject/issue_stage.sva
elaborate -req -top bps_sva_1

connect bps_sva_1 bps_sva_1_i \
    -connect clk_i {clk_i}\
    -connect issue_stage_i__alu_valid_o {issue_stage_i.alu_valid_o}\
    -connect issue_stage_i__branch_valid_o {issue_stage_i.branch_valid_o}\
    -connect issue_stage_i__commit_ack_i_0_ {issue_stage_i.commit_ack_i[0]}\
    -connect issue_stage_i__commit_ack_i_1_ {issue_stage_i.commit_ack_i[1]}\
    -connect issue_stage_i__commit_instr_o_0___ex__valid {issue_stage_i.commit_instr_o[0].ex.valid}\
    -connect issue_stage_i__commit_instr_o_0___is_compressed {issue_stage_i.commit_instr_o[0].is_compressed}\
    -connect issue_stage_i__commit_instr_o_0___use_imm {issue_stage_i.commit_instr_o[0].use_imm}\
    -connect issue_stage_i__commit_instr_o_0___use_pc {issue_stage_i.commit_instr_o[0].use_pc}\
    -connect issue_stage_i__commit_instr_o_0___valid {issue_stage_i.commit_instr_o[0].valid}\
    -connect issue_stage_i__commit_instr_o_1___ex__valid {issue_stage_i.commit_instr_o[1].ex.valid}\
    -connect issue_stage_i__commit_instr_o_1___is_compressed {issue_stage_i.commit_instr_o[1].is_compressed}\
    -connect issue_stage_i__commit_instr_o_1___use_imm {issue_stage_i.commit_instr_o[1].use_imm}\
    -connect issue_stage_i__commit_instr_o_1___use_pc {issue_stage_i.commit_instr_o[1].use_pc}\
    -connect issue_stage_i__commit_instr_o_1___valid {issue_stage_i.commit_instr_o[1].valid}\
    -connect issue_stage_i__csr_valid_o {issue_stage_i.csr_valid_o}\
    -connect issue_stage_i__decoded_instr_ack_o {issue_stage_i.decoded_instr_ack_o}\
    -connect issue_stage_i__decoded_instr_i__ex__valid {issue_stage_i.decoded_instr_i.ex.valid}\
    -connect issue_stage_i__decoded_instr_i__is_compressed {issue_stage_i.decoded_instr_i.is_compressed}\
    -connect issue_stage_i__decoded_instr_i__use_imm {issue_stage_i.decoded_instr_i.use_imm}\
    -connect issue_stage_i__decoded_instr_i__use_pc {issue_stage_i.decoded_instr_i.use_pc}\
    -connect issue_stage_i__decoded_instr_i__valid {issue_stage_i.decoded_instr_i.valid}\
    -connect issue_stage_i__decoded_instr_valid_i {issue_stage_i.decoded_instr_valid_i}\
    -connect issue_stage_i__flu_ready_i {issue_stage_i.flu_ready_i}\
    -connect issue_stage_i__flush_i {issue_stage_i.flush_i}\
    -connect issue_stage_i__flush_unissued_instr_i {issue_stage_i.flush_unissued_instr_i}\
    -connect issue_stage_i__fpu_valid_o {issue_stage_i.fpu_valid_o}\
    -connect issue_stage_i__i_issue_read_operands__alu_valid_o {issue_stage_i.i_issue_read_operands.alu_valid_o}\
    -connect issue_stage_i__i_issue_read_operands__alu_valid_q {issue_stage_i.i_issue_read_operands.alu_valid_q}\
    -connect issue_stage_i__i_issue_read_operands__branch_valid_o {issue_stage_i.i_issue_read_operands.branch_valid_o}\
    -connect issue_stage_i__i_issue_read_operands__branch_valid_q {issue_stage_i.i_issue_read_operands.branch_valid_q}\
    -connect issue_stage_i__i_issue_read_operands__csr_valid_o {issue_stage_i.i_issue_read_operands.csr_valid_o}\
    -connect issue_stage_i__i_issue_read_operands__csr_valid_q {issue_stage_i.i_issue_read_operands.csr_valid_q}\
    -connect issue_stage_i__i_issue_read_operands__flu_ready_i {issue_stage_i.i_issue_read_operands.flu_ready_i}\
    -connect issue_stage_i__i_issue_read_operands__flush_i {issue_stage_i.i_issue_read_operands.flush_i}\
    -connect issue_stage_i__i_issue_read_operands__fpu_valid_o {issue_stage_i.i_issue_read_operands.fpu_valid_o}\
    -connect issue_stage_i__i_issue_read_operands__fpu_valid_q {issue_stage_i.i_issue_read_operands.fpu_valid_q}\
    -connect issue_stage_i__i_issue_read_operands__is_compressed_instr_o {issue_stage_i.i_issue_read_operands.is_compressed_instr_o}\
    -connect issue_stage_i__i_issue_read_operands__issue_ack_o {issue_stage_i.i_issue_read_operands.issue_ack_o}\
    -connect issue_stage_i__i_issue_read_operands__issue_instr_i__ex__valid {issue_stage_i.i_issue_read_operands.issue_instr_i.ex.valid}\
    -connect issue_stage_i__i_issue_read_operands__issue_instr_i__is_compressed {issue_stage_i.i_issue_read_operands.issue_instr_i.is_compressed}\
    -connect issue_stage_i__i_issue_read_operands__issue_instr_i__use_imm {issue_stage_i.i_issue_read_operands.issue_instr_i.use_imm}\
    -connect issue_stage_i__i_issue_read_operands__issue_instr_i__use_pc {issue_stage_i.i_issue_read_operands.issue_instr_i.use_pc}\
    -connect issue_stage_i__i_issue_read_operands__issue_instr_i__valid {issue_stage_i.i_issue_read_operands.issue_instr_i.valid}\
    -connect issue_stage_i__i_issue_read_operands__issue_instr_valid_i {issue_stage_i.i_issue_read_operands.issue_instr_valid_i}\
    -connect issue_stage_i__i_issue_read_operands__lsu_ready_i {issue_stage_i.i_issue_read_operands.lsu_ready_i}\
    -connect issue_stage_i__i_issue_read_operands__lsu_valid_o {issue_stage_i.i_issue_read_operands.lsu_valid_o}\
    -connect issue_stage_i__i_issue_read_operands__lsu_valid_q {issue_stage_i.i_issue_read_operands.lsu_valid_q}\
    -connect issue_stage_i__i_issue_read_operands__mult_valid_o {issue_stage_i.i_issue_read_operands.mult_valid_o}\
    -connect issue_stage_i__i_issue_read_operands__mult_valid_q {issue_stage_i.i_issue_read_operands.mult_valid_q}\
    -connect issue_stage_i__i_issue_read_operands__stall {issue_stage_i.i_issue_read_operands.stall}\
    -connect issue_stage_i__i_issue_read_operands__we_fpr_i_0_ {issue_stage_i.i_issue_read_operands.we_fpr_i[0]}\
    -connect issue_stage_i__i_issue_read_operands__we_gpr_i_0_ {issue_stage_i.i_issue_read_operands.we_gpr_i[0]}\
    -connect issue_stage_i__i_issue_read_operands__we_gpr_i_1_ {issue_stage_i.i_issue_read_operands.we_gpr_i[1]}\
    -connect issue_stage_i__i_issue_read_operands__we_pack_0_ {issue_stage_i.i_issue_read_operands.we_pack[0]}\
    -connect issue_stage_i__i_issue_read_operands__we_pack_1_ {issue_stage_i.i_issue_read_operands.we_pack[1]}\
    -connect issue_stage_i__i_re_name__flush_i {issue_stage_i.i_re_name.flush_i}\
    -connect issue_stage_i__i_re_name__flush_unissied_instr_i {issue_stage_i.i_re_name.flush_unissied_instr_i}\
    -connect issue_stage_i__i_re_name__issue_ack_i {issue_stage_i.i_re_name.issue_ack_i}\
    -connect issue_stage_i__i_re_name__issue_ack_o {issue_stage_i.i_re_name.issue_ack_o}\
    -connect issue_stage_i__i_re_name__issue_instr_i__ex__valid {issue_stage_i.i_re_name.issue_instr_i.ex.valid}\
    -connect issue_stage_i__i_re_name__issue_instr_i__is_compressed {issue_stage_i.i_re_name.issue_instr_i.is_compressed}\
    -connect issue_stage_i__i_re_name__issue_instr_i__use_imm {issue_stage_i.i_re_name.issue_instr_i.use_imm}\
    -connect issue_stage_i__i_re_name__issue_instr_i__use_pc {issue_stage_i.i_re_name.issue_instr_i.use_pc}\
    -connect issue_stage_i__i_re_name__issue_instr_i__valid {issue_stage_i.i_re_name.issue_instr_i.valid}\
    -connect issue_stage_i__i_re_name__issue_instr_o__ex__valid {issue_stage_i.i_re_name.issue_instr_o.ex.valid}\
    -connect issue_stage_i__i_re_name__issue_instr_o__is_compressed {issue_stage_i.i_re_name.issue_instr_o.is_compressed}\
    -connect issue_stage_i__i_re_name__issue_instr_o__use_imm {issue_stage_i.i_re_name.issue_instr_o.use_imm}\
    -connect issue_stage_i__i_re_name__issue_instr_o__use_pc {issue_stage_i.i_re_name.issue_instr_o.use_pc}\
    -connect issue_stage_i__i_re_name__issue_instr_o__valid {issue_stage_i.i_re_name.issue_instr_o.valid}\
    -connect issue_stage_i__i_re_name__issue_instr_valid_i {issue_stage_i.i_re_name.issue_instr_valid_i}\
    -connect issue_stage_i__i_re_name__issue_instr_valid_o {issue_stage_i.i_re_name.issue_instr_valid_o}\
    -connect issue_stage_i__i_scoreboard__commit_ack_i_0_ {issue_stage_i.i_scoreboard.commit_ack_i[0]}\
    -connect issue_stage_i__i_scoreboard__commit_ack_i_1_ {issue_stage_i.i_scoreboard.commit_ack_i[1]}\
    -connect issue_stage_i__i_scoreboard__commit_instr_o_0___ex__valid {issue_stage_i.i_scoreboard.commit_instr_o[0].ex.valid}\
    -connect issue_stage_i__i_scoreboard__commit_instr_o_0___is_compressed {issue_stage_i.i_scoreboard.commit_instr_o[0].is_compressed}\
    -connect issue_stage_i__i_scoreboard__commit_instr_o_0___use_imm {issue_stage_i.i_scoreboard.commit_instr_o[0].use_imm}\
    -connect issue_stage_i__i_scoreboard__commit_instr_o_0___use_pc {issue_stage_i.i_scoreboard.commit_instr_o[0].use_pc}\
    -connect issue_stage_i__i_scoreboard__commit_instr_o_0___valid {issue_stage_i.i_scoreboard.commit_instr_o[0].valid}\
    -connect issue_stage_i__i_scoreboard__commit_instr_o_1___ex__valid {issue_stage_i.i_scoreboard.commit_instr_o[1].ex.valid}\
    -connect issue_stage_i__i_scoreboard__commit_instr_o_1___is_compressed {issue_stage_i.i_scoreboard.commit_instr_o[1].is_compressed}\
    -connect issue_stage_i__i_scoreboard__commit_instr_o_1___use_imm {issue_stage_i.i_scoreboard.commit_instr_o[1].use_imm}\
    -connect issue_stage_i__i_scoreboard__commit_instr_o_1___use_pc {issue_stage_i.i_scoreboard.commit_instr_o[1].use_pc}\
    -connect issue_stage_i__i_scoreboard__commit_instr_o_1___valid {issue_stage_i.i_scoreboard.commit_instr_o[1].valid}\
    -connect issue_stage_i__i_scoreboard__decoded_instr_ack_o {issue_stage_i.i_scoreboard.decoded_instr_ack_o}\
    -connect issue_stage_i__i_scoreboard__decoded_instr_i__ex__valid {issue_stage_i.i_scoreboard.decoded_instr_i.ex.valid}\
    -connect issue_stage_i__i_scoreboard__decoded_instr_i__is_compressed {issue_stage_i.i_scoreboard.decoded_instr_i.is_compressed}\
    -connect issue_stage_i__i_scoreboard__decoded_instr_i__use_imm {issue_stage_i.i_scoreboard.decoded_instr_i.use_imm}\
    -connect issue_stage_i__i_scoreboard__decoded_instr_i__use_pc {issue_stage_i.i_scoreboard.decoded_instr_i.use_pc}\
    -connect issue_stage_i__i_scoreboard__decoded_instr_i__valid {issue_stage_i.i_scoreboard.decoded_instr_i.valid}\
    -connect issue_stage_i__i_scoreboard__decoded_instr_valid_i {issue_stage_i.i_scoreboard.decoded_instr_valid_i}\
    -connect issue_stage_i__i_scoreboard__flush_i {issue_stage_i.i_scoreboard.flush_i}\
    -connect issue_stage_i__i_scoreboard__flush_unissued_instr_i {issue_stage_i.i_scoreboard.flush_unissued_instr_i}\
    -connect issue_stage_i__i_scoreboard__i_popcount__data_i_0_ {issue_stage_i.i_scoreboard.i_popcount.data_i[0]}\
    -connect issue_stage_i__i_scoreboard__i_popcount__data_i_1_ {issue_stage_i.i_scoreboard.i_popcount.data_i[1]}\
    -connect issue_stage_i__i_scoreboard__i_popcount__left_child_result {issue_stage_i.i_scoreboard.i_popcount.left_child_result}\
    -connect issue_stage_i__i_scoreboard__i_popcount__padded_input_0_ {issue_stage_i.i_scoreboard.i_popcount.padded_input[0]}\
    -connect issue_stage_i__i_scoreboard__i_popcount__padded_input_1_ {issue_stage_i.i_scoreboard.i_popcount.padded_input[1]}\
    -connect issue_stage_i__i_scoreboard__i_popcount__popcount_o_0_ {issue_stage_i.i_scoreboard.i_popcount.popcount_o[0]}\
    -connect issue_stage_i__i_scoreboard__i_popcount__popcount_o_1_ {issue_stage_i.i_scoreboard.i_popcount.popcount_o[1]}\
    -connect issue_stage_i__i_scoreboard__i_popcount__right_child_result {issue_stage_i.i_scoreboard.i_popcount.right_child_result}\
    -connect issue_stage_i__i_scoreboard__issue_ack_i {issue_stage_i.i_scoreboard.issue_ack_i}\
    -connect issue_stage_i__i_scoreboard__issue_en {issue_stage_i.i_scoreboard.issue_en}\
    -connect issue_stage_i__i_scoreboard__issue_full {issue_stage_i.i_scoreboard.issue_full}\
    -connect issue_stage_i__i_scoreboard__issue_instr_o__ex__valid {issue_stage_i.i_scoreboard.issue_instr_o.ex.valid}\
    -connect issue_stage_i__i_scoreboard__issue_instr_o__is_compressed {issue_stage_i.i_scoreboard.issue_instr_o.is_compressed}\
    -connect issue_stage_i__i_scoreboard__issue_instr_o__use_imm {issue_stage_i.i_scoreboard.issue_instr_o.use_imm}\
    -connect issue_stage_i__i_scoreboard__issue_instr_o__use_pc {issue_stage_i.i_scoreboard.issue_instr_o.use_pc}\
    -connect issue_stage_i__i_scoreboard__issue_instr_o__valid {issue_stage_i.i_scoreboard.issue_instr_o.valid}\
    -connect issue_stage_i__i_scoreboard__issue_instr_valid_o {issue_stage_i.i_scoreboard.issue_instr_valid_o}\
    -connect issue_stage_i__i_scoreboard__mem_n_0___is_rd_fpr_flag {issue_stage_i.i_scoreboard.mem_n[0].is_rd_fpr_flag}\
    -connect issue_stage_i__i_scoreboard__mem_n_0___issued {issue_stage_i.i_scoreboard.mem_n[0].issued}\
    -connect issue_stage_i__i_scoreboard__mem_n_0___sbe__ex__valid {issue_stage_i.i_scoreboard.mem_n[0].sbe.ex.valid}\
    -connect issue_stage_i__i_scoreboard__mem_n_0___sbe__is_compressed {issue_stage_i.i_scoreboard.mem_n[0].sbe.is_compressed}\
    -connect issue_stage_i__i_scoreboard__mem_n_0___sbe__use_imm {issue_stage_i.i_scoreboard.mem_n[0].sbe.use_imm}\
    -connect issue_stage_i__i_scoreboard__mem_n_0___sbe__use_pc {issue_stage_i.i_scoreboard.mem_n[0].sbe.use_pc}\
    -connect issue_stage_i__i_scoreboard__mem_n_0___sbe__valid {issue_stage_i.i_scoreboard.mem_n[0].sbe.valid}\
    -connect issue_stage_i__i_scoreboard__mem_q_0___is_rd_fpr_flag {issue_stage_i.i_scoreboard.mem_q[0].is_rd_fpr_flag}\
    -connect issue_stage_i__i_scoreboard__mem_q_0___issued {issue_stage_i.i_scoreboard.mem_q[0].issued}\
    -connect issue_stage_i__i_scoreboard__mem_q_0___sbe__ex__valid {issue_stage_i.i_scoreboard.mem_q[0].sbe.ex.valid}\
    -connect issue_stage_i__i_scoreboard__mem_q_0___sbe__is_compressed {issue_stage_i.i_scoreboard.mem_q[0].sbe.is_compressed}\
    -connect issue_stage_i__i_scoreboard__mem_q_0___sbe__use_imm {issue_stage_i.i_scoreboard.mem_q[0].sbe.use_imm}\
    -connect issue_stage_i__i_scoreboard__mem_q_0___sbe__use_pc {issue_stage_i.i_scoreboard.mem_q[0].sbe.use_pc}\
    -connect issue_stage_i__i_scoreboard__mem_q_0___sbe__valid {issue_stage_i.i_scoreboard.mem_q[0].sbe.valid}\
    -connect issue_stage_i__i_scoreboard__num_commit_0_ {issue_stage_i.i_scoreboard.num_commit[0]}\
    -connect issue_stage_i__i_scoreboard__num_commit_1_ {issue_stage_i.i_scoreboard.num_commit[1]}\
    -connect issue_stage_i__i_scoreboard__resolved_branch_i__is_mispredict {issue_stage_i.i_scoreboard.resolved_branch_i.is_mispredict}\
    -connect issue_stage_i__i_scoreboard__resolved_branch_i__is_taken {issue_stage_i.i_scoreboard.resolved_branch_i.is_taken}\
    -connect issue_stage_i__i_scoreboard__resolved_branch_i__valid {issue_stage_i.i_scoreboard.resolved_branch_i.valid}\
    -connect issue_stage_i__i_scoreboard__sb_full_o {issue_stage_i.i_scoreboard.sb_full_o}\
    -connect issue_stage_i__i_scoreboard__wt_valid_i_0_ {issue_stage_i.i_scoreboard.wt_valid_i[0]}\
    -connect issue_stage_i__i_scoreboard__wt_valid_i_1_ {issue_stage_i.i_scoreboard.wt_valid_i[1]}\
    -connect issue_stage_i__i_scoreboard__wt_valid_i_2_ {issue_stage_i.i_scoreboard.wt_valid_i[2]}\
    -connect issue_stage_i__i_scoreboard__wt_valid_i_3_ {issue_stage_i.i_scoreboard.wt_valid_i[3]}\
    -connect issue_stage_i__is_compressed_instr_o {issue_stage_i.is_compressed_instr_o}\
    -connect issue_stage_i__is_ctrl_flow_i {issue_stage_i.is_ctrl_flow_i}\
    -connect issue_stage_i__issue_ack_iro_sb {issue_stage_i.issue_ack_iro_sb}\
    -connect issue_stage_i__issue_ack_sb_rename {issue_stage_i.issue_ack_sb_rename}\
    -connect issue_stage_i__issue_instr_rename_sb__ex__valid {issue_stage_i.issue_instr_rename_sb.ex.valid}\
    -connect issue_stage_i__issue_instr_rename_sb__is_compressed {issue_stage_i.issue_instr_rename_sb.is_compressed}\
    -connect issue_stage_i__issue_instr_rename_sb__use_imm {issue_stage_i.issue_instr_rename_sb.use_imm}\
    -connect issue_stage_i__issue_instr_rename_sb__use_pc {issue_stage_i.issue_instr_rename_sb.use_pc}\
    -connect issue_stage_i__issue_instr_rename_sb__valid {issue_stage_i.issue_instr_rename_sb.valid}\
    -connect issue_stage_i__issue_instr_sb_iro__ex__valid {issue_stage_i.issue_instr_sb_iro.ex.valid}\
    -connect issue_stage_i__issue_instr_sb_iro__is_compressed {issue_stage_i.issue_instr_sb_iro.is_compressed}\
    -connect issue_stage_i__issue_instr_sb_iro__use_imm {issue_stage_i.issue_instr_sb_iro.use_imm}\
    -connect issue_stage_i__issue_instr_sb_iro__use_pc {issue_stage_i.issue_instr_sb_iro.use_pc}\
    -connect issue_stage_i__issue_instr_sb_iro__valid {issue_stage_i.issue_instr_sb_iro.valid}\
    -connect issue_stage_i__issue_instr_valid_rename_sb {issue_stage_i.issue_instr_valid_rename_sb}\
    -connect issue_stage_i__issue_instr_valid_sb_iro {issue_stage_i.issue_instr_valid_sb_iro}\
    -connect issue_stage_i__lsu_ready_i {issue_stage_i.lsu_ready_i}\
    -connect issue_stage_i__lsu_valid_o {issue_stage_i.lsu_valid_o}\
    -connect issue_stage_i__mult_valid_o {issue_stage_i.mult_valid_o}\
    -connect issue_stage_i__resolve_branch_i {issue_stage_i.resolve_branch_i}\
    -connect issue_stage_i__resolved_branch_i__is_mispredict {issue_stage_i.resolved_branch_i.is_mispredict}\
    -connect issue_stage_i__resolved_branch_i__is_taken {issue_stage_i.resolved_branch_i.is_taken}\
    -connect issue_stage_i__resolved_branch_i__valid {issue_stage_i.resolved_branch_i.valid}\
    -connect issue_stage_i__sb_full_o {issue_stage_i.sb_full_o}\
    -connect issue_stage_i__we_fpr_i_0_ {issue_stage_i.we_fpr_i[0]}\
    -connect issue_stage_i__we_gpr_i_0_ {issue_stage_i.we_gpr_i[0]}\
    -connect issue_stage_i__we_gpr_i_1_ {issue_stage_i.we_gpr_i[1]}\
    -connect issue_stage_i__wt_valid_i_0_ {issue_stage_i.wt_valid_i[0]}\
    -connect issue_stage_i__wt_valid_i_1_ {issue_stage_i.wt_valid_i[1]}\
    -connect issue_stage_i__wt_valid_i_2_ {issue_stage_i.wt_valid_i[2]}\
    -connect issue_stage_i__wt_valid_i_3_ {issue_stage_i.wt_valid_i[3]}


