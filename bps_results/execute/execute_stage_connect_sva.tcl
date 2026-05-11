# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2026.03
# platform  : Linux 4.18.0-553.123.1.el8_10.x86_64
# version   : 2026.03 FCS 64 bits
# build date: 2026.03.26 12:48:29 UTC
# ----------------------------------------
# started   : 2026-05-10 20:42:03 EDT
# created   : 2026-05-10 20:56:21 EDT
# hostname  : node1-s.ece.Virginia.EDU.UVAECE
# pid       : 3550387
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46857' '-style' 'windows' '-data' 'AAABDXicVY5NCsIwEIW/CIK48BDu6x/WVS+huC+lFLGIDW0Ed3pUbxJfUn/oJDNv5s2bSQATL9nDe0808+qRzDC0UI+GzP45QBj/myGdkXClIefEjbOYiRhHyUX5nIq7vFTPCXM6YSFtxeKnmmrC0mpLreqgWEhnpWk10cRZG2PHkg0r+U4xZa14jMz2wyc6tfZ/94W3Xf/dN3gqIWI=' '-bridge_url' '10.230.53.157:35181' '-proj' '/net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260510T204202--jgproject/sessionLogs/session_0' '-init' '-hidden' '/net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260510T204202--jgproject/.tmp/.initCmds.tcl' 'execute_stage.tcl'
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
analyze -sv09 -req +define+JASPER_SVA_NO_BIND /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260510T204202--jgproject/execute_stage.sva
elaborate -req -top bps_sva_1

