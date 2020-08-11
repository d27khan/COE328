onerror {quit -f}
vlib work
vlog -work work decode.vo
vlog -work work decode.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.dec3to8_vlg_vec_tst
vcd file -direction decode.msim.vcd
vcd add -internal dec3to8_vlg_vec_tst/*
vcd add -internal dec3to8_vlg_vec_tst/i1/*
add wave /*
run -all
