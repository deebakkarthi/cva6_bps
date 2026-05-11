# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2026.03
# platform  : Linux 4.18.0-553.123.1.el8_10.x86_64
# version   : 2026.03 FCS 64 bits
# build date: 2026.03.26 12:48:29 UTC
# ----------------------------------------
# started   : 2026-05-11 16:16:47 EDT
# created   : 2026-05-11 17:16:38 EDT
# hostname  : node1-s.ece.Virginia.EDU.UVAECE
# pid       : 422158
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:40155' '-style' 'windows' '-data' 'AAABA3icVY7NCsIwEIS/CIJ48OxL1D+0p76E4r2IRrFILbY966P6JnG6RSW7mcnuzJIs4OyQPUMIWLh3f5M54uj6QaxsX9ENw7/ZlRMSSu7kXGi5ShlJaThyUz3lzENuKcWLT8x+3lhzlbmFup34QC3FS8ultpqsjGvmrFgIqXjDUrkXUsNaSJSFNvi+5/VH0y/5AfXlH2E=' '-bridge_url' '10.230.53.157:37415' '-proj' '/net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260511T161646--jgproject/sessionLogs/session_0' '-init' '-hidden' '/net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260511T161646--jgproject/.tmp/.initCmds.tcl' 'frontend.tcl'
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
analyze -sv09 -req +define+JASPER_SVA_NO_BIND /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260511T161646--jgproject/frontend.sva
elaborate -req -top bps_sva_1

