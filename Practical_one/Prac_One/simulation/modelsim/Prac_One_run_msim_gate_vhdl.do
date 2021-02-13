transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Prac_One.vho}

vcom -93 -work work {D:/Documents/Semester_2_2020/EES_424/Prac_One/simulation/modelsim/Prac_One.vwf.vht}
vcom -93 -work work {D:/Documents/Semester_2_2020/EES_424/Prac_One/Prac_One.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L cyclonev -L gate_work -L work -voptargs="+acc"  Prac_One

add wave *
view structure
view signals
run -all
