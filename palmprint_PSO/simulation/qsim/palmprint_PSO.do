onerror {quit -f}
vlib work
vlog -work work palmprint_PSO.vo
vlog -work work palmprint_PSO.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mux_2to1_vlg_vec_tst
vcd file -direction palmprint_PSO.msim.vcd
vcd add -internal mux_2to1_vlg_vec_tst/*
vcd add -internal mux_2to1_vlg_vec_tst/i1/*
add wave /*
run -all
