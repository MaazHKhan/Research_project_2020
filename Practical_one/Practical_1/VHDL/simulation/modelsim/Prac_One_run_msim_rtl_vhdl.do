transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Documents/Semester_2_2020/EES_424/Practical_1/VHDL/Prac_One.vhd}

vcom -93 -work work {D:/Documents/Semester_2_2020/EES_424/Practical_1/VHDL/Prac_One.vwf.vht}
vcom -93 -work work {D:/Documents/Semester_2_2020/EES_424/Practical_1/VHDL/Prac_One.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  Prac_One

add wave *
view structure
view signals
run -all