connect bps_sva_1 bps_sva_1_i \
    -connect clk_i {clk_i}\
    -connect ex_stage_i__alu_valid_i {ex_stage_i.alu_valid_i}\
    -connect ex_stage_i__branch_valid_i {ex_stage_i.branch_valid_i}\
    -connect ex_stage_i__csr_buffer_i__csr_reg_q__valid {ex_stage_i.csr_buffer_i.csr_reg_q.valid}\
    -connect ex_stage_i__csr_commit_i {ex_stage_i.csr_commit_i}\
    -connect ex_stage_i__csr_valid_i {ex_stage_i.csr_valid_i}\
    -connect ex_stage_i__dcache_req_ports_i_1___data_gnt {ex_stage_i.dcache_req_ports_i[1].data_gnt}\
    -connect ex_stage_i__dcache_req_ports_i_1___data_rvalid {ex_stage_i.dcache_req_ports_i[1].data_rvalid}\
    -connect ex_stage_i__dcache_req_ports_i_2___data_gnt {ex_stage_i.dcache_req_ports_i[2].data_gnt}\
    -connect ex_stage_i__dcache_wbuffer_empty_i {ex_stage_i.dcache_wbuffer_empty_i}\
    -connect ex_stage_i__debug_mode_i {ex_stage_i.debug_mode_i}\
    -connect ex_stage_i__flu_ready_o {ex_stage_i.flu_ready_o}\
    -connect ex_stage_i__flu_valid_o {ex_stage_i.flu_valid_o}\
    -connect ex_stage_i__flush_i {ex_stage_i.flush_i}\
    -connect ex_stage_i__fpu_valid_i {ex_stage_i.fpu_valid_i}\
    -connect ex_stage_i__fpu_valid_o {ex_stage_i.fpu_valid_o}\
    -connect ex_stage_i__i_mult__i_div__div_res_zero_q {ex_stage_i.i_mult.i_div.div_res_zero_q}\
    -connect ex_stage_i__i_mult__i_div__rem_sel_q {ex_stage_i.i_mult.i_div.rem_sel_q}\
    -connect ex_stage_i__i_mult__i_div__state_q_0_ {ex_stage_i.i_mult.i_div.state_q[0]}\
    -connect ex_stage_i__i_mult__i_multiplier__mult_valid_o {ex_stage_i.i_mult.i_multiplier.mult_valid_o}\
    -connect ex_stage_i__i_mult__mul_valid {ex_stage_i.i_mult.mul_valid}\
    -connect ex_stage_i__i_mult__word_op_q {ex_stage_i.i_mult.word_op_q}\
    -connect ex_stage_i__icache_areq_i__fetch_req {ex_stage_i.icache_areq_i.fetch_req}\
    -connect ex_stage_i__is_compressed_instr_i {ex_stage_i.is_compressed_instr_i}\
    -connect ex_stage_i__load_valid_o {ex_stage_i.load_valid_o}\
    -connect ex_stage_i__lsu_commit_i {ex_stage_i.lsu_commit_i}\
    -connect ex_stage_i__lsu_commit_ready_o {ex_stage_i.lsu_commit_ready_o}\
    -connect ex_stage_i__lsu_i__i_store_unit__state_q_0_ {ex_stage_i.lsu_i.i_store_unit.state_q[0]}\
    -connect ex_stage_i__lsu_i__i_store_unit__state_q_1_ {ex_stage_i.lsu_i.i_store_unit.state_q[1]}\
    -connect ex_stage_i__lsu_i__i_store_unit__store_buffer_i__commit_queue_q_0___valid {ex_stage_i.lsu_i.i_store_unit.store_buffer_i.commit_queue_q[0].valid}\
    -connect ex_stage_i__lsu_i__i_store_unit__store_buffer_i__commit_queue_q_1___valid {ex_stage_i.lsu_i.i_store_unit.store_buffer_i.commit_queue_q[1].valid}\
    -connect ex_stage_i__lsu_i__i_store_unit__store_buffer_i__commit_queue_q_2___valid {ex_stage_i.lsu_i.i_store_unit.store_buffer_i.commit_queue_q[2].valid}\
    -connect ex_stage_i__lsu_i__i_store_unit__store_buffer_i__commit_queue_q_3___valid {ex_stage_i.lsu_i.i_store_unit.store_buffer_i.commit_queue_q[3].valid}\
    -connect ex_stage_i__lsu_i__i_store_unit__store_buffer_i__speculative_queue_q_0___valid {ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_queue_q[0].valid}\
    -connect ex_stage_i__lsu_i__i_store_unit__store_buffer_i__speculative_queue_q_1___valid {ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_queue_q[1].valid}\
    -connect ex_stage_i__lsu_i__i_store_unit__store_buffer_i__speculative_queue_q_2___valid {ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_queue_q[2].valid}\
    -connect ex_stage_i__lsu_i__i_store_unit__store_buffer_i__speculative_queue_q_3___valid {ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_queue_q[3].valid}\
    -connect ex_stage_i__lsu_i__i_store_unit__store_buffer_i__speculative_read_pointer_q_0_ {ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_read_pointer_q[0]}\
    -connect ex_stage_i__lsu_i__i_store_unit__store_buffer_i__speculative_read_pointer_q_1_ {ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_read_pointer_q[1]}\
    -connect ex_stage_i__lsu_i__i_store_unit__store_buffer_i__speculative_write_pointer_q_0_ {ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_write_pointer_q[0]}\
    -connect ex_stage_i__lsu_i__i_store_unit__store_buffer_i__speculative_write_pointer_q_1_ {ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_write_pointer_q[1]}\
    -connect ex_stage_i__lsu_i__lsu_bypass_i__mem_q_0___valid {ex_stage_i.lsu_i.lsu_bypass_i.mem_q[0].valid}\
    -connect ex_stage_i__lsu_i__lsu_bypass_i__mem_q_1___valid {ex_stage_i.lsu_i.lsu_bypass_i.mem_q[1].valid}\
    -connect ex_stage_i__lsu_i__lsu_bypass_i__read_pointer_q {ex_stage_i.lsu_i.lsu_bypass_i.read_pointer_q}\
    -connect ex_stage_i__lsu_i__lsu_bypass_i__status_cnt_q_1_ {ex_stage_i.lsu_i.lsu_bypass_i.status_cnt_q[1]}\
    -connect ex_stage_i__lsu_i__lsu_bypass_i__write_pointer_q {ex_stage_i.lsu_i.lsu_bypass_i.write_pointer_q}\
    -connect ex_stage_i__lsu_ready_o {ex_stage_i.lsu_ready_o}\
    -connect ex_stage_i__lsu_valid_i {ex_stage_i.lsu_valid_i}\
    -connect ex_stage_i__mult_valid_i {ex_stage_i.mult_valid_i}\
    -connect ex_stage_i__no_st_pending_o {ex_stage_i.no_st_pending_o}\
    -connect ex_stage_i__resolve_branch_o {ex_stage_i.resolve_branch_o}\
    -connect ex_stage_i__resolved_branch_o__is_mispredict {ex_stage_i.resolved_branch_o.is_mispredict}\
    -connect ex_stage_i__resolved_branch_o__is_taken {ex_stage_i.resolved_branch_o.is_taken}\
    -connect ex_stage_i__store_valid_o {ex_stage_i.store_valid_o}


