onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fadd_sub_opt

do {wave.do}

view wave
view structure
view signals

do {fadd_sub.udo}

run -all

quit -force
