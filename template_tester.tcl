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
        "commit_stage_i.amo_resp_i.ack"\
        "commit_stage_i.amo_valid_commit_o"\
        "commit_stage_i.commit_ack_o\[0\]"\
        "commit_stage_i.commit_ack_o\[1\]"\
        "commit_stage_i.commit_csr_o"\
        "commit_stage_i.commit_instr_i\[0\].ex.valid"\
        "commit_stage_i.commit_instr_i\[0\].is_compressed"\
        "commit_stage_i.commit_instr_i\[0\].use_imm"\
        "commit_stage_i.commit_instr_i\[0\].use_pc"\
        "commit_stage_i.commit_instr_i\[0\].use_zimm"\
        "commit_stage_i.commit_instr_i\[0\].valid"\
        "commit_stage_i.commit_instr_i\[1\].ex.valid"\
        "commit_stage_i.commit_instr_i\[1\].is_compressed"\
        "commit_stage_i.commit_instr_i\[1\].use_imm"\
        "commit_stage_i.commit_instr_i\[1\].use_pc"\
        "commit_stage_i.commit_instr_i\[1\].use_zimm"\
        "commit_stage_i.commit_instr_i\[1\].valid"\
        "commit_stage_i.commit_lsu_o"\
        "commit_stage_i.commit_lsu_ready_i"\
        "commit_stage_i.csr_exception_i.valid"\
        "commit_stage_i.csr_write_fflags_o"\
        "commit_stage_i.dirty_fp_state_o"\
        "commit_stage_i.exception_o.valid"\
        "commit_stage_i.fence_i_o"\
        "commit_stage_i.fence_o"\
        "commit_stage_i.flush_commit_o"\
        "commit_stage_i.flush_dcache_i"\
        "commit_stage_i.halt_i"\
        "commit_stage_i.instr_0_is_amo"\
        "commit_stage_i.no_st_pending_i"\
        "commit_stage_i.sfence_vma_o"\
        "commit_stage_i.single_step_i"\
        "commit_stage_i.we_fpr_o\[0\]"\
        "commit_stage_i.we_fpr_o\[1\]"\
        "commit_stage_i.we_gpr_o\[0\]"\
        "commit_stage_i.we_gpr_o\[1\]" -clock clk_i -clock_edge posedge

# Scanning settings
set_scan_default_property_representation assert
template_property -load template.jst
set_scan_seek_mode template

# This is the smallest trace we have
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_11.vcd  -hier_path "TOP.ariane_testharness.i_ariane"

check_bps -export -type assert -class unclassified
prove -all

export -bps -to_sva [get_proj_dir]/commit_stage.sva  -to_tcl [get_proj_dir]/commit_stage_connect_sva.tcl  -type assert -class unclassified
export -bps -to_html [get_proj_dir]/commit_stage.htm -type assert -class unclassified

exit
