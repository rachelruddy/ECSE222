transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {P:/lab5/rachel_ruddy_counter.vhd}
vcom -93 -work work {P:/lab5/rachel_ruddy_clock_divider.vhd}
vcom -93 -work work {P:/lab5/rachel_ruddy_wrapper.vhd}
vcom -93 -work work {P:/lab5/seven_segment_decoder.vhd}

vcom -93 -work work {P:/lab5/tb_3bit_up_counter.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_3bit_up_counter.vhd

add wave *
view structure
view signals
run -all
