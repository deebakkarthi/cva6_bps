clear -all
if {[file exists "database"]} {
	restore database
} else {
	set_task_compile_time_limit 1000
	set_property_compile_time_limit 1000
	analyze -sv -f cva6.f -bbox_m aes -bbox_m std_cache_subsystem
	elaborate -top ariane -optimize_implication_assert
	clock clk_i
	reset !rst_ni
	save database -light -include elaborated_design
}

check_bps -init
# Active low
waveform -reset rst_ni==0'b1

# Issue signals
scope -add\
	"issue_stage_i.alu_valid_o"\
        "issue_stage_i.branch_valid_o"\
        "issue_stage_i.commit_ack_i\[0\]"\
        "issue_stage_i.commit_ack_i\[1\]"\
        "issue_stage_i.commit_instr_o\[0\].ex.valid"\
        "issue_stage_i.commit_instr_o\[0\].is_compressed"\
        "issue_stage_i.commit_instr_o\[0\].use_imm"\
        "issue_stage_i.commit_instr_o\[0\].use_pc"\
        "issue_stage_i.commit_instr_o\[0\].use_zimm"\
        "issue_stage_i.commit_instr_o\[0\].valid"\
        "issue_stage_i.commit_instr_o\[1\].ex.valid"\
        "issue_stage_i.commit_instr_o\[1\].is_compressed"\
        "issue_stage_i.commit_instr_o\[1\].use_imm"\
        "issue_stage_i.commit_instr_o\[1\].use_pc"\
        "issue_stage_i.commit_instr_o\[1\].use_zimm"\
        "issue_stage_i.commit_instr_o\[1\].valid"\
        "issue_stage_i.csr_valid_o"\
        "issue_stage_i.decoded_instr_ack_o"\
        "issue_stage_i.decoded_instr_i.ex.valid"\
        "issue_stage_i.decoded_instr_i.is_compressed"\
        "issue_stage_i.decoded_instr_i.use_imm"\
        "issue_stage_i.decoded_instr_i.use_pc"\
        "issue_stage_i.decoded_instr_i.use_zimm"\
        "issue_stage_i.decoded_instr_i.valid"\
        "issue_stage_i.decoded_instr_valid_i"\
        "issue_stage_i.ex_ex_i\[0\].valid"\
        "issue_stage_i.ex_ex_i\[1\].valid"\
        "issue_stage_i.ex_ex_i\[2\].valid"\
        "issue_stage_i.ex_ex_i\[3\].valid"\
        "issue_stage_i.flu_ready_i"\
        "issue_stage_i.flush_i"\
        "issue_stage_i.flush_unissued_instr_i"\
        "issue_stage_i.fpu_fmt_o\[0\]"\
        "issue_stage_i.fpu_fmt_o\[1\]"\
        "issue_stage_i.fpu_ready_i"\
        "issue_stage_i.fpu_valid_o"\
        "issue_stage_i.i_issue_read_operands.alu_valid_o"\
        "issue_stage_i.i_issue_read_operands.alu_valid_q"\
        "issue_stage_i.i_issue_read_operands.branch_valid_o"\
        "issue_stage_i.i_issue_read_operands.branch_valid_q"\
        "issue_stage_i.i_issue_read_operands.csr_valid_o"\
        "issue_stage_i.i_issue_read_operands.csr_valid_q"\
        "issue_stage_i.i_issue_read_operands.flu_ready_i"\
        "issue_stage_i.i_issue_read_operands.flush_i"\
        "issue_stage_i.i_issue_read_operands.fpu_fmt_o\[0\]"\
        "issue_stage_i.i_issue_read_operands.fpu_fmt_o\[1\]"\
        "issue_stage_i.i_issue_read_operands.fpu_fmt_q\[0\]"\
        "issue_stage_i.i_issue_read_operands.fpu_fmt_q\[1\]"\
        "issue_stage_i.i_issue_read_operands.fpu_ready_i"\
        "issue_stage_i.i_issue_read_operands.fpu_valid_o"\
        "issue_stage_i.i_issue_read_operands.fpu_valid_q"\
        "issue_stage_i.i_issue_read_operands.is_compressed_instr_o"\
        "issue_stage_i.i_issue_read_operands.issue_ack_o"\
        "issue_stage_i.i_issue_read_operands.issue_instr_i.ex.valid"\
        "issue_stage_i.i_issue_read_operands.issue_instr_i.is_compressed"\
        "issue_stage_i.i_issue_read_operands.issue_instr_i.use_imm"\
        "issue_stage_i.i_issue_read_operands.issue_instr_i.use_pc"\
        "issue_stage_i.i_issue_read_operands.issue_instr_i.use_zimm"\
        "issue_stage_i.i_issue_read_operands.issue_instr_i.valid"\
        "issue_stage_i.i_issue_read_operands.issue_instr_valid_i"\
        "issue_stage_i.i_issue_read_operands.lsu_ready_i"\
        "issue_stage_i.i_issue_read_operands.lsu_valid_o"\
        "issue_stage_i.i_issue_read_operands.lsu_valid_q"\
        "issue_stage_i.i_issue_read_operands.mult_valid_o"\
        "issue_stage_i.i_issue_read_operands.mult_valid_q"\
        "issue_stage_i.i_issue_read_operands.orig_instr.atype.aq"\
        "issue_stage_i.i_issue_read_operands.orig_instr.atype.rl"\
        "issue_stage_i.i_issue_read_operands.orig_instr.rftype.fmt\[25\]"\
        "issue_stage_i.i_issue_read_operands.orig_instr.rftype.fmt\[26\]"\
        "issue_stage_i.i_issue_read_operands.orig_instr.rftype.rm\[12\]"\
        "issue_stage_i.i_issue_read_operands.orig_instr.rftype.rm\[13\]"\
        "issue_stage_i.i_issue_read_operands.orig_instr.rftype.rm\[14\]"\
        "issue_stage_i.i_issue_read_operands.orig_instr.rvftype.repl\[14\]"\
        "issue_stage_i.i_issue_read_operands.orig_instr.rvftype.vecfltop\[25\]"\
        "issue_stage_i.i_issue_read_operands.orig_instr.rvftype.vecfltop\[26\]"\
        "issue_stage_i.i_issue_read_operands.orig_instr.rvftype.vecfltop\[27\]"\
        "issue_stage_i.i_issue_read_operands.orig_instr.rvftype.vecfltop\[28\]"\
        "issue_stage_i.i_issue_read_operands.orig_instr.rvftype.vecfltop\[29\]"\
        "issue_stage_i.i_issue_read_operands.orig_instr.rvftype.vfmt\[12\]"\
        "issue_stage_i.i_issue_read_operands.orig_instr.rvftype.vfmt\[13\]"\
        "issue_stage_i.i_issue_read_operands.stall"\
        "issue_stage_i.i_issue_read_operands.we_fpr_i\[0\]"\
        "issue_stage_i.i_issue_read_operands.we_fpr_i\[1\]"\
        "issue_stage_i.i_issue_read_operands.we_gpr_i\[0\]"\
        "issue_stage_i.i_issue_read_operands.we_gpr_i\[1\]"\
        "issue_stage_i.i_issue_read_operands.we_pack\[0\]"\
        "issue_stage_i.i_issue_read_operands.we_pack\[1\]"\
        "issue_stage_i.i_re_name.flush_i"\
        "issue_stage_i.i_re_name.flush_unissied_instr_i"\
        "issue_stage_i.i_re_name.issue_ack_i"\
        "issue_stage_i.i_re_name.issue_ack_o"\
        "issue_stage_i.i_re_name.issue_instr_i.ex.valid"\
        "issue_stage_i.i_re_name.issue_instr_i.is_compressed"\
        "issue_stage_i.i_re_name.issue_instr_i.use_imm"\
        "issue_stage_i.i_re_name.issue_instr_i.use_pc"\
        "issue_stage_i.i_re_name.issue_instr_i.use_zimm"\
        "issue_stage_i.i_re_name.issue_instr_i.valid"\
        "issue_stage_i.i_re_name.issue_instr_o.ex.valid"\
        "issue_stage_i.i_re_name.issue_instr_o.is_compressed"\
        "issue_stage_i.i_re_name.issue_instr_o.use_imm"\
        "issue_stage_i.i_re_name.issue_instr_o.use_pc"\
        "issue_stage_i.i_re_name.issue_instr_o.use_zimm"\
        "issue_stage_i.i_re_name.issue_instr_o.valid"\
        "issue_stage_i.i_re_name.issue_instr_valid_i"\
        "issue_stage_i.i_re_name.issue_instr_valid_o"\
        "issue_stage_i.i_scoreboard.commit_ack_i\[0\]"\
        "issue_stage_i.i_scoreboard.commit_ack_i\[1\]"\
        "issue_stage_i.i_scoreboard.commit_instr_o\[0\].ex.valid"\
        "issue_stage_i.i_scoreboard.commit_instr_o\[0\].is_compressed"\
        "issue_stage_i.i_scoreboard.commit_instr_o\[0\].use_imm"\
        "issue_stage_i.i_scoreboard.commit_instr_o\[0\].use_pc"\
        "issue_stage_i.i_scoreboard.commit_instr_o\[0\].use_zimm"\
        "issue_stage_i.i_scoreboard.commit_instr_o\[0\].valid"\
        "issue_stage_i.i_scoreboard.commit_instr_o\[1\].ex.valid"\
        "issue_stage_i.i_scoreboard.commit_instr_o\[1\].is_compressed"\
        "issue_stage_i.i_scoreboard.commit_instr_o\[1\].use_imm"\
        "issue_stage_i.i_scoreboard.commit_instr_o\[1\].use_pc"\
        "issue_stage_i.i_scoreboard.commit_instr_o\[1\].use_zimm"\
        "issue_stage_i.i_scoreboard.commit_instr_o\[1\].valid"\
        "issue_stage_i.i_scoreboard.decoded_instr_ack_o"\
        "issue_stage_i.i_scoreboard.decoded_instr_i.ex.valid"\
        "issue_stage_i.i_scoreboard.decoded_instr_i.is_compressed"\
        "issue_stage_i.i_scoreboard.decoded_instr_i.use_imm"\
        "issue_stage_i.i_scoreboard.decoded_instr_i.use_pc"\
        "issue_stage_i.i_scoreboard.decoded_instr_i.use_zimm"\
        "issue_stage_i.i_scoreboard.decoded_instr_i.valid"\
        "issue_stage_i.i_scoreboard.decoded_instr_valid_i"\
        "issue_stage_i.i_scoreboard.ex_i\[0\].valid"\
        "issue_stage_i.i_scoreboard.ex_i\[1\].valid"\
        "issue_stage_i.i_scoreboard.ex_i\[2\].valid"\
        "issue_stage_i.i_scoreboard.ex_i\[3\].valid"\
        "issue_stage_i.i_scoreboard.flush_i"\
        "issue_stage_i.i_scoreboard.flush_unissued_instr_i"\
        "issue_stage_i.i_scoreboard.i_popcount.data_i\[0\]"\
        "issue_stage_i.i_scoreboard.i_popcount.data_i\[1\]"\
        "issue_stage_i.i_scoreboard.i_popcount.left_child_result\[0\]"\
        "issue_stage_i.i_scoreboard.i_popcount.padded_input\[0\]"\
        "issue_stage_i.i_scoreboard.i_popcount.padded_input\[1\]"\
        "issue_stage_i.i_scoreboard.i_popcount.popcount_o\[0\]"\
        "issue_stage_i.i_scoreboard.i_popcount.popcount_o\[1\]"\
        "issue_stage_i.i_scoreboard.i_popcount.right_child_result\[0\]"\
        "issue_stage_i.i_scoreboard.issue_ack_i"\
        "issue_stage_i.i_scoreboard.issue_en"\
        "issue_stage_i.i_scoreboard.issue_full"\
        "issue_stage_i.i_scoreboard.issue_instr_o.ex.valid"\
        "issue_stage_i.i_scoreboard.issue_instr_o.is_compressed"\
        "issue_stage_i.i_scoreboard.issue_instr_o.use_imm"\
        "issue_stage_i.i_scoreboard.issue_instr_o.use_pc"\
        "issue_stage_i.i_scoreboard.issue_instr_o.use_zimm"\
        "issue_stage_i.i_scoreboard.issue_instr_o.valid"\
        "issue_stage_i.i_scoreboard.issue_instr_valid_o"\
        "issue_stage_i.i_scoreboard.mem_n\[0\].is_rd_fpr_flag"\
        "issue_stage_i.i_scoreboard.mem_n\[0\].issued"\
        "issue_stage_i.i_scoreboard.mem_n\[0\].sbe.ex.valid"\
        "issue_stage_i.i_scoreboard.mem_n\[0\].sbe.is_compressed"\
        "issue_stage_i.i_scoreboard.mem_n\[0\].sbe.use_imm"\
        "issue_stage_i.i_scoreboard.mem_n\[0\].sbe.use_pc"\
        "issue_stage_i.i_scoreboard.mem_n\[0\].sbe.use_zimm"\
        "issue_stage_i.i_scoreboard.mem_n\[0\].sbe.valid"\
        "issue_stage_i.i_scoreboard.mem_q\[0\].is_rd_fpr_flag"\
        "issue_stage_i.i_scoreboard.mem_q\[0\].issued"\
        "issue_stage_i.i_scoreboard.mem_q\[0\].sbe.ex.valid"\
        "issue_stage_i.i_scoreboard.mem_q\[0\].sbe.is_compressed"\
        "issue_stage_i.i_scoreboard.mem_q\[0\].sbe.use_imm"\
        "issue_stage_i.i_scoreboard.mem_q\[0\].sbe.use_pc"\
        "issue_stage_i.i_scoreboard.mem_q\[0\].sbe.use_zimm"\
        "issue_stage_i.i_scoreboard.mem_q\[0\].sbe.valid"\
        "issue_stage_i.i_scoreboard.num_commit\[0\]"\
        "issue_stage_i.i_scoreboard.num_commit\[1\]"\
        "issue_stage_i.i_scoreboard.resolved_branch_i.is_mispredict"\
        "issue_stage_i.i_scoreboard.resolved_branch_i.is_taken"\
        "issue_stage_i.i_scoreboard.resolved_branch_i.valid"\
        "issue_stage_i.i_scoreboard.sb_full_o"\
        "issue_stage_i.i_scoreboard.unresolved_branch_i"\
        "issue_stage_i.i_scoreboard.wt_valid_i\[0\]"\
        "issue_stage_i.i_scoreboard.wt_valid_i\[1\]"\
        "issue_stage_i.i_scoreboard.wt_valid_i\[2\]"\
        "issue_stage_i.i_scoreboard.wt_valid_i\[3\]"\
        "issue_stage_i.is_compressed_instr_o"\
        "issue_stage_i.is_ctrl_flow_i"\
        "issue_stage_i.issue_ack_iro_sb"\
        "issue_stage_i.issue_ack_sb_rename"\
        "issue_stage_i.issue_instr_rename_sb.ex.valid"\
        "issue_stage_i.issue_instr_rename_sb.is_compressed"\
        "issue_stage_i.issue_instr_rename_sb.use_imm"\
        "issue_stage_i.issue_instr_rename_sb.use_pc"\
        "issue_stage_i.issue_instr_rename_sb.use_zimm"\
        "issue_stage_i.issue_instr_rename_sb.valid"\
        "issue_stage_i.issue_instr_sb_iro.ex.valid"\
        "issue_stage_i.issue_instr_sb_iro.is_compressed"\
        "issue_stage_i.issue_instr_sb_iro.use_imm"\
        "issue_stage_i.issue_instr_sb_iro.use_pc"\
        "issue_stage_i.issue_instr_sb_iro.use_zimm"\
        "issue_stage_i.issue_instr_sb_iro.valid"\
        "issue_stage_i.issue_instr_valid_rename_sb"\
        "issue_stage_i.issue_instr_valid_sb_iro"\
        "issue_stage_i.lsu_ready_i"\
        "issue_stage_i.lsu_valid_o"\
        "issue_stage_i.mult_valid_o"\
        "issue_stage_i.resolve_branch_i"\
        "issue_stage_i.resolved_branch_i.is_mispredict"\
        "issue_stage_i.resolved_branch_i.is_taken"\
        "issue_stage_i.resolved_branch_i.valid"\
        "issue_stage_i.sb_full_o"\
        "issue_stage_i.we_fpr_i\[0\]"\
        "issue_stage_i.we_fpr_i\[1\]"\
        "issue_stage_i.we_gpr_i\[0\]"\
        "issue_stage_i.we_gpr_i\[1\]"\
        "issue_stage_i.wt_valid_i\[0\]"\
        "issue_stage_i.wt_valid_i\[1\]"\
        "issue_stage_i.wt_valid_i\[2\]"\
        "issue_stage_i.wt_valid_i\[3\]" -clock clk_i -clock_edge posedge

# Scanning settings
set_scan_default_property_representation assert
template_property -load template.jst
set_scan_seek_mode template

check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_00.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_01.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_02.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_03.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_04.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_05.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_06.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_08.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_09.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_10.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_11.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_12.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_13.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_14.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_15.vcd  -hier_path "TOP.ariane_testharness.i_ariane"

check_bps -export -type assert -class unclassified
prove -all

export -bps -to_sva [get_proj_dir]/issue_stage.sva  -to_tcl [get_proj_dir]/issue_stage_connect_sva.tcl  -type assert -class unclassified
export -bps -to_html [get_proj_dir]/issue_stage.htm -type assert -class unclassified

exit
