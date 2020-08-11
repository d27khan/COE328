onerror {quit -f}
vlib work
vlog -work work Lab2_impl.vo
vlog -work work Lab2_impl.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lab2schm_vlg_vec_tst
vcd file -direction Lab2_impl.msim.vcd
vcd add -internal Lab2schm_vlg_vec_tst/*
vcd add -internal Lab2schm_vlg_vec_tst/i1/*
add wave /*
run -all
