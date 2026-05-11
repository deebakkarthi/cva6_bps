# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2026.03
# platform  : Linux 4.18.0-553.123.1.el8_10.x86_64
# version   : 2026.03 FCS 64 bits
# build date: 2026.03.26 12:48:29 UTC
# ----------------------------------------
# started   : 2026-05-11 17:22:13 EDT
# created   : 2026-05-11 17:31:08 EDT
# hostname  : node1-s.ece.Virginia.EDU.UVAECE
# pid       : 479413
# arguments : '-label' 'session_0' '-console' '//127.0.0.1:36051' '-style' 'windows' '-data' 'AAABA3icVY7NCoJQEIU/gyBatO4l7EeoNr5E0T6kRIpIUVvXo/Ym9qlQOPfOzzlzZu4Fgu4Sv5qmobPg02figKG1eDRk9u9BhvG/2ZYzQh7knMh4cpWZyNScuVvPZS72KplERcri15uqKyidvYkOxkRdoaZ0IndbLWpjxZKIlb41blh7jvpOJjJHbgqdz377Ut+o+09+AeVkHzg=' '-bridge_url' '10.230.53.157:35705' '-proj' '/net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260511T172212--jgproject/sessionLogs/session_0' '-init' '-hidden' '/net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260511T172212--jgproject/.tmp/.initCmds.tcl' 'id_stage.tcl'
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
analyze -sv09 -req +define+JASPER_SVA_NO_BIND /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/cva6_verif/jasper_outputs/20260511T172212--jgproject/id_stage.sva
elaborate -req -top bps_sva_1

connect bps_sva_1 bps_sva_1_i \
    -connect clk_i {clk_i}\
    -connect id_stage_i__debug_mode_i {id_stage_i.debug_mode_i}\
    -connect id_stage_i__decoded_instruction__use_pc {id_stage_i.decoded_instruction.use_pc}\
    -connect id_stage_i__decoder_i__debug_mode_i {id_stage_i.decoder_i.debug_mode_i}\
    -connect id_stage_i__decoder_i__ebreak {id_stage_i.decoder_i.ebreak}\
    -connect id_stage_i__decoder_i__fs_i_0_ {id_stage_i.decoder_i.fs_i[0]}\
    -connect id_stage_i__decoder_i__fs_i_1_ {id_stage_i.decoder_i.fs_i[1]}\
    -connect id_stage_i__fs_i_0_ {id_stage_i.fs_i[0]}\
    -connect id_stage_i__fs_i_1_ {id_stage_i.fs_i[1]}\
    -connect id_stage_i__is_ctrl_flow_o {id_stage_i.is_ctrl_flow_o}\
    -connect id_stage_i__issue_entry_o__ex__valid {id_stage_i.issue_entry_o.ex.valid}\
    -connect id_stage_i__issue_entry_o__is_compressed {id_stage_i.issue_entry_o.is_compressed}\
    -connect id_stage_i__issue_entry_o__use_imm {id_stage_i.issue_entry_o.use_imm}\
    -connect id_stage_i__issue_entry_o__use_pc {id_stage_i.issue_entry_o.use_pc}\
    -connect id_stage_i__issue_entry_o__valid {id_stage_i.issue_entry_o.valid}\
    -connect id_stage_i__issue_entry_valid_o {id_stage_i.issue_entry_valid_o}\
    -connect id_stage_i__issue_n__is_ctrl_flow {id_stage_i.issue_n.is_ctrl_flow}\
    -connect id_stage_i__issue_n__sbe__ex__valid {id_stage_i.issue_n.sbe.ex.valid}\
    -connect id_stage_i__issue_n__sbe__is_compressed {id_stage_i.issue_n.sbe.is_compressed}\
    -connect id_stage_i__issue_n__sbe__use_imm {id_stage_i.issue_n.sbe.use_imm}\
    -connect id_stage_i__issue_n__sbe__use_pc {id_stage_i.issue_n.sbe.use_pc}\
    -connect id_stage_i__issue_n__sbe__valid {id_stage_i.issue_n.sbe.valid}\
    -connect id_stage_i__issue_n__valid {id_stage_i.issue_n.valid}\
    -connect id_stage_i__issue_q__is_ctrl_flow {id_stage_i.issue_q.is_ctrl_flow}\
    -connect id_stage_i__issue_q__sbe__ex__valid {id_stage_i.issue_q.sbe.ex.valid}\
    -connect id_stage_i__issue_q__sbe__is_compressed {id_stage_i.issue_q.sbe.is_compressed}\
    -connect id_stage_i__issue_q__sbe__use_imm {id_stage_i.issue_q.sbe.use_imm}\
    -connect id_stage_i__issue_q__sbe__use_pc {id_stage_i.issue_q.sbe.use_pc}\
    -connect id_stage_i__issue_q__sbe__valid {id_stage_i.issue_q.sbe.valid}\
    -connect id_stage_i__issue_q__valid {id_stage_i.issue_q.valid}


