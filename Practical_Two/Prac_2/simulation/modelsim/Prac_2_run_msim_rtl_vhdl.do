transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Documents/Semester_2_2020/EES_424/Practicals/practical_2/Prac_2/Prac_2.vhd}

