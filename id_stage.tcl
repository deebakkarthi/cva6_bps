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

# Decode signals
scope -add "id_stage_i.compressed_decoder_i.illegal_instr_o"\
        "id_stage_i.compressed_decoder_i.is_compressed_o"\
        "id_stage_i.debug_mode_i"\
        "id_stage_i.debug_req_i"\
        "id_stage_i.decoded_instruction.ex.valid"\
        "id_stage_i.decoded_instruction.is_compressed"\
        "id_stage_i.decoded_instruction.use_imm"\
        "id_stage_i.decoded_instruction.use_pc"\
        "id_stage_i.decoded_instruction.use_zimm"\
        "id_stage_i.decoded_instruction.valid"\
        "id_stage_i.decoder_i.check_fprm"\
        "id_stage_i.decoder_i.debug_mode_i"\
        "id_stage_i.decoder_i.debug_req_i"\
        "id_stage_i.decoder_i.ebreak"\
        "id_stage_i.decoder_i.ecall"\
        "id_stage_i.decoder_i.ex_i.valid"\
        "id_stage_i.decoder_i.fs_i\[0\]"\
        "id_stage_i.decoder_i.fs_i\[1\]"\
        "id_stage_i.decoder_i.illegal_instr"\
        "id_stage_i.decoder_i.instr.atype.aq"\
        "id_stage_i.decoder_i.instr.atype.rl"\
        "id_stage_i.decoder_i.instr.rftype.fmt\[25\]"\
        "id_stage_i.decoder_i.instr.rftype.fmt\[26\]"\
        "id_stage_i.decoder_i.instr.rftype.rm\[12\]"\
        "id_stage_i.decoder_i.instr.rftype.rm\[13\]"\
        "id_stage_i.decoder_i.instr.rftype.rm\[14\]"\
        "id_stage_i.decoder_i.instr.rvftype.repl\[14\]"\
        "id_stage_i.decoder_i.instr.rvftype.vfmt\[12\]"\
        "id_stage_i.decoder_i.instr.rvftype.vfmt\[13\]"\
        "id_stage_i.decoder_i.irq_ctrl_i.global_enable"\
        "id_stage_i.decoder_i.irq_ctrl_i.sie"\
        "id_stage_i.decoder_i.irq_i\[0\]"\
        "id_stage_i.decoder_i.irq_i\[1\]"\
        "id_stage_i.decoder_i.is_compressed_i"\
        "id_stage_i.decoder_i.is_control_flow_instr_o"\
        "id_stage_i.decoder_i.is_illegal_i"\
        "id_stage_i.decoder_i.priv_lvl_i\[0\]"\
        "id_stage_i.decoder_i.priv_lvl_i\[1\]"\
        "id_stage_i.decoder_i.tsr_i"\
        "id_stage_i.decoder_i.tvm_i"\
        "id_stage_i.decoder_i.tw_i"\
        "id_stage_i.fetch_entry_i.ex.valid"\
        "id_stage_i.fetch_entry_ready_o"\
        "id_stage_i.fetch_entry_valid_i"\
        "id_stage_i.flush_i"\
        "id_stage_i.fs_i\[0\]"\
        "id_stage_i.fs_i\[1\]"\
        "id_stage_i.irq_ctrl_i.global_enable"\
        "id_stage_i.irq_ctrl_i.sie"\
        "id_stage_i.irq_i\[0\]"\
        "id_stage_i.irq_i\[1\]"\
        "id_stage_i.is_compressed"\
        "id_stage_i.is_control_flow_instr"\
        "id_stage_i.is_ctrl_flow_o"\
        "id_stage_i.is_illegal"\
        "id_stage_i.issue_entry_o.ex.valid"\
        "id_stage_i.issue_entry_o.is_compressed"\
        "id_stage_i.issue_entry_o.use_imm"\
        "id_stage_i.issue_entry_o.use_pc"\
        "id_stage_i.issue_entry_o.use_zimm"\
        "id_stage_i.issue_entry_o.valid"\
        "id_stage_i.issue_entry_valid_o"\
        "id_stage_i.issue_instr_ack_i"\
        "id_stage_i.issue_n.is_ctrl_flow"\
        "id_stage_i.issue_n.sbe.ex.valid"\
        "id_stage_i.issue_n.sbe.is_compressed"\
        "id_stage_i.issue_n.sbe.use_imm"\
        "id_stage_i.issue_n.sbe.use_pc"\
        "id_stage_i.issue_n.sbe.use_zimm"\
        "id_stage_i.issue_n.sbe.valid"\
        "id_stage_i.issue_n.valid"\
        "id_stage_i.issue_q.is_ctrl_flow"\
        "id_stage_i.issue_q.sbe.ex.valid"\
        "id_stage_i.issue_q.sbe.is_compressed"\
        "id_stage_i.issue_q.sbe.use_imm"\
        "id_stage_i.issue_q.sbe.use_pc"\
        "id_stage_i.issue_q.sbe.use_zimm"\
        "id_stage_i.issue_q.sbe.valid"\
        "id_stage_i.issue_q.valid"\
        "id_stage_i.priv_lvl_i\[0\]"\
        "id_stage_i.priv_lvl_i\[1\]"\
        "id_stage_i.tsr_i"\
        "id_stage_i.tvm_i"\
        "id_stage_i.tw_i" -clock clk_i -clock_edge posedge

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

export -bps -to_sva [get_proj_dir]/id_stage.sva  -to_tcl [get_proj_dir]/id_stage_connect_sva.tcl  -type assert -class unclassified
export -bps -to_html [get_proj_dir]/id_stage.htm -type assert -class unclassified

exit
