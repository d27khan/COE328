onerror {quit -f}
vlib work
vlog -work work lab5test.vo
vlog -work work lab5test.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lab5test_vlg_vec_tst
vcd file -direction lab5test.msim.vcd
vcd add -internal lab5test_vlg_vec_tst/*
vcd add -internal lab5test_vlg_vec_tst/i1/*
add wave /*
run -all
