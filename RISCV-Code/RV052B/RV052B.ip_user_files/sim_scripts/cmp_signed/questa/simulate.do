onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cmp_signed_opt

do {wave.do}

view wave
view structure
view signals

do {cmp_signed.udo}

run -all

quit -force
