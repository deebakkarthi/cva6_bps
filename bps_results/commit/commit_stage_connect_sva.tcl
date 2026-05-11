# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2026.03
# platform  : Linux 4.18.0-553.123.1.el8_10.x86_64
# version   : 2026.03 FCS 64 bits
# build date: 2026.03.26 12:48:29 UTC
# ----------------------------------------
# started   : 2026-05-10 22:18:08 EDT
# created   : 2026-05-10 22:28:27 EDT
# hostname  : node1-s.ece.Virginia.EDU.UVAECE
# pid       : 3643259
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:46825' '-style' 'windows' '-data' 'AAABC3icVY5dCsIwEIS/CIL44Bm8QP0pWHzoJRTfS5FSKmpKG5/1qN4kTlqoZJPM7kxmNwHMsMnf3nuGMN8xkxviCHwWK6dPlGH+vwzlioQnloKaF42UhRTHlbvqtbLlodVIK+iFpZwVm8mzlL+lk+8mdhaW8rXydOqwmurEAvZsSdnpZMIDe+FFLFV1VJ1pUqL+eppX6Q03fvYHKKEg/w==' '-bridge_url' '10.230.53.157:38257' '-proj' '/net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260510T221806--jgproject/sessionLogs/session_0' '-init' '-hidden' '/net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260510T221806--jgproject/.tmp/.initCmds.tcl' 'commit_stage.tcl'
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
analyze -sv09 -req +define+JASPER_SVA_NO_BIND /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260510T221806--jgproject/commit_stage.sva
elaborate -req -top bps_sva_1

connect bps_sva_1 bps_sva_1_i \
    -connect clk_i {clk_i}\
    -connect commit_stage_i__commit_ack_o_1_ {commit_stage_i.commit_ack_o[1]}\
    -connect commit_stage_i__commit_instr_i_0___ex__valid {commit_stage_i.commit_instr_i[0].ex.valid}\
    -connect commit_stage_i__commit_instr_i_0___is_compressed {commit_stage_i.commit_instr_i[0].is_compressed}\
    -connect commit_stage_i__commit_instr_i_0___use_imm {commit_stage_i.commit_instr_i[0].use_imm}\
    -connect commit_stage_i__commit_instr_i_0___use_pc {commit_stage_i.commit_instr_i[0].use_pc}\
    -connect commit_stage_i__commit_instr_i_1___ex__valid {commit_stage_i.commit_instr_i[1].ex.valid}\
    -connect commit_stage_i__commit_instr_i_1___is_compressed {commit_stage_i.commit_instr_i[1].is_compressed}\
    -connect commit_stage_i__commit_instr_i_1___use_imm {commit_stage_i.commit_instr_i[1].use_imm}\
    -connect commit_stage_i__commit_instr_i_1___use_pc {commit_stage_i.commit_instr_i[1].use_pc}\
    -connect commit_stage_i__commit_instr_i_1___valid {commit_stage_i.commit_instr_i[1].valid}\
    -connect commit_stage_i__commit_lsu_ready_i {commit_stage_i.commit_lsu_ready_i}\
    -connect commit_stage_i__csr_write_fflags_o {commit_stage_i.csr_write_fflags_o}\
    -connect commit_stage_i__dirty_fp_state_o {commit_stage_i.dirty_fp_state_o}\
    -connect commit_stage_i__exception_o__valid {commit_stage_i.exception_o.valid}\
    -connect commit_stage_i__fence_i_o {commit_stage_i.fence_i_o}\
    -connect commit_stage_i__fence_o {commit_stage_i.fence_o}\
    -connect commit_stage_i__no_st_pending_i {commit_stage_i.no_st_pending_i}\
    -connect commit_stage_i__we_fpr_o_0_ {commit_stage_i.we_fpr_o[0]}\
    -connect commit_stage_i__we_gpr_o_1_ {commit_stage_i.we_gpr_o[1]}


