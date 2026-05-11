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

# Execute stage signals
scope -add\
        "ex_stage_i.alu_valid_i"\
        "ex_stage_i.amo_resp_i.ack"\
        "ex_stage_i.amo_valid_commit_i"\
        "ex_stage_i.branch_valid_i"\
        "ex_stage_i.csr_buffer_i.csr_reg_q.valid"\
        "ex_stage_i.csr_commit_i"\
        "ex_stage_i.csr_valid_i"\
        "ex_stage_i.dcache_req_ports_i\[0\].data_gnt"\
        "ex_stage_i.dcache_req_ports_i\[0\].data_rvalid"\
        "ex_stage_i.dcache_req_ports_i\[1\].data_gnt"\
        "ex_stage_i.dcache_req_ports_i\[1\].data_rvalid"\
        "ex_stage_i.dcache_req_ports_i\[2\].data_gnt"\
        "ex_stage_i.dcache_req_ports_i\[2\].data_rvalid"\
        "ex_stage_i.dcache_wbuffer_empty_i"\
        "ex_stage_i.debug_mode_i"\
        "ex_stage_i.dtlb_miss_o"\
        "ex_stage_i.en_ld_st_translation_i"\
        "ex_stage_i.enable_translation_i"\
        "ex_stage_i.flu_exception_o.valid"\
        "ex_stage_i.flu_ready_o"\
        "ex_stage_i.flu_valid_o"\
        "ex_stage_i.flush_i"\
        "ex_stage_i.flush_tlb_i"\
        "ex_stage_i.fpu_exception_o.valid"\
        "ex_stage_i.fpu_fmt_i\[0\]"\
        "ex_stage_i.fpu_fmt_i\[1\]"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.fpu_ifmt_q\[0\]"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.fpu_ifmt_q\[1\]"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.fpu_op_mod_q"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.fpu_vec_op_q"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.i_fpnew_bulk.gen_operation_groups\[0\].i_opgroup_block.gen_parallel_slices\[0\].active_format.i_fmt_slice.gen_num_lanes\[0\].active_lane.lane_instance.i_fma.effective_subtraction_q"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.i_fpnew_bulk.gen_operation_groups\[0\].i_opgroup_block.gen_parallel_slices\[0\].active_format.i_fmt_slice.gen_num_lanes\[0\].active_lane.lane_instance.i_fma.special_result_q.sign"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.i_fpnew_bulk.gen_operation_groups\[0\].i_opgroup_block.gen_parallel_slices\[0\].active_format.i_fmt_slice.gen_num_lanes\[0\].active_lane.lane_instance.i_fma.special_status_q.DZ"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.i_fpnew_bulk.gen_operation_groups\[0\].i_opgroup_block.gen_parallel_slices\[0\].active_format.i_fmt_slice.gen_num_lanes\[0\].active_lane.lane_instance.i_fma.special_status_q.NV"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.i_fpnew_bulk.gen_operation_groups\[0\].i_opgroup_block.gen_parallel_slices\[0\].active_format.i_fmt_slice.gen_num_lanes\[0\].active_lane.lane_instance.i_fma.special_status_q.NX"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.i_fpnew_bulk.gen_operation_groups\[0\].i_opgroup_block.gen_parallel_slices\[0\].active_format.i_fmt_slice.gen_num_lanes\[0\].active_lane.lane_instance.i_fma.special_status_q.OF"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.i_fpnew_bulk.gen_operation_groups\[0\].i_opgroup_block.gen_parallel_slices\[0\].active_format.i_fmt_slice.gen_num_lanes\[0\].active_lane.lane_instance.i_fma.special_status_q.UF"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.i_fpnew_bulk.gen_operation_groups\[0\].i_opgroup_block.gen_parallel_slices\[0\].active_format.i_fmt_slice.gen_num_lanes\[0\].active_lane.lane_instance.i_fma.sticky_before_add_q"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.i_fpnew_bulk.gen_operation_groups\[0\].i_opgroup_block.gen_parallel_slices\[0\].active_format.i_fmt_slice.lane_out_valid\[0\]"\
        "ex_stage_i.fpu_gen.fpu_i.fpu_gen.use_hold"\
        "ex_stage_i.fpu_ready_o"\
        "ex_stage_i.fpu_valid_i"\
        "ex_stage_i.fpu_valid_o"\
        "ex_stage_i.i_mult.i_div.comp_inv_q"\
        "ex_stage_i.i_mult.i_div.div_res_zero_q"\
        "ex_stage_i.i_mult.i_div.op_b_zero_q"\
        "ex_stage_i.i_mult.i_div.rem_sel_q"\
        "ex_stage_i.i_mult.i_div.res_inv_q"\
        "ex_stage_i.i_mult.i_div.state_q\[0\]"\
        "ex_stage_i.i_mult.i_div.state_q\[1\]"\
        "ex_stage_i.i_mult.i_multiplier.mult_valid_o"\
        "ex_stage_i.i_mult.mul_valid"\
        "ex_stage_i.i_mult.word_op_q"\
        "ex_stage_i.icache_areq_i.fetch_req"\
        "ex_stage_i.is_compressed_instr_i"\
        "ex_stage_i.itlb_miss_o"\
        "ex_stage_i.ld_st_priv_lvl_i\[0\]"\
        "ex_stage_i.ld_st_priv_lvl_i\[1\]"\
        "ex_stage_i.load_exception_o.valid"\
        "ex_stage_i.load_valid_o"\
        "ex_stage_i.lsu_commit_i"\
        "ex_stage_i.lsu_commit_ready_o"\
        "ex_stage_i.lsu_i.i_store_unit.state_q\[0\]"\
        "ex_stage_i.lsu_i.i_store_unit.state_q\[1\]"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.commit_queue_q\[0\].valid"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.commit_queue_q\[1\].valid"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.commit_queue_q\[2\].valid"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.commit_queue_q\[3\].valid"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.commit_read_pointer_q\[0\]"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.commit_read_pointer_q\[1\]"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.commit_write_pointer_q\[0\]"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.commit_write_pointer_q\[1\]"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_queue_q\[0\].valid"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_queue_q\[1\].valid"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_queue_q\[2\].valid"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_queue_q\[3\].valid"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_read_pointer_q\[0\]"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_read_pointer_q\[1\]"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_write_pointer_q\[0\]"\
        "ex_stage_i.lsu_i.i_store_unit.store_buffer_i.speculative_write_pointer_q\[1\]"\
        "ex_stage_i.lsu_i.lsu_bypass_i.mem_q\[0\].overflow"\
        "ex_stage_i.lsu_i.lsu_bypass_i.mem_q\[0\].valid"\
        "ex_stage_i.lsu_i.lsu_bypass_i.mem_q\[1\].overflow"\
        "ex_stage_i.lsu_i.lsu_bypass_i.mem_q\[1\].valid"\
        "ex_stage_i.lsu_i.lsu_bypass_i.read_pointer_q"\
        "ex_stage_i.lsu_i.lsu_bypass_i.status_cnt_q\[0\]"\
        "ex_stage_i.lsu_i.lsu_bypass_i.status_cnt_q\[1\]"\
        "ex_stage_i.lsu_i.lsu_bypass_i.write_pointer_q"\
        "ex_stage_i.lsu_ready_o"\
        "ex_stage_i.lsu_valid_i"\
        "ex_stage_i.mult_valid_i"\
        "ex_stage_i.mxr_i"\
        "ex_stage_i.no_st_pending_o"\
        "ex_stage_i.priv_lvl_i\[0\]"\
        "ex_stage_i.priv_lvl_i\[1\]"\
        "ex_stage_i.resolve_branch_o"\
        "ex_stage_i.resolved_branch_o.is_mispredict"\
        "ex_stage_i.resolved_branch_o.is_taken"\
        "ex_stage_i.store_exception_o.valid"\
        "ex_stage_i.store_valid_o"\
        "ex_stage_i.sum_i" -clock clk_i -clock_edge posedge

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
check_bps -scan -seek template -trace /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_07.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
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

export -bps -to_sva [get_proj_dir]/execute_stage.sva  -to_tcl [get_proj_dir]/execute_stage_connect_sva.tcl  -type assert -class unclassified
export -bps -to_html [get_proj_dir]/execute_stage.htm -type assert -class unclassified

exit
