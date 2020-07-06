onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib int2flt_opt

do {wave.do}

view wave
view structure
view signals

do {int2flt.udo}

run -all

quit -force
