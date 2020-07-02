onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cmp_u_opt

do {wave.do}

view wave
view structure
view signals

do {cmp_u.udo}

run -all

quit -force