connect bps_sva_1 bps_sva_1_i \
    -connect clk_i {clk_i}\
    -connect i_frontend__bht_prediction_0___taken {i_frontend.bht_prediction[0].taken}\
    -connect i_frontend__bht_update__taken {i_frontend.bht_update.taken}\
    -connect i_frontend__bht_update__valid {i_frontend.bht_update.valid}\
    -connect i_frontend__bp_valid {i_frontend.bp_valid}\
    -connect i_frontend__btb_prediction_0___valid {i_frontend.btb_prediction[0].valid}\
    -connect i_frontend__btb_prediction_1___valid {i_frontend.btb_prediction[1].valid}\
    -connect i_frontend__btb_prediction_shifted_0___valid {i_frontend.btb_prediction_shifted[0].valid}\
    -connect i_frontend__btb_prediction_shifted_1___valid {i_frontend.btb_prediction_shifted[1].valid}\
    -connect i_frontend__btb_update__valid {i_frontend.btb_update.valid}\
    -connect i_frontend__debug_mode_i {i_frontend.debug_mode_i}\
    -connect i_frontend__eret_i {i_frontend.eret_i}\
    -connect i_frontend__ex_valid_i {i_frontend.ex_valid_i}\
    -connect i_frontend__fetch_entry_ready_i {i_frontend.fetch_entry_ready_i}\
    -connect i_frontend__fetch_entry_valid_o {i_frontend.fetch_entry_valid_o}\
    -connect i_frontend__flush_i {i_frontend.flush_i}\
    -connect i_frontend__gen_instr_scan_0___i_instr_scan__is_jal_r {i_frontend.gen_instr_scan[0].i_instr_scan.is_jal_r}\
    -connect i_frontend__gen_instr_scan_0___i_instr_scan__is_rvc {i_frontend.gen_instr_scan[0].i_instr_scan.is_rvc}\
    -connect i_frontend__gen_instr_scan_0___i_instr_scan__rvc_branch_o {i_frontend.gen_instr_scan[0].i_instr_scan.rvc_branch_o}\
    -connect i_frontend__gen_instr_scan_0___i_instr_scan__rvc_call_o {i_frontend.gen_instr_scan[0].i_instr_scan.rvc_call_o}\
    -connect i_frontend__gen_instr_scan_0___i_instr_scan__rvc_jalr_o {i_frontend.gen_instr_scan[0].i_instr_scan.rvc_jalr_o}\
    -connect i_frontend__gen_instr_scan_0___i_instr_scan__rvc_jr_o {i_frontend.gen_instr_scan[0].i_instr_scan.rvc_jr_o}\
    -connect i_frontend__gen_instr_scan_0___i_instr_scan__rvc_jump_o {i_frontend.gen_instr_scan[0].i_instr_scan.rvc_jump_o}\
    -connect i_frontend__gen_instr_scan_0___i_instr_scan__rvc_return_o {i_frontend.gen_instr_scan[0].i_instr_scan.rvc_return_o}\
    -connect i_frontend__gen_instr_scan_0___i_instr_scan__rvi_branch_o {i_frontend.gen_instr_scan[0].i_instr_scan.rvi_branch_o}\
    -connect i_frontend__gen_instr_scan_0___i_instr_scan__rvi_jalr_o {i_frontend.gen_instr_scan[0].i_instr_scan.rvi_jalr_o}\
    -connect i_frontend__gen_instr_scan_0___i_instr_scan__rvi_jump_o {i_frontend.gen_instr_scan[0].i_instr_scan.rvi_jump_o}\
    -connect i_frontend__gen_instr_scan_1___i_instr_scan__is_jal_r {i_frontend.gen_instr_scan[1].i_instr_scan.is_jal_r}\
    -connect i_frontend__gen_instr_scan_1___i_instr_scan__rvc_branch_o {i_frontend.gen_instr_scan[1].i_instr_scan.rvc_branch_o}\
    -connect i_frontend__gen_instr_scan_1___i_instr_scan__rvc_call_o {i_frontend.gen_instr_scan[1].i_instr_scan.rvc_call_o}\
    -connect i_frontend__gen_instr_scan_1___i_instr_scan__rvc_jalr_o {i_frontend.gen_instr_scan[1].i_instr_scan.rvc_jalr_o}\
    -connect i_frontend__gen_instr_scan_1___i_instr_scan__rvc_jr_o {i_frontend.gen_instr_scan[1].i_instr_scan.rvc_jr_o}\
    -connect i_frontend__gen_instr_scan_1___i_instr_scan__rvc_jump_o {i_frontend.gen_instr_scan[1].i_instr_scan.rvc_jump_o}\
    -connect i_frontend__gen_instr_scan_1___i_instr_scan__rvc_return_o {i_frontend.gen_instr_scan[1].i_instr_scan.rvc_return_o}\
    -connect i_frontend__i_bht__bht_prediction_o_0___taken {i_frontend.i_bht.bht_prediction_o[0].taken}\
    -connect i_frontend__i_bht__bht_update_i__taken {i_frontend.i_bht.bht_update_i.taken}\
    -connect i_frontend__i_bht__bht_update_i__valid {i_frontend.i_bht.bht_update_i.valid}\
    -connect i_frontend__i_bht__debug_mode_i {i_frontend.i_bht.debug_mode_i}\
    -connect i_frontend__i_btb__btb_prediction_o_0___valid {i_frontend.i_btb.btb_prediction_o[0].valid}\
    -connect i_frontend__i_btb__btb_prediction_o_1___valid {i_frontend.i_btb.btb_prediction_o[1].valid}\
    -connect i_frontend__i_btb__btb_update_i__valid {i_frontend.i_btb.btb_update_i.valid}\
    -connect i_frontend__i_btb__debug_mode_i {i_frontend.i_btb.debug_mode_i}\
    -connect i_frontend__i_instr_queue__branch_empty {i_frontend.i_instr_queue.branch_empty}\
    -connect i_frontend__i_instr_queue__consumed_o_0_ {i_frontend.i_instr_queue.consumed_o[0]}\
    -connect i_frontend__i_instr_queue__consumed_o_1_ {i_frontend.i_instr_queue.consumed_o[1]}\
    -connect i_frontend__i_instr_queue__fetch_entry_ready_i {i_frontend.i_instr_queue.fetch_entry_ready_i}\
    -connect i_frontend__i_instr_queue__fetch_entry_valid_o {i_frontend.i_instr_queue.fetch_entry_valid_o}\
    -connect i_frontend__i_instr_queue__fifo_pos_0_ {i_frontend.i_instr_queue.fifo_pos[0]}\
    -connect i_frontend__i_instr_queue__fifo_pos_1_ {i_frontend.i_instr_queue.fifo_pos[1]}\
    -connect i_frontend__i_instr_queue__flush_i {i_frontend.i_instr_queue.flush_i}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__empty_o {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.empty_o}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__flush_i {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.flush_i}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__gate_clock {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.gate_clock}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__pop_i {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.pop_i}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__push_i {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.push_i}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__read_pointer_n_0_ {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.read_pointer_n[0]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__read_pointer_n_1_ {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.read_pointer_n[1]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__read_pointer_q_0_ {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.read_pointer_q[0]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__read_pointer_q_1_ {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.read_pointer_q[1]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__usage_o_0_ {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.usage_o[0]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__usage_o_1_ {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.usage_o[1]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__write_pointer_n_0_ {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.write_pointer_n[0]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__write_pointer_n_1_ {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.write_pointer_n[1]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_0___i_fifo_instr_data__write_pointer_q_1_ {i_frontend.i_instr_queue.gen_instr_fifo[0].i_fifo_instr_data.write_pointer_q[1]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__empty_o {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.empty_o}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__flush_i {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.flush_i}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__gate_clock {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.gate_clock}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__pop_i {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.pop_i}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__push_i {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.push_i}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__read_pointer_n_0_ {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.read_pointer_n[0]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__read_pointer_n_1_ {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.read_pointer_n[1]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__read_pointer_q_0_ {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.read_pointer_q[0]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__read_pointer_q_1_ {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.read_pointer_q[1]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__usage_o_0_ {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.usage_o[0]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__usage_o_1_ {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.usage_o[1]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__write_pointer_n_0_ {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.write_pointer_n[0]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__write_pointer_n_1_ {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.write_pointer_n[1]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__write_pointer_q_0_ {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.write_pointer_q[0]}\
    -connect i_frontend__i_instr_queue__gen_instr_fifo_1___i_fifo_instr_data__write_pointer_q_1_ {i_frontend.i_instr_queue.gen_instr_fifo[1].i_fifo_instr_data.write_pointer_q[1]}\
    -connect i_frontend__i_instr_queue__i_popcount__left_child_result {i_frontend.i_instr_queue.i_popcount.left_child_result}\
    -connect i_frontend__i_instr_queue__i_popcount__padded_input_0_ {i_frontend.i_instr_queue.i_popcount.padded_input[0]}\
    -connect i_frontend__i_instr_queue__i_popcount__padded_input_1_ {i_frontend.i_instr_queue.i_popcount.padded_input[1]}\
    -connect i_frontend__i_instr_queue__i_popcount__popcount_o_0_ {i_frontend.i_instr_queue.i_popcount.popcount_o[0]}\
    -connect i_frontend__i_instr_queue__i_popcount__popcount_o_1_ {i_frontend.i_instr_queue.i_popcount.popcount_o[1]}\
    -connect i_frontend__i_instr_queue__i_popcount__right_child_result {i_frontend.i_instr_queue.i_popcount.right_child_result}\
    -connect i_frontend__i_instr_queue__idx_ds_d_0_ {i_frontend.i_instr_queue.idx_ds_d[0]}\
    -connect i_frontend__i_instr_queue__idx_ds_d_1_ {i_frontend.i_instr_queue.idx_ds_d[1]}\
    -connect i_frontend__i_instr_queue__idx_ds_q_0_ {i_frontend.i_instr_queue.idx_ds_q[0]}\
    -connect i_frontend__i_instr_queue__idx_ds_q_1_ {i_frontend.i_instr_queue.idx_ds_q[1]}\
    -connect i_frontend__i_instr_queue__idx_is_d {i_frontend.i_instr_queue.idx_is_d}\
    -connect i_frontend__i_instr_queue__idx_is_q {i_frontend.i_instr_queue.idx_is_q}\
    -connect i_frontend__i_instr_queue__instr_overflow {i_frontend.i_instr_queue.instr_overflow}\
    -connect i_frontend__i_instr_queue__instr_overflow_fifo_0_ {i_frontend.i_instr_queue.instr_overflow_fifo[0]}\
    -connect i_frontend__i_instr_queue__instr_overflow_fifo_1_ {i_frontend.i_instr_queue.instr_overflow_fifo[1]}\
    -connect i_frontend__i_instr_queue__instr_queue_empty_0_ {i_frontend.i_instr_queue.instr_queue_empty[0]}\
    -connect i_frontend__i_instr_queue__instr_queue_empty_1_ {i_frontend.i_instr_queue.instr_queue_empty[1]}\
    -connect i_frontend__i_instr_queue__instr_queue_usage_0__0_ {i_frontend.i_instr_queue.instr_queue_usage[0][0]}\
    -connect i_frontend__i_instr_queue__instr_queue_usage_0__1_ {i_frontend.i_instr_queue.instr_queue_usage[0][1]}\
    -connect i_frontend__i_instr_queue__instr_queue_usage_1__0_ {i_frontend.i_instr_queue.instr_queue_usage[1][0]}\
    -connect i_frontend__i_instr_queue__instr_queue_usage_1__1_ {i_frontend.i_instr_queue.instr_queue_usage[1][1]}\
    -connect i_frontend__i_instr_queue__pop_instr_0_ {i_frontend.i_instr_queue.pop_instr[0]}\
    -connect i_frontend__i_instr_queue__pop_instr_1_ {i_frontend.i_instr_queue.pop_instr[1]}\
    -connect i_frontend__i_instr_queue__popcount_0_ {i_frontend.i_instr_queue.popcount[0]}\
    -connect i_frontend__i_instr_queue__popcount_1_ {i_frontend.i_instr_queue.popcount[1]}\
    -connect i_frontend__i_instr_queue__push_instr_0_ {i_frontend.i_instr_queue.push_instr[0]}\
    -connect i_frontend__i_instr_queue__push_instr_1_ {i_frontend.i_instr_queue.push_instr[1]}\
    -connect i_frontend__i_instr_queue__push_instr_fifo_0_ {i_frontend.i_instr_queue.push_instr_fifo[0]}\
    -connect i_frontend__i_instr_queue__push_instr_fifo_1_ {i_frontend.i_instr_queue.push_instr_fifo[1]}\
    -connect i_frontend__i_instr_queue__ready_o {i_frontend.i_instr_queue.ready_o}\
    -connect i_frontend__i_instr_queue__replay_o {i_frontend.i_instr_queue.replay_o}\
    -connect i_frontend__i_instr_queue__shamt {i_frontend.i_instr_queue.shamt}\
    -connect i_frontend__i_instr_queue__taken_0_ {i_frontend.i_instr_queue.taken[0]}\
    -connect i_frontend__i_instr_queue__taken_1_ {i_frontend.i_instr_queue.taken[1]}\
    -connect i_frontend__i_instr_queue__valid_0_ {i_frontend.i_instr_queue.valid[0]}\
    -connect i_frontend__i_instr_queue__valid_1_ {i_frontend.i_instr_queue.valid[1]}\
    -connect i_frontend__i_instr_queue__valid_i_0_ {i_frontend.i_instr_queue.valid_i[0]}\
    -connect i_frontend__i_instr_queue__valid_i_1_ {i_frontend.i_instr_queue.valid_i[1]}\
    -connect i_frontend__i_instr_realign__flush_i {i_frontend.i_instr_realign.flush_i}\
    -connect i_frontend__i_instr_realign__unaligned_d {i_frontend.i_instr_realign.unaligned_d}\
    -connect i_frontend__i_instr_realign__valid_i {i_frontend.i_instr_realign.valid_i}\
    -connect i_frontend__i_instr_realign__valid_o_0_ {i_frontend.i_instr_realign.valid_o[0]}\
    -connect i_frontend__i_instr_realign__valid_o_1_ {i_frontend.i_instr_realign.valid_o[1]}\
    -connect i_frontend__i_ras__data_o__valid {i_frontend.i_ras.data_o.valid}\
    -connect i_frontend__i_ras__pop_i {i_frontend.i_ras.pop_i}\
    -connect i_frontend__i_ras__push_i {i_frontend.i_ras.push_i}\
    -connect i_frontend__i_ras__stack_d_0___valid {i_frontend.i_ras.stack_d[0].valid}\
    -connect i_frontend__i_ras__stack_d_1___valid {i_frontend.i_ras.stack_d[1].valid}\
    -connect i_frontend__i_ras__stack_q_0___valid {i_frontend.i_ras.stack_q[0].valid}\
    -connect i_frontend__i_ras__stack_q_1___valid {i_frontend.i_ras.stack_q[1].valid}\
    -connect i_frontend__icache_dreq_i__ready {i_frontend.icache_dreq_i.ready}\
    -connect i_frontend__icache_dreq_i__valid {i_frontend.icache_dreq_i.valid}\
    -connect i_frontend__icache_dreq_o__kill_s1 {i_frontend.icache_dreq_o.kill_s1}\
    -connect i_frontend__icache_dreq_o__kill_s2 {i_frontend.icache_dreq_o.kill_s2}\
    -connect i_frontend__icache_dreq_o__req {i_frontend.icache_dreq_o.req}\
    -connect i_frontend__icache_valid_q {i_frontend.icache_valid_q}\
    -connect i_frontend__if_ready {i_frontend.if_ready}\
    -connect i_frontend__instr_queue_consumed_0_ {i_frontend.instr_queue_consumed[0]}\
    -connect i_frontend__instr_queue_consumed_1_ {i_frontend.instr_queue_consumed[1]}\
    -connect i_frontend__instr_queue_ready {i_frontend.instr_queue_ready}\
    -connect i_frontend__is_branch_0_ {i_frontend.is_branch[0]}\
    -connect i_frontend__is_branch_1_ {i_frontend.is_branch[1]}\
    -connect i_frontend__is_call_0_ {i_frontend.is_call[0]}\
    -connect i_frontend__is_call_1_ {i_frontend.is_call[1]}\
    -connect i_frontend__is_jalr_0_ {i_frontend.is_jalr[0]}\
    -connect i_frontend__is_jump_0_ {i_frontend.is_jump[0]}\
    -connect i_frontend__is_jump_1_ {i_frontend.is_jump[1]}\
    -connect i_frontend__is_mispredict {i_frontend.is_mispredict}\
    -connect i_frontend__is_return_0_ {i_frontend.is_return[0]}\
    -connect i_frontend__is_return_1_ {i_frontend.is_return[1]}\
    -connect i_frontend__npc_rst_load_q {i_frontend.npc_rst_load_q}\
    -connect i_frontend__ras_pop {i_frontend.ras_pop}\
    -connect i_frontend__ras_predict__valid {i_frontend.ras_predict.valid}\
    -connect i_frontend__ras_push {i_frontend.ras_push}\
    -connect i_frontend__replay {i_frontend.replay}\
    -connect i_frontend__resolved_branch_i__is_mispredict {i_frontend.resolved_branch_i.is_mispredict}\
    -connect i_frontend__resolved_branch_i__is_taken {i_frontend.resolved_branch_i.is_taken}\
    -connect i_frontend__resolved_branch_i__valid {i_frontend.resolved_branch_i.valid}\
    -connect i_frontend__rvc_branch_0_ {i_frontend.rvc_branch[0]}\
    -connect i_frontend__rvc_branch_1_ {i_frontend.rvc_branch[1]}\
    -connect i_frontend__rvc_call_0_ {i_frontend.rvc_call[0]}\
    -connect i_frontend__rvc_call_1_ {i_frontend.rvc_call[1]}\
    -connect i_frontend__rvc_jalr_0_ {i_frontend.rvc_jalr[0]}\
    -connect i_frontend__rvc_jalr_1_ {i_frontend.rvc_jalr[1]}\
    -connect i_frontend__rvc_jr_0_ {i_frontend.rvc_jr[0]}\
    -connect i_frontend__rvc_jr_1_ {i_frontend.rvc_jr[1]}\
    -connect i_frontend__rvc_jump_0_ {i_frontend.rvc_jump[0]}\
    -connect i_frontend__rvc_jump_1_ {i_frontend.rvc_jump[1]}\
    -connect i_frontend__rvc_return_0_ {i_frontend.rvc_return[0]}\
    -connect i_frontend__rvc_return_1_ {i_frontend.rvc_return[1]}\
    -connect i_frontend__rvi_branch_0_ {i_frontend.rvi_branch[0]}\
    -connect i_frontend__rvi_jalr_0_ {i_frontend.rvi_jalr[0]}\
    -connect i_frontend__rvi_jump_0_ {i_frontend.rvi_jump[0]}\
    -connect i_frontend__taken_rvc_cf_0_ {i_frontend.taken_rvc_cf[0]}\
    -connect i_frontend__taken_rvc_cf_1_ {i_frontend.taken_rvc_cf[1]}\
    -connect i_frontend__taken_rvi_cf_0_ {i_frontend.taken_rvi_cf[0]}


