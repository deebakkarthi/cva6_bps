#!/usr/bin/env bash

if [[ $# -ne 1 ]];then
	exit 1
fi


output_dir="$(date +"%Y%m%dT%H%M%S")--jgproject"
export CVA6_REPO_DIR=$HOME/cva6_fpga
time jg -no_gui -tcl $1 -proj "jasper_outputs/$output_dir"
