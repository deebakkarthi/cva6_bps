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

# Active low
waveform -reset rst_ni==0'b1
check_bps -init

# Frontend signals
scope -add "i_frontend.bht_prediction\[0\].taken"\
"i_frontend.bht_prediction\[0\].valid"\
"i_frontend.bht_prediction\[1\].taken"\
"i_frontend.bht_prediction\[1\].valid"\
"i_frontend.bht_prediction_shifted\[0\].taken"\
"i_frontend.bht_prediction_shifted\[0\].valid"\
"i_frontend.bht_prediction_shifted\[1\].taken"\
"i_frontend.bht_prediction_shifted\[1\].valid"\
"i_frontend.bht_q.taken"\
"i_frontend.bht_q.valid"\
"i_frontend.bht_update.taken"\
"i_frontend.bht_update.valid"\
"i_frontend.bp_valid"\
"i_frontend.btb_prediction\[0\].valid"\
"i_frontend.btb_prediction\[1\].valid"\
"i_frontend.btb_prediction_shifted\[0\].valid"\
"i_frontend.btb_prediction_shifted\[1\].valid"\
"i_frontend.btb_q.valid"\
"i_frontend.btb_update.valid"\
"i_frontend.debug_mode_i"\
"i_frontend.eret_i"\
"i_frontend.ex_valid_i"\
"i_frontend.fetch_entry_o.ex.valid"\
"i_frontend.fetch_entry_ready_i"\
"i_frontend.fetch_entry_valid_o"\
"i_frontend.flush_bp_i"\
"i_frontend.flush_i"\
"i_frontend.gen_instr_scan\[0\].i_instr_scan.is_jal_r"\
"i_frontend.gen_instr_scan\[0\].i_instr_scan.is_rvc"\
"i_frontend.gen_instr_scan\[0\].i_instr_scan.rvc_branch_o"\
"i_frontend.gen_instr_scan\[0\].i_instr_scan.rvc_call_o"\
"i_frontend.gen_instr_scan\[0\].i_instr_scan.rvc_jalr_o"\
"i_frontend.gen_instr_scan\[0\].i_instr_scan.rvc_jr_o"\
"i_frontend.gen_instr_scan\[0\].i_instr_scan.rvc_jump_o"\
"i_frontend.gen_instr_scan\[0\].i_instr_scan.rvc_return_o"\
"i_frontend.gen_instr_scan\[0\].i_instr_scan.rvi_branch_o"\
"i_frontend.gen_instr_scan\[0\].i_instr_scan.rvi_call_o"\
"i_frontend.gen_instr_scan\[0\].i_instr_scan.rvi_jalr_o"\
"i_frontend.gen_instr_scan\[0\].i_instr_scan.rvi_jump_o"\
"i_frontend.gen_instr_scan\[0\].i_instr_scan.rvi_return_o"\
"i_frontend.gen_instr_scan\[1\].i_instr_scan.is_jal_r"\
"i_frontend.gen_instr_scan\[1\].i_instr_scan.is_rvc"\
"i_frontend.gen_instr_scan\[1\].i_instr_scan.rvc_branch_o"\
"i_frontend.gen_instr_scan\[1\].i_instr_scan.rvc_call_o"\
"i_frontend.gen_instr_scan\[1\].i_instr_scan.rvc_jalr_o"\
"i_frontend.gen_instr_scan\[1\].i_instr_scan.rvc_jr_o"\
"i_frontend.gen_instr_scan\[1\].i_instr_scan.rvc_jump_o"\
"i_frontend.gen_instr_scan\[1\].i_instr_scan.rvc_return_o"\
"i_frontend.gen_instr_scan\[1\].i_instr_scan.rvi_branch_o"\
"i_frontend.gen_instr_scan\[1\].i_instr_scan.rvi_call_o"\
"i_frontend.gen_instr_scan\[1\].i_instr_scan.rvi_jalr_o"\
"i_frontend.gen_instr_scan\[1\].i_instr_scan.rvi_jump_o"\
"i_frontend.gen_instr_scan\[1\].i_instr_scan.rvi_return_o"\
"i_frontend.i_bht.bht_prediction_o\[0\].taken"\
"i_frontend.i_bht.bht_prediction_o\[0\].valid"\
"i_frontend.i_bht.bht_prediction_o\[1\].taken"\
"i_frontend.i_bht.bht_prediction_o\[1\].valid"\
"i_frontend.i_bht.bht_update_i.taken"\
"i_frontend.i_bht.bht_update_i.valid"\
"i_frontend.i_bht.debug_mode_i"\
"i_frontend.i_bht.flush_i"\
"i_frontend.i_bht.saturation_counter\[0\]"\
"i_frontend.i_bht.saturation_counter\[1\]"\
"i_frontend.i_btb.btb_prediction_o\[0\].valid"\
"i_frontend.i_btb.btb_prediction_o\[1\].valid"\
"i_frontend.i_btb.btb_update_i.valid"\
"i_frontend.i_btb.debug_mode_i"\
"i_frontend.i_btb.flush_i"\
"i_frontend.i_instr_queue.branch_empty"\
"i_frontend.i_instr_queue.consumed_o\[0\]"\
"i_frontend.i_instr_queue.consumed_o\[1\]"\
"i_frontend.i_instr_queue.exception_i"\
"i_frontend.i_instr_queue.fetch_entry_o.ex.valid"\
"i_frontend.i_instr_queue.fetch_entry_ready_i"\
"i_frontend.i_instr_queue.fetch_entry_valid_o"\
"i_frontend.i_instr_queue.fifo_pos\[0\]"\
"i_frontend.i_instr_queue.fifo_pos\[1\]"\
"i_frontend.i_instr_queue.flush_i"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.data_o.ex"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.empty_o"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.flush_i"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.gate_clock"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.mem_n\[0\].ex"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.mem_q\[0\].ex"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.pop_i"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.push_i"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.read_pointer_n\[0\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.read_pointer_n\[1\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.read_pointer_q\[0\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.read_pointer_q\[1\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.testmode_i"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.usage_o\[0\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.usage_o\[1\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.write_pointer_n\[0\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.write_pointer_n\[1\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.write_pointer_q\[0\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[0\].i_fifo_instr_data.write_pointer_q\[1\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.data_o.ex"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.empty_o"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.flush_i"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.gate_clock"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.mem_n\[0\].ex"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.mem_q\[0\].ex"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.pop_i"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.push_i"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.read_pointer_n\[0\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.read_pointer_n\[1\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.read_pointer_q\[0\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.read_pointer_q\[1\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.testmode_i"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.usage_o\[0\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.usage_o\[1\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.write_pointer_n\[0\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.write_pointer_n\[1\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.write_pointer_q\[0\]"\
"i_frontend.i_instr_queue.gen_instr_fifo\[1\].i_fifo_instr_data.write_pointer_q\[1\]"\
"i_frontend.i_instr_queue.i_popcount.left_child_result\[0\]"\
"i_frontend.i_instr_queue.i_popcount.padded_input\[0\]"\
"i_frontend.i_instr_queue.i_popcount.padded_input\[1\]"\
"i_frontend.i_instr_queue.i_popcount.popcount_o\[0\]"\
"i_frontend.i_instr_queue.i_popcount.popcount_o\[1\]"\
"i_frontend.i_instr_queue.i_popcount.right_child_result\[0\]"\
"i_frontend.i_instr_queue.idx_ds_d\[0\]"\
"i_frontend.i_instr_queue.idx_ds_d\[1\]"\
"i_frontend.i_instr_queue.idx_ds_q\[0\]"\
"i_frontend.i_instr_queue.idx_ds_q\[1\]"\
"i_frontend.i_instr_queue.idx_is_d\[0\]"\
"i_frontend.i_instr_queue.idx_is_q\[0\]"\
"i_frontend.i_instr_queue.instr_data_out\[0\].ex"\
"i_frontend.i_instr_queue.instr_data_out\[1\].ex"\
"i_frontend.i_instr_queue.instr_overflow"\
"i_frontend.i_instr_queue.instr_overflow_fifo\[0\]"\
"i_frontend.i_instr_queue.instr_overflow_fifo\[1\]"\
"i_frontend.i_instr_queue.instr_queue_empty\[0\]"\
"i_frontend.i_instr_queue.instr_queue_empty\[1\]"\
"i_frontend.i_instr_queue.instr_queue_full\[0\]"\
"i_frontend.i_instr_queue.instr_queue_full\[1\]"\
"i_frontend.i_instr_queue.instr_queue_usage\[0\]\[0\]"\
"i_frontend.i_instr_queue.instr_queue_usage\[0\]\[1\]"\
"i_frontend.i_instr_queue.instr_queue_usage\[1\]\[0\]"\
"i_frontend.i_instr_queue.instr_queue_usage\[1\]\[1\]"\
"i_frontend.i_instr_queue.pop_instr\[0\]"\
"i_frontend.i_instr_queue.pop_instr\[1\]"\
"i_frontend.i_instr_queue.popcount\[0\]"\
"i_frontend.i_instr_queue.popcount\[1\]"\
"i_frontend.i_instr_queue.push_instr\[0\]"\
"i_frontend.i_instr_queue.push_instr\[1\]"\
"i_frontend.i_instr_queue.push_instr_fifo\[0\]"\
"i_frontend.i_instr_queue.push_instr_fifo\[1\]"\
"i_frontend.i_instr_queue.ready_o"\
"i_frontend.i_instr_queue.replay_o"\
"i_frontend.i_instr_queue.shamt\[0\]"\
"i_frontend.i_instr_queue.taken\[0\]"\
"i_frontend.i_instr_queue.taken\[1\]"\
"i_frontend.i_instr_queue.valid\[0\]"\
"i_frontend.i_instr_queue.valid\[1\]"\
"i_frontend.i_instr_queue.valid_i\[0\]"\
"i_frontend.i_instr_queue.valid_i\[1\]"\
"i_frontend.i_instr_realign.flush_i"\
"i_frontend.i_instr_realign.serving_unaligned_o"\
"i_frontend.i_instr_realign.unaligned_d"\
"i_frontend.i_instr_realign.unaligned_q"\
"i_frontend.i_instr_realign.valid_i"\
"i_frontend.i_instr_realign.valid_o\[0\]"\
"i_frontend.i_instr_realign.valid_o\[1\]"\
"i_frontend.i_ras.data_o.valid"\
"i_frontend.i_ras.flush_i"\
"i_frontend.i_ras.pop_i"\
"i_frontend.i_ras.push_i"\
"i_frontend.i_ras.stack_d\[0\].valid"\
"i_frontend.i_ras.stack_d\[1\].valid"\
"i_frontend.i_ras.stack_q\[0\].valid"\
"i_frontend.i_ras.stack_q\[1\].valid"\
"i_frontend.icache_dreq_i.ex.valid"\
"i_frontend.icache_dreq_i.ready"\
"i_frontend.icache_dreq_i.valid"\
"i_frontend.icache_dreq_o.kill_s1"\
"i_frontend.icache_dreq_o.kill_s2"\
"i_frontend.icache_dreq_o.req"\
"i_frontend.icache_ex_valid_q"\
"i_frontend.icache_valid_q"\
"i_frontend.if_ready"\
"i_frontend.instr_queue_consumed\[0\]"\
"i_frontend.instr_queue_consumed\[1\]"\
"i_frontend.instr_queue_ready"\
"i_frontend.is_branch\[0\]"\
"i_frontend.is_branch\[1\]"\
"i_frontend.is_call\[0\]"\
"i_frontend.is_call\[1\]"\
"i_frontend.is_jalr\[0\]"\
"i_frontend.is_jalr\[1\]"\
"i_frontend.is_jump\[0\]"\
"i_frontend.is_jump\[1\]"\
"i_frontend.is_mispredict"\
"i_frontend.is_return\[0\]"\
"i_frontend.is_return\[1\]"\
"i_frontend.npc_rst_load_q"\
"i_frontend.ras_pop"\
"i_frontend.ras_predict.valid"\
"i_frontend.ras_push"\
"i_frontend.replay"\
"i_frontend.resolved_branch_i.is_mispredict"\
"i_frontend.resolved_branch_i.is_taken"\
"i_frontend.resolved_branch_i.valid"\
"i_frontend.rvc_branch\[0\]"\
"i_frontend.rvc_branch\[1\]"\
"i_frontend.rvc_call\[0\]"\
"i_frontend.rvc_call\[1\]"\
"i_frontend.rvc_jalr\[0\]"\
"i_frontend.rvc_jalr\[1\]"\
"i_frontend.rvc_jr\[0\]"\
"i_frontend.rvc_jr\[1\]"\
"i_frontend.rvc_jump\[0\]"\
"i_frontend.rvc_jump\[1\]"\
"i_frontend.rvc_return\[0\]"\
"i_frontend.rvc_return\[1\]"\
"i_frontend.rvi_branch\[0\]"\
"i_frontend.rvi_branch\[1\]"\
"i_frontend.rvi_call\[0\]"\
"i_frontend.rvi_call\[1\]"\
"i_frontend.rvi_jalr\[0\]"\
"i_frontend.rvi_jalr\[1\]"\
"i_frontend.rvi_jump\[0\]"\
"i_frontend.rvi_jump\[1\]"\
"i_frontend.rvi_return\[0\]"\
"i_frontend.rvi_return\[1\]"\
"i_frontend.serving_unaligned"\
"i_frontend.shamt\[0\]"\
"i_frontend.taken_rvc_cf\[0\]"\
"i_frontend.taken_rvc_cf\[1\]"\
"i_frontend.taken_rvi_cf\[0\]"\
"i_frontend.taken_rvi_cf\[1\]" -clock clk_i

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

export -bps -to_sva [get_proj_dir]/frontend.sva  -to_tcl [get_proj_dir]/frontend_connect_sva.tcl  -type assert -class unclassified
export -bps -to_html [get_proj_dir]/frontend.htm -type assert -class unclassified

exit
