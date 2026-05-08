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
#waveform -reset rst_ni==0'b1

#check_bps -init
#set_scan_default_property_representation assert

#scope -extract module
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_00.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_01.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_02.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_03.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_04.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_05.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_06.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_07.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_08.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_09.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_10.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_11.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_12.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_13.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_14.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#waveform -import /net/marysrock.ece.Virginia.EDU/maryisan/users/brg8ve/scratch/cva6_traces/program_15.vcd  -hier_path "TOP.ariane_testharness.i_ariane"
#check_bps -scan -trace

#check_bps -export -type assert -class unclassified
#
#prove -all
#
#
#export -bps -to_sva [get_proj_dir]/example.sva \
#     -to_tcl [get_proj_dir]/connect_sva.tcl \
#     -type assert -class unclassified
#
#export -bps -to_html [get_proj_dir]/example.htm -type assert -class unclassified
